struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(8940u, 82858u, 21213u, 4294967295u, 103534u, 28831u, 54733u, 6598u, 25142u, 1u, 4294967295u, 48218u, 47814u, 0u, 1u, 6514u, 4294967295u, 170u, 59149u, 1u, 1u, 50622u, 58080u, 1u, 7325u, 1u, 1u, 0u, 6478u, 6346u, 1u);

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(14123i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    global0 = array<u32, 31>();
    let var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, global2.a >> (18512u % 32u), u_input.b), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a, u_input.b, -19642i), vec3<i32>(global2.a, -1i, 2147483647i)))), (18344i >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)] << (9265u % 32u)) % 32u)) ^ 51733i));
    global2 = Struct_1(global2.a);
    return true;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1424f - -312f)), -243f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(396f)) - -761f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -917f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-969f))))))));
    global0 = array<u32, 31>();
    return -1i;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    var var_1 = select(!(!select(vec4<bool>(var_0, false, false, var_0), !vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, true, var_0, true))), !(!vec4<bool>(true, true, !var_0, -1i < global2.a)), vec4<bool>(true, var_0, func_2() & var_0, !var_0));
    global0 = array<u32, 31>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(781f)) - -1061f);
    global2 = Struct_1(func_3(Struct_1(~u_input.b)));
    return Struct_2(true, _wgslsmith_dot_vec3_u32(abs(abs(~vec3<u32>(global0[_wgslsmith_index_u32(30569u, 31u)], 64520u, global0[_wgslsmith_index_u32(51623u, 31u)]))), ~(~vec3<u32>(21451u, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 46742u)) ^ _wgslsmith_mult_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 19183u, 11928u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 0u, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), true), vec3<u32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], u_input.a.x))), var_1.wzz);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = Struct_2(arg_0.x, ~(~4294967295u), select(vec3<bool>(!func_2(), func_2() || any(vec4<bool>(true, false, true, true)), false), !vec3<bool>(arg_1.a && false, true, true), vec3<bool>(any(vec3<bool>(false, arg_0.x, true)), false, func_2())));
    global2 = Struct_1(-24479i);
    let var_2 = select(vec4<bool>(true, !var_1.c.x, !all(func_1().c), func_1().c.x), !select(vec4<bool>(all(vec2<bool>(arg_1.a, arg_0.x)), !arg_0.x, arg_0.x, true), vec4<bool>(all(arg_1.c), var_1.a, true, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), select(vec4<bool>(arg_1.a, arg_1.a, arg_0.x, true), vec4<bool>(arg_0.x, arg_1.a, arg_1.a, var_1.c.x), !vec4<bool>(var_1.c.x, true, true, true))), func_2());
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-362f * -523f), -579f, _wgslsmith_f_op_f32(-551f + 1513f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2037f, -314f, -748f))), vec3<f32>(747f, 332f, -1068f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(394f - -1512f), -691f)))))));
    return Struct_1(min(u_input.b, -min(func_3(Struct_1(global2.a)), _wgslsmith_mod_i32(-1i, 19986i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-2147483647i);
    var var_0 = !vec2<bool>((global0[_wgslsmith_index_u32(u_input.a.x, 31u)] <= firstTrailingBit(52470u)) && true, all(vec3<bool>(true, true, true)));
    let var_1 = global2.a;
    let var_2 = func_4(vec3<bool>(!(global2.a != u_input.b), true, true), func_1(), vec4<u32>(47687u, ~_wgslsmith_clamp_u32(~u_input.a.x, 75695u, select(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], var_0.x)), firstLeadingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(67336u, 31u)], 1u)), abs(~u_input.a.x) | 4294967295u), -2147483647i);
    let var_3 = vec3<bool>(all(!(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x))), !var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-154f, _wgslsmith_div_f32(-1000f, 1717f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-437f, 750f) - _wgslsmith_f_op_f32(min(811f, 377f)))) * -443f), 36449u | _wgslsmith_mult_u32(max(u_input.a.x, 9302u), ~global0[_wgslsmith_index_u32(~66819u, 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(383f))), global2.a, vec3<i32>(~u_input.b, global2.a, -global2.a));
}

