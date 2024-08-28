struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(8490i), Struct_1(5301i), Struct_1(-24964i), Struct_1(2147483647i), Struct_1(-35189i), Struct_1(0i), Struct_1(9314i), Struct_1(1i), Struct_1(-1i), Struct_1(-29076i), Struct_1(-30337i), Struct_1(-10268i), Struct_1(i32(-2147483648)), Struct_1(67415i), Struct_1(-54308i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = 34971u;
    let var_1 = global0[_wgslsmith_index_u32(arg_2.x, 15u)];
    let var_2 = Struct_1(~arg_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, arg_1.x, arg_1.x));
    var_0 = ~(~(~4294967295u));
    return u_input.a << (~38333u % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = vec4<u32>(~func_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.zzz, arg_0.wzx), arg_0.wyw & arg_0.yxz, -arg_0.xyw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1057f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(53100u, u_input.a, 60801u), vec3<u32>(0u, u_input.a, u_input.a)))), ~u_input.a, firstLeadingBit(u_input.a), 4294967295u);
    var var_1 = vec3<bool>(!(all(!global1.wxw) || (all(vec3<bool>(global1.x, false, true)) | global1.x)), !(true || global1.x), global1.x);
    var_1 = global1.xwz;
    var var_2 = Struct_1(2147483647i);
    global0 = array<Struct_1, 15>();
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32((71369u ^ var_0.x) >> (23932u % 32u), _wgslsmith_clamp_u32(~0u, var_0.x, var_0.x)), var_0.x), var_0.x, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 144183u), _wgslsmith_div_u32(u_input.a, var_0.x) ^ var_0.x, var_0.x, ~(~u_input.a)), countOneBits(max(var_0, ~var_0))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(u_input.c);
    var var_1 = global1.x;
    let var_2 = Struct_1(-var_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(483f - 221f))) - _wgslsmith_f_op_f32(-628f - -2255f))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 0u), vec4<u32>(abs(0u), ~59128u, ~u_input.a, ~u_input.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u))), _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 38559u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u))), func_2(~vec4<i32>(-2700i, 0i, -4789i, 0i), var_3))) ^ u_input.a, 15u)];
    return vec2<bool>(global1.x, true & (true & global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(global1.x, false), vec2<bool>(true, true), func_1());
    var var_1 = _wgslsmith_mult_u32(2012u, 1u);
    var var_2 = reverseBits(-49240i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1118f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(ceil(319f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1153f))) - 1391f), false)), _wgslsmith_mod_i32(~_wgslsmith_add_i32(u_input.b, -2147483647i), -1i) >> (countOneBits(u_input.a) % 32u));
}

