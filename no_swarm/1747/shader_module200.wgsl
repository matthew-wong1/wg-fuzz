struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, false, true), 489f), Struct_1(vec3<bool>(true, true, true), 163f), 45279i), -11150i), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, true), -1221f), Struct_1(vec3<bool>(true, true, true), -1412f), 19991i), i32(-2147483648)), Struct_3(13839i, Struct_2(Struct_1(vec3<bool>(false, false, false), -1220f), Struct_1(vec3<bool>(false, false, false), -1422f), -1i), -57500i), Struct_3(-23919i, Struct_2(Struct_1(vec3<bool>(true, false, true), -721f), Struct_1(vec3<bool>(true, true, false), 281f), 9060i), i32(-2147483648)), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, false), -103f), Struct_1(vec3<bool>(false, true, false), -424f), 1i), 0i), Struct_3(71915i, Struct_2(Struct_1(vec3<bool>(false, true, true), -1051f), Struct_1(vec3<bool>(false, false, true), 368f), 2147483647i), -24418i), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(true, false, false), 937f), Struct_1(vec3<bool>(false, true, false), -509f), -16910i), 1i), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(true, true, false), -151f), Struct_1(vec3<bool>(true, true, true), 500f), 0i), i32(-2147483648)), Struct_3(-3130i, Struct_2(Struct_1(vec3<bool>(true, false, false), -2315f), Struct_1(vec3<bool>(false, true, true), -1401f), 0i), 0i), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(true, false, false), 1000f), Struct_1(vec3<bool>(false, true, false), 1000f), i32(-2147483648)), -2808i), Struct_3(-26071i, Struct_2(Struct_1(vec3<bool>(true, true, false), 2730f), Struct_1(vec3<bool>(true, false, true), 1113f), 15077i), 10243i), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, false), 470f), Struct_1(vec3<bool>(false, false, false), -144f), -15636i), 1i), Struct_3(46833i, Struct_2(Struct_1(vec3<bool>(false, true, false), -1000f), Struct_1(vec3<bool>(true, false, true), -2621f), -18896i), 19831i), Struct_3(-31090i, Struct_2(Struct_1(vec3<bool>(true, false, false), -1947f), Struct_1(vec3<bool>(false, true, true), 264f), -30767i), 1i), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, false, false), 357f), Struct_1(vec3<bool>(true, true, true), -167f), -1i), 0i), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(true, false, true), 660f), Struct_1(vec3<bool>(false, false, true), -1841f), 8260i), -14385i), Struct_3(10298i, Struct_2(Struct_1(vec3<bool>(false, true, true), -364f), Struct_1(vec3<bool>(true, false, true), -715f), -5113i), -1i), Struct_3(-10968i, Struct_2(Struct_1(vec3<bool>(false, true, false), 287f), Struct_1(vec3<bool>(false, true, false), -2081f), -1i), -1655i), Struct_3(-31108i, Struct_2(Struct_1(vec3<bool>(true, false, true), -1276f), Struct_1(vec3<bool>(false, false, false), -231f), -1i), -4040i), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, true, true), -667f), Struct_1(vec3<bool>(false, false, true), -545f), -21944i), 10996i), Struct_3(-31613i, Struct_2(Struct_1(vec3<bool>(false, true, false), -1000f), Struct_1(vec3<bool>(true, false, false), 1785f), 1i), 2147483647i), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, true), -635f), Struct_1(vec3<bool>(false, true, false), 1681f), 36330i), 12752i), Struct_3(-46124i, Struct_2(Struct_1(vec3<bool>(false, true, false), 446f), Struct_1(vec3<bool>(true, false, false), 354f), 26007i), 63693i), Struct_3(384i, Struct_2(Struct_1(vec3<bool>(false, true, true), 719f), Struct_1(vec3<bool>(true, false, false), 1000f), i32(-2147483648)), 17725i), Struct_3(38609i, Struct_2(Struct_1(vec3<bool>(false, true, false), -510f), Struct_1(vec3<bool>(false, false, false), -419f), i32(-2147483648)), i32(-2147483648)), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(false, false, false), -1173f), Struct_1(vec3<bool>(true, false, true), -386f), -48811i), -36424i), Struct_3(2592i, Struct_2(Struct_1(vec3<bool>(false, true, false), 1011f), Struct_1(vec3<bool>(true, false, true), 965f), i32(-2147483648)), -10005i), Struct_3(-47238i, Struct_2(Struct_1(vec3<bool>(true, false, true), -382f), Struct_1(vec3<bool>(false, false, false), 207f), -41976i), 2147483647i));

var<private> global1: array<vec3<u32>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = 245f;
    global0 = array<Struct_3, 28>();
    global1 = array<vec3<u32>, 3>();
    var var_1 = vec2<bool>(arg_0, !arg_0);
    var var_2 = Struct_1(vec3<bool>(arg_0, true, !(u_input.b.x >= 87176u) & true), _wgslsmith_div_f32(1270f, var_0));
    return 20864i;
}

fn func_3() -> vec3<bool> {
    var var_0 = true;
    var_0 = any(vec3<bool>(true, all(vec2<bool>(true, true)), true)) | true;
    global1 = array<vec3<u32>, 3>();
    let var_1 = 37668u <= _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(30927u, u_input.a.x)) >> (min(select(vec2<u32>(u_input.b.x, 15613u), u_input.b.zy, false), u_input.a.xy << (u_input.a.xy % vec2<u32>(32u))) % vec2<u32>(32u)), select(min(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.yw), u_input.a.xx), countOneBits(vec2<u32>(43531u, u_input.a.x)), all(vec3<bool>(false, false, false))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    return select(!var_2.b.a.a, !(!vec3<bool>(!var_2.b.b.a.x, all(vec4<bool>(true, var_2.b.a.a.x, var_1, var_2.b.a.a.x)), var_1)), vec3<bool>(false & var_1, var_1, !var_2.b.b.a.x));
}

fn func_2() -> Struct_3 {
    global1 = array<vec3<u32>, 3>();
    global0 = array<Struct_3, 28>();
    let var_0 = any(func_3());
    global0 = array<Struct_3, 28>();
    let var_1 = Struct_5(!vec4<bool>(var_0, (false | var_0) && any(vec3<bool>(false, var_0, false)), all(!vec2<bool>(false, var_0)), all(!vec4<bool>(var_0, var_0, true, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1520f)))), vec4<bool>(false, false, true, var_0), func_3().x, -421i);
    return Struct_3(-(select(firstTrailingBit(-14410i), ~var_1.e, !var_1.a.x) >> (min(~u_input.b.x, u_input.a.x) % 32u)), Struct_2(Struct_1(!vec3<bool>(var_0, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-413f)))), Struct_1(vec3<bool>(true, true, true), var_1.b), u_input.d), _wgslsmith_sub_i32(-max(-2147483647i, ~u_input.d), 2147483647i));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(~12883i, arg_3, ~(-(3339i << (u_input.a.x % 32u))) >> (~(14585u << (~u_input.a.x % 32u)) % 32u));
    let var_1 = var_0;
    var var_2 = true;
    var var_3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(_wgslsmith_div_u32(24796u, 55911u), 3110u, all(arg_0.b)), 1u), 6199u), 0u);
    var_3 = firstLeadingBit(u_input.a.zx) & u_input.b.xw;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<i32>(i32(-1i) * -func_1(false), 1i, u_input.d), firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, u_input.c.x), vec4<i32>(1i, 20525i, -19331i, 21767i))), 2147483647i, ~_wgslsmith_mod_i32(u_input.d, u_input.d))));
    let var_1 = ~countOneBits(vec4<i32>(u_input.c.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, u_input.c.x), vec4<i32>(u_input.d, var_0.x, -1i, var_0.x))), _wgslsmith_div_i32(~0i, abs(u_input.d)), _wgslsmith_mult_i32(22097i, _wgslsmith_mult_i32(u_input.d, 2147483647i))));
    var var_2 = func_4(Struct_4(func_2(), vec4<bool>(select(true, any(vec3<bool>(true, false, false)), true), true, true, select(func_3().x, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1290f - -444f), _wgslsmith_div_f32(-1000f, 135f), _wgslsmith_f_op_f32(min(-585f, -152f))))), func_3().x, func_2().b);
    var var_3 = _wgslsmith_sub_u32(u_input.b.x, ~139251u);
    var_2 = func_4(func_4(func_4(Struct_4(func_2(), var_2.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.b.a.b, -2379f, 128f), vec3<f32>(var_2.a.b.a.b, var_2.a.b.b.b, 752f), var_2.a.b.a.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.b.b.b, -1863f, -1753f) - vec3<f32>(190f, var_2.a.b.b.b, -109f))), !func_3().x, Struct_2(Struct_1(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), 1042f), Struct_1(vec3<bool>(var_2.b.x, true, var_2.b.x), -318f), 0i >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(168f)), -1000f, _wgslsmith_f_op_f32(-var_2.a.b.a.b))), all(vec2<bool>(var_2.a.b.b.a.x, false)), var_2.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(591f, 1574f, 1076f), vec3<f32>(var_2.a.b.a.b, var_2.a.b.b.b, 1966f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.b.a.b, 635f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-782f, 532f, var_2.a.b.a.b))), vec3<f32>(-1275f, -120f, 1590f)), var_2.a.b.a.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(543f, var_2.a.b.b.b, var_2.a.b.b.b), vec3<f32>(834f, var_2.a.b.b.b, var_2.a.b.a.b), var_2.a.b.a.a)))))), u_input.c.x != ~(~1i), var_2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1492f), var_2.a.b.b.b);
}

