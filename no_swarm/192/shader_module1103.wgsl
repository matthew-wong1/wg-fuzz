struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<bool>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<i32> {
    global2 = array<vec4<bool>, 26>();
    global2 = array<vec4<bool>, 26>();
    global2 = array<vec4<bool>, 26>();
    let var_0 = u_input.b;
    return -arg_0;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = vec3<u32>(98097u, min(~(~global0[_wgslsmith_index_u32(32509u, 6u)]), _wgslsmith_mult_u32(firstLeadingBit(1u), u_input.b.x)), _wgslsmith_clamp_u32(u_input.b.x ^ 22914u, _wgslsmith_mult_u32(94270u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.zx)), u_input.b.x));
    var var_1 = vec4<f32>(-1177f, 338f, -623f, 729f);
    global2 = array<vec4<bool>, 26>();
    let var_2 = Struct_1(vec3<i32>(~(76943i & firstTrailingBit(1i)), u_input.a.x, reverseBits(-_wgslsmith_add_i32(2147483647i, u_input.c.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f * _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-369f - -1048f), _wgslsmith_f_op_f32(var_1.x - var_1.x)))));
    return (_wgslsmith_dot_vec3_u32(u_input.b, reverseBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.b.x)) << (~u_input.b % vec3<u32>(32u))) ^ ~select(~4294967295u, 1u, var_1.x < 1772f)) | ~(~(~u_input.b.x) >> (~firstTrailingBit(37852u) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    global0 = array<u32, 6>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(629f, 539f), -824f, _wgslsmith_f_op_f32(round(-602f))))), vec3<f32>(-661f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), 1573f), -561f));
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), -2147483647i <= u_input.c.x, false);
    global0 = array<u32, 6>();
    global1 = ~abs(_wgslsmith_div_i32(-arg_1.a.x, countOneBits(2147483647i))) | -29475i;
    return _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_add_u32(arg_0, arg_0)), 6u)], 113921u), u_input.b.yz);
}

fn func_2(arg_0: vec4<i32>) -> StorageBuffer {
    global0 = array<u32, 6>();
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, -13161i), 45761i, arg_0.x));
    var var_1 = Struct_2(func_4(func_3(~var_0.a.x), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.c.x, arg_0.x, -32067i, -13793i)), _wgslsmith_div_i32(var_0.a.x, 2284i), abs(var_0.a.x)))));
    var_1 = Struct_2(u_input.b.zx);
    var var_2 = ~var_0.a;
    return StorageBuffer(vec3<f32>(537f, 638f, _wgslsmith_f_op_f32(f32(-1f) * -637f)), var_1.a.x << (~var_1.a.x % 32u), min(~4294967295u << (firstTrailingBit(var_1.a.x) % 32u), u_input.b.x) ^ 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<u32, 6>();
    let var_1 = ~abs(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 39144i), vec3<i32>(0i, -18467i, var_0)), -(i32(-1i) * -19570i), 18648i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 103f), -1985f, 1940f));
    var var_3 = var_2.xyz;
    global1 = abs(max(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.c.x, -26216i, var_1.x), vec4<i32>(var_1.x, u_input.c.x, var_1.x, 42810i), vec4<i32>(12730i, -1704i, -2147483647i, var_1.x)), func_1(vec4<i32>(var_1.x, 16985i, var_1.x, u_input.c.x))), var_0 << (_wgslsmith_clamp_u32(max(1u, u_input.b.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), 1241u) % 32u)));
    let var_4 = max(-_wgslsmith_mod_i32(var_1.x, min(1i, 2147483647i)), reverseBits(~u_input.c.x));
    global0 = array<u32, 6>();
    let x = u_input.a;
    s_output = func_2(vec4<i32>(~(~2147483647i | (1i ^ var_4)), -1077i, var_4, firstLeadingBit(var_0)));
}

