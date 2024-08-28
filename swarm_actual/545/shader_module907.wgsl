struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-185f, -482f, -1000f), vec3<f32>(470f, 771f, -983f), vec3<f32>(586f, 916f, -1000f), vec3<f32>(1000f, 1364f, -1084f), vec3<f32>(1000f, -281f, 730f), vec3<f32>(-714f, -293f, -1000f), vec3<f32>(-400f, -372f, 457f), vec3<f32>(-1031f, -1000f, -159f), vec3<f32>(-1000f, -142f, -588f), vec3<f32>(1082f, -252f, 1000f), vec3<f32>(1115f, -1669f, 1143f), vec3<f32>(-187f, 1324f, -606f), vec3<f32>(989f, -778f, -1116f), vec3<f32>(122f, -241f, -1414f), vec3<f32>(126f, 275f, 941f), vec3<f32>(-927f, 1000f, 979f));

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(762f, 156f, 224f), vec3<f32>(994f, 942f, 227f), vec3<f32>(-1961f, 1920f, -821f), vec3<f32>(1817f, -1000f, 1840f), vec3<f32>(766f, -1324f, -1493f), vec3<f32>(1191f, -1110f, -512f), vec3<f32>(1955f, -1098f, 816f), vec3<f32>(-450f, 193f, -1534f), vec3<f32>(-311f, 247f, 507f), vec3<f32>(248f, 1000f, -345f), vec3<f32>(323f, -586f, -1326f), vec3<f32>(155f, -1458f, -724f), vec3<f32>(-348f, -1054f, -699f), vec3<f32>(-1401f, 1310f, -1624f), vec3<f32>(162f, 354f, 114f), vec3<f32>(-839f, 2083f, -724f), vec3<f32>(963f, 1115f, -881f), vec3<f32>(-495f, 845f, -1213f), vec3<f32>(-245f, 584f, 1232f), vec3<f32>(620f, 1698f, -922f), vec3<f32>(-846f, -1000f, -1674f), vec3<f32>(-1370f, -1000f, -1680f), vec3<f32>(286f, -1088f, 1000f), vec3<f32>(1428f, 525f, 1000f), vec3<f32>(-1888f, 1000f, -401f), vec3<f32>(-195f, -1000f, -827f), vec3<f32>(-540f, -216f, 2473f), vec3<f32>(2029f, -888f, 1001f), vec3<f32>(-205f, -983f, 641f), vec3<f32>(-559f, 583f, -1096f), vec3<f32>(-434f, -1934f, -1026f), vec3<f32>(-1246f, -106f, -174f));

var<private> global3: f32;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<u32> {
    global2 = array<vec3<f32>, 32>();
    let var_0 = -151f;
    global2 = array<vec3<f32>, 32>();
    let var_1 = vec2<f32>(1411f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x * 1000f) - _wgslsmith_div_f32(arg_0.a.a.x, arg_0.a.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -251f) - _wgslsmith_f_op_f32(sign(953f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1715f - 632f) - 1000f))))));
    global4 = arg_0.a.c.x;
    return arg_0.b.xz;
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, 1000f) + vec2<f32>(486f, global0[_wgslsmith_index_u32(35080u, 15u)])) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(613f, global0[_wgslsmith_index_u32(u_input.c.x, 15u)])))), true, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), 1000f), vec3<u32>(min(firstTrailingBit(u_input.b), ~u_input.c.x), u_input.b, (u_input.c.x << (0u % 32u)) & u_input.b), abs(-33010i)), _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.a.x, firstTrailingBit(-2147483647i), ~29821i) << (u_input.c % vec3<u32>(32u)), ~vec3<i32>(u_input.a.x, u_input.a.x, 0i) & vec3<i32>(reverseBits(-36194i), 2147483647i, ~(-2147483647i))));
    var var_1 = vec2<u32>(firstLeadingBit(func_3(Struct_3(Struct_1(vec2<f32>(-1210f, global0[_wgslsmith_index_u32(u_input.b, 15u)]), false, vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<u32>(var_0.x, 0u, 4294967295u), ~u_input.a.x), vec3<i32>(-27659i, u_input.a.x, u_input.a.x) << (_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 17735u)) % vec3<u32>(32u))).x), var_0.x);
    var_1 = ~_wgslsmith_sub_vec2_u32(func_3(Struct_3(Struct_1(vec2<f32>(-1014f, -244f), true, vec2<bool>(true, false), global0[_wgslsmith_index_u32(1546u, 15u)]), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.b), u_input.c), ~u_input.a.x), vec3<i32>(~u_input.a.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(5860i, 53116i, -45787i), vec3<i32>(20953i, u_input.a.x, u_input.a.x)))), vec2<u32>(95417u << ((4294967295u << (var_0.x % 32u)) % 32u), var_0.x));
    var var_2 = -1251f;
    var var_3 = 558f;
    return Struct_2(_wgslsmith_f_op_f32(step(-348f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.x, 15u)], -164f, true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)] - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(32201u, 15u)], global0[_wgslsmith_index_u32(36951u, 15u)])))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), -u_input.a.x >= u_input.a.x, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, u_input.b, u_input.b), vec4<u32>(7807u, u_input.c.x, u_input.c.x, u_input.c.x)), 19908u), 15u)], 684f, false))), vec3<bool>(48139u != ~(13621u << (u_input.c.x % 32u)), true, select(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)), all(vec4<bool>(false, false, true, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = Struct_2(arg_1.d, func_2().b, select(!(!arg_0.c), arg_0.c, true));
    var var_2 = func_2();
    let var_3 = u_input.a.x;
    var var_4 = any(func_2().c.zz);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1405f, 195f))))), Struct_1(vec2<f32>(121f, 448f), !any(vec3<bool>(true, true, arg_0.b.c.x)), select(vec2<bool>(false, true), func_2().b.c, var_1.b.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -341f)))), !vec3<bool>(false & func_2().b.b, func_2().c.x, !(!arg_1.b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global1 = array<vec3<f32>, 16>();
    var var_0 = arg_1.c.x;
    var var_1 = vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(9043u, 4294967295u))), 52175u, firstLeadingBit(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(4294967295u, u_input.c.x)), 4294967295u)), ~(4294967295u | u_input.c.x));
    global2 = array<vec3<f32>, 32>();
    var var_2 = func_4(func_2(), arg_1);
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2219f + 1044f), 159f) + arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1737f)) - _wgslsmith_f_op_f32(arg_1.d + var_2.b.a.x)), arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-641f, -412f), true, vec2<bool>(true, false), -1323f), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(31058u, 15u)], 167f), false, vec2<bool>(true, true), 1000f))), vec2<f32>(-1640f, 2196f), func_2().c.xz)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 908f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 15u)], 280f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2().b.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(61624u, 15u)], -485f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], 226f), vec2<f32>(600f, 737f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(59250u, 15u)])))))), !(any(vec2<bool>(true, true)) && false), !(!select(vec2<bool>(true, true), func_4(Struct_2(1823f, Struct_1(vec2<f32>(1146f, global0[_wgslsmith_index_u32(61136u, 15u)]), true, vec2<bool>(true, true), -2082f), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-100f, -1000f), true, vec2<bool>(true, true), -769f)).c.yx, vec2<bool>(false, false))), global0[_wgslsmith_index_u32(abs(firstTrailingBit(~(~u_input.b))), 15u)]);
    let var_1 = func_4(func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -262f), func_4(Struct_2(var_0.d, Struct_1(var_0.a, false, var_0.c, global0[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<bool>(false, false, false)), func_2().b).b, !(!vec3<bool>(var_0.b, var_0.c.x, var_0.b))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, var_0.c))), ~u_input.c.x < (u_input.c.x ^ 1u), !func_2().c.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f * global0[_wgslsmith_index_u32(u_input.b, 15u)]) + _wgslsmith_f_op_f32(step(-1320f, 1108f))))), func_4(func_4(func_2(), var_0), func_4(func_2(), func_4(func_2(), func_4(Struct_2(276f, var_0, vec3<bool>(true, var_0.b, var_0.b)), Struct_1(vec2<f32>(-865f, 1067f), var_0.b, vec2<bool>(false, var_0.b), 474f)).b).b).b).b).b;
    var var_2 = -45884i;
    let var_3 = Struct_2(-901f, func_4(func_4(func_4(func_2(), Struct_1(vec2<f32>(-620f, 803f), var_0.b, var_1.c, var_1.a.x)), Struct_1(var_0.a, true, vec2<bool>(true, var_0.c.x), 276f)), func_2().b).b, vec3<bool>(true, any(func_2().c), var_0.c.x));
    let var_4 = func_2().b;
    let var_5 = func_4(Struct_2(-342f, func_2().b, var_3.c), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(765f * 668f), var_1.a.x)), var_3.b.c.x, !var_0.c, -106f)).b.a.x;
    var var_6 = u_input.c.x;
    global3 = _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0.a, true, vec2<bool>(false, true), -151f), Struct_1(var_1.a, !var_0.c.x, !var_4.c, _wgslsmith_f_op_f32(604f * var_3.a)))).x));
    let var_7 = ~(~min(vec4<i32>(22334i, u_input.a.x, 31347i, -2147483647i) & vec4<i32>(14591i, -27890i, -2147483647i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i) & vec4<i32>(2147483647i, u_input.a.x, 21325i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -20820i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 15u)] * var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)] * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 15u)]))) + _wgslsmith_f_op_f32(var_4.d * _wgslsmith_f_op_f32(-544f - var_3.b.d)))), var_7.x, vec3<i32>(-1i, 0i, ~(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & 31345i)));
}

