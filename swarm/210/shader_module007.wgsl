struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_3(Struct_2(true), arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, 325f, -319f, 135f)))) - vec4<f32>(1f, 1f, 1f, 1f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1197f, 386f, -2163f, -1522f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1171f, 864f, 1475f, -1011f) * vec4<f32>(-417f, 221f, 652f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -160f, -623f, 1264f), vec4<f32>(-1926f, -1431f, -2010f, -203f)))))));
    global1 = array<bool, 4>();
    var var_2 = abs(~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 106353u, 14057u), u_input.d.zxy), ~var_0.b.a.x, arg_2.a.x));
    global2 = var_0.a;
    return global1[_wgslsmith_index_u32(var_0.b.a.x, 4u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 1i;
    global1 = array<bool, 4>();
    var var_1 = select(!select(vec2<bool>(func_3(vec4<bool>(true, true, false, false), u_input.a.yw, Struct_1(vec2<u32>(u_input.b, 1u))), true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false), vec2<bool>(arg_0.x, global2.a), vec2<bool>(arg_1.a, arg_0.x)), !vec2<bool>(arg_0.x, arg_0.x), -1i >= u_input.a.x), vec2<bool>(arg_0.x | arg_1.a, arg_0.x)), select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d.x, max(0u, 1u)), 4u)], !(!global2.a)), select(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(arg_0.x, true, global2.a, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]))), !(!vec2<bool>(true, arg_1.a)), (global2.a | false) & !arg_0.x), select(!(!vec2<bool>(true, arg_0.x)), vec2<bool>(true, true), any(arg_0) == global2.a)), global2.a == !(58366i >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 6067i), vec3<i32>(-22990i, u_input.c.x, 7190i))));
    global1 = array<bool, 4>();
    var var_2 = Struct_2(!any(!select(vec4<bool>(arg_0.x, false, var_1.x, true), vec4<bool>(true, true, false, true), var_1.x)));
    return Struct_2(true);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(36118u, 4u)], false, global2.a))), Struct_2(true || global2.a));
    let var_1 = vec3<bool>(true, var_0.a, !(!(!global1[_wgslsmith_index_u32(u_input.d.x, 4u)])));
    global0 = _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + -1916f) - -1428f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 707f)))));
    global1 = array<bool, 4>();
    var var_2 = u_input.d.wyw;
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-757f)));
    let var_1 = 1597f;
    let var_2 = ~vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(51023i, max(~u_input.c.x, 19827i)), abs(-countOneBits(2147483647i)));
    var var_3 = 1i;
    var_3 = var_2.x;
    let var_4 = 0u;
    global2 = func_1(var_0);
    var var_5 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~max(u_input.d.x, u_input.b), 1u), abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(var_4, var_4)))));
    var_5 = Struct_1(countOneBits(_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.d.yw), u_input.d.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602f + var_0))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + var_0), var_0)))), 4294967295u, vec3<i32>(~(var_2.x << (u_input.b % 32u)), 1i, -2147483647i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(~25791u, var_5.a.x, u_input.d.x << (var_4 % 32u)), vec3<u32>(~21512u, ~u_input.b, _wgslsmith_add_u32(0u, 62791u))) % vec3<u32>(32u)));
}

