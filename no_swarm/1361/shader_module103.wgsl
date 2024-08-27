struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<u32>(72575u, 0u))), Struct_2(Struct_1(vec2<u32>(230u, 23097u))), Struct_2(Struct_1(vec2<u32>(4401u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(8710u, 57072u))), Struct_2(Struct_1(vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 69497u))), Struct_2(Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(274u, 35364u))), Struct_2(Struct_1(vec2<u32>(20826u, 4294967295u))));

var<private> global2: i32 = 13140i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global2 = -u_input.a;
    global0 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1176f)), _wgslsmith_f_op_f32(552f + 1138f))))), -1187f, _wgslsmith_f_op_f32(min(-1524f, _wgslsmith_f_op_f32(f32(-1f) * -1829f)))));
    let var_1 = Struct_2(Struct_1(vec2<u32>(4294967295u, ~4294967295u)));
    global2 = -(~55513i);
    return -23571i;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: bool) -> Struct_1 {
    global2 = func_3(_wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(~abs(1i), u_input.a, 11794i), -vec3<i32>(2639i >> (arg_1 % 32u), u_input.a, i32(-1i) * -2147483647i)));
    global1 = array<Struct_2, 10>();
    let var_0 = vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(-u_input.a, abs(_wgslsmith_sub_i32(2147483647i, u_input.a)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 35945i), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_i32(1i, 0i)))), u_input.a, ~u_input.a);
    let var_1 = Struct_1(vec2<u32>(arg_1, arg_1));
    let var_2 = vec3<u32>(countOneBits(_wgslsmith_sub_u32(4294967295u, 4294967295u)), var_1.a.x, 59912u);
    return Struct_1(vec2<u32>(var_1.a.x, _wgslsmith_div_u32(arg_1, _wgslsmith_div_u32(6266u, ~var_1.a.x))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<u32> {
    global1 = array<Struct_2, 10>();
    global2 = i32(-1i) * -14870i;
    var var_0 = ~abs(vec4<u32>(arg_2.a.a.x, 24161u, ~max(arg_3.x, 1u), arg_3.x));
    var_0 = (max(abs(vec4<u32>(4294967295u, var_0.x, arg_3.x, var_0.x)), (vec4<u32>(1u, var_0.x, 4294967295u, var_0.x) ^ vec4<u32>(arg_1.x, arg_3.x, 45677u, 4294967295u)) ^ ~vec4<u32>(arg_3.x, 1u, arg_1.x, 56877u)) & vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(15070u, var_0.x), vec2<u32>(arg_1.x, var_0.x)), _wgslsmith_add_u32(~1u, 1u), var_0.x)) & firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 19436u, arg_2.a.a.x, 92154u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_1.x, arg_2.a.a.x, 4294967295u), vec4<u32>(arg_2.a.a.x, arg_3.x, 0u, arg_2.a.a.x))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_3.x, 0u, 4294967295u, var_0.x)), select(vec4<u32>(arg_2.a.a.x, 13760u, arg_2.a.a.x, arg_2.a.a.x), vec4<u32>(4294967295u, 1u, arg_1.x, 12583u), vec4<bool>(false, true, false, false)))));
    global0 = array<Struct_2, 2>();
    return arg_1;
}

fn func_1() -> Struct_1 {
    global2 = u_input.a;
    global1 = array<Struct_2, 10>();
    let var_0 = Struct_2(Struct_1(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f), -544f), firstLeadingBit(vec2<u32>(1u, 1u)), Struct_2(func_2(vec3<bool>(true, true, false), 43433u, true)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(37339u, 4294967295u), vec2<u32>(1u, 1u)), ~vec2<u32>(0u, 19589u), true))));
    global0 = array<Struct_2, 2>();
    var var_1 = -1159f;
    return Struct_1(_wgslsmith_div_vec2_u32(select(var_0.a.a, ~func_2(vec3<bool>(false, false, true), 34247u, true).a, true), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.a.x, 4294967295u), vec2<u32>(var_0.a.a.x, 1u) & var_0.a.a, select(vec2<u32>(var_0.a.a.x, var_0.a.a.x), var_0.a.a, true)) | var_0.a.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_2, 2>();
    var var_0 = select(vec4<bool>(!(all(arg_3.xxx) || !arg_2.x), all(arg_2.zz), arg_2.x, true), vec4<bool>(arg_3.x & true, arg_2.x, true, !((-1i >> (arg_0.x % 32u)) <= ~u_input.a)), arg_3.x && !any(!arg_3.wz));
    var var_1 = Struct_1(arg_0);
    global2 = abs(~u_input.a);
    let var_2 = firstTrailingBit(-vec2<i32>(-1i ^ u_input.a, u_input.a << ((67478u | var_1.a.x) % 32u)));
    return Struct_1(select(arg_1.a << (func_2(vec3<bool>(true, arg_3.x, false), ~arg_1.a.x, true).a % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_1.a, func_1().a), any(vec3<bool>(true, true, true))));
}

fn func_6(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(select(reverseBits(1i), -20848i, true), ~0i), vec2<i32>(min(arg_1.x, 53320i), 17977i));
    let var_1 = !(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-275f, _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(arg_3 - -207f));
    global0 = array<Struct_2, 2>();
    return func_1();
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = ~func_1().a.x;
    var var_1 = _wgslsmith_div_i32(-arg_1.x, 88843i);
    let var_2 = 0i;
    let var_3 = arg_0;
    global0 = array<Struct_2, 2>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-434f, 434f, 909f, 1531f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, 378f, 247f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1764f, -1000f, 650f, -849f) * _wgslsmith_div_vec4_f32(vec4<f32>(422f, -1068f, -1431f, 1067f), vec4<f32>(-2011f, 1000f, 690f, -1251f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, 515f, 883f, -1116f) - vec4<f32>(113f, 168f, -1345f, 1671f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(817f, -395f, 1000f, -841f) * vec4<f32>(-1401f, -845f, 113f, -1104f))), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1167f, _wgslsmith_f_op_f32(f32(-1f) * -442f), -121f, -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(~(-1i));
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_7(Struct_2(func_6(_wgslsmith_sub_u32(~67218u, _wgslsmith_mod_u32(38980u, 10858u)), firstTrailingBit(-vec4<i32>(u_input.a, -1i, -1i, u_input.a)), func_5(reverseBits(vec2<u32>(1u, 4294967295u)), func_1(), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)))), countOneBits(vec2<i32>(-u_input.a, 1i)) >> (countOneBits(~vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    var var_1 = Struct_1(vec2<u32>(1u, _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(3152u, 59943u, 4294967295u, 111540u), vec4<u32>(4294967295u, 52911u, 1u, 1u), false), _wgslsmith_div_vec4_u32(vec4<u32>(15240u, 32888u, 32713u, 0u), vec4<u32>(35568u, 27330u, 1u, 53899u))))));
    var var_2 = 1i;
    var var_3 = vec2<u32>(4294967295u, min(0u, 23805u));
    var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-151f * var_0.x)) + vec4<f32>(-1000f, -122f, _wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -145f, var_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -706f, var_0.x), vec4<f32>(-201f, var_0.x, -1506f, 320f))) - _wgslsmith_f_op_vec4_f32(func_7(Struct_2(Struct_1(var_1.a)), vec2<i32>(0i, u_input.a))))), vec4<u32>(var_1.a.x, var_3.x, 1u, ~(~(~var_3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yzy), _wgslsmith_div_vec3_f32(vec3<f32>(1610f, 1000f, -139f), vec3<f32>(var_0.x, -135f, var_0.x))))) - var_0.yzw), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-2755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -1231f), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))));
}

