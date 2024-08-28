struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1000f, -1220f, -1091f, 246f, -459f, 1993f, -1030f, -272f, 633f, 738f, -1114f, -715f, -249f, 384f, 1086f, -1515f, -105f, -299f, -467f, -1765f, 1848f, 960f, -1328f, -1821f, 843f, 538f, -1000f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec2<bool> {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, 593f, 995f, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 27u)], -372f, arg_1.x, arg_1.x) - arg_1))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.wxw)), arg_1.xyw) * arg_1.yzy);
    let var_2 = -((-1i << (~4294967295u % 32u)) << (~firstTrailingBit(4294967295u) % 32u));
    var var_3 = vec4<i32>(~(~1i), ~(-35003i), var_2, i32(-1i) * -(~u_input.d)) ^ vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(~u_input.b.x, -9016i & var_2)), u_input.b.x << (~u_input.a % 32u), 2991i, _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(6228i, ~var_2)));
    return select(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)] < 1000f, true, all(vec2<bool>(true, true)))), all(vec3<bool>(true, true, true))), select(vec2<bool>(true | (arg_0 < arg_0), abs(u_input.b.x) == reverseBits(u_input.b.x)), vec2<bool>(true, true), !(!(4294967295u >= arg_0))), !select(all(vec4<bool>(true, false, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), any(vec3<bool>(true, true, true))));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 27>();
    var var_0 = u_input.c.x;
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var_0 = ~u_input.c.x;
    return Struct_1(firstLeadingBit(~23607u), ~u_input.a, _wgslsmith_mult_vec3_u32(u_input.c, ~firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.c, u_input.c))), true, select(select(vec2<bool>(true, all(vec4<bool>(false, false, false, true))), vec2<bool>(true, -486f <= global0[_wgslsmith_index_u32(23410u, 27u)]), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), !func_3(_wgslsmith_div_u32(4294967295u, 18109u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-844f, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], 409f), vec4<f32>(-863f, 618f, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 618f), vec4<bool>(false, false, false, false)))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = -85304i & (-_wgslsmith_mod_i32(0i, -1i) ^ select(abs(~u_input.d), max(~27558i, u_input.b.x), arg_0.e.x));
    let var_1 = u_input.c.zz;
    var var_2 = arg_0;
    let var_3 = 0u;
    let var_4 = Struct_1(1u, 62428u, abs(vec3<u32>(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_mult_u32(0u, 35569u)), 31097u, arg_1.x)), !(!var_2.d), select(!vec2<bool>(false, false | var_2.e.x), !vec2<bool>(global0[_wgslsmith_index_u32(36081u, 27u)] == global0[_wgslsmith_index_u32(arg_1.x, 27u)], arg_0.d && false), select(!select(var_2.e, vec2<bool>(true, var_2.d), arg_0.e), arg_0.e, func_2().e)));
    return Struct_1(var_3, ~var_3, reverseBits(vec3<u32>(func_2().b & arg_1.x, var_1.x << (~35395u % 32u), ~reverseBits(36852u))), true, func_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(43560u, 24831u, arg_0.a, 100354u), vec4<u32>(14689u, u_input.a, arg_0.c.x, 4294967295u)), ~vec4<u32>(7348u, var_1.x, arg_0.a, var_1.x)), _wgslsmith_add_u32(13916u, arg_1.x), 10589u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], -369f, -1831f))) * vec4<f32>(866f, global0[_wgslsmith_index_u32(var_1.x, 27u)], -825f, global0[_wgslsmith_index_u32(0u, 27u)])) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(47969u, 27u)], global0[_wgslsmith_index_u32(var_1.x, 27u)], 834f, -1068f))))));
}

fn func_1() -> f32 {
    let var_0 = u_input.c.x;
    let var_1 = ~(u_input.a ^ 31566u);
    global0 = array<f32, 27>();
    var var_2 = func_4(func_2(), vec2<u32>(var_1, u_input.a));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2524f - -812f)), 930f));
    return 1131f;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> bool {
    global0 = array<f32, 27>();
    var var_0 = ~_wgslsmith_mod_u32(u_input.c.x, 17206u);
    let var_1 = func_4(Struct_1(1u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c.x, u_input.a)), _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 4294967295u))), func_2().c, !(!func_4(Struct_1(u_input.c.x, 1u, u_input.c, true, vec2<bool>(true, false)), u_input.c.yx).d), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), ~u_input.c.zy);
    let var_2 = func_2();
    var var_3 = vec4<i32>(~min(86881i, firstLeadingBit(-arg_2.x)), arg_3.x, arg_2.x, 2147483647i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2059f - 454f) * _wgslsmith_div_f32(225f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8876u, 7574u, var_0), vec4<u32>(1u, 41806u, var_0, u_input.c.x) ^ vec4<u32>(34370u, 1025u, 0u, u_input.c.x)), 27u)])));
    var var_2 = Struct_1(u_input.c.x, reverseBits(~(~u_input.c.x)), u_input.c, func_5(-(u_input.b << (vec4<u32>(var_0, 4294967295u, var_0, u_input.c.x) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(func_1()), 508f, -726f, 1180f), reverseBits(u_input.b.yxz), vec2<i32>(-2147483647i, u_input.b.x) ^ ~u_input.b.wx) | false, vec2<bool>(true, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true))));
    var var_3 = 1286f;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, -1289f, 577f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], -568f) * vec3<f32>(-1164f, -705f, -323f)), !vec3<bool>(true, var_2.d, var_2.e.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(15824u, 27u)], global0[_wgslsmith_index_u32(10651u, 27u)])), vec3<bool>(func_4(Struct_1(0u, var_0, u_input.c, var_2.e.x, var_2.e), u_input.c.xy).e.x, var_2.d, var_2.d))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(78718u, 27u)])), _wgslsmith_div_f32(758f, global0[_wgslsmith_index_u32(0u, 27u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1933f * global0[_wgslsmith_index_u32(u_input.c.x, 27u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1444f, 189f, 206f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -2147483647i | u_input.b.x) | ~(-vec2<i32>(u_input.d, u_input.b.x))), vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_i32(abs(countOneBits(u_input.b.xx)), u_input.b.xx)), reverseBits(firstLeadingBit(-2147483647i)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-2267f - _wgslsmith_f_op_f32(select(-711f, -1921f, var_2.e.x))), 776f, var_4.x))), ~u_input.b.xyx);
}

