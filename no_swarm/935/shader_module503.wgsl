struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 0u, 10043u, 52151u), vec4<u32>(99166u, 1u, 27170u, 4294967295u), vec4<u32>(11641u, 22742u, 47506u, 43240u), vec4<u32>(1u, 0u, 1u, 4294967295u));

var<private> global1: vec3<u32> = vec3<u32>(18954u, 0u, 1u);

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(42263i, 0i, -407i, 1i), vec4<i32>(2147483647i, 16298i, 20557i, -6376i), vec4<i32>(2147483647i, -39248i, 0i, 1i), vec4<i32>(2147483647i, 8741i, -1i, 18415i), vec4<i32>(0i, -5023i, -11715i, -22456i), vec4<i32>(i32(-2147483648), 1i, 0i, 382i), vec4<i32>(-23050i, -939i, 1i, 29319i), vec4<i32>(34996i, 2147483647i, 17688i, 23376i), vec4<i32>(-1i, -9512i, 17104i, 2147483647i), vec4<i32>(-41416i, -28478i, -1i, 2147483647i), vec4<i32>(-20872i, i32(-2147483648), 25607i, 2147483647i), vec4<i32>(-1i, 2147483647i, -21006i, 1i), vec4<i32>(i32(-2147483648), 0i, 1i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 16501i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 1i, -39066i), vec4<i32>(0i, -19770i, -10704i, i32(-2147483648)), vec4<i32>(0i, 21374i, 0i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -621f), 1070f))), 1130f));
    let var_1 = !(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)))));
    global1 = ~(~vec3<u32>(~(~u_input.b.x), ~max(u_input.b.x, u_input.a.x), ~_wgslsmith_add_u32(0u, global1.x)));
    return firstTrailingBit(vec3<u32>(~global1.x, global1.x, reverseBits(countOneBits(21669u))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~(-9525i);
    var var_1 = ~reverseBits(-(countOneBits(vec2<i32>(var_0, 0i)) | firstLeadingBit(vec2<i32>(var_0, -1i))));
    global1 = ~func_3();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(635f, -1080f, 163f) - vec3<f32>(-528f, 167f, -700f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(632f, -630f, 1034f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1269f, -306f, -643f), vec3<f32>(986f, 894f, 1000f), false))), global1.x < _wgslsmith_mod_u32(59116u, u_input.a.x))) + vec3<f32>(2001f, -808f, _wgslsmith_div_f32(456f, 144f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, 375f, 1740f) + vec3<f32>(1665f, 328f, 252f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 266f, -374f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1232f, 1435f, 822f), vec3<f32>(-665f, -1000f, -478f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-375f, 933f, -1696f, 1041f), vec4<f32>(720f, 399f, -187f, 531f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-671f, 190f, 183f, -1036f) - vec4<f32>(1000f, 236f, 681f, -1057f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, -218f, 2208f, 446f))))), _wgslsmith_f_op_f32(trunc(1208f)));
    global3 = array<vec4<i32>, 17>();
    return Struct_2(var_0, select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), all(vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))))), global2[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-286f, var_2.d, 2265f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1909f, -1220f, var_2.d), var_2.b)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1333f, var_2.b.x, var_2.b.x), var_2.c.xzw))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) + _wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(var_2.c.x, var_2.d, 389f))) * _wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.c.zww, global1.x < 1u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_f_op_f32(floor(755f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, 1214f) * var_2.b.x), -1000f), var_2.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = func_2();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.d, var_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1188f + 792f), var_0.d.d)), _wgslsmith_f_op_f32(-var_0.d.c.x)) * _wgslsmith_div_vec4_f32(var_0.d.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.d.d, var_0.d.b.x, var_0.d.a.x), _wgslsmith_f_op_vec4_f32(-var_0.d.c))))));
    var var_3 = vec2<u32>(u_input.b.x, ~u_input.a.x);
    var_3 = ~u_input.c;
    return select(33539i, 2147483647i, func_2().b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(-1i, -45024i);
    global0 = array<vec4<u32>, 4>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(508f, -463f, -1257f)))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1149f)), _wgslsmith_f_op_f32(sign(-1546f))), 691f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -894f))))), reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -3610i), vec4<i32>(arg_0, arg_0, arg_0, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, -2147483647i, arg_0))), _wgslsmith_add_vec4_i32(vec4<i32>(-12874i, arg_0, arg_0, arg_0), firstLeadingBit(global3[_wgslsmith_index_u32(2504u, 17u)])))), ~(~(~vec2<u32>(0u, 15719u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 989f, _wgslsmith_div_f32(-446f, var_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(select(-1430f, var_1.a.x, true)), all(vec3<bool>(true, true, true))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-258f, -850f, 738f, 2084f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) - vec4<f32>(-264f, 785f, -330f, -385f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-557f + var_1.a.x), _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x - -481f), var_1.a.x, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x - 617f))), 681f)));
    var var_3 = Struct_4(func_2().d.b, var_1.b, select(vec2<u32>(global1.x, firstTrailingBit(abs(1u))), countOneBits(abs(vec2<u32>(var_1.c.x, global1.x))), true));
    return Struct_3(~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~28290u));
    var var_1 = func_4(-abs(func_1(true, vec2<i32>(-77626i, -342i), vec4<bool>(false, true, true, false))), Struct_3(func_3().x));
    global3 = array<vec4<i32>, 17>();
    global3 = array<vec4<i32>, 17>();
    var_1 = Struct_3(~global1.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1790f)), _wgslsmith_f_op_f32(366f + -1000f), _wgslsmith_f_op_f32(trunc(1151f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-108f, -658f, -540f), vec3<f32>(-132f, 1006f, 1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, -1241f, 705f) - vec3<f32>(175f, 427f, 490f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-951f, -240f, 1020f)), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(172f, -452f, 814f) + vec3<f32>(1181f, 1000f, -253f)))))), vec4<f32>(546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141f - _wgslsmith_f_op_f32(-1408f - 1041f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2384f)), _wgslsmith_f_op_f32(-221f - 171f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1720f - -1046f)))), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c.x)));
}

