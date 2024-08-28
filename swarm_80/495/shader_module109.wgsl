struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec4<u32>, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = u_input.d.xz;
    var var_1 = Struct_1(arg_1.a, arg_2.b);
    return -_wgslsmith_div_i32((1i & -u_input.a) | -1i, -(u_input.b >> (arg_0.x % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = u_input.c;
    let var_1 = func_3(~(~vec3<u32>(var_0 | 131480u, 34541u, u_input.d.x)), Struct_1(select(_wgslsmith_mod_i32(arg_1.a >> (u_input.d.x % 32u), 1i), _wgslsmith_dot_vec3_i32(-arg_0, -vec3<i32>(arg_0.x, 1i, 2147483647i)), true), -_wgslsmith_dot_vec2_i32(arg_0.xx & vec2<i32>(0i, arg_0.x), -vec2<i32>(u_input.b, -16820i))), Struct_1(~(-firstTrailingBit(31967i)), ~(-30159i)), arg_1);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 40254u << (_wgslsmith_dot_vec3_u32(~u_input.d.wyw, vec3<u32>(reverseBits(var_0), 3441u, u_input.d.x | var_0)) % 32u)), 29u)];
    global0 = array<Struct_1, 29>();
    let var_3 = -229f;
    return ~arg_3;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(2147483647i, abs(_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 4564i, u_input.a), vec3<i32>(2147483647i, u_input.b, u_input.a)))), ~u_input.b), reverseBits(-_wgslsmith_add_i32(-1i, u_input.b)) ^ -11559i);
    let var_1 = _wgslsmith_div_vec4_u32(min(u_input.d, func_2(min(-vec3<i32>(-2147483647i, var_0.a, u_input.b), min(vec3<i32>(var_0.a, 8983i, u_input.a), vec3<i32>(-19371i, u_input.a, 0i))), Struct_1(-var_0.a, -14632i ^ u_input.a), all(vec3<bool>(false, false, false)) || true, u_input.d)), max(~(~vec4<u32>(72818u, u_input.d.x, u_input.d.x, u_input.c) ^ func_2(vec3<i32>(-2147483647i, 0i, var_0.b), global0[_wgslsmith_index_u32(39526u, 29u)], false, vec4<u32>(56206u, 0u, u_input.d.x, 13689u))), vec4<u32>(u_input.d.x, _wgslsmith_div_u32(~1u, 4294967295u), ~25971u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d.x), vec2<u32>(arg_0, 32870u)))));
    global1 = array<vec4<u32>, 12>();
    var var_2 = vec4<u32>(~(~countOneBits(var_1.x)), abs(abs(u_input.d.x)), _wgslsmith_mod_u32(u_input.c, ~9189u), _wgslsmith_div_u32(var_1.x, arg_0));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1825f, _wgslsmith_f_op_f32(ceil(1253f))), vec2<f32>(-827f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(518f, _wgslsmith_f_op_f32(trunc(716f))))))), vec2<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, _wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(step(783f, var_3.x))) * vec3<f32>(249f, var_3.x, _wgslsmith_f_op_f32(-var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(~0i, 0i) >> (u_input.d.x % 32u)), ~18385i);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_mult_u32(25692u, u_input.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(336f * -484f), -1247f, _wgslsmith_f_op_f32(max(1000f, 1782f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-569f, -130f, 1483f)))))));
    let var_2 = abs(_wgslsmith_add_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(6237u, 109032u), u_input.d.yz)), u_input.d.yw) & ~u_input.d.zw);
    let x = u_input.a;
    s_output = StorageBuffer(259f, var_1.x, -countOneBits(select(1i, ~2147483647i, true)), vec3<i32>(firstTrailingBit(select(u_input.b, var_0.b, false)) << (abs(_wgslsmith_mod_u32(u_input.c, 76002u)) % 32u), _wgslsmith_div_i32(u_input.b >> (~1u % 32u), min(u_input.b, var_0.a)), min(-u_input.b, -var_0.b)), u_input.c);
}

