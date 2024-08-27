struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: i32 = 37420i;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(-2267f, 391f, -457f), vec4<i32>(77574i, i32(-2147483648), 24151i, 2147483647i), vec3<i32>(i32(-2147483648), -12895i, -11207i), false), Struct_1(vec3<f32>(-1007f, -989f, 447f), vec4<i32>(22917i, -1i, i32(-2147483648), -55250i), vec3<i32>(i32(-2147483648), -1i, 1i), false), Struct_1(vec3<f32>(304f, 674f, -382f), vec4<i32>(-1i, 0i, -78450i, -11305i), vec3<i32>(-16401i, 2147483647i, -19561i), false), Struct_1(vec3<f32>(133f, -117f, -343f), vec4<i32>(-1i, 0i, 2147483647i, 1i), vec3<i32>(-37698i, 21820i, 1i), false), Struct_1(vec3<f32>(543f, 645f, -322f), vec4<i32>(1i, -30731i, 1i, 1i), vec3<i32>(-22465i, 17801i, 0i), true), Struct_1(vec3<f32>(-1000f, 764f, 1738f), vec4<i32>(2147483647i, 19714i, -1i, -19367i), vec3<i32>(20485i, 2147483647i, 0i), true), Struct_1(vec3<f32>(520f, 915f, -441f), vec4<i32>(11694i, 1i, -1i, -1i), vec3<i32>(-33812i, -53608i, -47918i), true), Struct_1(vec3<f32>(101f, -378f, 1000f), vec4<i32>(-25465i, 21007i, 29629i, -17426i), vec3<i32>(1i, -15733i, i32(-2147483648)), true), Struct_1(vec3<f32>(1075f, -431f, 395f), vec4<i32>(0i, 14698i, i32(-2147483648), 2147483647i), vec3<i32>(0i, i32(-2147483648), 1i), true), Struct_1(vec3<f32>(882f, 198f, 1292f), vec4<i32>(2147483647i, 273i, -9224i, 18805i), vec3<i32>(2147483647i, 1i, -21300i), true), Struct_1(vec3<f32>(-745f, -1978f, -1886f), vec4<i32>(15768i, 17983i, 2147483647i, -1i), vec3<i32>(-5553i, -6167i, -1i), false), Struct_1(vec3<f32>(1291f, -508f, 861f), vec4<i32>(0i, 34098i, -1i, i32(-2147483648)), vec3<i32>(-2872i, 6314i, 35857i), false), Struct_1(vec3<f32>(641f, 1141f, -325f), vec4<i32>(2147483647i, -12823i, 59514i, -1i), vec3<i32>(-21578i, -1i, 1i), true), Struct_1(vec3<f32>(-387f, -159f, -984f), vec4<i32>(-28335i, -21948i, -471i, 2147483647i), vec3<i32>(-26762i, 0i, i32(-2147483648)), true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    return ~(_wgslsmith_sub_u32(73289u, ~57396u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 23566u), vec4<u32>(u_input.a, 0u, 0u, 34739u)) % 32u)) | ~(~(~u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = vec2<bool>(!any(!arg_1), any(vec2<bool>(true, true)));
    var_0 = !vec2<bool>(!all(vec4<bool>(arg_0.d, var_0.x, false, arg_0.d)), !all(select(vec3<bool>(arg_0.d, true, arg_1.x), vec3<bool>(true, false, var_0.x), false)));
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    var var_1 = 860f;
    return max(select(_wgslsmith_div_i32(~(-26708i), _wgslsmith_dot_vec4_i32(vec4<i32>(23623i, arg_0.c.x, 2147483647i, 1i), -vec4<i32>(1i, -48716i, arg_0.c.x, arg_0.b.x))), ~_wgslsmith_div_i32(min(u_input.b, 0i), -18278i), all(arg_1)), -1i >> (~_wgslsmith_add_u32(~u_input.a, select(u_input.a, 10460u, var_0.x)) % 32u));
}

fn func_2() -> vec3<f32> {
    global1 = func_4(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 108351u), vec2<u32>(u_input.a, 13118u), vec2<u32>(u_input.a, 45986u)), vec2<u32>(u_input.a, u_input.a)), func_3()), 20u)], vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-4930i, u_input.b)), -1i, u_input.c.x, select(13961i, 0i, true)) << (countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), -(vec3<i32>(u_input.b, 0i, u_input.b) << (~vec3<u32>(u_input.a, 4294967295u, 14095u) % vec3<u32>(32u))), _wgslsmith_mod_u32(25686u, u_input.a) == ~_wgslsmith_add_u32(u_input.a, 1u)), vec2<bool>(true, true));
    var var_0 = countOneBits(~(-vec4<i32>(-7642i, u_input.b, -1i, ~u_input.c.x)));
    global0 = array<vec3<f32>, 20>();
    let var_1 = -var_0.x;
    var_0 = vec4<i32>(~func_4(global2[_wgslsmith_index_u32(u_input.a, 14u)], select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), -6362i, -2147483647i ^ ~max(firstTrailingBit(-1757i), var_0.x), 12086i);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) - _wgslsmith_f_op_f32(-1162f + -1094f))), -198f, _wgslsmith_f_op_f32(-602f * 1f)));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(0u, ~u_input.a << (~9727u % 32u)), u_input.a, u_input.a, 82579u);
    let var_1 = vec3<bool>(!(false || (~u_input.a == 1u)), all(!(!vec2<bool>(arg_0, false))) || true, arg_1.d);
    var var_2 = select(vec4<bool>(true, all(vec4<bool>(true, var_1.x, any(vec4<bool>(true, var_1.x, false, true)), true)), !any(var_1) || true, all(var_1)), vec4<bool>(true, true, _wgslsmith_add_i32(i32(-1i) * -6910i, 1i) < ~arg_1.b.x, any(!vec4<bool>(false, var_1.x, arg_0, true))), !vec4<bool>(true, arg_1.d || true, true, true));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)) - arg_1.a.x)));
    var var_4 = select(!(!var_2.x), false, any(!select(!vec2<bool>(var_1.x, true), var_2.yz, any(vec4<bool>(arg_1.d, var_2.x, var_1.x, arg_1.d)))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_5(arg_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(func_2()), -(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, 0i, 28388i, -1i), arg_0.b) | vec4<i32>(u_input.b, arg_0.b.x, 50085i, 17918i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 30759i, ~arg_0.b.x), ~(~u_input.c)), true));
    global0 = array<vec3<f32>, 20>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.yx)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f), arg_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(757f))))))));
    var var_2 = Struct_2(vec2<u32>(arg_3.x, 12995u), firstLeadingBit(func_5(true, func_5(arg_2.x, Struct_1(vec3<f32>(var_0.a.x, 1363f, 572f), vec4<i32>(u_input.b, var_0.b.x, u_input.b, arg_0.b.x), var_0.c, arg_2.x))).c.zy), Struct_1(global0[_wgslsmith_index_u32(select(1u, abs(~4294967295u), -630f > _wgslsmith_f_op_f32(-943f + var_0.a.x)), 20u)], ~((arg_0.b & arg_0.b) & min(arg_0.b, vec4<i32>(0i, u_input.b, var_0.b.x, -10733i))), min(firstLeadingBit(firstTrailingBit(u_input.c)), arg_0.b.xxx ^ vec3<i32>(arg_0.c.x, -1i, -41117i)), false), global0[_wgslsmith_index_u32(u_input.a, 20u)]);
    global2 = array<Struct_1, 14>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.d.x)), arg_0.a.x, -158f) * vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)))), -vec4<i32>(_wgslsmith_div_i32(1i, arg_0.b.x) | 1i, _wgslsmith_clamp_i32(var_0.b.x, arg_0.c.x, -42787i), ~select(-35921i, 0i, arg_2.x), ~(var_2.c.b.x ^ -58579i)), vec3<i32>(0i, arg_0.b.x, u_input.c.x), arg_0.d);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = 2147483647i;
    global0 = array<vec3<f32>, 20>();
    let var_1 = arg_2.c.b.x ^ arg_2.c.c.x;
    var var_2 = 690f;
    global1 = _wgslsmith_add_i32(-arg_2.b.x | ~(-4117i), -10153i);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    var var_0 = func_6(Struct_2(_wgslsmith_sub_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(0u, u_input.a) & vec2<u32>(0u, u_input.a), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a))), u_input.c.zy, func_1(global2[_wgslsmith_index_u32(~u_input.a ^ ~u_input.a, 14u)], firstTrailingBit(0u) | ~1u, select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a))), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(47870u, 20u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-460f, 1249f, -315f, -240f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-426f, -1478f, 1363f, 460f), vec4<f32>(-2033f, -458f, 1000f, -640f)) - vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(countOneBits(vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 3165u)), u_input.c.xx, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(806f)), _wgslsmith_f_op_f32(select(-445f, 713f, false)), _wgslsmith_f_op_f32(f32(-1f) * -169f)), select(max(vec4<i32>(u_input.c.x, -20343i, 17595i, 0i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, -11104i)), vec4<i32>(1i, u_input.c.x, 36702i, u_input.b), vec4<bool>(false, true, false, true)), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.c.zy), firstLeadingBit(u_input.c.x)), any(vec4<bool>(true, false, true, false))), global0[_wgslsmith_index_u32(abs((4294967295u >> (u_input.a % 32u)) ^ _wgslsmith_sub_u32(u_input.a, u_input.a)), 20u)]), ~countOneBits(0u));
    let var_1 = ~((reverseBits(u_input.a & 25109u) & u_input.a) | func_3());
    global2 = array<Struct_1, 14>();
    var var_2 = ~abs(u_input.a ^ 0u) & ~(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(48164u, var_1, 14715u, var_1)), countOneBits(vec4<u32>(u_input.a, 40981u, var_1, 8839u))) << (var_1 % 32u));
    let var_3 = -min(u_input.c.xx, firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), vec2<i32>(u_input.b, -2147483647i)))));
    let var_4 = -(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, -968f, -644f))), firstLeadingBit(var_0.b), u_input.c & vec3<i32>(-1i, 0i, 13755i), func_1(Struct_1(vec3<f32>(var_0.a.x, 106f, var_0.a.x), vec4<i32>(var_0.c.x, 2147483647i, u_input.b, -27145i), vec3<i32>(-23069i, var_3.x, 20739i), false), 4294967295u, vec2<bool>(var_0.d, var_0.d), vec2<u32>(u_input.a, 17265u)).d), _wgslsmith_clamp_u32(min(14200u, 4294967295u), var_1, firstTrailingBit(var_1)), select(vec2<bool>(true, var_0.d), vec2<bool>(false, var_0.d), true), max(vec2<u32>(4294967295u, var_1) >> (vec2<u32>(u_input.a, 79045u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(var_1, 0u)))).b.yy | -(-u_input.c.xz >> (vec2<u32>(u_input.a, var_1) % vec2<u32>(32u))));
    var var_5 = vec2<bool>(all(select(vec2<bool>(false, var_0.d), select(vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(true, var_0.d), vec2<bool>(false, true), vec2<bool>(var_0.d, true)), all(vec3<bool>(var_0.d, false, true))), !select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, 205f, var_0.a.x, 1570f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(195f, 2018f, 267f, var_0.a.x))), vec4<bool>(var_5.x, false, false, var_0.d))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-233f, var_0.a.x, var_0.a.x, 1602f), vec4<f32>(-1832f, 517f, -400f, var_0.a.x))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, var_0.a.x, 1000f, 460f))), vec4<f32>(1850f, var_0.a.x, 680f, 140f))))));
}

