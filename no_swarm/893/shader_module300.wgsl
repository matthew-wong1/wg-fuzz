struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<i32> {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = countOneBits(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), ~(-1i), -1i));
    var var_1 = countOneBits(37923i);
    return _wgslsmith_add_vec3_i32(u_input.c.zwx, countOneBits(vec3<i32>(-56569i, _wgslsmith_mult_i32(u_input.c.x, global0[_wgslsmith_index_u32(61742u, 23u)]) ^ _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 23u)], 0i, u_input.a.x)), 2147483647i)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<i32, 23>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, _wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(u_input.e, 62145u)), vec2<u32>(1u, u_input.e)), vec2<u32>(1u, 1u))), _wgslsmith_add_u32(4024u, ~59243u) ^ u_input.e);
    global0 = array<i32, 23>();
    let var_2 = arg_0;
    return select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), true), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), false));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_0.x;
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_1 = select(vec4<bool>(var_0, arg_0.x, var_0, var_0), vec4<bool>(false, true, any(func_3(arg_2)), all(!select(vec3<bool>(false, true, true), arg_0, arg_0))), !vec4<bool>(_wgslsmith_f_op_f32(268f - -471f) < _wgslsmith_f_op_f32(step(-508f, -388f)), false, firstLeadingBit(arg_2.a) <= -6079i, true));
    return vec3<u32>(1u, u_input.e, abs(32625u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    let var_0 = u_input.c.xyx;
    let var_1 = Struct_1(~0i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f - -1664f) - 632f)));
    var var_3 = abs(func_2(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.a.xyx), var_0, func_1()), Struct_1(0i))) << (_wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(u_input.e, 24573u, 1u)), vec3<u32>(u_input.e, func_2(vec3<bool>(true, true, false), vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(1u, 23u)], var_1.a), Struct_1(-52298i)).x & reverseBits(u_input.e), 1u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(4684i, 1i, global0[_wgslsmith_index_u32(var_3.x, 23u)])), abs(~(~u_input.e)));
}

