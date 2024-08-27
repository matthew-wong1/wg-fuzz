struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)));

var<private> global2: array<u32, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global2 = array<u32, 2>();
    let var_0 = reverseBits((vec3<i32>(1i, 2147483647i, select(u_input.c.x, -1i, arg_2.a.x)) | firstTrailingBit(~vec3<i32>(u_input.a, u_input.c.x, u_input.c.x))) & -((vec3<i32>(u_input.c.x, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.b.x, u_input.a)) >> (max(u_input.d.wzz, vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0, 1u), 71060u, ~u_input.d.x, 0u), u_input.d ^ _wgslsmith_mod_vec4_u32(vec4<u32>(59806u ^ u_input.d.x, 4294967295u | arg_0, 4294967295u & u_input.d.x, ~13931u), u_input.d));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, -929f, -1108f));
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global0 = u_input.d.x;
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-244f)) * _wgslsmith_f_op_f32(-2039f - arg_3.a.x)), -986f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))), arg_1.b, ~(-vec4<i32>(arg_2.c.x, ~1i, -2147483647i, 22501i)));
    global2 = array<u32, 2>();
    let var_1 = abs(arg_1.c.xyw);
    let var_2 = Struct_3(arg_2.a, Struct_2(!vec2<bool>(any(arg_0), true)), vec4<i32>((var_0.c.x ^ _wgslsmith_div_i32(0i, u_input.c.x)) | -min(2147483647i, 1i), _wgslsmith_mult_i32(~(i32(-1i) * -715i), ~u_input.a), func_3(25798u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - vec4<f32>(arg_2.a.x, arg_3.a.x, arg_1.a.x, 392f)), Struct_2(vec2<bool>(arg_2.b.a.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(arg_2.a.xx * arg_3.a.yz)), _wgslsmith_mult_i32(i32(-1i) * -17025i, var_0.c.x)));
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(65730u, global2[_wgslsmith_index_u32(84823u, 2u)]), 2u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(88710u, 2u)], 1u, global2[_wgslsmith_index_u32(80238u, 2u)]), 2u)]) >> (~firstTrailingBit(53000u) % 32u), 7002u), 44873u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> i32 {
    global0 = firstTrailingBit(_wgslsmith_mult_u32(reverseBits(func_2(vec3<bool>(false, false, false), Struct_3(vec4<f32>(-802f, -624f, -682f, 167f), global1[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(-22369i, 0i, 2147483647i, arg_0.x)), Struct_3(vec4<f32>(938f, 269f, -191f, 590f), Struct_2(vec2<bool>(false, false)), vec4<i32>(15380i, 4531i, arg_1.x, 0i)), Struct_3(vec4<f32>(1056f, 564f, -1206f, -420f), Struct_2(vec2<bool>(false, false)), arg_0))) >> ((~46751u | (global2[_wgslsmith_index_u32(23214u, 2u)] << (1465u % 32u))) % 32u), _wgslsmith_dot_vec3_u32(~select(u_input.d.wyz, u_input.d.wwz, vec3<bool>(true, true, true)), select(~u_input.d.xyz, vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], 1u), true))));
    global2 = array<u32, 2>();
    let var_0 = !select(!(~u_input.d.x > 30144u), true, any(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(max(1021f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -554f) + _wgslsmith_f_op_f32(step(1000f, -1388f))))))));
    let var_2 = _wgslsmith_mod_u32(~u_input.d.x, min(u_input.d.x, global2[_wgslsmith_index_u32(func_2(select(select(vec3<bool>(true, var_0, false), vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, true)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(var_0, var_0, true), true)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1360f, 842f, 1401f, -2227f)), Struct_2(vec2<bool>(var_0, true)), vec4<i32>(-24121i, 26037i, u_input.c.x, arg_0.x) ^ arg_0), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1043f, -432f, 1000f, -840f)), Struct_2(vec2<bool>(true, false)), ~vec4<i32>(u_input.b.x, 13845i, 42446i, u_input.b.x)), Struct_3(vec4<f32>(215f, -1910f, 1663f, 403f), Struct_2(vec2<bool>(var_0, var_0)), firstLeadingBit(vec4<i32>(arg_1.x, 62756i, arg_0.x, -25370i)))), 2u)]));
    return _wgslsmith_add_i32(0i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(max(~0u, max(~28925u, global2[_wgslsmith_index_u32(0u, 2u)] << (countOneBits(u_input.d.x) % 32u))), _wgslsmith_mult_u32(1641u, 1u));
    var var_0 = _wgslsmith_f_op_f32(259f + _wgslsmith_f_op_f32(trunc(1f)));
    var var_1 = vec2<i32>(_wgslsmith_div_i32(func_1(abs(vec4<i32>(-47275i, u_input.b.x, 1i, -2147483647i)), vec3<i32>(0i, 69173i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 23837i, u_input.a), countOneBits(vec3<i32>(u_input.b.x, u_input.c.x, -1i)))) | ~select(~u_input.c.x, _wgslsmith_div_i32(u_input.a, u_input.a), all(vec2<bool>(false, true))), -1i);
    global1 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(~u_input.c.x, -1i, 1i) << (u_input.d.wxy % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(~14053i, -12233i, u_input.a), ~(-vec3<i32>(u_input.c.x, 14924i, u_input.a))) << (~(u_input.d.yxx ^ ~u_input.d.zxy) % vec3<u32>(32u)));
    var var_3 = all(!vec3<bool>(false, any(vec2<bool>(false, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.x, var_2.x), max(var_2.yx, u_input.c))), ~countOneBits(var_2.x)));
}

