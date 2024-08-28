struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    let var_0 = false;
    let var_1 = select(global0.x, select(true, false, false), true);
    let var_2 = vec3<i32>(u_input.a.x, -((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.xx) << (_wgslsmith_add_u32(39976u, 1u) % 32u)) & 0i), 1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1502f, _wgslsmith_f_op_f32(1000f * -642f))) * _wgslsmith_f_op_f32(-1f)), 254f)));
    var var_4 = vec2<bool>(true, false);
    return !global0.x;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = !select(vec3<bool>(!(!arg_0), global0.x, global0.x), vec3<bool>(!select(false, true, global0.x), global0.x, all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), !select(u_input.b.x == arg_2.c, any(vec4<bool>(true, arg_0, global0.x, arg_0)), !arg_0));
    global0 = select(!select(vec3<bool>(any(vec3<bool>(arg_0, global0.x, true)), true, false), vec3<bool>(arg_0, arg_0, arg_0), true), !(!(!vec3<bool>(false, false, arg_0))), select(vec3<bool>(~arg_2.b >= _wgslsmith_clamp_u32(12194u, arg_2.b, arg_2.b), !(!global0.x), select(!arg_0, !arg_0, true)), !vec3<bool>(true, all(vec3<bool>(arg_0, true, global0.x)), func_2()), vec3<bool>(true, !arg_0 != arg_0, arg_0)));
    let var_0 = arg_2;
    global0 = select(select(!select(!vec3<bool>(global0.x, true, false), !vec3<bool>(false, global0.x, arg_0), vec3<bool>(false, global0.x, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(true, true, arg_0), vec3<bool>(global0.x, true, arg_0), true), global0.x), true), select(!(!vec3<bool>(true, false, arg_0)), !(!vec3<bool>(true, global0.x, global0.x)), !(!arg_0))), vec3<bool>(true, select(any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), false, global0.x), (~arg_2.b & _wgslsmith_mod_u32(0u, 35704u)) <= (0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(13020u, arg_2.b), vec2<u32>(45925u, var_0.b)) % 32u))), select(!select(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, global0.x, arg_0), false), vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, true), false)), select(vec3<bool>(false, any(vec4<bool>(global0.x, global0.x, false, true)), -9847i > u_input.b.x), !vec3<bool>(arg_0, global0.x, false), vec3<bool>(global0.x, true, global0.x)), vec3<bool>(arg_0, true, (true & global0.x) && (global0.x != true))));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-219f))))) == arg_2.a);
    return arg_2.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = vec3<bool>(false, func_2(), true & global0.x);
    global0 = vec3<bool>(global0.x, all(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x))) && (-4992i <= ~max(u_input.b.x, u_input.b.x)), global0.x);
    var var_0 = vec4<u32>(max(4294967295u, arg_0.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.b, 48049u), ~func_3(true, -2147483647i, arg_1)), arg_1.b, arg_0.x);
    var var_1 = arg_1.a;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f + _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-1245f + -674f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a))));
    return vec3<bool>(~var_0.x >= 0u, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) == 0i, -u_input.a.x < 20251i, !all(vec4<bool>(false, global0.x, global0.x, true))), global0.x), !(!select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x)), func_1(vec3<u32>(87622u, 27398u, 4897u), Struct_1(-978f, 0u, u_input.b.x)), true)), !all(vec4<bool>(true, any(vec4<bool>(false, global0.x, false, global0.x)), false || global0.x, !global0.x)));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(func_3(true, _wgslsmith_div_i32(0i, 2147483647i), Struct_1(_wgslsmith_f_op_f32(203f * 708f), ~22847u, 1i)), ~1u), 4294967295u, ~(~1u), firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(22493u, 41023u, 1566u, 156u)), select(~vec4<u32>(0u, 1u, 0u, 9549u), _wgslsmith_sub_vec4_u32(vec4<u32>(45673u, 63999u, 23902u, 1u), vec4<u32>(0u, 1u, 17005u, 1u)), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global0.x, true, global0.x, var_0.x), global0.x)))));
    var var_2 = vec2<f32>(466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 349f)), _wgslsmith_f_op_f32(sign(-1155f)), global0.x)))));
    var var_3 = Struct_1(var_2.x, _wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -30997i, u_input.a.x), u_input.b), _wgslsmith_mod_i32(-19233i, 1i), u_input.a.x), abs(firstLeadingBit(u_input.b.xwy)), _wgslsmith_mult_vec3_i32(u_input.b.wyw, vec3<i32>(u_input.a.x, -28547i, u_input.b.x))), vec3<i32>(u_input.a.x, ~0i, u_input.a.x)));
    let var_4 = vec4<u32>(var_1.x, var_3.b, _wgslsmith_sub_u32(_wgslsmith_sub_u32(33118u, _wgslsmith_mult_u32(var_3.b, var_3.b)), var_3.b) ^ reverseBits(var_1.x), ~_wgslsmith_dot_vec2_u32(var_1.yw, min(var_1.ww, abs(vec2<u32>(0u, var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec3<u32>(var_4.x, var_4.x, 4294967295u), ~vec3<u32>(var_1.x, var_3.b, var_1.x), var_0.x)));
}

