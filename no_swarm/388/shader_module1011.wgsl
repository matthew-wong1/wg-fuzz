struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> bool {
    let var_0 = Struct_2(Struct_1(~1u, vec4<f32>(-820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f + 1000f)), -1000f, -240f), vec2<i32>(_wgslsmith_add_i32(-38308i, arg_0.x) | select(arg_1, arg_0.x, false), (arg_1 >> (71776u % 32u)) ^ 60912i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) * -2181f) - _wgslsmith_f_op_f32(ceil(-156f))), select(vec2<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true))), vec2<bool>(-46073i >= arg_0.x, true), false)), Struct_1(~0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, -1000f, _wgslsmith_div_f32(-2691f, -1279f), _wgslsmith_f_op_f32(floor(-1499f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1494f, 549f, -1454f, -250f)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(207f))))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))));
    var var_1 = 17761u;
    var_1 = var_0.a.a ^ ~(~var_0.a.a);
    let var_2 = firstTrailingBit(31575u);
    var var_3 = var_0;
    return firstLeadingBit((arg_0.x | arg_1) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, 1u), vec2<u32>(var_2, var_3.a.a)) % 32u)) <= -firstTrailingBit(min(_wgslsmith_dot_vec2_i32(vec2<i32>(8641i, arg_1), vec2<i32>(var_0.b.c.x, var_3.a.c.x)), arg_0.x));
}

fn func_2() -> vec2<u32> {
    let var_0 = !(!func_3(vec2<i32>(i32(-1i) * -2147483647i, 4420i), abs(1i)));
    var var_1 = vec4<bool>(true, true, true, var_0);
    var var_2 = u_input.a;
    let var_3 = false;
    var_2 = 1i;
    return vec2<u32>(select(~(~85182u), ~abs(12366u), !var_1.x || !var_3), 48528u) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(24870u, 0u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 13719u), vec2<bool>(var_0, var_1.x))), firstLeadingBit(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 45691u), var_1.zx)), max(select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 76307u), var_0), vec2<u32>(21531u, 1u))), vec2<u32>(abs(1u), ~4294967295u)) % vec2<u32>(32u));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    var var_0 = firstTrailingBit(vec2<u32>(3573u, ~(~min(7303u, 90538u))));
    var_0 = ~(~firstLeadingBit(vec2<u32>(28816u, 1u)) >> (vec2<u32>(~32172u, _wgslsmith_mult_u32(var_0.x, 61319u)) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(abs(_wgslsmith_mult_vec2_u32(func_2(), max(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x)))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(0u, var_0.x)) << (vec2<u32>(_wgslsmith_add_u32(37660u, var_0.x), var_0.x << (var_0.x % 32u)) % vec2<u32>(32u)));
    var_0 = vec2<u32>(min(~_wgslsmith_add_u32(var_0.x, var_0.x), firstLeadingBit(4294967295u)), _wgslsmith_add_u32(var_0.x, ~var_0.x));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(~var_0.x << (_wgslsmith_div_u32(16495u, 1u) % 32u)), var_0.x), ~abs(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 4235u), vec2<u32>(4294967295u, var_0.x), vec2<u32>(40359u, var_0.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(var_0.x, ~var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, 910f, -1190f, 1000f)))), u_input.b.yx, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))), vec2<bool>(true, countOneBits(arg_0) >= 53241i)), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 765f, -1000f, 1258f))), vec2<i32>(_wgslsmith_add_i32(-6944i, -2265i), (arg_0 & 23310i) << (4294967295u % 32u)), 1f, select(vec2<bool>(true, true), vec2<bool>(true, false), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)))));
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~select(_wgslsmith_dot_vec3_u32(~vec3<u32>(107935u, 68651u, 0u), ~vec3<u32>(4294967295u, 0u, 43974u)), 0u, 4895i <= (u_input.a << (114989u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-477f, 1557f, 1770f, 500f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(2081f, 779f, 2216f, -581f) - vec4<f32>(1028f, 180f, -420f, 1354f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(392f, -524f, 318f, 1000f) * vec4<f32>(776f, 546f, -271f, -316f)), _wgslsmith_f_op_vec4_f32(func_1(u_input.b.x))))), countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.b.wx), max(vec2<i32>(30141i, 29946i), u_input.b.yx), u_input.b.wy), -vec2<i32>(u_input.a, u_input.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-997f, 695f))))), 180f, any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)))), vec2<bool>(true, any(vec3<bool>(any(vec2<bool>(true, true)), true, true))));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2189f, 1287f, var_0.b.x, var_0.b.x), var_0.b))), _wgslsmith_f_op_vec4_f32(round(var_0.b))))), vec2<i32>(abs(~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.a, var_0.c.x, -49036i, 29939i))), _wgslsmith_clamp_i32(~(-8080i), 1i << (~var_0.a % 32u), _wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(u_input.b.x, u_input.a, -2147483647i, 17283i)))), var_0.d, var_0.e);
    let var_1 = !any(vec4<bool>(false, all(vec3<bool>(var_0.e.x, var_0.e.x, true)), false || select(var_0.e.x, true, true), var_0.e.x || any(vec4<bool>(false, var_0.e.x, false, false))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~countOneBits(vec2<u32>(30245u, 3509u))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, abs(85625u)), max(~vec2<u32>(0u, var_0.a), select(vec2<u32>(var_0.a, 3492u), vec2<u32>(94940u, var_0.a), var_1)))), var_0.b, abs(vec2<i32>(~u_input.c.x, -3434i & _wgslsmith_mod_i32(u_input.b.x, u_input.c.x))), var_0.b.x, var_0.e);
    let var_2 = true;
    var_0 = Struct_1(52269u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1178f * var_0.b.x), _wgslsmith_f_op_f32(-219f + var_0.b.x), var_0.d, 676f), _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(227f, var_0.b.x, -325f, var_0.b.x)), var_2)), select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, true, var_0.e.x, false), vec4<bool>(var_0.e.x, false, true, true)), vec4<bool>(var_1, true, true, true), !vec4<bool>(true, var_2, true, var_2)))))), _wgslsmith_clamp_vec2_i32(-(vec2<i32>(u_input.c.x, var_0.c.x) & _wgslsmith_add_vec2_i32(vec2<i32>(25911i, u_input.a), u_input.b.wy)), ~vec2<i32>(min(u_input.a, -1i), var_0.c.x), u_input.c.yz), _wgslsmith_f_op_f32(step(-1170f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(250f - -437f), var_2)))))), !var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-2147483647i, 0i), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(var_0.a, var_0.a))), ~0u, countOneBits(_wgslsmith_add_u32(4294967295u, abs(0u))), reverseBits(4294967295u)), var_0.a, firstTrailingBit(abs(vec3<u32>(var_0.a, ~var_0.a, 1u))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 1u)), reverseBits(~(~vec2<u32>(var_0.a, var_0.a)))));
}

