struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2147483647i, 4294967295u, vec2<i32>(i32(-2147483648), 49755i)), Struct_1(-1i, 0u, vec2<i32>(2147483647i, 0i)), Struct_1(0i, 4294967295u, vec2<i32>(-23202i, -1i)), Struct_1(0i, 70833u, vec2<i32>(1i, 0i)), Struct_1(-36778i, 33406u, vec2<i32>(-1i, -35268i)), Struct_1(2147483647i, 4294967295u, vec2<i32>(2147483647i, 1i)), Struct_1(20442i, 7170u, vec2<i32>(6587i, 2147483647i)), Struct_1(3798i, 42827u, vec2<i32>(-16487i, 0i)), Struct_1(2147483647i, 42587u, vec2<i32>(-24306i, -1i)), Struct_1(2147483647i, 1u, vec2<i32>(35679i, 20967i)), Struct_1(13691i, 31806u, vec2<i32>(6692i, -1i)), Struct_1(-40592i, 47993u, vec2<i32>(i32(-2147483648), -15862i)), Struct_1(1244i, 26093u, vec2<i32>(-6897i, 1i)), Struct_1(-36771i, 4294967295u, vec2<i32>(i32(-2147483648), -548i)), Struct_1(-1i, 44170u, vec2<i32>(-1i, 0i)), Struct_1(-1i, 29225u, vec2<i32>(0i, 1i)), Struct_1(-27685i, 1u, vec2<i32>(-25425i, 0i)), Struct_1(47117i, 6045u, vec2<i32>(-36521i, i32(-2147483648))), Struct_1(-1i, 1u, vec2<i32>(-1i, 250i)));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(5066i, 38050u, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(1725i, 1u, vec2<i32>(1i, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = ~(-u_input.d.xz ^ firstLeadingBit(~(vec2<i32>(u_input.d.x, 37393i) ^ vec2<i32>(-20195i, -2147483647i))));
    var var_1 = select(vec4<i32>(max(~u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(4930i, var_0.x, var_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-790i, 0i, 1i), select(vec3<i32>(-35351i, -37731i, var_0.x), u_input.d, vec3<bool>(false, false, false))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, var_0.x, -1i, -2147483647i), vec4<i32>(14678i, var_0.x, 31167i, u_input.d.x), vec4<bool>(false, false, false, true)), min(vec4<i32>(-2147483647i, var_0.x, -1i, var_0.x), vec4<i32>(18438i, 0i, -12525i, -30236i))), _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(1394i, -36642i))) ^ (vec4<i32>(-1i) * -abs(vec4<i32>(1066i, var_0.x, u_input.d.x, 1i))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(min(u_input.d, u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.a), vec3<i32>(var_0.x, 1i, 7663i))), _wgslsmith_mod_i32(u_input.d.x, 1i) | var_0.x, firstLeadingBit(49050i) >> (u_input.b % 32u), -5999i), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    global1 = array<Struct_1, 2>();
    let var_3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(0u, 33u))) << (_wgslsmith_dot_vec3_u32((abs(vec3<u32>(4294967295u, 88338u, u_input.b)) ^ abs(vec3<u32>(u_input.b, 0u, 49182u))) | firstTrailingBit(max(vec3<u32>(553u, u_input.b, 0u), vec3<u32>(1u, u_input.b, 4294967295u))), vec3<u32>(4294967295u, _wgslsmith_add_u32(select(u_input.b, u_input.b, true), ~76061u), _wgslsmith_clamp_u32(26331u, _wgslsmith_dot_vec3_u32(vec3<u32>(27899u, u_input.b, u_input.b), vec3<u32>(1u, 9902u, 19644u)), u_input.b))) % 32u), 2u)];
    return firstTrailingBit(~u_input.b);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(9516i, _wgslsmith_add_u32(1403u, func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-465f, -316f, -2429f), vec3<f32>(-1502f, 1000f, 1219f))))), ~(-max(u_input.d.zy, vec2<i32>(2147483647i, u_input.d.x)) >> (~abs(vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    global1 = array<Struct_1, 2>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), 661f);
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(234f, var_1.x)), _wgslsmith_f_op_f32(select(410f, var_1.x, arg_0 || arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1182f - var_1.x), _wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_1.x, var_1.x), vec3<f32>(var_1.x, 1641f, -191f)), vec3<f32>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, arg_0)))))))));
    return vec2<bool>(select(((arg_0 & arg_0) && arg_0) || (u_input.b > 37089u), !select(arg_0, false, select(true, arg_0, arg_0)), all(vec3<bool>(!arg_0, any(vec4<bool>(arg_0, false, arg_0, arg_0)), 1033f >= var_1.x))), ~4294967295u != abs(_wgslsmith_div_u32(u_input.b, 15844u)));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(15737u, 2u)];
    var var_1 = ~u_input.b;
    var_1 = abs(var_0.b) ^ var_0.b;
    var_1 = 4644u;
    return Struct_1(-_wgslsmith_mod_i32(1i << (u_input.b % 32u), firstTrailingBit(0i) & (var_0.a & var_0.a)), firstTrailingBit(74416u), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, 2147483647i), abs(vec2<i32>(u_input.c, 1i))) | (countOneBits(u_input.d.zy ^ var_0.c) >> (((vec2<u32>(65855u, 4294967295u) ^ vec2<u32>(u_input.b, var_0.b)) | max(vec2<u32>(44703u, 0u), vec2<u32>(1u, u_input.b))) % vec2<u32>(32u))));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_1, 19>();
    var var_0 = ~(~vec2<u32>(u_input.b, u_input.b >> (u_input.b % 32u)));
    var_0 = ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(65338u, 0u)), vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(33346u, var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 56487u), vec2<u32>(0u, var_0.x)), select(vec2<u32>(36543u, var_0.x), vec2<u32>(var_0.x, u_input.b), true))));
    let var_1 = 51735u;
    var var_2 = func_4(func_2(true || !all(vec3<bool>(false, false, false))));
    return vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(40050u, 4294967295u))), ~vec2<u32>(0u, countOneBits(u_input.b))), u_input.b, u_input.b);
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = u_input.a ^ -1i;
    global1 = array<Struct_1, 2>();
    let var_1 = vec4<i32>(5817i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-16024i, u_input.d.x) ^ u_input.a, ~u_input.c, 1324i, _wgslsmith_sub_i32(1i, u_input.c | u_input.a)), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.c, u_input.d.x, u_input.c, 73679i)), vec4<i32>(-u_input.d.x, -u_input.c, ~u_input.d.x, u_input.c))), u_input.c);
    var var_2 = abs(_wgslsmith_dot_vec2_i32(-abs(~vec2<i32>(var_1.x, var_1.x)), vec2<i32>(var_1.x, _wgslsmith_div_i32(countOneBits(var_1.x), _wgslsmith_sub_i32(-2147483647i, u_input.d.x)))));
    let var_3 = func_4(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, true)), func_2(true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    return min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_1.x, abs(select(0i, u_input.c, false)), max(1i >> (u_input.b % 32u), select(u_input.a, -1i, true))), -var_1 >> (arg_1 % vec4<u32>(32u))), select(~vec4<i32>(firstLeadingBit(40142i), ~(-2147483647i), 39591i << (u_input.b % 32u), var_3.a), countOneBits(vec4<i32>(~var_1.x, -2147483647i, _wgslsmith_mod_i32(-42961i, var_3.c.x), -21830i)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -114026i) >> (countOneBits(vec4<u32>(1u, u_input.b, 17823u, 1u)) % vec4<u32>(32u)), reverseBits(~vec4<i32>(u_input.d.x, 0i, u_input.c, 14927i)), func_5(_wgslsmith_f_op_f32(select(295f, 1358f, true)), func_1())), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d.x, u_input.c, -13562i, u_input.a), vec4<i32>(u_input.c, u_input.a, -10361i, u_input.c), true), vec4<i32>(u_input.a, u_input.d.x, u_input.a, -27266i)), -vec4<i32>(u_input.c, -34368i, 2147483647i, u_input.a) ^ (vec4<i32>(u_input.a, -2147483647i, u_input.c, 1i) >> (vec4<u32>(0u, u_input.b, 32826u, 1u) % vec4<u32>(32u))))), 4294967295u, u_input.d.zy ^ vec2<i32>(12335i, ~u_input.d.x));
    var var_1 = select(-2147483647i, var_0.c.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_u32(u_input.b, select(77299u, u_input.b, true)), ~68247u, false), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.d), -abs(vec3<i32>(-10255i, var_0.c.x, -2147483647i))), vec3<i32>(~(var_0.c.x & 19418i), _wgslsmith_mult_i32(-1i, u_input.c | u_input.a), abs(min(u_input.a, -1i)))), 31536u, -((-vec4<i32>(var_0.a, 19008i, 38453i, -36850i) >> (abs(vec4<u32>(5945u, u_input.b, 1u, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b, ~u_input.b, firstLeadingBit(var_0.b), 26306u) % vec4<u32>(32u))), -((_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_0.a, 22337i), vec4<i32>(0i, var_0.a, u_input.d.x, var_0.a), vec4<i32>(var_0.c.x, -2147483647i, var_0.a, u_input.c)) << (_wgslsmith_div_vec4_u32(vec4<u32>(27958u, var_0.b, var_0.b, 42153u), vec4<u32>(u_input.b, 4294967295u, var_0.b, 19242u)) % vec4<u32>(32u))) >> (select(~vec4<u32>(u_input.b, var_0.b, 8143u, 18531u), abs(vec4<u32>(u_input.b, var_0.b, 4294967295u, 0u)), 4294967295u < var_0.b) % vec4<u32>(32u))));
}

