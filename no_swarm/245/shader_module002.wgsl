struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 17> = array<i32, 17>(-12022i, -1i, -57695i, 24185i, -102765i, 0i, i32(-2147483648), -15735i, -23611i, -1i, -7673i, -22867i, i32(-2147483648), 1i, 14747i, -1i, 0i);

var<private> global2: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = ~firstTrailingBit(vec3<i32>(~0i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(0u, 17u)]), vec3<i32>(-45845i, 2147483647i, u_input.a)), ~u_input.a), 22443i));
    let var_1 = arg_1.zz;
    var var_2 = ~(1u | ~(~select(0u, 1u, false)));
    var var_3 = arg_1.xyx;
    global2 = false;
    return -1000f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) > _wgslsmith_f_op_f32(100f + -1282f);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-425f, 834f)) - _wgslsmith_div_f32(-858f, -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f - 854f)))), _wgslsmith_f_op_f32(func_3(false == (var_0 || var_0), !(!(!vec4<bool>(true, var_0, false, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(520f)) * -1163f)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(78400u, 1u), vec2<u32>(1u, 1u), vec2<u32>(32437u, 11443u)), countOneBits(abs(vec2<u32>(4294967295u, 27800u)))), vec2<u32>(~18581u, ~(~4294967295u))), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2372f * 1768f))), _wgslsmith_f_op_f32(f32(-1f) * -734f)));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = func_2();
    global0 = !(!(_wgslsmith_dot_vec3_u32(arg_0.yyx, vec3<u32>(17268u, 1008u, var_0.c.x)) < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, var_0.c.x, var_0.c.x), ~vec4<u32>(0u, 26866u, 1u, 0u))));
    var var_1 = reverseBits(_wgslsmith_add_u32(abs(arg_0.x), abs(_wgslsmith_mod_u32(25653u, var_0.c.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.e + 1000f), -709f, _wgslsmith_f_op_f32(-520f + 803f))))), vec2<bool>(var_0.d, var_0.d), vec3<u32>(~(~arg_0.x), ~countOneBits(_wgslsmith_add_u32(var_0.c.x, arg_0.x)), min(_wgslsmith_add_u32(~arg_0.x, ~arg_0.x), _wgslsmith_clamp_u32(arg_0.x >> (arg_0.x % 32u), var_0.c.x ^ 57510u, 4294967295u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, var_0.e, 1000f, 728f)), vec4<f32>(-778f, var_0.e, var_0.a, -350f), func_2().d)))))), 2242u);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-var_2.d.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(true, false & !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)), !(true == select(true, true, func_1(vec4<u32>(1u, 1u, 0u, 0u)))));
    let var_0 = select(vec2<bool>(all(vec3<bool>(true, func_1(vec4<u32>(1u, 4294967295u, 44583u, 0u)), any(vec3<bool>(false, true, true)))), false), select(!vec2<bool>(func_2().d, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), true & select(true, false, false)), select(false, false, false)), false);
    let var_1 = !var_0.x && (~_wgslsmith_add_i32(~u_input.a, _wgslsmith_sub_i32(1268i, -1i)) <= -29506i);
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(2351u, abs(78090u), ~(~(~45115u))), vec3<u32>(42095u, max(_wgslsmith_clamp_u32(74076u, 10027u, 50830u) ^ abs(23426u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(56120u, 44605u), vec2<u32>(37227u, 22795u))), 1u));
    let var_3 = vec4<u32>(var_2.x, _wgslsmith_sub_u32(var_2.x, func_2().c.x), ~countOneBits(select(abs(0u), var_2.x, all(vec3<bool>(var_0.x, true, var_1)))), ~var_2.x);
    global2 = !var_0.x;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-569f)), _wgslsmith_div_f32(-1215f, -1291f)), _wgslsmith_f_op_f32(func_3(all(vec4<bool>(var_0.x, true, false, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_1, var_0.x, true, var_0.x), vec4<bool>(var_1, true, false, true)), 676f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1000f), 1655f), -196f))), vec2<bool>(all(vec3<bool>(true, var_0.x, true)) == true, true != (-2147483647i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-7408i, 1i), vec2<i32>(-2147483647i, 2147483647i)))), vec3<u32>(~var_3.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_3 ^ var_3, ~vec4<u32>(35993u, var_2.x, var_2.x, 4294967295u)), 1u), abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(6045u, 59025u, 16738u, var_3.x)), ~var_3.x, var_2.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(115f, 2112f, -100f, 315f))), vec4<f32>(229f, 1567f, 593f, -376f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1396f, 1000f, 856f, 1000f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-866f, -526f, -1147f, -804f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1037f, 310f, 730f, -1374f) * vec4<f32>(126f, -241f, 579f, -370f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, -232f, -447f, 325f)))))))), var_2.x);
    global2 = var_0.x & !(_wgslsmith_f_op_f32(floor(138f)) >= _wgslsmith_f_op_f32(step(func_2().a, var_4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.d.x, var_4.d.x)) * -1868f), 1417f) - _wgslsmith_f_op_f32(f32(-1f) * -272f)), abs(-1i));
}

