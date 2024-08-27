struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = select(!select(select(select(vec3<bool>(arg_0.e.a.x, arg_0.e.a.x, true), vec3<bool>(false, true, true), vec3<bool>(arg_0.e.a.x, arg_0.e.a.x, false)), vec3<bool>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, arg_0.e.a.x), vec3<bool>(true, false, arg_0.e.a.x))), !select(vec3<bool>(true, arg_0.e.a.x, true), vec3<bool>(arg_0.e.a.x, false, arg_0.e.a.x), vec3<bool>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x)), arg_0.e.a.x), !vec3<bool>(true, false, any(select(vec2<bool>(false, arg_0.e.a.x), arg_0.e.a, true))), true);
    let var_1 = _wgslsmith_f_op_f32(step(657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f - _wgslsmith_f_op_f32(abs(arg_0.a)))))));
    let var_2 = arg_0.d.b.x;
    var var_3 = ~(4294967295u | _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 24118u, u_input.b.x), vec4<u32>(52591u, 0u, 33628u, 45879u)), (vec4<u32>(26605u, 1521u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, 1975u, 65799u, u_input.a.x)) & ~vec4<u32>(arg_0.d.a.x, 45271u, 19827u, arg_0.d.a.x)));
    var var_4 = u_input.c.yxz ^ u_input.c.xzx;
    return arg_0.c;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(1531f, u_input.c.x, 656f, Struct_3(vec2<u32>(54618u, 4294967295u), vec2<i32>(-29717i, -21043i)), Struct_1(vec2<bool>(true, true))))), -119f))), 1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(-1433f, -17157i, -466f, Struct_3(vec2<u32>(arg_0.x, arg_0.x), vec2<i32>(-10010i, u_input.c.x)), Struct_1(vec2<bool>(true, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f) + _wgslsmith_f_op_f32(1045f - 358f))))), Struct_3(u_input.a, max(vec2<i32>(1i, 1i), u_input.c.zw)), Struct_1(vec2<bool>(true, true)));
    let var_1 = Struct_2(var_0.e, !vec3<bool>(all(vec4<bool>(var_0.e.a.x, var_0.e.a.x, var_0.e.a.x, var_0.e.a.x)), !(!var_0.e.a.x), !(var_0.d.a.x <= 4294967295u)), Struct_1(!select(!vec2<bool>(var_0.e.a.x, var_0.e.a.x), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, var_0.e.a.x), var_0.e.a))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), -1046f);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.a)))));
    let var_3 = _wgslsmith_add_u32(arg_0.x, _wgslsmith_clamp_u32(abs(var_0.d.a.x ^ u_input.a.x), var_0.d.a.x, 47314u) | ~_wgslsmith_div_u32(1518u, arg_0.x));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-729f, 580f), _wgslsmith_f_op_f32(floor(1617f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2188f - -2410f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-178f)), -1146f), 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(397f, -2679f, 1580f, 1112f), vec4<f32>(1112f, 392f, -320f, 1338f))) + vec4<f32>(-1762f, -255f, -249f, -371f)) * vec4<f32>(-199f, -1278f, 1092f, _wgslsmith_f_op_f32(trunc(491f))))));
    var var_1 = Struct_3(vec2<u32>(~u_input.a.x, 0u), min(vec2<i32>(37438i, u_input.c.x), select(u_input.c.xw, vec2<i32>(u_input.c.x, u_input.c.x), any(select(vec4<bool>(true, arg_0.c.a.x, arg_0.b.x, arg_0.c.a.x), vec4<bool>(true, false, false, false), true)))));
    let var_2 = reverseBits(_wgslsmith_sub_i32(-2147483647i, min(~1113i, 206i)) & u_input.c.x);
    let var_3 = vec4<bool>(~var_1.b.x <= ~var_2, true, arg_0.a.a.x, arg_0.c.a.x);
    var var_4 = var_3.zw;
    return func_2(vec3<u32>(firstTrailingBit(u_input.b.x), firstTrailingBit(u_input.a.x), 16512u));
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -207f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-881f, 1544f)) + -245f))));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(select(u_input.c.x, u_input.c.x, arg_0.b.x)), _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -42037i)), ~vec2<i32>(-11173i, u_input.c.x)));
    var_1 = _wgslsmith_mod_i32(u_input.c.x, u_input.c.x);
    let var_2 = 1573f;
    var_1 = -1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-769f)))))));
}

fn func_1() -> i32 {
    let var_0 = Struct_3(~_wgslsmith_add_vec2_u32(vec2<u32>(32755u, ~57364u), ~(u_input.a ^ vec2<u32>(4294967295u, u_input.b.x))), -u_input.c.xz >> (u_input.a % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(func_2(u_input.b), Struct_2(Struct_1(func_2(vec3<u32>(var_0.a.x, 4294967295u, 52416u)).b.zy), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), Struct_1(vec2<bool>(false, false))))));
    let var_2 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~(~(~u_input.b.zz)), u_input.b.zy), u_input.b.x, 4294967295u);
    var var_3 = var_0;
    var var_4 = Struct_3(var_0.a, ~var_0.b);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~u_input.b.x << (~u_input.b.x % 32u), ~u_input.a.x, u_input.a.x, ~u_input.b.x) ^ countOneBits(vec4<u32>(~(~0u), u_input.a.x, _wgslsmith_add_u32(1u, u_input.a.x), 0u >> (~u_input.a.x % 32u)));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.c.xyz, u_input.c.ywx) ^ -vec3<i32>(u_input.c.x, u_input.c.x, 0i), -vec3<i32>(-60214i, select(-2147483647i, -2147483647i, false), -25484i | u_input.c.x), _wgslsmith_add_vec3_i32(countOneBits(max(vec3<i32>(-26829i, u_input.c.x, u_input.c.x), vec3<i32>(-42142i, 1i, -1i))), vec3<i32>(u_input.c.x, reverseBits(38974i), -u_input.c.x))), min(-u_input.c.zyw, u_input.c.wxy), vec3<i32>(func_1(), 1i, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, u_input.c.x), -6294i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-918f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-789f, _wgslsmith_div_f32(2452f, 534f))), -485f)))));
}

