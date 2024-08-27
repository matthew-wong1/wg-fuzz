struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global0 = array<f32, 20>();
    let var_0 = Struct_1(vec3<f32>(-591f, -729f, 641f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(44635u, 20u)])), _wgslsmith_f_op_f32(round(-608f)))), -653f, _wgslsmith_f_op_f32(1982f + global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(22559u, u_input.c.x), 20u)])));
    var var_1 = var_0.a.xx;
    let var_2 = firstTrailingBit(~global1.yx);
    let var_3 = vec4<bool>(true, true, true, true);
    return true;
}

fn func_2() -> bool {
    var var_0 = Struct_2(false && func_3(global1.wy ^ (vec2<i32>(0i, 27918i) & vec2<i32>(global1.x, global1.x))));
    var var_1 = vec4<i32>(u_input.b.x & -(6476i & u_input.b.x), u_input.b.x, global1.x, ~2147483647i);
    var_0 = Struct_2(var_0.a);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 20u)])) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(6831u, 20u)]))))) <= -2538f);
    var_1 = vec4<i32>(-2147483647i, max(reverseBits(0i), u_input.b.x), firstTrailingBit(firstLeadingBit(max(1i, firstTrailingBit(1i)))), _wgslsmith_dot_vec3_i32(global1.zyy, vec3<i32>(var_1.x, -global1.x, ~15435i << (u_input.d % 32u))));
    return false;
}

fn func_1() -> StorageBuffer {
    var var_0 = any(vec4<bool>(all(vec3<bool>(select(true, true, true), true, func_2())), true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) || func_3(vec2<i32>(global1.x, u_input.b.x)), !(any(vec2<bool>(false, false)) || (global0[_wgslsmith_index_u32(0u, 20u)] <= global0[_wgslsmith_index_u32(u_input.c.x, 20u)]))));
    let var_1 = vec2<i32>(u_input.b.x, -(~u_input.b.x));
    global1 = vec4<i32>(-48008i, ~2147483647i >> (u_input.c.x % 32u), u_input.b.x, ~(-u_input.b.x));
    global0 = array<f32, 20>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-322f, -1322f, global0[_wgslsmith_index_u32(u_input.d, 20u)]) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(86252u, 20u)], 144f)) + vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(59658u, 20u)], 1514f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1037f, -1225f, 521f) + vec3<f32>(1231f, 375f, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 20u)]), global0[_wgslsmith_index_u32(~u_input.c.x, 20u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-739f, -323f, global0[_wgslsmith_index_u32(86660u, 20u)]), vec3<f32>(2164f, -1000f, global0[_wgslsmith_index_u32(u_input.d, 20u)]), true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(611f, -804f, -1756f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1036f, -785f, global0[_wgslsmith_index_u32(31855u, 20u)])))), false)));
    return StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x ^ u_input.c.x, ~u_input.c.x), vec3<u32>(u_input.d, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_u32(49720u, u_input.a.x))), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.d, u_input.c.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(691f + var_2.b.x), -2432f)))), 703f, ~(~u_input.a.x), firstTrailingBit(_wgslsmith_clamp_vec2_i32(countOneBits(global1.ww) ^ u_input.b, vec2<i32>(_wgslsmith_add_i32(-2147483647i, 12172i), u_input.b.x), reverseBits(global1.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(u_input.b.x, 2770i >> (firstTrailingBit(~u_input.c.x) % 32u), _wgslsmith_mult_i32(u_input.b.x, global1.x), -1i);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.d, 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -122f), true)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1468f)))) - global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, 38719u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), 20u)]), -480f));
    var var_2 = global1.ywy;
    let x = u_input.a;
    s_output = func_1();
}

