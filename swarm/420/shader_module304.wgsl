struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<f32>(469f, -147f, 570f), false), vec4<u32>(8604u, 10462u, 42656u, 4294967295u), vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), Struct_1(vec3<f32>(-1352f, 777f, -1567f), false), 32556u), Struct_2(Struct_1(vec3<f32>(1344f, 1000f, -960f), false), vec4<u32>(33466u, 22424u, 60705u, 18121u), vec4<i32>(24847i, 2147483647i, 1i, 26542i), Struct_1(vec3<f32>(220f, -1067f, 702f), false), 1u), Struct_2(Struct_1(vec3<f32>(282f, 243f, -1107f), false), vec4<u32>(16502u, 4294967295u, 10264u, 29442u), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 44265i), Struct_1(vec3<f32>(1000f, 1112f, -1734f), false), 52785u), Struct_2(Struct_1(vec3<f32>(587f, 610f, -1000f), true), vec4<u32>(77303u, 23855u, 0u, 1u), vec4<i32>(-59578i, -16380i, 2147483647i, 8288i), Struct_1(vec3<f32>(683f, -1000f, 1107f), true), 2927u), Struct_2(Struct_1(vec3<f32>(239f, -1028f, 1000f), false), vec4<u32>(22814u, 43118u, 4294967295u, 34857u), vec4<i32>(-26347i, -32791i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(-1540f, 307f, 884f), false), 3135u), Struct_2(Struct_1(vec3<f32>(-153f, -370f, -930f), false), vec4<u32>(70905u, 21999u, 75758u, 1u), vec4<i32>(-40287i, 15563i, 0i, 13166i), Struct_1(vec3<f32>(1000f, -142f, -770f), false), 4240u), Struct_2(Struct_1(vec3<f32>(868f, 1541f, -790f), false), vec4<u32>(26164u, 25363u, 4294967295u, 39449u), vec4<i32>(10135i, 1i, 55572i, -1636i), Struct_1(vec3<f32>(-164f, -375f, -699f), false), 24582u), Struct_2(Struct_1(vec3<f32>(1893f, 1482f, 1000f), true), vec4<u32>(1832u, 3325u, 75495u, 0u), vec4<i32>(i32(-2147483648), -1i, -56425i, -1330i), Struct_1(vec3<f32>(-1673f, 593f, -506f), false), 1u), Struct_2(Struct_1(vec3<f32>(1000f, -1365f, 237f), true), vec4<u32>(4294967295u, 29157u, 129088u, 28614u), vec4<i32>(-8181i, 0i, 0i, 45076i), Struct_1(vec3<f32>(-254f, -600f, -152f), false), 1u), Struct_2(Struct_1(vec3<f32>(1421f, 1010f, -1000f), true), vec4<u32>(4294967295u, 0u, 0u, 168u), vec4<i32>(1i, 1i, 27750i, i32(-2147483648)), Struct_1(vec3<f32>(1357f, -1000f, 1312f), true), 38472u), Struct_2(Struct_1(vec3<f32>(227f, -1255f, 329f), true), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<i32>(1i, 38210i, i32(-2147483648), 0i), Struct_1(vec3<f32>(1513f, -516f, 255f), true), 1u), Struct_2(Struct_1(vec3<f32>(995f, -971f, -1383f), true), vec4<u32>(84490u, 55404u, 19051u, 1u), vec4<i32>(i32(-2147483648), -1i, 2359i, 11919i), Struct_1(vec3<f32>(908f, -549f, -1000f), false), 1954u), Struct_2(Struct_1(vec3<f32>(273f, 807f, 806f), true), vec4<u32>(1u, 12242u, 1u, 38482u), vec4<i32>(-1185i, -23984i, 0i, 37970i), Struct_1(vec3<f32>(-1000f, -173f, 391f), false), 19254u), Struct_2(Struct_1(vec3<f32>(262f, 2187f, 1266f), false), vec4<u32>(14768u, 81043u, 1u, 11891u), vec4<i32>(19052i, 38390i, 1i, 0i), Struct_1(vec3<f32>(592f, -401f, 164f), true), 4294967295u), Struct_2(Struct_1(vec3<f32>(497f, -759f, 1249f), false), vec4<u32>(0u, 68353u, 4294967295u, 21316u), vec4<i32>(-41281i, -1i, 42053i, 0i), Struct_1(vec3<f32>(754f, -1000f, 1000f), false), 8217u), Struct_2(Struct_1(vec3<f32>(435f, -396f, -456f), true), vec4<u32>(0u, 17669u, 1u, 1u), vec4<i32>(-21905i, -23857i, 0i, 2147483647i), Struct_1(vec3<f32>(806f, -810f, 847f), true), 28225u), Struct_2(Struct_1(vec3<f32>(-310f, -452f, -1998f), false), vec4<u32>(0u, 56636u, 4294967295u, 0u), vec4<i32>(-1i, 2147483647i, 15446i, 35069i), Struct_1(vec3<f32>(-768f, 249f, 592f), true), 1u), Struct_2(Struct_1(vec3<f32>(1014f, -1000f, 471f), false), vec4<u32>(34764u, 28676u, 1u, 10873u), vec4<i32>(-1i, i32(-2147483648), -1i, 0i), Struct_1(vec3<f32>(567f, -1000f, -1865f), true), 84558u), Struct_2(Struct_1(vec3<f32>(-1195f, 949f, -1543f), false), vec4<u32>(0u, 0u, 39833u, 0u), vec4<i32>(4622i, 2147483647i, -1i, 2147483647i), Struct_1(vec3<f32>(664f, 434f, -533f), false), 2097u), Struct_2(Struct_1(vec3<f32>(854f, 1080f, 539f), false), vec4<u32>(4294967295u, 33233u, 4294967295u, 52951u), vec4<i32>(40680i, i32(-2147483648), 1i, i32(-2147483648)), Struct_1(vec3<f32>(-2162f, 641f, 605f), true), 1u), Struct_2(Struct_1(vec3<f32>(1000f, 1654f, 694f), false), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<i32>(2147483647i, -13786i, 0i, 1857i), Struct_1(vec3<f32>(-267f, 1232f, 937f), false), 44819u), Struct_2(Struct_1(vec3<f32>(-106f, -818f, 1160f), false), vec4<u32>(495u, 0u, 4294967295u, 66149u), vec4<i32>(-40474i, i32(-2147483648), 0i, 19959i), Struct_1(vec3<f32>(-731f, 864f, -527f), true), 1u), Struct_2(Struct_1(vec3<f32>(-385f, -1187f, -203f), true), vec4<u32>(4294967295u, 1u, 1u, 56771u), vec4<i32>(24614i, -39701i, -26927i, -26719i), Struct_1(vec3<f32>(-254f, 760f, 1255f), false), 1u));

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, 0i), vec2<i32>(-11067i, 0i), vec2<i32>(-1i, 30627i), vec2<i32>(2150i, 16216i), vec2<i32>(2147483647i, -36830i), vec2<i32>(-49441i, -4822i), vec2<i32>(-17638i, 20152i), vec2<i32>(i32(-2147483648), -26722i), vec2<i32>(0i, 33478i), vec2<i32>(1i, -15754i), vec2<i32>(i32(-2147483648), -26365i), vec2<i32>(i32(-2147483648), 3716i), vec2<i32>(-50221i, 0i), vec2<i32>(-1i, 37693i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-36096i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 4723i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(34169i, -7317i), vec2<i32>(1i, -9839i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(15669i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(arg_0.a.b, Struct_3(24819u, -(~arg_0.c.x)), arg_0.d.a.x, true);
    let var_1 = all(vec2<bool>(true, true)) | arg_0.a.b;
    global3 = array<vec2<i32>, 26>();
    var var_2 = true || !(!(var_0.b.a > 55089u));
    var var_3 = var_0.b.b;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(var_0.c, 1f), -288f, -2604f), !any(select(vec2<bool>(false, var_1), vec2<bool>(true, true), true)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(634f, var_0.a.x, arg_0.b)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 1701f, arg_0.a.x) - _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -854f, 1768f))))));
    var var_3 = !select(!arg_1.ww, arg_1.zx, arg_1.zy);
    var var_4 = u_input.b.x;
    return all(select(vec2<bool>(all(arg_1.zz), false), !select(vec2<bool>(var_0.b, arg_1.x), vec2<bool>(true, false), false), arg_1.x & any(vec2<bool>(var_0.b, var_0.b)))) | var_0.b;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = vec2<bool>(func_3(func_2(global2[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(true, true, true, true)), false);
    let var_1 = !(!select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), var_0), !vec2<bool>(var_0.x, var_0.x), any(global1[_wgslsmith_index_u32(12016u, 12u)])), var_0, (false || var_0.x) & any(vec3<bool>(var_0.x, var_0.x, var_0.x))));
    let var_2 = 54072u;
    var var_3 = Struct_3(_wgslsmith_mult_u32(u_input.a, (u_input.c >> (reverseBits(var_2) % 32u)) << (~46079u % 32u)), ~arg_0);
    let var_4 = Struct_4(false, Struct_3(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37360u, 53978u, 4294967295u, 40715u), vec4<u32>(u_input.b.x, 4294967295u, var_2, 28399u)), var_2)), var_3.b), -1000f, arg_0 > var_3.b);
    return Struct_4(false, Struct_3(u_input.a, _wgslsmith_add_i32(var_3.b, arg_0)), _wgslsmith_div_f32(var_4.c, -821f), !(!all(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 26>();
    var var_0 = func_1(2147483647i);
    global3 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(global2[_wgslsmith_index_u32(var_0.b.a, 23u)]).a.x), ~(~0u), ~firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.b.b, var_0.b.b, -78424i, -40606i) | vec4<i32>(var_0.b.b, var_0.b.b, var_0.b.b, var_0.b.b))));
}

