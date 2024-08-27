struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_0 = vec4<bool>(var_0.x, true, !(any(vec3<bool>(true, var_0.x, true)) & var_0.x), !(!any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))));
    var var_1 = var_0.x;
    var var_2 = all(select(var_0.yyz, vec3<bool>(any(vec4<bool>(false, true, true, false)), !var_0.x, var_0.x), true));
    var var_3 = Struct_2(-1899f, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~18935u, _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18068u, arg_0, 1u), ~vec4<u32>(32873u, 4294967295u, u_input.b, 59527u))), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 18706u, 4294967295u, arg_0), select(vec4<u32>(arg_0, 1239u, 1u, 31791u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<bool>(true, var_0.x, false, var_0.x))), ~1u, 0u)), vec3<u32>(firstLeadingBit(u_input.b), ~arg_0, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(424f, -1990f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(824f, -810f)) - 1000f) + _wgslsmith_f_op_f32(863f * 2045f)), Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(-24402i, u_input.a, 0i), vec3<i32>(~u_input.a, -2147483647i, 2147483647i)), _wgslsmith_add_i32(u_input.a << (arg_0 % 32u), -(~(-2147483647i))), countOneBits(~vec4<u32>(0u, u_input.b, u_input.b, arg_0))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a * 931f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, 986f, -1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1582f, -239f, -1000f), vec3<f32>(2627f, 1366f, -1208f))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.b)), -1610f, -272f)))));
    let var_1 = _wgslsmith_add_u32(abs(57676u), ~u_input.b);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), ~(~32279u), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 24469u, var_1, 1u), vec4<u32>(82888u, u_input.b, 10769u, 4294967295u)) << (4294967295u % 32u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, 9466u, u_input.b)), 4294967295u), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, var_1), vec3<u32>(1661u, var_1, 43479u)), vec3<u32>(var_1, ~29872u, ~var_1), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), true), !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_1(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 6716i, 42097i))), -vec3<i32>(-37169i, u_input.a, -2146i)), vec4<u32>(firstTrailingBit(var_1 ^ 55065u), ~var_1 >> (~0u % 32u), 12176u, 4608u)));
    var var_3 = vec4<bool>(select(var_2.d, true, !(!(!var_2.d))), all(vec4<bool>(var_2.d, false, select(false, true, var_2.d) && all(vec4<bool>(true, var_2.d, var_2.d, false)), var_2.c.x > abs(1u))), false, !var_2.d);
    let var_4 = ~(-(-(vec4<i32>(var_2.e.a, 53401i, var_2.e.b, -45632i) ^ vec4<i32>(2147483647i, var_2.e.a, var_2.e.a, var_2.e.b)) >> (vec4<u32>(32758u, abs(4294967295u), ~65583u, var_2.e.c.x) % vec4<u32>(32u))));
    return Struct_1(0i, -1i, var_2.e.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 439f, -1729f, arg_0.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, arg_0.a, -474f, arg_1.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, arg_0.a, -1025f, arg_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 159f, arg_0.a, -449f)))))));
    let var_1 = var_0;
    var var_2 = reverseBits(1u);
    var_2 = max(1u, 0u);
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(func_3(~1u));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = min(~_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, arg_0, 1u), vec4<u32>(arg_0, u_input.b, u_input.b, 46190u)), abs(~vec4<u32>(arg_0, 0u, 4294967295u, arg_0))), ~vec4<u32>(abs(45399u), 0u, _wgslsmith_mult_u32(64744u, _wgslsmith_mult_u32(u_input.b, 8720u)), max(~10930u, arg_0 >> (u_input.b % 32u))));
    let var_1 = Struct_1(abs(u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a), vec4<u32>(4294967295u, _wgslsmith_sub_u32(max(~0u, arg_0), 30395u), 4294967295u, arg_0));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-898f)))), arg_0, var_0.yyy, true, func_2()), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 82237u), var_0.yx) << (_wgslsmith_mod_u32(var_0.x, 8978u) % 32u), ~(var_1.c.yyw ^ vec3<u32>(17289u, u_input.b, 113323u)), !all(vec2<bool>(true, false)), Struct_1(reverseBits(u_input.a), ~u_input.a, var_1.c)), var_1)), u_input.b, reverseBits(~(~vec3<u32>(var_0.x, var_1.c.x, var_0.x) >> (min(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(var_1.c.x, 1u, 20887u)) % vec3<u32>(32u)))), false, var_1);
    var_0 = ~var_1.c;
    let var_3 = Struct_1(reverseBits(countOneBits(select(var_2.e.b, var_2.e.a, false)) & max(2147483647i, ~(-1i))), var_1.b, func_2().c);
    return abs(_wgslsmith_div_vec2_u32(var_3.c.xx, var_2.e.c.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(min(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), false)), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 26430u)), ~vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12084u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), func_1(u_input.b))), 0u));
    var var_1 = ~abs(firstTrailingBit(~vec4<u32>(4294967295u, var_0, 0u, 4294967295u)));
    var var_2 = _wgslsmith_mod_i32(u_input.a, u_input.a) | u_input.a;
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~45474i, 18137i), u_input.a, -15859i), _wgslsmith_sub_vec3_i32(~vec3<i32>(49386i, -9503i, u_input.a) ^ _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, 1i, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 9077i, 1i), vec3<i32>(u_input.a, -2147483647i, u_input.a))), -firstTrailingBit(vec3<i32>(1i, u_input.a, -1i))));
    var_1 = (vec4<u32>(~_wgslsmith_clamp_u32(12037u, var_0, 4294967295u), _wgslsmith_mult_u32(var_1.x, 0u << (0u % 32u)), func_2().c.x ^ var_1.x, 1u) >> (~vec4<u32>(1u, max(4294967295u, var_1.x), ~0u, func_2().c.x) % vec4<u32>(32u))) << (vec4<u32>(var_1.x, _wgslsmith_div_u32(~(u_input.b & 50408u), u_input.b), max(func_1(min(var_1.x, 13726u)).x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8666u, var_0, 0u), vec4<u32>(1u, u_input.b, var_1.x, 4294967295u)), select(0u, u_input.b, false))), _wgslsmith_div_u32(71634u, ~reverseBits(100475u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(max(vec3<u32>(_wgslsmith_div_u32(60966u, var_0), ~9966u, var_1.x << (u_input.b % 32u)), _wgslsmith_add_vec3_u32(var_1.xxw, vec3<u32>(var_0, 11676u, var_1.x))), ~vec3<u32>(~u_input.b, 1u | var_0, ~82471u)), ~_wgslsmith_mod_u32(firstTrailingBit(u_input.b & 4294967295u), abs(_wgslsmith_div_u32(4294967295u, u_input.b))), func_2().b, _wgslsmith_mod_i32(~1i, min(-reverseBits(62654i), u_input.a)));
}

