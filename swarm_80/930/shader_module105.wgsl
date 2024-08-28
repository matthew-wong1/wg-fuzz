struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(reverseBits(u_input.b), ~(~(~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x))), u_input.a.x);
    global0 = vec2<bool>(var_0.c == 4294967295u, !(global0.x | !all(vec3<bool>(global0.x, global0.x, global0.x))));
    var var_1 = Struct_2(vec4<i32>(-(max(-1i, var_0.a.x) >> ((var_0.c | u_input.a.x) % 32u)), 2224i, max(-u_input.b.x, var_0.b.x << (~var_0.c % 32u)), var_0.b.x), ~abs(~vec4<u32>(u_input.a.x, 58997u, 1u, 0u) >> (~vec4<u32>(u_input.a.x, 27551u, var_0.c, u_input.a.x) % vec4<u32>(32u))), -406f, Struct_1(u_input.b.x, _wgslsmith_dot_vec4_i32(~var_0.b, vec4<i32>(var_0.b.x & var_0.b.x, 22687i, ~var_0.b.x, 1i)), _wgslsmith_add_i32(~0i, firstLeadingBit(u_input.b.x)), 28537u, _wgslsmith_f_op_f32(-334f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f + 480f)))));
    var_1 = Struct_2(vec4<i32>(~1i, ~(_wgslsmith_sub_i32(15329i, var_1.a.x) & ~var_0.a.x), 2147483647i, abs(var_1.a.x ^ -15558i)), var_1.b, 412f, var_1.d);
    let var_2 = ~(~u_input.b) ^ vec3<i32>(var_0.b.x, ~(61048i << (var_1.b.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -15409i), abs(0i), 1i), u_input.b));
    return 1i;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = ~(~u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), arg_0.d.e)));
    global0 = !vec2<bool>(true & all(vec3<bool>(global0.x, false, global0.x)), ~_wgslsmith_mod_u32(4294967295u, arg_0.b.x) < ~0u);
    let var_2 = global0.x;
    global0 = vec2<bool>(!any(select(vec4<bool>(true, global0.x, false, true), !vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, global0.x), false))), global0.x);
    return abs(max(0i | _wgslsmith_mult_i32(-27848i, -arg_0.a.x), arg_0.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    global0 = vec2<bool>(false, false);
    global0 = !select(select(vec2<bool>(true, false), !(!vec2<bool>(global0.x, false)), !vec2<bool>(true, global0.x)), vec2<bool>(arg_1.a.x == -42988i, global0.x), vec2<bool>(true, true));
    var var_0 = arg_0.c | 92041u;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.a.x, ~func_2()), countOneBits(0i));
    let var_2 = Struct_1(77481i | func_3(arg_1), arg_1.d.a, u_input.b.x, _wgslsmith_dot_vec2_u32(arg_1.b.zz, ~(~vec2<u32>(u_input.a.x, 0u) & max(vec2<u32>(26142u, arg_0.c), vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d.e), _wgslsmith_div_f32(arg_1.d.e, arg_1.c)))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_3(vec3<i32>(-1i) * -(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, arg_0.a.yzw) | (vec3<i32>(u_input.b.x, -1i, 2147483647i) << (vec3<u32>(0u, 36530u, 6730u) % vec3<u32>(32u)))), ~(~abs(~arg_0.a)), _wgslsmith_dot_vec2_u32(~(_wgslsmith_mod_vec2_u32(arg_0.b.yx, vec2<u32>(arg_0.b.x, u_input.a.x)) >> (select(vec2<u32>(arg_0.d.d, u_input.a.x), vec2<u32>(12086u, u_input.a.x), vec2<bool>(global0.x, true)) % vec2<u32>(32u))), ~vec2<u32>(1u, 6504u) << (~min(arg_0.b.zy, vec2<u32>(arg_0.d.d, 1u)) % vec2<u32>(32u))));
    var var_1 = func_1(var_0, arg_0, firstTrailingBit(countOneBits(func_1(var_0, Struct_2(arg_0.a, vec4<u32>(var_0.c, u_input.a.x, 3462u, 70835u), arg_1.x, arg_0.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, 118948u, var_0.c), arg_0.b.wxz, arg_0.b.wxz)).b.zxw)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))) - -1156f) * arg_1.x);
    let var_3 = var_1.d.b;
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(func_1(var_0, Struct_2(var_1.a, vec4<u32>(1u, var_0.c, 4294967295u, arg_0.d.d), var_2, arg_0.d), _wgslsmith_mult_vec3_u32(vec3<u32>(66926u, 1u, u_input.a.x), var_1.b.yzx)).a.yw), abs(_wgslsmith_add_vec2_i32(arg_0.a.xx, u_input.b.yy)) ^ -(vec2<i32>(-9955i, 15608i) << (u_input.a % vec2<u32>(32u)))), countOneBits(arg_0.a.wx));
    return select(vec3<bool>(all(select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), false)) || all(!vec3<bool>(true, global0.x, global0.x)), false, !(var_1.d.e > arg_0.c)), select(!select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x), global0.x), vec3<bool>(global0.x, true, global0.x), !global0.x), select(select(vec3<bool>(global0.x, false, true), !vec3<bool>(true, global0.x, true), true), select(select(vec3<bool>(false, global0.x, false), vec3<bool>(true, true, false), vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(false, false, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(global0.x, false, true)), !global0.x), select(vec3<bool>(!global0.x, all(vec3<bool>(true, global0.x, false)), false), vec3<bool>(global0.x, var_1.d.d < var_0.c, true), vec3<bool>(!global0.x, false, true))), vec3<bool>(false, !global0.x, any(!select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-984f, 1529f, -509f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1344f, -111f, -1000f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 142f, 1199f), vec3<f32>(-1658f, -790f, 1111f)))), func_4(func_1(Struct_3(vec3<i32>(u_input.b.x, -45031i, u_input.b.x), vec4<i32>(u_input.b.x, -1867i, 53695i, u_input.b.x), u_input.a.x), Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), -194f, Struct_1(57569i, u_input.b.x, u_input.b.x, 0u, 962f)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1412f, -323f, -795f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, 1073f, -1071f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(347f, -875f, -550f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-460f, -1566f, -2193f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, -949f, 1129f) * vec3<f32>(318f, -1430f, 131f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1000f * -431f), _wgslsmith_f_op_f32(sign(651f)), _wgslsmith_f_op_f32(f32(-1f) * -211f)))), func_4(func_1(Struct_3(vec3<i32>(0i, -2147483647i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i), u_input.a.x), Struct_2(vec4<i32>(-2147483647i, 42369i, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), -1442f, Struct_1(u_input.b.x, u_input.b.x, 37135i, 78432u, 815f)), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(min(797f, -728f)), _wgslsmith_f_op_f32(abs(978f)))))), !func_4(Struct_2(firstTrailingBit(vec4<i32>(u_input.b.x, -2147483647i, -44863i, -2147483647i)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(21048u, 1u, u_input.a.x, 963u)), _wgslsmith_f_op_f32(floor(-1432f)), func_1(Struct_3(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 24744i), 11231u), Struct_2(vec4<i32>(-5655i, 66542i, 2147483647i, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), -132f, Struct_1(12094i, u_input.b.x, -28517i, u_input.a.x, -693f)), vec3<u32>(u_input.a.x, 47916u, u_input.a.x)).d), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 639f) + vec2<f32>(-598f, -912f)))))));
    let var_1 = select(vec4<bool>(!global0.x, !global0.x, select(global0.x, true, any(vec2<bool>(false, global0.x))) & true, select(true, (16136i << (u_input.a.x % 32u)) == u_input.b.x, global0.x)), select(vec4<bool>(0i <= u_input.b.x, global0.x, global0.x, !global0.x), vec4<bool>(true && global0.x, !(!global0.x), global0.x, true), func_4(func_1(Struct_3(vec3<i32>(-51614i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 26757i), u_input.a.x), Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<u32>(u_input.a.x, u_input.a.x, 24051u, 51892u), 793f, Struct_1(1i, 5981i, -28812i, 31425u, -505f)), vec3<u32>(35868u, 4294967295u, 1u) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))), var_0.yz).x), select(vec4<bool>(true, true, true, true), vec4<bool>(!global0.x & true, true && select(global0.x, true, false), global0.x, global0.x), select(vec4<bool>(true, false, !global0.x, true), !(!vec4<bool>(global0.x, global0.x, true, true)), select(vec4<bool>(true, false, global0.x, true), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, global0.x), global0.x), vec4<bool>(false, false, global0.x, global0.x)))));
    var var_2 = Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, func_1(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 2109i), vec4<i32>(-4321i, u_input.b.x, u_input.b.x, 1i), 42850u), Struct_2(vec4<i32>(u_input.b.x, -6098i, 51814i, -2147483647i), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), var_0.x, Struct_1(81278i, 0i, u_input.b.x, 27322u, var_0.x)), vec3<u32>(39320u, u_input.a.x, u_input.a.x)).d.a, u_input.b.x), min(select(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(33674i, u_input.b.x, 0i), all(var_1)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-27276i, 1i, 1945i), vec3<i32>(-1i, -1781i, -84816i)))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, 1i, 36234i), vec3<i32>(_wgslsmith_mult_i32(-1i, 0i), func_1(Struct_3(u_input.b, vec4<i32>(-1i, 0i, u_input.b.x, -2147483647i), u_input.a.x), Struct_2(vec4<i32>(-1i, -9436i, 7795i, 2147483647i), vec4<u32>(9904u, u_input.a.x, 4294967295u, 4294967295u), var_0.x, Struct_1(-1i, u_input.b.x, -2147483647i, u_input.a.x, -364f)), vec3<u32>(1u, u_input.a.x, 51134u)).a.x, _wgslsmith_add_i32(-8384i, u_input.b.x)))), vec4<i32>(_wgslsmith_div_i32(countOneBits(reverseBits(u_input.b.x)), u_input.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 1i), _wgslsmith_sub_i32(u_input.b.x, -24839i)), ~select(-1i, u_input.b.x, var_1.x)), 7226i, -_wgslsmith_div_i32(_wgslsmith_sub_i32(4563i, -4228i), -u_input.b.x)), ~u_input.a.x);
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(func_1(Struct_3(vec3<i32>(var_2.a.x, var_2.a.x, 17584i), var_2.b, u_input.a.x), Struct_2(var_2.b, vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), -132f, Struct_1(8080i, var_2.b.x, 1i, 1u, var_0.x)), vec3<u32>(u_input.a.x, u_input.a.x, 0u)).d.e, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))), 2960f)));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec4_i32(select(var_2.b, var_2.b, var_1), var_2.b & var_2.b) << (vec4<u32>(select(4294967295u, 38391u, global0.x), 4294967295u, u_input.a.x << (u_input.a.x % 32u), abs(1u)) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(var_2.b, vec4<i32>(13745i, ~u_input.b.x, 31734i, -1i)), _wgslsmith_dot_vec3_u32(~func_1(Struct_3(u_input.b, var_2.b, 1u), Struct_2(vec4<i32>(u_input.b.x, var_2.b.x, -21623i, -2147483647i), vec4<u32>(var_2.c, 2778u, 4294967295u, u_input.a.x), -117f, Struct_1(var_2.a.x, var_2.a.x, -38757i, u_input.a.x, 1145f)), vec3<u32>(var_2.c, 59000u, 88266u) & vec3<u32>(var_2.c, 0u, 1u)).b.yzz, vec3<u32>(u_input.a.x | u_input.a.x, _wgslsmith_mult_u32(17974u, u_input.a.x), 4294967295u) << (_wgslsmith_div_vec3_u32(func_1(Struct_3(var_2.a, vec4<i32>(4450i, u_input.b.x, u_input.b.x, -21730i), u_input.a.x), Struct_2(var_2.b, vec4<u32>(u_input.a.x, var_2.c, u_input.a.x, u_input.a.x), 298f, Struct_1(u_input.b.x, -44155i, 43622i, var_2.c, var_0.x)), vec3<u32>(u_input.a.x, var_2.c, var_2.c)).b.zyw, vec3<u32>(var_2.c, u_input.a.x, var_2.c)) % vec3<u32>(32u))));
}

