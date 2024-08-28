struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 341f, vec3<f32>(-726f, -485f, 1000f), 651f), vec3<bool>(false, false, false), true), 7627i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), -151f, vec3<f32>(491f, 1000f, 1069f), 257f), vec3<bool>(false, true, false), false), -1i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 289f, vec3<f32>(-930f, 354f, 466f), 2154f), vec3<bool>(true, false, true), false), -38992i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), 1186f, vec3<f32>(1301f, 1220f, 477f), -820f), vec3<bool>(false, true, false), false), -12174i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 1948f, vec3<f32>(-123f, 1435f, 1455f), -1358f), vec3<bool>(false, false, true), false), 68409i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 119f, vec3<f32>(507f, -122f, 1569f), -1239f), vec3<bool>(false, true, false), false), 62795i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 730f, vec3<f32>(459f, 1000f, 334f), 1413f), vec3<bool>(false, true, true), false), 23287i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 1357f, vec3<f32>(1025f, 913f, -2580f), -410f), vec3<bool>(true, false, false), false), 2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 1292f, vec3<f32>(-1968f, -1119f, -1302f), -1301f), vec3<bool>(true, false, false), true), -1i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 980f, vec3<f32>(359f, 997f, 780f), 926f), vec3<bool>(false, true, false), false), 7710i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), 574f, vec3<f32>(-966f, 807f, -1061f), -437f), vec3<bool>(false, false, true), true), 42752i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), -1000f, vec3<f32>(-788f, -1924f, -1563f), -1000f), vec3<bool>(true, false, false), false), 2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 1083f, vec3<f32>(-1574f, -823f, -266f), -391f), vec3<bool>(false, true, false), false), -1520i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), -1000f, vec3<f32>(341f, 1000f, -194f), -186f), vec3<bool>(true, false, false), true), 53058i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), -381f, vec3<f32>(1188f, 575f, -712f), 110f), vec3<bool>(true, true, false), false), 2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 1576f, vec3<f32>(372f, 488f, 740f), 590f), vec3<bool>(false, true, true), false), 1i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), -1019f, vec3<f32>(-280f, 308f, 1371f), -1014f), vec3<bool>(true, true, true), true), -28631i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), -643f, vec3<f32>(1000f, 1527f, 2143f), -1511f), vec3<bool>(false, true, true), true), -13993i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), -1937f, vec3<f32>(126f, -871f, -922f), 1292f), vec3<bool>(false, true, false), false), 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 2389f, vec3<f32>(1049f, 1000f, -2512f), 904f), vec3<bool>(true, false, true), false), 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 1528f, vec3<f32>(1325f, 1117f, -432f), 1068f), vec3<bool>(false, false, false), true), -55453i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), -678f, vec3<f32>(-790f, -1001f, 2031f), -257f), vec3<bool>(false, true, false), false), 46707i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), -2233f, vec3<f32>(745f, -720f, 1208f), 975f), vec3<bool>(true, true, false), false), 0i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_1.a.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), -451f));
    var var_2 = firstTrailingBit(4294967295u);
    let var_3 = arg_2.a;
    return vec2<bool>(!var_3.a.x, all(vec2<bool>(false, true)));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    let var_0 = vec4<bool>(all(vec2<bool>(true, true)), all(func_2(0u, Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 1046f, vec3<f32>(316f, 936f, 752f), -657f), vec3<bool>(false, false, true), false), ~u_input.d.x), Struct_2(Struct_1(vec3<bool>(false, true, true), 914f, vec3<f32>(-313f, -229f, 341f), -2013f), vec3<bool>(true, true, true), true), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), _wgslsmith_f_op_f32(290f * 246f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -875f, -526f)), _wgslsmith_f_op_f32(select(-1137f, -222f, false))))), true, !(false | ((0i > u_input.d.x) != true)));
    var var_1 = Struct_3(Struct_2(Struct_1(select(!var_0.xxx, var_0.zxx, var_0.x), 243f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-897f, -1633f, -476f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-370f, 207f, -953f) + vec3<f32>(200f, -730f, 1000f))), _wgslsmith_f_op_f32(sign(956f))), select(select(select(var_0.zxx, vec3<bool>(false, var_0.x, true), var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.zwz), var_0.xwy), select(var_0.xyx, vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zyx), !select(var_0.xyw, vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, var_0.x))), true), ~(_wgslsmith_clamp_i32(u_input.d.x, -1i, -25015i) ^ _wgslsmith_sub_i32(u_input.d.x, min(u_input.d.x, u_input.d.x))));
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 23u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.a.d - var_1.a.a.b)));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = true;
    var var_2 = var_0.a;
    var var_3 = !select(!var_0.a.b.yz, var_2.a.a.yx, select(select(select(arg_0.a.b.yz, vec2<bool>(true, true), true), var_0.a.a.a.zy, vec2<bool>(var_0.a.a.a.x, var_1)), select(vec2<bool>(true, true), vec2<bool>(false, var_2.c), func_2(u_input.a, Struct_3(arg_0.a, arg_0.b), Struct_2(var_0.a.a, vec3<bool>(var_0.a.c, var_1, true), var_2.b.x), Struct_1(arg_0.a.a.a, var_0.a.a.c.x, vec3<f32>(var_2.a.c.x, -313f, arg_0.a.a.c.x), 143f))), select(func_2(u_input.a, Struct_3(Struct_2(Struct_1(var_2.b, -659f, vec3<f32>(var_0.a.a.c.x, var_2.a.d, var_0.a.a.c.x), var_0.a.a.b), arg_0.a.a.a, var_1), u_input.d.x), Struct_2(arg_0.a.a, var_2.b, var_0.a.c), Struct_1(var_2.b, -1313f, vec3<f32>(266f, arg_0.a.a.b, -817f), 194f)), !var_2.b.xy, var_2.a.a.yz)));
    var_3 = !vec2<bool>(var_2.b.x, var_3.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0.a.a.b) - var_0.a.a.c);
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~(~93570u), _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), select(u_input.c.x, 1u, false)))), 23u)];
    let var_1 = select(vec3<bool>(var_0.a.a.a.x, 4294967295u == _wgslsmith_clamp_u32(1u, countOneBits(u_input.c.x), 27764u << (u_input.b.x % 32u)), !var_0.a.c), vec3<bool>(all(!select(vec4<bool>(false, false, var_0.a.b.x, true), vec4<bool>(var_0.a.c, var_0.a.c, false, true), vec4<bool>(false, true, var_0.a.c, var_0.a.a.a.x))), any(var_0.a.b), false), var_0.a.b);
    let var_2 = true;
    var_0 = Struct_3(Struct_2(Struct_1(!vec3<bool>(var_2, true, true), -638f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1009f)), _wgslsmith_f_op_f32(arg_0.x - -2317f)))), !var_1, var_0.a.b.x), 52335i);
    global0 = array<Struct_3, 23>();
    return Struct_1(var_0.a.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.a.b, -1752f))))), _wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 23u)])).x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.c) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, var_0.a.a.d, -1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.b, arg_0.x, var_0.a.a.b) + arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.b - arg_0.x) - -824f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(734f)), _wgslsmith_f_op_f32(var_0.a.a.c.x + 2147f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-305f, 942f, 1539f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-744f, -582f, -178f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), -1000f, vec3<f32>(-562f, -299f, 371f), 528f), vec3<bool>(true, true, true), false), u_input.d.x))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-701f, 743f, -1081f)))))));
    global0 = array<Struct_3, 23>();
    var var_1 = -34511i;
    global0 = array<Struct_3, 23>();
    var_1 = max(-_wgslsmith_div_i32(-1i, -2147483647i), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-20321i >> (u_input.b.x % 32u), _wgslsmith_mod_i32(8408i, u_input.d.x)), -(~u_input.d.x), _wgslsmith_div_i32(u_input.d.x, 51470i)));
    global0 = array<Struct_3, 23>();
    var var_2 = _wgslsmith_div_u32(~32947u, 20842u) ^ u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(1i, _wgslsmith_clamp_i32(u_input.d.x, -9483i, 1i) ^ 24176i), -(~(~u_input.d.x)), any(!vec4<bool>(true, true, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(floor(1200f)), _wgslsmith_f_op_f32(func_3()), 279f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1511f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d))), var_0.c.x)), all(func_4(vec3<f32>(1242f, 647f, 391f)).a.yx) || true)));
}

