struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_2(arg_0, 22611u & u_input.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.a.yz)) + arg_0.a.zz), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.yz, vec2<u32>(~arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 6195u, 103751u, arg_0.b.x), vec4<u32>(28034u, u_input.d, 11764u, u_input.c)))), _wgslsmith_mod_u32(~firstLeadingBit(1u), 62363u)), arg_0);
    var_0 = Struct_2(var_0.e, arg_0.b.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-452f, var_0.a.c.x)))), _wgslsmith_f_op_f32(select(arg_0.c.x, var_0.a.a.x, var_0.c.x != var_0.c.x))), _wgslsmith_f_op_vec2_f32(abs(var_0.a.c))), var_0.a.b.yx, arg_0);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, var_0.c.x, 277f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a.a * arg_0.a)))), var_0.a.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(var_0.c.x, -659f, true))), var_0.e.a.x)), abs(reverseBits(0u)), _wgslsmith_f_op_vec2_f32(arg_0.c * vec2<f32>(-1792f, arg_0.c.x)), min(~vec2<u32>(40994u, arg_0.b.x) & firstLeadingBit(vec2<u32>(30863u, u_input.b)), var_0.a.b.yz), Struct_1(arg_0.a, ~var_0.a.b | abs(~vec3<u32>(17604u, var_0.e.b.x, arg_0.b.x)), vec2<f32>(arg_0.a.x, var_0.a.a.x)));
    let var_1 = _wgslsmith_div_i32(~(i32(-1i) * -(-1i & u_input.a.x)), u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), arg_0.c.x, _wgslsmith_f_op_f32(-var_0.a.c.x)), arg_0.a)), vec3<u32>(firstTrailingBit(select(_wgslsmith_sub_u32(0u, var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.e.b.x, 6156u, 1u), vec4<u32>(u_input.b, arg_0.b.x, u_input.e, 60110u)), false)), _wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(abs(var_0.b), 0u)), ~21633u), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(188f * var_0.a.c.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * arg_0.c) + vec2<f32>(-321f, 648f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c)) * var_0.e.a.zz), vec2<bool>(true, true)))));
    return ~min(firstTrailingBit(vec2<u32>(var_2.b.x, 4294967295u) & select(var_0.e.b.xz, var_2.b.zx, vec2<bool>(true, true))), ~vec2<u32>(max(var_2.b.x, 0u), 48870u));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<bool>(21965u != u_input.e, !(arg_0.b <= 0u) && all(vec2<bool>(true, false)));
    var var_1 = arg_0.e;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -979f, -391f)) * _wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_1.a.x, -287f, var_1.c.x))), ~(arg_0.a.b ^ vec3<u32>(arg_0.d.x, u_input.e, u_input.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e.c - vec2<f32>(556f, 206f))))), select(~abs(_wgslsmith_clamp_u32(8195u, var_1.b.x, 4294967295u)), 0u, var_0.x && all(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), var_0.x))), _wgslsmith_f_op_vec2_f32(var_1.c * arg_0.e.c), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-295f, var_1.c.x, 559f), var_1.a)), countOneBits(vec3<u32>(u_input.e, 4294967295u, u_input.c) >> (var_1.b % vec3<u32>(32u))), arg_0.a.c)), arg_0.a);
    var var_3 = max(6793u, ~u_input.c ^ ~1u);
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))));
    return var_2.e.c.x;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(arg_0, -1083f, arg_0), vec3<u32>(15627u, u_input.c, u_input.b), vec2<f32>(arg_0, arg_0)), arg_1.x, vec2<f32>(arg_0, -1537f), arg_1.zx, Struct_1(vec3<f32>(arg_0, arg_0, arg_0), vec3<u32>(arg_1.x, u_input.b, 1u), vec2<f32>(arg_0, arg_0)))))))), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(-531f, arg_0, arg_0), arg_1.yyx, vec2<f32>(arg_0, arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 14855u), vec2<u32>(arg_3.x, 48223u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_add_vec2_u32(arg_1.yx, vec2<u32>(u_input.d, u_input.e)), Struct_1(vec3<f32>(-489f, 1662f, arg_0), arg_1.xyx, vec2<f32>(arg_0, arg_0))))))), arg_0, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) + vec3<f32>(arg_0, -785f, arg_0)), select(vec3<u32>(1u, 4294967295u, u_input.b), arg_1.wxx, vec3<bool>(arg_2, false, true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2901f, arg_0)))), _wgslsmith_dot_vec2_u32(arg_3, abs(vec2<u32>(arg_3.x, 8794u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-524f, 1093f) - vec2<f32>(arg_0, arg_0)))), ~arg_1.xx ^ select(arg_3, vec2<u32>(1u, 94335u), false), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1228f, arg_0) - vec3<f32>(-1791f, 166f, 1000f)), arg_1.xyx, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1245f, arg_0))))))));
    global0 = array<vec3<bool>, 2>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2027f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), arg_3.x <= 44973u))))) - _wgslsmith_f_op_f32(864f - var_0.x));
    let var_2 = min(vec4<u32>(1u, abs(~(~u_input.b)), 19361u, firstTrailingBit(select(_wgslsmith_sub_u32(arg_3.x, 0u), select(arg_1.x, 48608u, arg_2), arg_2))), vec4<u32>(~_wgslsmith_add_u32(~arg_1.x, arg_1.x), ~(~u_input.d ^ ~arg_1.x), ~(~1u), 160818u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(653f, arg_0, -1458f) - vec3<f32>(arg_0, 1075f, -489f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0.x, arg_0))))))), _wgslsmith_add_vec3_u32(vec3<u32>(~8573u, abs(~0u), ~arg_1.x), ~(~(~vec3<u32>(0u, arg_3.x, arg_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(-129f, -817f, arg_0), vec3<u32>(u_input.d, arg_1.x, 90975u), var_0.xx), 1u, var_0.zy, vec2<u32>(arg_1.x, 1u), Struct_1(vec3<f32>(arg_0, 1000f, arg_0), vec3<u32>(6662u, arg_3.x, arg_1.x), var_0.xz)))) * _wgslsmith_div_f32(749f, -554f))), _wgslsmith_div_f32(1285f, _wgslsmith_f_op_f32(-1821f + _wgslsmith_f_op_f32(arg_0 + 2159f)))));
    return vec2<f32>(-911f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(782f * 552f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(1f, vec4<u32>(17396u, u_input.e, 1u, 40174u), false, ~vec2<u32>(u_input.b, u_input.c)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(1464f, _wgslsmith_f_op_f32(min(-938f, -110f)))), -233f, -233f, var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -957f)), 523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_1.x)))), vec3<u32>(abs(countOneBits(~u_input.d)), 1u, (44551u & ~u_input.c) ^ u_input.c), vec2<f32>(1533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(-473f, var_0.x))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1032f))));
    let var_4 = 10137u;
    var var_5 = 9839u;
    var var_6 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, vec3<i32>(~1i, -((u_input.a.x << (84982u % 32u)) >> (min(1u, var_2.b.x) % 32u)), i32(-1i) * -(-1i >> (var_4 % 32u))), var_2.b, vec3<u32>(~countOneBits(36804u), 4294967295u, 23160u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 952f, var_2.c.x, var_1.x) * vec4<f32>(var_2.a.x, -1698f, -879f, -1745f))))))));
}

