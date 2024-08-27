struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = ~(~select(reverseBits(~arg_0.b), abs(arg_0.b), !any(vec3<bool>(arg_0.a, false, false))));
    var var_1 = !(!select(select(select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, arg_0.a, arg_0.a)), vec3<bool>(arg_0.a, true, true), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, false), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, false), !arg_0.a), vec3<bool>(-1167f < arg_0.c.x, true, false | arg_0.a)));
    var_1 = !vec3<bool>(true, all(select(vec3<bool>(arg_0.a, true, var_1.x), select(vec3<bool>(false, var_1.x, arg_0.a), vec3<bool>(true, var_1.x, true), true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(arg_0.a, var_1.x, var_1.x), var_1.x))), all(!(!vec4<bool>(true, true, true, var_1.x))));
    let var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) + arg_0.c)));
    return -2372f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-640f, -1297f, _wgslsmith_f_op_f32(func_3(Struct_1(any(vec3<bool>(true, true, false)), ~vec3<u32>(56179u, 97601u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.x, -467f, arg_0.x))))), _wgslsmith_f_op_f32(abs(arg_1.x)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-var_0.x)))))), var_0.x);
    var var_2 = true;
    var var_3 = -(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(-12337i, arg_2)), _wgslsmith_clamp_i32(2147483647i, u_input.b.x, arg_2) | -2147483647i, _wgslsmith_div_i32(u_input.b.x, ~u_input.b.x), u_input.b.x) << (vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 4294967295u), _wgslsmith_clamp_u32(1u, ~u_input.a.x, max(4294967295u, 4294967295u)), 72563u, firstLeadingBit(_wgslsmith_sub_u32(0u, u_input.a.x))) % vec4<u32>(32u)));
    let var_4 = Struct_2(Struct_1(false, select(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec3<u32>(83006u, u_input.a.x, u_input.a.x)), vec3<bool>(false, any(vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, 869f, 476f), vec4<f32>(381f, -108f, 469f, -3313f))))) + vec4<f32>(_wgslsmith_div_f32(-1225f, -2085f), -361f, -746f, _wgslsmith_f_op_f32(floor(arg_0.x))))), vec3<u32>(u_input.a.x, ~u_input.a.x, (u_input.a.x >> (u_input.a.x % 32u)) << (~firstTrailingBit(u_input.a.x) % 32u)), firstTrailingBit(select(vec4<u32>(abs(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x), 48413u, firstLeadingBit(u_input.a.x)), firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), !select(true, true, true))), arg_0.x, Struct_1(-902f == _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_1.x * var_0.x)), ~(~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 33550u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, var_1.x, -1496f, var_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1364f, 382f, -548f, -337f)), vec4<f32>(1724f, 511f, arg_1.x, arg_1.x)))))));
    return !all(select(vec3<bool>(true | var_4.a.a, var_4.a.a, var_4.a.a), vec3<bool>(any(vec2<bool>(true, true)), var_4.e.a == var_4.a.a, true), arg_2 <= u_input.b.x));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(-1395f, _wgslsmith_f_op_f32(-219f + _wgslsmith_f_op_f32(-arg_1))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false, vec3<u32>(4294967295u, 0u, arg_3), vec4<f32>(1319f, arg_1, -508f, 1649f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)), -1339f)) - _wgslsmith_f_op_f32(arg_1 + arg_1));
    let var_2 = ~vec2<u32>(select(~0u, arg_3 & u_input.a.x, true), u_input.a.x | max(u_input.a.x, 13450u));
    let var_3 = !(!(!select(select(vec3<bool>(arg_2, true, arg_0), vec3<bool>(arg_2, false, false), true), vec3<bool>(false, arg_0, arg_2), vec3<bool>(arg_0, false, arg_2))));
    var var_4 = select(select(!select(vec4<bool>(true, arg_2, arg_2, true), !vec4<bool>(var_3.x, true, false, true), !var_3.x), vec4<bool>(any(!vec3<bool>(arg_0, true, arg_0)), false | arg_0, func_2(vec3<f32>(-710f, arg_1, -934f), vec3<f32>(-1541f, var_1, 316f), u_input.b.x) != true, true), vec4<bool>(true, var_3.x, false, all(vec4<bool>(true, true, true, true)))), vec4<bool>(true, !select(true, var_3.x | true, arg_0), select(true, var_3.x, true), all(vec3<bool>(arg_0, func_2(vec3<f32>(arg_1, var_1, arg_1), vec3<f32>(1723f, -1000f, -1318f), -2147483647i), !arg_0))), vec4<bool>(!(arg_0 | true), func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), var_1, _wgslsmith_f_op_f32(select(arg_1, arg_1, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, var_1, arg_1))), _wgslsmith_add_i32(-25090i, _wgslsmith_sub_i32(u_input.b.x, -2147483647i))), 0i >= _wgslsmith_div_i32(firstTrailingBit(-43355i), ~u_input.b.x), !(!(arg_0 | arg_2))));
    return Struct_3(firstTrailingBit(u_input.b));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 57897u;
    var var_1 = -_wgslsmith_clamp_i32(i32(-1i) * -1i, -2147483647i, firstTrailingBit(0i >> (u_input.a.x % 32u)));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 23530u, 0u, 24117u), select(vec4<u32>(28399u, u_input.a.x, 49625u, 3031u), vec4<u32>(u_input.a.x, 4678u, 4294967295u, u_input.a.x), false))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 5848u, u_input.a.x), ~vec4<u32>(8953u, u_input.a.x, u_input.a.x, u_input.a.x) << (select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(95513u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false)) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.a.x), firstTrailingBit(1u), u_input.a.x, u_input.a.x));
    var_1 = _wgslsmith_dot_vec2_i32(arg_1.a, ~func_4(true, arg_0, !any(vec3<bool>(false, true, false)), max(u_input.a.x, var_2.x)).a);
    var var_3 = -375f;
    return func_4(!func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(458f, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, arg_0, arg_0) + vec3<f32>(745f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -1000f, arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(186f, arg_0, -1823f), vec3<f32>(arg_0, arg_0, arg_0))))), firstTrailingBit(-2147483647i)), 1813f, false || any(vec4<bool>(true, true, true, true)), 0u);
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(-1946f, func_4(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1153f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f * 326f) + -383f))), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1590f, -1213f, -884f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, 745f, -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1279f, 1009f, -198f), vec3<f32>(-138f, -918f, 491f), true))), u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(~103056u, u_input.a.x | u_input.a.x), max(firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(4294967295u, u_input.a.x)))));
    var var_1 = var_0;
    let var_2 = !any(vec2<bool>(true, true));
    var_1 = Struct_3(min(-(~select(vec2<i32>(var_1.a.x, -2147483647i), var_1.a, vec2<bool>(var_2, true))), u_input.b));
    let var_3 = Struct_1(any(!vec4<bool>(true, true, true, var_2)), vec3<u32>(u_input.a.x, 14476u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-551f, 1592f)), _wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f - -1070f)), _wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(f32(-1f) * -794f)))));
    return -((select(~vec4<i32>(-1i, 55684i, -2147483647i, var_1.a.x), -vec4<i32>(1i, var_0.a.x, var_1.a.x, var_0.a.x), vec4<bool>(false, var_2, var_2, var_3.a)) ^ (reverseBits(vec4<i32>(-31082i, 14656i, var_1.a.x, 16981i)) & (vec4<i32>(-2147483647i, 2147483647i, -14723i, var_0.a.x) & vec4<i32>(var_1.a.x, -17207i, -1i, u_input.b.x)))) & abs(vec4<i32>(-var_1.a.x, var_1.a.x, ~33865i, -4407i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a.x, 8967u, u_input.a.x, ~(~_wgslsmith_mod_u32(1u ^ u_input.a.x, ~4294967295u)));
    let var_1 = min(u_input.a, vec2<u32>(~26499u, 2464u));
    var var_2 = -(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-6244i, u_input.b.x, -1i, -21125i), vec4<i32>(u_input.b.x, u_input.b.x, -17002i, -2147483647i)), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), -vec4<i32>(u_input.b.x, 40356i, -16839i, u_input.b.x)) ^ func_1()) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.x, u_input.a.x, 77771u, var_0.x)), ~select(~vec4<u32>(u_input.a.x, var_1.x, var_1.x, var_0.x), ~vec4<u32>(8926u, var_0.x, var_1.x, u_input.a.x), true)) % vec4<u32>(32u));
    var var_3 = var_2.zz;
    var var_4 = select(~(u_input.b << (vec2<u32>(1u, firstTrailingBit(u_input.a.x)) % vec2<u32>(32u))), var_2.xy, vec2<bool>(true, true && !any(vec4<bool>(false, false, false, true))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2389f));
}

