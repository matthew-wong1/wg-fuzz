struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(1234f, -436f, 716f), vec3<f32>(1000f, 2345f, -1000f), vec2<i32>(2147483647i, 1i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-200f, -1000f, -1000f), vec3<f32>(308f, 2015f, -515f), vec2<i32>(45522i, 0i)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-129f, -1568f, 1000f), vec3<f32>(-1217f, 851f, -478f), vec2<i32>(2147483647i, 4487i)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-624f, -753f, 1731f), vec3<f32>(-119f, 372f, -816f), vec2<i32>(0i, -14552i)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(1073f, -1000f, -355f), vec3<f32>(-450f, 575f, 1000f), vec2<i32>(-5990i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(598f, -1712f, 807f), vec3<f32>(-781f, 900f, 1000f), vec2<i32>(29441i, -1i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(507f, 1511f, 321f), vec3<f32>(1474f, 954f, -464f), vec2<i32>(61502i, 1i)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(1000f, -1828f, -334f), vec3<f32>(-1455f, 574f, -1044f), vec2<i32>(28740i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(919f, -251f, 1000f), vec3<f32>(1168f, -1995f, -398f), vec2<i32>(-8557i, 23407i)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(433f, -285f, 1255f), vec3<f32>(530f, -779f, 1000f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-263f, 242f, 293f), vec3<f32>(-950f, -180f, -1136f), vec2<i32>(1i, 5847i)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(742f, -439f, -1232f), vec3<f32>(563f, -850f, 1172f), vec2<i32>(2147483647i, 1i)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(941f, 757f, -1744f), vec3<f32>(-334f, -136f, 909f), vec2<i32>(-28983i, -49991i)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-427f, 799f, 1236f), vec3<f32>(-1000f, 1593f, 864f), vec2<i32>(-1i, 0i)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-1883f, 566f, 838f), vec3<f32>(154f, 1568f, 104f), vec2<i32>(i32(-2147483648), i32(-2147483648))));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(778f, 657f, -918f), vec3<f32>(574f, 456f, 419f), vec2<i32>(2147483647i, 27255i)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(150f, -1286f, 114f), vec3<f32>(1534f, 1000f, -248f), vec2<i32>(-32214i, 0i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-3019f, -596f, -1223f), vec3<f32>(1000f, 1261f, 1683f), vec2<i32>(20571i, 2147483647i)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1124f, -1909f, 2517f), vec3<f32>(-1554f, -944f, -2562f), vec2<i32>(28144i, 63152i)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-612f, 714f, 588f), vec3<f32>(-516f, -274f, 1737f), vec2<i32>(-1i, 0i)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(1589f, 822f, 426f), vec3<f32>(-907f, -222f, -1222f), vec2<i32>(2147483647i, 399i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(1363f, 323f, -846f), vec3<f32>(-2097f, 2075f, -1099f), vec2<i32>(-77600i, 12704i)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-1000f, 1302f, 1804f), vec3<f32>(-1376f, 622f, 2033f), vec2<i32>(1i, 1i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-349f, 437f, 955f), vec3<f32>(1901f, 351f, 1230f), vec2<i32>(-1i, 6350i)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(546f, -1701f, -834f), vec3<f32>(934f, 922f, 141f), vec2<i32>(i32(-2147483648), -47297i)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-889f, 964f, -909f), vec3<f32>(-746f, -643f, -871f), vec2<i32>(58078i, 56031i)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-766f, 272f, -1391f), vec3<f32>(-677f, 1000f, -2047f), vec2<i32>(0i, 2235i)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(1341f, -356f, 132f), vec3<f32>(1293f, -173f, -935f), vec2<i32>(71853i, -13648i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-175f, 634f, 353f), vec3<f32>(-295f, -546f, -387f), vec2<i32>(6388i, 45446i)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(349f, 1464f, 1136f), vec3<f32>(-759f, 595f, 1277f), vec2<i32>(2147483647i, 29347i)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(496f, 542f, 2320f), vec3<f32>(3397f, -498f, -259f), vec2<i32>(-6599i, 1i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, u_input.a), 15u)];
    let var_1 = var_0.a.xxw;
    global0 = array<Struct_1, 15>();
    global1 = var_0.a;
    let var_2 = Struct_1(!vec4<bool>(var_0.d.x >= ~var_0.d.x, select(true, false, !var_1.x), false, all(var_0.a.xxw)), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 285f, -1000f), _wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.d, arg_0.yy) >> (firstTrailingBit(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), ~(~var_0.d)));
    return all(var_0.a.yxw);
}

fn func_2(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = select(all(global1.yy), all(!vec4<bool>(!global1.x, -1i != u_input.b, arg_0.x > 483i, any(vec2<bool>(global1.x, true)))), func_3((select(vec3<i32>(-4399i, arg_0.x, arg_0.x), vec3<i32>(-2147483647i, -40821i, arg_0.x), vec3<bool>(global1.x, true, false)) >> (vec3<u32>(76891u, 0u, u_input.a) % vec3<u32>(32u))) << (countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 10211u), vec3<u32>(53528u, 24286u, 0u))) % vec3<u32>(32u)), select(true, global1.x, !global1.x)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c, 15u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), 1000f, _wgslsmith_f_op_f32(var_1.c.x + var_1.b.x)) * var_1.b)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_1(vec4<bool>(global1.x, false, any(!(!vec4<bool>(true, true, arg_0, global1.x))), true), vec3<f32>(-1717f, 1074f, -313f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(18651i, u_input.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, -1036f, 526f))) - vec3<f32>(_wgslsmith_div_f32(-320f, 156f), -1033f, _wgslsmith_f_op_f32(-535f + 505f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, -521f, 1833f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, 1000f, 2187f) + vec3<f32>(509f, 117f, -563f))) - vec3<f32>(_wgslsmith_f_op_f32(-1053f - 256f), -1344f, _wgslsmith_f_op_f32(1209f * -663f)))), countOneBits(-u_input.d));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(_wgslsmith_mod_i32(var_0.d.x, -315i), u_input.b >> (4294967295u % 32u)))).x, all(!select(var_0.a, var_0.a, false)))));
    global0 = array<Struct_1, 15>();
    var var_3 = Struct_1(!select(select(vec4<bool>(true, global1.x, false, var_0.a.x), var_0.a, !var_0.a), select(vec4<bool>(var_0.a.x, true, var_0.a.x, arg_0), select(var_0.a, var_0.a, var_0.a), var_0.a), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2796f, 462f, var_0.b.x) + var_0.b))) * _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(u_input.d.x, i32(-1i) * -5637i)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, var_0.a.x)))), _wgslsmith_f_op_f32(-1738f - _wgslsmith_f_op_f32(ceil(-252f))), _wgslsmith_f_op_f32(-669f + var_0.c.x)), _wgslsmith_f_op_vec3_f32(-var_0.b)), u_input.d);
    return _wgslsmith_f_op_vec2_f32(step(var_3.c.zx, vec2<f32>(_wgslsmith_f_op_f32(step(1292f, var_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(round(var_3.c.x)))), -270f, !global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(max(vec4<i32>(-2147483647i, u_input.b, -39540i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 12940i)) | vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), -u_input.b, -u_input.b, 31406i)));
}

