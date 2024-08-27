struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(-1066f, -472f), i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(-333f, -933f), 1i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1622f, 745f), 2147483647i, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-1006f, -1454f), 10820i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1000f, -1238f), -9408i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(840f, 1315f), 2147483647i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-2209f, -997f), 1i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(181f, 848f), -1i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(1487f, -114f), 62189i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(2175f, -436f), -16173i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(-609f, -370f), -1i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-1012f, 1032f), 2147483647i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(965f, -785f), -1i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(1201f, 1335f), 31871i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-944f, -248f), -14373i, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(-1000f, -1000f), 0i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-1274f, 122f), 0i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-725f, -645f), i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-451f, 515f), 1i, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(-203f, -269f), 2147483647i, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-677f, -1572f), -13244i, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-799f, -543f), i32(-2147483648), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-1256f, 384f), i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(-370f, -2025f), 1i, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-781f, -2601f), -38953i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1000f, -1192f), -1i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-1173f, -434f), -1i, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1116f, -729f), 34073i, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(-1000f, 236f), 1i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(878f, -334f), 0i, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-312f, -1454f), 2147483647i, vec3<bool>(false, true, true)));

var<private> global2: vec3<i32> = vec3<i32>(13702i, 2147483647i, -38250i);

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<f32>(654f, -232f, 604f, 302f), Struct_1(vec2<f32>(-582f, -1837f), 0i, vec3<bool>(true, false, false)), -398f), Struct_2(vec4<f32>(506f, 346f, 1878f, -240f), Struct_1(vec2<f32>(1336f, 411f), -14593i, vec3<bool>(true, false, false)), -420f), Struct_2(vec4<f32>(-500f, 797f, 113f, -1174f), Struct_1(vec2<f32>(-543f, -147f), -45889i, vec3<bool>(true, true, false)), -950f), Struct_2(vec4<f32>(1083f, -1599f, -182f, -1252f), Struct_1(vec2<f32>(-1085f, -134f), 17954i, vec3<bool>(false, true, true)), 860f), Struct_2(vec4<f32>(-1612f, -228f, -850f, -899f), Struct_1(vec2<f32>(1000f, -1261f), -1i, vec3<bool>(false, false, false)), -739f), Struct_2(vec4<f32>(171f, -1000f, 365f, -774f), Struct_1(vec2<f32>(979f, 420f), 16273i, vec3<bool>(true, false, false)), -924f), Struct_2(vec4<f32>(679f, -408f, -872f, 1089f), Struct_1(vec2<f32>(963f, -532f), 2147483647i, vec3<bool>(false, false, true)), -1027f), Struct_2(vec4<f32>(-751f, -661f, -267f, 239f), Struct_1(vec2<f32>(-366f, -1828f), 0i, vec3<bool>(false, false, false)), -419f), Struct_2(vec4<f32>(-1768f, -319f, -1516f, 962f), Struct_1(vec2<f32>(-892f, -132f), -376i, vec3<bool>(false, false, false)), -710f), Struct_2(vec4<f32>(-315f, 331f, 1293f, 652f), Struct_1(vec2<f32>(904f, -452f), i32(-2147483648), vec3<bool>(true, false, false)), 1239f), Struct_2(vec4<f32>(-1123f, 221f, -1337f, -1720f), Struct_1(vec2<f32>(-900f, -1189f), 2147483647i, vec3<bool>(false, false, true)), -656f), Struct_2(vec4<f32>(-179f, -683f, 1354f, 882f), Struct_1(vec2<f32>(-933f, -352f), 1i, vec3<bool>(true, false, false)), -638f), Struct_2(vec4<f32>(-909f, 444f, -106f, -1512f), Struct_1(vec2<f32>(-325f, -1000f), -6373i, vec3<bool>(false, false, true)), 1821f), Struct_2(vec4<f32>(-411f, 817f, -899f, -1788f), Struct_1(vec2<f32>(1068f, 328f), -29363i, vec3<bool>(false, true, true)), 342f), Struct_2(vec4<f32>(1121f, 410f, 123f, -942f), Struct_1(vec2<f32>(625f, 749f), -23788i, vec3<bool>(false, true, false)), -1734f), Struct_2(vec4<f32>(-625f, -736f, 352f, 892f), Struct_1(vec2<f32>(-1000f, 1103f), 51811i, vec3<bool>(false, true, false)), 417f), Struct_2(vec4<f32>(1571f, -1000f, 1199f, 680f), Struct_1(vec2<f32>(1801f, -149f), 12213i, vec3<bool>(true, false, false)), -1125f), Struct_2(vec4<f32>(-1006f, 162f, 1000f, -697f), Struct_1(vec2<f32>(-189f, -287f), 0i, vec3<bool>(false, false, true)), 1915f), Struct_2(vec4<f32>(-1501f, -1057f, -1000f, -1000f), Struct_1(vec2<f32>(-330f, 405f), -2840i, vec3<bool>(false, false, false)), -1000f), Struct_2(vec4<f32>(1088f, 236f, 629f, 989f), Struct_1(vec2<f32>(-678f, 299f), 0i, vec3<bool>(false, true, true)), -745f), Struct_2(vec4<f32>(153f, 339f, 1097f, -1714f), Struct_1(vec2<f32>(-476f, -446f), -4107i, vec3<bool>(true, false, false)), 940f), Struct_2(vec4<f32>(793f, -1000f, -1651f, 2454f), Struct_1(vec2<f32>(710f, 895f), -1i, vec3<bool>(true, true, false)), -1676f), Struct_2(vec4<f32>(190f, 773f, -1000f, 215f), Struct_1(vec2<f32>(-592f, -268f), 0i, vec3<bool>(true, true, false)), -1316f), Struct_2(vec4<f32>(-849f, 1138f, -953f, -885f), Struct_1(vec2<f32>(-1390f, -984f), -11568i, vec3<bool>(true, false, false)), -1753f), Struct_2(vec4<f32>(444f, 712f, 103f, 1438f), Struct_1(vec2<f32>(-669f, -1170f), -5799i, vec3<bool>(false, false, false)), -238f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> f32 {
    global0 = array<vec4<i32>, 26>();
    global3 = array<Struct_2, 25>();
    var var_0 = global3[_wgslsmith_index_u32(~(~(~u_input.a)), 25u)];
    let var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(-704f - -1000f) > var_0.c, var_0.b.c.x), !vec2<bool>(var_0.b.c.x, select(var_0.b.c.x, var_0.b.c.x, false)), var_0.b.c.xy);
    var var_2 = vec3<i32>(1i, ~(~(i32(-1i) * -1i)), _wgslsmith_dot_vec3_i32(~(-(vec3<i32>(2147483647i, var_0.b.b, global2.x) << (vec3<u32>(u_input.a, 26289u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(select(~u_input.c.zwy, vec3<i32>(global2.x, -2147483647i, global2.x), var_0.b.c.x), abs(vec3<i32>(1i, -7083i, u_input.c.x)))));
    return _wgslsmith_f_op_f32(1641f * _wgslsmith_f_op_f32(trunc(var_0.a.x)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a.x, -1698f) - arg_0.a.zy))), firstTrailingBit(select(~u_input.e, _wgslsmith_add_i32(2147483647i, u_input.b), true)), !vec3<bool>(false, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, arg_2, false)))), arg_0.a.x);
    global2 = ~vec3<i32>(_wgslsmith_div_i32(-7284i, -2147483647i), 6827i, 1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.xx);
    let var_2 = _wgslsmith_f_op_f32(arg_0.c - arg_0.b.a.x);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f + var_0.c))) + -1826f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(var_1.x, var_1.x)))) - 748f));
    return vec3<i32>(9284i | arg_0.b.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.zww, u_input.c.yyz, u_input.c.xzw), select(vec3<i32>(var_0.b.b, 0i, var_0.b.b), vec3<i32>(-44940i, 0i, -1i), var_0.b.c.x)) >> (u_input.a % 32u), u_input.d), -43764i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.b.c.x;
    let var_1 = 1301u;
    global2 = func_3(arg_0, 40986i, !((-u_input.e >= min(arg_0.b.b, global2.x)) == !var_0));
    global0 = array<vec4<i32>, 26>();
    global2 = func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(arg_0.a)), vec4<f32>(539f, arg_0.a.x, 360f, arg_1.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a)), max(u_input.e, -34099i), vec3<bool>(arg_0.b.c.x, true, all(vec3<bool>(arg_0.b.c.x, true, arg_1.c.x)))), -2069f), 17697i, arg_1.c.x);
    return arg_3.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 26>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1631f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(379f, -741f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f)) - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(u_input.a, 25u)], Struct_1(vec2<f32>(-559f, 728f), u_input.e, vec3<bool>(true, true, false)), vec3<u32>(u_input.a, 4294967295u, 18529u), global3[_wgslsmith_index_u32(u_input.a, 25u)])) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) * -427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2788f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2446f, -475f, false)) - _wgslsmith_f_op_f32(-805f - -577f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, -1120f, 1571f, -1999f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, 916f, 620f, -368f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1491f, 1049f) - var_0.yz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.wx * var_0.xw))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 821f), vec2<f32>(-593f, var_0.x))), vec2<f32>(-1000f, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz * vec2<f32>(-543f, -871f))))))));
}

