struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(29588i, -45332i), vec2<i32>(i32(-2147483648), 7718i), vec2<i32>(-5650i, 0i), vec2<i32>(2134i, 16169i), vec2<i32>(0i, -28333i), vec2<i32>(19380i, -3686i), vec2<i32>(-27942i, 2147483647i), vec2<i32>(-19085i, 0i), vec2<i32>(-18047i, -34084i), vec2<i32>(1i, -48627i), vec2<i32>(1i, 35808i));

var<private> global1: vec3<f32> = vec3<f32>(-1689f, -769f, -515f);

var<private> global2: array<vec4<f32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = !select(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), true);
    let var_1 = arg_1;
    global0 = array<vec2<i32>, 11>();
    var var_2 = select(arg_2.x != ~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.x, arg_1.b), ~var_1.b), !(!all(select(var_0, vec3<bool>(true, var_0.x, true), false))), var_0.x);
    let var_3 = ~_wgslsmith_mod_vec2_u32(countOneBits(~_wgslsmith_clamp_vec2_u32(arg_2.yz, arg_2.ww, vec2<u32>(34650u, 31234u))), arg_2.wx);
    return select(!var_0, !(!vec3<bool>(any(vec2<bool>(var_0.x, true)), false, select(true, var_0.x, var_0.x))), var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 123f, global1.x), vec3<f32>(1084f, -418f, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))))));
    let var_0 = Struct_1(1i, ~(~1758u));
    let var_1 = ~vec3<u32>(var_0.b, ~4294967295u, ~(~99811u));
    global2 = array<vec4<f32>, 22>();
    global2 = array<vec4<f32>, 22>();
    return min(arg_1.b & var_0.b, _wgslsmith_div_u32(4294967295u, 42439u));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<vec2<i32>, 11>();
    global2 = array<vec4<f32>, 22>();
    global2 = array<vec4<f32>, 22>();
    let var_0 = Struct_1(-1i, func_4(func_3(Struct_1(u_input.a, 19278u), Struct_1(u_input.a, _wgslsmith_add_u32(61509u, 74206u)), ~(~vec4<u32>(6053u, 4294967295u, 0u, 14671u))), Struct_1(~abs(-2147483647i), ~firstLeadingBit(12400u))));
    global1 = arg_0;
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    global2 = array<vec4<f32>, 22>();
    global2 = array<vec4<f32>, 22>();
    var var_0 = abs(~vec3<u32>(17024u, 4294967295u, firstTrailingBit(1u)));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(arg_3 + _wgslsmith_f_op_vec3_f32(-arg_3)));
    let var_2 = ~(~min(select(var_1.b, arg_1.b, all(vec3<bool>(true, arg_2, true))), 0u));
    return Struct_1(arg_1.a, abs(var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(_wgslsmith_mod_i32(-17027i, u_input.a)) << (4294967295u % 32u), ~15623u);
    let var_1 = func_1(global1.x, Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.ywz, ~vec3<i32>(0i, var_0.a, var_0.a)), ~4294967295u ^ var_0.b), select(~_wgslsmith_mod_u32(var_0.b, 4294967295u), 0u, true) <= var_0.b, vec3<f32>(1000f, -1685f, 527f));
    global2 = array<vec4<f32>, 22>();
    let var_2 = -364f;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1712f, -220f, var_2)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, var_2, 345f)))));
    global0 = array<vec2<i32>, 11>();
    let var_3 = var_1;
    global2 = array<vec4<f32>, 22>();
    global0 = array<vec2<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, var_2, -345f), vec3<f32>(global1.x, var_2, 1884f), vec3<bool>(false, false, true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, global1.x, global1.x)))))), vec4<i32>(var_0.a, ~abs(-1i), var_1.a, _wgslsmith_sub_i32(0i, 4953i)), vec2<u32>(7857u, min(_wgslsmith_mod_u32(var_0.b, 21169u), ~(0u ^ var_1.b))));
}

