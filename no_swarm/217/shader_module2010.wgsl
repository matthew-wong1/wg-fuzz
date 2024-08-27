struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(347f, -216f, -173f, -194f, 815f, -1162f, -1001f, 706f, -1509f, -258f, -1333f, -1599f, 456f, -1219f, 1257f, 653f, 1000f, 420f, -816f, -327f, 299f, 314f, 1000f, -228f);

var<private> global1: array<vec2<bool>, 25>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = Struct_1(-740f);
    let var_1 = var_0;
    var var_2 = global3.a;
    var var_3 = var_1;
    global1 = array<vec2<bool>, 25>();
    return ~1u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 789f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1798f + arg_1.a), _wgslsmith_f_op_f32(floor(494f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1850f - -666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)]) - _wgslsmith_f_op_f32(f32(-1f) * -918f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-272f + -1681f))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~0u), ~reverseBits(countOneBits(4294967295u)), 3141u), 25u)];
    var var_2 = 1f;
    var var_3 = Struct_1(var_0.x);
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(1296f + var_0.x), _wgslsmith_f_op_f32(round(global3.a)), global2.a)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(659f * global2.a), _wgslsmith_f_op_f32(round(-474f)), var_0.x, arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1103f, 588f, -357f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.a, 832f, -645f)))))));
    return func_2(arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = vec3<u32>(countOneBits(firstTrailingBit(66892u)), ~1541u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(93019u, 40512u, 4294967295u), vec3<u32>(35646u, 95733u, 14904u)))), ~vec2<u32>(1u, 1u)));
    let var_1 = ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 42371u, 1u, 4294967295u), reverseBits(vec4<u32>(1u, var_0.x, 0u, var_0.x)))), select(max(~vec4<u32>(0u, 14317u, var_0.x, var_0.x), select(vec4<u32>(var_0.x, 46157u, var_0.x, var_0.x), vec4<u32>(45775u, 0u, var_0.x, 0u), true)), vec4<u32>(0u, 1u, var_0.x, abs(1u)), -344f >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12239u, 24u)])));
    global3 = func_3(arg_0, arg_0);
    global2 = func_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-853f * arg_0.a), func_2(Struct_1(-457f)).a, any(vec4<bool>(false, true, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-898f)), -140f)))));
    global0 = array<f32, 24>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-500f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 25>();
    let var_0 = select(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(43459u, 4294967295u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, false)))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 0u, 0u, func_1(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, -22810i), true, false) << (4294967295u % 32u))), false);
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(30573u, ~(~var_0.x), 69242u << ((1u << (var_0.x % 32u)) % 32u), 13220u), vec4<u32>(~(~var_0.x), var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, ~var_0.x), ~var_0.ww), var_0.x));
    var var_2 = _wgslsmith_f_op_f32(ceil(global3.a));
    let var_3 = ~var_0.zyw;
    global3 = func_4(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 24u)])), func_3(func_2(Struct_1(global2.a)), func_2(Struct_1(_wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global3.a) * -590f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(759f + -1871f), global0[_wgslsmith_index_u32(6164u >> (var_0.x % 32u), 24u)])), 382f)));
    global1 = array<vec2<bool>, 25>();
    var_1 = ~var_0.x;
    global1 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(~var_0.x, 1u, _wgslsmith_div_u32(var_3.x, 1u)), ~(~var_3), true) | (min(var_0.zyw, vec3<u32>(4294967295u, 15294u, var_3.x)) << (firstLeadingBit(vec3<u32>(var_3.x, 38422u, var_3.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1931f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a * global0[_wgslsmith_index_u32(var_3.x, 24u)]), 100f) - vec4<f32>(652f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_0.x), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.a)))), vec2<u32>(var_0.x | ~0u, _wgslsmith_mult_u32(var_3.x, 4650u)) << (min(var_3.xx, var_3.zy) % vec2<u32>(32u)));
}

