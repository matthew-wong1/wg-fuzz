struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1550u, 74965u, 83467u, 78853u), vec4<u32>(1u, 0u, 40255u, 1u), vec4<u32>(31280u, 4294967295u, 0u, 93842u), vec4<u32>(24198u, 23438u, 0u, 1u), vec4<u32>(7472u, 0u, 1u, 14966u), vec4<u32>(88925u, 4294967295u, 1u, 1u), vec4<u32>(1u, 44979u, 0u, 13634u), vec4<u32>(6544u, 134295u, 34118u, 0u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.c.a), _wgslsmith_f_op_f32(select(arg_3.c.a, -1506f, (-arg_3.b ^ -arg_1.b) != (arg_1.b & _wgslsmith_mod_i32(1i, arg_3.b)))), arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - 1225f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.a * arg_3.c.a))))));
    global1 = array<vec4<u32>, 8>();
    let var_1 = arg_3.b;
    var var_2 = arg_1;
    var var_3 = true && arg_1.d;
    return global1[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(68875u, _wgslsmith_div_u32(~4294967295u, u_input.b), 4294967295u)), 8u)];
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), ~countOneBits(reverseBits(vec2<i32>(0i, 0i)))), vec2<i32>(1i, 1i) << (u_input.a.xx % vec2<u32>(32u)));
    let var_1 = vec2<u32>(1u, _wgslsmith_clamp_u32(select(~_wgslsmith_mod_u32(4294967295u, 45197u), 4294967295u, all(vec3<bool>(true, true, true))), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, ~19975u), ~u_input.a.x), 6603u));
    var var_2 = Struct_2(reverseBits(4294967295u), 1354i, Struct_1(_wgslsmith_f_op_f32(sign(737f)), true), false, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_1, vec2<u32>(var_1.x, 4294967295u)), var_1), vec2<u32>(~u_input.a.x, 1u)), u_input.c.zx));
    return all(select(!(!vec4<bool>(true, true, false, var_2.d)), vec4<bool>(_wgslsmith_f_op_f32(step(-312f, var_2.c.a)) != 1637f, true, true, var_2.c.b), var_2.d));
}

fn func_1() -> bool {
    let var_0 = ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(23130u, 1u)), 8u)], func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -466f), vec2<f32>(815f, -601f)), Struct_2(1u, 62035i, Struct_1(-1453f, true), true, u_input.a.x), ~20297u, Struct_2(1u, 0i, Struct_1(-722f, true), true, u_input.c.x))) >> (~0u % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(192f)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_2 = func_3();
    var var_3 = vec3<bool>(true, var_1.b, all(!vec4<bool>(!var_1.b, true, !var_1.b, func_3())));
    var var_4 = 1i;
    return !all(!(!vec3<bool>(true, true, var_3.x))) && !var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(17877u, ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(9973u, u_input.b, 1213u), u_input.c), u_input.b));
    global1 = array<vec4<u32>, 8>();
    let var_1 = vec2<bool>(!func_1(), false);
    global0 = true;
    global0 = true;
    var_0 = 0u;
    let var_2 = reverseBits(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(select(9637i, -33353i, true), _wgslsmith_mult_i32(0i, 0i))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-50467i, -29600i, -1i, 0i), vec4<i32>(2147483647i, 20259i, 0i, 19683i)), -2147483647i)));
    global0 = all(select(!(!vec3<bool>(true, var_1.x, true)), select(vec3<bool>(true, any(vec4<bool>(true, var_1.x, var_1.x, false)), any(vec2<bool>(true, var_1.x))), select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, var_1.x, var_1.x), var_1.x), vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, true), false)), vec3<bool>(var_1.x | true, all(var_1), true)), vec3<bool>(all(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), false, true)));
    var var_3 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 0u), var_2, countOneBits(u_input.a), _wgslsmith_mod_u32(84019u, 1u), select(vec3<i32>(var_2, -62341i, 4552i), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2, var_2, var_2, -2476i)), ~vec4<i32>(1i, -22957i, var_2, 50432i)), -21481i, _wgslsmith_dot_vec3_i32(vec3<i32>(-23944i, var_2, 2147483647i) | vec3<i32>(var_2, var_2, -2147483647i), vec3<i32>(-44179i, var_2, -1i) >> (vec3<u32>(var_3.x, var_3.x, var_3.x) % vec3<u32>(32u)))), vec3<bool>(true, any(vec2<bool>(false, var_1.x)), var_1.x)));
}

