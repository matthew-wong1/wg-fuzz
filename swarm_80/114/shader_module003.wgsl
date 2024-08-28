struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec2<u32>(25338u, 0u), 2147483647i, vec3<f32>(836f, 270f, -766f), 50052u, 0u), true), Struct_2(Struct_1(vec2<u32>(4294967295u, 84665u), 7965i, vec3<f32>(-959f, 129f, -439f), 0u, 32674u), true), Struct_2(Struct_1(vec2<u32>(45741u, 30081u), -1i, vec3<f32>(254f, 143f, 1000f), 12372u, 66328u), false), Struct_2(Struct_1(vec2<u32>(49099u, 4294967295u), i32(-2147483648), vec3<f32>(1751f, 496f, -1000f), 0u, 1u), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_2, 4>();
    let var_0 = !select(!select(!vec2<bool>(false, arg_0.b), !vec2<bool>(arg_0.b, true), arg_0.b), !select(!vec2<bool>(true, arg_0.b), vec2<bool>(false, arg_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), false)), vec2<bool>(arg_0.b, all(vec4<bool>(false, false, arg_0.b, true)) & any(vec3<bool>(arg_0.b, arg_0.b, false))));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x * _wgslsmith_f_op_f32(1962f * arg_0.a.c.x)) - -1000f)));
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_0.c.x;
    var var_1 = Struct_2(Struct_1(~vec2<u32>(~arg_2.e, arg_1.d), -reverseBits(arg_1.b >> (arg_0.a.x % 32u)), arg_2.c, ~18075u, 0u), any(vec2<bool>(false, true)));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(arg_2.b, var_1.a.b, reverseBits(-9963i >> (1u % 32u)) | arg_0.b), firstLeadingBit(-(-arg_1.b ^ -8434i)), 80013i >> (abs(_wgslsmith_clamp_u32(u_input.e, max(arg_1.a.x, 49365u), 1u)) % 32u));
    var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~var_1.a.d, 16873u), 20975u), 4u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(-var_1.a.c.x)) + var_0));
    return select(select(!vec2<bool>(!var_1.b, true), !vec2<bool>(false, var_1.b), !any(!vec4<bool>(true, true, var_1.b, true))), !(!vec2<bool>(var_1.b, true)), false);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(select(u_input.b.yz, vec2<u32>(func_2(global0[_wgslsmith_index_u32(1u, 4u)]), u_input.a.x), select(func_3(Struct_1(u_input.b.xx, u_input.c.x, vec3<f32>(712f, arg_1, arg_1), 4294967295u, 9797u), Struct_1(vec2<u32>(u_input.a.x, 0u), u_input.c.x, vec3<f32>(849f, 114f, arg_1), u_input.b.x, 31900u), Struct_1(vec2<u32>(u_input.e, u_input.a.x), -1i, vec3<f32>(207f, 348f, 252f), u_input.a.x, u_input.d)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false))))), abs(_wgslsmith_mod_i32(39063i, -48180i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1840f, arg_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 484f, arg_1) * vec3<f32>(arg_1, -730f, arg_1))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(499f, arg_0.x, -985f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(571f, -905f, arg_1) - vec3<f32>(2136f, -1357f, arg_1)))))), ~max(~u_input.d, 1u), _wgslsmith_div_u32(countOneBits(~u_input.b.x) >> (u_input.e % 32u), u_input.e & 1u));
    global0 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(countOneBits(u_input.a.zw), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, var_0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, -1060f, var_0.c.x) + var_0.c) + _wgslsmith_f_op_vec3_f32(step(var_0.c, vec3<f32>(-697f, -653f, var_0.c.x))))) - var_0.c), 66080u, var_0.e);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1598f - -1065f), 632f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), all(vec2<bool>(true, true)));
    var var_1 = vec4<bool>(all(vec4<bool>(true || var_0.b, all(vec2<bool>(false, false)), false, any(vec3<bool>(true, true, var_0.b)))), true, var_0.b, true);
    let var_2 = vec4<bool>(all(func_3(Struct_1(~vec2<u32>(var_0.a.d, 66053u), _wgslsmith_add_i32(u_input.c.x, 0i), _wgslsmith_f_op_vec3_f32(trunc(var_0.a.c)), _wgslsmith_dot_vec3_u32(u_input.a.zwx, u_input.b), select(4294967295u, 1u, false)), func_1(func_1(var_0.a.c.yz, var_0.a.c.x).c.yz, 2280f), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.c.x, var_0.a.c.x), vec2<f32>(-1078f, var_0.a.c.x), var_1.yx)), 230f))), var_1.x, var_0.b, all(select(vec4<bool>(true, true, 842f <= var_0.a.c.x, var_0.b), !(!vec4<bool>(var_1.x, var_1.x, var_0.b, false)), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(var_0.a.c.yz, vec2<f32>(-1492f, 526f))))));
    global0 = array<Struct_2, 4>();
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4596u, ~_wgslsmith_clamp_u32(24610u, var_0.a.a.x >> (4294967295u % 32u), ~4294967295u)));
}

