struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -624f))), arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -215f))) + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))))));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    global0 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(max(u_input.a, max(4294967295u, u_input.a)), ~(~u_input.a), ~13896u), 4294967295u);
    var var_0 = _wgslsmith_clamp_vec2_u32(~max(vec2<u32>(reverseBits(u_input.a), select(59785u, 4294967295u, false)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 61265u), vec2<u32>(64028u, 47365u))), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), (vec2<u32>(69109u, u_input.a) ^ vec2<u32>(u_input.a, 60307u)) >> (max(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(13100u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(26897u, 38014u, 14214u, u_input.a))), ~(~(~vec2<u32>(32004u, u_input.a))));
    var_0 = ~vec2<u32>(10112u & firstLeadingBit(select(1u, u_input.a, true)), abs(u_input.a & reverseBits(4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1073f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(-659f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -119f)))))));
    let var_2 = Struct_2(~max(~vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 47202u, var_0.x), max(vec3<u32>(var_0.x, 22045u, var_0.x), vec3<u32>(u_input.a, 0u, 25842u)))));
    return u_input.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(369f <= _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2)), Struct_2(max(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(50444u, arg_1.a, 11068u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 66846u, arg_1.a), vec3<u32>(arg_1.c, 61618u, 4294967295u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1110f, -797f, arg_2), vec3<f32>(-615f, arg_2, 877f), arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_2, -1530f), vec3<f32>(arg_2, arg_2, -445f), arg_0)) * _wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(arg_2, arg_2), Struct_1(31435u, arg_1.b, u_input.a)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1714f, arg_2, arg_2) + vec3<f32>(arg_2, arg_2, 1640f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(154f, arg_2, -195f))), vec3<bool>(true, true, true))) - vec3<f32>(_wgslsmith_div_f32(arg_2, 2089f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_2, -418f)))), !arg_0.x, _wgslsmith_mod_i32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.b.x, -26216i, -8969i), vec4<i32>(u_input.b, 0i, u_input.b, 26833i)) | _wgslsmith_sub_i32(arg_1.b.x, arg_1.b.x), (1i << (u_input.a % 32u)) | 1i), i32(-1i) * -25701i));
    var_0 = Struct_3((false & all(select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0, false))) != any(vec2<bool>(var_0.d, false)), Struct_2(~var_0.b.a), var_0.c, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(var_0.c.xx, Struct_1(1u, vec2<i32>(5787i, 5413i), u_input.a))).x) != var_0.c.x), select(_wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(arg_1.b.x, u_input.b)), 1i), 2147483647i, true || var_0.d));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1338f, 1f)) + _wgslsmith_f_op_f32(trunc(-571f)))), var_0.c.x, -924f);
    var var_2 = Struct_1(~var_0.b.a.x, vec2<i32>(1i, u_input.b), ~0u);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(144f, var_1.x), _wgslsmith_div_f32(-1197f, -707f))) * arg_2))), _wgslsmith_div_f32(var_0.c.x, arg_2)));
    return Struct_2(~var_0.b.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.yy, min(~vec2<u32>(u_input.a, u_input.a), ~arg_1.a.yz) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_1.a.x), ~vec2<u32>(u_input.a, arg_1.a.x), select(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, u_input.a), vec2<bool>(false, false))) % vec2<u32>(32u))), vec2<u32>(~1u, _wgslsmith_mult_u32(firstTrailingBit(~70886u), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, arg_0.a.x), ~arg_0.a.x))));
    global0 = func_1(vec3<bool>(true, !select(false, false, false), !all(vec3<bool>(false, false, false))), Struct_1(37541u >> ((0u | arg_0.a.x) % 32u), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 54014i), vec2<i32>(arg_2, u_input.b)), _wgslsmith_dot_vec2_u32(~arg_1.a.yy, ~vec2<u32>(35233u, var_0.x))), -743f).a.x | ~min(arg_0.a.x, ~_wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x));
    var var_1 = !(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_2 = -select(-(~arg_2), ~0i, var_1.x);
    var var_3 = Struct_1(~((arg_1.a.x >> (_wgslsmith_sub_u32(u_input.a, 0u) % 32u)) | reverseBits(min(17253u, var_0.x))), firstLeadingBit(-vec2<i32>(-37665i, arg_2) << (var_0 % vec2<u32>(32u))), 1u);
    return Struct_1(var_0.x, vec2<i32>(arg_2 & -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 34393i, var_3.b.x), vec4<i32>(-46984i, arg_2, var_2, 1i)), -arg_2), _wgslsmith_mod_u32(var_0.x, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 74591u, var_3.a, 6508u), vec4<u32>(0u, var_0.x, u_input.a, u_input.a)) & u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(61453u, 16928u, 5731u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)) % vec3<u32>(32u)))), func_1(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), any(vec3<bool>(false, true, false))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(u_input.a, vec2<i32>(u_input.b << (35627u % 32u), 0i), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(32305u, u_input.a), u_input.a, _wgslsmith_mult_u32(3170u, 1u))), -451f), u_input.b);
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(func_4(Struct_2(vec3<u32>(1u, var_0.a, u_input.a)), Struct_2(vec3<u32>(4294967295u, var_1.a, 4294967295u)), u_input.b).c & u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(7284u, 1u), vec2<u32>(1u, 1u))), ~(~vec2<u32>(u_input.a, var_0.a) & ~vec2<u32>(var_1.a, u_input.a)));
    var var_3 = func_1(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_4(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), var_0, -1177f), func_1(vec3<bool>(true, true, true), func_4(Struct_2(vec3<u32>(var_2.x, var_1.a, var_0.a)), Struct_2(vec3<u32>(var_1.a, 1u, var_2.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -2147483647i, -30247i), vec4<i32>(-9146i, var_1.b.x, -45252i, -69519i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-491f)) - -871f)), var_1.b.x), 111f);
    var var_4 = Struct_1(_wgslsmith_mult_u32(var_0.a, 0u), vec2<i32>(-31394i, var_0.b.x), max(69875u >> (var_0.a % 32u), ~var_1.c));
    var_3 = Struct_2(var_3.a);
    var_3 = Struct_2(var_3.a);
    var var_5 = all(vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1410f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(225f))), any(vec2<bool>(true, true)), !(!all(vec4<bool>(false, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -5193i, var_4.b.x, var_1.b.x), vec3<i32>(~u_input.b, var_4.b.x, func_4(Struct_2(vec3<u32>(0u, var_3.a.x, 18589u)), Struct_2(vec3<u32>(var_1.c, 20925u, 0u)), 0i).b.x)), var_1.b.x), var_4.a, ~((i32(-1i) * -var_4.b.x) | (-u_input.b & (-2147483647i & var_1.b.x))), vec3<i32>(var_0.b.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -2147483647i, var_0.b.x) >> (vec4<u32>(4294967295u, var_3.a.x, 36956u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_4.b.x, var_4.b.x, -27944i, var_1.b.x), vec4<i32>(var_1.b.x, var_4.b.x, 56847i, u_input.b)))) << (vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(u_input.a, 95880u)), 0u, 72197u) % vec3<u32>(32u)));
}

