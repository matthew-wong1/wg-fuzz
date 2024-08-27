struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_5(~firstLeadingBit(arg_0.b));
    let var_1 = Struct_1(vec2<f32>(111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f))), arg_0.a.yxy << (~min(vec3<u32>(arg_0.b, 1u, 12832u) ^ vec3<u32>(arg_0.b, 4294967295u, arg_0.b), countOneBits(vec3<u32>(17840u, var_0.a, arg_0.b))) % vec3<u32>(32u)));
    var var_2 = arg_0;
    let var_3 = -274f;
    var_2 = arg_0;
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a.x, 0u, 1u, arg_0.b), vec4<u32>(37401u, 63641u, 0u, 1u)), firstTrailingBit(vec4<u32>(var_2.b, u_input.a.x, 26647u, var_2.b)), vec4<u32>(arg_0.b, u_input.a.x, 51158u, var_2.b)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 60399u, u_input.a.x, var_0.a), vec4<u32>(var_0.a, 1u, arg_0.b, 32894u)), ~vec4<u32>(0u, arg_0.b, 4294967295u, arg_0.b))), vec4<u32>(~var_2.b, arg_0.b, reverseBits(54105u), arg_0.b) << (vec4<u32>(var_2.b, 1u, arg_0.b, _wgslsmith_mult_u32(29310u, 56536u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = 1u;
    var_0 = ~13820u;
    var_0 = _wgslsmith_mod_u32(1u, u_input.a.x);
    var_0 = func_3(Struct_4(~(-vec4<i32>(arg_3.x, -36720i, 2147483647i, 53400i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 1u, arg_2), vec4<u32>(1u, 68838u, 49144u, u_input.a.x)))) << ((1u | ~abs(u_input.a.x)) % 32u);
    var var_1 = Struct_3(select(vec3<bool>(arg_1, (arg_1 | arg_1) & (false && arg_1), (0u | arg_2) >= arg_2), !vec3<bool>(arg_0.x <= arg_0.x, u_input.a.x == arg_2, false), select(vec3<bool>(all(vec3<bool>(arg_1, arg_1, false)), false, !arg_1), !(!vec3<bool>(false, arg_1, true)), select(!vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true))), arg_3.wzy, Struct_2(~arg_2 >> (arg_2 % 32u), _wgslsmith_f_op_vec2_f32(arg_0.xy - vec2<f32>(arg_0.x, -266f)), vec2<bool>(4294967295u >= firstTrailingBit(7487u), !(arg_3.x != 11806i)), vec2<bool>(select(any(vec2<bool>(true, true)), all(vec3<bool>(arg_1, true, true)), all(vec4<bool>(arg_1, true, true, arg_1))), arg_1), select(!select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, arg_1, arg_1), false), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), false)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(-449f, arg_0.x, true)))))));
    return vec3<i32>(abs(~_wgslsmith_mult_i32(2147483647i, -1i)), -_wgslsmith_add_i32(-1i, 8566i), ~firstLeadingBit(u_input.b)) | ((-vec3<i32>(arg_3.x, arg_3.x, arg_3.x) & select(~arg_3.zwz, -var_1.b, !var_1.c.e)) ^ vec3<i32>(abs(23043i & var_1.b.x), 4460i, arg_3.x));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(abs(arg_1.c.a) >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(45320u, arg_2)) % 32u), arg_2, abs(1u), abs(44656u)) >> ((~vec4<u32>(min(arg_2, 44969u), 1u, _wgslsmith_add_u32(arg_3.a, 1u), _wgslsmith_div_u32(4294967295u, arg_3.a)) << (reverseBits(vec4<u32>(~arg_2, arg_2 >> (713u % 32u), 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = vec4<i32>(arg_1.b.x, _wgslsmith_clamp_i32(arg_1.b.x, 0i, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.b.x, u_input.d.x), abs(arg_1.b.x))), select(arg_1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.b, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, u_input.d.x, -16948i), u_input.d.wxz), ~vec3<i32>(2147483647i, 2147483647i, -2210i)), arg_1.b), !(!arg_3.e.x && all(vec3<bool>(arg_0, false, false)))), _wgslsmith_clamp_i32(arg_1.b.x, 0i, u_input.b));
    var_0 = vec4<u32>(min(_wgslsmith_sub_u32(u_input.a.x, 1u) | arg_1.c.a, _wgslsmith_clamp_u32(~arg_2 << (11927u % 32u), firstLeadingBit(~var_0.x), reverseBits(27286u))), 5484u, ~(~arg_3.a), arg_3.a);
    var var_2 = _wgslsmith_div_u32(func_3(Struct_4(vec4<i32>(23239i, -u_input.d.x, countOneBits(1i), var_1.x), _wgslsmith_mult_u32(arg_2, 17997u))), arg_2);
    return Struct_2(44111u, arg_3.b, !vec2<bool>(any(!vec4<bool>(true, arg_1.a.x, false, arg_3.e.x)), ~var_1.x < func_2(vec3<f32>(361f, arg_1.d, arg_3.b.x), arg_1.c.e.x, 4294967295u, u_input.d).x), vec2<bool>(true == any(vec2<bool>(arg_0, false)), !(!arg_3.e.x) & false), arg_3.e);
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -44270i;
    var var_1 = vec4<bool>(!any(select(vec4<bool>(arg_0, true, arg_2.c.x, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_2.c.x, false, arg_0, arg_0))) & arg_0, arg_0, true, !arg_2.c.x);
    let var_2 = Struct_5(0u);
    var_1 = vec4<bool>(var_1.x, true, true, any(!(!(!vec3<bool>(var_1.x, true, arg_2.c.x)))));
    let var_3 = Struct_4(reverseBits(_wgslsmith_div_vec4_i32(firstLeadingBit(u_input.d), u_input.d)), 1957u);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1213f, arg_2.b.x)))) * -481f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.x + 828f), _wgslsmith_f_op_f32(-746f + -282f), true)) + _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(abs(arg_2.b.x))))), vec3<i32>(-(~var_0 << (_wgslsmith_clamp_u32(var_3.b, var_2.a, var_2.a) % 32u)), ~(~var_3.a.x), ~(-_wgslsmith_mult_i32(-24021i, 50123i))));
}

fn func_1() -> vec2<u32> {
    var var_0 = 120f;
    let var_1 = func_5(!all(vec2<bool>(any(vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-425f, -889f, -1008f) - vec3<f32>(2304f, -1000f, -1194f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1430f, 1419f, 249f) - vec3<f32>(417f, 483f, 329f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2820f, -1046f, -1044f)))), func_4(true, Struct_3(vec3<bool>(22530i > u_input.d.x, false, true), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1639f, 1074f, -1089f) * vec3<f32>(-373f, -1105f, -496f)), all(vec2<bool>(false, true)), 1u, -u_input.d), Struct_2(u_input.a.x, vec2<f32>(-422f, 949f), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1659f, 670f)) + -1333f)), ~(~(~0u)), Struct_2(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(-1257f, -601f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(674f, 1000f)))), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec3<bool>(true, true, all(vec2<bool>(false, true))))));
    let var_2 = -(-u_input.c.x & 4879i);
    var_0 = _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f + _wgslsmith_div_f32(var_1.a.x, var_1.a.x)) - var_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)));
    return vec2<u32>(abs(7770u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 37126u, 4294967295u, 1u), ~vec4<u32>(29385u, 4294967295u, u_input.a.x, 4294967295u)) % 32u), 1u) << (vec2<u32>(~_wgslsmith_add_u32(u_input.a.x >> (u_input.a.x % 32u), ~1u), 50387u) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(-1141f))) + 513f);
    let var_1 = func_1();
    let var_2 = u_input.a.x;
    var var_3 = min(_wgslsmith_add_u32(var_2, firstLeadingBit(1u)), var_2) ^ ~var_2;
    var_3 = abs(~_wgslsmith_dot_vec2_u32(var_1 | vec2<u32>(u_input.a.x, var_2), vec2<u32>(11478u, u_input.a.x) << (vec2<u32>(11189u, 10645u) % vec2<u32>(32u)))) & 85849u;
    var var_4 = Struct_4(-u_input.d, _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, u_input.a.x, var_1.x), vec4<u32>(u_input.a.x, var_1.x, 1u, var_1.x)), 66451u), var_2));
    let var_5 = Struct_5(1u | (21936u ^ ~var_1.x));
    var_4 = Struct_4(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-var_4.a, var_4.a, var_4.a), abs(-var_4.a), var_4.a)), ~_wgslsmith_mult_u32(~(~u_input.a.x), u_input.a.x));
    let var_6 = vec4<u32>(u_input.a.x, var_2, 15189u, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~0i << (u_input.a.x % 32u));
}

