struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(710f, 283f, 1000f, -1074f), vec4<f32>(797f, -676f, -796f, -1000f), vec4<f32>(225f, -419f, 807f, 150f), vec4<f32>(1212f, 1000f, 397f, 208f), vec4<f32>(-393f, -572f, -1000f, 536f), vec4<f32>(279f, -713f, 2043f, 117f), vec4<f32>(104f, 1591f, 284f, 1334f), vec4<f32>(-740f, 1236f, -1237f, 1874f), vec4<f32>(1263f, -1269f, 810f, -204f), vec4<f32>(868f, 488f, 117f, -475f), vec4<f32>(-1358f, 1725f, 714f, -1000f), vec4<f32>(1062f, -1379f, -805f, 214f), vec4<f32>(-998f, -704f, -177f, -1000f), vec4<f32>(952f, -1158f, -782f, 288f), vec4<f32>(-1913f, -325f, 2396f, -1014f), vec4<f32>(-434f, -1000f, -919f, 1029f), vec4<f32>(-946f, 1652f, -1008f, 469f), vec4<f32>(736f, 1066f, -522f, -1493f), vec4<f32>(-796f, -232f, 760f, 518f), vec4<f32>(1190f, -159f, -306f, -2007f), vec4<f32>(2238f, -869f, -1089f, 1000f), vec4<f32>(-723f, 1344f, -1849f, -1426f), vec4<f32>(-412f, 1267f, -333f, 338f));

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec3<i32>;

var<private> global4: array<vec3<bool>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(abs(~reverseBits(1u))), 20u)];
    let var_1 = -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(1584i, -2147483647i), _wgslsmith_mult_i32(2147483647i, u_input.c)) ^ min(u_input.c, ~global3.x), _wgslsmith_mult_i32(u_input.c, 15219i), 31839i);
    global1 = array<vec4<bool>, 32>();
    global0 = array<vec4<f32>, 23>();
    global4 = array<vec3<bool>, 2>();
    return max(44398u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), firstLeadingBit(~u_input.b.x))) ^ u_input.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1 >> (vec4<u32>(u_input.b.x, 13258u, (func_3() | ~u_input.b.x) << (u_input.b.x % 32u), func_3()) % vec4<u32>(32u));
    var var_1 = 1286f;
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(u_input.b.x | countOneBits(101517u), 23u)]);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, any(arg_0.zy))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(165f))), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1161f))));
    var_2 = global2[_wgslsmith_index_u32(80582u, 20u)];
    return global2[_wgslsmith_index_u32(u_input.b.x, 20u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = vec4<u32>(1u, countOneBits(~firstTrailingBit(7343u >> (u_input.b.x % 32u))), 8528u, ~_wgslsmith_mod_u32(firstTrailingBit(104488u), countOneBits(69579u)));
    var var_1 = reverseBits(_wgslsmith_div_vec2_i32(global3.xy, vec2<i32>(~(0i | u_input.c), -2147483647i)));
    var_1 = -(vec2<i32>(-1i) * -global3.yy);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(~1u, 23u)], arg_1.a))) + vec4<f32>(func_2(vec3<bool>(false, true, arg_0.x), max(vec4<i32>(-2147483647i, -32831i, u_input.c, var_1.x), vec4<i32>(u_input.a, -30496i, global3.x, var_1.x))).a.x, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a.x + 469f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.x))))));
    var var_3 = vec2<bool>(arg_0.x, true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)), 450f, -1458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(371f, -1000f)) * _wgslsmith_div_f32(arg_1.a.x, 177f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1.a, arg_1.a)))))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = -1301f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(arg_0, 32u)]), func_2(global4[_wgslsmith_index_u32(29853u, 2u)], countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, global3.x)))))));
    var var_2 = false;
    var var_3 = vec3<i32>(-32018i, 0i, _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(72750i, global3.x, -2147483647i), vec3<i32>(u_input.c, u_input.c, 2147483647i)), _wgslsmith_mult_i32(global3.x & global3.x, global3.x)), _wgslsmith_add_i32(~43464i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -27489i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global3.x, global3.x), vec3<i32>(1894i, global3.x, 1i))))));
    global3 = ~(-vec3<i32>(firstLeadingBit(12277i), -var_3.x, -(var_3.x >> (4294967295u % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, -600f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 32>();
    var var_0 = 1243f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~16876u)), 1f) + _wgslsmith_f_op_f32(floor(1f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1077f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1521f)) + 3419f))));
    var var_2 = ~u_input.b.x;
    var var_3 = 1i != _wgslsmith_mod_i32(abs(-8628i), min(-u_input.a, global3.x));
    global4 = array<vec3<bool>, 2>();
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, _wgslsmith_f_op_f32(func_1(~u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(382f)))), 2444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1697f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1866f - 776f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(274f, 329f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(876f, 1920f)), -106f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zwy, u_input.b, vec3<u32>(~27311u, abs(u_input.b.x), select(_wgslsmith_add_u32(u_input.b.x, 76271u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25654u, u_input.b.x, 18342u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 58518u, 19092u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), true)), ~1u, vec4<f32>(_wgslsmith_f_op_f32(sign(var_4.x)), -839f, var_4.x, 680f));
}

