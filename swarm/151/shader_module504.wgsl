struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1039f, 907f, -621f, 2009f);

var<private> global1: f32;

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = ~u_input.e;
    var_0 = max(u_input.e, u_input.e);
    return -393f;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    global0 = array<f32, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(25913u, 4u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 122f)))))) + vec2<f32>(arg_1.x, arg_2.a));
    let var_1 = Struct_1(!vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(false, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 361f, 368f, arg_2.a), vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(50372u, 4u)], arg_1.x, arg_2.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1447f, arg_1.x, 720f)))))), !(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false))), u_input.e.x);
    return u_input.d;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 4u)], -1036f, arg_0)))), ~(~arg_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.c.zxy, vec3<f32>(global0[_wgslsmith_index_u32(arg_1.e, 4u)], arg_1.c.x, global0[_wgslsmith_index_u32(arg_1.e, 4u)]))) * _wgslsmith_f_op_vec3_f32(-arg_1.c.xxz))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f - -521f) + 261f))), 4u)]);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2341f);
    let var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 6u)];
    let var_2 = Struct_1(vec3<bool>(true, !arg_1.a.x, select(var_1.d.x, true, max(var_1.e, u_input.e.x) == _wgslsmith_dot_vec3_u32(u_input.e.wxz, u_input.e.wwx))), ~arg_1.b, arg_1.c, select(vec4<bool>(all(var_1.a.xy), true | arg_0, arg_1.d.x, _wgslsmith_f_op_f32(305f + arg_1.c.x) > -1155f), select(var_1.d, vec4<bool>(!arg_1.a.x, arg_1.a.x, false, arg_0 || false), var_1.d), false), 96547u);
    let var_3 = 24974u;
    return Struct_1(var_1.d.wxy, arg_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_0.a, -116f, 346f) + vec4<f32>(arg_1.c.x, var_1.c.x, global0[_wgslsmith_index_u32(u_input.d, 4u)], var_1.c.x)))))), select(!vec4<bool>(true, var_1.a.x || true, select(false, false, arg_1.d.x), false), vec4<bool>(true, true, any(vec4<bool>(true, false, var_1.d.x, false)), true), !var_2.d), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, var_1.b, var_2.b), vec4<u32>(65387u, 54863u, 4294967295u, 66160u)), u_input.e ^ u_input.e), var_1.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    let var_0 = abs(u_input.e);
    global0 = array<f32, 4>();
    var var_1 = u_input.c << (abs(~(~vec2<u32>(34586u, 84757u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_3 = arg_1.d.x;
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_mod_u32(160798u, ~min(1u, u_input.d)) ^ u_input.e.x);
    let var_1 = vec4<i32>(~0i | (~(u_input.c.x >> (var_0 % 32u)) | min(_wgslsmith_add_i32(1i, 1i), select(2147483647i, 38026i, true))), ~1i, u_input.c.x, ~(-max(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~10281i)));
    var var_2 = ~(~1i ^ ~(firstTrailingBit(62935i) >> (46379u % 32u)));
    var var_3 = global2[_wgslsmith_index_u32(max(~var_0, ~0u), 6u)];
    var_3 = Struct_1(var_3.a, max(59817u, 40769u), _wgslsmith_f_op_vec4_f32(-var_3.c), vec4<bool>(all(vec4<bool>(var_3.a.x, var_3.a.x, var_3.d.x, u_input.b != 10119i)), func_4(0u, func_1(false, global2[_wgslsmith_index_u32(u_input.d, 6u)], ~var_1.yzw), !vec4<bool>(true, false, var_3.d.x, var_3.a.x), Struct_2(_wgslsmith_f_op_f32(round(var_3.c.x)))), !(_wgslsmith_mult_u32(var_0, u_input.e.x) <= u_input.e.x), all(var_3.d.xx)), _wgslsmith_div_u32(abs(32647u), ~_wgslsmith_sub_u32(~38620u, 21415u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(countOneBits(var_1.x), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(~0i, 2147483647i)), _wgslsmith_clamp_i32(29807i, _wgslsmith_mod_i32(firstLeadingBit(u_input.c.x), u_input.c.x), -2147483647i)), var_1.ywx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0 ^ 0u, 4u)]))))), ~(-select(countOneBits(u_input.c), vec2<i32>(-33496i, 0i), func_1(var_3.a.x, Struct_1(vec3<bool>(var_3.a.x, var_3.d.x, false), 4294967295u, var_3.c, var_3.d, var_0), u_input.a).a.yx)), 0u);
}

