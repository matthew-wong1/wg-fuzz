struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -226f;

var<private> global1: array<bool, 7>;

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = -1000f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(1000f + -761f), any(vec3<bool>(false, global1[_wgslsmith_index_u32(41110u, 7u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1404f))));
    var var_1 = select(_wgslsmith_mod_vec2_u32(select(vec2<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), countOneBits(u_input.c.yy), global1[_wgslsmith_index_u32(arg_3, 7u)] || arg_0.c), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, arg_1) >> (vec2<u32>(u_input.c.x, 17126u) % vec2<u32>(32u)), ~vec2<u32>(arg_1, 13020u))), _wgslsmith_mod_vec2_u32(u_input.a.yz, ~vec2<u32>(4917u, ~arg_0.b)), all(vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, 0u), 7u)], true, arg_0.c)));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(~(~global2.zz) ^ select(vec2<i32>(u_input.b, global2.x), arg_0.a, !vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], arg_0.c)), vec2<i32>((i32(-1i) * -5279i) << (1u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -59451i, global2.x, arg_0.a.x), vec4<i32>(1i, arg_2, 0i, 0i)))), ~arg_1, true);
    var var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, _wgslsmith_mod_u32(arg_1, u_input.a.x), 113878u) << (u_input.a % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~(~u_input.a), countOneBits(~vec3<u32>(u_input.a.x, 4294967295u, arg_1))));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-503f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1879f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -284f), 1140f, any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.b, 7u)])))))));
    return !(1798f != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.x - -1418f)))) | true;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = select(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(74312u, 7u)], global1[_wgslsmith_index_u32(53964u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(u_input.d, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(31194u, 7u)], global1[_wgslsmith_index_u32(3728u, 7u)], true))), vec4<bool>(true, true, any(vec4<bool>(false && global1[_wgslsmith_index_u32(u_input.d, 7u)], !global1[_wgslsmith_index_u32(16083u, 7u)], func_3(Struct_1(vec2<i32>(2147483647i, u_input.b), u_input.d, true), u_input.a.x, global2.x, 4294967295u), !global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), true), !all(select(vec4<bool>(global1[_wgslsmith_index_u32(16218u, 7u)], global1[_wgslsmith_index_u32(u_input.d, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(1243u, 7u)], global1[_wgslsmith_index_u32(9478u, 7u)], global1[_wgslsmith_index_u32(u_input.c.x, 7u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global1[_wgslsmith_index_u32(u_input.d, 7u)], false))));
    global2 = vec3<i32>(~countOneBits(-98245i) | firstLeadingBit(u_input.b), -2147483647i << (_wgslsmith_mult_u32(4294967295u, max(u_input.a.x, 1u)) % 32u), countOneBits(_wgslsmith_clamp_i32(global2.x, ~1i, u_input.b)));
    let var_1 = vec2<i32>(-global2.x, _wgslsmith_add_i32(-(~2147483647i), countOneBits(reverseBits(u_input.b)))) << (firstTrailingBit(vec2<u32>(firstTrailingBit(u_input.c.x ^ 20785u), 1u)) % vec2<u32>(32u));
    return -1000f;
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 7>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(277f)), _wgslsmith_f_op_f32(func_2(484f)))))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))))));
    var var_2 = Struct_1(global2.xy, ~33685u, var_0.x != 416f);
    let var_3 = Struct_1(vec2<i32>(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_2.a.x, global2.x))), _wgslsmith_mult_u32(var_2.b, u_input.c.x), all(select(select(!vec3<bool>(true, false, var_2.c), select(vec3<bool>(false, var_2.c, global1[_wgslsmith_index_u32(14880u, 7u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), global1[_wgslsmith_index_u32(15086u, 7u)]), any(vec3<bool>(var_2.c, false, false))), !(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(18708u, 7u)])), true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<bool, 7>();
    let var_1 = func_1();
    var var_2 = all(select(!(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.b, 7u)])), !vec3<bool>(true, !global1[_wgslsmith_index_u32(29997u, 7u)], true), true));
    let var_3 = ~select(firstLeadingBit(vec4<u32>(var_0.b, u_input.d, max(u_input.c.x, u_input.c.x), 38557u)), ~(~select(vec4<u32>(var_0.b, 1u, 1u, 1u), vec4<u32>(57850u, u_input.a.x, var_1.b, 7643u), var_1.c)), false);
    var var_4 = ~(~vec4<u32>(~0u, 4294967295u, reverseBits(~25564u), ~_wgslsmith_mod_u32(4294967295u, 27573u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(7694i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.a.x, u_input.b, -2147483647i, 2147483647i), -vec4<i32>(2147483647i, var_1.a.x, 9797i, var_0.a.x)), -vec4<i32>(global2.x, var_0.a.x, 0i, -1i)), var_0.a.x));
}

