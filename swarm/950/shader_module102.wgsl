struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<f32>(-855f, 265f, 394f), vec2<bool>(false, false), 25491u, vec2<i32>(13475i, 2147483647i), vec3<bool>(false, true, false)), vec4<u32>(28164u, 75879u, 7222u, 0u), Struct_1(vec3<f32>(104f, 2032f, 310f), vec2<bool>(true, true), 37986u, vec2<i32>(-32690i, -42947i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<f32>(-1812f, 653f, -1286f), vec2<bool>(false, true), 0u, vec2<i32>(1i, -21751i), vec3<bool>(true, true, false)), vec4<u32>(26380u, 13627u, 0u, 11105u), Struct_1(vec3<f32>(-935f, -1000f, -245f), vec2<bool>(true, false), 1u, vec2<i32>(1i, 1i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<f32>(296f, -1112f, -1035f), vec2<bool>(true, false), 35382u, vec2<i32>(2147483647i, -1i), vec3<bool>(false, true, false)), vec4<u32>(39626u, 0u, 26661u, 27701u), Struct_1(vec3<f32>(-2042f, -291f, 1000f), vec2<bool>(true, false), 0u, vec2<i32>(-1i, 2147483647i), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<f32>(1071f, 285f, 253f), vec2<bool>(true, false), 22151u, vec2<i32>(8534i, 1i), vec3<bool>(true, false, true)), vec4<u32>(2650u, 1u, 50387u, 0u), Struct_1(vec3<f32>(-396f, -433f, -896f), vec2<bool>(false, false), 4294967295u, vec2<i32>(-22520i, 0i), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<f32>(362f, 1491f, 1506f), vec2<bool>(true, false), 0u, vec2<i32>(0i, -1i), vec3<bool>(true, false, true)), vec4<u32>(4294967295u, 1u, 8992u, 0u), Struct_1(vec3<f32>(-384f, 706f, 647f), vec2<bool>(true, false), 22181u, vec2<i32>(-38257i, -1i), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<f32>(-149f, 1188f, 140f), vec2<bool>(false, false), 27110u, vec2<i32>(120451i, 1i), vec3<bool>(false, false, false)), vec4<u32>(37089u, 8272u, 4294967295u, 1u), Struct_1(vec3<f32>(-1000f, 1230f, -1000f), vec2<bool>(false, true), 4294967295u, vec2<i32>(-21806i, 6841i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<f32>(-752f, 1730f, -2126f), vec2<bool>(true, true), 42181u, vec2<i32>(20634i, 3808i), vec3<bool>(false, false, false)), vec4<u32>(4294967295u, 6721u, 16939u, 87058u), Struct_1(vec3<f32>(-615f, 481f, 1000f), vec2<bool>(false, false), 4294967295u, vec2<i32>(i32(-2147483648), 0i), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<f32>(1000f, -2478f, 951f), vec2<bool>(false, true), 1u, vec2<i32>(-44626i, i32(-2147483648)), vec3<bool>(true, false, true)), vec4<u32>(1u, 45157u, 4294967295u, 48814u), Struct_1(vec3<f32>(-195f, 820f, 218f), vec2<bool>(false, true), 39961u, vec2<i32>(-17450i, 26434i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<f32>(-433f, -559f, -760f), vec2<bool>(true, false), 16890u, vec2<i32>(i32(-2147483648), -48624i), vec3<bool>(true, false, true)), vec4<u32>(24326u, 1u, 18288u, 4917u), Struct_1(vec3<f32>(748f, 475f, 630f), vec2<bool>(true, false), 4294967295u, vec2<i32>(30144i, -1i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<f32>(-117f, 1212f, -1678f), vec2<bool>(false, true), 4294967295u, vec2<i32>(-8874i, 1i), vec3<bool>(true, false, false)), vec4<u32>(23365u, 0u, 44234u, 64674u), Struct_1(vec3<f32>(538f, 948f, -1121f), vec2<bool>(false, false), 0u, vec2<i32>(0i, 45618i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<f32>(545f, 1000f, -354f), vec2<bool>(false, false), 37701u, vec2<i32>(-42786i, 61228i), vec3<bool>(true, false, true)), vec4<u32>(64112u, 4984u, 18526u, 0u), Struct_1(vec3<f32>(1610f, 703f, 509f), vec2<bool>(false, false), 0u, vec2<i32>(-43844i, -33473i), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<f32>(121f, 1179f, -1000f), vec2<bool>(true, false), 1u, vec2<i32>(-1i, -44422i), vec3<bool>(true, true, true)), vec4<u32>(1u, 45840u, 0u, 20011u), Struct_1(vec3<f32>(930f, -1577f, 1241f), vec2<bool>(true, false), 68170u, vec2<i32>(20194i, -40498i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<f32>(-1210f, 746f, -504f), vec2<bool>(true, false), 28502u, vec2<i32>(2147483647i, -1i), vec3<bool>(false, false, true)), vec4<u32>(14315u, 4294967295u, 13122u, 4294967295u), Struct_1(vec3<f32>(1000f, 456f, 1510f), vec2<bool>(true, false), 46584u, vec2<i32>(-19232i, i32(-2147483648)), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<f32>(1076f, 426f, -346f), vec2<bool>(true, false), 1u, vec2<i32>(-45951i, 1i), vec3<bool>(true, false, false)), vec4<u32>(20196u, 4294967295u, 1u, 24300u), Struct_1(vec3<f32>(728f, -1000f, 388f), vec2<bool>(false, false), 4294967295u, vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<f32>(902f, -1000f, -1523f), vec2<bool>(true, false), 4294967295u, vec2<i32>(-15121i, i32(-2147483648)), vec3<bool>(true, true, false)), vec4<u32>(1u, 4294967295u, 65570u, 1u), Struct_1(vec3<f32>(-832f, -463f, -2177f), vec2<bool>(false, true), 4294967295u, vec2<i32>(-8357i, 1i), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<f32>(-518f, 1786f, 1694f), vec2<bool>(false, true), 4294967295u, vec2<i32>(42582i, -3543i), vec3<bool>(false, true, true)), vec4<u32>(1u, 70980u, 1u, 1u), Struct_1(vec3<f32>(-795f, 1111f, 515f), vec2<bool>(false, false), 0u, vec2<i32>(1i, -16651i), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<f32>(943f, -547f, -2164f), vec2<bool>(true, false), 16601u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, false)), vec4<u32>(1u, 0u, 4294967295u, 0u), Struct_1(vec3<f32>(-935f, 321f, -443f), vec2<bool>(true, false), 4294967295u, vec2<i32>(i32(-2147483648), -21315i), vec3<bool>(false, true, true))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = ~1u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, 543f)) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1555f, 1981f))) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-371f - -503f), -936f)), !vec2<bool>(select(arg_1, true, true), arg_1), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(64534u, 28u)], 4294967295u), (select(_wgslsmith_sub_vec2_i32(u_input.c.yx, u_input.c.zx), vec2<i32>(-4709i, u_input.b.x), true) << (min(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)]), vec2<u32>(21383u, 4294967295u)) % vec2<u32>(32u))) & abs(_wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(22416i, u_input.a))), vec3<bool>(false, arg_1, !(_wgslsmith_f_op_f32(-449f + -1691f) >= arg_0.x)));
    var var_2 = ~max(-var_1.d.x, -(~41569i));
    var var_3 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18530u, 28u)], 17u)];
    var_0 = var_1.c;
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(~(~(~var_1.c))), 28u)], 28u)];
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2448f, 742f, -1325f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, 618f, 1110f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(620f * 1116f), -1137f, _wgslsmith_f_op_f32(f32(-1f) * -1113f)), vec3<f32>(_wgslsmith_f_op_f32(328f + 191f), _wgslsmith_f_op_f32(110f - -180f), 189f))));
    let var_1 = !(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(20896i, -u_input.a), -u_input.c.x, u_input.a << (global0[_wgslsmith_index_u32(func_3(vec4<f32>(var_0.x, -490f, var_0.x, var_0.x), false), 28u)] % 32u)) >= _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.a, 32492i, u_input.c.x, u_input.d)), firstTrailingBit(abs(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, u_input.b.x)))));
    var var_2 = u_input.c.wyz;
    global0 = array<u32, 28>();
    var_2 = vec3<i32>(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.x, 18024i, var_2.x, var_2.x), vec4<i32>(-2147483647i, 18342i, var_2.x, 2147483647i), true), -vec4<i32>(var_2.x, 0i, var_2.x, -2147483647i)), ~71345i, max(~1i, countOneBits(-2518i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1543f * var_0.x)))), !select(vec2<bool>(true, all(vec2<bool>(var_1, var_1))), select(!vec2<bool>(var_1, true), !vec2<bool>(var_1, var_1), vec2<bool>(false, false)), true), 18738u, -(~(u_input.c.yw << (vec2<u32>(11441u, global0[_wgslsmith_index_u32(0u, 28u)]) % vec2<u32>(32u)))), select(select(select(!vec3<bool>(var_1, var_1, var_1), !vec3<bool>(var_1, true, var_1), false), select(select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, var_1), false), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, false)), var_1), !vec3<bool>(all(vec4<bool>(var_1, var_1, false, var_1)), true, select(var_1, var_1, var_1)), true));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    global0 = array<u32, 28>();
    return global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 28u)], 17u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    global1 = array<Struct_2, 17>();
    let var_0 = func_4(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~29841u, 28u)], 28u)], 1000f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(step(arg_2.x, -1049f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f + arg_1.a.x)))), Struct_2(arg_1, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 0u, 66096u, arg_1.c)) ^ ~vec4<u32>(4294967295u, 23385u, arg_0.x, global0[_wgslsmith_index_u32(arg_1.c, 28u)]), ~(~vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], arg_0.x, 0u, arg_0.x))), func_2()));
    let var_1 = func_4(var_0.c.c, var_0.c.a.x, var_0.a.a.yx, Struct_2(func_4(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_0.b.yw), _wgslsmith_f_op_f32(step(228f, -1000f)), _wgslsmith_f_op_vec2_f32(select(var_0.c.a.xx, vec2<f32>(var_0.a.a.x, arg_2.x), arg_1.e.x)), func_4(4294967295u, arg_2.x, vec2<f32>(1463f, arg_1.a.x), Struct_2(arg_1, var_0.b, Struct_1(vec3<f32>(-238f, -1000f, arg_2.x), vec2<bool>(var_0.a.b.x, true), var_0.a.c, vec2<i32>(22820i, var_0.c.d.x), var_0.a.e)))).a.c, -1252f, arg_2.wz, global1[_wgslsmith_index_u32(4294967295u, 17u)]).c, var_0.b, func_4(_wgslsmith_div_u32(~arg_3, arg_3), 1078f, _wgslsmith_f_op_vec2_f32(-arg_2.yx), Struct_2(Struct_1(arg_2.xzy, vec2<bool>(true, true), arg_0.x, vec2<i32>(2147483647i, 1i), vec3<bool>(true, true, arg_1.b.x)), firstTrailingBit(var_0.b), func_4(14888u, arg_2.x, vec2<f32>(-454f, var_0.a.a.x), Struct_2(arg_1, var_0.b, var_0.a)).a)).c));
    let var_2 = arg_3;
    let var_3 = func_4(arg_0.x >> (arg_0.x % 32u), var_0.a.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(-732f + var_1.c.a.x)) + vec2<f32>(-641f, -383f)), var_0);
    return 1504f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 28>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 1u, 29848u), Struct_1(vec3<f32>(-1000f, 986f, -1497f), vec2<bool>(false, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], vec2<i32>(-1i, -1i), vec3<bool>(true, false, true)), vec4<f32>(-1464f, 483f, -1000f, 673f), 1u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, -824f, 230f))))), vec2<bool>(all(vec4<bool>(true, func_4(global0[_wgslsmith_index_u32(10572u, 28u)], 257f, vec2<f32>(1090f, -510f), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 17u)]).c.b.x, any(vec2<bool>(false, true)), true)), true), ~(_wgslsmith_clamp_u32(104809u, 33030u, func_3(vec4<f32>(1478f, 439f, -243f, -115f), true)) | global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89950u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33359u, 28u)], 28u)], 28u)], 28u)]), 28u)]), 28u)]), u_input.c.yw, select(vec3<bool>(true | all(vec4<bool>(false, false, false, false)), true, _wgslsmith_add_i32(u_input.a, 3142i) == func_2().d.x), select(vec3<bool>(true, true, true), vec3<bool>(true, func_4(17383u, 1220f, vec2<f32>(353f, 570f), Struct_2(Struct_1(vec3<f32>(-1000f, 133f, -425f), vec2<bool>(true, false), 0u, vec2<i32>(-2147483647i, u_input.c.x), vec3<bool>(true, false, true)), vec4<u32>(48800u, 1u, global0[_wgslsmith_index_u32(516u, 28u)], 4294967295u), Struct_1(vec3<f32>(-125f, 517f, -154f), vec2<bool>(false, true), 60959u, vec2<i32>(u_input.a, u_input.a), vec3<bool>(false, true, true)))).a.e.x, true), false), true));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_2 = select(var_1.c.d.x <= abs(-9767i), var_0.b.x, true) || (var_0.a.x == _wgslsmith_f_op_f32(var_0.a.x * 458f));
    global1 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(231f, 325f, _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, var_1.c.a.x, -976f, var_1.a.a.x) - vec4<f32>(-524f, var_0.a.x, var_1.c.a.x, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, 742f, var_0.a.x, var_0.a.x))), vec4<f32>(-1000f, var_0.a.x, _wgslsmith_f_op_f32(-var_1.c.a.x), var_0.a.x)))));
}

