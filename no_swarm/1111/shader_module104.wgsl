struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<u32>, 13>;

var<private> global4: array<i32, 31>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f * -343f) + _wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)))))), _wgslsmith_div_f32(-644f, -181f));
    var var_1 = arg_1;
    var var_2 = countOneBits(arg_2.b);
    var var_3 = arg_2;
    var var_4 = ~max(vec2<i32>(global4[_wgslsmith_index_u32(arg_2.c.x, 31u)], min(~u_input.d, 1i)), vec2<i32>(1i, ~(global4[_wgslsmith_index_u32(1u, 31u)] ^ 2147483647i)));
    return 4294967295u;
}

fn func_1() -> u32 {
    var var_0 = 668f;
    var var_1 = any(!(!select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, true, global2.x, global2.x), select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(global2.x, global2.x, false, global2.x)))));
    let var_2 = Struct_1(true, firstLeadingBit(-1i), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, ~u_input.b), u_input.b, ~47708u, 4294967295u), ~reverseBits(vec4<u32>(u_input.b, 1u, u_input.b, u_input.c)), vec4<u32>(func_2(vec2<i32>(global4[_wgslsmith_index_u32(u_input.b, 31u)], global4[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_2(264f, global2.x, 1783f), Struct_1(false, global4[_wgslsmith_index_u32(u_input.b, 31u)], vec4<u32>(18307u, 0u, u_input.c, u_input.b)), Struct_1(true, -26823i, vec4<u32>(u_input.b, 3550u, u_input.b, 4294967295u))) >> (u_input.b % 32u), ~u_input.b, 11439u, u_input.c >> (~0u % 32u))));
    let var_3 = vec2<f32>(488f, _wgslsmith_f_op_f32(ceil(1f)));
    let var_4 = var_2;
    return ~_wgslsmith_clamp_u32(53256u, firstLeadingBit(~4294967295u), ~var_4.c.x);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    global4 = array<i32, 31>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(ceil(-1147f)))));
    let var_1 = all(select(select(select(vec3<bool>(true, arg_2.b, false), vec3<bool>(global2.x, false, arg_2.b), select(vec3<bool>(true, arg_2.b, true), vec3<bool>(global2.x, false, true), vec3<bool>(arg_2.b, global2.x, arg_2.b))), select(!vec3<bool>(true, true, arg_2.b), select(vec3<bool>(global2.x, false, true), vec3<bool>(arg_2.b, false, global2.x), vec3<bool>(arg_2.b, false, true)), any(vec2<bool>(true, false))), true), vec3<bool>(any(vec4<bool>(true, arg_2.b, true, false)) || !global2.x, arg_2.b, false), vec3<bool>(global2.x, !arg_2.b & global2.x, false)));
    return 52436u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global3[_wgslsmith_index_u32(select(~(u_input.b >> (func_1() % 32u)), 4294967295u, select(true, all(!vec4<bool>(global2.x, true, true, global2.x)), global2.x)), 13u)], ~_wgslsmith_mult_vec3_u32(~global3[_wgslsmith_index_u32(21474u, 13u)] << (global3[_wgslsmith_index_u32(func_3(global4[_wgslsmith_index_u32(u_input.c, 31u)], vec4<u32>(89953u, 4294967295u, 4294967295u, u_input.b), Struct_2(309f, false, 1000f)), 13u)] % vec3<u32>(32u)), ~(vec3<u32>(1u, u_input.b, 18998u) ^ global3[_wgslsmith_index_u32(u_input.b, 13u)])));
    var var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(660f, 1000f))) * 200f));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    global2 = !select(!(!vec2<bool>(false, global2.x)), !(!(!vec2<bool>(global2.x, global2.x))), global2.x);
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = Struct_1(any(!vec3<bool>(global2.x, global2.x & global2.x, true)), max(u_input.e, ~1i), vec4<u32>(~var_0.x, ~(~0u), min(~var_0.x, var_0.x), var_0.x));
    var var_4 = var_3.c.wyz;
    var_4 = global3[_wgslsmith_index_u32(~var_0.x, 13u)];
    var_3 = Struct_1(any(vec3<bool>(!(var_3.a & global2.x), !(true && global2.x), var_3.a || false)), _wgslsmith_dot_vec3_i32(~firstLeadingBit(u_input.a.zzy), countOneBits(vec3<i32>(~global4[_wgslsmith_index_u32(var_0.x, 31u)], -global4[_wgslsmith_index_u32(22533u, 31u)], u_input.d ^ 1i))), ~(~_wgslsmith_add_vec4_u32(var_3.c, ~var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(491f))) - var_1.x))));
}

