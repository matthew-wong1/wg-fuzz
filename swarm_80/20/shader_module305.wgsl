struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<f32>(894f, -1008f, -1000f)), false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: i32) -> vec3<u32> {
    global0 = Struct_3(global0.a, !all(!select(vec3<bool>(true, false, global0.b), vec3<bool>(true, false, global0.b), global0.b)));
    global0 = Struct_3(global0.a, global0.b);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x), _wgslsmith_f_op_f32(sign(1137f))))), true);
    global0 = Struct_3(global0.a, false);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.a.a * vec3<f32>(arg_1, arg_1, arg_1))))))), all(select(vec3<bool>(global0.b, true, true), !select(vec3<bool>(global0.b, false, global0.b), vec3<bool>(global0.b, global0.b, global0.b), global0.b), !any(vec4<bool>(global0.b, true, global0.b, global0.b)))));
    return _wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 95937u, u_input.b), vec3<u32>(1u, 59642u, u_input.b)), vec3<u32>(4750u, u_input.b, u_input.b)), firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, 4294967295u)), select(select(vec3<bool>(true, false, global0.b), vec3<bool>(false, global0.b, global0.b), false), select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, global0.b, false), false), vec3<bool>(global0.b, global0.b, global0.b))) >> (vec3<u32>(1u, (u_input.b >> (u_input.b % 32u)) | _wgslsmith_clamp_u32(u_input.b, 11483u, 1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 17984u), vec2<u32>(u_input.b, 55228u)), countOneBits(0u))) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 16894u, u_input.b), (vec3<u32>(22020u, 4294967295u, u_input.b) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) >> (min(vec3<u32>(22318u, u_input.b, 0u), vec3<u32>(u_input.b, 0u, 33937u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(19753u, 1u, 4294967295u)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 70717u, u_input.b), vec3<u32>(6962u, 4715u, 0u), vec3<u32>(46079u, u_input.b, u_input.b)))), select(vec3<bool>(true, global0.b, arg_3 == 9060i), !(!vec3<bool>(global0.b, true, false)), all(vec3<bool>(global0.b, global0.b, true)))));
}

fn func_2() -> vec2<bool> {
    var var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(20671u, u_input.b, u_input.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(17343u, u_input.b, 4294967295u), vec3<u32>(1u, 0u, u_input.b)) % vec3<u32>(32u)), abs(~vec3<u32>(u_input.b, 49205u, u_input.b))), select(~(~vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(53427u << (u_input.b % 32u), u_input.b & u_input.b, 42085u ^ u_input.b), true)));
    var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.x, 13957u), func_3(vec3<i32>(~57141i, ~1i, 34293i), global0.a.a.x, _wgslsmith_div_i32(4947i, u_input.a.x), i32(-1i) * -1i));
    var_0 = firstLeadingBit(~(~(~(~vec3<u32>(u_input.b, 0u, var_0.x)))));
    let var_1 = u_input.a.x;
    return !vec2<bool>(any(select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(global0.b, global0.b, global0.b, global0.b))) == !all(vec3<bool>(global0.b, global0.b, false)), false);
}

fn func_1() -> f32 {
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), -1387f, _wgslsmith_f_op_f32(-1219f * global0.a.a.x)))), all(select(!select(vec2<bool>(false, global0.b), vec2<bool>(true, global0.b), true), select(!vec2<bool>(global0.b, true), func_2(), any(vec3<bool>(false, global0.b, false))), vec2<bool>(all(vec2<bool>(global0.b, global0.b)), false))));
    global0 = Struct_3(global0.a, all(vec4<bool>(all(vec2<bool>(global0.b, global0.b)), true, ~u_input.b != ~1u, true)));
    global0 = Struct_3(global0.a, ~42499i != _wgslsmith_clamp_i32(max(-u_input.a.x, ~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -3174i, u_input.a.x), vec3<i32>(3260i, u_input.a.x, u_input.a.x)) | _wgslsmith_sub_i32(u_input.a.x, 0i), firstLeadingBit(-2147483647i)));
    var var_0 = global0.b;
    let var_1 = Struct_3(global0.a, !global0.b);
    return 308f;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = u_input.a << (_wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.b, 8003u) | ~vec2<u32>(u_input.b, u_input.b)), ~firstTrailingBit(vec2<u32>(95006u, 4294967295u))) % vec2<u32>(32u));
    var_0 = u_input.a;
    let var_1 = Struct_3(global0.a, true);
    global0 = Struct_3(global0.a, true);
    let var_2 = true;
    return Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, firstLeadingBit(~0i), var_0.x), vec4<i32>(i32(-1i) * -var_0.x, -(var_0.x >> (u_input.b % 32u)), ~(-u_input.a.x), ~select(37823i, var_0.x, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1009f, _wgslsmith_f_op_f32(-global0.a.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, 334f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1()), 271f), global0.b)), 30002u >= ~_wgslsmith_add_u32(u_input.b, 1u))), false, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, global0.a.a.x) * _wgslsmith_div_vec2_f32(global0.a.a.xz, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.a.x, global0.a.a.x), global0.a.a.xz)))))));
    global0 = Struct_3(global0.a, any(vec2<bool>(true, true)));
    let var_1 = vec3<u32>(abs(u_input.b), ~(~u_input.b), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(54363u, u_input.b), 1u), u_input.b), 68975u));
    let var_2 = _wgslsmith_f_op_f32(trunc(global0.a.a.x));
    global0 = Struct_3(global0.a, any(!vec3<bool>(all(vec4<bool>(true, false, true, global0.b)), !var_0.b, !global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a, ~var_1.x);
}

