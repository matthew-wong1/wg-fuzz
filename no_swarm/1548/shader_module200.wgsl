struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1000f, -1290f, 1043f, 984f, -157f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_2(_wgslsmith_sub_vec4_u32(var_0.a, select(var_0.a, _wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_0.a.x, u_input.c, arg_0.a.x, arg_0.a.x)), arg_0.a), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(arg_1.b.x, arg_0.b.x, arg_0.b.x))))), !(!arg_1.b));
    global0 = array<f32, 5>();
    let var_1 = arg_0;
    return 78685u | ~select(u_input.c | _wgslsmith_mod_u32(arg_1.a.x, var_1.a.x), 1u, var_1.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(true, _wgslsmith_mod_i32(0i, -34941i) | _wgslsmith_div_i32(~u_input.a, ~u_input.a), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a.zx, ~vec2<u32>(u_input.c, arg_1.a.x)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_0.a.x, 4294967295u))), true || ((_wgslsmith_mult_u32(u_input.b.x, arg_1.a.x) >> (func_3(Struct_2(arg_1.a, arg_1.b), arg_0, 52720u, u_input.a) % 32u)) < 74616u));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_div_u32(1u, u_input.b.x), _wgslsmith_sub_u32(select(~7028u, 18170u, any(vec3<bool>(true, false, false))), arg_0.a.x | arg_0.a.x), ~(max(var_1.c.x, 1u) & arg_1.a.x), arg_2), select(arg_0.b, vec2<bool>(true, any(vec2<bool>(false, arg_0.b.x))), vec2<bool>(false, true)));
    let var_3 = (i32(-1i) * -2147483647i) >= abs(max(min(var_1.b, reverseBits(var_1.b)), _wgslsmith_clamp_i32(65972i << (var_0.a.x % 32u), var_1.b, abs(var_1.b))));
    global0 = array<f32, 5>();
    return true;
}

fn func_1() -> StorageBuffer {
    let var_0 = any(vec2<bool>(!(!(u_input.b.x <= u_input.b.x)), any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, select(min(u_input.b.x, 12039u) << (u_input.b.x % 32u), u_input.c, !func_2(Struct_2(vec4<u32>(2986u, 13552u, u_input.b.x, 1u), vec2<bool>(var_0, true)), Struct_2(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 7499u), vec2<bool>(false, var_0)), u_input.c, vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)])))), 5u)]);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(6777u, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, min(u_input.c, 43013u)), 5u)])))), 320f);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1084f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -1484f))) - 1f))));
    let var_3 = select(select(vec2<bool>(false, !var_0), select(!(!vec2<bool>(var_0, var_0)), select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(false, false)), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, var_0))), vec2<bool>(all(vec2<bool>(var_0, var_0)), ~55808u != u_input.c)), vec2<bool>((reverseBits(16548u) & (u_input.b.x | u_input.c)) <= 30545u, true), vec2<bool>(true, var_0));
    return StorageBuffer(max(select(abs(vec2<u32>(u_input.c, 12602u)) ^ u_input.b.yy, ~u_input.b.zx ^ vec2<u32>(1u, 4294967295u), select(select(vec2<bool>(var_0, var_3.x), var_3, var_3), vec2<bool>(true, true), true)), select(vec2<u32>(select(4294967295u, 14241u, var_0), ~u_input.b.x), u_input.b.xx, (var_0 & var_3.x) | false)), -firstTrailingBit(_wgslsmith_mod_i32(1540i, u_input.a) >> (~u_input.c % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b.x, abs(u_input.b.x), 8657u), u_input.b), vec3<u32>(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c, 1u, 27071u))), min(0u & u_input.c, 70833u), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~44590u);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, var_0) | 31142u) & _wgslsmith_mult_u32(firstLeadingBit(85088u) >> (var_0 % 32u), 0u), ~_wgslsmith_mult_u32(reverseBits(27064u), var_0), abs(4294967295u));
    var var_2 = var_1.x;
    var_1 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, ~(u_input.b.x & var_0)), u_input.b), vec3<u32>(~_wgslsmith_add_u32(var_1.x, 80860u), u_input.c, u_input.c ^ var_1.x), !all(vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_1.x, 5u)]) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))))));
    global0 = array<f32, 5>();
    let x = u_input.a;
    s_output = func_1();
}

