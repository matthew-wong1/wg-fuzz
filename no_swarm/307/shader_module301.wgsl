struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = -select(_wgslsmith_sub_i32(~firstTrailingBit(-1i), min(reverseBits(-21411i), 0i)), 16938i, true);
    return u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(!var_0.d.a, var_0.b.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1960f + 1323f), -477f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f * -1427f) * var_2)), _wgslsmith_f_op_f32(f32(-1f) * -899f))));
    var_0 = Struct_2(arg_0.a, Struct_1(true, ~_wgslsmith_mult_u32(var_1.b << (4294967295u % 32u), abs(57262u))), ~vec2<u32>(func_3(vec4<f32>(396f, var_3, var_2, -613f), vec4<u32>(arg_2, var_1.b, 4294967295u, 67546u)).x, _wgslsmith_div_u32(29895u, var_0.c.x)) ^ select(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(arg_2, arg_2) >> (u_input.a % vec2<u32>(32u))), ~arg_0.a, select(vec2<bool>(var_1.a, false), vec2<bool>(arg_0.e, var_0.e), var_1.a)), Struct_1(var_1.a, arg_0.c.x >> (u_input.a.x % 32u)), var_0.d.a);
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-37862i), 4918i), i32(-1i) * -11559i);
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(u_input.a.x != 4294967295u, ~16699u);
    let var_1 = ~(~u_input.a.x);
    let var_2 = vec2<u32>(_wgslsmith_add_u32(18507u, abs(_wgslsmith_add_u32(~1u, var_0.b))), var_0.b);
    var var_3 = select(arg_0, func_4(Struct_2(vec2<u32>(var_2.x, 25950u) | ~var_2, var_0, ~func_3(vec4<f32>(-1621f, -533f, 1323f, -1000f), vec4<u32>(0u, 1u, 18636u, var_1)), Struct_1(true, min(u_input.a.x, 73088u)), !(false & var_0.a)), _wgslsmith_mult_u32(~var_2.x, 4294967295u), ~4294967295u, ~vec3<u32>(0u, countOneBits(var_2.x), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-593f, 1138f, arg_1)))) - _wgslsmith_f_op_f32(round(-3236f))) == _wgslsmith_f_op_f32(337f * -332f));
    var var_4 = Struct_2(vec2<u32>(1u, u_input.a.x), var_0, vec2<u32>(28468u, var_0.b), Struct_1(arg_1, var_0.b), arg_1);
    return firstLeadingBit(~(~(~39453u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(649f, -374f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(min(-631f, 812f))))) * 263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-919f, -330f) + _wgslsmith_f_op_f32(1000f + 1014f)) + _wgslsmith_f_op_f32(f32(-1f) * -939f))));
    return Struct_2(vec2<u32>(1u, arg_0.x), Struct_1(true, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(7501u, arg_0.x, arg_0.x, 38589u))), u_input.a, Struct_1(arg_1.x, u_input.a.x), true);
}

fn func_1() -> vec2<bool> {
    var var_0 = firstLeadingBit(~countOneBits(u_input.a));
    var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(~u_input.a.x, var_0.x), vec2<u32>(4294967295u, var_0.x), all(vec2<bool>(true, true))), firstTrailingBit((u_input.a ^ vec2<u32>(14187u, 0u)) >> (abs(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u)))), firstLeadingBit(u_input.a));
    let var_1 = abs(var_0.x >> (1u % 32u));
    var var_2 = func_5(vec4<u32>(~var_1, 5505u, var_1, func_2(~_wgslsmith_mult_i32(-23561i, -61237i), true)), !vec4<bool>(true, false, !select(false, true, true), false));
    var var_3 = !all(vec3<bool>(true, false, _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(-1688f * 1000f)));
    return vec2<bool>(true, true);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    let var_0 = arg_2.x;
    let var_1 = Struct_4(all(!(!arg_0)));
    var var_2 = Struct_3(func_5(vec4<u32>(_wgslsmith_add_u32(~94849u, arg_1.x), _wgslsmith_div_u32(u_input.a.x, ~1u), 17463u, 37129u), vec4<bool>(var_1.a, 1u <= arg_1.x, var_1.a, arg_0.x)).d, func_5(~vec4<u32>(u_input.a.x << (20919u % 32u), func_3(vec4<f32>(2166f, 1243f, -1826f, 1000f), vec4<u32>(0u, 35959u, 72971u, 5006u)).x, ~4294967295u, countOneBits(arg_1.x)), select(!(!vec4<bool>(false, var_1.a, true, var_1.a)), vec4<bool>(false, all(vec4<bool>(false, arg_0.x, false, var_1.a)), false, 4294967295u > u_input.a.x), !func_5(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 90370u), vec4<bool>(false, true, var_1.a, arg_0.x)).d.a)), ~61245u, arg_2.xw);
    var_2 = Struct_3(func_5(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b.b, u_input.a.x, 4294967295u, 1421u), vec4<u32>(1u, arg_1.x, 1u, 86912u)) << (_wgslsmith_mod_u32(4294967295u, arg_1.x) % 32u), _wgslsmith_div_u32(~0u, ~0u), 4294967295u), !select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, var_1.a), false)).d, var_2.b, 0u, vec2<i32>(-55217i, -firstTrailingBit(_wgslsmith_clamp_i32(var_0, -26999i, var_0))));
    return _wgslsmith_f_op_f32(floor(2762f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -513f)), vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(func_6(func_1(), select(abs(vec3<u32>(0u, u_input.a.x, 61043u)), ~vec3<u32>(u_input.a.x, 12179u, 36967u), false), vec4<i32>(1i, ~(-15250i), abs(3609i), -1i), -firstTrailingBit(-23940i)))), all(vec2<bool>(true, true)) && true));
    var var_1 = Struct_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), firstLeadingBit(vec3<u32>(36413u, ~u_input.a.x, func_2(1i, true)))));
    let var_2 = Struct_2(~_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.a.x)), select(select(vec2<u32>(u_input.a.x, 0u), u_input.a, vec2<bool>(true, false)), abs(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, false))), func_5(select(~select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 14567u), vec4<u32>(u_input.a.x, 1u, 0u, var_1.a.x), false), max(vec4<u32>(64326u, var_1.a.x, var_1.a.x, 1u), max(vec4<u32>(5404u, 4294967295u, var_1.a.x, 4294967295u), vec4<u32>(var_1.a.x, var_1.a.x, u_input.a.x, u_input.a.x))), all(vec4<bool>(false, false, false, true))), vec4<bool>(func_5(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 37763u, 5335u, 0u), vec4<u32>(u_input.a.x, 0u, 1u, 13046u)), vec4<bool>(true, false, true, true)).d.a, all(vec4<bool>(true, true, true, true)), select(true, true, true) | true, true)).b, u_input.a & vec2<u32>(u_input.a.x, 82402u), Struct_1(!(!all(vec4<bool>(true, false, true, false))), ~17962u), !(_wgslsmith_dot_vec4_i32(-vec4<i32>(-59397i, 0i, 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, 19544i, -51551i), vec4<i32>(-2147483647i, -20936i, -2063i, -1i), vec4<i32>(20894i, -1i, 40267i, -1i))) <= (_wgslsmith_dot_vec3_i32(vec3<i32>(-26587i, 1i, 51516i), vec3<i32>(-2147483647i, 3409i, 1283i)) << (~36012u % 32u))));
    let var_3 = 41976i;
    var var_4 = Struct_1(any(!vec4<bool>(true, var_2.d.a, true, true)), 5181u);
    let var_5 = _wgslsmith_mult_vec3_u32(~(~max(abs(vec3<u32>(u_input.a.x, var_4.b, 14024u)), ~var_1.a)), select(~var_1.a, (~var_1.a >> (select(vec3<u32>(4294967295u, 71031u, 333u), vec3<u32>(0u, var_4.b, var_4.b), vec3<bool>(true, false, var_2.b.a)) % vec3<u32>(32u))) & (~var_1.a ^ var_1.a), false));
    var var_6 = Struct_3(var_2.b, var_2, abs(~(~countOneBits(3954u))), vec2<i32>(-31887i, -38827i) ^ ~((vec2<i32>(2147483647i, var_3) & vec2<i32>(var_3, -939i)) | vec2<i32>(0i, var_3)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, var_0.x) * vec2<f32>(var_0.x, 1217f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 881f)))))), vec2<f32>(348f, _wgslsmith_f_op_f32(trunc(-1912f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d);
}

