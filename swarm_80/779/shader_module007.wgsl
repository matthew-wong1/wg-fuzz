struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: vec2<f32> = vec2<f32>(-882f, 915f);

var<private> global2: f32 = 421f;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(Struct_2(vec2<f32>(-681f, -303f), vec4<u32>(92621u, 1u, 3430u, 0u), vec2<f32>(-403f, -1000f), Struct_1(vec2<bool>(true, true), 0u)), Struct_4(Struct_1(vec2<bool>(true, false), 19815u)), false), Struct_5(Struct_2(vec2<f32>(-1620f, -403f), vec4<u32>(37516u, 1u, 4294967295u, 4294967295u), vec2<f32>(306f, -1128f), Struct_1(vec2<bool>(false, true), 43625u)), Struct_4(Struct_1(vec2<bool>(false, false), 1u)), false), Struct_5(Struct_2(vec2<f32>(1345f, 959f), vec4<u32>(0u, 4294967295u, 0u, 27017u), vec2<f32>(615f, -1506f), Struct_1(vec2<bool>(false, false), 1u)), Struct_4(Struct_1(vec2<bool>(true, false), 12133u)), false), Struct_5(Struct_2(vec2<f32>(1439f, 1000f), vec4<u32>(1u, 102610u, 4294967295u, 0u), vec2<f32>(2054f, -109f), Struct_1(vec2<bool>(true, true), 4294967295u)), Struct_4(Struct_1(vec2<bool>(false, false), 24421u)), false), Struct_5(Struct_2(vec2<f32>(270f, 541f), vec4<u32>(23311u, 70844u, 3441u, 1u), vec2<f32>(-859f, 313f), Struct_1(vec2<bool>(true, false), 0u)), Struct_4(Struct_1(vec2<bool>(false, false), 616u)), true), Struct_5(Struct_2(vec2<f32>(762f, 852f), vec4<u32>(51197u, 4294967295u, 16047u, 11585u), vec2<f32>(-899f, 1000f), Struct_1(vec2<bool>(true, false), 25691u)), Struct_4(Struct_1(vec2<bool>(true, true), 24624u)), false), Struct_5(Struct_2(vec2<f32>(418f, 1310f), vec4<u32>(1u, 1u, 39918u, 51501u), vec2<f32>(196f, 1148f), Struct_1(vec2<bool>(true, false), 4294967295u)), Struct_4(Struct_1(vec2<bool>(true, true), 17389u)), true), Struct_5(Struct_2(vec2<f32>(-546f, 1225f), vec4<u32>(4294967295u, 19498u, 1u, 122823u), vec2<f32>(187f, -521f), Struct_1(vec2<bool>(false, false), 8702u)), Struct_4(Struct_1(vec2<bool>(true, false), 4294967295u)), false), Struct_5(Struct_2(vec2<f32>(761f, -1587f), vec4<u32>(45260u, 4294967295u, 19645u, 105664u), vec2<f32>(-1110f, -384f), Struct_1(vec2<bool>(false, true), 4294967295u)), Struct_4(Struct_1(vec2<bool>(true, false), 20871u)), true), Struct_5(Struct_2(vec2<f32>(765f, 646f), vec4<u32>(99601u, 4294967295u, 14944u, 0u), vec2<f32>(-1396f, -671f), Struct_1(vec2<bool>(true, true), 2609u)), Struct_4(Struct_1(vec2<bool>(true, false), 31379u)), true), Struct_5(Struct_2(vec2<f32>(1122f, 1954f), vec4<u32>(0u, 4294967295u, 36783u, 0u), vec2<f32>(835f, 1002f), Struct_1(vec2<bool>(true, false), 1u)), Struct_4(Struct_1(vec2<bool>(false, true), 4294967295u)), true), Struct_5(Struct_2(vec2<f32>(1000f, 127f), vec4<u32>(15070u, 4211u, 25021u, 41693u), vec2<f32>(534f, 503f), Struct_1(vec2<bool>(false, false), 53965u)), Struct_4(Struct_1(vec2<bool>(false, true), 4294967295u)), true), Struct_5(Struct_2(vec2<f32>(851f, -1000f), vec4<u32>(101153u, 92040u, 1u, 0u), vec2<f32>(-850f, -405f), Struct_1(vec2<bool>(false, false), 0u)), Struct_4(Struct_1(vec2<bool>(true, false), 87039u)), true), Struct_5(Struct_2(vec2<f32>(828f, -2036f), vec4<u32>(17442u, 29681u, 68906u, 25516u), vec2<f32>(2223f, 898f), Struct_1(vec2<bool>(false, true), 48250u)), Struct_4(Struct_1(vec2<bool>(true, false), 0u)), true), Struct_5(Struct_2(vec2<f32>(264f, -986f), vec4<u32>(4294967295u, 1u, 57945u, 26026u), vec2<f32>(437f, 770f), Struct_1(vec2<bool>(false, false), 29918u)), Struct_4(Struct_1(vec2<bool>(true, false), 0u)), true), Struct_5(Struct_2(vec2<f32>(-1496f, 1486f), vec4<u32>(32613u, 1u, 38528u, 4294967295u), vec2<f32>(-115f, -1000f), Struct_1(vec2<bool>(false, false), 4294967295u)), Struct_4(Struct_1(vec2<bool>(true, false), 4294967295u)), false), Struct_5(Struct_2(vec2<f32>(730f, 1000f), vec4<u32>(1u, 4294967295u, 20968u, 23028u), vec2<f32>(-349f, -631f), Struct_1(vec2<bool>(false, false), 0u)), Struct_4(Struct_1(vec2<bool>(true, true), 4294967295u)), false), Struct_5(Struct_2(vec2<f32>(-1729f, -1061f), vec4<u32>(0u, 27133u, 0u, 9084u), vec2<f32>(-529f, -1152f), Struct_1(vec2<bool>(false, false), 11479u)), Struct_4(Struct_1(vec2<bool>(true, true), 71325u)), true), Struct_5(Struct_2(vec2<f32>(568f, -180f), vec4<u32>(4294967295u, 7892u, 60963u, 0u), vec2<f32>(2636f, -628f), Struct_1(vec2<bool>(true, true), 46137u)), Struct_4(Struct_1(vec2<bool>(true, false), 0u)), true), Struct_5(Struct_2(vec2<f32>(-1528f, 439f), vec4<u32>(4294967295u, 76609u, 37452u, 22452u), vec2<f32>(-1385f, -1249f), Struct_1(vec2<bool>(false, true), 57084u)), Struct_4(Struct_1(vec2<bool>(false, true), 0u)), true), Struct_5(Struct_2(vec2<f32>(-1172f, -1881f), vec4<u32>(1618u, 0u, 70815u, 12618u), vec2<f32>(1000f, 1664f), Struct_1(vec2<bool>(false, true), 5110u)), Struct_4(Struct_1(vec2<bool>(true, true), 0u)), false), Struct_5(Struct_2(vec2<f32>(1110f, 689f), vec4<u32>(1u, 4113u, 4294967295u, 61427u), vec2<f32>(-446f, 240f), Struct_1(vec2<bool>(false, true), 79585u)), Struct_4(Struct_1(vec2<bool>(true, true), 87659u)), true), Struct_5(Struct_2(vec2<f32>(-524f, -452f), vec4<u32>(44741u, 10583u, 4294967295u, 34829u), vec2<f32>(1062f, -2800f), Struct_1(vec2<bool>(false, true), 1142u)), Struct_4(Struct_1(vec2<bool>(false, false), 58474u)), false), Struct_5(Struct_2(vec2<f32>(531f, -238f), vec4<u32>(10813u, 4294967295u, 17763u, 54451u), vec2<f32>(-1000f, 465f), Struct_1(vec2<bool>(false, false), 12984u)), Struct_4(Struct_1(vec2<bool>(false, true), 10169u)), false), Struct_5(Struct_2(vec2<f32>(-589f, 455f), vec4<u32>(37826u, 4294967295u, 33507u, 0u), vec2<f32>(914f, 109f), Struct_1(vec2<bool>(false, false), 51782u)), Struct_4(Struct_1(vec2<bool>(false, false), 4294967295u)), true), Struct_5(Struct_2(vec2<f32>(473f, -1993f), vec4<u32>(54522u, 80656u, 40576u, 67800u), vec2<f32>(-1000f, -413f), Struct_1(vec2<bool>(true, true), 1u)), Struct_4(Struct_1(vec2<bool>(true, true), 13248u)), false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec3_i32(min(min(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 7u)], arg_0.x), arg_0.zxy), u_input.d) ^ select(vec3<i32>(1i, 64553i, arg_0.x), firstLeadingBit(vec3<i32>(-6055i, global0[_wgslsmith_index_u32(4294967295u, 7u)], u_input.d.x)), select(vec3<bool>(true, global3.x, false), vec3<bool>(global3.x, false, false), vec3<bool>(true, true, global3.x))), arg_0.yxy, ~u_input.d);
    var var_1 = _wgslsmith_div_f32(global1.x, global1.x);
    var_1 = global1.x;
    var var_2 = countOneBits(~(~var_0.x));
    var var_3 = 1i;
    return global3.x;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    global0 = array<i32, 7>();
    let var_0 = -502f;
    global3 = vec2<bool>(arg_0.a.a.x, all(!(!(!arg_2.a))));
    let var_1 = vec4<f32>(-1093f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -558f)), -775f))), _wgslsmith_f_op_f32(exp2(arg_1.c.x)));
    let var_2 = vec4<bool>(global3.x, arg_2.a.x, !any(vec4<bool>(false & arg_2.a.x, all(vec3<bool>(false, arg_2.a.x, global3.x)), true, any(vec3<bool>(false, false, arg_2.a.x)))), !global3.x);
    return -vec4<i32>(global0[_wgslsmith_index_u32(~u_input.e, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], ~global0[_wgslsmith_index_u32(0u, 7u)], select(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.b, 38766u), 7u)], arg_1.d.a.x & (true | arg_0.a.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_3(~_wgslsmith_clamp_vec4_i32(~func_3(Struct_4(Struct_1(arg_1.yz, 17041u)), Struct_2(vec2<f32>(global1.x, global1.x), vec4<u32>(1u, 0u, u_input.b, u_input.e), vec2<f32>(global1.x, -947f), Struct_1(vec2<bool>(arg_1.x, true), u_input.b)), Struct_1(vec2<bool>(true, false), 77455u), u_input.e), -(vec4<i32>(-32902i, global0[_wgslsmith_index_u32(u_input.b, 7u)], 13285i, 37155i) >> (vec4<u32>(u_input.e, 4294967295u, u_input.e, 1u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], 2147483647i, 10421i, global0[_wgslsmith_index_u32(0u, 7u)]), vec4<i32>(-30640i, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))));
    let var_1 = false;
    var var_2 = select(!select(vec4<bool>(-1462i > global0[_wgslsmith_index_u32(46047u, 7u)], false, global3.x, false), !select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_1.x, true, true, true), vec4<bool>(arg_1.x, var_1, var_1, true)), false), select(!vec4<bool>(all(vec2<bool>(var_1, true)), !arg_1.x, false, !arg_0.x), vec4<bool>(true, !all(vec2<bool>(global3.x, var_1)), any(arg_1), global3.x), func_1(vec4<i32>(var_0.a.x, -2147483647i, _wgslsmith_add_i32(-4770i, var_0.a.x), _wgslsmith_add_i32(39077i, 9194i)))), select(!select(select(vec4<bool>(global3.x, true, arg_0.x, false), vec4<bool>(arg_0.x, var_1, false, arg_0.x), vec4<bool>(global3.x, global3.x, arg_0.x, true)), select(vec4<bool>(false, true, arg_0.x, global3.x), vec4<bool>(false, false, true, false), var_1), true), !vec4<bool>(any(vec4<bool>(global3.x, true, false, arg_0.x)), true, any(arg_0.xx), all(arg_0)), arg_1.x));
    let var_3 = !(!var_2.x);
    let var_4 = Struct_3(-firstTrailingBit(abs(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a))));
    return ~u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(!(!select(func_1(vec4<i32>(-2147483647i, -5004i, -34171i, 0i)), global3.x | global3.x, -559f < global1.x)), global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, 502f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, 748f, 1110f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(334f, global1.x, -985f, 1341f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1525f, -1438f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(349f, 294f, -467f, 328f)))))), 14143u, _wgslsmith_mult_vec3_i32(min(func_2(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x))), u_input.d), vec3<i32>(1i, u_input.c, u_input.a.x)), ~reverseBits(abs(u_input.e)));
}

