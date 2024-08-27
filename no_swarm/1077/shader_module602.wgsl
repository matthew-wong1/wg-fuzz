struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 0u);

var<private> global1: i32 = 0i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_add_u32(~21954u, ~u_input.b.x);
    var var_1 = _wgslsmith_clamp_u32(~42350u, u_input.b.x, global0[_wgslsmith_index_u32(~u_input.b.x, 2u)]);
    return !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec3<f32> {
    let var_0 = ~(vec3<u32>(min(~4294967295u, 1u), firstLeadingBit(_wgslsmith_clamp_u32(0u, 20838u, u_input.b.x)), 32725u) & reverseBits(max(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(u_input.b.x, 21458u, 6991u)), u_input.b)));
    global1 = -11934i;
    var var_1 = Struct_5(Struct_2(arg_1 && !arg_1, u_input.a.x & ~u_input.a.x, any(vec3<bool>(!arg_1, false, true))), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 2u)] >> (0u % 32u), 2u)], 18949u));
    let var_2 = true;
    var var_3 = vec4<bool>(select((-809f != _wgslsmith_f_op_f32(ceil(1601f))) != true, arg_1, true), any(vec3<bool>(false, true, var_2)), arg_1, false);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, -482f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, -994f, -1106f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(min(arg_0.d.x, 1807f)))));
    var var_1 = Struct_1(vec3<u32>(reverseBits(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(13595u, 2u)]), 2u)]), 70217u, _wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(u_input.b.x, 2u)] >> (4294967295u % 32u)), ~(~24188u))), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50496u, 2u)] | arg_3.x, 2u)] << (reverseBits(abs(1u)) % 32u), 2u)], !(!vec3<bool>(arg_0.c.x, !arg_0.c.x, all(vec3<bool>(arg_0.c.x, true, arg_0.c.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(952f, 1256f, arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x * -452f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, _wgslsmith_f_op_f32(-894f + arg_1.a.x), _wgslsmith_f_op_f32(arg_0.d.x + arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -560f)))));
    var var_2 = arg_1;
    global0 = array<u32, 2>();
    let var_3 = Struct_4(vec3<i32>(_wgslsmith_div_i32(-26895i, -1i), -u_input.a.x, u_input.a.x >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_3.x, global0[_wgslsmith_index_u32(29937u, 2u)]), vec4<u32>(arg_0.b, 1u, 4294967295u, var_1.a.x)), global0[_wgslsmith_index_u32(arg_3.x, 2u)] ^ var_1.a.x) % 32u)), arg_2.x, Struct_3(arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - var_2.a.x))));
    return _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u ^ (1u ^ arg_0.b), ~abs(95899u), countOneBits(abs(4294967295u)), select(~var_1.b, u_input.b.x, true)), vec4<u32>(~(arg_3.x | 0u), global0[_wgslsmith_index_u32(abs(var_1.b) & ~u_input.b.x, 2u)], ~1u, ~firstLeadingBit(1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.b << (arg_0.b % 32u), ~45000u, ~17122u, 1u), vec4<u32>(~var_1.b, ~_wgslsmith_mult_u32(105966u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)]), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, var_1.b), 4294967295u), ~max(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, arg_3.x, arg_0.a.x)), ~vec4<u32>(arg_0.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], arg_3.x, 32327u))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_5) -> bool {
    let var_0 = min(-_wgslsmith_div_i32(~_wgslsmith_mod_i32(u_input.a.x, 1i), -38366i), 84560i >> (func_4(Struct_1(u_input.b, ~1u, !vec3<bool>(true, arg_1, false), vec4<f32>(162f, -145f, 1951f, -1000f)), Struct_3(_wgslsmith_f_op_vec3_f32(func_3(u_input.a, arg_1))), vec4<i32>(-7493i, 0i, 2147483647i, arg_2.a.b) | u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, arg_0), vec2<u32>(u_input.b.x, 1u) & arg_2.b)) % 32u));
    var var_1 = _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(18621u, 1u) ^ vec2<u32>(global0[_wgslsmith_index_u32(arg_2.b.x, 2u)], 17198u))), (abs(~vec2<u32>(arg_0, arg_0)) << ((~u_input.b.xx | _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, arg_2.b.x), vec2<u32>(27458u, 37966u))) % vec2<u32>(32u))) & u_input.b.zz);
    global0 = array<u32, 2>();
    global1 = var_0;
    var var_2 = u_input.b.xz;
    return arg_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_2 {
    global1 = u_input.a.x;
    var var_0 = 4294967295u;
    global0 = array<u32, 2>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.d.x, 691f, any(vec3<bool>(any(arg_1), true, all(vec3<bool>(arg_1.x, true, true)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x)))))));
    let var_2 = !func_1(-36383i).zzy;
    return arg_3.a;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(~select(-u_input.a.wxz, ~vec3<i32>(u_input.a.x, -1067i, 0i) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_2.a.b, 24692i), vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<bool>(false | arg_2.a.c, u_input.b.x < 12849u, true)), 1i, Struct_3(vec3<f32>(-1714f, -1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-499f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1555f, -509f, arg_2.a.a)))) + -128f)));
    global0 = array<u32, 2>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, var_0.d, var_0.d)), _wgslsmith_f_op_vec3_f32(-var_0.c.a)))))));
    global0 = array<u32, 2>();
    let var_2 = func_5(select(!vec4<bool>(var_0.c.a.x != -1315f, func_2(arg_1, false, arg_2), true, true), select(vec4<bool>(false, all(vec2<bool>(arg_2.a.a, arg_2.a.a)), true, arg_2.a.c & arg_2.a.c), !(!vec4<bool>(arg_2.a.c, false, arg_2.a.c, arg_2.a.a)), select(!vec4<bool>(false, arg_2.a.c, true, arg_2.a.a), vec4<bool>(arg_2.a.a, arg_2.a.a, false, true), arg_2.a.c)), !vec4<bool>(true, arg_2.a.c, select(arg_2.a.c, false, true), all(vec4<bool>(arg_2.a.a, arg_2.a.a, arg_2.a.c, arg_2.a.c)))), func_1(-_wgslsmith_add_i32(arg_2.a.b, -17752i) >> (5492u % 32u)), Struct_1(u_input.b, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(54102u, 1u), 52307u | arg_2.b.x), 2u)], !(!func_1(-2147483647i).zxy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_1.a.x, 154f, var_0.c.a.x) - vec4<f32>(-797f, -498f, 1941f, var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, -1949f, -944f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1207f, var_1.a.x, var_0.d, 1563f) + vec4<f32>(-455f, -1015f, var_0.c.a.x, -1000f)))))), arg_2);
    return func_5(select(select(vec4<bool>(!arg_2.a.a, !arg_2.a.c, !var_2.c, true), !(!vec4<bool>(arg_2.a.a, arg_2.a.c, false, true)), !func_2(arg_1, var_2.a, arg_2)), select(select(!vec4<bool>(false, true, var_2.a, true), vec4<bool>(false, arg_2.a.c, arg_2.a.c, var_2.a), func_1(var_0.b)), func_1(-1i), !func_1(u_input.a.x)), true), select(select(select(vec4<bool>(true, arg_2.a.a, false, arg_2.a.a), !vec4<bool>(var_2.c, false, true, var_2.c), func_1(-1i).x), vec4<bool>(true, func_1(arg_2.a.b).x, true, func_1(-62955i).x), arg_2.a.a), vec4<bool>(true, !any(vec2<bool>(arg_2.a.c, true)), (-2147483647i | arg_2.a.b) <= func_5(vec4<bool>(var_2.c, var_2.a, false, var_2.c), vec4<bool>(true, arg_2.a.c, true, arg_2.a.c), Struct_1(vec3<u32>(arg_0, 116327u, 87767u), 11355u, vec3<bool>(var_2.c, false, arg_2.a.c), vec4<f32>(370f, -1320f, 1000f, -731f)), Struct_5(Struct_2(true, 2147483647i, arg_2.a.c), vec2<u32>(0u, 0u))).b, var_2.a), !func_2(select(arg_1, 1u, var_2.c), arg_2.a.c, arg_2)), Struct_1(vec3<u32>(func_4(Struct_1(vec3<u32>(arg_2.b.x, 55248u, 51068u), arg_2.b.x, vec3<bool>(arg_2.a.c, var_2.a, false), vec4<f32>(var_1.a.x, 325f, -567f, -1548f)), Struct_3(vec3<f32>(var_0.c.a.x, var_1.a.x, var_0.c.a.x)), abs(vec4<i32>(-2147483647i, arg_2.a.b, arg_2.a.b, 61239i)), arg_2.b), arg_1, arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(68214u), 1u), vec2<u32>(global0[_wgslsmith_index_u32(43397u, 2u)] >> (53489u % 32u), arg_2.b.x)), !func_1(reverseBits(-54298i)).xxx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-812f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(-704f, 107f)), _wgslsmith_f_op_f32(-1235f - 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, var_1.a.x, var_0.d, var_1.a.x) - vec4<f32>(-1293f, -2033f, -287f, var_1.a.x)))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(select(1u, global0[_wgslsmith_index_u32(0u, 2u)], false), global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), 2u)], global0[_wgslsmith_index_u32(16144u, 2u)])));
    var var_1 = func_6(var_0.x, 10210u, Struct_5(func_5(select(vec4<bool>(true, false, false, true), func_1(u_input.a.x), true), vec4<bool>(func_2(var_0.x, false, Struct_5(Struct_2(true, u_input.a.x, false), vec2<u32>(1447u, var_0.x))), any(vec2<bool>(true, true)), func_2(37352u, true, Struct_5(Struct_2(true, -2147483647i, false), vec2<u32>(1u, 72002u))), u_input.a.x != u_input.a.x), Struct_1(u_input.b << (u_input.b % vec3<u32>(32u)), _wgslsmith_mult_u32(1u, 4294967295u), vec3<bool>(true, true, true), vec4<f32>(1830f, -779f, 339f, -2044f)), Struct_5(Struct_2(false, -38909i, false), vec2<u32>(u_input.b.x, 63468u))), vec2<u32>(global0[_wgslsmith_index_u32(1u ^ global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 18856u)));
    var var_2 = Struct_4(u_input.a.xyz, func_6(122729u, 1u, Struct_5(Struct_2(var_1.c | true, _wgslsmith_add_i32(-1i, 28603i), var_1.b > u_input.a.x), vec2<u32>(1u, 6392u))).b, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(-1272f * _wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(max(1154f, -1000f)))), 1f);
    let var_3 = vec4<bool>(true, all(!select(select(vec4<bool>(true, var_1.c, var_1.a, false), vec4<bool>(var_1.a, var_1.a, false, var_1.c), vec4<bool>(var_1.a, var_1.a, false, var_1.a)), func_1(u_input.a.x), var_1.c)), !var_1.a && !(!var_1.c), !var_1.c);
    global1 = abs(2147483647i);
    var var_4 = _wgslsmith_clamp_u32(~(~52240u << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 77564u, var_0.x), u_input.b)) % 32u)), max(select(countOneBits(1u), reverseBits(8576u), false), 7980u), _wgslsmith_sub_u32(min(~24324u, ~global0[_wgslsmith_index_u32(var_0.x, 2u)]) >> (1u % 32u), u_input.b.x));
    var_2 = Struct_4(_wgslsmith_mod_vec3_i32(-var_2.a, -(~u_input.a.yzz & abs(vec3<i32>(1i, -3673i, var_2.b)))), var_2.b, var_2.c, _wgslsmith_f_op_f32(step(var_2.d, 948f)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -2147483647i, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1428f)))) - _wgslsmith_f_op_f32(abs(var_2.c.a.x)))));
}

