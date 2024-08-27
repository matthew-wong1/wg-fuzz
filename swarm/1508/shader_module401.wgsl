struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<i32>(7444i, -1i, 35672i, -4173i), vec4<u32>(4294967295u, 4294967295u, 3029u, 59165u), vec2<bool>(true, true), vec3<bool>(true, true, false), -2354f), Struct_3(vec4<i32>(-50948i, 28227i, -35360i, -1i), vec4<u32>(1u, 10992u, 4294967295u, 76425u), vec2<bool>(true, true), vec3<bool>(false, false, true), 1074f), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, -56127i, 31221i), vec4<u32>(37732u, 17592u, 0u, 0u), vec2<bool>(false, false), vec3<bool>(false, true, false), -1060f), Struct_3(vec4<i32>(-65396i, 62366i, -13935i, 0i), vec4<u32>(0u, 28633u, 1u, 4294967295u), vec2<bool>(false, false), vec3<bool>(false, true, true), -1357f), Struct_3(vec4<i32>(-10790i, -8523i, 0i, i32(-2147483648)), vec4<u32>(1u, 20894u, 1u, 21686u), vec2<bool>(false, false), vec3<bool>(false, true, true), -286f), Struct_3(vec4<i32>(-1i, 11925i, -32377i, -32313i), vec4<u32>(62833u, 69878u, 0u, 1u), vec2<bool>(true, true), vec3<bool>(true, false, false), -1421f), Struct_3(vec4<i32>(1i, 2161i, -11019i, 1i), vec4<u32>(1u, 9714u, 0u, 0u), vec2<bool>(false, false), vec3<bool>(false, false, false), 345f), Struct_3(vec4<i32>(i32(-2147483648), -8508i, 2147483647i, 2147483647i), vec4<u32>(0u, 1u, 26404u, 1u), vec2<bool>(true, false), vec3<bool>(true, false, true), 275f), Struct_3(vec4<i32>(-1i, 1i, -56125i, i32(-2147483648)), vec4<u32>(4294967295u, 4294967295u, 6745u, 0u), vec2<bool>(true, true), vec3<bool>(false, false, false), 565f), Struct_3(vec4<i32>(i32(-2147483648), -1i, -1i, i32(-2147483648)), vec4<u32>(812u, 4436u, 4294967295u, 57118u), vec2<bool>(true, true), vec3<bool>(true, true, false), 1000f), Struct_3(vec4<i32>(-13906i, 1i, -98289i, 1i), vec4<u32>(4294967295u, 3036u, 39142u, 30337u), vec2<bool>(false, true), vec3<bool>(false, false, false), -369f), Struct_3(vec4<i32>(i32(-2147483648), 39285i, -1i, 2147483647i), vec4<u32>(4294967295u, 1u, 32678u, 1u), vec2<bool>(true, true), vec3<bool>(true, true, false), 385f), Struct_3(vec4<i32>(-26795i, 2147483647i, 33373i, -50131i), vec4<u32>(0u, 0u, 1u, 7245u), vec2<bool>(false, true), vec3<bool>(false, true, false), -650f), Struct_3(vec4<i32>(-11927i, -1i, 29764i, 2147483647i), vec4<u32>(12519u, 74992u, 39506u, 4294967295u), vec2<bool>(true, false), vec3<bool>(true, true, true), -796f), Struct_3(vec4<i32>(2147483647i, 11627i, -1i, 2147483647i), vec4<u32>(18309u, 53261u, 0u, 0u), vec2<bool>(false, false), vec3<bool>(false, false, false), 1226f), Struct_3(vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 8997u, 1u, 15734u), vec2<bool>(false, false), vec3<bool>(true, true, false), -987f), Struct_3(vec4<i32>(-1i, 2147483647i, 47255i, 38999i), vec4<u32>(102692u, 62751u, 4294967295u, 0u), vec2<bool>(false, true), vec3<bool>(true, false, true), -614f), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 801i), vec4<u32>(44117u, 0u, 38113u, 1u), vec2<bool>(false, false), vec3<bool>(true, false, false), -1000f));

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(~vec3<u32>(~u_input.a, ~27383u, 0u), ~((vec3<u32>(u_input.a, 10212u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) | countOneBits(vec3<u32>(35389u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(f32(-1f) * -471f)))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), u_input.b), select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), false), vec4<bool>(true, true, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(select(false, true, true), false), true), vec2<bool>(true, true), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), 0u, Struct_1(vec3<u32>(u_input.a & countOneBits(1u), u_input.a, min(u_input.a ^ 4294967295u, reverseBits(32890u))), _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(9490u, 45297u, 17312u)), vec3<u32>(2621u, 4294967295u, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(776f, _wgslsmith_div_f32(1877f, -552f), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(201f * -116f)))), true, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 1i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 20434i), u_input.d), firstLeadingBit(u_input.b)))));
    var_0 = ~(~(~1u));
    var var_2 = 2147483647i;
    var var_3 = var_1.a.a;
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = ~vec4<i32>(arg_3.e.e, max(abs(2147483647i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.e, -1i, 0i)), ~vec3<i32>(-1i, arg_0.e, -1i))), _wgslsmith_mod_i32(~arg_0.e, _wgslsmith_mult_i32(34107i & arg_0.e, arg_3.e.e)), ~((u_input.d.x | -7449i) | ~u_input.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.e.c))))) - 123f);
    let var_2 = arg_0.a;
    let var_3 = var_0.ywy;
    let var_4 = arg_3;
    return arg_0.d;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<u32>(0u, u_input.a, ~u_input.a), ~(~vec3<u32>(1u, ~16200u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(690f, arg_0.x)))))), true, _wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(8241i, u_input.b, -9678i))), reverseBits(max(countOneBits(vec3<i32>(u_input.b, -33022i, u_input.c)), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)))));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    var var_1 = var_0.b.xx;
    return vec3<bool>(func_4(Struct_1(vec3<u32>(34991u, 4294967295u, 88822u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, 31190u), var_0.a) % vec3<u32>(32u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 92473u, var_1.x), var_0.b), countOneBits(vec3<u32>(4294967295u, var_0.b.x, var_0.a.x)), all(vec2<bool>(var_0.d, var_0.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-368f)))), false, -_wgslsmith_mod_i32(u_input.b, 2147483647i)), ~u_input.b, vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.d, false, true), var_0.d)), var_0.d), Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.a, var_1.x), _wgslsmith_mod_vec3_u32(var_0.b, var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1112f), any(vec2<bool>(false, var_0.d)), i32(-1i) * -20124i), func_3(), vec2<bool>(true, true), u_input.a, Struct_1(var_0.b, var_0.a << (var_0.a % vec3<u32>(32u)), 497f, any(vec2<bool>(true, true)), 53950i))), false, all(select(vec3<bool>(!var_0.d, true, select(true, var_0.d, var_0.d)), vec3<bool>(true, false, true), 1596f < _wgslsmith_f_op_f32(arg_0.x * -183f))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(519f, _wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(step(869f, _wgslsmith_div_f32(171f, arg_2.e.c))), -760f))));
    let var_1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.d, 1u), u_input.a), (arg_2.d << (arg_2.a.b.x % 32u)) >> (4294967295u % 32u), u_input.a), arg_1.b.zyy, _wgslsmith_f_op_f32(-arg_1.e), !(!(!var_0.x)), -(~abs(2147483647i))), vec4<bool>(all(vec4<bool>(true, any(vec3<bool>(false, true, false)), true && arg_2.b.x, !arg_3.x)), func_3().x, !any(arg_1.d), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(5023u, 1347u)) < _wgslsmith_div_u32(~0u, ~arg_1.b.x)), arg_2.b.xz, 71132u, Struct_1(~(~reverseBits(vec3<u32>(0u, arg_0.b.x, 4294967295u))), _wgslsmith_mult_vec3_u32(vec3<u32>(23363u, 9953u, 47283u) << (_wgslsmith_clamp_vec3_u32(arg_1.b.xyw, vec3<u32>(4294967295u, arg_0.b.x, 4294967295u), arg_2.e.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_0.b.zxw, vec3<u32>(arg_2.d, 31966u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c)), false, abs(arg_1.a.x)));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(abs(~arg_2.a.a), select(arg_1.b.wxw, firstLeadingBit(abs(vec3<u32>(arg_0.b.x, 1330u, arg_0.b.x))), arg_0.d)), ~_wgslsmith_div_vec3_u32(var_1.e.b, ~min(var_1.a.b, vec3<u32>(arg_1.b.x, 1u, 1u))), arg_2.a.c, var_1.b.x, arg_0.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, arg_2.e.c, arg_2.e.c, -204f)))))));
    global1 = 32701i >> (firstTrailingBit(1u) % 32u);
    return vec3<i32>(arg_0.a.x, max(70208i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1.a.xxw, -arg_0.a.zwz), 20713i)), _wgslsmith_clamp_i32(1i >> ((_wgslsmith_mult_u32(var_1.d, 75773u) ^ _wgslsmith_sub_u32(4294967295u, 3259u)) % 32u), min(arg_2.a.e, abs(-u_input.d.x)), -(~1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.d.x, -14946i) >> (vec3<u32>(u_input.a, u_input.a, 46828u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.d.x), 66015i, u_input.d.x ^ 12448i)), -((vec3<i32>(-32020i, -1i, u_input.c) & vec3<i32>(2147483647i, 1i, 12006i)) ^ func_1(Struct_3(vec4<i32>(1i, u_input.b, -14904i, 1i), vec4<u32>(59906u, u_input.a, 32927u, 34750u), vec2<bool>(false, false), vec3<bool>(false, false, true), 875f), Struct_3(vec4<i32>(15769i, 13228i, u_input.c, u_input.d.x), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 16330u), vec2<bool>(true, true), vec3<bool>(true, false, false), -1126f), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(95391u, u_input.a, 11185u), -1000f, true, u_input.c), vec4<bool>(false, false, true, true), vec2<bool>(false, false), u_input.a, Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u), -764f, false, -37765i)), vec4<bool>(true, true, false, true)))));
    var var_1 = true;
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1719f, 745f, -496f, 303f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 1162f, -1311f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2134f, 121f, -1794f, -127f))), false))));
    global0 = array<Struct_3, 18>();
    let var_3 = select(select(!vec4<bool>(true, true, true, -154f > var_2.x), !vec4<bool>(true, any(vec2<bool>(false, true)), true, true), !vec4<bool>(any(vec2<bool>(false, false)), 645f < var_2.x, true, any(vec3<bool>(true, false, false)))), !select(vec4<bool>(true, true, true, true), func_3(), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), func_3().x)), vec4<bool>(!(_wgslsmith_mod_u32(u_input.a, u_input.a) <= ~22001u), _wgslsmith_f_op_f32(select(var_2.x, 1319f, func_3().x)) < _wgslsmith_f_op_f32(-1671f + -387f), true, select(all(func_3()), 32160u == (1u & u_input.a), false)));
    var var_4 = var_0.xx;
    var_4 = var_0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec2<u32>(0u & u_input.a, ~4294967295u)), vec2<i32>(~var_0.x, firstTrailingBit(7576i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1629f, -752f, _wgslsmith_f_op_f32(abs(-1253f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -273f, 1886f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x * 1150f), -880f)), !select(vec3<bool>(var_3.x, true, false), !vec3<bool>(var_3.x, false, var_3.x), var_3.zyy))), vec3<u32>(4294967295u, firstTrailingBit(u_input.a), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.x, ~var_4.x ^ -var_0.x, -25959i, _wgslsmith_dot_vec2_i32(var_0.yz >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), u_input.d & vec2<i32>(-49019i, 0i))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(33075i, var_0.x, u_input.c, -2147483647i))));
}

