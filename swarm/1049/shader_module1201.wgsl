struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29834u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = 26358u;
    var var_0 = u_input.e.x;
    var var_1 = -2147483647i;
    var_1 = 129i;
    return ~(~(~(~vec4<u32>(u_input.a.x, 43837u, arg_0, arg_0))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>((5731u | arg_1) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(60164u, 1u, 90725u), vec3<u32>(u_input.a.x, u_input.a.x, arg_1)), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a), ~113609u), ~vec4<u32>(25030u, ~0u, 4294967295u, ~arg_1)), ~select(~vec4<u32>(u_input.a.x, arg_1, 4294967295u, 0u) << (vec4<u32>(u_input.a.x, 87044u, arg_1, 1u) % vec4<u32>(32u)), func_3(~4294967295u), any(vec2<bool>(true, true))));
    var var_1 = !select(!vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), true));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1387f, arg_0) - _wgslsmith_div_f32(arg_0, arg_0))))), arg_0);
    var_1 = vec3<bool>(1i >= -(~_wgslsmith_div_i32(u_input.d, u_input.b)), all(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), var_1.x)), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(false, false, var_1.x, true), true), select(vec4<bool>(var_1.x, false, false, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, true, false, var_1.x)), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x))))), false);
    return _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, arg_1, 40329u), vec4<u32>(24041u, 46409u, u_input.a.x, var_0.x))), arg_1, 19368u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(0u, arg_1))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(72469u, 0u, 13945u, u_input.a.x), abs(vec4<u32>(arg_1, arg_1, var_0.x, arg_1)))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1), vec2<u32>(6722u, 10319u)), arg_1 | 4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_0.x, 50764u, 0u), ~vec4<u32>(16999u, arg_1, var_0.x, 21669u), vec4<u32>(22421u, 40224u, arg_1, 0u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, arg_1, u_input.a.x), vec4<u32>(7916u, u_input.a.x, arg_1, 1u)) >> (~min(vec4<u32>(var_0.x, 1u, 0u, arg_1), vec4<u32>(arg_1, 4294967295u, 1u, 4294967295u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_4 {
    global0 = firstLeadingBit(~arg_2.a.x) ^ 27191u;
    global0 = u_input.a.x;
    global0 = ~16674u;
    global0 = abs(arg_2.a.x >> (~reverseBits(42764u) % 32u));
    let var_0 = Struct_5(~func_2(-530f, arg_2.a.x));
    return Struct_4(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c) ^ ~vec4<i32>(arg_3.b, u_input.b, -17426i, u_input.e.x), min(vec4<i32>(arg_3.d, abs(0i), reverseBits(2147483647i), ~0i), u_input.c)), reverseBits(min(max(-vec2<i32>(-2147483647i, u_input.b), ~u_input.c.zw), u_input.c.ww << (arg_2.a.yw % vec2<u32>(32u)))), any(vec2<bool>(!(1u < arg_2.a.x), var_0.a.x < _wgslsmith_dot_vec2_u32(var_0.a.yw, arg_2.a.xx))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(102f - arg_1.a.x);
    let var_1 = arg_1;
    global0 = 45450u;
    let var_2 = u_input.a.x;
    let var_3 = var_1;
    return select(vec4<bool>(all(select(!vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), !vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c))), arg_0.c, ~35787i < min(1i, arg_0.a), arg_0.c), select(select(vec4<bool>(arg_0.c, true, func_1(arg_1, vec4<f32>(-319f, var_3.a.x, arg_1.a.x, 672f), Struct_5(vec4<u32>(var_2, 4057u, 11619u, 69786u)), Struct_3(vec3<u32>(0u, var_2, 103484u), 2147483647i, arg_0.c, 2147483647i, vec2<u32>(49682u, u_input.a.x))).c, select(true, false, arg_0.c)), select(!vec4<bool>(true, arg_0.c, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), true)), arg_0.c || true), select(vec4<bool>(true, false, true, all(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false))), vec4<bool>(all(vec2<bool>(arg_0.c, arg_0.c)), arg_0.c != false, arg_0.c, all(vec2<bool>(arg_0.c, arg_0.c))), true), any(vec2<bool>(!arg_0.c, arg_0.c))), vec4<bool>(!(!(!arg_0.c)), any(select(vec4<bool>(true, true, arg_0.c, arg_0.c), !vec4<bool>(arg_0.c, true, false, false), arg_0.c)), !(!(arg_0.c == false)), arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(~(~select(vec3<u32>(1u, 48298u, 78297u), vec3<u32>(0u, 30796u, u_input.a.x), vec3<bool>(false, false, true))), ~(~firstTrailingBit(vec3<u32>(u_input.a.x, 47601u, 144870u)))), _wgslsmith_mult_i32(-1i, 9224i ^ _wgslsmith_sub_i32(u_input.e.x, -1i)), false || any(func_4(func_1(Struct_1(vec3<f32>(1306f, -192f, -379f)), vec4<f32>(1924f, 1372f, -1256f, -1463f), Struct_5(vec4<u32>(u_input.a.x, 23263u, u_input.a.x, u_input.a.x)), Struct_3(vec3<u32>(62119u, 4294967295u, 0u), u_input.b, true, 0i, u_input.a)), Struct_1(vec3<f32>(1178f, 520f, 2483f)))), ~_wgslsmith_clamp_i32(u_input.c.x, u_input.b, 2147483647i), vec2<u32>(u_input.a.x, abs(_wgslsmith_add_u32(u_input.a.x, 60602u))) & (abs(select(u_input.a, u_input.a, false)) >> ((u_input.a | u_input.a) % vec2<u32>(32u))));
    global0 = u_input.a.x;
    global0 = 4294967295u;
    global0 = u_input.a.x;
    global0 = _wgslsmith_add_u32(func_3(_wgslsmith_clamp_u32(~countOneBits(var_0.a.x), ~var_0.a.x | (0u & var_0.e.x), reverseBits(1u))).x, ~var_0.a.x);
    var var_1 = 0i;
    let var_2 = _wgslsmith_mult_vec3_i32(u_input.c.xyy, u_input.c.wwy);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(902f, -1746f, var_0.c)), _wgslsmith_f_op_f32(select(-1615f, -1985f, var_0.c)))), 1574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(163f * 691f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2 ^ (vec3<i32>(-1i) * -(~u_input.e)), countOneBits(countOneBits(_wgslsmith_sub_vec2_i32(u_input.e.yz, select(u_input.c.yz, vec2<i32>(30128i, u_input.c.x), false)))), -2147483647i);
}

