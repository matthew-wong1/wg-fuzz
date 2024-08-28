struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_1(~(~(u_input.a | u_input.a) << (~firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), select(vec3<bool>(true, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(-39200i, 0i)) != (i32(-1i) * -9481i), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec3<bool>(true, true, 1i < _wgslsmith_mult_i32(u_input.c, u_input.b.x)), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(~vec4<i32>(1i, _wgslsmith_mod_i32(-var_0.a.x, -20586i), _wgslsmith_dot_vec2_i32(u_input.b.yz, -var_0.a.yz), -u_input.c), var_0.b);
    var var_2 = Struct_1(var_1.a, !var_1.b);
    let var_3 = 1100f;
    let var_4 = Struct_2(vec3<f32>(arg_0, 1f, _wgslsmith_div_f32(-1418f, -519f)), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(34560u, 1u, 4294967295u, 1u)), vec4<u32>(~1u, ~76019u, 6705u, _wgslsmith_sub_u32(1u, 0u)) & (select(vec4<u32>(0u, 50894u, 4294967295u, 1u), vec4<u32>(78096u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, var_1.b.x, true, false)) << (firstLeadingBit(vec4<u32>(1u, 16377u, 0u, 1u)) % vec4<u32>(32u)))), var_0);
    return vec4<i32>(_wgslsmith_mult_i32(0i, 1i), ~_wgslsmith_div_i32(var_1.a.x, -4554i) << (~15547u % 32u), max(firstLeadingBit(min(_wgslsmith_sub_i32(var_0.a.x, var_4.c.a.x), ~var_4.c.a.x)), var_2.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i >> (0u % 32u), 13786i), ~var_4.c.a.wz), vec2<i32>(~_wgslsmith_mod_i32(u_input.b.x, var_0.a.x), -2147483647i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(31068i, arg_1.a.x);
    let var_1 = arg_0.wx;
    let var_2 = _wgslsmith_clamp_vec4_i32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(686f))))), ~vec4<i32>(-_wgslsmith_clamp_i32(1i, 29133i, 14752i), ~arg_1.a.x & _wgslsmith_mod_i32(55426i, var_0.x), -abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(57568i, 0i), u_input.b.zy)), vec4<i32>(firstLeadingBit(u_input.b.x), u_input.a.x, 3869i, -2147483647i));
    var var_3 = arg_1;
    var_3 = Struct_1(vec4<i32>(-11269i, ~(-select(var_0.x, arg_1.a.x, true)), var_3.a.x, arg_1.a.x & (_wgslsmith_mult_i32(arg_1.a.x, 30420i) ^ _wgslsmith_mod_i32(arg_1.a.x, -2147483647i))), arg_1.b);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), 334f)), ~max(4294967295u, ~(var_1.x >> (7847u % 32u))), Struct_1(reverseBits(vec4<i32>(-33347i, var_0.x, arg_1.a.x, 40743i)) >> (vec4<u32>(~28454u, arg_0.x & 0u, 1u, ~0u) % vec4<u32>(32u)), !(!select(arg_1.b, vec3<bool>(true, arg_1.b.x, var_3.b.x), var_3.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(arg_0.c.a.x, arg_0.c.a.x, u_input.c, arg_0.c.a.x)), vec4<i32>(1i, -5474i, arg_0.c.a.x, u_input.a.x) & vec4<i32>(arg_0.c.a.x, u_input.c, arg_0.c.a.x, 2147483647i)), -_wgslsmith_mod_vec4_i32(u_input.a, arg_0.c.a));
    var var_2 = u_input.b;
    let var_3 = all(vec4<bool>(!arg_2.x, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(292f)))) < -2102f, any(select(vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_0.c.b.x, arg_2.x, true), select(vec4<bool>(false, arg_2.x, true, false), vec4<bool>(arg_0.c.b.x, true, arg_2.x, arg_0.c.b.x), arg_2.x)))));
    let var_4 = u_input.c;
    return ~_wgslsmith_mod_u32(arg_0.b, (arg_0.b ^ arg_1.x) << (~_wgslsmith_sub_u32(24860u, 14903u) % 32u));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_u32(~func_4(func_2(vec4<u32>(52192u, 1u, 0u, 497u), Struct_1(u_input.a, vec3<bool>(false, false, false))), vec2<u32>(23867u, 4294967295u), vec2<bool>(true, true)) & ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(3532u, 1u)), vec2<u32>(0u, 0u)), 12654u);
    let var_1 = func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(33308u, 20559u), _wgslsmith_add_u32(47480u, 67140u)), max(38433u, 22912u), 1u & func_2(vec4<u32>(53697u, 28301u, 1u, 4294967295u), Struct_1(vec4<i32>(10268i, u_input.b.x, 32116i, u_input.a.x), vec3<bool>(false, false, false))).b, _wgslsmith_mod_u32(~43252u, _wgslsmith_add_u32(14133u, 1u))), vec4<u32>(~(~1u), ~1442u, ~(~5257u), ~firstLeadingBit(53828u))), Struct_1(~_wgslsmith_sub_vec4_i32(func_2(vec4<u32>(4294967295u, 46361u, 7775u, 34167u), Struct_1(vec4<i32>(-2147483647i, 50848i, u_input.a.x, u_input.b.x), vec3<bool>(false, false, false))).c.a, vec4<i32>(u_input.a.x, u_input.b.x, -44641i, 2147483647i)), vec3<bool>(select(true, true, true), true, true))).c;
    var var_2 = Struct_1(vec4<i32>(0i, -u_input.b.x, 2147483647i, ~var_1.a.x) | ~var_1.a, vec3<bool>(all(func_2(vec4<u32>(1u, 1u, 1u, 1u), var_1).c.b.zx), true, var_1.b.x));
    var_2 = var_1;
    let var_3 = firstLeadingBit(-(~(var_2.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(20815u, 0u), vec2<u32>(4294967295u, 59795u)) % 32u))));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 51674u), _wgslsmith_dot_vec3_u32(vec3<u32>(99731u, 4294967295u, 30135u), vec3<u32>(4294967295u, 25889u, 10998u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 46443u), vec2<u32>(1u, 4294967295u))), _wgslsmith_add_u32(~4294967295u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(1u, 0u), 27438u))), abs(vec2<u32>(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(-(u_input.a.ww & vec2<i32>(u_input.a.x, 56797i))));
    var_0 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(var_0.x << (35035u % 32u)) ^ -2147483647i, -2147483647i), _wgslsmith_mult_i32(u_input.b.x, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, 2147483647i))));
    var_0 = -(u_input.a.zy >> ((_wgslsmith_div_vec2_u32(func_1(), ~vec2<u32>(4294967295u, 1u)) & vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_1 = (_wgslsmith_f_op_f32(-371f - -1168f) > func_2(~reverseBits(vec4<u32>(35217u, 10466u, 38429u, 0u)), func_2(vec4<u32>(4294967295u, 67971u, 115550u, 19289u), Struct_1(vec4<i32>(1i, 22578i, var_0.x, 1i), vec3<bool>(false, false, false))).c).a.x) | (((func_1().x << (1u % 32u)) >= _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(10270u, 29646u))) | any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), all(vec3<bool>(true, true, true)))));
    var var_2 = ~vec3<u32>(4294967295u, min(20598u, 4294967295u), func_4(func_2(vec4<u32>(1u, 25573u, 4294967295u, 97065u), Struct_1(vec4<i32>(-2147483647i, -2147483647i, 8686i, 12564i), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(49400u, 4294967295u), abs(vec2<u32>(0u, 26605u))), func_2(~vec4<u32>(4294967295u, 95279u, 4294967295u, 89445u), Struct_1(vec4<i32>(-29036i, 0i, u_input.c, 8061i), vec3<bool>(false, false, true))).c.b.xz));
    var_2 = vec3<u32>(_wgslsmith_mult_u32(func_2(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(4294967295u, 0u, 1u, var_2.x))), func_2(~vec4<u32>(1u, var_2.x, var_2.x, var_2.x), Struct_1(vec4<i32>(u_input.b.x, var_0.x, 6885i, 1i), vec3<bool>(false, true, true))).c).b, firstLeadingBit(var_2.x)), abs(var_2.x), var_2.x);
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_add_i32(52176i, _wgslsmith_clamp_i32(~var_0.x, firstTrailingBit(var_0.x), -2147483647i)), abs(-_wgslsmith_sub_i32(313i, -1i)), _wgslsmith_div_i32(1i & firstLeadingBit(var_0.x), select(var_0.x, var_0.x & u_input.b.x, true)), var_0.x), !select(vec3<bool>(true, true, var_0.x != -55892i), vec3<bool>(all(vec3<bool>(true, true, true)), true, true), true));
    var_1 = var_3.b.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), -1004f) * 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_0.x), var_3.a.x, ~vec2<u32>(var_2.x & var_2.x, _wgslsmith_mult_u32(~4294967295u, 4294967295u)), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(var_2.x, 4294967295u)), 32317u, ~(_wgslsmith_mod_u32(var_2.x, var_2.x) & func_2(vec4<u32>(4294967295u, 1u, var_2.x, 80888u), Struct_1(vec4<i32>(var_3.a.x, var_0.x, 29406i, 5822i), var_3.b)).b)));
}

