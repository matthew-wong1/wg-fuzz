struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: array<bool, 16>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 19>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_add_u32(global2.b, u_input.a.x & u_input.a.x);
    var var_1 = _wgslsmith_add_i32(1i, ~(-8793i) & u_input.b.x);
    global0 = array<vec4<f32>, 10>();
    let var_2 = select(vec2<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(5469u, 16u)], false, false)), false), vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(10883u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global2.b, 16u)]))), all(select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.b, 16u)], global1[_wgslsmith_index_u32(116607u, 16u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), false), 1000f >= global3[_wgslsmith_index_u32(u_input.a.x, 19u)]))), any(vec3<bool>(11501u > (u_input.a.x ^ 26219u), true, _wgslsmith_dot_vec3_i32(vec3<i32>(6481i, u_input.b.x, u_input.b.x), u_input.b) != -5925i)));
    return 46443u;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(func_3(), 19u)])), _wgslsmith_add_u32(global2.b, global2.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))));
}

fn func_1() -> vec4<u32> {
    global1 = array<bool, 16>();
    let var_0 = _wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.b.x, 1i)), -(~u_input.b.xy));
    global1 = array<bool, 16>();
    var var_1 = 1090f;
    global2 = func_2();
    return abs(vec4<u32>(countOneBits(u_input.a.x & 0u), firstTrailingBit(abs(45536u)), u_input.a.x, countOneBits(max(0u, abs(4294967295u)))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_4 {
    var var_0 = 966f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1869f)), global2.c);
    let var_2 = firstLeadingBit(firstLeadingBit(~(~(arg_1 ^ arg_1))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1190f, arg_0, -217f), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], -234f, -1106f))))))));
    var var_4 = -(_wgslsmith_clamp_i32(u_input.b.x, abs(-5989i), ~(~arg_2)) & (i32(-1i) * -7802i));
    return Struct_4(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(25497u >> (firstTrailingBit(~arg_1.x) % 32u), 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(exp2(global2.c)), func_1(), max(_wgslsmith_mult_i32(u_input.b.x, 0i), -max(-1i, ~u_input.b.x)));
    global1 = array<bool, 16>();
    let var_1 = Struct_2(firstLeadingBit(~abs(vec4<i32>(u_input.b.x, -2147483647i, -23732i, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) + 574f), Struct_1(-1000f, _wgslsmith_clamp_u32(global2.b, func_3(), _wgslsmith_clamp_u32(func_2().b, 42438u, 1u)), _wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-259f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -119f), false)))));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1324f * 571f), _wgslsmith_f_op_f32(f32(-1f) * -1889f)) + var_0.a), u_input.a.x, _wgslsmith_f_op_f32(-2583f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2361f - _wgslsmith_f_op_f32(-global2.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(29333u, 19u)] - 673f)))));
    var var_2 = firstTrailingBit(func_3());
    let var_3 = func_2();
    var_2 = u_input.a.x;
    global1 = array<bool, 16>();
    let var_4 = vec2<u32>(func_3(), 4294967295u) & (u_input.a.xz & u_input.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(-13588i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, var_1.c.a, var_3.a)))))));
}

