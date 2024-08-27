struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), 85110u, vec3<i32>(49414i, 14177i, -7258i), vec3<f32>(1267f, -1394f, -145f));

var<private> global2: vec2<u32> = vec2<u32>(0u, 79845u);

var<private> global3: array<u32, 20> = array<u32, 20>(0u, 38233u, 0u, 0u, 0u, 1u, 18549u, 1u, 20183u, 36029u, 4294967295u, 23351u, 21992u, 4294967295u, 4294967295u, 4294967295u, 1u, 27216u, 609u, 17296u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = global1.d.x;
    var var_1 = _wgslsmith_f_op_f32(min(507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-265f)))));
    var var_2 = vec2<bool>(~min(_wgslsmith_mult_u32(15526u, global2.x), 0u << (global0.b.x % 32u)) <= u_input.c, true);
    var var_3 = max(vec4<u32>(1u, ~(~(~85223u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x >> (1u % 32u), global2.x), global0.a.x), firstTrailingBit(~u_input.d.x)), vec4<u32>(~(~abs(global0.b.x)), global1.b, ~global1.b, 0u));
    let var_4 = _wgslsmith_div_f32(506f, -912f);
    return vec4<bool>(true, !all(!select(global0.c, global0.c, vec4<bool>(var_2.x, true, global0.c.x, false))), all(global0.c.zzx), true);
}

fn func_2() -> bool {
    let var_0 = -1347f;
    global1 = Struct_1(vec3<bool>(global0.c.x, all(func_3()), true), u_input.b, global1.c, vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(623f - _wgslsmith_f_op_f32(round(-190f))))), -452f));
    var var_1 = func_3();
    global3 = array<u32, 20>();
    var_1 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * -390f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), true, !(var_1.x | true) && (_wgslsmith_f_op_f32(-var_0) >= _wgslsmith_f_op_f32(f32(-1f) * -278f)), true);
    return firstLeadingBit(~(-global1.c.x)) == -global1.c.x;
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = arg_0;
    var var_0 = ~max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(39812u, u_input.d.x), global0.b), vec2<u32>(75425u, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(13003u, arg_0.b)))), 20u)], 20u)], global0.a.x);
    var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(global1.b >> (178806u % 32u), 1u) << (firstLeadingBit(global1.b) % 32u), ~(~4294967295u));
    var var_1 = func_2();
    global3 = array<u32, 20>();
    return any(global0.c.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, global1.d.x) * global1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1018f - global1.d.x) * _wgslsmith_f_op_f32(ceil(global1.d.x)))))));
    var var_1 = ~select(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, global1.c.x, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(-57138i, 23396i, global1.c.x, global1.c.x), vec4<i32>(global1.c.x, u_input.a, global1.c.x, -1i))), 9169i, func_1(Struct_1(select(vec3<bool>(true, global0.c.x, global0.c.x), vec3<bool>(global0.c.x, false, global0.c.x), global1.a.x), 0u & u_input.c, vec3<i32>(global1.c.x, -22987i, 34540i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1969f, 1923f, -162f) + vec3<f32>(1566f, 968f, 1996f)))));
    var var_2 = u_input.c;
    let var_3 = -1014f;
    let var_4 = _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(5800u, 0u, (~global3[_wgslsmith_index_u32(11142u, 20u)] << (global2.x % 32u)) >> (global2.x % 32u)));
    global2 = vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(global1.b & 4294967295u, 0u >> (global1.b % 32u))), ~global0.b.x), _wgslsmith_mod_u32(~max(0u, global1.b) | global3[_wgslsmith_index_u32(96016u, 20u)], global3[_wgslsmith_index_u32(u_input.b, 20u)]));
    var var_5 = 21183u;
    global3 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<i32>(1i, 60421i, global1.c.x ^ u_input.a, ~u_input.a), min(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 17729i, -1i, -22269i), vec4<i32>(-27955i, -38473i, global1.c.x, global1.c.x))), ~vec4<i32>(1i, u_input.a, global1.c.x, global1.c.x))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(2147483647i, global1.c.x)), -_wgslsmith_sub_vec2_i32(vec2<i32>(51503i, 2147483647i), global1.c.yz)), vec2<i32>(global1.c.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(1u, abs(71571u)), 7238u, var_4.x & 6067u, ~global3[_wgslsmith_index_u32(global1.b, 20u)] & 68414u), vec4<u32>(4294967295u, 76638u, ~(~95517u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 26318u, global3[_wgslsmith_index_u32(global0.a.x, 20u)], 0u), vec4<u32>(global1.b, global1.b, global2.x, 90707u)))), vec4<u32>(global1.b, _wgslsmith_mod_u32(global0.a.x, ~global3[_wgslsmith_index_u32(global0.b.x, 20u)]), abs(~global3[_wgslsmith_index_u32(global2.x, 20u)]), _wgslsmith_mult_u32(~u_input.c, global0.a.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))), _wgslsmith_f_op_f32(-726f - var_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))))), -vec4<i32>(u_input.a, -2147483647i, global1.c.x, global1.c.x));
}

