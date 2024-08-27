struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global1 = array<vec2<u32>, 5>();
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.yz, -min(reverseBits(vec2<i32>(-51403i, -3175i)), vec2<i32>(u_input.b.x, -14426i))), 0i);
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1840f * 934f), -1000f))))));
    let var_0 = ~_wgslsmith_mult_i32(func_3(), -1i) << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u);
    var var_1 = -_wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(26035i, var_0), _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.wy), _wgslsmith_add_i32(u_input.b.x, -1140i)), max(vec3<i32>(select(-1i, 50506i, false), 10642i, -1i >> (u_input.a.x % 32u)), u_input.b.wwy));
    return Struct_1(-1062f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = arg_0;
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    global0 = func_2();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * 2172f) + 1482f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2359f, -917f)))) + vec2<f32>(-1127f, var_0.a)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -560f))))));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<u32> {
    let var_0 = ~vec3<i32>(-2147483647i, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, firstTrailingBit(_wgslsmith_clamp_i32(-41092i, 2147483647i, u_input.b.x))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1523f, _wgslsmith_f_op_f32(abs(global0.a))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(), !vec3<bool>(true, arg_0, false)))));
    global0 = func_2();
    global0 = Struct_1(global0.a);
    return vec2<u32>(arg_1, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, max(countOneBits(1u), u_input.a.x));
    var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(72119u, 36714u), 16893u), 5u)];
    var_0 = u_input.a.yy;
    global1 = array<vec2<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1995f, 908f) + vec2<f32>(-338f, -657f)), vec2<f32>(global0.a, global0.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1257f, _wgslsmith_f_op_f32(-global0.a))), 603f)), ~countOneBits(~var_0.x) >= 8610u));
    var var_2 = firstLeadingBit(select(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(4294967295u, var_0.x) ^ vec2<u32>(u_input.a.x, var_0.x)), u_input.a.x), abs(vec2<u32>(~1u, ~0u)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(global1[_wgslsmith_index_u32(1u, 5u)], reverseBits(vec2<u32>(33021u, var_0.x)) | func_1(true, _wgslsmith_clamp_u32(var_2.x, 1u, 1298u)), select(vec2<bool>(true, true), vec2<bool>(-1i == u_input.b.x, true), vec2<bool>(true, true))), u_input.a.x, u_input.b, u_input.b.zwx, ~u_input.b.www);
}

