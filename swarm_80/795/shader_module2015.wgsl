struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(-452f, false, vec4<u32>(48752u, 56859u, 26477u, 48491u), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)));

var<private> global2: Struct_3 = Struct_3(vec4<f32>(525f, 1012f, -498f, 835f));

var<private> global3: array<vec3<i32>, 32>;

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec3<bool> {
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-948f - global1.a) + _wgslsmith_f_op_f32(f32(-1f) * -879f)) + _wgslsmith_f_op_f32(-1f)), any(!(!(!arg_1.yy))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.a.x, _wgslsmith_mod_u32(u_input.a.x << (global1.d.a.x % 32u), countOneBits(global1.d.a.x)), _wgslsmith_sub_u32(33739u, 4294967295u >> (global1.d.a.x % 32u)), 0u), ~vec4<u32>(global1.c.x, abs(u_input.a.x), ~global1.d.a.x, ~88500u), global1.d.a), Struct_1(vec4<u32>((u_input.a.x >> (4294967295u % 32u)) << (17091u % 32u), 4294967295u, ~(~u_input.a.x), abs(abs(global1.c.x)))));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(2147483647i, u_input.b)), abs(u_input.b)) & _wgslsmith_sub_i32(~(~_wgslsmith_mult_i32(u_input.b, -2262i)), 14283i);
    let var_1 = all(arg_2) && !arg_0;
    return !arg_1;
}

fn func_2() -> Struct_3 {
    let var_0 = global4.yz;
    var var_1 = vec4<bool>(!any(func_3(true, vec3<bool>(global4.x, true, global1.b), vec4<bool>(var_0.x, false, var_0.x, global1.b))), global4.x, true, true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global2.a, vec4<f32>(-208f, global0.a.x, 760f, global0.a.x))), _wgslsmith_f_op_vec4_f32(-global2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))));
    var var_3 = global1.d;
    var var_4 = select(vec4<bool>(var_0.x, (854i ^ _wgslsmith_clamp_i32(-12441i, u_input.b, 0i)) <= u_input.b, false, global4.x | all(vec4<bool>(var_1.x, global1.b, var_1.x, var_0.x))), vec4<bool>(true, !(!global1.b), false, _wgslsmith_mult_u32(41864u, 14087u) <= (var_3.a.x << (global1.c.x % 32u))), !(!select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(global1.b, false, var_1.x, var_0.x), vec4<bool>(true, true, var_0.x, var_1.x)), !vec4<bool>(global1.b, var_1.x, var_0.x, true), global4.x)));
    return Struct_3(global2.a);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = func_2();
    var var_0 = _wgslsmith_div_u32(62339u, ~global1.c.x);
    let var_1 = Struct_3(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1631f)), -532f))));
    global3 = array<vec3<i32>, 32>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * func_2().a));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-245f, _wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.a.x)), global2.a.x))))));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))), all(vec3<bool>(global1.b, true, global4.x)), ~(~(~global1.d.a)), Struct_1(~global1.c));
    global2 = func_1(u_input.b, var_0.a);
    let var_1 = -global3[_wgslsmith_index_u32(u_input.a.x >> (13284u % 32u), 32u)];
    let var_2 = ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 60456u), global1.c.x & 4294967295u, 23381u, min(38863u, global1.d.a.x)), global1.d.a, global1.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(var_0.a.x - global2.a.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1237f, 960f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.x, 216f), var_0.a.zx)))))), global2.a.yz), var_2);
}

