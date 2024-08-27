struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(43755u, 41930u);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(69496i, 42098i));

var<private> global3: array<vec4<f32>, 7>;

var<private> global4: Struct_4 = Struct_4(Struct_1(vec2<i32>(-23557i, i32(-2147483648))), true, 120512u, 4294967295u, 1261f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = !global4.b && global4.b;
    global2 = global4.a;
    var var_0 = u_input.c << (global4.d % 32u);
    let var_1 = -1726f;
    let var_2 = Struct_4(Struct_1(global2.a), true, 7963u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(388u, 4294967295u, u_input.e, 27867u)), vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52459u, global4.d, 1u), vec4<u32>(global1.x, global1.x, 115u, global4.d)), global1.x)), ~37597u), -371f);
    return ~global1.x;
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = true;
    return global4.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0 + arg_0);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f)))), !(_wgslsmith_div_f32(105f, global4.e) != -189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-856f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.e), _wgslsmith_f_op_f32(-974f + global4.e))))));
    global4 = Struct_4(Struct_1(-vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(1i, 12060i)))), !(!(!arg_1)) & global4.b, ~(~u_input.c << (~7516u % 32u)) << ((func_2(~u_input.b) << (global1.x % 32u)) % 32u), global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    global3 = array<vec4<f32>, 7>();
    global2 = global4.a;
    return vec3<bool>(any(vec4<bool>(true, func_3(Struct_3(-1000f, vec3<bool>(global4.b, arg_1, arg_1), vec3<bool>(true, true, false))) && (global4.c < global4.c), !select(true, arg_1, global4.b), true)), any(vec2<bool>(true, true)), 4294967295u >= arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 7>();
    var var_0 = all(!func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.e, 1955f, global4.e))), global4.b, 0u, 0u));
    global0 = ~_wgslsmith_mult_i32(reverseBits(global2.a.x), global4.a.a.x) == (i32(-1i) * -2147483647i);
    let var_1 = Struct_4(global4.a, false, ~_wgslsmith_add_u32(~firstLeadingBit(global1.x), 12598u), reverseBits(global4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e)));
    var var_2 = all(vec3<bool>(any(!(!vec2<bool>(global4.b, false))), global4.b, (true || global4.b) | true));
    global1 = ~(~vec2<u32>(~u_input.e, _wgslsmith_add_u32(0u, 27847u)) | _wgslsmith_sub_vec2_u32(~select(vec2<u32>(4294967295u, var_1.c), vec2<u32>(var_1.d, 55887u), vec2<bool>(global4.b, global4.b)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.d, global4.d), vec2<u32>(1u, u_input.e)))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.e)) * 287f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1479f - -480f), 156f)), _wgslsmith_f_op_f32(-var_1.e)))), vec3<bool>(true, true, true), !func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.e, -1941f, global4.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1548f, -131f, 334f)))), true, 1u, 4294967295u >> (global4.d % 32u)));
    var_0 = any(vec2<bool>(global4.b, global4.a.a.x == (max(var_1.a.a.x, var_1.a.a.x) | 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, -321f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a, 246f), vec2<f32>(global4.e, 504f))) * vec2<f32>(305f, var_3.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.e, global4.e)) * _wgslsmith_f_op_f32(f32(-1f) * -260f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1208f, var_3.a))), _wgslsmith_f_op_f32(-var_3.a)) - vec3<f32>(424f, 315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -481f)))), ~(~(~4294967295u << (_wgslsmith_sub_u32(var_1.d, u_input.e) % 32u))));
}

