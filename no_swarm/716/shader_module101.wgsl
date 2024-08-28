struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(false, true, !any(vec3<bool>(false, false, true)) || any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, false)))));
    let var_1 = Struct_2((17895u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 37080u, 81375u), u_input.a >> (vec3<u32>(1u, u_input.a.x, 12785u) % vec3<u32>(32u))) % 32u)) & ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4993u, u_input.a.x), u_input.a.yy), ~u_input.a.xy), Struct_1(true, countOneBits(u_input.a.x ^ 4294967295u)), abs(select(~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(15679u, 24449u, u_input.a.x)), ~u_input.a, var_0.x)), select(var_0, !vec4<bool>(false & var_0.x, var_0.x, any(vec2<bool>(var_0.x, false)), var_0.x | false), var_0));
    let var_2 = select(59094u, abs(var_1.a), u_input.c.x == ~u_input.d.x);
    let var_3 = ~(~68320u);
    let var_4 = Struct_3(u_input.c, select(select(!vec2<bool>(var_1.d.x, true), vec2<bool>(true, true), !var_1.b.a || true), vec2<bool>(abs(0i) >= min(2147483647i, u_input.b), true), select(vec2<bool>(true, !var_0.x), !var_1.d.xw, var_0.x)), vec4<bool>(var_1.b.a, var_1.b.a, true, true), var_1.b);
    return 1u;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(~abs(max(u_input.a.x, u_input.a.x)) >= func_3(), 0u);
    var var_1 = Struct_2(var_0.b << (var_0.b % 32u), Struct_1(true, 20195u), (vec3<u32>(83849u & var_0.b, var_0.b, ~var_0.b) ^ u_input.a) | abs(vec3<u32>(1u, 1u, 1u)), select(!(!vec4<bool>(var_0.a, arg_0, arg_0, arg_0)), select(select(!vec4<bool>(arg_0, true, true, true), vec4<bool>(var_0.a, true, false, var_0.a), all(vec3<bool>(true, var_0.a, var_0.a))), select(!vec4<bool>(true, false, arg_0, var_0.a), vec4<bool>(true, arg_0, true, false), vec4<bool>(var_0.a, var_0.a, false, false)), vec4<bool>(!var_0.a, false, !arg_0, !arg_0)), vec4<bool>(var_0.a, !select(true, false, false), all(!vec2<bool>(arg_0, true)), var_0.a || !arg_0)));
    var_1 = Struct_2(~67214u, var_1.b, ~(~vec3<u32>(var_1.b.b, 26981u, ~var_1.b.b)), !select(!vec4<bool>(arg_0, var_1.d.x, true, false), select(select(var_1.d, vec4<bool>(true, var_0.a, false, var_1.d.x), var_1.d.x), select(var_1.d, vec4<bool>(false, false, false, true), var_1.d), true), 0i >= u_input.b));
    let var_2 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-18795i, _wgslsmith_div_i32(firstLeadingBit(u_input.d.x), -1i), _wgslsmith_clamp_i32(2147483647i, u_input.c.x, ~u_input.b)), u_input.c), var_1.d.zw, vec4<bool>(!var_1.b.a == (false & any(var_1.d)), true, true || var_1.d.x, all(!vec4<bool>(arg_0, true, var_0.a, false)) & false), var_1.b);
    var_1 = Struct_2(1u, Struct_1(true, min(~53715u, abs(firstTrailingBit(0u)))), vec3<u32>(var_0.b, u_input.a.x, var_2.d.b), vec4<bool>(false, any(select(select(vec4<bool>(var_0.a, true, var_2.c.x, var_2.b.x), var_2.c, vec4<bool>(false, true, false, false)), var_1.d, !var_2.c)), var_0.a, var_2.c.x));
    return u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<i32>(abs(-9734i), ~select(0i, func_2(false), true) << (_wgslsmith_add_u32(reverseBits(~u_input.a.x), u_input.a.x ^ ~1u) % 32u), countOneBits(8282i));
    var_0 = vec3<i32>(select(var_0.x, _wgslsmith_sub_i32(44645i, 0i | u_input.d.x), true), var_0.x, reverseBits(~select(~41180i, max(1i, var_0.x), false)));
    var var_1 = !(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, true), true), vec4<bool>(any(vec2<bool>(false, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    var var_2 = Struct_2(u_input.a.x, Struct_1(var_1.x, 60989u), select(vec3<u32>(65274u, 1u, u_input.a.x | _wgslsmith_mult_u32(1u, 14028u)), ~((u_input.a | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ (u_input.a | vec3<u32>(0u, 1u, u_input.a.x))), select(var_1.x, !any(vec4<bool>(true, true, var_1.x, true)), -13781i > var_0.x)), vec4<bool>(!(!all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(ceil(-684f)) <= _wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(474f * -878f)), true));
    var var_3 = var_2.c.zx << (~(~min(u_input.a.yx, u_input.a.yx) & vec2<u32>(u_input.a.x, var_2.a)) % vec2<u32>(32u));
    return Struct_2(var_2.a, var_2.b, ~(vec3<u32>(select(u_input.a.x, var_2.b.b, var_1.x), u_input.a.x, ~var_3.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(35111u, u_input.a.x, 4294967295u), ~var_2.c, ~var_2.c)), select(var_2.d, !(!vec4<bool>(false, var_2.d.x, false, var_2.b.a)), true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mod_i32(~21176i, _wgslsmith_dot_vec4_i32(~min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -13848i, -85642i, -30657i), u_input.d), -u_input.d), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, -2147483647i, -37587i, -2147483647i) | u_input.d, ~vec4<i32>(-42352i, u_input.b, u_input.b, -2080i), !arg_2.d), ~_wgslsmith_sub_vec4_i32(u_input.d, u_input.d))));
    var_0 = firstLeadingBit(_wgslsmith_div_i32(1i, u_input.b));
    let var_1 = true;
    let var_2 = select(vec3<i32>(i32(-1i) * -54522i, u_input.c.x, abs(-8781i >> (u_input.a.x % 32u))), ~vec3<i32>(1i, -u_input.d.x, 0i), arg_2.d.wzy) & reverseBits(-countOneBits(vec3<i32>(-2147483647i, -9851i, u_input.b)));
    let var_3 = Struct_2(abs(u_input.a.x), func_1().b, ~(~abs(abs(vec3<u32>(arg_2.a, 4294967295u, 1u)))), func_1().d);
    return 13725i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(~(-u_input.d), vec4<i32>(0i, u_input.b, func_4(Struct_1(true, _wgslsmith_mod_u32(0u, u_input.a.x)), true, func_1()), ~1i));
    let var_1 = Struct_1(false, 24923u);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-319f - 1240f) + 537f) - -1119f)), 1f, 3300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(723f * -1457f), _wgslsmith_f_op_f32(f32(-1f) * -1105f)))));
    var_0 = countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(-24093i ^ var_0.x, func_4(var_1, var_1.a, Struct_2(4294967295u, var_1, u_input.a, vec4<bool>(true, var_1.a, false, var_1.a))), _wgslsmith_dot_vec3_i32(u_input.d.xzz, var_0.yyw), countOneBits(var_0.x)), vec4<i32>(countOneBits(2147483647i), ~1i, 46306i, ~(~u_input.c.x))));
    var_0 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, 428f))), 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wxy, u_input.a.yz, u_input.d.x);
}

