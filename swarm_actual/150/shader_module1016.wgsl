struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_4, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.c.x, -785f)), global0.c.x), 367f), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c.x)))), _wgslsmith_f_op_f32(-global0.c.x)))) + vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-788f + global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + global0.c.x))), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, false))))), -164f));
    let var_1 = u_input.d;
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(u_input.c, ~28990u, 76724u), ~7939u, firstLeadingBit(~u_input.b.x));
    global1 = vec3<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(1201f + -143f) <= var_0.x, !global0.a.x)), global0.a.x, !global0.a.x);
    global0 = Struct_1(select(select(!global1.yy, vec2<bool>(global1.x, true), any(vec3<bool>(global0.a.x, global1.x, global0.a.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, any(global0.a))), 1i << (1u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.c.x + global0.c.x))) + var_0.wy), countOneBits(global0.d));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1189f, _wgslsmith_f_op_f32(-global0.c.x)) - global0.c.x);
}

fn func_3() -> u32 {
    var var_0 = (u_input.b.x == max(~max(57439u, 20157u), ~(~global0.d.x))) && global0.a.x;
    let var_1 = _wgslsmith_clamp_u32(abs(abs(select(global0.d.x ^ global0.d.x, u_input.c, global1.x || true))), u_input.b.x, ~(~_wgslsmith_add_u32(~u_input.c, ~u_input.a.x)));
    global1 = !vec3<bool>(all(vec2<bool>(true, global1.x)) && ((u_input.d == global0.b) && false), global0.a.x, true);
    let var_2 = _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(trunc(-1000f)));
    global0 = Struct_1(vec2<bool>(false, !global1.x & false), 51047i, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(u_input.b.x, 0u, 4294967295u)), u_input.a.x), ~_wgslsmith_clamp_u32(global0.d.x, global0.d.x, 64468u)), _wgslsmith_mult_u32(~49834u, var_1 | 7554u) ^ ~1u, _wgslsmith_mult_u32(~countOneBits(40636u), var_1)));
    return firstTrailingBit(u_input.a.x);
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(global0.c.x, 2345f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 546f) - -516f));
    let var_1 = -994f;
    global0 = Struct_1(global1.xy, abs(_wgslsmith_div_i32(global0.b, 2147483647i)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_1)), ~abs(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(global0.d.x, u_input.c, 90836u)), u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 13122u), u_input.a))));
    var var_2 = _wgslsmith_div_u32(abs(u_input.c & func_3()), 23186u) != (u_input.a.x | 1u);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(825f, global0.c.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - vec3<f32>(1783f, -938f, _wgslsmith_f_op_f32(-global0.c.x))))) + vec3<f32>(1139f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + var_1), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2051f), _wgslsmith_f_op_f32(-587f + var_1)))));
    return ~(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(all(vec2<bool>(global0.b != 1i, select(global1.x, true, false) & select(false, true, global0.a.x))), global0.a.x == (true && !any(vec3<bool>(global1.x, false, false))), true);
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -1462f, 1104f) + vec3<f32>(-400f, global0.c.x, global0.c.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1410f, -1756f))))))));
    var var_1 = !(!global0.a);
    global2 = array<Struct_4, 9>();
    let var_2 = vec4<f32>(-262f, _wgslsmith_f_op_f32(func_1()), global0.c.x, -880f);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), 4294967295u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), var_2.x, var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, global0.c.x, -252f)) * var_2.wwx))), 66213i);
}

