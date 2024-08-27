struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(102075u, 1u, 4294967295u), vec3<u32>(70459u, 74723u, 19565u), vec3<u32>(4294967295u, 8278u, 6652u), vec3<u32>(1u, 1u, 30120u), vec3<u32>(35805u, 0u, 63994u), vec3<u32>(30240u, 31068u, 0u), vec3<u32>(1u, 75104u, 0u), vec3<u32>(39742u, 40583u, 1u), vec3<u32>(96239u, 57596u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(27713u, 1u, 0u), vec3<u32>(0u, 42809u, 23050u), vec3<u32>(13880u, 15413u, 57688u));

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(false, vec4<f32>(-678f, 1273f, -707f, -358f), vec3<bool>(false, true, false), Struct_2(vec3<f32>(-178f, 1209f, -1039f), -24765i, Struct_1(728f), true, Struct_1(946f)), Struct_1(557f)), Struct_3(false, vec4<f32>(1000f, 1000f, 193f, 845f), vec3<bool>(false, false, false), Struct_2(vec3<f32>(-223f, 142f, 1525f), 7372i, Struct_1(-1095f), true, Struct_1(1657f)), Struct_1(1000f)), Struct_3(false, vec4<f32>(-793f, -528f, -503f, -143f), vec3<bool>(true, true, true), Struct_2(vec3<f32>(-865f, 1000f, 1867f), -3977i, Struct_1(1332f), true, Struct_1(338f)), Struct_1(-1249f)), Struct_3(true, vec4<f32>(-1440f, -1362f, 1000f, -286f), vec3<bool>(false, true, true), Struct_2(vec3<f32>(533f, -864f, -666f), i32(-2147483648), Struct_1(1408f), false, Struct_1(590f)), Struct_1(-412f)), Struct_3(false, vec4<f32>(695f, 259f, 2773f, 793f), vec3<bool>(false, true, false), Struct_2(vec3<f32>(-1000f, -1505f, 1037f), -30729i, Struct_1(-1069f), true, Struct_1(-703f)), Struct_1(-532f)), Struct_3(false, vec4<f32>(-389f, 687f, -642f, -1114f), vec3<bool>(false, true, false), Struct_2(vec3<f32>(-1254f, -405f, 566f), i32(-2147483648), Struct_1(2191f), true, Struct_1(946f)), Struct_1(-1131f)), Struct_3(true, vec4<f32>(147f, 1521f, 2282f, 1000f), vec3<bool>(false, true, false), Struct_2(vec3<f32>(-456f, -1119f, -727f), 2147483647i, Struct_1(-1266f), true, Struct_1(415f)), Struct_1(1233f)), Struct_3(true, vec4<f32>(-933f, -1000f, -2158f, -517f), vec3<bool>(true, false, false), Struct_2(vec3<f32>(403f, 212f, -106f), -67935i, Struct_1(998f), true, Struct_1(587f)), Struct_1(1196f)), Struct_3(true, vec4<f32>(232f, -1000f, 586f, -192f), vec3<bool>(false, false, true), Struct_2(vec3<f32>(591f, 940f, 882f), -1i, Struct_1(382f), false, Struct_1(1312f)), Struct_1(-461f)), Struct_3(true, vec4<f32>(-363f, 706f, 1010f, 1369f), vec3<bool>(true, true, true), Struct_2(vec3<f32>(675f, -818f, -1122f), -1i, Struct_1(-1157f), true, Struct_1(1666f)), Struct_1(-1014f)), Struct_3(true, vec4<f32>(240f, -969f, 966f, -962f), vec3<bool>(false, true, true), Struct_2(vec3<f32>(800f, -549f, -1000f), 38292i, Struct_1(-935f), true, Struct_1(581f)), Struct_1(1000f)));

var<private> global4: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(50171u, 0u, 0u, 42972u), vec4<u32>(4294967295u, 1u, 15038u, 0u), vec4<u32>(69780u, 1624u, 2402u, 0u), vec4<u32>(7287u, 4294967295u, 54155u, 0u), vec4<u32>(4294967295u, 4294967295u, 64377u, 1u), vec4<u32>(84198u, 4294967295u, 78511u, 10435u), vec4<u32>(29585u, 4294967295u, 767u, 4294967295u), vec4<u32>(1u, 42234u, 0u, 32440u), vec4<u32>(4294967295u, 11156u, 44996u, 7374u), vec4<u32>(5240u, 36266u, 20858u, 0u), vec4<u32>(0u, 31190u, 0u, 48945u), vec4<u32>(1u, 19299u, 5275u, 0u), vec4<u32>(45502u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 10768u, 0u, 82826u), vec4<u32>(62574u, 32074u, 90824u, 4294967295u), vec4<u32>(10898u, 0u, 4294967295u, 15735u), vec4<u32>(34327u, 1273u, 35815u, 1u), vec4<u32>(59003u, 0u, 0u, 7161u), vec4<u32>(4294967295u, 12071u, 0u, 4294967295u), vec4<u32>(14511u, 4294967295u, 35126u, 30475u), vec4<u32>(52810u, 22653u, 27498u, 4294967295u), vec4<u32>(1u, 60450u, 4294967295u, 1337u), vec4<u32>(1u, 4294967295u, 0u, 36717u), vec4<u32>(8126u, 53739u, 7828u, 6730u), vec4<u32>(0u, 75590u, 4294967295u, 1u), vec4<u32>(22095u, 1798u, 36955u, 116325u), vec4<u32>(4294967295u, 14365u, 0u, 4294967295u), vec4<u32>(0u, 12056u, 0u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = i32(-1i) * -(~(-2147483647i));
    var var_1 = all(!(!(!vec4<bool>(global0.a.a, global0.e.d, true, global0.e.d)))) && true;
    global4 = array<vec4<u32>, 28>();
    var var_2 = global0.a.e;
    var var_3 = global0.a.d;
    return vec4<u32>(32998u, u_input.c.x, firstTrailingBit(u_input.c.x), 38270u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec4<f32> {
    global2 = array<vec3<u32>, 13>();
    global0 = Struct_4(global0.c, global0.a.b.xwx, global3[_wgslsmith_index_u32(~firstLeadingBit(arg_0.x), 11u)], select(global0.a.c, global0.d, !select(vec3<bool>(true, false, global0.c.a), select(vec3<bool>(global0.d.x, false, global0.a.a), global0.c.c, vec3<bool>(global0.a.d.d, global0.a.a, true)), vec3<bool>(global0.d.x, global0.e.d, true))), global0.c.d);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global0.e.e.a) - 483f)) * 1158f), global0.b.x, -1000f, global1.x);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(~u_input.c.yy, arg_0.xy, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(min(countOneBits(vec4<u32>(43696u, u_input.c.x, 1u, 1u)), u_input.c), ~func_3(vec2<i32>(global0.a.d.b, u_input.a.x))), vec4<u32>(u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(38119u, u_input.c.x)), ~min(u_input.c.x, 13382u), func_3(u_input.a.wx).x))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, -1329f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, global1.x)))));
    let var_2 = ~(~min(vec2<u32>(_wgslsmith_mod_u32(24418u, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), ~_wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 26323u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_4(vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(~u_input.c.x, var_2.x, u_input.c.x, 13956u)), var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_1.a)) + var_0.xy) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.c.d.c.a)), global0.b.zx))), global4[_wgslsmith_index_u32(u_input.c.x, 28u)]));
    let var_4 = global0.c;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = global0.a.d;
    let var_1 = ~_wgslsmith_mult_i32(i32(-1i) * -42075i, min(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, 2147483647i, global0.c.d.b, arg_2.x)) & (-44031i ^ arg_2.x), arg_2.x));
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 1080f)))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -806f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d.e.a - _wgslsmith_f_op_f32(1000f - var_0.c.a)))));
    return Struct_4(global0.a, vec3<f32>(_wgslsmith_f_op_f32(global0.e.a.x - 1625f), var_0.a.x, var_2.a), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x + global1.x))) == _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(539f - -274f)), global0.a.b, !select(global0.a.c, global0.d, !var_0.d), global0.a.d, var_0.c), select(!global0.c.c, vec3<bool>(global0.d.x, true, var_0.d), !global0.c.c), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.e.c, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 30958u) | vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(~23210u, min(0u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 18728u), u_input.c.yw))), u_input.a.zyz);
    var var_0 = global0.a.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-global0.e.a.x)) + _wgslsmith_f_op_vec3_f32(select(var_0.zzy, var_0.zzw, !func_1(global0.c.e, vec3<u32>(27832u, u_input.c.x, u_input.c.x), u_input.a.zzw).d)))));
    global4 = array<vec4<u32>, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b) * global0.a.b);
    var var_3 = firstTrailingBit(min(vec3<i32>(u_input.b << (u_input.c.x % 32u), u_input.a.x, firstTrailingBit(reverseBits(u_input.b))), reverseBits(_wgslsmith_mult_vec3_i32(countOneBits(u_input.a.zzy), u_input.a.zwz))));
    var var_4 = u_input.c.x;
    var var_5 = !select(select(global0.c.c.xy, !global0.d.yy, vec2<bool>(global0.e.d && global0.d.x, global0.a.a)), !global0.a.c.yz, vec2<bool>(any(vec3<bool>(false, global0.a.c.x, true)), all(select(global0.c.c, vec3<bool>(global0.d.x, global0.c.a, global0.c.a), global0.c.c))));
    let var_6 = func_1(Struct_1(121f), ~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.c.x, _wgslsmith_div_u32(0u, u_input.c.x)), 13u)], u_input.a.zwz << (countOneBits(global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 13u)]) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-249f, -1479f, -327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-351f, var_0.x, var_6.c.c.x)))), _wgslsmith_f_op_f32(var_6.e.e.a * global1.x), ~(~max(_wgslsmith_dot_vec3_i32(u_input.a.xyw, u_input.a.yyw), abs(-59421i))), _wgslsmith_add_u32(1u, countOneBits(1u)));
}

