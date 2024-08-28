struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<vec4<bool>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    global1 = array<vec4<bool>, 32>();
    var var_0 = firstTrailingBit(u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))));
    let var_2 = var_1;
    global0 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1452f, var_1.x)))) >= var_1.x, (!all(global0.xyx) || any(select(global0.xww, vec3<bool>(global0.x, global0.x, global0.x), global0.yzx))) == !(!all(vec3<bool>(false, global0.x, global0.x))), !all(select(global0.xx, select(global0.yz, vec2<bool>(false, global0.x), true), vec2<bool>(true, true))), !(!global0.x));
    return ~42332u;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f) * _wgslsmith_f_op_f32(-1000f + 542f))))), global0.x, global0.wyz);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a)), var_0.b)) - _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1041f)))))), _wgslsmith_f_op_f32(sign(1f)), var_0.c, vec3<bool>(global0.x, var_0.d.x, global0.x));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.a, var_0.b), _wgslsmith_f_op_f32(floor(730f)), _wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_0.c))))));
    var var_3 = var_1.c;
    var_2 = Struct_5(var_2.a);
    return _wgslsmith_mod_u32(~_wgslsmith_mult_u32(~u_input.a | ~u_input.a, 1u), ~_wgslsmith_mult_u32(func_3(332f), 4294967295u));
}

fn func_1() -> f32 {
    global0 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    global1 = array<vec4<bool>, 32>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a, 44429u), reverseBits(u_input.a)), ~vec2<u32>(u_input.a, 52205u >> (u_input.a % 32u)));
    let var_1 = ~vec3<u32>(abs(2378u), func_2(), func_3(_wgslsmith_f_op_f32(round(-717f))));
    var var_2 = !vec4<bool>(false, global0.x, select(true, true, any(global0.xwz)), !(global0.x && !global0.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-388f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-295f, -728f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(472f + -3093f), _wgslsmith_div_f32(874f, -539f))))));
    let var_1 = Struct_1(-1896f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-var_0.x))))), !global0.x && global0.x, !vec3<bool>(_wgslsmith_sub_u32(4294967295u, u_input.a) < 1u, false, global0.x));
    let var_2 = u_input.a;
    let var_3 = abs(u_input.a);
    global1 = array<vec4<bool>, 32>();
    var var_4 = vec2<u32>(reverseBits(0u), 46932u);
    global0 = select(global1[_wgslsmith_index_u32(0u, 32u)], !select(global1[_wgslsmith_index_u32(4294967295u, 32u)], vec4<bool>(!global0.x, !var_1.c, true, true), !select(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], vec4<bool>(global0.x, global0.x, var_1.d.x, var_1.d.x))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(-553f * var_0.x))), var_1.a));
}

