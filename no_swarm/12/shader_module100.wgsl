struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 7>;

var<private> global2: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = -22152i;
    let var_1 = Struct_1(vec3<bool>(arg_0 == all(!vec4<bool>(false, arg_0, true, false)), !(!all(vec3<bool>(arg_0, arg_0, arg_0))), false), arg_2.zx, vec3<bool>(arg_0, false, arg_0));
    global0 = arg_0;
    global0 = var_1.a.x;
    let var_2 = Struct_1(!(!vec3<bool>(any(vec2<bool>(var_1.a.x, arg_0)), true, all(vec2<bool>(var_1.c.x, true)))), firstTrailingBit(~(~_wgslsmith_div_vec2_u32(arg_2.xx, var_1.b))), vec3<bool>(true, arg_0, all(select(select(vec4<bool>(false, var_1.a.x, arg_0, arg_0), vec4<bool>(var_1.c.x, true, var_1.c.x, arg_0), false), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, arg_0, var_1.c.x, false), true), !vec4<bool>(arg_0, arg_0, true, arg_0)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(728f, -403f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(749f, -671f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1118f, 800f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, -774f) - vec2<f32>(-341f, 1000f)), select(vec2<bool>(false, true), vec2<bool>(false, arg_0), false))) * vec2<f32>(_wgslsmith_f_op_f32(max(-1755f, 597f)), _wgslsmith_f_op_f32(f32(-1f) * -1547f)))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0 >> (min(max(~arg_0 << (_wgslsmith_add_u32(14230u, arg_0) % 32u), arg_0), ~0u) % 32u), 7u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000f, 958f))))))));
    global0 = var_0.b.x >= 34619u;
    let var_2 = global1[_wgslsmith_index_u32(~arg_0, 7u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))) * _wgslsmith_f_op_vec2_f32(func_3(false, _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, var_0.b.x)), ~vec2<u32>(arg_0, var_2.b.x), ~var_2.b) | abs(vec2<u32>(17694u, var_0.b.x)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_2.b.x, 0u, var_2.b.x), vec3<u32>(4294967295u, 133192u, var_0.b.x), true), vec3<u32>(arg_0, 61111u, var_0.b.x)), vec3<u32>(_wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, 4294967295u), 1u, ~24623u)))));
    return -1647f;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_1, 7>();
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~_wgslsmith_div_u32(reverseBits(4294967295u), arg_0.b.x), 0u | arg_0.b.x), firstLeadingBit(47043u)), 7u)];
    var var_1 = _wgslsmith_f_op_f32(floor(-559f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.b.x, vec2<f32>(-943f, -752f), var_0.a.xz, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1300f)) + -1668f));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-702f)) - -171f)))));
    let var_2 = vec2<i32>(-8786i, 20490i << (firstLeadingBit(~(~4294967295u)) % 32u));
    return ~(1i ^ ~_wgslsmith_sub_i32(-12882i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(2147483647i < _wgslsmith_div_i32(reverseBits(u_input.b), func_1(global1[_wgslsmith_index_u32(11211u, 7u)])));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, -487f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(427f, 1103f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1490f - -487f)), _wgslsmith_f_op_f32(round(-876f))), false)));
    global1 = array<Struct_1, 7>();
    let var_1 = vec4<i32>(-11527i, firstTrailingBit(-_wgslsmith_add_i32(u_input.a, u_input.b)), -abs(-1i), -38876i);
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(0i, func_1(Struct_1(vec3<bool>(false, true, true), reverseBits(vec2<u32>(4294967295u, 40695u)), vec3<bool>(true, true, true))) ^ u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(abs(vec2<u32>(9347u, 44615u))), reverseBits(vec2<u32>(1u, 4294967295u)) << (select(vec2<u32>(5690u, 4294967295u), vec2<u32>(15661u, 21955u), vec2<bool>(true, false)) % vec2<u32>(32u))), vec2<u32>(1u, 1u)), u_input.a, abs(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(2289u, 4294967295u, 4294967295u), ~vec3<u32>(65249u, 0u, 4294967295u)))));
}

