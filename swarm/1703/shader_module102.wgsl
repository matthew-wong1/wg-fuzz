struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 29> = array<i32, 29>(i32(-2147483648), -33690i, -52350i, 0i, 0i, i32(-2147483648), 0i, i32(-2147483648), 4147i, -14622i, -27452i, i32(-2147483648), 0i, 0i, i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i, 2147483647i, 2147483647i, -17125i, 19689i, i32(-2147483648), -68612i, 2147483647i, 25319i);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = _wgslsmith_div_f32(164f, 373f);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f - 890f)), arg_1.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, 544f, arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.a, 1384f)), _wgslsmith_f_op_f32(arg_1.a + -1522f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-789f, 649f, arg_1.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-130f, -634f, -368f)))))));
    let var_1 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(~arg_2, 29u)], u_input.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -1039f, -886f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(837f, arg_1.a, 1000f))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1908f, arg_1.a), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1580f))), var_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, -1074f, -3193f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(844f)))), _wgslsmith_f_op_f32(floor(-594f))))));
    return -21207i;
}

fn func_2() -> vec2<bool> {
    var var_0 = all(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, false)) || (min(4294967295u, _wgslsmith_add_u32(u_input.a.x, ~4294967295u)) >= reverseBits(0u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * _wgslsmith_f_op_f32(1455f + 2046f)))) * _wgslsmith_f_op_f32(1119f + _wgslsmith_f_op_f32(ceil(1f))));
    var var_1 = vec3<bool>(!(func_3(all(vec2<bool>(true, false)), Struct_1(-374f, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<bool>(true, true, true, false), u_input.a, vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)), u_input.a.x) >= global1[_wgslsmith_index_u32(53035u, 29u)]), !select(false, true || all(vec3<bool>(false, true, false)), true), false);
    var_1 = !select(select(vec3<bool>(var_1.x & var_1.x, var_1.x, var_1.x), select(select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, false), vec3<bool>(var_1.x, false, false)), !vec3<bool>(true, true, var_1.x), var_1.x & var_1.x), !vec3<bool>(var_1.x, false, var_1.x)), vec3<bool>(true || !var_1.x, false, global1[_wgslsmith_index_u32(u_input.a.x >> (37001u % 32u), 29u)] >= 1i), false);
    var var_2 = abs(-2147483647i);
    return vec2<bool>(any(!select(!vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), var_1.xy)), !any(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, false), var_1.x), vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = select(u_input.a.x, 6893u, any(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), func_2(), true)));
    global1 = array<i32, 29>();
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)), ~vec4<u32>(~1u, _wgslsmith_add_u32(66213u, 275u), u_input.a.x, max(u_input.a.x, 4294967295u)), !vec4<bool>(all(vec3<bool>(false, true, true)), false, false, func_2().x), ~vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 13812u), 1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(9000u, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(0u, 27996u, 38775u, 7727u))), max(10994u, (u_input.a.x & 1u) << (~u_input.a.x % 32u)) ^ u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = u_input.a;
    var_1 = _wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, ~(~var_0.a.e.wzx) << (u_input.a % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-300f)), _wgslsmith_f_op_f32(min(var_0.a.a, _wgslsmith_f_op_f32(var_0.a.a + 650f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f + var_0.a.a) * _wgslsmith_f_op_f32(467f - -1000f))), -623f, var_0.a.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_0.a.a), _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(sign(var_0.a.a))), _wgslsmith_f_op_f32(max(-481f, -268f)), var_0.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.a.e << (firstLeadingBit(~var_0.a.b) % vec4<u32>(32u)), vec4<u32>(reverseBits(var_0.b), _wgslsmith_dot_vec2_u32(var_0.a.b.wx, u_input.a.xz), u_input.a.x, ~1u) | select(reverseBits(var_0.a.e), max(var_0.a.e, var_0.a.b), var_0.a.c)), -(~u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(547f, var_2.x, var_0.a.a))) + vec3<f32>(681f, var_2.x, -920f)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -159f, -1374f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1().a.a + _wgslsmith_f_op_f32(f32(-1f) * -122f)))) + _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(max(var_0.a.a, -483f)))));
}

