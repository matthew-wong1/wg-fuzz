struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -17365i, -25273i);

var<private> global1: vec2<f32> = vec2<f32>(2544f, -816f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> vec2<f32> {
    global0 = vec3<i32>(_wgslsmith_mult_i32(~(-_wgslsmith_add_i32(global0.x, 1i)), ~reverseBits(firstTrailingBit(2147483647i))), 42052i, _wgslsmith_sub_i32(-select(~global0.x, i32(-1i) * -2147483647i, all(vec4<bool>(true, false, false, true))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(countOneBits(global0.yy), -u_input.a.yx), -2147483647i)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1361f)))))));
    let var_0 = -75290i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 1142f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x), all(vec3<bool>(false, select(false, true, true), true)))), vec4<u32>(~0u, u_input.b.x, ~u_input.b.x, ~(~4294967295u)) & _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x) | vec4<u32>(62103u, u_input.b.x, 36286u, 59433u)), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(75985u, u_input.b.x, 33260u, u_input.b.x))));
    var var_2 = vec3<i32>(max(~(~abs(var_0)), -20654i), _wgslsmith_div_i32(global0.x, 0i), ~_wgslsmith_div_i32(44744i, countOneBits(countOneBits(u_input.a.x))));
    return vec2<f32>(636f, global1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, ~4294967295u)) << (_wgslsmith_div_u32(u_input.b.x, 33559u << (u_input.b.x % 32u)) % 32u);
    let var_1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), u_input.a.x <= 31053i), !vec2<bool>(all(vec3<bool>(false, false, true)), (global1.x >= -609f) || false), !(~u_input.b.x == u_input.b.x));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -456f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1348f) + vec2<f32>(1992f, -360f))) + vec2<f32>(206f, _wgslsmith_f_op_f32(1521f + global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * 1241f))))));
    return Struct_1(564f, abs(vec4<u32>(u_input.b.x, 32343u, 0u, var_0)));
}

fn func_3() -> Struct_1 {
    let var_0 = select(u_input.b.zz, u_input.b.zz, vec2<bool>(false, true)) ^ u_input.b.yx;
    var var_1 = firstTrailingBit(~_wgslsmith_add_u32(var_0.x, select(max(var_0.x, var_0.x), var_0.x, any(vec2<bool>(true, false)))));
    global1 = vec2<f32>(-112f, -1934f);
    global0 = _wgslsmith_mod_vec3_i32(max(max(~u_input.a >> (vec3<u32>(var_0.x, u_input.b.x, 5369u) % vec3<u32>(32u)), u_input.a), vec3<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, global0.x)) ^ u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, ~(-u_input.a)), vec3<i32>(12194i, ~_wgslsmith_mult_i32(global0.x, -16347i), abs(~(-26812i))), vec3<i32>(-28105i, _wgslsmith_mult_i32(u_input.a.x ^ global0.x, _wgslsmith_div_i32(global0.x, u_input.a.x)), ~firstLeadingBit(global0.x))));
    let var_2 = func_1();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_3();
    let var_2 = !select(true, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(418f)) >= var_0.a) && ((global1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 249f))) & !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))));
    let var_3 = _wgslsmith_mult_i32(global0.x, 0i);
    var var_4 = Struct_1(var_0.a, ~vec4<u32>(_wgslsmith_add_u32(var_1.b.x, ~4294967295u), func_1().b.x >> (var_1.b.x % 32u), ~0u, _wgslsmith_mod_u32(firstLeadingBit(var_0.b.x), ~4294967295u)));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, -756f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, 1599f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yz);
}

