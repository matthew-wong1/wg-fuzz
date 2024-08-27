struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(682f - global0.x)))))));
    var var_0 = Struct_5(vec4<bool>(!(false | any(vec2<bool>(false, false))), !(638f >= _wgslsmith_f_op_f32(step(-572f, global0.x))), true, _wgslsmith_f_op_f32(min(global0.x, global0.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, 1637f, global0.x, global0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))), vec3<u32>(firstTrailingBit(~u_input.a), ~(12066u >> ((u_input.a & u_input.a) % 32u)), u_input.a));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(539f, var_0.b.x, global0.x))))), vec3<f32>(-225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1479f, global0.x)) * global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))))), vec3<f32>(383f, global0.x, -1816f), ~max(var_0.c | ~vec3<u32>(u_input.a, 46810u, 13076u), vec3<u32>(var_0.c.x, 4294967295u & u_input.a, ~69933u)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1853f, _wgslsmith_f_op_f32(-global0.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, -815f)) + -2250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * var_0.b.x))))));
    return -706f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f + -912f), global0.x) - _wgslsmith_f_op_f32(step(2081f, global0.x))), _wgslsmith_f_op_f32(func_3())), Struct_2(~((u_input.a ^ 13933u) & 103350u), select(vec2<bool>(true, true), vec2<bool>(true, global0.x > global0.x), true)));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), var_0.b), vec2<f32>(_wgslsmith_f_op_f32(max(2435f, 1387f)), _wgslsmith_f_op_f32(var_0.b * global0.x)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-327f, var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, 327f) + vec2<f32>(-339f, 1220f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, var_0.b))), select(false, var_0.c.b.x, var_0.c.b.x))))));
    let var_1 = Struct_2(select(1384u, _wgslsmith_div_u32(~var_0.c.a, 1u), any(vec4<bool>(-224f < var_0.b, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x))), select(!var_0.c.b, !var_0.c.b, false));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2112f, -689f)) - vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 1035f)))));
    global0 = vec2<f32>(-750f, global0.x);
    return var_1;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_3(26310u, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(-1593f, -279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) + _wgslsmith_f_op_f32(floor(global0.x)))))), func_2());
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-995f, _wgslsmith_f_op_f32(-var_1.b))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.x)))), var_0.b)));
    let var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(438f, 762f, global0.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b, -246f, var_1.b), vec3<f32>(-200f, -546f, var_0.b))), !vec3<bool>(true, var_1.c.b.x, var_1.c.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(357f, var_0.b, var_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 428f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, global0.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-311f)), _wgslsmith_f_op_f32(f32(-1f) * -2206f), 310f) + vec3<f32>(-441f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(-734f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, var_0.b, -420f))))))), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.a, 77522u, 35648u), abs(vec3<u32>(8967u, u_input.a, var_1.c.a)), !vec3<bool>(true, var_0.c.b.x, var_1.c.b.x)), ~vec3<u32>(58028u, var_0.c.a, var_1.c.a)) & _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(var_1.c.a, 32916u, var_1.a)), select(vec3<u32>(u_input.a, 1u, 4294967295u) ^ vec3<u32>(1u, var_0.a, 20746u), vec3<u32>(var_0.a, var_1.c.a, u_input.a), !var_1.c.b.x), ~vec3<u32>(63348u, 4294967295u, 10982u)));
    let var_3 = !(!(!vec4<bool>(var_0.c.b.x, false & var_0.c.b.x, false, 1u <= var_0.a)));
    return vec2<bool>(_wgslsmith_clamp_u32(var_0.c.a, abs(4294967295u), 4294967295u) == var_1.a, -176f >= _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(f32(-1f) * -802f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = select(select(!func_1(), select(vec2<bool>(true, true), vec2<bool>(select(false, false, true), true), vec2<bool>(all(vec4<bool>(true, false, true, true)), false)), func_2().b), vec2<bool>(false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)))), vec2<bool>(func_2().b.x, true));
    var var_2 = var_1.x;
    var var_3 = 1u;
    let var_4 = firstLeadingBit(u_input.b.www);
    var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(0u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(50495u, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)))), -707f);
}

