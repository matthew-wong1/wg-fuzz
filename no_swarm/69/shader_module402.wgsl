struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 25930u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 110939u), vec2<u32>(4294967295u, 28871u), vec2<u32>(1u, 4294967295u), vec2<u32>(14239u, 1u), vec2<u32>(0u, 33494u), vec2<u32>(25392u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(13311u, 1u), vec2<u32>(96887u, 4294967295u), vec2<u32>(75387u, 14700u), vec2<u32>(4294967295u, 495u), vec2<u32>(54543u, 30274u), vec2<u32>(52344u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(938u, 0u), vec2<u32>(51875u, 25882u), vec2<u32>(47210u, 54756u), vec2<u32>(4586u, 33417u), vec2<u32>(46658u, 15900u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 100067u), vec2<u32>(4294967295u, 25722u), vec2<u32>(1u, 0u));

var<private> global1: vec2<u32> = vec2<u32>(89350u, 4963u);

var<private> global2: vec3<u32>;

var<private> global3: u32;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(global4.a);
    global0 = array<vec2<u32>, 25>();
    var var_1 = (firstLeadingBit(~u_input.d.x) >> (global2.x % 32u)) >> (6019u % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.a.zz, var_0.a.a.xx, true)));
    global4 = Struct_2(global4.a);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4.a.a.x), _wgslsmith_f_op_f32(floor(-545f)), 742f, _wgslsmith_div_f32(var_0.a.a.x, 454f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_2.x, 1316f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global4.a.a.x);
    let var_1 = u_input.b.xwx;
    global0 = array<vec2<u32>, 25>();
    var var_2 = var_1;
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.a.x)) - _wgslsmith_f_op_f32(sign(-290f))), true | any(vec3<bool>(false, false, true)))), -1000f, true)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global3 = _wgslsmith_mult_u32(7900u, min(~1u, ~u_input.b.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global4.a, func_2(48241i), func_2(-arg_0), _wgslsmith_f_op_f32(global4.a.a.x - _wgslsmith_f_op_f32(372f - -1304f)))), -203f)));
    let var_1 = !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true)));
    var_0 = global4.a.a.x;
    var var_2 = vec3<f32>(1369f, -1000f, 1972f);
    return func_2(_wgslsmith_mod_i32(u_input.d.x, i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(_wgslsmith_mult_i32(~u_input.d.x, 0i)));
    let var_1 = 13239u;
    global0 = array<vec2<u32>, 25>();
    var_0 = func_1(43369i);
    global4 = func_1(u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

