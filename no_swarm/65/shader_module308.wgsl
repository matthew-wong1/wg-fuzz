struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 4294967295u, 21570u, 1u), vec4<u32>(4294967295u, 5936u, 0u, 2652u), vec4<u32>(37303u, 0u, 1u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(1u, 4294967295u, 37400u, 10396u), vec4<u32>(0u, 97486u, 4294967295u, 36536u), vec4<u32>(120210u, 1u, 6075u, 4294967295u), vec4<u32>(0u, 10485u, 0u, 0u), vec4<u32>(49889u, 14931u, 4294967295u, 86221u), vec4<u32>(37801u, 24665u, 1u, 4294967295u), vec4<u32>(25524u, 0u, 22950u, 41842u), vec4<u32>(20974u, 69539u, 20659u, 18997u), vec4<u32>(1u, 24986u, 19832u, 0u), vec4<u32>(4294967295u, 50166u, 7069u, 4294967295u), vec4<u32>(2719u, 1u, 21315u, 0u), vec4<u32>(2800u, 1u, 0u, 9336u), vec4<u32>(74331u, 145203u, 51441u, 1u), vec4<u32>(1u, 4294967295u, 79318u, 1u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 85444u), vec4<u32>(37991u, 47738u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 3894u, 4294967295u), vec4<u32>(35562u, 4294967295u, 101265u, 0u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(1u, 7689u, 1u, 16008u), vec4<u32>(32465u, 49468u, 4514u, 4294967295u), vec4<u32>(19257u, 71531u, 4294967295u, 0u), vec4<u32>(11112u, 101226u, 0u, 0u), vec4<u32>(18727u, 0u, 0u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u));

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = (arg_1.b.x || arg_1.b.x) || true;
    return vec3<f32>(arg_2, 311f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-446f * 3154f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -114f))))) - _wgslsmith_div_f32(-382f, _wgslsmith_f_op_f32(floor(-176f))));
    global1 = array<i32, 2>();
    global2 = array<Struct_1, 8>();
    global1 = array<i32, 2>();
    var var_1 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, arg_1.c.x), ~1u, 38150u, select(arg_3.x, 32306u, false)), u_input.b) | u_input.b);
    return ~arg_1.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<i32, 2>();
    var var_0 = abs(global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(1u >> (arg_0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, 117018u, arg_0.x), u_input.b)) << (0u % 32u)), 2u)]);
    var var_1 = Struct_1(_wgslsmith_sub_i32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_1(u_input.c.x, vec2<bool>(true, true), arg_0.zy >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), ~(-11182i), arg_0.yx), func_3(vec2<bool>(true, true), Struct_1(-18621i, vec2<bool>(true, true), vec2<u32>(u_input.d, arg_0.x) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))), reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(102648u, arg_0.x), 2u)]), max(vec2<u32>(1u, arg_0.x), ~arg_0.xx))), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true))), arg_0.xx);
    var var_2 = global2[_wgslsmith_index_u32(arg_0.x, 8u)];
    var var_3 = Struct_1(var_1.a, var_1.b, u_input.b.yw);
    return Struct_1(var_3.a, var_2.b, min(u_input.b.wx, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 42996u), vec2<u32>(var_1.c.x, arg_0.x)), vec2<u32>(74361u, u_input.b.x)), select(abs(var_3.c), var_2.c << (vec2<u32>(11711u, var_3.c.x) % vec2<u32>(32u)), var_2.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)))), -2757f), vec2<f32>(_wgslsmith_f_op_f32(ceil(-947f)), -354f), !select(var_0.b, select(vec2<bool>(arg_1.b.x, arg_0), vec2<bool>(var_0.b.x, false), arg_1.a == u_input.a), !vec2<bool>(var_0.b.x, true))));
    var var_2 = vec4<u32>(arg_1.c.x, u_input.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 47143u), abs(var_0.c)), _wgslsmith_clamp_u32(arg_3, _wgslsmith_dot_vec3_u32(select(u_input.b.ywx, u_input.b.yyx, arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.x, arg_1.c.x, 54054u), vec3<u32>(u_input.b.x, arg_1.c.x, arg_1.c.x))) << (~0u % 32u), u_input.b.x));
    let var_3 = abs(4294967295u);
    var var_4 = -868f;
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.c.x, arg_1.c.x), 2u)];
    let var_1 = firstTrailingBit(global1[_wgslsmith_index_u32(1u, 2u)]) >> (4294967295u % 32u);
    var var_2 = arg_1;
    var var_3 = -1i;
    var var_4 = func_4(false, arg_1, 2147483647i, var_2.c.x);
    return _wgslsmith_div_f32(arg_0.x, -627f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.c);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1115f - 402f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * -179f)))), 234f, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(~vec3<i32>(u_input.c.x, 0i, 28782i), global2[_wgslsmith_index_u32(~u_input.b.x, 8u)], _wgslsmith_f_op_f32(561f * -547f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1639f, -580f, 755f)))), func_4(!all(vec2<bool>(true, false)), func_2(_wgslsmith_mult_vec3_u32(u_input.b.wwy, u_input.b.ywx)), _wgslsmith_mult_i32(~var_0.x, min(global1[_wgslsmith_index_u32(22239u, 2u)], 2147483647i)), ~(~0u)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(max(vec2<i32>(25646i, 3803i), vec2<i32>(56976i, global1[_wgslsmith_index_u32(35912u, 2u)])), u_input.c << (u_input.b.ww % vec2<u32>(32u))), u_input.c), func_2(countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 17508u) >> (u_input.b.wwz % vec3<u32>(32u)))).b, u_input.b.xx);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 133f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -313f, var_1.x, -1031f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))));
    var var_4 = !select(vec3<bool>(func_2(vec3<u32>(u_input.d, 80300u, var_2.c.x)).b.x, var_2.b.x, var_2.b.x), select(vec3<bool>(!var_2.b.x, true, func_2(vec3<u32>(0u, 4294967295u, 4865u)).b.x), vec3<bool>(true, false, 0u > var_2.c.x), !select(vec3<bool>(true, true, true), vec3<bool>(var_2.b.x, var_2.b.x, true), vec3<bool>(var_2.b.x, var_2.b.x, true))), !(!var_2.b.x) || true);
    global0 = array<vec4<u32>, 31>();
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-9295i, reverseBits(1u));
}

