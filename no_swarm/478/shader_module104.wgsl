struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = min(_wgslsmith_div_i32(11507i ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(26064i, 12249i, 28461i, arg_0.c.c.x), vec4<i32>(2147483647i, u_input.b, u_input.b, 62654i)) | _wgslsmith_mult_i32(arg_0.c.c.x, arg_0.c.a)), arg_0.c.a), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(34717i, _wgslsmith_clamp_i32(arg_0.c.c.x, arg_0.c.c.x, arg_0.c.a)), 0i), -(vec2<i32>(-2147483647i, arg_0.c.c.x) ^ arg_0.c.c)));
    var_0 = arg_0.c.c.x;
    let var_1 = arg_0.d;
    let var_2 = countOneBits(arg_0.c.c);
    let var_3 = _wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -590f)))) <= arg_0.b;
    return arg_0.c.c.x;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(func_3(Struct_3(vec3<bool>(arg_0.x, arg_0.x, true), 1000f, Struct_1(u_input.b, vec3<f32>(-807f, -815f, -110f), vec2<i32>(u_input.b, -1i)), arg_0.x)), u_input.b, _wgslsmith_mod_i32(0i, u_input.b)) & vec3<i32>(-u_input.b, select(u_input.b, u_input.b, false), _wgslsmith_sub_i32(u_input.b, 1i)), reverseBits(reverseBits(vec3<i32>(-27830i, -26527i, u_input.b))) ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 0i, u_input.b), max(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(-1i, u_input.b, -2147483647i)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-581f, 1222f)) * _wgslsmith_f_op_f32(f32(-1f) * -207f)), -1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) - _wgslsmith_f_op_f32(f32(-1f) * -1693f))), vec3<f32>(_wgslsmith_div_f32(-171f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(753f))), _wgslsmith_f_op_f32(-428f + 1f)), vec3<bool>(!select(false, true, false), any(vec2<bool>(arg_0.x, arg_0.x)), u_input.b < 41378i))), firstLeadingBit(firstTrailingBit(vec2<i32>(-48163i, u_input.b) ^ vec2<i32>(u_input.b, 1i))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 1i) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), ~vec2<i32>(-9480i, 35246i), firstLeadingBit(-vec2<i32>(-31675i, -60428i))));
    var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1507f), var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.b)) - var_0.b)))), min(~max(vec2<i32>(-64559i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(7235i, -24399i), var_0.c)), vec2<i32>(35052i, max(1i, var_0.c.x & u_input.b))));
    return arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec3<bool>(arg_1.d, !(arg_1.b != _wgslsmith_f_op_f32(trunc(arg_0.b.x))) && func_2(vec2<bool>(arg_1.a.x, true)), arg_1.b >= arg_1.b);
    var var_1 = Struct_2(arg_0);
    let var_2 = arg_1.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-538f)))), _wgslsmith_f_op_f32(arg_0.b.x - 1519f)), var_1.a.b.x) - vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(sign(1668f))));
    var var_4 = var_1.a.b;
    return _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.c, u_input.a, 33370u)), vec3<u32>(16444u, u_input.a, 1u))), ~(~(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~u_input.c), ~u_input.c, 13792u, ~(~16833u)) << (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(9410u, u_input.c, u_input.c, u_input.c), ~vec4<u32>(u_input.a, 8743u, 13034u, 70829u), vec4<u32>(37061u, u_input.c, u_input.a, u_input.c))) % vec4<u32>(32u)), ~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(49041u, u_input.a, 0u, u_input.c), vec4<u32>(59206u, 12952u, 24860u, u_input.a)))), (~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) << (vec4<u32>(59751u, u_input.a, func_1(Struct_1(55460i, vec3<f32>(1907f, 2001f, 1215f), vec2<i32>(u_input.b, -51431i)), Struct_3(vec3<bool>(true, true, true), -1015f, Struct_1(0i, vec3<f32>(-2131f, 285f, -1000f), vec2<i32>(-2867i, u_input.b)), true), vec3<bool>(true, true, true)), u_input.a) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.c, _wgslsmith_mult_u32(10395u, u_input.c), min(0u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 131078u), vec3<u32>(12371u, u_input.a, 0u)))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 10443u, 45542u, 4294967295u), vec4<u32>(var_0.x, 1u, var_0.x, 73949u)), select(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<u32>(4294967295u, u_input.c, u_input.a, 1u), true), firstTrailingBit(vec4<u32>(83317u, var_0.x, var_0.x, 0u)))), firstLeadingBit(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.x, var_0.x), vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, 10600u, var_0.x, var_0.x)) >> ((vec4<u32>(u_input.c, u_input.c, 1u, u_input.c) ^ vec4<u32>(4294967295u, 30634u, u_input.a, var_0.x)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-754f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-291f * 1498f)))), -634f));
    var_0 = vec4<u32>(u_input.c, u_input.c, 59696u, ~1u);
    let var_2 = Struct_4(-2494i, 65197i, Struct_3(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), 152f, Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1616f, 2027f, -979f))), vec3<f32>(285f, -542f, -292f))), _wgslsmith_add_vec2_i32(~vec2<i32>(29249i, u_input.b), -vec2<i32>(1i, 9090i))), true));
    var var_3 = _wgslsmith_clamp_u32(~23346u, abs(abs(_wgslsmith_add_u32(reverseBits(0u), 1u))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c.b.xx, abs(vec3<i32>(var_2.c.c.a | var_2.a, firstLeadingBit(-2147483647i), 54505i) & (vec3<i32>(-1i) * -vec3<i32>(-1i, var_2.c.c.a, 2147483647i))));
}

