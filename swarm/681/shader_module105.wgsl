struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f + arg_2.e) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_2.b.x + -1000f))) * -945f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -882f))), arg_1, !(!(-969f != arg_2.e)))));
    var var_1 = arg_2.a.zw;
    let var_2 = arg_2;
    global0 = arg_2.c.x;
    return _wgslsmith_div_vec2_u32(u_input.a.xz, abs(~vec2<u32>(firstLeadingBit(u_input.c), u_input.c & 0u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(vec2<bool>(false, all(vec2<bool>(all(arg_1.zwz), false))));
    global0 = false;
    var var_1 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), abs(vec2<u32>(max(u_input.a.x, u_input.a.x), 1u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 1u), vec4<u32>(u_input.a.x, u_input.c, 29090u, 21544u)) ^ vec4<u32>(12319u, 4294967295u, u_input.c, u_input.c), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxy, u_input.a.zwx), func_2(u_input.b, 178f, arg_3, arg_3.a.ww).x, u_input.a.x & 4294967295u, ~4294967295u)), 27954u, 1u));
    global0 = _wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, arg_1), countOneBits(_wgslsmith_add_vec4_u32(~u_input.a, u_input.a))) < (~u_input.c >> (~0u % 32u));
    let var_2 = var_1.x | _wgslsmith_sub_u32(u_input.c, select(0u, 96740u, 2147483647i < arg_3.a.x) << (u_input.a.x % 32u));
    return 1060f;
}

fn func_1() -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), u_input.a.zw >> (u_input.a.wx % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~func_2(u_input.b, -1000f, Struct_1(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec3<f32>(-1525f, 393f, 3016f), vec2<bool>(false, true), false, -1612f), vec2<i32>(u_input.b, u_input.b)), ~(~vec2<u32>(u_input.a.x, 67403u)))), _wgslsmith_mult_u32(u_input.a.x, ~abs(47702u)), 1u);
    let var_1 = Struct_1(~(min(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, 55580i)) << (~vec4<u32>(u_input.c, var_0.x, 8259u, 4294967295u) % vec4<u32>(32u))) << (~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, 2762u, u_input.c, u_input.c)) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(490f, 645f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-300f)) - _wgslsmith_f_op_f32(283f - -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, false)), vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.b, -39581i, -1i, -1i), vec3<f32>(-1757f, -659f, 1929f), vec2<bool>(false, true), false, -1072f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-808f - -260f), _wgslsmith_div_f32(-203f, -360f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -847f))))), vec2<bool>(true, u_input.c < 4294967295u), any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(747f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1160f - -389f), _wgslsmith_f_op_f32(f32(-1f) * -745f)))))));
    global0 = true;
    global0 = var_1.c.x;
    global0 = var_1.d;
    return _wgslsmith_add_i32(7398i, var_1.a.x | _wgslsmith_div_i32(u_input.b, -11841i | u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_add_i32(-44910i, max(3292i, u_input.b)), 1i, u_input.b, -_wgslsmith_mod_i32(0i, u_input.b)) ^ vec4<i32>((-30453i << (1u % 32u)) << ((u_input.c & u_input.a.x) % 32u), u_input.b, u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1157f, _wgslsmith_f_op_f32(min(-1306f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1146f) + _wgslsmith_div_f32(280f, -1109f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1293f), -256f, _wgslsmith_f_op_f32(select(201f, -1491f, false)))))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), !select(true, true, false))), true, -303f);
    global0 = 4294967295u < (_wgslsmith_div_u32(~4294967295u, u_input.a.x) | u_input.a.x);
    global0 = false;
    var var_2 = var_1.a.wxy;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e)) * var_1.b.x);
    var var_4 = Struct_1(vec4<i32>(0i, abs(1i) | u_input.b, _wgslsmith_add_i32(u_input.b, ~u_input.b), -(~(~var_1.a.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.b))), var_1.c, any(!vec3<bool>(any(vec3<bool>(false, false, var_1.c.x)), select(false, false, false), any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) + var_1.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -981f)));
    let x = u_input.a;
    s_output = StorageBuffer(23289i, 270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))) - -204f));
}

