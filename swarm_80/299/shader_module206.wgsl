struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-(~48633i));
    let var_1 = Struct_1(~0i);
    var var_2 = (select(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~u_input.a.x), select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.a.x < 1381u), false) < u_input.a.x) | true;
    var var_3 = select(1u, _wgslsmith_mult_u32(1u, u_input.a.x), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) & true) | u_input.a.x;
    var_0 = Struct_1(var_1.a);
    return Struct_1(2147483647i);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1667f, -615f) + vec2<f32>(469f, -2700f)), _wgslsmith_div_vec2_f32(vec2<f32>(329f, 1000f), vec2<f32>(301f, 580f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, 135f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-277f, 1029f)))))));
    var var_1 = (u_input.a.x | u_input.a.x) >= _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 34070u, u_input.a.x), vec4<u32>(0u, 82399u, u_input.a.x, u_input.a.x))), ~vec4<u32>(24816u, 12611u, u_input.a.x, u_input.a.x)), vec4<u32>(14633u, u_input.a.x, u_input.a.x, 8231u | u_input.a.x));
    var var_2 = Struct_1(~_wgslsmith_dot_vec3_i32(max(-vec3<i32>(arg_1.a, 2147483647i, 2334i), vec3<i32>(0i, 1i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(-59457i, arg_0.x, -26508i), vec3<i32>(47187i, arg_1.a, arg_2.a))));
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(809f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), all(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f * _wgslsmith_f_op_f32(floor(var_0.x)))) + var_0.x));
    return Struct_1(var_2.a);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_3(~(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_2.a), vec2<i32>(arg_2.a, -1i))) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.a, -42916i), _wgslsmith_add_vec2_i32(vec2<i32>(-15721i, -275i), vec2<i32>(arg_2.a, arg_2.a)))), func_2(), func_2());
    var_0 = func_2();
    var_0 = Struct_1(1i);
    var var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
    var var_2 = func_3(~(vec2<i32>(var_0.a, 18685i) & reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, 39328i), vec2<i32>(var_0.a, -2681i)))), arg_2, Struct_1(abs(-1i)));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_3(vec2<i32>(~(-arg_3.a), 24434i), Struct_1(-1i), Struct_1(arg_0.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(141f * _wgslsmith_div_f32(-613f, 1000f)), -358f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1608f, -1255f) * vec2<f32>(455f, -641f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2154f, 1129f), vec2<f32>(-866f, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(957f, -497f)))))));
    let var_2 = -vec3<i32>(1i, i32(-1i) * -var_0.a, arg_0.a) & min(vec3<i32>(var_0.a, arg_0.a << (min(u_input.a.x, 24685u) % 32u), var_0.a), ~vec3<i32>(abs(arg_3.a), 2147483647i & var_0.a, 33964i));
    let var_3 = select(vec3<bool>(false, all(arg_2), arg_2.x), !vec3<bool>(true, !any(arg_2.xz), true), select(arg_2.wwz, !vec3<bool>(any(arg_2), false, false), true && arg_2.x));
    var var_4 = _wgslsmith_mult_i32(select(var_0.a & (i32(-1i) * -222i), arg_1.a, any(select(arg_2, vec4<bool>(var_3.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, var_3.x, arg_2.x, var_3.x)))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, -49854i, 2147483647i)), max(select(vec3<i32>(14599i, 25774i, 1i), var_2, var_3), -vec3<i32>(-1i, -25414i, 2147483647i)))) >> (~1u % 32u);
    return Struct_1(-31427i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(21924u, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(-893f)), _wgslsmith_f_op_f32(f32(-1f) * -1652f), _wgslsmith_f_op_f32(max(1946f, -535f)), -799f))), Struct_1(~(~0i))), Struct_1(-countOneBits(-24029i)), select(vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, false))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), Struct_1(abs(select(18294i, 12464i, false) << (23566u % 32u))));
    let var_1 = func_4(Struct_1(var_0.a >> (max(u_input.a.x, u_input.a.x) % 32u)), func_2(), !(!vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)))), Struct_1(32927i));
    var_0 = func_3(select(firstLeadingBit(-select(vec2<i32>(-1i, var_0.a), vec2<i32>(var_1.a, var_1.a), true)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.a, var_0.a) | _wgslsmith_mult_vec2_i32(vec2<i32>(-26465i, -69227i), vec2<i32>(var_0.a, var_1.a)), vec2<i32>(-34155i, 1i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), reverseBits(-vec2<i32>(2147483647i, var_0.a))), true), var_1, var_1);
    var var_2 = ~firstTrailingBit(select(~4294967295u, firstTrailingBit(66378u) << (4294967295u % 32u), true));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(max(1i, -9122i), _wgslsmith_sub_i32(-2147483647i, ~(-1i)), -_wgslsmith_sub_i32(46068i, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(9231i, -24413i, 2147483647i, var_0.a) | vec4<i32>(1i, var_1.a, var_1.a, var_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(52502i, 0i, var_1.a, 1i), vec4<i32>(var_1.a, -2147483647i, var_0.a, 2147483647i)))), select(countOneBits(vec4<i32>(var_0.a, 17758i, 15511i, var_0.a) & vec4<i32>(var_1.a, var_0.a, -8179i, 14217i)), vec4<i32>(-26686i, -24790i, 35057i, -10656i), select(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1661f)) - 701f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), vec4<i32>(func_1(reverseBits(u_input.a.x), vec4<f32>(_wgslsmith_div_f32(-224f, -975f), _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_div_f32(-349f, -346f), _wgslsmith_f_op_f32(floor(-555f))), func_4(Struct_1(2147483647i), func_3(vec2<i32>(-2147483647i, var_0.a), Struct_1(var_3.a), var_3), vec4<bool>(true, true, true, false), var_3)).a, func_3(~vec2<i32>(var_0.a, 0i), Struct_1(var_1.a), var_3).a & select(func_1(u_input.a.x, vec4<f32>(-566f, 209f, 740f, 651f), Struct_1(2147483647i)).a, 2147483647i ^ var_1.a, true), var_3.a & var_3.a, var_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1874f)), _wgslsmith_f_op_f32(-177f + 1081f), -462f))));
}

