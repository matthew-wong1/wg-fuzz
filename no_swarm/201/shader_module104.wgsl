struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-451f, 1679f, 303f, 1000f, 1007f, -1000f, 1723f, 2056f, 466f, 304f, 752f, -187f, 593f, -903f, -104f, -702f, 850f);

var<private> global1: f32 = -645f;

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<f32, 17>();
    var var_0 = select(vec4<bool>(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 14410u)) >= u_input.d, global3.x, global3.x, !global3.x), select(!vec4<bool>(all(vec2<bool>(global3.x, true)), true, all(vec2<bool>(global3.x, false)), global3.x), !(!vec4<bool>(true, global3.x, global3.x, false)), select(select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, global3.x, true, global3.x)), !vec4<bool>(global3.x, false, global3.x, global3.x), global3.x)), select(!select(select(vec4<bool>(global3.x, false, false, false), vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, true)), select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, true, false), false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec3<bool>(true, global3.x, false)), true, global3.x, true), !vec4<bool>(global3.x, global3.x, false, global3.x), !vec4<bool>(false, global3.x, true, false))));
    global3 = vec2<bool>(global3.x, var_0.x);
    let var_1 = -abs(vec2<i32>(global2.c << (20181u % 32u), 43179i << (0u % 32u))) >> (u_input.a.zx % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, 1777f, global0[_wgslsmith_index_u32(u_input.b, 17u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -248f)))))))));
    return _wgslsmith_f_op_f32(-1228f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b.x * global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(442f))))) * var_2.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> u32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), global2.a), arg_1.x);
    var var_0 = Struct_1(-719f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1728f), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 17u)], -1000f, global3.x))), _wgslsmith_div_vec2_f32(vec2<f32>(742f, -1000f), _wgslsmith_f_op_vec2_f32(global2.b + vec2<f32>(-535f, -427f))))))), arg_1.x);
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(select(393f, 839f, true))), var_0.b, firstTrailingBit(-(~(i32(-1i) * -68514i))));
    global1 = 1112f;
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u ^ ~(0u | u_input.c), abs(4294967295u)), _wgslsmith_mult_u32(17698u, ~(~u_input.b)) ^ firstTrailingBit(0u));
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<u32>(arg_0, 1u, arg_0) << (_wgslsmith_sub_vec3_u32(~u_input.a, reverseBits(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, u_input.c, arg_0), abs(u_input.b)))) % vec3<u32>(32u));
    let var_1 = ~select(~vec2<u32>(0u, u_input.b), ~u_input.a.xz, true) >> (vec2<u32>(0u, ~select(~11812u, 1u, 641f != global0[_wgslsmith_index_u32(1u, 17u)])) % vec2<u32>(32u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(min(min(0u, var_0.x), ~var_0.x), 17u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, -1028f)))), global0[_wgslsmith_index_u32(51580u, 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1014f)));
    var var_3 = reverseBits(arg_0);
    let var_4 = Struct_3(~max(_wgslsmith_sub_u32(~var_0.x, var_0.x), _wgslsmith_add_u32(~u_input.b, var_1.x)));
    return Struct_2(true);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(!any(vec4<bool>(global3.x, false, !global3.x, global3.x)));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(321f, global2.b.x) + vec2<f32>(global2.b.x, -553f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, global2.a))) * _wgslsmith_f_op_vec2_f32(abs(global2.b))) - global2.b), ~(~(-24298i)));
    global1 = global2.b.x;
    let var_1 = ~(~(~906u));
    global3 = vec2<bool>(true, countOneBits(1i) < global2.c);
    return func_4(countOneBits(min(max(firstLeadingBit(var_1), func_2(vec2<i32>(global2.c, global2.c), vec4<i32>(global2.c, 0i, -40557i, 45435i))), _wgslsmith_mult_u32(1u, 2043u))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global3 = vec2<bool>(global3.x, arg_0.a);
    var var_0 = _wgslsmith_mod_u32(u_input.b, ~(1u & u_input.a.x));
    let var_1 = global3.x | global3.x;
    var_0 = func_2(max(_wgslsmith_div_vec2_i32(select(vec2<i32>(1i, -26932i), vec2<i32>(0i, global2.c), vec2<bool>(false, var_1)), vec2<i32>(global2.c, 21443i)), vec2<i32>(~global2.c, global2.c)), vec4<i32>(_wgslsmith_mod_i32(0i, ~global2.c), _wgslsmith_mod_i32(abs(global2.c), -global2.c), 26415i, -30595i)) >> (~(~u_input.a.x) % 32u);
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 1u, 30514u, 20942u)), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.c, u_input.d, 8787u, 41319u), vec4<u32>(19226u, u_input.c, u_input.d, u_input.b), vec4<bool>(global3.x, true, false, false)), ~vec4<u32>(u_input.b, u_input.b, 0u, 0u))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> StorageBuffer {
    global2 = Struct_1(1f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d & arg_1.a), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), global2.c);
    var var_0 = Struct_2(any(select(select(select(vec4<bool>(arg_0.a, arg_0.a, true, false), vec4<bool>(false, false, false, arg_0.a), vec4<bool>(false, false, global3.x, global3.x)), select(vec4<bool>(false, false, arg_0.a, false), vec4<bool>(true, false, arg_0.a, true), vec4<bool>(global3.x, true, true, arg_0.a)), vec4<bool>(false, arg_0.a, global3.x, arg_0.a)), !vec4<bool>(global3.x, global3.x, arg_0.a, arg_0.a), !vec4<bool>(global3.x, false, true, false))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, 11154i, -1i), _wgslsmith_mod_vec3_i32(countOneBits(~(-arg_2)), -vec3<i32>(global2.c | -1i, reverseBits(arg_2.x), firstTrailingBit(global2.c))));
    global1 = _wgslsmith_f_op_f32(trunc(422f));
    global2 = Struct_1(global0[_wgslsmith_index_u32(arg_1.a, 17u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1028f, global2.a)), 1227f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1512f, global0[_wgslsmith_index_u32(7730u, 17u)]) + vec2<f32>(685f, -1833f))))), firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, -28030i), arg_2.xy, vec2<bool>(var_0.a, false)), arg_2.zx))));
    return StorageBuffer(~vec3<i32>(_wgslsmith_sub_i32(var_1 | arg_2.x, -1i & arg_2.x), -arg_2.x, global2.c), arg_2, ~u_input.a << (u_input.a % vec3<u32>(32u)), ~((u_input.d << (_wgslsmith_mult_u32(u_input.c, arg_1.a) % 32u)) ^ arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_1()), Struct_3(23335u), vec3<i32>(global2.c, 40525i, 16768i));
}

