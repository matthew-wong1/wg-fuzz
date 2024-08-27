struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<u32>(76465u, 0u, 54320u, 1u), vec4<u32>(74122u, 0u, 1u, 4294967295u), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), 73856u, vec4<bool>(true, false, true, false)), vec4<u32>(4294967295u, 59735u, 4294967295u, 0u)), Struct_2(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 424u, 101531u, 0u), Struct_1(907u, vec2<u32>(13540u, 1u), 22125u, vec4<bool>(true, true, false, false)), vec4<u32>(1u, 13438u, 4294967295u, 19311u)), Struct_2(vec4<u32>(0u, 58997u, 1u, 25604u), vec4<u32>(14263u, 2616u, 23661u, 4294967295u), Struct_1(0u, vec2<u32>(28089u, 18761u), 61325u, vec4<bool>(false, true, false, false)), vec4<u32>(44194u, 4294967295u, 4128u, 1u)), Struct_2(vec4<u32>(77321u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 41323u, 25908u, 27356u), Struct_1(25538u, vec2<u32>(12917u, 1u), 1u, vec4<bool>(true, false, false, false)), vec4<u32>(4294967295u, 0u, 0u, 95906u)), Struct_2(vec4<u32>(64241u, 41963u, 36793u, 4294967295u), vec4<u32>(0u, 36947u, 4294967295u, 4294967295u), Struct_1(0u, vec2<u32>(4294967295u, 4294967295u), 0u, vec4<bool>(false, false, false, false)), vec4<u32>(0u, 80266u, 9542u, 1u)), Struct_2(vec4<u32>(124953u, 14943u, 0u, 63311u), vec4<u32>(54164u, 4294967295u, 0u, 0u), Struct_1(466u, vec2<u32>(60852u, 119835u), 65652u, vec4<bool>(false, false, false, false)), vec4<u32>(56230u, 4294967295u, 1u, 22697u)), Struct_2(vec4<u32>(1u, 1u, 9861u, 1u), vec4<u32>(137664u, 68117u, 63229u, 0u), Struct_1(1u, vec2<u32>(1u, 1u), 4294967295u, vec4<bool>(false, true, true, true)), vec4<u32>(44476u, 4294967295u, 4294967295u, 25523u)), Struct_2(vec4<u32>(1u, 4294967295u, 14482u, 4294967295u), vec4<u32>(9161u, 4294967295u, 1u, 0u), Struct_1(4294967295u, vec2<u32>(6252u, 64814u), 65359u, vec4<bool>(true, false, false, true)), vec4<u32>(0u, 33175u, 4294967295u, 0u)), Struct_2(vec4<u32>(1u, 4294967295u, 16775u, 0u), vec4<u32>(4294967295u, 14039u, 46870u, 1u), Struct_1(4294967295u, vec2<u32>(57705u, 35506u), 0u, vec4<bool>(true, false, true, false)), vec4<u32>(53745u, 1964u, 0u, 38682u)), Struct_2(vec4<u32>(36010u, 1u, 1u, 19358u), vec4<u32>(4294967295u, 112891u, 48521u, 72897u), Struct_1(67706u, vec2<u32>(3578u, 1u), 13851u, vec4<bool>(false, true, false, true)), vec4<u32>(44079u, 1u, 10054u, 1u)), Struct_2(vec4<u32>(1u, 50668u, 80047u, 17982u), vec4<u32>(63975u, 1u, 1u, 39496u), Struct_1(0u, vec2<u32>(1u, 4294967295u), 4294967295u, vec4<bool>(true, false, false, true)), vec4<u32>(71976u, 4294967295u, 0u, 19341u)), Struct_2(vec4<u32>(10816u, 1u, 4294967295u, 26734u), vec4<u32>(0u, 2744u, 16083u, 1u), Struct_1(9281u, vec2<u32>(11349u, 15113u), 4294967295u, vec4<bool>(false, false, false, true)), vec4<u32>(1u, 77315u, 17756u, 0u)));

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = ~(~min(min(select(vec4<u32>(1u, 4294967295u, 35569u, 1u), vec4<u32>(4824u, u_input.b, 1u, u_input.b), vec4<bool>(false, arg_0, arg_0, true)), vec4<u32>(u_input.b, 100606u, u_input.b, u_input.b)), ~firstLeadingBit(vec4<u32>(u_input.c, u_input.b, 1u, 65068u))));
    global0 = array<Struct_2, 12>();
    return Struct_1(~25680u, vec2<u32>(~var_0.x, min(~16502u, _wgslsmith_mult_u32(u_input.b, 69364u))) >> (firstLeadingBit(~(~vec2<u32>(u_input.b, u_input.c))) % vec2<u32>(32u)), 0u, !(!select(vec4<bool>(false, arg_0, true, false), vec4<bool>(true, true, true, true), true)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    global0 = array<Struct_2, 12>();
    return ~_wgslsmith_dot_vec4_u32(~min(_wgslsmith_add_vec4_u32(vec4<u32>(71976u, 4294967295u, arg_0.a, 15197u), vec4<u32>(u_input.c, 32291u, 4294967295u, 4294967295u)), vec4<u32>(107693u, 46670u, u_input.c, u_input.c)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(36203u, arg_0.b.x, 39876u, u_input.c), ~vec4<u32>(arg_2, u_input.b, 2945u, 18408u), ~vec4<u32>(39945u, u_input.c, 0u, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 120725u, 20192u), vec4<u32>(1u, 1u, 162307u, 34384u), vec4<u32>(u_input.b, 45579u, arg_2, 1661u))));
}

fn func_1() -> bool {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, abs(74359u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(32541u, u_input.b, 0u), vec3<u32>(0u, u_input.b, u_input.b))) >> (_wgslsmith_add_u32(u_input.b, func_3(func_2(false, u_input.d), vec3<bool>(true, false, false), 1u | u_input.c)) % 32u)) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(min(vec3<u32>(u_input.b, u_input.b, 83892u) >> (vec3<u32>(42390u, u_input.c, 43574u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(20054u, 13249u, u_input.b), vec3<u32>(u_input.c, u_input.c, u_input.b)))), ~(~vec3<u32>(36888u, 21727u, 0u) ^ max(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(0u, u_input.b, 13062u)))) % 32u);
    let var_1 = vec4<bool>(!(!select(true, select(false, false, false), false)), select(true, select(!all(vec3<bool>(false, true, true)), true, false), true), true, true);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(u_input.a), -u_input.d, max(u_input.d, 0i)) >> (74205u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -34508i, -1i), abs(vec3<i32>(u_input.d, u_input.a, 1i))) << (u_input.b % 32u)), -(~(-(~vec2<i32>(u_input.d, u_input.d)))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, func_1());
    var var_1 = Struct_1(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 52644u), countOneBits(vec3<u32>(1u, 1u, u_input.b)))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(26296u, 24685u), select(vec2<u32>(u_input.b, 3384u), vec2<u32>(u_input.b, u_input.c), var_0.x)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 77723u), vec2<u32>(u_input.c, u_input.b)))) & firstLeadingBit(vec2<u32>(71861u, 10798u) ^ vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, ~u_input.c), 14766u), vec4<bool>(!var_0.x, false, true, true));
    global0 = array<Struct_2, 12>();
    let var_2 = Struct_3(vec4<bool>(!any(var_0.xz), true, var_1.d.x, false & var_1.d.x), var_1.d, vec4<i32>(min(abs(u_input.a) >> (1u % 32u), -_wgslsmith_div_i32(41867i, 27669i)), firstLeadingBit(u_input.a), 2147483647i, -1i), vec2<bool>(var_0.x, select(all(vec4<bool>(false, true, var_1.d.x, false)), !var_0.x, true) && func_1()));
    var_1 = Struct_1(56672u, ~firstLeadingBit(var_1.b), u_input.b, var_2.b);
    let var_3 = _wgslsmith_f_op_f32(round(567f));
    let var_4 = var_2;
    global1 = var_4.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.c.x, ~(~var_4.c.x << (reverseBits(56932u) % 32u))));
}

