struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, false, false, false, false, true, true, true, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_vec3_f32(-global0.b));
    let var_0 = vec4<bool>(true, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 10u)], true, !all(vec2<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), true)));
    global2 = array<bool, 10>();
    var var_1 = vec4<i32>(-2147483647i, global1.c.x, -1i, 0i);
    global1 = Struct_2(_wgslsmith_f_op_f32(step(625f, arg_1)), any(vec4<bool>(!(global1.d < -2147483647i), var_0.x, false & (global1.a <= 371f), global2[_wgslsmith_index_u32(0u, 10u)])), var_1.xzw, ~u_input.b);
    return select(any(!(!var_0)), var_0.x, var_0.x) & true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_4(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), arg_1.yz), vec2<bool>(false, arg_0.x), select(arg_1.xz, arg_0.xy, true))), Struct_3(Struct_1(-1418f, _wgslsmith_div_vec3_f32(vec3<f32>(-177f, global0.a, global1.a), vec3<f32>(1794f, global1.a, global0.b.x))), -1957f, _wgslsmith_add_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.a.x, 19993u, 41181u))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 745u, 59981u)), vec3<u32>(u_input.a.x, 1u, 11672u), vec3<u32>(u_input.a.x, u_input.a.x, 73220u))), _wgslsmith_div_vec4_i32(-vec4<i32>(-20753i, -13132i, global1.c.x, global1.d), firstTrailingBit(vec4<i32>(-1i, 31534i, global1.d, u_input.b))), abs(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 48675u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 45248u))))), global0.a, select(arg_0.zw, arg_0.yw, any(!select(vec3<bool>(false, arg_1.x, false), arg_0.zyz, false))), Struct_2(global1.a, arg_1.x, -global1.c, reverseBits(u_input.b)));
    global1 = var_0.e;
    global0 = var_0.b.a;
    return _wgslsmith_f_op_f32(-global1.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1775f), -204f > global0.a, firstTrailingBit(global1.c) ^ vec3<i32>(-32742i, _wgslsmith_clamp_i32(global1.d, -12761i, 40261i) >> (u_input.a.x % 32u), _wgslsmith_mult_i32(arg_2 << (1u % 32u), 1i)), arg_2 & 28606i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.yx);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, global1.a))) + 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f)));
    var var_3 = !arg_0.wwy;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(!arg_0, !arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    return Struct_2(global1.a, any(vec4<bool>(true, any(!var_3.xz), ~u_input.b >= -436i, var_3.x)), vec3<i32>(arg_2, _wgslsmith_sub_i32(var_0.d, 43311i), var_0.c.x), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, 0i), _wgslsmith_clamp_i32(-151i, 0i, u_input.b))) | (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, -35794i, -15794i, var_0.d)), vec4<i32>(global1.c.x, var_0.c.x, global1.d, var_0.c.x)) << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1162f, global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.a, 282f)), -1000f)) + -414f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.a) * _wgslsmith_f_op_f32(exp2(global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f + global1.a))))));
    global0 = Struct_1(967f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(global0.b)))), vec3<f32>(_wgslsmith_f_op_f32(global1.a * global0.b.x), global0.b.x, global1.a)))));
    let var_0 = func_2(!(!vec4<bool>(global1.b & false, func_1(vec2<u32>(37400u, u_input.a.x), global0.b.x), true, true)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.a))))), 324f), _wgslsmith_sub_i32(_wgslsmith_add_i32(-18618i, u_input.b), min(2147483647i, global1.c.x)));
    let var_1 = Struct_3(Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, 810f, -502f) - global0.b), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false)))))), 305f, _wgslsmith_clamp_vec3_u32(vec3<u32>(select(~31146u, reverseBits(40817u), global1.b), u_input.a.x, ~0u), reverseBits((vec3<u32>(u_input.a.x, 44550u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a.x, 11774u, 0u), vec3<u32>(u_input.a.x, 1u, 1u), global2[_wgslsmith_index_u32(min(u_input.a.x, 1u), 10u)]), select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 8144u, u_input.a.x), vec3<bool>(true, var_0.b, var_0.b)) ^ (vec3<u32>(28671u, 43825u, 0u) & vec3<u32>(0u, 24441u, u_input.a.x)))), -countOneBits(vec4<i32>(-21860i, -35473i, -25745i, var_0.d)) << (((vec4<u32>(u_input.a.x, 0u, 1u, 22107u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 26308u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 77536u) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_u32(32358u, _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)));
    global0 = var_1.a;
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(8818i, _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(5124u, 64221u), 5543u, 0u, _wgslsmith_mult_u32(9062u, var_2.e)), vec4<u32>(abs(0u), var_1.e, _wgslsmith_clamp_u32(1u, var_1.c.x, var_2.c.x), 1u) ^ firstTrailingBit(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 37450u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e, u_input.a.x, 0u, 17191u), vec4<u32>(67258u, u_input.a.x, var_1.c.x, var_1.c.x)), 28863u, 61225u, ~0u), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_2.c.x))));
}

