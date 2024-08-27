struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32) -> f32 {
    global0 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1132f, _wgslsmith_div_f32(-2035f, 1f), _wgslsmith_f_op_f32(round(-423f)) == -631f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1835f + _wgslsmith_f_op_f32(min(353f, -1217f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1178f * 740f) + _wgslsmith_f_op_f32(f32(-1f) * -951f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(465f, -1363f, false))))));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = u_input.b.yz;
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_1(vec2<u32>(48296u & ~_wgslsmith_div_u32(u_input.a.x, 1u), 35205u), _wgslsmith_f_op_f32(trunc(184f)));
    global0 = array<Struct_1, 30>();
    var var_2 = !select(select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), false)), select(vec3<bool>(false, 1386f >= var_1.b, arg_0 >= -26205i), vec3<bool>(39419u != u_input.a.x, true, true), true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-114f, var_1.b, var_1.b, -305f))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(func_2(383i))))), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(-2486f * _wgslsmith_f_op_f32(step(998f, var_1.b)))), var_1.b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_0;
    global0 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(532f, arg_0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, -504f) + vec2<f32>(var_0.x, 926f))))));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u, ~39089u | _wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x)), u_input.a.x), arg_1.b);
    global0 = array<Struct_1, 30>();
    return ~_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a) > u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = vec2<bool>(!(true || !any(vec4<bool>(false, true, true, false))), true);
    let var_1 = vec4<bool>(((20177i <= firstTrailingBit(u_input.b.x)) || var_0.x) == func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(550f, -1000f, 1016f, -1738f) - _wgslsmith_f_op_vec4_f32(func_1(u_input.b.x))), Struct_1(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-1097f - 332f))), var_0.x | false, all(select(!select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, var_0.x), true)), var_0.x);
    global0 = array<Struct_1, 30>();
    let var_2 = var_1;
    var var_3 = true;
    var var_4 = _wgslsmith_dot_vec4_i32(reverseBits(reverseBits(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(0i, u_input.b.x, -29473i, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, -1i, u_input.b.x)), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, -8185i, -1i, 2147483647i), select(vec4<i32>(u_input.b.x, 8420i, -1i, -6220i), vec4<i32>(u_input.b.x, -7571i, u_input.b.x, 0i), vec4<bool>(false, false, var_0.x, var_0.x))))), select(vec4<i32>(1i, countOneBits(select(-17120i, 0i, false)), _wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x << (1u % 32u), reverseBits(u_input.b.x)), firstTrailingBit(-28988i)), reverseBits(min(select(vec4<i32>(u_input.b.x, 1i, 0i, u_input.b.x), vec4<i32>(50902i, u_input.b.x, u_input.b.x, u_input.b.x), var_1.x), -vec4<i32>(17322i, u_input.b.x, 10314i, -52006i))), var_2));
    var var_5 = any(var_2.www);
    let var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(-197f, _wgslsmith_div_f32(246f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(2010f, 1081f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0i))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f * 1583f)), 250f, _wgslsmith_f_op_f32(-1775f - _wgslsmith_div_f32(1309f, -379f))), _wgslsmith_div_vec3_f32(vec3<f32>(-778f, _wgslsmith_f_op_f32(round(-1380f)), -1158f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2222f, 716f, 667f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, ~44083u), ~vec2<u32>(25314u, 0u)) >> ((vec2<u32>(1u, u_input.a.x) & ~u_input.a.yx) % vec2<u32>(32u)));
}

