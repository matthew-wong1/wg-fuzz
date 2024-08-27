struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec2<bool> {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global1 = array<vec3<bool>, 9>();
    var var_0 = u_input.e;
    global1 = array<vec3<bool>, 9>();
    return arg_1.xz;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = any(vec3<bool>(false, true && select(all(vec4<bool>(arg_2.c, false, arg_2.a, arg_2.d.x)), all(vec4<bool>(arg_2.c, false, false, true)), false), true));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(13319u, 9u)], global0[_wgslsmith_index_u32(arg_1.x, 9u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2.b, -164f)), -505f)), _wgslsmith_f_op_f32(round(453f)), -232f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.b, var_1.b.a.e.x, arg_2.e.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(ceil(-657f)), 979f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 2515f, arg_2.e.x) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.e.x, 141f, 1798f)))))))));
    var_0 = all(global1[_wgslsmith_index_u32(37858u, 9u)]);
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 3078i, u_input.a.x, u_input.c.x), vec4<i32>(2147483647i, -31439i, 2147483647i, u_input.e)), -vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.c.x)), firstTrailingBit(~vec4<i32>(-3477i, -37226i, u_input.e, u_input.a.x))), firstTrailingBit(~u_input.e), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.a.x, u_input.e), vec4<i32>(u_input.a.x, u_input.e, -2147483647i, -21451i))) ^ abs(3433i)), vec4<i32>((min(u_input.e, u_input.c.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(69344u, 71166u, 11607u, 48540u), vec4<u32>(62784u, u_input.b, arg_1.x, u_input.d.x)) % 32u)) | -1i, 2002i, 62793i, u_input.e));
    return var_1.b.a;
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_2(!(!vec4<bool>(false, false, !var_0, all(vec3<bool>(true, var_0, var_0)))), func_3(vec2<bool>(var_0, !(u_input.a.x <= u_input.e)), u_input.d, Struct_1(true, -1796f, true, func_2(-2147483647i | u_input.c.x, global1[_wgslsmith_index_u32(89187u, 9u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -1702f, 455f, -770f)))));
    global1 = array<vec3<bool>, 9>();
    var var_2 = vec4<bool>(!all(!var_1.a), true || var_1.a.x, false, all(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.b.a, true), vec4<bool>(false, var_1.a.x, false, false), false), !var_1.a, select(vec4<bool>(false, var_1.b.c, false, var_0), var_1.a, false))));
    var_1 = Struct_2(select(var_1.a, select(select(select(vec4<bool>(var_2.x, var_1.a.x, var_2.x, var_2.x), vec4<bool>(false, true, false, var_2.x), var_1.a), select(vec4<bool>(var_0, false, false, var_1.b.d.x), vec4<bool>(true, var_2.x, false, false), vec4<bool>(false, true, false, var_0)), true), !(!var_1.a), any(var_1.a) & (var_2.x | false)), !var_1.a), var_1.b);
    return Struct_2(vec4<bool>((false | !var_1.a.x) & (firstTrailingBit(16940i) <= u_input.a.x), false, true, true), Struct_1(false, 1217f, any(var_1.a.yx), var_2.zx, var_1.b.e));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(14705u, 9u)];
    global0 = array<Struct_3, 9>();
    global1 = array<vec3<bool>, 9>();
    global0 = array<Struct_3, 9>();
    var var_1 = arg_1.b.b;
    return 569f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(2322u, 1u), vec2<u32>(1213u, 3940u)), vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), 51442u ^ u_input.b)), reverseBits(464u), !(!(u_input.c.x >= 2147483647i))), 9u)], Struct_3(Struct_1(any(global1[_wgslsmith_index_u32(~86985u, 9u)]), -348f, any(global1[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(736f, -963f, 220f, -379f), vec4<f32>(1945f, -1000f, 2161f, -514f), vec4<bool>(true, false, false, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2810f, 1843f, 1137f, 1473f)))), _wgslsmith_f_op_f32(func_4(~(~u_input.d.x), func_1(), Struct_4(vec3<bool>(false, false, false), Struct_3(Struct_1(false, 121f, false, vec2<bool>(false, false), vec4<f32>(-988f, 694f, -502f, -736f)), 138f)), ~reverseBits(-12914i)))));
    let var_1 = var_0.b.a;
    var var_2 = Struct_2(vec4<bool>(!var_1.c, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, -38156i), countOneBits(u_input.a.x), u_input.c.x & u_input.a.x) <= _wgslsmith_div_i32(1i, 1225i | u_input.e), false, true), Struct_1(select(true, func_3(select(vec2<bool>(false, true), var_1.d, true), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(13541u, 1u), vec2<u32>(u_input.d.x, 0u)), func_3(vec2<bool>(var_0.b.a.a, false), u_input.d, Struct_1(var_0.a.x, var_1.e.x, var_0.a.x, var_0.a.yy, vec4<f32>(-2210f, var_0.b.a.b, var_1.b, -708f)))).c, true), 1891f, true, !func_1().a.ww, var_1.e));
    let var_3 = func_1().a.wwx;
    let var_4 = Struct_3(Struct_1(!func_1().a.x, -1101f, !var_3.x, !vec2<bool>(!var_1.d.x, any(vec2<bool>(false, false))), var_1.e), var_0.b.b);
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_3(!func_2(u_input.a.x, var_0.a), select(vec2<u32>(31893u, 52480u), min(u_input.d, u_input.d), vec2<bool>(false, var_2.b.d.x)), Struct_1(true, _wgslsmith_f_op_f32(max(var_1.e.x, var_4.b)), true, var_2.b.d, _wgslsmith_f_op_vec4_f32(-var_4.a.e))).e.wy));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, _wgslsmith_sub_i32(25185i, u_input.e), _wgslsmith_div_i32(1i, u_input.e), _wgslsmith_f_op_vec2_f32(-var_1.e.xy));
}

