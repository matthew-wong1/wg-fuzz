struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1310f, -592f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -177f, -1000f, arg_2))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, -1035f, 816f, -796f)), _wgslsmith_div_vec4_f32(vec4<f32>(-638f, arg_2, -158f, arg_2), vec4<f32>(arg_2, arg_2, 107f, arg_2))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) + arg_2) + arg_2), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -347f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-902f * arg_2)))))));
    global0 = select(arg_1.a, vec3<i32>(-1i, u_input.c, 2147483647i & _wgslsmith_mod_i32(0i, global0.x)) | vec3<i32>(_wgslsmith_div_i32(global0.x, 67480i ^ global0.x), -global0.x, firstLeadingBit(1i)), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(var_0.xw));
    global0 = -vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.a.x, global0.x), 0i), abs(global0.x), -3745i & (global0.x | _wgslsmith_mod_i32(u_input.c, 1i)));
    return arg_1;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-154f, arg_0.x, arg_0.x, arg_0.x) + arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -797f) - _wgslsmith_f_op_f32(-859f - -631f)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -2186f) * _wgslsmith_div_vec4_f32(arg_0, arg_0))));
    var var_1 = Struct_1(vec3<i32>(-41567i, reverseBits(u_input.c), func_2(vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(u_input.c, -1i, global0.x), vec4<u32>(0u, u_input.d.x, u_input.a, 0u)), var_0.x, ~u_input.d.x).a.x | 0i), reverseBits(~firstLeadingBit(countOneBits(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.d.x)))));
    let var_2 = Struct_1(-(~vec3<i32>(global0.x, -1i, _wgslsmith_sub_i32(-1i, 2728i))), vec4<u32>(~2251u, 0u, 21035u, 1u));
    var_1 = var_2;
    let var_3 = vec4<f32>(arg_0.x, -590f, 835f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.x)))));
    return 1542f;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(~(-(_wgslsmith_add_vec3_i32(vec3<i32>(65433i, 56250i, global0.x), vec3<i32>(30811i, 1i, u_input.b.x)) >> (~vec3<u32>(u_input.d.x, 20339u, 23388u) % vec3<u32>(32u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.d.x), ~(~vec4<u32>(0u, 1u, 0u, u_input.d.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.d.x, u_input.a), ~vec4<u32>(47075u, u_input.d.x, u_input.a, 4974u)) % vec4<u32>(32u))));
    let var_1 = !vec3<bool>(true, all(vec3<bool>(true, true, true)), true);
    let var_2 = func_2(select(vec4<bool>(true, false, any(var_1.yz), true), !vec4<bool>(var_1.x, any(vec3<bool>(false, var_1.x, false)), var_1.x, false), select(!vec4<bool>(var_1.x, false, true, var_1.x), select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, false, var_1.x), true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, true, true, var_1.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, false))), select(!var_1.x, var_1.x, !var_1.x))), Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, 2147483647i), var_0.a), -(~vec3<i32>(var_0.a.x, -1i, 34889i))), var_0.b), arg_1.x, abs(u_input.d.x));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -254f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -380f, -948f, 140f) + vec4<f32>(arg_1.x, arg_1.x, 321f, 2354f)))))), arg_0);
    let var_4 = var_1.x;
    return func_2(select(!vec4<bool>(true, true, var_0.a.x >= global0.x, true), !vec4<bool>(any(var_1), 4294967295u > u_input.a, var_4 && var_4, var_1.x), vec4<bool>(true, !var_4 & true, select(534f > var_3.x, true, any(var_1.zy)), all(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_4, true, false, false), vec4<bool>(false, false, var_4, true))))), func_2(select(vec4<bool>(var_1.x & var_1.x, var_4, global0.x <= u_input.b.x, var_4), vec4<bool>(false, var_2.b.x < u_input.a, true, any(vec2<bool>(false, true))), true), func_2(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, var_1.x, var_4), vec4<bool>(var_4, var_1.x, var_4, var_1.x), false), var_4 && var_1.x), func_2(vec4<bool>(var_4, var_4, var_1.x, var_4), var_2, _wgslsmith_f_op_f32(sign(512f)), firstTrailingBit(u_input.a)), -2422f, var_2.b.x), arg_1.x, _wgslsmith_sub_u32(1u, ~u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_1.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(min(1u, _wgslsmith_add_u32(70172u, 26910u)), 4294967295u), _wgslsmith_add_u32(~var_2.b.x, ~25671u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -vec4<i32>(~2147483647i, 1i, -((i32(-1i) * -9379i) << (~u_input.d.x % 32u)), global0.x | _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(19098i, 8396i)));
    var var_1 = func_2(!(!vec4<bool>(true, true, arg_1.b.x < 4294967295u, !arg_0)), Struct_1(arg_1.a, abs(vec4<u32>(_wgslsmith_mult_u32(65653u, arg_1.b.x), u_input.a, u_input.d.x & 4294967295u, select(1506u, 3829u, arg_0)))), _wgslsmith_f_op_f32(-890f + 1251f), _wgslsmith_add_u32(func_1(_wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(-592f + 742f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, -817f))).b.x, ~_wgslsmith_sub_u32(u_input.a, 1u & u_input.a)));
    let var_2 = ~1u;
    var var_3 = !select(vec4<bool>(!(!arg_0), !arg_0, true, true), !(!vec4<bool>(arg_0, true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -994f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-201f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, -1000f) * vec2<f32>(718f, 2172f))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, -731f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 579f), vec2<f32>(972f, 1012f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, 1000f) * vec2<f32>(132f, -1000f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-405f, -201f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 419f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1243f, -1000f), vec2<f32>(129f, -380f)))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(false && (global0.x != -7213i), func_1(557f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-624f, _wgslsmith_f_op_f32(f32(-1f) * -501f))))));
    let var_1 = func_4(true, func_1(755f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1062f, -1603f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1245f, 1760f))) * vec2<f32>(_wgslsmith_f_op_f32(-660f * 772f), -321f))));
    var var_2 = u_input.b;
    let var_3 = var_1;
    var_2 = ~vec2<i32>(-39697i, _wgslsmith_mult_i32(-2147483647i, func_4(true, Struct_1(var_3.a, vec4<u32>(u_input.d.x, var_0.b.x, var_1.b.x, 34512u))).a.x)) & -(~vec2<i32>(var_1.a.x, var_0.a.x));
    var_2 = vec2<i32>(-(~2147483647i >> (reverseBits(~var_3.b.x) % 32u)), abs(var_3.a.x << (_wgslsmith_clamp_u32(u_input.a | 69951u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(11089u, 0u), var_3.b.yy)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-select(var_0.a.yy, max(var_1.a.zy, global0.zy), true), ~vec2<i32>(max(u_input.b.x, global0.x), -u_input.c), vec2<i32>(u_input.b.x, ~(var_2.x << (0u % 32u)))), firstTrailingBit(~(~u_input.d.xy)));
}

