struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.a;
    var_0 = -(~_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(u_input.a, u_input.a)) | _wgslsmith_clamp_i32(-9242i, -1i, -11263i));
    var_0 = -16650i & u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(898f, -150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1275f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-955f)))), -1166f)));
    return !vec4<bool>(false, ~_wgslsmith_add_i32(u_input.a, u_input.a) <= abs(u_input.a << (0u % 32u)), true, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.c, abs(_wgslsmith_clamp_u32(u_input.b, 24359u, ~3881u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 54061u, u_input.b), firstTrailingBit(vec3<u32>(u_input.c, 22619u, 0u))) % 32u))), 14u)];
    return ~_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, ~arg_2.a, 46543i, 2147483647i), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-40884i, 1i, 0i, u_input.a), ~vec4<i32>(0i, 42680i, u_input.a, var_0.a))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> bool {
    global0 = array<Struct_1, 14>();
    let var_0 = !select(vec3<bool>(arg_0.x & true, 134f == arg_2, true), !(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), !(!any(vec3<bool>(true, true, true))));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_add_vec4_i32(func_4(!func_3(), false, global0[_wgslsmith_index_u32(~arg_1, 14u)]) | abs(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, 36976i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))), abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 41753i, u_input.a)) | vec4<i32>(countOneBits(1i), u_input.a >> (125989u % 32u), u_input.a << (arg_1 % 32u), u_input.a)));
    return arg_0.x;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(48569i);
    global0 = array<Struct_1, 14>();
    var var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(~1u, u_input.b) | 3699u, firstTrailingBit(45251u)), 14u)];
    var var_2 = Struct_1(var_1.a);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, 1u), u_input.b), min(vec3<u32>(1u, u_input.c, u_input.b), vec3<u32>(3555u, 40879u, 0u))), vec3<u32>(u_input.c, _wgslsmith_mod_u32(countOneBits(110318u), ~39165u), ~1u), all(!(!vec3<bool>(true, false, arg_0)))), reverseBits(vec3<u32>(67381u, 37727u, ~u_input.b))), 14u)];
    return select(vec2<bool>(true, !all(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), false))), vec2<bool>(func_2(vec2<bool>(select(arg_0, arg_0, arg_0), !arg_0), _wgslsmith_div_u32(~u_input.c, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2103f, 1000f, arg_0)))), false), !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_0 = any(!func_1(any(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = Struct_1(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -295f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 26120i, _wgslsmith_sub_u32(min(~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)), 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, firstTrailingBit(4294967295u), ~u_input.b, 1u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.c, u_input.c), vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, 34900u, 8228u, u_input.b)))) % 32u));
}

