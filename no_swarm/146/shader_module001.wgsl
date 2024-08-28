struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66199u;

var<private> global1: array<u32, 31>;

var<private> global2: array<vec2<bool>, 20>;

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = arg_0;
    let var_1 = vec3<f32>(-1002f, -854f, _wgslsmith_f_op_f32(round(1569f)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.b))));
    let var_3 = Struct_1(vec3<bool>(!(true || !arg_2.x), arg_2.x, select(true, true, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f + arg_0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(199f, var_0.c.x)) - 1154f))), vec3<u32>(~4294967295u << (1u % 32u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~arg_1.d.x ^ 54132u, 31u)], _wgslsmith_clamp_u32(arg_1.d.x, ~arg_0.d.x, select(u_input.c.x, u_input.b.x, arg_0.a.x))), _wgslsmith_mult_u32(arg_1.d.x, arg_1.d.x)), arg_1.c);
    let var_4 = var_0.a.yx;
    return !(!(!var_3.a.x));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    var var_0 = !(!vec4<bool>(all(vec2<bool>(false, arg_0)), arg_0, func_2(Struct_1(vec3<bool>(arg_0, arg_0, true), 1057f, vec2<f32>(715f, -921f), u_input.c.yyw, vec2<f32>(-1000f, -1172f)), Struct_1(vec3<bool>(arg_0, arg_0, false), 1251f, vec2<f32>(964f, -592f), vec3<u32>(u_input.b.x, 58214u, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<f32>(350f, -577f)), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0)), arg_0));
    global3 = ~(~(25209u & ~u_input.c.x));
    global0 = global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
    global1 = array<u32, 31>();
    var var_1 = u_input.b;
    return _wgslsmith_f_op_f32(sign(984f));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!select(vec3<bool>(true, all(vec2<bool>(true, true)), all(arg_2.a)), arg_2.a, !(!arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-774f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), arg_2.e.x), arg_1, arg_0.xx);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(0u, 31u)] & ~global1[_wgslsmith_index_u32(~33074u, 31u)]), 31u)];
    var var_0 = ~firstTrailingBit(global1[_wgslsmith_index_u32(75120u, 31u)]);
    let var_1 = u_input.c;
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1388f - -370f))), 701f, -1373f) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, 1895f)), _wgslsmith_f_op_f32(-602f + -337f))), _wgslsmith_f_op_f32(func_1(true, _wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(u_input.a, u_input.a, u_input.e.x, u_input.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-326f)) * _wgslsmith_f_op_f32(499f + -1648f)))), _wgslsmith_mult_vec3_u32(~abs(u_input.b.wwz), u_input.c.wwx), Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(sign(-855f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -358f) + vec2<f32>(-1051f, 167f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1887f), vec2<f32>(-1000f, -439f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(400f, 890f), vec2<f32>(295f, -926f), false))), select(vec2<bool>(false, false), vec2<bool>(true, false), u_input.e.x >= 1i))), var_1.www, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(209f, 941f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, 1000f))))));
    let var_3 = countOneBits(u_input.d.xzx);
    let var_4 = var_2.a;
    var var_5 = u_input.d;
    var_5 = vec4<i32>(-var_5.x, select(var_5.x, firstLeadingBit(min(-34118i, u_input.a)) >> (_wgslsmith_sub_u32(~u_input.c.x, 49548u) % 32u), all(vec4<bool>(true, true, true, true))), ~countOneBits(var_3.x), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

