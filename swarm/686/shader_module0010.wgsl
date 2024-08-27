struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 12>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -525f, -311f, arg_1.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)))), 0u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.x)) - _wgslsmith_div_f32(-644f, _wgslsmith_div_f32(var_0.a.a.x, 766f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, 1160f)) + _wgslsmith_f_op_f32(var_0.b.a.x - arg_1.a.x))))));
    var var_2 = vec4<u32>(abs(max(arg_2 << (var_0.c % 32u), _wgslsmith_sub_u32(arg_2, 812u)) << (var_0.c % 32u)), 20116u ^ arg_2, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(52703u, arg_2, var_0.c)) ^ ~vec3<u32>(arg_2, var_0.c, 85760u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, 51078u, 3599u)), vec3<u32>(47353u, arg_2, 4989u))), ~(~(vec3<u32>(arg_2, var_0.c, arg_2) | vec3<u32>(38649u, 97183u, arg_2)))), var_0.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(var_0.b.a.zz - _wgslsmith_f_op_vec2_f32(exp2(var_0.a.a.zz)));
    let var_4 = 0i;
    return 1f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 288f, true))), _wgslsmith_f_op_f32(select(-2049f, _wgslsmith_f_op_f32(func_3(Struct_4(false, Struct_3(global0.a)), Struct_1(vec4<f32>(242f, -658f, 1000f, -1093f)), 67913u)), !arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-273f, -717f)), -1145f)), _wgslsmith_f_op_f32(func_3(Struct_4(arg_0, Struct_3(vec3<i32>(global0.a.x, arg_1.x, global0.a.x))), Struct_1(vec4<f32>(-1000f, 1096f, 546f, -912f)), select(3557u, 15911u, true))))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), 446f, -920f, _wgslsmith_f_op_f32(1000f - -1775f))))), ~(~_wgslsmith_mod_u32(1u, ~1u)));
    let var_1 = any(!(!(!vec4<bool>(true, arg_0, arg_0, arg_0))));
    global1 = array<vec3<f32>, 12>();
    let var_2 = select(vec2<i32>(-1i, arg_1.x), firstLeadingBit(arg_1), any(select(select(!vec4<bool>(var_1, arg_0, arg_0, arg_0), vec4<bool>(var_1, true, false, arg_0), false), vec4<bool>(true, !arg_0, arg_0, arg_0), false)));
    global0 = Struct_3(vec3<i32>(~abs(select(arg_1.x, -32226i, var_1)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, global0.a.x, -1i, -19041i)), ~vec4<i32>(35359i, 31888i, var_2.x, 51183i)), firstTrailingBit(vec4<i32>(2147483647i, 60616i, -18572i, 0i) << (vec4<u32>(var_0.c, var_0.c, 3239u, var_0.c) % vec4<u32>(32u)))), ~firstTrailingBit(1i)));
    return Struct_4(any(!select(!vec4<bool>(true, arg_0, arg_0, false), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(true, var_1, true, var_1), vec4<bool>(false, var_1, var_1, false)), vec4<bool>(arg_0, false, var_1, false))), Struct_3(~vec3<i32>(global0.a.x, i32(-1i) * -2147483647i, _wgslsmith_add_i32(global0.a.x, global0.a.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(1u >> (abs(0u) % 32u)), 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(75907u, _wgslsmith_mult_u32(~4396u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 32384u), vec3<u32>(0u, 27576u, 0u)))), ~reverseBits(~70548u)), 12u)], !select(vec3<bool>(select(false, true, false), true, true), vec3<bool>(true, false, all(vec3<bool>(false, true, true))), true)));
    global1 = array<vec3<f32>, 12>();
    var var_1 = func_2(!(_wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(max(var_0.x, -712f)))) > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, 1341f), _wgslsmith_div_f32(arg_0, arg_0), true))), -vec2<i32>(-_wgslsmith_div_i32(global0.a.x, 1i), _wgslsmith_sub_i32(global0.a.x, select(global0.a.x, arg_1.x, false))));
    let var_2 = !select(select(select(!vec3<bool>(var_1.a, false, false), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, false, false)), !vec3<bool>(var_1.a, false, false)), vec3<bool>(true, var_1.a, !var_1.a), vec3<bool>(var_0.x == arg_0, !var_1.a, var_1.a && false)), vec3<bool>(select(true, var_1.a, false) || var_1.a, true, var_1.a), vec3<bool>(true, true, false));
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, -324f, var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(600f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1502f, -1189f, -568f, arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 789f, var_0.x) + vec4<f32>(-610f, var_0.x, var_0.x, -1427f)))))), ~firstTrailingBit(4294967295u));
    return 752f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(0u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 48832u), abs(vec2<u32>(0u, 1u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(abs(544f)));
    var var_2 = 64326i;
    let var_3 = Struct_2(arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1738f), _wgslsmith_f_op_f32(arg_2.x + 926f), arg_2.x, _wgslsmith_f_op_f32(max(-2193f, arg_3.a.x))))), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~var_0.x, countOneBits(45914u)), 1u, 1u)));
    let var_4 = -1210f;
    return var_3;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(select(global0.a, abs(global0.a), any(vec3<bool>(true, true, true))));
    global1 = array<vec3<f32>, 12>();
    var var_0 = firstTrailingBit(2147483647i);
    var_0 = -u_input.a;
    global0 = func_2(any(vec4<bool>(func_2(false, vec2<i32>(global0.a.x, 10107i)).a, -global0.a.x == u_input.b, true, all(vec2<bool>(true, false)))), select(min(vec2<i32>(-1i, -78390i), vec2<i32>(-1i, u_input.b)) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(global0.a.x, abs(-28713i)), all(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, false)))).b;
    return func_2(any(select(vec2<bool>(any(vec4<bool>(true, true, false, false)), func_2(false, vec2<i32>(-1i, u_input.a)).a), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), !(u_input.b <= global0.a.x))), _wgslsmith_div_vec2_i32(global0.a.xx, _wgslsmith_div_vec2_i32(global0.a.xy, _wgslsmith_add_vec2_i32(func_2(false, global0.a.xz).b.a.zx, vec2<i32>(u_input.b, 25613i))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), 208f))))), _wgslsmith_f_op_f32(983f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(round(-456f)))), func_4(vec4<i32>(-2914i, abs(u_input.a), i32(-1i) * -1i, ~(global0.a.x | u_input.a)), vec4<i32>(-1i, -u_input.b, 0i, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(max(-1192f, 397f)))), Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1775f), _wgslsmith_f_op_f32(func_1(946f, vec4<i32>(32633i, 2147483647i, 2346i, u_input.b))), _wgslsmith_f_op_f32(-1402f + -1139f)))));
    var var_0 = ~(-global0.a.x) << (1u % 32u);
    var var_1 = all(vec4<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), all(vec3<bool>(false, false, true)) || all(vec3<bool>(true, true, true)), func_2(true, reverseBits(vec2<i32>(-1i, 0i))).a, select(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), true)));
    var_1 = abs(~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, global0.a.x), 6239i)) > firstTrailingBit(53810i);
    let var_2 = global0.a.x;
    var var_3 = 2147483647i;
    var var_4 = func_4(-(abs(~vec4<i32>(u_input.b, 1i, global0.a.x, u_input.a)) & vec4<i32>(u_input.a << (0u % 32u), 24455i, -2147483647i, _wgslsmith_div_i32(u_input.b, 44998i))), -_wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(global0.a.x, u_input.a, u_input.b, global0.a.x)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, -1i, 2042i, global0.a.x), vec4<i32>(1i, u_input.a, global0.a.x, global0.a.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f * -622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(487f * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(281f + 537f) * -523f)))), func_4(max(vec4<i32>(firstTrailingBit(global0.a.x), abs(u_input.a), _wgslsmith_add_i32(9602i, global0.a.x), _wgslsmith_dot_vec2_i32(global0.a.xz, global0.a.xy)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-10177i, u_input.b, global0.a.x, u_input.a)), vec4<i32>(-2147483647i, global0.a.x, u_input.a, u_input.b) & vec4<i32>(29990i, 1i, 0i, 1i))), vec4<i32>(global0.a.x, u_input.b, _wgslsmith_mult_i32(0i, ~u_input.a), firstTrailingBit(-u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -484f), vec2<f32>(1297f, 569f)))), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 5984i, -11590i, global0.a.x), vec4<i32>(global0.a.x, 8593i, 1i, global0.a.x)) << (~vec4<u32>(26582u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a & global0.a.x, u_input.a, max(global0.a.x, u_input.a), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(min(226f, -637f)), _wgslsmith_f_op_f32(trunc(208f))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2314f, 1411f, -650f, 1000f))))).a).b);
    var var_5 = func_2(false, global0.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(var_4.c, ~28666u), var_5.b.a);
}

