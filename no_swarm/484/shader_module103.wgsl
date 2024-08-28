struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> f32 {
    global0 = array<u32, 19>();
    let var_0 = Struct_1(!select(!(!global2.a), global2.a, select(global2.a, vec3<bool>(global2.a.x, true, true), select(global2.a.x, false, false))));
    let var_1 = Struct_1(select(vec3<bool>(all(select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, true), true)), true, false), var_0.a, true));
    global2 = var_0;
    var var_2 = var_0;
    return -899f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0 + arg_0);
    global0 = array<u32, 19>();
    global2 = Struct_1(global2.a);
    global0 = array<u32, 19>();
    let var_1 = Struct_2(~(_wgslsmith_div_u32(arg_3.a, abs(arg_3.a)) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]));
    return 195f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global2 = Struct_1(select(global2.a, vec3<bool>(true, false, all(select(vec2<bool>(false, arg_1.a.x), global2.a.zx, arg_1.a.x))), all(vec2<bool>(arg_1.a.x, all(vec3<bool>(global2.a.x, global2.a.x, true))))));
    var var_0 = !global2.a.x;
    var var_1 = Struct_2(5539u);
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17032u, ~(0u ^ global0[_wgslsmith_index_u32(var_1.a, 19u)]), (4294967295u & var_1.a) ^ 50895u), ~(~vec3<u32>(var_1.a, var_1.a, 26332u))), 4535u), 18u)];
    var var_2 = 1i;
    return !(!select(vec4<bool>(true, any(vec4<bool>(global2.a.x, false, global2.a.x, false)), all(arg_1.a), true), vec4<bool>(!global2.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(true, !global2.a.x, 0u > global0[_wgslsmith_index_u32(14236u, 19u)], select(global2.a.x, arg_1.a.x, arg_1.a.x))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> bool {
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(972f)));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f + -310f) - _wgslsmith_f_op_f32(round(318f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2006f), -152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1473f, _wgslsmith_f_op_f32(func_3(vec3<f32>(290f, 149f, -935f), Struct_1(global2.a), vec4<f32>(-2929f, 1840f, 1619f, -233f), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45558u, 19u)], 18u)])))) - 1f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(-1012f + 1658f))))), Struct_1(global2.a), -105f);
    var_1 = !arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    let var_0 = vec3<f32>(-344f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -256f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -385f), true))), global2.a.x)));
    var var_1 = select(select(global2.a, !global2.a, !global2.a.x), vec3<bool>(global2.a.x, func_2(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]) <= (global0[_wgslsmith_index_u32(46704u, 19u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26004u, 19u)], 19u)], 19u)], 19u)], 19u)] % 32u)), select(select(vec4<bool>(global2.a.x, false, true, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(true, true, true, global2.a.x)), vec4<bool>(true, true, true, true), global2.a.x)), func_2(any(vec2<bool>(global2.a.x, global2.a.x)) | any(vec2<bool>(global2.a.x, global2.a.x)), select(vec4<bool>(global2.a.x, false, true, false), vec4<bool>(true, global2.a.x, global2.a.x, false), !vec4<bool>(false, true, false, global2.a.x)))), all(select(!func_4(vec3<f32>(var_0.x, -2111f, -798f), Struct_1(global2.a), 1570f).zw, !global2.a.xz, func_4(_wgslsmith_f_op_vec3_f32(ceil(var_0)), Struct_1(vec3<bool>(global2.a.x, global2.a.x, false)), -290f).zz)));
    var var_2 = !(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29608u, 19u)], 19u)], 19u)]) > global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(0u, 19u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50829u, 19u)], 19u)], global0[_wgslsmith_index_u32(48334u, 19u)]), 19u)], 19u)]), 19u)]), 19u)]);
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-881f)) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x)) != -901f;
    let var_3 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(~4294967295u, 19u)]);
    global1 = array<Struct_2, 18>();
    var_2 = !global2.a.x;
    var var_4 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-338f, 202f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f - 1379f)))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 69197u, var_3)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3, 19u)], 19u)], 1016u, var_3, var_3), vec4<u32>(1u, var_3, 22848u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]), vec4<u32>(global0[_wgslsmith_index_u32(10280u, 19u)], var_3, 0u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3, 0u, var_3), vec4<u32>(var_3, 36616u, global0[_wgslsmith_index_u32(33564u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3118u, 19u)], 19u)]))) ^ firstTrailingBit(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3, 19u)], 19u)], 19u)], 1u, 0u, var_3)), ~u_input.a.x, var_0.x);
}

