struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(~(~arg_0.d.yzw), firstLeadingBit(vec3<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x)) ^ vec3<i32>(73184i, arg_0.d.x, arg_0.d.x))) == _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)), min(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(0i, -25859i, arg_0.d.x, arg_0.d.x)), _wgslsmith_mult_i32(arg_0.d.x, -6601i), countOneBits(arg_0.d.x)), -(~arg_0.d)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a));
    var var_2 = Struct_2(arg_0.c, max(4294967295u, _wgslsmith_mod_u32(1u, u_input.a.x)), arg_0.a, countOneBits(vec4<i32>(arg_0.d.x, i32(-1i) * -10940i, -23626i, arg_0.d.x)), Struct_1(-2208f, -1000f, vec4<u32>(_wgslsmith_mod_u32(abs(1u), ~u_input.b.x), firstLeadingBit(min(arg_0.b, arg_0.e.c.x)), u_input.a.x, 0u >> (u_input.b.x % 32u))));
    var_2 = Struct_2(Struct_1(334f, _wgslsmith_f_op_f32(trunc(-214f)), vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(14291u, 1u, var_2.b), vec3<u32>(u_input.b.x, var_2.c.c.x, 0u)), arg_0.e.c.x, 1u)), 0u, var_2.e, _wgslsmith_add_vec4_i32(vec4<i32>(~var_2.d.x ^ var_2.d.x, select(arg_0.d.x, var_2.d.x, false) & firstLeadingBit(var_2.d.x), ~(-31169i & var_2.d.x), countOneBits(2147483647i) & _wgslsmith_mult_i32(var_2.d.x, arg_0.d.x)), var_2.d), Struct_1(-788f, _wgslsmith_f_op_f32(arg_1.x - arg_0.e.a), vec4<u32>(~firstTrailingBit(u_input.b.x), firstLeadingBit(firstLeadingBit(var_2.a.c.x)), u_input.a.x, ~(u_input.a.x >> (var_2.c.c.x % 32u)))));
    var_2 = arg_0;
    return _wgslsmith_add_u32(88163u, u_input.b.x) & _wgslsmith_sub_u32(~5526u, 1u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(func_3(Struct_2(Struct_1(-536f, 752f, vec4<u32>(0u, arg_1.a.x, 29526u, arg_1.a.x)), ~u_input.b.x, Struct_1(2195f, -218f, vec4<u32>(39923u, arg_1.a.x, arg_1.a.x, arg_2)), vec4<i32>(1i, arg_0.x, arg_0.x, 2147483647i) ^ vec4<i32>(arg_0.x, -1i, arg_0.x, 2147483647i), Struct_1(1921f, -727f, vec4<u32>(arg_1.a.x, 1u, arg_2, 24984u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-480f, -1615f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1373f, -262f) * vec2<f32>(193f, 715f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-405f, -1000f)), true))), _wgslsmith_mod_u32(arg_1.a.x, _wgslsmith_add_u32(~arg_2, arg_1.a.x)), u_input.a.x), 0u);
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(~firstLeadingBit(arg_1.a.x >> (arg_2 % 32u)), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_add_u32(select(arg_2, arg_1.a.x, true), 30004u))));
    var var_2 = max(arg_0, arg_0);
    var_2 = vec2<i32>(countOneBits(((-76144i | arg_0.x) >> (15252u % 32u)) ^ 2147483647i), var_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1537f, -1000f), vec2<f32>(1250f, 999f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(389f, 959f) - vec2<f32>(-2513f, -185f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-222f, -2035f))))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(-1000f * -1000f)))));
    return all(select(vec4<bool>(!any(vec4<bool>(true, true, false, false)), true, true, (var_0 >= 5795u) == false), vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_1.a.x, arg_2, var_1.x), vec4<u32>(47951u, u_input.b.x, var_1.x, arg_1.a.x)) != ~u_input.b.x, false, !all(vec2<bool>(false, true))), !vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true)));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(0i, arg_3.e, Struct_3(~vec3<u32>(arg_0 | u_input.a.x, ~u_input.b.x, arg_3.e.c.x)));
    var var_1 = var_0.b.b;
    var_1 = -768f;
    var_1 = var_0.b.a;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * arg_3.e.a)))));
    return Struct_3(min(abs(abs(vec3<u32>(1u, 82616u, arg_0))), countOneBits(vec3<u32>(arg_0, u_input.a.x, 36627u) ^ var_0.c.a)));
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    var var_0 = func_4(u_input.a.x ^ u_input.b.x, select(!vec3<bool>(true, true, func_2(vec2<i32>(1i, -1i), Struct_3(u_input.a), 4294967295u)), vec3<bool>(true, true, true), any(vec3<bool>(u_input.a.x < 4294967295u, true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1147f, -2368f) + vec2<f32>(-659f, -116f)) - vec2<f32>(_wgslsmith_div_f32(-1502f, -733f), -554f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(f32(-1f) * -475f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-241f))), abs(vec4<u32>(4294967295u, u_input.b.x, 9449u, u_input.b.x)) & (vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x) ^ vec4<u32>(u_input.b.x, u_input.a.x, 72541u, u_input.b.x))), _wgslsmith_add_u32(~1u, ~countOneBits(u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(step(-245f, _wgslsmith_f_op_f32(f32(-1f) * -702f))), _wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(round(-1174f))), (vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 1u) << (vec4<u32>(32597u, u_input.b.x, u_input.a.x, 0u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, 7659u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 75245u, u_input.b.x))), vec4<i32>(1i, 2147483647i, firstTrailingBit(arg_0.x), -2147483647i), Struct_1(1904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1590f)) - 454f), countOneBits(vec4<u32>(u_input.a.x, u_input.b.x, 33615u, 1u)) << (countOneBits(vec4<u32>(u_input.a.x, 51826u, u_input.a.x, u_input.b.x)) % vec4<u32>(32u)))));
    let var_1 = max(_wgslsmith_add_i32(-63466i, 2147483647i), _wgslsmith_mod_i32(arg_0.x, arg_0.x));
    var_0 = Struct_3(max(~vec3<u32>(~4294967295u, ~0u, u_input.a.x), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(84323u, 1u, u_input.b.x), var_0.a))));
    let var_2 = ~(-1i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(416f, -1132f), _wgslsmith_f_op_f32(ceil(624f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-121f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f - 723f) * _wgslsmith_f_op_f32(-138f - 527f))) + _wgslsmith_f_op_f32(-1f)), vec4<u32>(0u ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, 61456u, 1u), countOneBits(var_0.a.x)), 23534u, _wgslsmith_sub_u32(var_0.a.x >> (~u_input.a.x % 32u), 17790u), select(26862u, 4643u, true) | 43890u));
    return ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.a.x, var_3.c.x, 7639u)), max(vec3<u32>(u_input.b.x, var_0.a.x, 1u) >> (var_0.a % vec3<u32>(32u)), ~u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.a.x), ~(~(vec3<u32>(var_0.a.x, 0u, 4294967295u) << (var_3.c.zzz % vec3<u32>(32u))))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, countOneBits(~(~45583u)), countOneBits(firstLeadingBit(u_input.b.x)));
    var_0 = firstTrailingBit(vec3<u32>(var_0.x, u_input.b.x << (4294967295u % 32u), 1u));
    let var_1 = ~(vec3<i32>(_wgslsmith_clamp_i32(abs(2147483647i), min(-1535i, -1i), _wgslsmith_div_i32(70440i, -50410i)), ~_wgslsmith_sub_i32(-16305i, 15949i), ~(~(-28119i))) >> (max(~select(u_input.b, vec3<u32>(35685u, var_0.x, u_input.a.x), true), u_input.a) % vec3<u32>(32u)));
    var_0 = u_input.b;
    let var_2 = Struct_3(_wgslsmith_sub_vec3_u32(~func_1(var_1.xx), u_input.b));
    var var_3 = ~(~var_1.xz);
    var_0 = ~(~(~(~(~vec3<u32>(var_0.x, var_0.x, u_input.a.x)))));
    let var_4 = ~_wgslsmith_mod_vec2_i32(var_1.zy, select(max(vec2<i32>(1i, var_3.x), var_1.xz), countOneBits(vec2<i32>(-1i, var_1.x)), vec2<bool>(func_2(var_1.zy, Struct_3(u_input.a), 107298u), true)));
    var var_5 = Struct_4(9240i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-553f, -1792f), -331f))), vec4<u32>(u_input.b.x, var_2.a.x << (var_2.a.x % 32u), 1u, var_2.a.x) & (vec4<u32>(19653u, 51703u, 0u, var_2.a.x) ^ ~vec4<u32>(var_2.a.x, var_2.a.x, 42410u, u_input.b.x))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_5.b.a, var_5.b.b, var_5.b.b, var_5.b.a))))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_5.b.a * 341f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_5.b.a, 271f)))), var_5.b.a, var_5.b.a)), ~(-var_4), _wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.b) * _wgslsmith_f_op_f32(f32(-1f) * -1778f)), var_5.b.b, var_5.b.a, var_5.b.a)), _wgslsmith_add_vec2_u32(func_4(~var_2.a.x, vec3<bool>(true, any(vec2<bool>(false, false)), true), vec2<f32>(2091f, -1000f), Struct_2(var_5.b, u_input.a.x, var_5.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.x, var_3.x, var_4.x), vec4<i32>(-27778i, 5854i, var_1.x, var_5.a)), Struct_1(1070f, 1251f, var_5.b.c))).a.xx, vec2<u32>(39267u, ~var_0.x)));
}

