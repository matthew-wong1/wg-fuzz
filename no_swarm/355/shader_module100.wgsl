struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_3;

var<private> global3: array<vec2<u32>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global2 = Struct_3(global2.a, global2.b);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(arg_2.b.x - 1000f)))));
    let var_1 = !(!(!(!func_1(9428u).x)));
    var var_2 = countOneBits(vec3<u32>(abs(u_input.a), 4294967295u, ~(~(~14305u))));
    var var_3 = 2147483647i;
    return !vec3<bool>(all(func_1(abs(var_2.x)).zy), false, !all(!vec2<bool>(var_1, var_1)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -559f))))), vec4<f32>(_wgslsmith_f_op_f32(global0.d.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.b.x * global2.a), global0.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1482f - global2.a)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(445f + 1439f)));
    let var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.b.x))) != var_0.a, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), false), func_3(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.a, 30701i, global0.a.a), ~vec3<i32>(global0.b.a, -1i, 32446i)), _wgslsmith_f_op_vec2_f32(var_0.b.zy + _wgslsmith_f_op_vec2_f32(abs(var_0.b.xx)))), global1[_wgslsmith_index_u32((u_input.a << (~1u % 32u)) | (firstLeadingBit(u_input.a) | min(u_input.a, u_input.a)), 9u)], Struct_1(~_wgslsmith_div_i32(-1i, 777i), _wgslsmith_f_op_vec2_f32(round(global0.d.b))), global0.b), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), func_1(17392u), vec3<bool>(true, true, true)));
    let var_2 = global1[_wgslsmith_index_u32(~(~(~abs(_wgslsmith_add_u32(3406u, u_input.a)))), 9u)];
    global1 = array<Struct_2, 9>();
    var var_3 = ~abs(i32(-1i) * -(-22907i | var_2.b.a));
    return func_1(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f)) - -176f))));
    global3 = array<vec2<u32>, 20>();
    var var_1 = select(select(vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, false))), func_1(~(~99818u))), vec3<bool>(false, any(func_2()), !(_wgslsmith_f_op_f32(var_0 - var_0) >= -177f)), true);
    global0 = global1[_wgslsmith_index_u32(62975u, 9u)];
    var var_2 = vec2<i32>(-1i) * -(~_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global0.a.a, -27802i), vec2<i32>(global0.a.a, 23738i), var_1.xz), firstLeadingBit(vec2<i32>(-23151i, global0.a.a)), -vec2<i32>(global0.b.a, global0.d.a)));
    var var_3 = true;
    let var_4 = Struct_3(var_0, _wgslsmith_f_op_vec4_f32(ceil(global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.b.a, max(var_2.x, var_2.x) | (global0.d.a >> (u_input.a % 32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~6539i);
}

