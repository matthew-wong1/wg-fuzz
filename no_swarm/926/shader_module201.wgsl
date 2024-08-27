struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: vec2<i32>;

var<private> global2: vec3<u32> = vec3<u32>(2112u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(265f));
    var var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f * -1379f)));
    global0 = array<i32, 22>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0))));
    return Struct_1(0u, !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), countOneBits(u_input.a.yw));
}

fn func_3() -> u32 {
    var var_0 = true;
    var_0 = 17698u >= max(select(_wgslsmith_add_u32(4294967295u, global2.x) >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_mult_u32(u_input.a.x, 1u), true), _wgslsmith_clamp_u32(u_input.a.x, global2.x, countOneBits(u_input.a.x)) | ~max(0u, 4294967295u));
    let var_1 = func_1().b.zy;
    let var_2 = !var_1.x;
    global1 = firstTrailingBit(abs(u_input.d.xx));
    return 49614u;
}

fn func_2(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = u_input.c;
    global2 = u_input.a.xyx;
    global2 = _wgslsmith_div_vec3_u32(min(~vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, 4294967295u), global2.x | 29101u), vec3<u32>(_wgslsmith_div_u32(1u, u_input.a.x), 27715u, reverseBits(u_input.a.x))), vec3<u32>(func_3(), ~(29497u << (global2.x % 32u)) ^ (u_input.a.x << (func_3() % 32u)), ~(~(~23607u))));
    global1 = -(var_0 >> (vec2<u32>(global2.x, ~0u >> (global2.x % 32u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-314f, _wgslsmith_f_op_f32(309f * 598f), (u_input.a.x <= u_input.a.x) | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)) + _wgslsmith_f_op_f32(f32(-1f) * -1292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f + -1003f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-970f - 411f))))));
    return StorageBuffer(var_1.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 22853u, u_input.a.x, 12557u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, 1u), u_input.a)), firstTrailingBit(u_input.a)), vec4<u32>(u_input.a.x << ((global2.x ^ ~global2.x) % 32u), func_1().c.x, min(u_input.a.x >> (37066u % 32u), abs(1u)) ^ _wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(global2.x, u_input.a.x, 49010u)), 4294967295u), u_input.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(534f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = func_2(_wgslsmith_sub_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(19272u, 22u)] << (u_input.a.x % 32u), ~global0[_wgslsmith_index_u32(var_0.c.x, 22u)], _wgslsmith_add_i32(7911i, -1i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 11827i, global0[_wgslsmith_index_u32(var_0.a, 22u)]), u_input.b.wxy))));
}

