struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_4(vec4<bool>(false, false, true, true), -1i), Struct_4(vec4<bool>(true, false, true, true), 1i), Struct_4(vec4<bool>(true, false, true, false), 23804i), Struct_4(vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_4(vec4<bool>(false, false, false, true), -19557i), Struct_4(vec4<bool>(false, true, false, true), 36517i), Struct_4(vec4<bool>(false, false, true, true), -58311i), Struct_4(vec4<bool>(false, false, true, false), 52711i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = reverseBits(min(_wgslsmith_add_i32(u_input.c, 0i) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(55327u, 35155u), vec2<u32>(36078u, arg_1.x)) % 32u), u_input.c ^ ~u_input.d.x));
    let var_1 = arg_0.a;
    global0 = array<Struct_4, 9>();
    let var_2 = Struct_4(!(!vec4<bool>(all(vec4<bool>(var_1.b, true, arg_3, var_1.b)), !arg_3, true, false)), -reverseBits(arg_0.a.c.x));
    var var_3 = arg_2.zxz;
    return !vec4<bool>(all(select(!vec3<bool>(false, arg_3, false), var_2.a.wxz, true)), true, var_2.b >= ~(-14989i), true);
}

fn func_2() -> bool {
    global0 = array<Struct_4, 9>();
    let var_0 = Struct_5(323f, !select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), select(func_3(Struct_3(Struct_1(u_input.c, false, u_input.d)), vec3<u32>(33022u, 27865u, u_input.b.x), vec4<f32>(-213f, -271f, 107f, -1120f), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(-1i, all(func_3(Struct_3(Struct_1(u_input.d.x, false, vec2<i32>(u_input.c, -2147483647i))), u_input.b.yxx, vec4<f32>(-1842f, -505f, -904f, -285f), true).zzy), -reverseBits(vec2<i32>(1i, u_input.c)))), Struct_2(4294967295u, true), min(u_input.b.x, 86442u));
    let var_1 = true;
    let var_2 = var_0;
    let var_3 = Struct_2(16508u, var_0.c.a.b);
    return false;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(~(4294967295u & u_input.b.x), any(vec3<bool>(true, true, func_2())));
    let var_1 = select(_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(-2147483647i, -31632i)), vec2<i32>(u_input.c, 5741i) | vec2<i32>(_wgslsmith_mult_i32(~23653i, u_input.d.x), min(~(-1i), countOneBits(2147483647i))), true);
    var var_2 = any(!(!vec2<bool>(any(vec2<bool>(var_0.b, var_0.b)), any(vec4<bool>(true, true, true, var_0.b)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, _wgslsmith_f_op_f32(ceil(-940f))));
    let var_4 = u_input.d;
    return 571f;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = arg_2.x;
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(54851i, arg_0 | 4077i), max(max(countOneBits(13297i), u_input.d.x), ~arg_2.x << (55639u % 32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(1957f * 1f)));
    var_0 = arg_2.x;
    let var_2 = -firstTrailingBit(arg_0);
    return Struct_4(vec4<bool>(!(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) > _wgslsmith_f_op_f32(round(var_1.x))), func_3(Struct_3(Struct_1(var_2, true, vec2<i32>(arg_2.x, var_2))), u_input.b.xzy, vec4<f32>(arg_1.x, -2062f, -1000f, arg_1.x), true).x, all(vec3<bool>(false, true, true)) && true, false), -(~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~((_wgslsmith_dot_vec2_u32(~u_input.a.yy, u_input.a.wy) & _wgslsmith_dot_vec3_u32(vec3<u32>(172u, 1u, 0u), ~u_input.b.zxw)) << (~u_input.a.x % 32u)), 9u)];
    var_0 = func_4(abs(var_0.b), _wgslsmith_div_vec4_f32(vec4<f32>(-1878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2872f), _wgslsmith_f_op_f32(1000f - 893f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2059f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1311f, -1952f, -451f, -767f)))))), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), vec2<i32>(var_0.b, 19026i))), u_input.d.x));
    global0 = array<Struct_4, 9>();
    let var_1 = u_input.c;
    var var_2 = true;
    var var_3 = false;
    var_0 = func_4(1i, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-681f + 1357f), _wgslsmith_f_op_f32(f32(-1f) * -1368f))))), -1000f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-226f, 2093f))) * _wgslsmith_f_op_f32(func_1()))), u_input.d);
    var var_4 = Struct_4(!var_0.a, 77678i);
    let var_5 = Struct_5(_wgslsmith_f_op_f32(floor(388f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(select(var_0.a.yy, vec2<bool>(true, false), false)), false), vec4<bool>(func_4(var_4.b ^ var_0.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1174f, -897f, 331f, 975f), vec4<f32>(1009f, -933f, 158f, 502f))), vec2<i32>(0i, 39065i)).a.x, true, all(select(vec3<bool>(false, true, true), var_4.a.zxz, var_0.a.x)), (var_4.a.x | var_4.a.x) | any(var_4.a))), Struct_3(Struct_1(var_1 << (~u_input.b.x % 32u), false, vec2<i32>(-var_4.b, 60804i))), Struct_2(abs(u_input.b.x), !func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -25545i, -3209i, u_input.d.x), vec4<i32>(u_input.d.x, -50435i, 10711i, -6058i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1540f, -346f, -1870f) + vec4<f32>(656f, 1123f, -219f, 651f)), -vec2<i32>(var_4.b, -2147483647i)).a.x), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(576u, u_input.a.x, 43150u, 20292u), vec4<u32>(28142u, u_input.a.x, u_input.b.x, 37456u))) & vec4<u32>(var_5.d.a, var_5.e, _wgslsmith_mod_u32(~13208u, var_5.e >> (var_5.d.a % 32u)), _wgslsmith_add_u32(63137u, min(var_5.d.a, 1u))), countOneBits(firstTrailingBit(~vec4<i32>(var_0.b, var_5.c.a.c.x, 25114i, -17818i))), vec2<u32>(52724u, abs(_wgslsmith_mult_u32(u_input.a.x, ~u_input.b.x))));
}

