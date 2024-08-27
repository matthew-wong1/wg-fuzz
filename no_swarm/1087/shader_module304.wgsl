struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = abs(min(~_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, arg_0.a, 0i)), firstTrailingBit(vec3<i32>(24565i, -29458i, u_input.a))), select(max(-vec3<i32>(arg_0.a, arg_0.a, 55053i), vec3<i32>(1i, arg_0.a, u_input.a)), vec3<i32>(u_input.a, 1i, ~u_input.a), !vec3<bool>(arg_0.e, false, false))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(325f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(min(1f, 117f)))), 956f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(563f, 770f, arg_0.e)), -1058f)));
    var_0 = ~(~abs(~vec3<i32>(var_0.x, var_0.x, arg_0.a))) & _wgslsmith_add_vec3_i32(abs(-firstLeadingBit(vec3<i32>(-34698i, -44541i, 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a, arg_0.a), -4957i, _wgslsmith_mod_i32(u_input.a, u_input.a)), -countOneBits(vec3<i32>(22690i, -16491i, var_0.x))));
    let var_2 = -1i;
    var var_3 = all(select(select(select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(false, arg_0.b.x), !arg_0.b.xx), select(vec2<bool>(arg_0.c, false), arg_0.b.yz, select(arg_0.b.xz, vec2<bool>(arg_0.b.x, arg_0.e), true)), arg_0.c), select(arg_0.b.xx, vec2<bool>(true, true), !any(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false))), arg_0.b.xx));
    return vec4<f32>(var_1.x, -1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-214f - -227f)))), var_1.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = all(select(select(vec2<bool>(true, true), arg_1, arg_1.x), arg_0.d.b.zy, !arg_0.d.b.yy));
    var var_1 = !(var_0 & true);
    global0 = array<vec4<i32>, 11>();
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(195f, -1128f, arg_0.b, -361f) - vec4<f32>(arg_0.b, arg_0.a, arg_0.b, arg_0.a)), _wgslsmith_f_op_vec4_f32(func_3(arg_0.d))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-357f)), 422f, _wgslsmith_f_op_f32(f32(-1f) * -323f), arg_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, arg_0.a, arg_0.a, 958f) - vec4<f32>(-738f, arg_0.a, -515f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -280f, arg_0.a, arg_0.b)), arg_1.x))))));
    global0 = array<vec4<i32>, 11>();
    return var_2.x;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1482f, -1685f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, -1066f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 710f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(-1000f, -1317f, false, Struct_1(u_input.a, vec3<bool>(true, false, false), true, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4322u), true), false), vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))), 376f));
    let var_1 = u_input.b.x;
    var var_2 = false;
    global0 = array<vec4<i32>, 11>();
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -706f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(527f, var_0.x))))))));
    return 201f;
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    let var_0 = abs(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 51774u)));
    var var_1 = vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 35803u), vec3<u32>(var_0.x, var_0.x, 19840u)) ^ 0u, u_input.b.x), 1u);
    var_1 = ~select(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.x), var_0), vec2<u32>(16635u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), min(var_0, var_0))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), -1890f > _wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f + arg_0.x));
    let var_3 = all(vec2<bool>(!(41319u <= var_0.x), select(-176i, -20494i, true) != -11602i));
    return max(71141u, abs(1u)) & ~(((var_1.x ^ 0u) << (~0u % 32u)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.b.x), u_input.b));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = select(select(!vec2<bool>(all(vec4<bool>(true, true, true, false)), 2147483647i >= u_input.a), !vec2<bool>(any(vec3<bool>(true, false, true)), true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(true, any(vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))), vec2<bool>(!all(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1431f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 228f)) - 1151f)), 562f, !(_wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(f32(-1f) * -203f)), Struct_1(-u_input.a, !vec3<bool>(true, select(true, var_0.x, true), true), all(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, var_0.x, false, var_0.x))) | true, _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(select(u_input.b.x, arg_0, false), func_4(vec4<f32>(608f, 1000f, -286f, -1668f)), ~u_input.b.x, 4294967295u)), 2071f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(565f))))), var_0.x);
    let var_2 = max(firstLeadingBit(var_1.d.d.xx), vec2<u32>(var_1.d.d.x, ~var_1.d.d.x));
    var var_3 = vec4<bool>(!(all(select(vec4<bool>(false, var_0.x, false, var_1.c), vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, var_0.x, var_1.e))) != true), var_0.x, var_1.d.c, false);
    let var_4 = var_1.b;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    let var_0 = func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(min(-752f, _wgslsmith_f_op_f32(962f * -1042f))), 230f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), (vec4<u32>(17093u, 1u, _wgslsmith_add_u32(u_input.b.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 46195u, 0u, 57216u), vec4<u32>(32761u, 1u, u_input.b.x, 0u))) << (countOneBits(~vec4<u32>(802u, 76040u, u_input.b.x, 0u)) % vec4<u32>(32u))) ^ vec4<u32>(0u, ~_wgslsmith_div_u32(4294967295u, u_input.b.x), 0u, 0u));
    global0 = array<vec4<i32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-128f)), 1f))), _wgslsmith_f_op_f32(-1684f + _wgslsmith_f_op_f32(sign(-1000f))))), -641f, var_0.c));
    global0 = array<vec4<i32>, 11>();
    var var_2 = var_0;
    var var_3 = ~u_input.b.x ^ u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1662f, 1f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(202f, 819f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(311f, 1023f))))))), firstTrailingBit(u_input.a), _wgslsmith_div_u32(114467u, firstTrailingBit(u_input.b.x)));
}

