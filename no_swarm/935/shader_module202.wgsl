struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: vec2<u32> = vec2<u32>(97517u, 4294967295u);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<f32>, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool) -> u32 {
    global1 = vec2<u32>(~reverseBits(_wgslsmith_div_u32(1u, u_input.b) | _wgslsmith_div_u32(4294967295u, 4294967295u)), select(min(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.zyy, u_input.a.zwz)) | ~(0u | global1.x), u_input.b, ((true & arg_0) != arg_0) | any(!vec4<bool>(arg_0, arg_0, true, true))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(802f, -1460f, 365f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2494f, -418f, -1542f), vec3<f32>(-1065f, -1204f, 359f)) + vec3<f32>(-2328f, 888f, 2117f)))), vec3<f32>(-580f, _wgslsmith_f_op_f32(-788f + 662f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1130f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-302f, -134f))))));
    global2 = abs((firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(global1.x, 34721u))) << (~min(global1.x, 21898u) % 32u)) | max(global1.x, ~(~u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(344f)), -1292f, true)))) + -166f);
    return abs(firstLeadingBit(global1.x));
}

fn func_3() -> vec2<u32> {
    var var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(~global1.x, 22u)];
    let var_2 = Struct_4(-_wgslsmith_sub_i32(i32(-1i) * -13632i, 0i), var_1.b);
    var var_3 = (select(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~u_input.a.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~u_input.a.yx), !(var_1.a > 1i)) != global1.x) && var_1.b.x;
    var_0 = true;
    return vec2<u32>(~reverseBits(max(1u, _wgslsmith_add_u32(0u, u_input.b))), global1.x);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> vec4<bool> {
    global0 = array<Struct_4, 22>();
    let var_0 = vec4<u32>(~(global1.x & func_2(arg_2)), 0u, 4294967295u, min(0u, ~_wgslsmith_div_u32(global1.x, _wgslsmith_add_u32(global1.x, 61381u))));
    global1 = func_3();
    let var_1 = _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, _wgslsmith_dot_vec2_u32(var_0.ww, var_0.yw)), 8u)] - arg_1.wx);
    var var_2 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(92114i, ~(-37971i)), ~(~(-14927i)), 2147483647i, 1i)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(531i, -_wgslsmith_mult_i32(0i, 2147483647i)), -(~1i), _wgslsmith_mod_i32(-(~2147483647i), select(~(-9644i), _wgslsmith_dot_vec4_i32(vec4<i32>(-15244i, -2147483647i, -1572i, -2147483647i), vec4<i32>(-33658i, 11630i, 57634i, -1i)), all(vec4<bool>(arg_2, false, arg_2, false))))));
    return vec4<bool>(true, all(select(vec3<bool>(true, true && arg_2, false), select(vec3<bool>(true, arg_2, true), !vec3<bool>(arg_2, arg_2, arg_2), arg_2), vec3<bool>(arg_2, any(vec2<bool>(true, arg_2)), false))), all(vec2<bool>(arg_2, !arg_2)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 22>();
    global2 = global1.x;
    var var_0 = select(func_1(global1.x, vec4<f32>(1f, 1f, 1f, 1f), true), vec4<bool>(true, false, true, !select(true, true, true)), !func_1(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(917f, 1086f, -1731f, 355f)), true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-311f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-858f, 1191f), true)))) - _wgslsmith_f_op_f32(select(-651f, -1000f, any(vec2<bool>(true, false)))));
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(1i, -65187i) >> (0u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(-40627i, -2147483647i, -56626i), vec3<i32>(-40226i, -37157i, 0i)), -(~16389i), -22499i) ^ vec4<i32>(1i, 0i, 1i << (~u_input.b % 32u), abs(~1i)));
}

