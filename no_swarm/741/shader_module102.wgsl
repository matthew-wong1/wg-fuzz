struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(61930u, 8559u, 46005u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 11916u, 4294967295u), vec3<u32>(10483u, 1u, 3193u), vec3<u32>(0u, 4294967295u, 12994u), vec3<u32>(72590u, 6825u, 1u), vec3<u32>(49784u, 1u, 0u), vec3<u32>(46686u, 1u, 5014u), vec3<u32>(0u, 1u, 4811u), vec3<u32>(86776u, 52257u, 29864u), vec3<u32>(73604u, 4294967295u, 0u), vec3<u32>(63280u, 4565u, 9349u), vec3<u32>(1u, 87371u, 0u), vec3<u32>(0u, 8989u, 4633u), vec3<u32>(22224u, 4294967295u, 105780u));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 1u, 10360u, 21404u), vec4<u32>(1u, 6577u, 40345u, 37164u), vec4<u32>(1u, 1u, 30122u, 1u), vec4<u32>(44171u, 1u, 56264u, 1u), vec4<u32>(28861u, 0u, 6546u, 47540u), vec4<u32>(1u, 19684u, 78117u, 4888u), vec4<u32>(1u, 26345u, 1u, 1u), vec4<u32>(4401u, 6439u, 0u, 56969u), vec4<u32>(4294967295u, 0u, 30959u, 43550u), vec4<u32>(1u, 16770u, 4294967295u, 0u), vec4<u32>(7352u, 0u, 0u, 1u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 158944u, 0u), vec4<u32>(0u, 1362u, 1u, 42909u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(7689u, 0u, 25636u, 1632u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    return arg_0;
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x)), arg_0.c, Struct_3(!vec2<bool>(select(false, true, arg_0.d.a.x), arg_0.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.b.x, 1908f, arg_0.c.x, 241f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.c.c.x, arg_0.a.c.c.x, -551f, arg_0.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.d.b)))), arg_0.d.c), select(vec4<bool>(false, true, arg_0.c.x < arg_0.b, func_2(arg_0, func_2(Struct_4(arg_0.a, arg_0.d.b.x, vec3<f32>(241f, 209f, -362f), Struct_3(arg_0.d.c.a.zy, vec4<f32>(arg_0.a.b.x, arg_0.d.b.x, 1220f, -2506f), Struct_1(arg_0.e.wxx, u_input.b, vec2<f32>(-499f, arg_0.b), arg_0.a.a.d)), arg_0.e), vec4<bool>(true, false, true, arg_1), 1u, arg_0.d).e, 0u, arg_0.d).d.a.x), select(arg_0.e, select(select(arg_0.e, arg_0.e, arg_0.e), vec4<bool>(true, arg_1, true, arg_0.d.a.x), arg_0.e.x), vec4<bool>(arg_0.b < 394f, false, true, arg_0.d.c.b > 1i)), arg_0.e));
    global1 = var_0.e;
    let var_1 = Struct_1(vec3<bool>(!(~100636u <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(11722u, arg_0.d.c.d))), arg_1, true), -u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.c.x), var_0.b), 36364u);
    let var_2 = select(_wgslsmith_add_vec4_u32(~(firstTrailingBit(vec4<u32>(arg_0.a.c.d, 13184u, u_input.a.x, 4294967295u)) >> (vec4<u32>(0u, 1u, 21053u, 6031u) % vec4<u32>(32u))), u_input.a), select(global2[_wgslsmith_index_u32(arg_0.a.c.d, 16u)], _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(43717u), reverseBits(120464u), 0u, reverseBits(1u)), firstTrailingBit(~vec4<u32>(arg_0.d.c.d, 4294967295u, u_input.a.x, var_0.a.c.d))), select(var_0.e, !vec4<bool>(true, arg_0.a.d, global1.x, false), select(select(var_0.e, vec4<bool>(var_0.e.x, global1.x, true, var_1.a.x), arg_0.e), !arg_0.e, vec4<bool>(var_1.a.x, arg_0.d.a.x, true, arg_0.d.c.a.x)))), select(vec4<bool>(any(arg_0.a.a.a.zy), false, true, _wgslsmith_f_op_f32(-var_1.c.x) >= _wgslsmith_f_op_f32(-var_1.c.x)), func_2(arg_0, select(vec4<bool>(true, arg_1, false, var_0.d.c.a.x), !vec4<bool>(arg_1, true, false, true), true), abs(4294967295u), arg_0.d).e, vec4<bool>(true, any(vec2<bool>(arg_1, false)), all(vec2<bool>(arg_1, arg_1)), select(arg_0.d.c.d < 4294967295u, any(vec4<bool>(true, arg_0.e.x, var_1.a.x, arg_1)), !var_0.d.a.x))));
    var var_3 = Struct_4(Struct_2(func_2(func_2(func_2(arg_0, vec4<bool>(var_1.a.x, true, true, arg_0.e.x), 88648u, var_0.d), vec4<bool>(false, var_0.a.a.a.x, false, var_0.a.d), arg_0.a.c.d, func_2(var_0, vec4<bool>(arg_1, global1.x, true, true), var_2.x, var_0.d).d), !vec4<bool>(true, true, var_1.a.x, true), 4294967295u, var_0.d).a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -967f) + _wgslsmith_f_op_vec2_f32(-arg_0.d.b.yy)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.a.c.c.x)), var_0.d.c, (_wgslsmith_mod_i32(u_input.b, var_1.b) > var_0.a.a.b) || false), -646f, vec3<f32>(-425f, 1119f, -301f), func_2(var_0, var_0.e, _wgslsmith_mult_u32(var_0.a.a.d, 4294967295u), var_0.d).d, vec4<bool>(select(true, var_0.d.a.x & true, 2147483647i <= arg_0.d.c.b) && arg_0.e.x, true, _wgslsmith_f_op_f32(trunc(-509f)) > _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_1.c.x - 1699f)), !(!var_1.a.x)));
    return Struct_1(var_3.d.c.a, 25118i, _wgslsmith_div_vec2_f32(var_0.c.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b, var_3.b))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, var_3.c.x)))), select(u_input.a.x, 64552u, true));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    var var_0 = Struct_4(Struct_2(func_3(func_2(Struct_4(Struct_2(arg_3, vec2<f32>(arg_1.c.x, -185f), arg_3, arg_2), arg_1.c.x, vec3<f32>(567f, -1422f, arg_3.c.x), Struct_3(vec2<bool>(true, false), vec4<f32>(466f, arg_3.c.x, 345f, -528f), Struct_1(vec3<bool>(global1.x, global1.x, true), -11678i, arg_1.c, 14239u)), vec4<bool>(true, true, true, global1.x)), select(vec4<bool>(arg_1.a.x, arg_2, global1.x, arg_2), vec4<bool>(false, true, false, global1.x), vec4<bool>(false, arg_2, false, true)), ~u_input.a.x, Struct_3(arg_3.a.xx, vec4<f32>(1174f, 590f, 894f, 1243f), arg_1)), true), vec2<f32>(_wgslsmith_f_op_f32(sign(1095f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * -339f)), func_2(Struct_4(Struct_2(arg_3, vec2<f32>(arg_1.c.x, 790f), arg_1, true), arg_1.c.x, vec3<f32>(-1000f, arg_1.c.x, 1703f), Struct_3(vec2<bool>(arg_1.a.x, global1.x), vec4<f32>(arg_1.c.x, arg_1.c.x, arg_3.c.x, arg_3.c.x), Struct_1(vec3<bool>(arg_3.a.x, global1.x, true), -36954i, vec2<f32>(arg_1.c.x, -588f), u_input.a.x)), !vec4<bool>(arg_3.a.x, false, global1.x, false)), func_2(Struct_4(Struct_2(arg_1, arg_3.c, Struct_1(global1.xyw, arg_1.b, vec2<f32>(arg_1.c.x, -576f), 0u), true), 1543f, vec3<f32>(563f, 846f, arg_1.c.x), Struct_3(arg_3.a.yx, vec4<f32>(368f, 656f, -108f, -713f), Struct_1(vec3<bool>(false, arg_2, false), -26785i, arg_1.c, u_input.a.x)), vec4<bool>(false, global1.x, global1.x, arg_1.a.x)), !vec4<bool>(false, arg_3.a.x, true, arg_3.a.x), 1u, func_2(Struct_4(Struct_2(Struct_1(global1.yyw, arg_0, vec2<f32>(1000f, -786f), arg_3.d), arg_3.c, arg_3, arg_1.a.x), arg_3.c.x, vec3<f32>(-1208f, arg_3.c.x, -1338f), Struct_3(vec2<bool>(arg_3.a.x, global1.x), vec4<f32>(arg_1.c.x, arg_1.c.x, 260f, arg_1.c.x), Struct_1(global1.wzy, u_input.b, vec2<f32>(arg_1.c.x, 1156f), arg_3.d)), vec4<bool>(false, arg_2, false, global1.x)), vec4<bool>(false, true, arg_2, arg_2), arg_3.d, Struct_3(global1.zy, vec4<f32>(arg_3.c.x, -1162f, 878f, -287f), arg_3)).d).e, _wgslsmith_clamp_u32(10723u, firstTrailingBit(51036u), max(arg_3.d, 1u)), func_2(Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), -60188i, arg_3.c, 10434u), arg_3.c, arg_1, arg_3.a.x), arg_3.c.x, vec3<f32>(-1000f, arg_1.c.x, -1469f), Struct_3(vec2<bool>(true, arg_1.a.x), vec4<f32>(2294f, arg_1.c.x, 1398f, 1363f), Struct_1(vec3<bool>(arg_2, false, arg_1.a.x), arg_1.b, vec2<f32>(-734f, 454f), 1337u)), vec4<bool>(true, true, global1.x, arg_2)), !vec4<bool>(arg_3.a.x, global1.x, global1.x, global1.x), _wgslsmith_add_u32(arg_1.d, 4294967295u), Struct_3(arg_3.a.xy, vec4<f32>(-1124f, 272f, 260f, arg_3.c.x), arg_3)).d).d.c, any(!select(vec2<bool>(arg_3.a.x, arg_1.a.x), vec2<bool>(false, arg_2), true))), 392f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.x, arg_1.c.x, arg_3.c.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(443f, arg_3.c.x, arg_1.c.x), vec3<f32>(arg_3.c.x, arg_1.c.x, -287f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.x, arg_1.c.x, -393f) + vec3<f32>(arg_1.c.x, arg_1.c.x, arg_3.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.x, 861f, arg_1.c.x), vec3<f32>(arg_3.c.x, 1631f, 2206f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-439f, arg_3.c.x, arg_3.c.x) - vec3<f32>(arg_3.c.x, arg_1.c.x, arg_3.c.x)))))), Struct_3(select(!vec2<bool>(arg_3.a.x, false), !vec2<bool>(global1.x, arg_1.a.x), select(global1.yw, func_3(Struct_4(Struct_2(arg_3, vec2<f32>(arg_1.c.x, arg_3.c.x), arg_3, false), arg_1.c.x, vec3<f32>(arg_3.c.x, arg_1.c.x, -552f), Struct_3(vec2<bool>(true, arg_2), vec4<f32>(-732f, 1000f, arg_1.c.x, 1188f), arg_3), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_2)), global1.x).a.yx, u_input.a.x < arg_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(483f, arg_3.c.x, arg_1.c.x, 147f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(525f, -874f, arg_3.c.x, arg_1.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, -2375f)))), arg_1), select(vec4<bool>(_wgslsmith_div_u32(arg_1.d, 35574u) > 59704u, true && (global1.x & true), false, arg_1.a.x), select(!(!vec4<bool>(arg_2, arg_1.a.x, true, true)), func_2(func_2(Struct_4(Struct_2(arg_1, arg_3.c, arg_1, false), arg_1.c.x, vec3<f32>(arg_3.c.x, arg_1.c.x, 1153f), Struct_3(vec2<bool>(global1.x, arg_3.a.x), vec4<f32>(791f, 1391f, arg_3.c.x, -104f), arg_1), vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, global1.x)), vec4<bool>(arg_3.a.x, arg_3.a.x, true, global1.x), 50091u, Struct_3(vec2<bool>(arg_1.a.x, true), vec4<f32>(506f, -178f, 1000f, arg_1.c.x), Struct_1(vec3<bool>(arg_3.a.x, arg_2, arg_1.a.x), arg_1.b, vec2<f32>(arg_3.c.x, -786f), arg_1.d))), vec4<bool>(global1.x, true, arg_1.a.x, arg_2), ~arg_3.d, Struct_3(arg_1.a.zy, vec4<f32>(978f, -113f, arg_1.c.x, arg_1.c.x), arg_1)).e, select(vec4<bool>(true, arg_1.a.x, false, false), !vec4<bool>(arg_3.a.x, arg_1.a.x, global1.x, false), func_2(Struct_4(Struct_2(Struct_1(arg_3.a, arg_3.b, arg_3.c, 39666u), arg_1.c, arg_3, arg_3.a.x), 547f, vec3<f32>(-551f, arg_1.c.x, arg_1.c.x), Struct_3(vec2<bool>(arg_1.a.x, true), vec4<f32>(arg_3.c.x, -126f, 510f, arg_1.c.x), Struct_1(arg_1.a, -2453i, vec2<f32>(arg_3.c.x, arg_1.c.x), arg_3.d)), vec4<bool>(arg_1.a.x, arg_2, false, arg_1.a.x)), vec4<bool>(global1.x, arg_1.a.x, arg_1.a.x, arg_3.a.x), 1u, Struct_3(vec2<bool>(arg_3.a.x, arg_2), vec4<f32>(arg_1.c.x, 1000f, 1000f, arg_1.c.x), arg_1)).e)), true));
    global0 = array<vec3<u32>, 15>();
    var_0 = func_2(Struct_4(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-arg_1.c.x))), vec3<f32>(func_3(func_2(Struct_4(Struct_2(Struct_1(var_0.d.c.a, 20704i, var_0.c.xy, arg_3.d), vec2<f32>(var_0.c.x, arg_1.c.x), Struct_1(global1.wxx, -19040i, vec2<f32>(1259f, arg_3.c.x), 725u), true), var_0.b, var_0.d.b.yyx, var_0.d, var_0.e), var_0.e, u_input.a.x, Struct_3(arg_1.a.yx, var_0.d.b, Struct_1(arg_1.a, arg_3.b, arg_3.c, var_0.d.c.d))), arg_2).c.x, _wgslsmith_div_f32(var_0.a.a.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - 437f)), var_0.d, var_0.e), vec4<bool>(arg_2, var_0.a.c.a.x, var_0.a.c.a.x, true), _wgslsmith_clamp_u32(u_input.a.x & ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.c.d, 51036u, var_0.d.c.d), global0[_wgslsmith_index_u32(103629u, 15u)]), 1872u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u), u_input.a.x)), func_2(func_2(func_2(Struct_4(var_0.a, var_0.b, vec3<f32>(261f, arg_3.c.x, arg_1.c.x), var_0.d, vec4<bool>(arg_2, false, arg_2, false)), !vec4<bool>(var_0.a.d, arg_2, false, var_0.a.a.a.x), 105u & arg_3.d, var_0.d), var_0.e, arg_3.d, func_2(func_2(Struct_4(var_0.a, -1196f, vec3<f32>(var_0.b, -1018f, 1000f), var_0.d, var_0.e), vec4<bool>(arg_3.a.x, true, arg_3.a.x, arg_1.a.x), var_0.d.c.d, var_0.d), var_0.e, arg_1.d, var_0.d).d), vec4<bool>(true, all(func_3(Struct_4(var_0.a, 1259f, var_0.d.b.yxz, var_0.d, var_0.e), false).a.xz), any(!vec2<bool>(arg_1.a.x, false)), true), 29838u, var_0.d).d);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 15>();
    let var_0 = !all(!select(vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(false, global1.x, global1.x, true), func_1(u_input.b, Struct_1(global1.ywx, u_input.b, vec2<f32>(574f, -790f), 44373u), global1.x, Struct_1(global1.yyy, u_input.b, vec2<f32>(1000f, 1000f), 2913u))));
    global0 = array<vec3<u32>, 15>();
    let var_1 = vec3<f32>(func_3(Struct_4(func_2(func_2(Struct_4(Struct_2(Struct_1(vec3<bool>(false, var_0, true), u_input.b, vec2<f32>(-247f, -150f), 4294967295u), vec2<f32>(921f, 1163f), Struct_1(global1.zzw, 0i, vec2<f32>(1048f, 411f), u_input.a.x), true), 538f, vec3<f32>(-779f, -1000f, 316f), Struct_3(global1.yz, vec4<f32>(-139f, -167f, 408f, -656f), Struct_1(vec3<bool>(true, global1.x, var_0), u_input.b, vec2<f32>(1453f, -1526f), 57287u)), vec4<bool>(false, global1.x, true, true)), vec4<bool>(global1.x, global1.x, global1.x, global1.x), u_input.a.x, Struct_3(global1.xw, vec4<f32>(174f, -296f, -1000f, 484f), Struct_1(vec3<bool>(global1.x, false, global1.x), u_input.b, vec2<f32>(-1118f, -520f), 40418u))), func_2(Struct_4(Struct_2(Struct_1(global1.zxx, -11996i, vec2<f32>(571f, -460f), u_input.a.x), vec2<f32>(975f, -123f), Struct_1(global1.wwx, u_input.b, vec2<f32>(-627f, -204f), u_input.a.x), global1.x), -1133f, vec3<f32>(-367f, -1425f, 1342f), Struct_3(vec2<bool>(var_0, false), vec4<f32>(-1475f, 1308f, 1843f, 878f), Struct_1(global1.yxw, u_input.b, vec2<f32>(259f, 806f), u_input.a.x)), vec4<bool>(true, var_0, global1.x, true)), vec4<bool>(false, true, global1.x, false), u_input.a.x, Struct_3(global1.zy, vec4<f32>(493f, -468f, 130f, 375f), Struct_1(vec3<bool>(var_0, var_0, global1.x), -1i, vec2<f32>(-760f, -1000f), 64557u))).e, 1u, Struct_3(vec2<bool>(false, false), vec4<f32>(-1424f, -319f, 838f, 989f), Struct_1(vec3<bool>(true, global1.x, false), u_input.b, vec2<f32>(1000f, -355f), 26414u))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), vec3<f32>(_wgslsmith_f_op_f32(select(1578f, 609f, false)), -1000f, 558f), Struct_3(vec2<bool>(false, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -181f, 200f, -294f)), func_3(Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, global1.x), u_input.b, vec2<f32>(285f, -103f), 3976u), vec2<f32>(1764f, 718f), Struct_1(global1.zzx, u_input.b, vec2<f32>(-221f, 137f), u_input.a.x), true), 195f, vec3<f32>(180f, 1227f, -839f), Struct_3(vec2<bool>(global1.x, global1.x), vec4<f32>(-1000f, -171f, 366f, 876f), Struct_1(vec3<bool>(var_0, false, false), 2147483647i, vec2<f32>(127f, 958f), 31089u)), vec4<bool>(global1.x, true, true, false)), var_0)), vec4<bool>(false, u_input.b > u_input.b, all(vec2<bool>(false, var_0)), false)), global1.x).c.x, -889f, -734f);
    var var_2 = vec2<u32>(127252u, 0u);
    var var_3 = select(func_3(func_2(func_2(Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), 1i, var_1.yz, 2116u), var_1.yy, Struct_1(vec3<bool>(true, var_0, global1.x), u_input.b, vec2<f32>(150f, var_1.x), 0u), var_0), var_1.x, var_1, Struct_3(vec2<bool>(false, global1.x), vec4<f32>(763f, var_1.x, -416f, var_1.x), Struct_1(vec3<bool>(var_0, global1.x, true), -21551i, var_1.zz, u_input.a.x)), vec4<bool>(global1.x, false, true, var_0)), !vec4<bool>(false, var_0, true, false), u_input.a.x, Struct_3(vec2<bool>(global1.x, false), vec4<f32>(var_1.x, -1082f, var_1.x, 107f), Struct_1(vec3<bool>(global1.x, global1.x, var_0), -24160i, vec2<f32>(var_1.x, -862f), 0u))), !(!vec4<bool>(true, false, var_0, var_0)), _wgslsmith_add_u32(u_input.a.x, func_3(Struct_4(Struct_2(Struct_1(vec3<bool>(global1.x, false, global1.x), -1i, var_1.xy, 0u), vec2<f32>(-257f, var_1.x), Struct_1(global1.wwx, 2147483647i, var_1.zx, 34622u), false), -669f, var_1, Struct_3(vec2<bool>(global1.x, true), vec4<f32>(-1495f, 743f, var_1.x, var_1.x), Struct_1(vec3<bool>(global1.x, false, true), u_input.b, var_1.zz, var_2.x)), vec4<bool>(false, true, true, false)), var_0).d), func_2(Struct_4(Struct_2(Struct_1(vec3<bool>(global1.x, true, true), -1i, vec2<f32>(var_1.x, -697f), 0u), vec2<f32>(var_1.x, var_1.x), Struct_1(vec3<bool>(false, true, var_0), u_input.b, vec2<f32>(var_1.x, var_1.x), 4294967295u), true), var_1.x, var_1, Struct_3(vec2<bool>(var_0, var_0), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(vec3<bool>(global1.x, true, var_0), u_input.b, vec2<f32>(var_1.x, 2488f), 0u)), vec4<bool>(global1.x, true, global1.x, true)), vec4<bool>(true, true, true, true), 1u, func_2(Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, var_0), u_input.b, vec2<f32>(var_1.x, var_1.x), u_input.a.x), vec2<f32>(var_1.x, 2219f), Struct_1(vec3<bool>(false, var_0, var_0), u_input.b, vec2<f32>(-2255f, var_1.x), 49955u), true), -304f, vec3<f32>(var_1.x, 787f, -548f), Struct_3(global1.wz, vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(global1.wxy, u_input.b, vec2<f32>(var_1.x, 373f), var_2.x)), vec4<bool>(global1.x, true, true, var_0)), vec4<bool>(global1.x, true, false, false), 7426u, Struct_3(vec2<bool>(false, false), vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x), Struct_1(vec3<bool>(var_0, true, false), 16477i, var_1.xz, 0u))).d).d), var_0).a.yx, global1.xz, !(!global1.wx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -11566i), vec2<i32>(-1i, u_input.b)), max(-37491i, u_input.b)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i) & vec3<i32>(u_input.b, -2147483647i, u_input.b), select(vec3<i32>(-39297i, 40231i, u_input.b), vec3<i32>(14496i, -59224i, -2147483647i), vec3<bool>(var_0, true, true)))));
}

