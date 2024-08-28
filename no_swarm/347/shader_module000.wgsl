struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: array<bool, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = arg_1.b;
    let var_1 = Struct_4(u_input.a.x, arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(-1f)) + arg_0.x), arg_0.x);
    var var_2 = vec4<bool>(var_0.x, false, arg_1.d.x, !(!global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.a, 1u), 5u)]));
    let var_3 = Struct_3(Struct_1(var_0.x), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 5u)], var_2.x))), select(vec2<bool>(true, true), !vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 5u)]), any(vec3<bool>(var_0.x, var_1.b.a, var_0.x))), false), !vec2<bool>(var_0.x | false, true), !select(var_0.zy, select(var_0.xy, var_0.xy, var_2.xy), var_2.wy)), var_0, !var_1.b.a);
    let var_4 = var_1.a;
    return Struct_4(~(~(~min(var_1.a, 1u))), arg_1.e, _wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))))), _wgslsmith_f_op_f32(f32(-1f) * -1470f));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_sub_i32(arg_1.c, abs(arg_1.a.x));
    var var_1 = arg_1.e;
    var var_2 = Struct_1(true);
    var var_3 = -(abs(vec4<i32>(i32(-1i) * -1i, min(-18653i, -19535i), -9683i, ~u_input.b)) << ((firstTrailingBit(vec4<u32>(1u, u_input.a.x, arg_0.a, 44944u)) & ~(~vec4<u32>(4294967295u, arg_0.a, global1.x, 1u))) % vec4<u32>(32u)));
    var var_4 = u_input.c.zy;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~firstLeadingBit(1u)), arg_0.a), min(u_input.a, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(global1.yx, abs(global1.yz)), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), 38709u))));
}

fn func_4(arg_0: u32) -> f32 {
    global2 = array<vec2<f32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(945f * -604f), -1784f))))));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_dot_vec2_u32(~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.a))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~arg_0, 125539u >> (arg_0 % 32u)), ~(global1.x ^ arg_0)), vec2<u32>(global1.x, u_input.a.x)));
    return 914f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global3 = array<bool, 5>();
    global2 = array<vec2<f32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(583f + _wgslsmith_f_op_f32(func_4(func_3(func_2(vec3<f32>(-501f, -1072f, 421f), global0[_wgslsmith_index_u32(24101u, 17u)], vec3<i32>(2147483647i, u_input.c.x, u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(arg_0, 5644u, 4294967295u)), 17u)]) >> (global1.x % 32u))));
    global0 = array<Struct_2, 17>();
    global1 = vec3<u32>(362u, _wgslsmith_sub_u32(42719u, 19567u), ~97491u);
    return global0[_wgslsmith_index_u32(~(~global1.x), 17u)];
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = vec2<bool>(false, global1.x <= ~global1.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-536f))));
    var_0 = arg_0.b.wx;
    var var_2 = 5957u;
    var var_3 = Struct_5(2103f);
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.x, -31211i, 6003i, u_input.c.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, 0i), vec4<i32>(arg_0.a.x, -2147483647i, 1i, -1i)), min(vec4<i32>(-2147483647i, 10127i, 1i, -2147483647i), vec4<i32>(arg_0.c, u_input.c.x, arg_0.a.x, -2147483647i)))), vec4<i32>(firstLeadingBit(47821i) | u_input.b, min(arg_0.a.x, u_input.b), _wgslsmith_mult_i32(arg_0.c << (22955u % 32u), 1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 15214i, -3316i, arg_0.c), vec4<i32>(u_input.b, -9491i, -25907i, u_input.b)), arg_0.a.x)), firstTrailingBit(abs(countOneBits(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x))))) >> (firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(global1.x, u_input.a.x & global1.x), u_input.a.x, global1.x, max(1u, 13160u))) % vec4<u32>(32u));
}

fn func_6(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = select(countOneBits(vec3<u32>(~global1.x, select(_wgslsmith_dot_vec2_u32(global1.zz, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 34461u)), true), ~4294967295u)), vec3<u32>(~(~(u_input.a.x ^ 35190u)), ~(~4294967295u), _wgslsmith_mult_u32(abs(u_input.a.x), _wgslsmith_div_u32(global1.x, 1u)) & 0u), (func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2228f, 3201f, 724f)), func_1(global1.x), arg_0.wxw >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))).a <= 31295u) && func_1(firstLeadingBit(firstTrailingBit(0u))).e.a);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1406f, -1913f)) + -1389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), Struct_2(u_input.c.xy, vec4<bool>(any(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], true, false)), true, any(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(global1.x, 5u)], false)), true), arg_0.x << (global1.x % 32u), vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, -1456f, -299f)), func_1(1u), arg_0.yww & vec3<i32>(u_input.b, 16056i, 1i)).b.a, global3[_wgslsmith_index_u32(8767u, 5u)], true), Struct_1(any(!vec2<bool>(false, global3[_wgslsmith_index_u32(30064u, 5u)])))), vec3<i32>(arg_0.x, -(~(-33035i & u_input.b)), -1i)).b;
    var var_2 = global3[_wgslsmith_index_u32(var_0.x, 5u)];
    global3 = array<bool, 5>();
    var var_3 = arg_0;
    return firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x >> (4294967295u % 32u), 1u, ~0u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(66729u, var_0.x, 1u), vec3<u32>(9708u, 87068u, var_0.x), vec3<u32>(1u, 5086u, 77212u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 18002u, var_0.x), vec3<u32>(u_input.a.x, 0u, var_0.x), vec3<u32>(var_0.x, 8843u, var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 54719u, 1u), vec3<u32>(var_0.x, var_0.x, 0u)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(41963u, var_0.x, 21726u)), vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(global1.x, 41002u, global1.x)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 80202u, var_0.x), vec3<u32>(1u, 4294967295u, 1u))), ~(vec3<u32>(global1.x, 0u, global1.x) & vec3<u32>(u_input.a.x, 1u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 5>();
    global1 = _wgslsmith_mult_vec3_u32(select(firstTrailingBit(~min(vec3<u32>(global1.x, global1.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 10326u))), ~(~firstLeadingBit(vec3<u32>(4294967295u, 0u, 36775u))), vec3<bool>(all(!vec3<bool>(global3[_wgslsmith_index_u32(6421u, 5u)], false, false)), false, all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)])) || global3[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_mult_vec3_u32((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global1.x), vec3<u32>(1u, global1.x, u_input.a.x), vec3<u32>(0u, 4294967295u, 52949u)) >> (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u))) << ((select(vec3<u32>(u_input.a.x, 4294967295u, 0u), vec3<u32>(7484u, u_input.a.x, 1u), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)])) ^ ~vec3<u32>(18569u, global1.x, 4294967295u)) % vec3<u32>(32u)), func_6(func_5(func_1(0u)))));
    let var_0 = reverseBits(~(~(func_5(global0[_wgslsmith_index_u32(u_input.a.x, 17u)]) & -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 7691i))));
    var var_1 = global3[_wgslsmith_index_u32(min(firstLeadingBit(global1.x) | u_input.a.x, ~(~u_input.a.x << (0u % 32u))), 5u)];
    global0 = array<Struct_2, 17>();
    global2 = array<vec2<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec3<u32>(reverseBits(u_input.a.x), global1.x, u_input.a.x)), 402f, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 25612u, u_input.a.x, u_input.a.x)), vec4<u32>(func_6(vec4<i32>(-45726i, -2147483647i, var_0.x, var_0.x)).x, func_3(Struct_4(u_input.a.x, Struct_1(global3[_wgslsmith_index_u32(global1.x, 5u)]), -2173f, -973f), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), ~4294967295u, global1.x ^ u_input.a.x)), max(87813u, 35437u) | _wgslsmith_clamp_u32(global1.x, countOneBits(7584u), 0u)), firstTrailingBit(4294967295u ^ u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(u_input.a.x, global1.x, 4294967295u)), global1.x, global1.x, u_input.a.x), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a.x, 51541u, u_input.a.x, 4294967295u)), ~max(vec4<u32>(global1.x, 91796u, global1.x, 0u), vec4<u32>(global1.x, 8692u, global1.x, global1.x)))));
}

