struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec4<i32>(24274i, 12271i, 55113i, -1i), 432f, 1i, 1368f, Struct_2(vec2<i32>(-73586i, -50277i), false, Struct_1(vec4<u32>(1u, 4294967295u, 12956u, 42297u), vec3<u32>(32554u, 12714u, 93124u)), Struct_1(vec4<u32>(41496u, 0u, 7736u, 4294967295u), vec3<u32>(64999u, 0u, 88806u)), vec4<i32>(-46496i, 6293i, 24440i, 25865i))), Struct_4(vec4<i32>(2147483647i, i32(-2147483648), -14873i, i32(-2147483648)), 1230f, 53695i, 573f, Struct_2(vec2<i32>(-6492i, 0i), false, Struct_1(vec4<u32>(4294967295u, 3624u, 4013u, 0u), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec4<u32>(42508u, 0u, 31351u, 1u), vec3<u32>(1u, 4294967295u, 1u)), vec4<i32>(2147483647i, 0i, -52163i, i32(-2147483648)))), Struct_4(vec4<i32>(-1i, -35703i, 33460i, 2147483647i), 1071f, 15283i, -1214f, Struct_2(vec2<i32>(1i, -47273i), false, Struct_1(vec4<u32>(28173u, 4294967295u, 4294967295u, 68757u), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec4<u32>(60208u, 4294967295u, 31800u, 91406u), vec3<u32>(35932u, 50681u, 4294967295u)), vec4<i32>(1i, 19150i, -43115i, 40492i))), Struct_4(vec4<i32>(-34103i, -16055i, -12361i, 13694i), -536f, 6861i, 387f, Struct_2(vec2<i32>(-4975i, 2147483647i), false, Struct_1(vec4<u32>(36728u, 0u, 43323u, 91743u), vec3<u32>(0u, 27881u, 1u)), Struct_1(vec4<u32>(7294u, 7154u, 0u, 19379u), vec3<u32>(4294967295u, 25673u, 30577u)), vec4<i32>(-24555i, -21132i, -62855i, -1i))), Struct_4(vec4<i32>(2147483647i, 21291i, 2147483647i, 2147483647i), 681f, -29603i, -218f, Struct_2(vec2<i32>(1i, 0i), false, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec3<u32>(6576u, 79455u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 53223u, 1u), vec3<u32>(30464u, 0u, 0u)), vec4<i32>(-1i, -54202i, -1i, -2627i))), Struct_4(vec4<i32>(0i, 2147483647i, 1i, 35092i), -958f, -1i, 348f, Struct_2(vec2<i32>(i32(-2147483648), 32983i), true, Struct_1(vec4<u32>(4294967295u, 145840u, 1u, 1u), vec3<u32>(45155u, 51200u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 72377u), vec3<u32>(0u, 4294967295u, 39881u)), vec4<i32>(1i, 29402i, 20479i, 1i))), Struct_4(vec4<i32>(i32(-2147483648), -23915i, 4621i, -29859i), -1292f, 0i, 1293f, Struct_2(vec2<i32>(-1i, -1i), true, Struct_1(vec4<u32>(1u, 89231u, 6092u, 97127u), vec3<u32>(33487u, 50029u, 1u)), Struct_1(vec4<u32>(13093u, 1u, 4294967295u, 6607u), vec3<u32>(1u, 1u, 15441u)), vec4<i32>(-1i, -48680i, -1i, 1i))), Struct_4(vec4<i32>(1i, -10548i, 420i, -1i), 1184f, i32(-2147483648), 211f, Struct_2(vec2<i32>(-1i, 62976i), false, Struct_1(vec4<u32>(49258u, 4294967295u, 1u, 1u), vec3<u32>(52595u, 10898u, 6072u)), Struct_1(vec4<u32>(9922u, 31306u, 41260u, 1u), vec3<u32>(4294967295u, 1u, 0u)), vec4<i32>(-17274i, -46894i, -17379i, 1i))), Struct_4(vec4<i32>(2147483647i, -65105i, 1i, 2147483647i), -471f, 0i, 118f, Struct_2(vec2<i32>(31159i, 1i), false, Struct_1(vec4<u32>(0u, 54701u, 58823u, 0u), vec3<u32>(13950u, 84801u, 78712u)), Struct_1(vec4<u32>(1u, 24997u, 52067u, 34568u), vec3<u32>(0u, 13069u, 0u)), vec4<i32>(i32(-2147483648), -1i, -49588i, 58597i))), Struct_4(vec4<i32>(-32317i, 18897i, 20411i, -26221i), 1026f, -1i, 1000f, Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), false, Struct_1(vec4<u32>(7054u, 4294967295u, 0u, 7610u), vec3<u32>(1u, 29463u, 1u)), Struct_1(vec4<u32>(0u, 63000u, 0u, 802u), vec3<u32>(14427u, 13668u, 4189u)), vec4<i32>(i32(-2147483648), i32(-2147483648), 31905i, -6829i))), Struct_4(vec4<i32>(-56464i, 2147483647i, -32173i, 46445i), -1470f, 1i, -2011f, Struct_2(vec2<i32>(-51227i, 0i), true, Struct_1(vec4<u32>(22170u, 0u, 13582u, 14887u), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(63756u, 0u, 33921u, 99415u), vec3<u32>(1u, 68052u, 0u)), vec4<i32>(-1i, -12863i, 34254i, i32(-2147483648)))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    let var_0 = vec2<bool>(arg_2, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - -629f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(331f + -243f))));
    global0 = array<Struct_4, 11>();
    var var_1 = ~min(35530u, 29604u) ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x | ~countOneBits(0u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, -1154f) + vec2<f32>(_wgslsmith_div_f32(643f, -2125f), arg_0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), -512f)));
    var var_3 = -_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(1i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(20039i, arg_1.e.x), arg_1.a), arg_1.e.x ^ -11044i)), arg_1.e.wyx);
    return Struct_3(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_1.e, vec4<bool>(!arg_1.b, ~u_input.a.x >= (u_input.a.x << (4294967295u % 32u)), (_wgslsmith_div_i32(u_input.b, 7357i) < _wgslsmith_dot_vec3_i32(arg_1.e.xzx, arg_1.e.xzz)) || true, select(all(vec3<bool>(arg_2, true, true)), var_0.x, arg_2)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = vec2<u32>(~arg_0.a.x, 4294967295u);
    return vec3<bool>(false, arg_2.c.x, !arg_2.c.x);
}

fn func_1() -> vec2<i32> {
    let var_0 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)))) && (any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)) | true), any(func_3(Struct_1(~vec4<u32>(1u, u_input.a.x, 7777u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 0u) << (vec3<u32>(0u, u_input.a.x, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, 1253f, -985f)), _wgslsmith_div_vec3_f32(vec3<f32>(489f, -1339f, 324f), vec3<f32>(-239f, -706f, -1202f)))), func_2(vec2<f32>(-1000f, 1000f), Struct_2(vec2<i32>(u_input.b, u_input.c), true, Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 56164u, 134868u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 83481u), vec3<u32>(39788u, 61510u, u_input.a.x)), vec4<i32>(1i, -2147483647i, 8524i, -58089i)), all(vec3<bool>(true, true, false))))), true);
    let var_1 = -_wgslsmith_sub_vec2_i32(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(358f, 501f))), Struct_2(firstTrailingBit(vec2<i32>(-22154i, u_input.c)), true, Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(13308u, u_input.a.x, 66363u)), Struct_1(vec4<u32>(u_input.a.x, 67594u, 26903u, 0u), vec3<u32>(4294967295u, 4294967295u, 16851u)), vec4<i32>(-5594i, u_input.b, 71602i, 1i)), var_0.x).b.ww, _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c, -2816i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-20342i, 5543i)), -vec2<i32>(u_input.b, u_input.c))));
    let var_2 = 229f;
    let var_3 = all(select(vec2<bool>(!var_0.x, true), var_0.xx, any(var_0.xz))) && all(func_3(Struct_1(vec4<u32>(u_input.a.x, 1u, 22294u, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(44511u, 28827u, u_input.a.x), vec3<u32>(38657u, 57906u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-437f, var_2, 3244f), vec3<f32>(1017f, 1000f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, var_2, var_2))), Struct_3(var_2, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, -50954i, u_input.b), vec4<i32>(u_input.b, var_1.x, -2147483647i, var_1.x)), func_2(vec2<f32>(var_2, var_2), Struct_2(var_1, true, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 15930u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 677u, u_input.a.x)), vec4<i32>(2147483647i, -18561i, var_1.x, 25123i)), var_0.x).c)).xz);
    let var_4 = ~51666i;
    return vec2<i32>(u_input.c, -1i);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> Struct_5 {
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.e.x, 0i), arg_0.e.yw) & (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), arg_0.e.xy) & -arg_0.a), vec2<i32>(arg_0.a.x, -27190i), arg_0.a), arg_0.b, arg_0.d, Struct_1(vec4<u32>(countOneBits(arg_0.d.b.x), _wgslsmith_mod_u32(arg_0.c.b.x, 1u), ~_wgslsmith_add_u32(arg_0.d.a.x, 6554u), ~arg_0.c.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(45957u, arg_0.c.b.x, u_input.a.x), vec3<u32>(80083u, 4294967295u, u_input.a.x)) % 32u)), arg_0.d.a.wwx), -(~vec4<i32>(i32(-1i) * -8866i, -53829i, _wgslsmith_clamp_i32(u_input.c, arg_0.e.x, -1i), ~(-56230i))));
    global0 = array<Struct_4, 11>();
    let var_1 = u_input.a;
    return Struct_5(firstLeadingBit(_wgslsmith_sub_vec4_i32((vec4<i32>(-2147483647i, u_input.c, -8417i, 30380i) >> (vec4<u32>(56760u, 0u, u_input.a.x, 55616u) % vec4<u32>(32u))) & ~vec4<i32>(u_input.b, 15106i, 66621i, -1i), ~(~vec4<i32>(u_input.b, -2147483647i, 1i, arg_0.a.x)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-942f)))), arg_0.e, vec4<bool>((arg_0.d.a.x << (4294967295u % 32u)) == 1u, false, false, arg_1.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -873f);
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    var var_1 = func_4(Struct_2(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i) & vec2<i32>(1i, 2147483647i), vec2<i32>(15131i, u_input.b) ^ vec2<i32>(u_input.b, u_input.b))), 1213f <= var_0, Struct_1(vec4<u32>(u_input.a.x, firstLeadingBit(24335u), 1u, u_input.a.x), ~vec3<u32>(u_input.a.x, 0u, 1u)), Struct_1(vec4<u32>(~u_input.a.x, ~u_input.a.x, 4294967295u, 0u), vec3<u32>(~u_input.a.x, 31988u, firstTrailingBit(32360u))), vec4<i32>(-7767i, 0i, ~2147483647i, _wgslsmith_dot_vec2_i32(func_1(), vec2<i32>(-2147483647i, -2147483647i) >> (u_input.a % vec2<u32>(32u))))), !vec2<bool>(u_input.a.x < abs(u_input.a.x), false), -926f);
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~26312u, ~u_input.a.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 23102u, 16766u) >> (vec3<u32>(30590u, u_input.a.x, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4275u), vec3<u32>(u_input.a.x, 46573u, 4294967295u))))), vec3<u32>(1u, u_input.a.x, ~(~66181u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.a.x, 46951i), ~var_1.b.b.wy), var_1.a.zy), func_1().x));
}

