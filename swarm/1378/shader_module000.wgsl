struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, true, false));

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 11> = array<bool, 11>(false, true, true, false, false, true, true, false, true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(global0.a);
    global2 = array<bool, 11>();
    var var_1 = Struct_3(!select(var_0.a, var_0.a, select(vec4<bool>(global0.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], false, arg_0.c), global0.a, vec4<bool>(global0.a.x, true, var_0.a.x, var_0.a.x))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -390f, _wgslsmith_f_op_f32(global1.x + arg_0.d.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(step(1561f, -919f))), -2257f, -659f)));
    global1 = arg_0.d;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> f32 {
    global0 = Struct_3(global0.a);
    let var_0 = global0.a.x;
    global1 = _wgslsmith_f_op_vec3_f32(-arg_2.d.d);
    let var_1 = global2[_wgslsmith_index_u32(arg_2.d.a.x, 11u)];
    let var_2 = select(global0.a.wxz, select(select(global0.a.yxy, !global0.a.wxz, vec3<bool>(-29389i == u_input.b, true, false)), vec3<bool>(all(global0.a.zyz), arg_2.d.d.x > -599f, false), !arg_2.a), vec3<bool>(false, false, any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - global1.x))), !(-1000f != _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-375f * -1000f)) + -378f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.d.d.x)) + global1.x), _wgslsmith_f_op_f32(sign(global1.x))))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-34513i < (47259i | u_input.b), arg_0.a.x, Struct_2(false, select(2147483647i, u_input.b, true), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.b), _wgslsmith_clamp_vec3_i32(u_input.a.wyx, vec3<i32>(u_input.b, u_input.a.x, 2116i), u_input.a.zxz)), func_2(Struct_1(vec2<u32>(48996u, 40685u), u_input.c, global2[_wgslsmith_index_u32(52806u, 11u)], arg_0.d)), 4294967295u))));
    global1 = arg_0.d;
    var var_1 = arg_0.d.zx;
    let var_2 = global0.a.xxx;
    global0 = Struct_3(select(!(!vec4<bool>(var_2.x, false, false, false)), !vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c.x, 11u)], any(vec4<bool>(false, var_2.x, false, global2[_wgslsmith_index_u32(15942u, 11u)])), false, all(global0.a.yzz)), any(select(!global0.a.yx, vec2<bool>(false, global0.a.x), arg_0.c))));
    return _wgslsmith_f_op_f32(f32(-1f) * -939f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.xx, vec4<u32>(99126u, 19494u, u_input.c.x, u_input.c.x), true, vec3<f32>(1148f, 719f, 203f)), 167f)), _wgslsmith_div_f32(global1.x, global1.x), global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -1121f) - -117f), global1.x, -1739f), vec4<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-1690f + -1000f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-995f * global1.x), _wgslsmith_f_op_f32(-global1.x)))))), any(select(global0.a.zwy, global0.a.wyw, !global0.a.x))));
    let var_1 = u_input.a.zz;
    var var_2 = Struct_3(!vec4<bool>(_wgslsmith_f_op_f32(1144f - var_0.x) >= _wgslsmith_f_op_f32(f32(-1f) * -695f), global2[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, 4294967295u, 19368u))), 11u)], (u_input.b >> (4064u % 32u)) == _wgslsmith_div_i32(u_input.a.x, u_input.a.x), true));
    let var_3 = vec2<u32>(4294967295u, 4294967295u);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.xy - var_0.zz), global1.yy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, 870f)) * var_0.zz)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(619f, -1455f)))))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) - _wgslsmith_f_op_f32(var_0.x - -466f)), global1.x), global1.xy));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u ^ abs(abs(u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(u_input.c.x, u_input.c.x, false), func_2(Struct_1(vec2<u32>(u_input.c.x, 33082u), u_input.c, var_2.a.x, var_0.wzy)).b.x), 0u)), min(vec2<i32>(_wgslsmith_div_i32(-u_input.b, u_input.b), u_input.a.x), vec2<i32>(~_wgslsmith_clamp_i32(-1i, -23180i, 2147483647i), -158i)), vec3<i32>(u_input.a.x, u_input.a.x, ~firstLeadingBit(17007i)), abs(vec4<u32>(30716u, min(27452u, var_3.x), min(var_3.x, var_3.x), 0u) | u_input.c));
}

