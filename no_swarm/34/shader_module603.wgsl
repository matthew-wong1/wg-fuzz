struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true));

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(62978u, 4294967295u), vec2<u32>(4294967295u, 47156u), vec2<u32>(1u, 13146u), vec2<u32>(4294967295u, 0u), vec2<u32>(33484u, 4294967295u), vec2<u32>(12738u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(5786u, 13770u), vec2<u32>(74283u, 15156u), vec2<u32>(1u, 1u), vec2<u32>(1u, 60452u), vec2<u32>(4294967295u, 9504u), vec2<u32>(1u, 1u), vec2<u32>(5509u, 18268u), vec2<u32>(9488u, 1u), vec2<u32>(23717u, 4294967295u), vec2<u32>(20449u, 49319u), vec2<u32>(0u, 1u), vec2<u32>(11600u, 4294967295u), vec2<u32>(31494u, 0u), vec2<u32>(23423u, 26230u), vec2<u32>(1u, 43429u), vec2<u32>(20212u, 52103u), vec2<u32>(0u, 7454u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    global1 = array<vec4<bool>, 31>();
    global0 = abs(arg_2.e.x);
    var var_0 = select(vec4<u32>(u_input.b, abs(select(arg_2.b, 19173u, false) | ~u_input.b), ~abs(abs(arg_2.c.x)), ~abs(~u_input.b)), ~(~_wgslsmith_div_vec4_u32(min(vec4<u32>(arg_2.c.x, arg_2.c.x, u_input.b, arg_2.c.x), vec4<u32>(arg_2.e.x, arg_2.c.x, 19447u, 2943u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, 19054u, 13033u), vec4<u32>(1u, 35666u, arg_2.c.x, arg_2.c.x), vec4<u32>(arg_2.c.x, 1u, 24288u, u_input.b)))), select(global1[_wgslsmith_index_u32(min(max(_wgslsmith_mod_u32(1u, arg_2.b), arg_2.b | u_input.b), u_input.b), 31u)], global1[_wgslsmith_index_u32(arg_2.b, 31u)], vec4<bool>(true, all(select(vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(53916u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), true, !all(vec4<bool>(arg_3.b, true, true, arg_3.b)))));
    global0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a)), _wgslsmith_f_op_f32(min(-1000f, arg_2.a)), _wgslsmith_f_op_f32(step(arg_3.a, arg_3.a))))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1088f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(809f, arg_2.d.x, true)) - _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1654f)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, var_1.x, -147f) - _wgslsmith_f_op_vec3_f32(sign(arg_2.d))), vec3<f32>(var_1.x, -1579f, 1821f), all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.x, arg_3.a, _wgslsmith_f_op_f32(exp2(arg_3.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, var_1.x, 1000f)) * _wgslsmith_f_op_vec3_f32(arg_2.d - arg_2.d))), true)) - arg_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(var_0.d.x - 1126f);
    let var_2 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(ceil(1494f)));
    global2 = array<vec2<u32>, 24>();
    global0 = 1u;
    return -990f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<vec4<bool>, 31>();
    let var_0 = Struct_2(-497f, false);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(min(var_0.a, 362f)), abs(u_input.b), vec3<u32>(28899u, 17916u, 0u), _wgslsmith_f_op_vec3_f32(func_3(-2147483647i, arg_1, Struct_1(-847f, 4294967295u, vec3<u32>(4294967295u, 13858u, u_input.b), vec3<f32>(-1616f, -482f, var_0.a), vec2<u32>(0u, 0u)), Struct_2(var_0.a, true))), global2[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_4(vec3<u32>(u_input.b, u_input.b, 0u), ~6433i, all(global1[_wgslsmith_index_u32(0u, 31u)])))), _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, 1298f, 1328f)))))))));
    let var_2 = arg_3.x;
    global0 = abs(var_2);
    return Struct_1(_wgslsmith_f_op_f32(791f + -1410f), ~max(~0u, abs(_wgslsmith_mod_u32(var_2, arg_3.x))), arg_3.xxx, _wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-291f, -1919f, -1018f)) * _wgslsmith_f_op_vec3_f32(trunc(var_1))), vec3<bool>(-1000f >= _wgslsmith_f_op_f32(var_0.a + var_0.a), true, -1i <= (arg_0.x << (1u % 32u))))), vec2<u32>(var_2, ~arg_3.x >> (0u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<i32> {
    global1 = array<vec4<bool>, 31>();
    var var_0 = func_2(vec4<i32>(u_input.a, arg_1.b.x, ~1i, u_input.a), arg_1, ~0i, max(reverseBits(~arg_3), ~vec4<u32>(4294967295u, 23061u, select(32537u, 9991u, arg_2.b), 0u)));
    global2 = array<vec2<u32>, 24>();
    var_0 = arg_0;
    global2 = array<vec2<u32>, 24>();
    return ~_wgslsmith_add_vec4_i32(~max(firstLeadingBit(vec4<i32>(arg_1.b.x, arg_1.b.x, 1i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, arg_1.a.x), vec4<i32>(0i, 0i, -1i, -2147483647i))), vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), ~arg_1.a.x, ~(-19481i) | reverseBits(arg_1.b.x), arg_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = arg_0.a;
    let var_1 = !(!(26655u <= u_input.b));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(func_5(func_2(vec4<i32>(arg_1.b.x, -2147483647i, 0i, -1i), Struct_3(arg_1.b, arg_1.a), arg_1.b.x, vec4<u32>(15774u, u_input.b, u_input.b, 57151u)), Struct_3(vec3<i32>(17567i, arg_1.b.x, 33409i), arg_1.a), Struct_2(var_0, true), vec4<u32>(u_input.b, 48669u, 0u, 4294967295u) & vec4<u32>(1u, 1u, arg_0.c.x, arg_0.c.x)) ^ abs(vec4<i32>(arg_1.a.x, u_input.a, u_input.a, u_input.a)), func_5(arg_0, arg_1, Struct_2(-1280f, true), vec4<u32>(_wgslsmith_div_u32(1u, u_input.b), select(arg_0.b, 4294967295u, var_1), ~22246u, ~u_input.b))), vec4<i32>(arg_1.a.x, ~_wgslsmith_dot_vec2_i32(arg_1.a.xy, arg_1.a.zx & arg_1.b.yz), -arg_1.a.x, u_input.a));
    let var_3 = arg_0;
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.e.x, abs(_wgslsmith_sub_u32(var_3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.b), arg_0.e)))), reverseBits(_wgslsmith_add_u32(0u, var_3.b)));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.b, ~var_3.e.x << (firstLeadingBit(var_3.e.x) % 32u), ~(~84863u)), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, var_3.e.x, 65787u), vec4<u32>(var_3.b, arg_0.e.x, 16540u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3.b, arg_0.e.x, arg_0.e.x), vec4<u32>(arg_0.e.x, u_input.b, 1u, 67894u)))), var_3.c.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_4 {
    let var_0 = ((arg_3.b && arg_3.b) || ((select(arg_3.b, true, arg_2.b) || !arg_3.b) | !arg_3.b)) != (arg_1 != u_input.a);
    let var_1 = Struct_3(func_5(Struct_1(_wgslsmith_f_op_f32(floor(arg_3.a)), ~13074u, abs(vec3<u32>(arg_0.x, 78604u, 1u)) >> ((vec3<u32>(0u, 24274u, arg_0.x) >> (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a, arg_2.a, 436f), vec3<f32>(arg_2.a, -1000f, arg_2.a), vec3<bool>(arg_3.b, false, false)))), _wgslsmith_mod_vec2_u32(min(global2[_wgslsmith_index_u32(u_input.b, 24u)], vec2<u32>(u_input.b, arg_0.x)), vec2<u32>(u_input.b, u_input.b))), Struct_3(vec3<i32>(min(0i, -2147483647i), ~arg_1, _wgslsmith_add_i32(u_input.a, 13948i)), vec3<i32>(-1506i, ~1i, i32(-1i) * -1655i)), Struct_2(926f, arg_3.b), ~(~vec4<u32>(30697u, u_input.b, u_input.b, u_input.b)) ^ abs(~vec4<u32>(20928u, 16848u, u_input.b, 6632u))).wzy, vec3<i32>(arg_1 & ~(-arg_1), _wgslsmith_dot_vec2_i32(max(min(vec2<i32>(6574i, -10029i), vec2<i32>(-2147483647i, u_input.a)), ~vec2<i32>(2960i, -16134i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(20735i, arg_1), vec2<i32>(-15522i, arg_1))), 32370i));
    global1 = array<vec4<bool>, 31>();
    let var_2 = 0u;
    return Struct_4(~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_2, arg_0.x, 1u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_2, 70990u, var_2)), ~vec3<u32>(u_input.b, u_input.b, 4294967295u))), -14903i, any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, arg_3.b), vec2<bool>(var_0, true)), !vec2<bool>(arg_2.b, false), !vec2<bool>(true, var_0)), select(vec2<bool>(true, true), !vec2<bool>(var_0, true), vec2<bool>(arg_3.b, true)), true)));
}

fn func_7(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(-843f - -1128f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f + -722f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -619f)), -882f))), 36375u, select(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 7426u, arg_3.a.x), arg_3.a, arg_3.a), arg_2.a & vec3<u32>(arg_3.a.x, arg_2.a.x, arg_3.a.x)), vec3<u32>(u_input.b, ~u_input.b, ~3995u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(0u, 33307u, 1u), arg_2.a & arg_3.a, arg_3.c), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 35867u, arg_3.a.x), vec4<u32>(arg_2.a.x, 664u, 39305u, 35153u)), 4294967295u)), arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, 407f, false)))), -243f, 885f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1025f, -285f, 415f))))), ~vec2<u32>(arg_2.a.x, u_input.b));
    global0 = firstLeadingBit(arg_3.a.x);
    let var_1 = -156f;
    global2 = array<vec2<u32>, 24>();
    var_0 = func_2(max(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, -26799i, 0i) | vec4<i32>(1i, -2147483647i, 21972i, u_input.a), -vec4<i32>(arg_3.b, 59683i, 0i, 49279i)) & vec4<i32>(arg_2.b, -2147483647i, -5742i, arg_2.b), min(firstLeadingBit(reverseBits(vec4<i32>(2147483647i, u_input.a, u_input.a, arg_2.b))), vec4<i32>(i32(-1i) * -39353i, _wgslsmith_div_i32(-40346i, -22108i), 27432i, -1i))), Struct_3(_wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.a, u_input.a, 3586i)), vec3<i32>(arg_3.b | -29547i, _wgslsmith_mod_i32(1i, 1i), reverseBits(19927i))), firstTrailingBit(vec3<i32>(~u_input.a, -1i, 2147483647i ^ arg_2.b))), u_input.a, ~(~vec4<u32>(~u_input.b, ~1579u, arg_2.a.x, max(var_0.e.x, arg_2.a.x))));
    return func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(23600i, -9628i, arg_2.b, u_input.a) & vec4<i32>(u_input.a, arg_2.b, arg_3.b, u_input.a), vec4<i32>(1i, arg_2.b, ~u_input.a, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(28556i, arg_2.b, 12431i, arg_3.b), vec4<i32>(14583i, 6129i, -1i, u_input.a)) & (vec4<i32>(3005i, -2147483647i, arg_2.b, -22500i) ^ vec4<i32>(arg_3.b, u_input.a, u_input.a, 0i))) ^ vec4<i32>(~10103i, arg_3.b, ~(-1i) >> ((3116u ^ var_0.b) % 32u), select(func_6(var_0.e, arg_2.b, Struct_2(var_0.d.x, arg_2.c), Struct_2(1449f, true)).b, abs(-45342i), all(vec4<bool>(true, arg_2.c, true, false)))), Struct_3((vec3<i32>(-1i) * -vec3<i32>(arg_2.b, arg_2.b, arg_2.b)) & _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b, u_input.a, 35792i), vec3<i32>(arg_3.b, arg_3.b, 22518i)), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(arg_2.b, arg_3.b), 0i, ~(-73401i)))), max(arg_2.b ^ ((u_input.a | -2147483647i) | -15751i), func_6(select(vec2<u32>(u_input.b, arg_2.a.x), vec2<u32>(41852u, arg_3.a.x) | arg_3.a.xx, arg_0.zy), -1i, Struct_2(_wgslsmith_f_op_f32(sign(-1071f)), true), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1407f), arg_1)).b), vec4<u32>(arg_3.a.x | arg_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.e.x, u_input.b), 5778u, var_0.b), ~_wgslsmith_mult_vec3_u32(arg_3.a, var_0.c)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 49861u, 0u), var_0.c) >> (u_input.b % 32u), _wgslsmith_mult_u32(60056u, _wgslsmith_dot_vec2_u32(var_0.c.yz, arg_3.a.xy)), all(!vec4<bool>(arg_0.x, arg_3.c, arg_2.c, false))), ~func_2(reverseBits(vec4<i32>(18324i, arg_3.b, -8907i, -2147483647i)), Struct_3(vec3<i32>(13659i, arg_3.b, 2147483647i), vec3<i32>(1i, -26772i, arg_3.b)), abs(arg_2.b), vec4<u32>(1u, 33164u, arg_2.a.x, 9164u)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1891f))))), _wgslsmith_f_op_f32(388f - -1405f)), 90660u, max(vec3<u32>(4035u, _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)] & vec2<u32>(1u, 1u)), ~(~0u)), vec3<u32>(u_input.b, 26288u, (u_input.b & 0u) << (u_input.b % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(555f, -982f)), _wgslsmith_f_op_f32(sign(-1279f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1651f + -1593f) + -1361f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -1397f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1082f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1570f))))), vec2<u32>(u_input.b, countOneBits(u_input.b >> (min(u_input.b, 44733u) % 32u))));
    global0 = 21682u;
    let var_1 = func_7(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(1296f * 1000f) == _wgslsmith_f_op_f32(exp2(var_0.d.x))), false, func_6(~(func_1(Struct_1(385f, u_input.b, var_0.c, var_0.d, vec2<u32>(12417u, var_0.b)), Struct_3(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a))) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, var_0.c.x), global2[_wgslsmith_index_u32(u_input.b, 24u)])), -_wgslsmith_mult_i32(u_input.a, u_input.a), Struct_2(_wgslsmith_f_op_f32(-var_0.d.x), 10277i < _wgslsmith_div_i32(u_input.a, -25593i)), Struct_2(var_0.d.x, true)), Struct_4(firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, var_0.c.x) & var_0.c), 1i, all(vec3<bool>(true, true, true))));
    let var_2 = !vec3<bool>(false, (1i > u_input.a) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_1.e, ~func_1(Struct_1(var_1.a, 4294967295u, vec3<u32>(var_0.b, 71915u, 42144u), vec3<f32>(-902f, var_0.a, var_0.d.x), global2[_wgslsmith_index_u32(u_input.b, 24u)]), Struct_3(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(1i, u_input.a, u_input.a))), var_2.zy), var_1.b, 18190i, vec3<u32>(_wgslsmith_sub_u32(u_input.b, func_2(-vec4<i32>(4044i, u_input.a, 0i, u_input.a), Struct_3(vec3<i32>(6452i, -1i, u_input.a), vec3<i32>(-2147483647i, u_input.a, 44928i)), u_input.a, vec4<u32>(1u, var_1.b, 1u, 102099u)).c.x), reverseBits(~var_1.e.x), u_input.b));
}

