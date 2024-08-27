struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32) -> bool {
    global0 = !select(!(!vec2<bool>(global0.x, global0.x)), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), global0.x), vec2<bool>(true, true), any(vec4<bool>(false, false, true, global0.x))), select(select(!vec2<bool>(global0.x, false), vec2<bool>(false, false), global0.x), select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, false), vec2<bool>(true, true), global0.x)), global0.x || false));
    global0 = select(select(!(!vec2<bool>(global0.x, global0.x)), select(select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, false), global0.x), any(vec4<bool>(true, false, true, global0.x))), vec2<bool>(all(select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, true))), (-34828i <= u_input.b.x) && any(vec4<bool>(true, global0.x, false, global0.x)))), !(!select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_div_u32(0u & (u_input.a << (u_input.a % 32u)), ~u_input.a << (68844u % 32u)) > max(24396u, u_input.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-396f - _wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) - _wgslsmith_div_f32(1350f, -282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) + 510f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1371f, 216f, 1541f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(308f, -148f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1356f, 786f, -968f) + vec3<f32>(136f, 691f, 1000f)), select(vec3<bool>(true, true, global0.x), vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, global0.x))))))), vec3<bool>(any(vec2<bool>(false, true)), -1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(635f, -369f))), _wgslsmith_f_op_f32(floor(-285f)) != _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(f32(-1f) * -109f)))));
    global2 = array<Struct_2, 24>();
    let var_1 = Struct_2(!global0.x, select(global0.x, all(select(vec2<bool>(false, true), vec2<bool>(false, global0.x), vec2<bool>(false, false))), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(true, global0.x, global0.x, ((func_3(u_input.c.x) & global0.x) & true) || global0.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -362f, 734f, 585f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1724f, 164f, -217f, 613f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1480f, -979f, -167f, -1393f)))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), var_0.a.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(min(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.a), countOneBits(20693u)), 13745u), 26760u), _wgslsmith_clamp_u32(~u_input.d.x ^ ~(~0u), u_input.d.x, u_input.d.x)), 23u)];
    let var_3 = global2[_wgslsmith_index_u32(65217u, 24u)];
    let var_4 = func_3((1i << (_wgslsmith_dot_vec3_u32(u_input.d.www, u_input.d.xzx) % 32u)) >> (_wgslsmith_clamp_u32(~firstTrailingBit(u_input.a), countOneBits(u_input.d.x), ~(~4294967295u)) % 32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 24>();
    global1 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_add_vec2_u32(select(u_input.d.xz, firstTrailingBit(_wgslsmith_mult_vec2_u32(~u_input.d.zy, u_input.d.zy)), vec2<bool>(all(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), true)), true)), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d.x, u_input.e), firstLeadingBit(u_input.d.ww)) ^ select(~vec2<u32>(u_input.e, 21829u), u_input.d.zx, any(select(vec2<bool>(global0.x, false), vec2<bool>(true, true), global0.x))));
    var var_1 = Struct_2(false | !(_wgslsmith_mod_u32(var_0.x, u_input.a) != _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 20295u, 34693u, 61441u), u_input.d)), func_3(-_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_2.x, u_input.c.x, 33940i, arg_2.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(arg_1.a.x)) == _wgslsmith_div_f32(174f, -1361f), var_1.b);
    return arg_3;
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(any(vec2<bool>(false, any(vec3<bool>(global0.x, true, false)) | false)), global0.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-159f))), _wgslsmith_div_f32(588f, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-355f + 1039f) - -976f)) * arg_0.a.x);
    var_1 = arg_0.a.x;
    global2 = array<Struct_2, 24>();
    let var_2 = any(vec4<bool>(var_0.b, all(vec4<bool>(!global0.x, all(vec4<bool>(global0.x, var_0.b, true, false)), true, func_3(u_input.c.x))), var_0.b, any(select(vec3<bool>(false, false, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, global0.x), var_0.b), true))));
    return StorageBuffer(u_input.c, vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.a, 1u) | u_input.d.yyx), firstTrailingBit(vec3<u32>(24334u, u_input.a, 268u))), u_input.e, u_input.d.x << (~4294967295u % 32u)), u_input.c.yz & max(u_input.c.xy, _wgslsmith_mult_vec2_i32(u_input.b, firstTrailingBit(vec2<i32>(1i, -2147483647i)))), ~39040i, ~u_input.c.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = !(!vec4<bool>(~0u < (u_input.d.x | u_input.e), global0.x, false, true));
    let x = u_input.a;
    s_output = func_5(func_4(func_1(u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1535f, -844f, 629f, 1093f))), vec4<i32>(select(0i, _wgslsmith_mult_i32(0i, -4377i), true), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.b.x, u_input.b.x), u_input.c) & ~42973i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, u_input.c.x), _wgslsmith_mod_i32(u_input.c.x, u_input.b.x))), func_2()));
}

