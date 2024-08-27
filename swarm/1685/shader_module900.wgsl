struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-52431i, 67010i, -36918i, 16959i, -5786i, 2147483647i, 37424i, 0i, -27611i, i32(-2147483648), -9047i);

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 4>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(12554u, 1u, global1.a, u_input.b.x) << (u_input.b % vec4<u32>(32u)))), firstLeadingBit(u_input.b));
    let var_1 = all(!(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true)));
    let var_2 = any(!(!(!(!vec2<bool>(var_1, false)))));
    let var_3 = abs(-19933i);
    let var_4 = _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.xyw), u_input.a.xyx)), _wgslsmith_div_i32(-42809i, 0i >> (min(_wgslsmith_clamp_u32(u_input.d.x, u_input.b.x, 10489u), ~1u) % 32u)));
    return abs(countOneBits(u_input.d.x));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = u_input.a.x < global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, ~_wgslsmith_sub_u32(func_3(), ~arg_0.c.a), 1u), 11u)];
    var var_1 = arg_0.e.x;
    let var_2 = Struct_4(arg_0.c);
    return Struct_1(-31915i);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_1(6897i);
    let var_1 = arg_1.x;
    let var_2 = global1.d;
    var var_3 = global1.a >> (~u_input.d.x % 32u);
    global2 = array<vec2<bool>, 4>();
    return Struct_3(func_2(Struct_3(var_0, max(vec2<i32>(43317i, global1.d.a), vec2<i32>(var_0.a, arg_3)) | -vec2<i32>(global1.c.a, -67321i), Struct_2(0u, 33258i, var_0, var_0), global1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, arg_0, arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.a, -1i), vec2<i32>(~(-u_input.a.x), global1.d.a)), Struct_2(~u_input.d.x, -18986i, func_2(Struct_3(Struct_1(u_input.a.x), vec2<i32>(14345i, global1.c.a), Struct_2(u_input.b.x, global1.d.a, Struct_1(arg_3), Struct_1(-1i)), global1.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, 1539f, arg_0))))), global1.c), Struct_1(var_2.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), arg_0, 1551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) * 1340f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = vec2<bool>(select(arg_2.e.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.x * 220f) * arg_2.e.x), _wgslsmith_sub_i32(-u_input.a.x, 0i) > (u_input.a.x ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.c.a, 4294967295u), 11u)]), any(vec3<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 4u)]), any(vec2<bool>(false, false)), false))), all(vec2<bool>(true, !(u_input.a.x != arg_2.c.c.a))));
    global2 = array<vec2<bool>, 4>();
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(~global1.d.a, _wgslsmith_mod_i32(abs(29015i), 63648i), 67167i, -arg_2.d.a), u_input.a));
    var_1 = vec4<i32>(-1i, -arg_2.b.x, func_2(Struct_3(Struct_1(-1i), _wgslsmith_mod_vec2_i32(u_input.a.yw, arg_2.b), Struct_2(u_input.e, global0[_wgslsmith_index_u32(arg_1.x, 11u)], Struct_1(22249i), global1.c), Struct_1(arg_2.b.x), vec4<f32>(arg_2.e.x, -835f, 230f, arg_2.e.x))).a ^ global0[_wgslsmith_index_u32(reverseBits(global1.a), 11u)], global1.d.a);
    let var_2 = Struct_4(func_1(-498f, global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~0u, _wgslsmith_mult_u32(global1.a, 4294967295u))), 4u)], -u_input.a.zzx, (_wgslsmith_mod_i32(8797i, arg_2.b.x) >> (global1.a % 32u)) | _wgslsmith_add_i32(-1i, func_2(arg_2).a)).c);
    return _wgslsmith_f_op_vec2_f32(arg_2.e.wz * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_2.e.yy))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f - 518f) + _wgslsmith_div_f32(-3853f, 345f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-569f)))))))));
    let var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(-1067f * 469f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, 1189f)) - _wgslsmith_f_op_vec2_f32(func_4(u_input.b.ww, countOneBits(u_input.d), func_1(891f, vec2<bool>(var_1, var_1), u_input.a.yyw, global1.b))))), var_1));
    var var_2 = -min(vec3<i32>(2147483647i, func_1(var_0.x, vec2<bool>(var_1, true), u_input.a.wxx, 0i).c.b, global0[_wgslsmith_index_u32(~42300u, 11u)]) & u_input.a.xzw, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, -17363i, -1i), u_input.a.xzy));
    let var_3 = all(!(!select(vec4<bool>(var_1, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, var_1, true, true)))));
    let var_4 = any(select(vec3<bool>(select(var_3 | var_1, global1.a < global1.a, any(vec3<bool>(var_3, true, false))), false, false), select(select(select(vec3<bool>(var_3, var_1, var_1), vec3<bool>(false, var_3, false), vec3<bool>(var_1, true, true)), select(vec3<bool>(var_1, true, false), vec3<bool>(true, var_3, var_1), vec3<bool>(var_1, var_3, var_1)), vec3<bool>(false, var_3, true)), !select(vec3<bool>(true, true, var_3), vec3<bool>(var_3, var_3, true), var_1), select(select(vec3<bool>(true, false, false), vec3<bool>(var_1, var_3, false), false), select(vec3<bool>(false, var_3, var_3), vec3<bool>(true, var_1, var_1), var_3), !var_3)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_3), vec3<bool>(var_3, var_3, false)), select(vec3<bool>(var_3, true, true), vec3<bool>(false, true, true), true), vec3<bool>(var_3, var_3, false)))));
    var var_5 = Struct_3(Struct_1(var_2.x ^ var_2.x), vec2<i32>(-(_wgslsmith_dot_vec2_i32(vec2<i32>(31031i, global0[_wgslsmith_index_u32(u_input.e, 11u)]), var_2.yz) & global1.b), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, global1.b), global1.b ^ var_2.x)), func_1(205f, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_mult_u32(40384u, 92318u)), 4u)], vec3<i32>(u_input.a.x, var_2.x, -2147483647i), ~(~(-2147483647i))).c, func_2(func_1(-1000f, global2[_wgslsmith_index_u32(u_input.e, 4u)], abs(vec3<i32>(global1.d.a, 27672i, -28139i)), abs(firstLeadingBit(global0[_wgslsmith_index_u32(global1.a, 11u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(-countOneBits(var_5.b))), min(global0[_wgslsmith_index_u32(73785u, 11u)], 9902i), var_2.x, vec2<u32>(global1.a, 71769u));
}

