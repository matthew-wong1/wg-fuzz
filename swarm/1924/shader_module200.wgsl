struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: Struct_3;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: array<vec4<bool>, 10>;

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    global1 = Struct_3(Struct_1(!vec4<bool>(false, all(vec3<bool>(global1.a.b, true, true)), func_2(), false), _wgslsmith_sub_i32(reverseBits(global1.d.e), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.e, arg_0.x), vec2<i32>(u_input.e, u_input.e))) != arg_0.x, vec4<bool>(false, false & select(global2.x, global1.b.x, false), false, true)), vec4<bool>(!(!(!global2.x)), true, true, _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 35u), u_input.a) != max(11196u, _wgslsmith_clamp_u32(u_input.a, 63160u, 32447u))), global1.a, global1.d);
    global1 = Struct_3(Struct_1(vec4<bool>(true, global1.d.c.c.x, (false || global2.x) && true, true), select(!global1.b.x, global1.d.b.x >= global1.d.b.x, true), vec4<bool>(abs(global1.d.d.x) != _wgslsmith_div_u32(1u, 4294967295u), global2.x, !global1.a.c.x, all(vec2<bool>(true, global1.d.c.b)))), select(select(!global1.c.c, vec4<bool>(all(global1.a.a), all(global1.d.c.c.yz), 144f < global1.d.b.x, true), !(!vec4<bool>(global1.b.x, true, false, true))), global1.d.c.a, true), global1.a, Struct_2(global1.d.d.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.d.b.x, -183f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(floor(global1.d.b.x))))), global1.d.c, firstLeadingBit(firstLeadingBit(vec2<u32>(global1.d.d.x, arg_1.a))), _wgslsmith_dot_vec3_i32(firstLeadingBit(~u_input.b), ~(~vec3<i32>(-1i, 0i, global1.d.e)))));
    let var_0 = -select(u_input.b, vec3<i32>(max(1i, ~(-1i)), 1i, 1i), !vec3<bool>(true, true, all(vec3<bool>(global1.b.x, true, false))));
    var var_1 = global1.a;
    global4 = -104f;
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = global3[_wgslsmith_index_u32(6145u, 10u)];
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.d.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.b.x), _wgslsmith_f_op_f32(ceil(global1.d.b.x))));
    var_0 = vec4<bool>(true, any(vec3<bool>(true, func_2(), func_3(select(u_input.b.yz, vec2<i32>(u_input.c, u_input.d), vec2<bool>(false, var_0.x)), Struct_4(0u)))), !(global1.d.e != 16919i), func_3(vec2<i32>(-firstLeadingBit(global1.d.e), -1i), Struct_4(~(1u | global1.d.d.x))));
    global1 = Struct_3(global1.a, vec4<bool>(false, false, any(select(!vec4<bool>(var_0.x, global2.x, var_0.x, false), global3[_wgslsmith_index_u32(max(4294967295u, 1u), 10u)], 1907f <= global1.d.b.x)), false), global1.a, global1.d);
    let var_1 = global1.d.b.x;
    return StorageBuffer(-536f, global1.d.b.x, u_input.b.xz >> (~vec2<u32>(countOneBits(0u), _wgslsmith_div_u32(4986u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(20286u, 32u)], vec3<f32>(global1.d.b.x, 1373f, -193f), var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.b.x, -1697f, 369f) - vec3<f32>(432f, global1.d.b.x, -431f))), global1.d.c.a.yxz))), _wgslsmith_f_op_f32(ceil(102f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(global1.d.a << (~(~u_input.a) % 32u), 10u)];
    let var_0 = vec3<i32>(1i, 1i, -2147483647i);
    let var_1 = _wgslsmith_mod_i32(var_0.x, min(-28351i, firstTrailingBit(28698i)));
    global0 = array<vec3<f32>, 32>();
    var var_2 = global1.d;
    let x = u_input.a;
    s_output = func_1();
}

