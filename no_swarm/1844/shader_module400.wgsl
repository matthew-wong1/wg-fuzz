struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = vec4<i32>(u_input.a, firstLeadingBit(firstTrailingBit(u_input.a)), firstTrailingBit(0i), ~(~2147483647i));
    let var_1 = max(reverseBits(firstLeadingBit(_wgslsmith_div_i32(-75637i, u_input.a)) & var_0.x), _wgslsmith_mult_i32(-55503i, u_input.a));
    let var_2 = 1u;
    var_0 = vec4<i32>(10406i, var_1, -43102i >> (firstLeadingBit(1u | var_2) % 32u), u_input.a);
    let var_3 = vec3<u32>(var_2, var_2, ~_wgslsmith_sub_u32(~var_2, 0u));
    return vec2<i32>(-15911i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(5809i >> (1u % 32u), _wgslsmith_add_i32(var_1, -1i), u_input.a), -abs(var_0.ywx))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(~(~48383u), vec2<i32>(_wgslsmith_add_i32(47454i ^ arg_1.x, _wgslsmith_clamp_i32(min(arg_1.x, u_input.a), -49266i, 8522i)), ~select(_wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a), arg_1.x | u_input.a, false)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(823f))))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(732f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1709f + -279f), _wgslsmith_div_f32(968f, 1415f))), _wgslsmith_f_op_f32(func_4(~(4294967295u >> (u_input.b % 32u)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i), vec2<bool>(true, true)), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 16252i), func_3(vec3<f32>(-1838f, 2058f, -864f), vec4<f32>(458f, -1227f, 660f, -816f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1913f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(305f + -1706f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f))))));
    var var_1 = Struct_2(4294967295u, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, abs(-1i)), ~(~vec2<i32>(22681i, u_input.a)), (29208u < u_input.b) == true), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7140i, u_input.a), vec2<i32>(-12004i, u_input.a)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 0i)), select(-36988i, 0i, false)))));
    let var_2 = 11032u;
    var var_3 = Struct_2(min(var_2, var_1.a), _wgslsmith_mod_vec2_i32(firstTrailingBit(~(vec2<i32>(var_1.b.x, -1i) << (vec2<u32>(var_1.a, 4294967295u) % vec2<u32>(32u)))), vec2<i32>(-2147483647i, u_input.a)));
    return Struct_2(1u, vec2<i32>(26645i, 2147483647i));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = true;
    var_0 = false;
    var_0 = true;
    let var_1 = vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(38411i, u_input.a), vec2<i32>(-330i, 12866i)), firstLeadingBit(vec2<i32>(u_input.a, 3188i))));
    let var_2 = func_2();
    return var_2;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = select(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, true)))), vec3<bool>(!(30297i <= select(u_input.a, 4486i, false)), any(vec2<bool>(false, true)), !all(vec2<bool>(false, false))), vec3<bool>(true, select(true, false, select(false, true, false)) | any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false))));
    let var_1 = arg_0;
    let var_2 = 955u;
    let var_3 = any(var_0);
    var var_4 = Struct_1(max(-11638i, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f - 1238f)), _wgslsmith_f_op_f32(-1740f * -213f)).b.x), ~(~arg_0.a) >> (var_2 % 32u), -arg_0.b.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(709f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)))), var_1.b);
    return var_1;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 1065f)).b.x, u_input.b, -(arg_3.b.x >> (~(~1u) % 32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-835f, 777f), _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(arg_0.x, -381f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0)) - _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(101f, 1295f)))), _wgslsmith_f_op_vec2_f32(round(arg_0)))), abs(arg_3.b));
    var var_1 = select(1i, -u_input.a, arg_2);
    var var_2 = -u_input.a >= arg_1.b.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.x, -1149f)), _wgslsmith_f_op_f32(-var_0.d.x)))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-808f)), -1416f, arg_0.x);
    return ~0u | ~((~1646u << (firstLeadingBit(arg_1.a) % 32u)) >> (~select(u_input.b, 4294967295u, true) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -u_input.a));
    let var_1 = Struct_2(func_6(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-790f, 1369f)), _wgslsmith_f_op_f32(f32(-1f) * -666f)), vec2<f32>(-492f, 128f)), func_5(func_1(_wgslsmith_f_op_f32(1204f * 277f), -1000f)), !all(vec4<bool>(false, true, false, true)), Struct_2(_wgslsmith_clamp_u32(func_5(Struct_2(62853u, vec2<i32>(u_input.a, 63983i))).a, _wgslsmith_add_u32(1u, u_input.b), max(85347u, u_input.b)), -countOneBits(vec2<i32>(var_0, 2147483647i)))), vec2<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i) | _wgslsmith_add_i32(var_0, _wgslsmith_add_i32(0i, -2147483647i)), _wgslsmith_mult_i32(-10706i, var_0)));
    var var_2 = Struct_1(-var_0 >> (1u % 32u), ~func_2().a, -41813i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, -462f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(277f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-986f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(1017f - -235f), true))), vec2<bool>(true, true))), ~(~vec2<i32>(u_input.a, 1i)));
    var var_3 = -(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, u_input.a, var_2.a, -36941i), ~vec4<i32>(2340i, var_0, u_input.a, -12543i)) | vec4<i32>(i32(-1i) * -6549i, var_1.b.x, u_input.a >> (15703u % 32u), abs(u_input.a))) >> (abs(vec4<u32>(~select(var_1.a, 18436u, false), 1u, ~1u, ~countOneBits(u_input.b))) % vec4<u32>(32u));
    var_3 = vec4<i32>(var_1.b.x, func_2().b.x, _wgslsmith_sub_i32(1i, firstTrailingBit(78919i)), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), 1i) | ((vec2<i32>(-2147483647i, 32311i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) ^ vec2<i32>(var_0, u_input.a)), var_2.e));
    var var_4 = reverseBits(vec4<i32>(func_5(Struct_2(var_1.a, vec2<i32>(2147483647i, 0i))).b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_3.x, 1i, 0i), vec4<i32>(u_input.a, var_1.b.x, var_3.x, u_input.a)), var_3.x, -1i) >> (countOneBits(vec4<u32>(var_1.a, 4294967295u, 41925u, 61089u) >> (vec4<u32>(1u, var_2.b, var_2.b, var_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_0, -48901i), func_3(vec3<f32>(1000f, 1096f, var_2.d.x), vec4<f32>(-186f, -1534f, 476f, var_2.d.x)), var_2.e & var_4.zy), _wgslsmith_clamp_vec2_i32(vec2<i32>(19164i, var_4.x), ~var_1.b, firstTrailingBit(vec2<i32>(-21436i, var_1.b.x)))), select(~firstLeadingBit(var_3.yw), vec2<i32>(var_4.x, var_4.x) & var_3.xx, select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

