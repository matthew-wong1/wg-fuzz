struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-938f, 1517f, -120f), vec3<f32>(814f, 454f, -1905f), vec3<f32>(774f, -729f, -1461f), vec3<f32>(-396f, -154f, 1819f), vec3<f32>(-782f, 703f, -749f), vec3<f32>(2538f, -1214f, 1146f));

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<f32, 3>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global4 = select(vec4<bool>(all(arg_0.d.a.wy), !arg_0.d.b, true, true), !(!vec4<bool>(all(arg_0.d.a.xww), global4.x, true, global4.x)), any(!(!(!arg_0.d.a.wzy))));
    let var_0 = Struct_4(34535i, _wgslsmith_mod_i32(abs(arg_0.c.c >> (40206u % 32u)), ~(-8540i)), Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(1540f)), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], 1181f, arg_0.d.a.x))))), false, _wgslsmith_mult_i32(select(arg_0.b, 15547i, global4.x), u_input.b) & _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, arg_0.c.c), _wgslsmith_mod_i32(arg_0.a, arg_0.a))), arg_0.d);
    global2 = array<Struct_4, 31>();
    global3 = array<f32, 3>();
    global3 = array<f32, 3>();
    return _wgslsmith_f_op_f32(sign(var_0.c.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1.d.a;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.c.a - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(526f, 1145f), 1225f, any(var_0.ww))), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 31u)])))), all(global4.xw), i32(-1i) * -((u_input.b ^ 1i) ^ abs(-19695i)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(166f, global3[_wgslsmith_index_u32(firstLeadingBit(abs(4294967295u)), 3u)]) + var_1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))));
    let var_3 = Struct_3(_wgslsmith_add_u32(u_input.a.x, ~max(u_input.a.x, _wgslsmith_div_u32(26714u, 1u))), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(8552u << (u_input.a.x % 32u), 4294967295u)), firstTrailingBit(vec2<u32>(1u, 23758u) ^ vec2<u32>(47315u, u_input.a.x))), arg_1.c, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.a))), true, min(~(-96925i), _wgslsmith_add_i32(var_1.c, arg_1.a) | ~2147483647i)), arg_1.d);
    global3 = array<f32, 3>();
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~u_input.a.x & u_input.a.x, 3u)];
    let var_1 = Struct_3(~(_wgslsmith_dot_vec3_u32(u_input.a.yxw, vec3<u32>(1u, u_input.a.x, 2155u)) >> (1u % 32u)) | ~((u_input.a.x ^ u_input.a.x) | _wgslsmith_add_u32(u_input.a.x, 32253u)), vec2<u32>(13444u, 47141u), func_2(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_4(u_input.b, ~2147483647i, Struct_2(arg_3.a, false, u_input.b), Struct_1(vec4<bool>(arg_2.x, global4.x, false, arg_3.b), false))).a.x, Struct_4(2147483647i, (55747i & arg_3.c) >> (reverseBits(u_input.a.x) % 32u), arg_3, Struct_1(arg_2, all(global4.xz)))), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_f32(-arg_1)))), 2147483647i > (~2147483647i << ((u_input.a.x << (u_input.a.x % 32u)) % 32u)), -1i), Struct_1(select(arg_2, select(!arg_2, arg_2, any(vec4<bool>(true, true, true, true))), !global4.x), select(arg_2.x, arg_2.x && arg_3.b, true)));
    let var_2 = var_1.c.b && var_1.e.b;
    global2 = array<Struct_4, 31>();
    let var_3 = select(u_input.a.x, ~_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(var_1.b.x, var_1.a, u_input.a.x, var_1.a))), arg_3.b) ^ abs(19539u);
    return var_1.e;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    return func_4(global4.xyy, _wgslsmith_f_op_f32(-404f * -283f), vec4<bool>(global4.x, !select(false, global4.x, arg_0.b), any(vec3<bool>(global3[_wgslsmith_index_u32(42323u, 3u)] != -461f, true, true)), arg_0.b), func_2(arg_0.a.x, global2[_wgslsmith_index_u32(1u, 31u)]));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_2 {
    global2 = array<Struct_4, 31>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1024f + -434f) * _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(36406u, 3u)]))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c.a.x))))), Struct_4(-1i, 1i, arg_1.c, func_1(func_2(_wgslsmith_f_op_f32(f32(-1f) * -424f), Struct_4(-1i, -52349i, arg_1.c, arg_1.d)))));
    let var_1 = arg_1.c.a.x;
    var var_2 = 2147483647i;
    var_2 = 28087i;
    return arg_1.c;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_1(vec4<bool>(func_5(func_1(func_5(global4.x, Struct_4(0i, arg_1.d.c, arg_1.c, Struct_1(arg_1.e.a, global4.x)), vec2<i32>(6506i, u_input.b))).b, global2[_wgslsmith_index_u32(~1u, 31u)], ~_wgslsmith_sub_vec2_i32(vec2<i32>(-5229i, arg_1.d.c), vec2<i32>(-2147483647i, u_input.b))).b, false, all(arg_1.e.a), true), !any(select(arg_1.e.a, func_4(arg_1.e.a.yyx, arg_1.d.a.x, vec4<bool>(false, arg_0, false, false), Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(20467u, 3u)], arg_1.c.a.x), false, -81657i)).a, func_1(Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1.c.a.x), false, u_input.b)).a)));
    global4 = var_0.a;
    var var_1 = -_wgslsmith_sub_i32(1i, arg_1.c.c) >> (arg_1.a % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, arg_1.b.x), vec2<u32>(u_input.a.x, 0u)), 3u)]), arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(349f, -987f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a.x * arg_1.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(arg_1.b.x, 3u)], _wgslsmith_f_op_f32(f32(-1f) * -683f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1465f, -893f, 315f, 126f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(423f, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1.d.a.x, -1321f) - vec4<f32>(1000f, 458f, global3[_wgslsmith_index_u32(1u, 3u)], arg_2.x))))));
    let var_3 = -455f;
    return Struct_3(arg_1.a, arg_1.b, arg_1.d, func_5(!arg_1.e.b, global2[_wgslsmith_index_u32(~(select(arg_1.b.x, 1u, var_0.b) << (64277u % 32u)), 31u)], _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(arg_1.d.c, -2324i)) << (vec2<u32>(countOneBits(u_input.a.x), min(u_input.a.x, arg_1.a)) % vec2<u32>(32u))), arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-_wgslsmith_sub_i32(2147483647i, 23031i) < _wgslsmith_mult_i32(~_wgslsmith_add_i32(u_input.b, 19759i), u_input.b), Struct_3(u_input.a.x, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~(~u_input.a.yx)), func_5(global4.x, Struct_4(-28476i, -39114i, Struct_2(vec2<f32>(395f, 677f), global4.x, 64957i), func_1(Struct_2(vec2<f32>(-183f, global3[_wgslsmith_index_u32(57049u, 3u)]), false, 0i))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b, -37558i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(global4.x, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 42594i), vec2<i32>(u_input.b, 35059i)))), func_2(-259f, global2[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(!(!vec4<bool>(false, true, global4.x, true)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), true))));
    global0 = array<vec3<u32>, 13>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~(~var_0.b.x)), ~(u_input.a.x ^ 4294967295u)), 6u)];
    var var_2 = var_1.x;
    let var_3 = vec3<u32>(func_6(false, func_6(true, Struct_3(39299u, vec2<u32>(4294967295u, 1u), Struct_2(vec2<f32>(1219f, var_0.d.a.x), true, var_0.c.c), var_0.d, var_0.e), _wgslsmith_div_vec3_f32(vec3<f32>(-264f, 488f, global3[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1254f, -357f) + global1[_wgslsmith_index_u32(var_0.b.x, 6u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(var_0.c.a.x + 163f), var_0.c.a.x))).a, _wgslsmith_dot_vec4_u32(~(~u_input.a), ~u_input.a), u_input.a.x);
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer((var_0.d.c | ~func_2(var_1.x, Struct_4(var_0.d.c, var_0.c.c, var_0.c, var_0.e)).c) << (u_input.a.x % 32u), ~vec3<i32>(u_input.b, _wgslsmith_sub_i32(func_2(-679f, Struct_4(-1i, -48544i, Struct_2(vec2<f32>(1447f, -445f), var_0.e.b, 0i), var_0.e)).c, _wgslsmith_add_i32(-96129i, 1i)), u_input.b));
}

