struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = -420f;
    var var_1 = global0.x;
    let var_2 = Struct_2(-11219i, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~20146u << (firstTrailingBit(u_input.b) % 32u), 0u, countOneBits(abs(1u))), min(u_input.b, 59594u)), Struct_1(select(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(u_input.b, u_input.b)), u_input.b, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), (max(u_input.b, 0u) | 4294967295u) < ~1u, ~_wgslsmith_sub_vec4_u32(vec4<u32>(65717u, u_input.b, u_input.c.x, 51342u), ~vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b))), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 435f, true)) * _wgslsmith_f_op_f32(ceil(-1577f))) != 1f, !(!any(vec3<bool>(false, false, false))), _wgslsmith_sub_vec4_u32(u_input.c, abs(~vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.c.x)))), Struct_1(0u << (u_input.c.x % 32u), true || (-361f < _wgslsmith_f_op_f32(round(global0.x))), true, vec4<u32>(max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(78807u, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.c.x))), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) >> (~69047u % 32u), ~4294967295u, ~_wgslsmith_mult_u32(0u, u_input.c.x))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))));
    return !vec2<bool>(var_2.c.c, true);
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(1195f));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-434f, _wgslsmith_div_f32(-660f, -246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f)))));
    let var_2 = select(!vec2<bool>(-u_input.a <= 1i, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(func_3(u_input.a), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false), func_3(-2147483647i)), all(vec4<bool>(false, true, true, true)))), vec2<bool>(true, true));
    var var_3 = Struct_3(vec2<f32>(1789f, -612f));
    var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_3.a.x) * global0.xx), _wgslsmith_div_vec2_f32(var_1.a, var_1.a))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0, _wgslsmith_f_op_f32(abs(global0.x)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<bool>(!arg_2.e.c, any(!vec4<bool>(false, false, false, u_input.a >= arg_2.a)), arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(-global0.x), true && arg_2.c.c))), arg_2.d.b);
    let var_1 = vec3<bool>(true, var_0.x, !all(vec3<bool>(true, 54380i < u_input.a, var_0.x && var_0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, 991f, 1044f)) * vec3<f32>(_wgslsmith_div_f32(-1148f, global0.x), _wgslsmith_f_op_f32(global0.x * arg_1.a.x), _wgslsmith_f_op_f32(round(1214f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, arg_1.a.x, global0.x) + vec3<f32>(global0.x, 187f, global0.x)), vec3<f32>(arg_1.a.x, 775f, -641f), vec3<bool>(true, false, arg_2.c.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.a.x, arg_1.a.x) * vec3<f32>(-481f, 419f, arg_0)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -177f, 1037f), vec3<f32>(arg_0, 598f, 595f)))))))));
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(select(-1i ^ u_input.a, firstTrailingBit(65061i), arg_2.e.b), firstLeadingBit(max(0i, 14498i)), max(1i ^ u_input.a, u_input.a), _wgslsmith_div_i32(72689i & arg_2.a, u_input.a));
    let var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2418f, arg_0)) * 2005f)), false, arg_1, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.e.d.x, arg_2.d.a), ~u_input.c.xy), 4294967295u), 44933u);
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1977f, global0.x, -889f), vec3<f32>(595f, -1000f, global0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(366f, 288f, -512f) + vec3<f32>(1201f, 1000f, -146f)))))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_1(global0.x, Struct_3(global0.zx), Struct_2(2147483647i, u_input.c.x, Struct_1(u_input.b, true, false, u_input.c), Struct_1(u_input.b, false, false, u_input.c), Struct_1(1u, false, false, u_input.c)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = global0.x;
    let var_1 = Struct_4(151f, false, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.yx))))), 1u, 11154u);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, var_1.c.a.x, -1000f), vec3<f32>(global0.x, -682f, -558f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 2472f, var_1.c.a.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1329f, global0.x, 859f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, -1021f, -854f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-699f, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -443f, -877f), vec3<f32>(628f, -104f, 1000f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-240f, var_1.a, 1117f), vec3<f32>(1716f, var_1.a, global0.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(490f, 1169f, 396f) + vec3<f32>(739f, -399f, global0.x))))) - vec3<f32>(var_1.c.a.x, var_1.a, 1f));
    var var_2 = ~vec2<i32>(~22183i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_clamp_i32(-26678i, i32(-1i) * -16988i, 2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(30913u, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_sub_i32(reverseBits(_wgslsmith_div_i32(var_2.x, -38821i)), u_input.a << (countOneBits(1u) % 32u))), _wgslsmith_mult_i32(var_2.x ^ u_input.a, -12075i), vec3<u32>(u_input.c.x, u_input.b, ~(~_wgslsmith_add_u32(var_1.e, 1u))), global0.x, ~(-10783i ^ -_wgslsmith_mod_i32(22145i, var_2.x)));
}

