struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(5951i, i32(-2147483648));

var<private> global1: array<i32, 7>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(153f, 2630u, Struct_1(i32(-2147483648), vec2<bool>(false, false), true, -1i), 27549u), Struct_2(-575f, 0u, Struct_1(-17087i, vec2<bool>(false, true), true, 2147483647i), 63160u), Struct_2(-977f, 4294967295u, Struct_1(10709i, vec2<bool>(false, true), true, -37336i), 57853u), Struct_2(-395f, 1u, Struct_1(-10656i, vec2<bool>(false, false), false, 55260i), 11654u), Struct_2(-290f, 61474u, Struct_1(5564i, vec2<bool>(false, false), true, 14297i), 1u), Struct_2(663f, 0u, Struct_1(2147483647i, vec2<bool>(false, false), false, 2147483647i), 1u), Struct_2(-1000f, 0u, Struct_1(0i, vec2<bool>(false, true), true, -20392i), 4294967295u), Struct_2(-358f, 4294967295u, Struct_1(-1i, vec2<bool>(true, false), true, 36350i), 53572u), Struct_2(633f, 1u, Struct_1(-14972i, vec2<bool>(true, true), false, 11921i), 89710u), Struct_2(944f, 17023u, Struct_1(-23914i, vec2<bool>(true, false), true, 25837i), 2681u), Struct_2(-1351f, 4294967295u, Struct_1(0i, vec2<bool>(true, false), true, 0i), 1u), Struct_2(893f, 0u, Struct_1(-77245i, vec2<bool>(false, false), false, 0i), 1u), Struct_2(1000f, 4294967295u, Struct_1(-1i, vec2<bool>(true, true), true, -1i), 4294967295u), Struct_2(-1317f, 1u, Struct_1(-1i, vec2<bool>(false, true), true, -41874i), 63493u), Struct_2(844f, 13168u, Struct_1(-3993i, vec2<bool>(false, true), false, 65730i), 4294967295u), Struct_2(-374f, 35516u, Struct_1(2147483647i, vec2<bool>(false, true), false, -1i), 7732u), Struct_2(-287f, 1u, Struct_1(9957i, vec2<bool>(true, true), true, 1i), 19872u), Struct_2(-244f, 0u, Struct_1(-26349i, vec2<bool>(true, true), true, 0i), 4294967295u), Struct_2(-149f, 0u, Struct_1(36692i, vec2<bool>(true, true), false, 1i), 18025u), Struct_2(936f, 30013u, Struct_1(2147483647i, vec2<bool>(true, true), true, 0i), 48270u), Struct_2(-713f, 34929u, Struct_1(36035i, vec2<bool>(true, false), false, -31215i), 4294967295u), Struct_2(-764f, 0u, Struct_1(i32(-2147483648), vec2<bool>(true, false), false, 1i), 29745u), Struct_2(-1518f, 4294967295u, Struct_1(-1i, vec2<bool>(true, false), false, 26324i), 22542u), Struct_2(-372f, 0u, Struct_1(1i, vec2<bool>(true, true), false, -1i), 1591u), Struct_2(-432f, 1u, Struct_1(-1i, vec2<bool>(false, true), true, 5924i), 1972u), Struct_2(365f, 79556u, Struct_1(-1i, vec2<bool>(true, true), true, 2147483647i), 42343u));

var<private> global3: array<Struct_2, 15>;

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-32012i, vec2<bool>(true, false), false, 0i), Struct_1(18395i, vec2<bool>(false, true), true, -3042i), Struct_1(-4053i, vec2<bool>(true, true), true, i32(-2147483648)), Struct_1(1128i, vec2<bool>(true, false), false, 0i), Struct_1(i32(-2147483648), vec2<bool>(true, true), false, -9750i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = global4[_wgslsmith_index_u32(~76578u, 5u)];
    return vec2<i32>(var_0.a, max(_wgslsmith_add_i32(global0.x, 2147483647i), abs(_wgslsmith_div_i32(-8554i, u_input.a.x))));
}

fn func_3() -> f32 {
    global2 = array<Struct_2, 26>();
    let var_0 = max(_wgslsmith_clamp_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(68673i, global0.x, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -17439i, -23652i), vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(3927i, u_input.a.x, global0.x, 19826i), vec4<i32>(6547i, global1[_wgslsmith_index_u32(31488u, 7u)], global0.x, global1[_wgslsmith_index_u32(17122u, 7u)])), 2147483647i), select(_wgslsmith_div_vec3_i32(vec3<i32>(55652i, u_input.a.x, 16267i), vec3<i32>(37037i, -2147483647i, 1i)), -vec3<i32>(global1[_wgslsmith_index_u32(4641u, 7u)], -1i, global0.x), false))), ~firstTrailingBit(abs(vec3<i32>(1i, 1i, 1i))));
    let var_1 = Struct_1(-33237i, vec2<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), true), false, ~1i);
    global3 = array<Struct_2, 15>();
    var var_2 = ~(-(~var_1.a));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-577f))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global4 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * arg_2.a))), arg_2.a, _wgslsmith_f_op_f32(sign(665f)), _wgslsmith_f_op_f32(func_3())));
    let var_1 = arg_1.d;
    global2 = array<Struct_2, 26>();
    let var_2 = arg_1;
    return u_input.a.x;
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(~(1u >> ((reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(71000u, 51941u), vec2<u32>(46948u, 0u))) & ~5988u) % 32u)), 5u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1160f, -1415f)) + 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(775f - 703f), -550f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, 1585f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1393f, 397f), _wgslsmith_f_op_f32(select(1000f, -1000f, false))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2403f, 832f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1274f, -188f))))))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x * -532f)), var_1.x, !all(!vec4<bool>(true, var_0.b.x, var_0.b.x, true)))), max(max(1u, 1u), countOneBits(~(~1u))), global4[_wgslsmith_index_u32(min(0u, ~0u), 5u)], 62460u);
    var var_3 = -441f;
    global4 = array<Struct_1, 5>();
    return false;
}

fn func_5(arg_0: i32, arg_1: bool) -> StorageBuffer {
    global3 = array<Struct_2, 15>();
    var var_0 = vec2<i32>(abs(0i), -u_input.a.x) | firstLeadingBit(min(u_input.a, -vec2<i32>(-2147483647i, -1i)));
    var var_1 = ~(_wgslsmith_add_u32(abs(1u), _wgslsmith_mult_u32(select(0u, 1u, arg_1), 32488u)) << (reverseBits(_wgslsmith_div_u32(7137u, ~44395u)) % 32u));
    var_0 = vec2<i32>(~(reverseBits(-48188i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(48574u, 28456u, 40348u, 1u), vec4<u32>(4294967295u, 1u, 68230u, 1u)) % 32u)), _wgslsmith_add_i32(-reverseBits(global0.x), ~0i)) & vec2<i32>(_wgslsmith_div_i32(abs(-arg_0), 1i), u_input.a.x);
    global1 = array<i32, 7>();
    return StorageBuffer(global0.x, 1u, vec4<u32>(0u, _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(4294967295u), 3170u), ~firstTrailingBit(1u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a, u_input.a) & vec2<i32>(0i, global0.x), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - -356f)))), !func_4(func_2(all(vec3<bool>(true, true, true)), Struct_1(u_input.a.x, vec2<bool>(true, false), true, -35846i), Struct_2(-292f, 77907u, Struct_1(global0.x, vec2<bool>(true, false), true, global0.x), 1u))));
}

