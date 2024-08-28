struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_4(Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), countOneBits(66078u << (u_input.b % 32u)), firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 53672u, 47787u), 4294967295u)), true, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-830f, -441f)))), _wgslsmith_f_op_f32(round(-310f))))), ~vec3<i32>(1i, 1i, 1i) << (vec3<u32>(max(u_input.b, u_input.a) << (11253u % 32u), ~59177u, ~(~u_input.b)) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -838f, -751f)))), ~u_input.b, Struct_1(vec3<bool>(true, u_input.b >= u_input.c, true), 14774u ^ u_input.c, min(~vec2<u32>(u_input.c, 41019u), vec2<u32>(0u, u_input.a)), !any(vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))), _wgslsmith_dot_vec2_i32(vec2<i32>(15528i, 0i), vec2<i32>(1i, 1i)) != 1i);
    var var_1 = var_0.c.zx >> (select(abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(36209u, var_0.a.b), ~var_0.a.c)), firstTrailingBit(var_0.d.c.c), any(select(vec2<bool>(var_0.e, var_0.a.d), vec2<bool>(var_0.d.c.a.x, true), true)) | var_0.d.c.d) % vec2<u32>(32u));
    var_1 = vec2<i32>(~(-16757i), abs(_wgslsmith_mod_i32(-abs(var_1.x), select(-2147483647i, var_0.c.x, all(var_0.a.e.yz)))));
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(131f, var_0.d.a.x, var_0.d.a.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, 275f, var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, var_0.d.a.x, -330f) + vec3<f32>(680f, -154f, var_0.b)), vec3<bool>(var_0.e, true, var_0.a.d))))), ~1u, Struct_1(select(var_0.a.e.ywz, vec3<bool>(true, true, true), var_0.c.x == 2147483647i), _wgslsmith_mod_u32(~46082u, firstTrailingBit(1u)), var_0.a.c, any(var_0.a.e.wzw), select(select(vec4<bool>(true, var_0.d.c.e.x, true, true), vec4<bool>(var_0.d.c.a.x, true, var_0.a.d, var_0.e), vec4<bool>(var_0.a.a.x, false, var_0.e, true)), !var_0.d.c.e, true))), firstTrailingBit(max(22514i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-37391i, 0i, 638i), var_0.c), _wgslsmith_add_i32(76029i, -1111i)))), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a.x, var_0.b, var_0.d.a.x) - _wgslsmith_f_op_vec3_f32(-var_0.d.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.a) + var_0.d.a), vec3<bool>(!var_0.a.a.x, true, all(var_0.d.c.a.xz))))), vec3<bool>(true, !(_wgslsmith_div_u32(var_0.d.c.b, 38583u) <= ~var_0.d.c.c.x), ~(~var_1.x) != var_1.x));
    var_1 = vec2<i32>(var_1.x, 2147483647i);
    return vec3<i32>(i32(-1i) * -15551i, abs(var_1.x), ~(~(-(~21081i))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(2147483647i, -2147483647i, 9747i)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(11657i, -1i, -2147483647i)), vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(1i, 0i, -2147483647i)))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(63918i, max(26914i, 61575i), -28686i >> (u_input.b % 32u)), func_3()), vec3<i32>(43082i, i32(-1i) * -8704i, -(~(-41318i)))), ~1i);
    let var_1 = select(!vec4<bool>(any(vec3<bool>(true, false, false)), !all(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(_wgslsmith_div_f32(-1000f, 1601f) > _wgslsmith_f_op_f32(step(-152f, -658f)), true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !(33276u != u_input.a), true), select(true, (35190u <= u_input.c) | true, u_input.b >= 1u)), all(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_4(Struct_1(vec3<bool>(false, var_1.x, !all(var_1.zx)), countOneBits(_wgslsmith_sub_u32(~u_input.a, u_input.b)), ~vec2<u32>(~53694u, _wgslsmith_sub_u32(u_input.b, u_input.b)), var_1.x, var_1), -1000f, ~reverseBits(_wgslsmith_add_vec3_i32(var_0, vec3<i32>(-1i, 27438i, var_0.x)) << (max(vec3<u32>(20687u, 86335u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.c)) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, 1246f, -871f) * vec3<f32>(776f, 340f, 524f))))), ~abs(_wgslsmith_add_u32(u_input.b, 4294967295u)), Struct_1(vec3<bool>(false, !var_1.x, any(var_1.zz)), 0u, max(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(26802u, 85740u), vec2<u32>(4294967295u, u_input.b))), -var_0.x != _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, var_0.x, 16095i)), !select(var_1, var_1, vec4<bool>(false, false, true, var_1.x)))), any(!vec4<bool>(true, any(vec3<bool>(var_1.x, var_1.x, true)), any(vec3<bool>(var_1.x, false, var_1.x)), all(var_1))));
    let var_3 = !var_2.d.c.d;
    var var_4 = _wgslsmith_f_op_f32(-1009f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + var_2.d.a.x)), 1567f)));
    return Struct_1(vec3<bool>(true, var_2.c.x < -var_0.x, true), ~(~1u), ~vec2<u32>(var_2.d.c.b, ~_wgslsmith_sub_u32(7437u, 6239u)), !(all(select(var_2.d.c.e.yz, vec2<bool>(var_3, true), true)) || false), var_1);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_5 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(664f + -1531f), arg_0.a.x, _wgslsmith_f_op_f32(1613f - -957f)), 0u, func_2());
    var var_1 = var_0.c;
    var_1 = Struct_1(func_2().a, 70247u, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(abs(var_0.b), ~u_input.a), var_0.b), ~select(_wgslsmith_add_vec2_u32(var_1.c, var_0.c.c), vec2<u32>(var_1.b, arg_0.c.c.x), true)), !select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 46450u), arg_0.c.c) == ~59744u, !(!var_0.c.e.x), true), var_1.e);
    var_1 = func_2();
    var var_2 = reverseBits((_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 1u, arg_0.b), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, u_input.c, 22087u), vec3<u32>(4294967295u, 4294967295u, u_input.a))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, 64861u, var_1.c.x), ~vec3<u32>(81856u, u_input.c, arg_0.c.c.x))) >> (max(~(vec3<u32>(var_0.c.b, 4294967295u, 1u) << (vec3<u32>(29423u, 29634u, var_1.b) % vec3<u32>(32u))), select(~vec3<u32>(var_1.b, var_0.b, 4294967295u), ~vec3<u32>(30588u, 22326u, 1u), true)) % vec3<u32>(32u)));
    return Struct_5(arg_0, -_wgslsmith_sub_i32(87180i, 2147483647i), Struct_4(Struct_1(!vec3<bool>(var_0.c.a.x, false, true), 1u >> (firstLeadingBit(var_0.c.c.x) % 32u), ~(~var_2.xy), any(var_0.c.e), var_1.e), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + 660f), var_0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1416f, var_0.a.x)))), _wgslsmith_add_vec3_i32(~(vec3<i32>(arg_1.x, arg_1.x, arg_1.x) | vec3<i32>(arg_1.x, -17975i, arg_1.x)), ~vec3<i32>(-7820i, arg_1.x, arg_1.x)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - arg_0.a.x), -290f, -242f), 1u, arg_0.c), false), var_0.a, !select(var_1.a, var_0.c.e.wwy, var_0.c.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.d), _wgslsmith_f_op_vec3_f32(min(arg_1.c.d.a, arg_1.c.d.a)), arg_1.a.a.x <= arg_1.d.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(arg_1.d.x * 347f), arg_1.c.d.a.x), func_2().e.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_1.a.c.c.x, 4294967295u), firstLeadingBit(vec3<u32>(103099u, arg_1.c.d.c.b, arg_1.c.d.c.b) & vec3<u32>(1u, u_input.b, 1u))), arg_1.a.c), arg_1.c.a, vec4<bool>(!any(arg_1.c.d.c.e), !(arg_1.d.x <= 357f) && func_2().a.x, arg_1.e.x, false), max(max(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 0u)), ~vec3<u32>(4294967295u, 19923u, u_input.b)), ~max(vec3<u32>(arg_1.a.c.b, arg_1.a.c.b, u_input.b), vec3<u32>(arg_1.c.d.b, u_input.a, 40886u))), ~vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.a), u_input.c >> (12464u % 32u), ~0u)), 1u);
    var var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-515f, var_0.a.a.x, _wgslsmith_f_op_f32(trunc(arg_1.c.d.a.x))) * vec3<f32>(var_0.a.a.x, 1335f, 1486f)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(18604u, var_0.b.c.x, u_input.c, 25588u), vec4<u32>(var_0.e, 10476u, var_0.a.b, 4294967295u))), func_1(func_1(func_1(Struct_2(vec3<f32>(-833f, arg_1.c.b, arg_1.d.x), var_0.a.b, Struct_1(vec3<bool>(true, arg_1.c.e, arg_1.e.x), 4294967295u, var_0.a.c.c, false, var_0.a.c.e)), arg_1.c.c.zx, arg_1.c.d.c.e, arg_1.c.e).c.d, vec2<i32>(arg_0.x, 1i), vec4<bool>(true, var_0.a.c.a.x, true, arg_1.e.x), arg_1.c.e).a, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b, 0i) << (vec2<u32>(arg_1.a.b, 49740u) % vec2<u32>(32u)), arg_0.zz), arg_1.a.c.e, false).c.d.c), -463i >> (arg_1.a.b % 32u), Struct_4(Struct_1(vec3<bool>(true, true, true), 4294967295u, vec2<u32>(_wgslsmith_add_u32(arg_1.c.a.c.x, arg_1.a.c.b), abs(var_0.a.b)), false, var_0.a.c.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.a.x)))) - -1000f), arg_0, arg_1.c.d, arg_1.a.c.a.x), _wgslsmith_f_op_vec3_f32(-func_1(arg_1.c.d, arg_1.c.c.yz, vec4<bool>(!arg_1.e.x, arg_1.a.c.d, select(arg_1.c.e, false, arg_1.c.e), true), false & (var_0.c.x | arg_1.a.c.d)).a.a), !arg_1.a.c.a);
    let var_2 = u_input.b;
    var var_3 = func_1(var_1.c.d, vec2<i32>(var_1.c.c.x, 1i), select(var_1.a.c.e, var_1.a.c.e, vec4<bool>(true, false, true, var_1.b > _wgslsmith_sub_i32(-61715i, arg_0.x))), all(vec3<bool>(arg_1.c.d.c.a.x, true, true))).c.d;
    var var_4 = func_1(var_1.c.d, min(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(arg_0.yz, arg_1.c.c.yy), abs(-vec2<i32>(var_1.c.c.x, arg_0.x)), vec2<i32>(arg_1.b, 3285i)), func_3().yy), vec4<bool>(arg_1.e.x || func_2().d, func_2().e.x, var_1.c.a.b < var_0.a.c.b, _wgslsmith_div_f32(-237f, 1296f) > _wgslsmith_f_op_f32(-986f + _wgslsmith_f_op_f32(abs(arg_1.d.x)))), var_1.c.a.a.x).c;
    return Struct_1(func_1(Struct_2(var_4.d.a, _wgslsmith_mult_u32(10511u, _wgslsmith_mult_u32(28006u, var_2)), Struct_1(!vec3<bool>(true, true, var_0.b.d), ~var_3.b, var_0.b.c, !var_4.e, func_1(arg_1.c.d, arg_1.c.c.xy, arg_1.c.a.e, var_1.e.x).a.c.e)), abs(-var_1.c.c.xx) | -var_1.c.c.zx, select(!vec4<bool>(var_0.b.e.x, arg_1.a.c.e.x, true, true), vec4<bool>(all(var_4.d.c.e), !var_3.c.d, false, !var_4.d.c.a.x), true && any(vec3<bool>(false, true, var_1.e.x))), all(var_0.b.e)).e, ~firstTrailingBit(reverseBits(1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_3.c.c, var_3.c.c) >> (_wgslsmith_mod_vec2_u32(arg_1.c.d.c.c, vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.b, 24936u) | var_1.a.c.c, ~var_3.c.c)) >> (_wgslsmith_mult_vec2_u32(var_3.c.c, vec2<u32>(var_3.c.c.x >> (u_input.a % 32u), 37930u)) % vec2<u32>(32u)), !any(select(!var_3.c.a.xx, vec2<bool>(var_3.c.a.x, var_0.a.c.e.x), select(arg_1.e.zz, arg_1.e.zz, vec2<bool>(var_0.a.c.d, false)))), select(!(!(!arg_1.c.d.c.e)), func_2().e, !(!var_4.d.c.e)));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_mult_i32(0i, arg_0.x << (max(abs(~1u), arg_2.c.x) % 32u));
    let var_1 = false;
    var var_2 = 533f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2155f) + _wgslsmith_div_f32(1348f, 517f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(159f, -1388f, var_1)) + -463f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1156f, 2111f)), _wgslsmith_div_f32(-679f, 1648f))))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) - _wgslsmith_f_op_f32(abs(438f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -859f)))) - _wgslsmith_f_op_f32(-func_1(Struct_2(vec3<f32>(-181f, -815f, -180f), 1u, arg_2), -arg_0, func_2().e, arg_2.a.x || true).a.a.x)) + -1154f);
    return func_1(func_1(func_1(func_1(func_1(Struct_2(vec3<f32>(325f, -737f, 1119f), 84053u, Struct_1(vec3<bool>(true, false, arg_1), arg_2.c.x, vec2<u32>(arg_2.b, arg_2.c.x), arg_1, arg_2.e)), arg_0, vec4<bool>(true, arg_2.e.x, arg_2.e.x, true), arg_2.d).a, firstLeadingBit(vec2<i32>(arg_0.x, -49466i)), vec4<bool>(arg_2.e.x, var_1, true, var_1), !var_1).c.d, ~arg_0 ^ abs(arg_0), arg_2.e, true).c.d, vec2<i32>(-1i) * -vec2<i32>(-31420i, arg_0.x), arg_2.e, var_1).c.d, vec2<i32>(firstLeadingBit(var_0), ~51359i), arg_2.e, !arg_2.a.x).c;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    var var_0 = !vec2<bool>(-1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.x * arg_2.a.a.x)), !arg_1.a.x);
    var var_1 = u_input.a;
    var var_2 = Struct_4(Struct_1(!func_1(func_1(arg_2.c.d, arg_0.c.zx, vec4<bool>(var_0.x, false, var_0.x, false), arg_0.e).a, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, arg_2.b), vec2<i32>(arg_2.c.c.x, arg_2.b)), func_1(arg_0.d, arg_0.c.zx, arg_1.e, true).a.c.e, false).a.c.a, _wgslsmith_mult_u32(~func_2().c.x, (1u | u_input.a) & arg_0.a.b), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b << (u_input.c % 32u), ~arg_1.c.x), arg_1.c), arg_1.e.x, arg_0.d.c.e), arg_0.b, arg_0.c, func_5(_wgslsmith_add_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, arg_2.b), arg_2.c.c.yx), arg_2.c.c.yx, arg_1.a.x), func_1(arg_0.d, abs(arg_2.c.c.xx), !arg_1.e, any(vec4<bool>(arg_1.d, var_0.x, true, arg_0.a.a.x))).c.c.zz), select(false, any(arg_0.d.c.e.wwy), true) != !all(vec2<bool>(arg_1.a.x, var_0.x)), arg_1).d, func_4(arg_0.c, Struct_5(arg_0.d, -27927i, func_1(Struct_2(arg_2.a.a, arg_1.b, Struct_1(arg_0.d.c.a, arg_0.a.c.x, arg_1.c, true, vec4<bool>(var_0.x, false, var_0.x, true))), vec2<i32>(2147483647i, 2147483647i), vec4<bool>(arg_1.e.x, false, false, true), false).c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(362f, arg_2.d.x, arg_3), vec3<f32>(190f, arg_2.c.b, -1122f)))), arg_1.a), reverseBits(_wgslsmith_mult_i32(arg_2.c.c.x, ~arg_0.c.x))).d);
    var_1 = _wgslsmith_sub_u32(func_1(Struct_2(arg_2.d, arg_1.c.x << (4294967295u % 32u), func_1(arg_2.c.d, arg_0.c.xy, vec4<bool>(arg_0.a.a.x, true, true, arg_1.e.x), func_4(var_2.c, Struct_5(arg_0.d, arg_0.c.x, Struct_4(arg_0.a, var_2.d.a.x, arg_0.c, arg_2.a, true), arg_2.c.d.a, vec3<bool>(true, arg_2.a.c.e.x, arg_0.e)), 0i).e.x).c.a), arg_2.c.c.xy, var_2.d.c.e, arg_0.e && func_2().e.x).a.c.b, arg_1.b);
    var var_3 = var_2.c;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_5(-vec2<i32>(1i, 1i), !all(vec4<bool>(true, true, false, true)), func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-15960i, -2147483647i, -25948i), vec3<i32>(1i, -2147483647i, -26626i)), func_1(Struct_2(vec3<f32>(1488f, 1265f, 207f), u_input.a, Struct_1(vec3<bool>(false, false, false), 0u, vec2<u32>(0u, u_input.a), true, vec4<bool>(false, false, false, false))), vec2<i32>(19329i, -2147483647i), vec4<bool>(false, true, false, true), false), func_3().x)), func_1(func_5(_wgslsmith_mod_vec2_i32(vec2<i32>(-27724i, 1i), vec2<i32>(3232i, 10538i)), true, func_1(Struct_2(vec3<f32>(-2559f, 556f, -1134f), u_input.b, Struct_1(vec3<bool>(true, true, true), 25336u, vec2<u32>(73996u, u_input.c), true, vec4<bool>(false, false, false, false))), vec2<i32>(1i, -10614i), vec4<bool>(false, false, true, false), false).a.c).d, -_wgslsmith_add_vec2_i32(vec2<i32>(-13134i, 39551i), vec2<i32>(-18334i, -8349i)), vec4<bool>(any(vec4<bool>(true, true, true, true)), func_2().e.x, true, any(vec4<bool>(true, false, true, true))), any(vec4<bool>(true, true, true, true))).a.c, func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1136f, -591f, -666f) * vec3<f32>(1373f, -264f, -140f)), u_input.b, Struct_1(vec3<bool>(false, false, true), 20455u, vec2<u32>(u_input.a, u_input.b), false, vec4<bool>(true, false, false, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-297i, -64016i), _wgslsmith_div_vec2_i32(vec2<i32>(23223i, -19177i), vec2<i32>(7255i, 9562i)), vec2<i32>(-1i, -1i)), func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(36800i, 1i), vec2<i32>(-30774i, -43040i)), 4294967295u < u_input.b, func_4(vec3<i32>(2147483647i, -18123i, -2147483647i), Struct_5(Struct_2(vec3<f32>(-1830f, 1000f, 1697f), 25515u, Struct_1(vec3<bool>(false, false, false), u_input.b, vec2<u32>(18053u, u_input.b), false, vec4<bool>(false, true, true, false))), 0i, Struct_4(Struct_1(vec3<bool>(false, false, true), u_input.b, vec2<u32>(0u, u_input.b), true, vec4<bool>(false, false, true, true)), 1246f, vec3<i32>(-65068i, 7727i, 2147483647i), Struct_2(vec3<f32>(1486f, 244f, -299f), u_input.a, Struct_1(vec3<bool>(false, true, true), u_input.b, vec2<u32>(56034u, u_input.a), true, vec4<bool>(true, false, true, false))), false), vec3<f32>(-990f, -1216f, -1246f), vec3<bool>(true, true, true)), 1i)).a.e, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-func_5(abs(vec2<i32>(-1i, -4756i)), true, Struct_1(vec3<bool>(true, true, false), 13039u, vec2<u32>(43315u, 1u), true, vec4<bool>(true, true, false, true))).b)), Struct_1(vec3<bool>(true, any(func_4(vec3<i32>(-10266i, -1i, 29092i), Struct_5(Struct_2(vec3<f32>(272f, -1624f, 558f), 88753u, Struct_1(vec3<bool>(false, false, false), u_input.b, vec2<u32>(u_input.a, 0u), true, vec4<bool>(false, false, false, false))), -2147483647i, Struct_4(Struct_1(vec3<bool>(true, true, true), 1u, vec2<u32>(u_input.a, 62068u), false, vec4<bool>(false, true, true, true)), -1579f, vec3<i32>(-2147483647i, 17502i, -45643i), Struct_2(vec3<f32>(-1493f, 1000f, -573f), 32869u, Struct_1(vec3<bool>(true, true, true), u_input.b, vec2<u32>(33939u, 61230u), false, vec4<bool>(true, false, true, true))), true), vec3<f32>(-408f, -1930f, -496f), vec3<bool>(false, true, true)), 2147483647i).e), all(vec2<bool>(true, true))), 738u, vec2<u32>(u_input.a, 1u) ^ vec2<u32>(_wgslsmith_div_u32(1u, u_input.b), ~u_input.c), false, func_6(func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17406i, -52800i), vec2<i32>(-21695i, 1i), vec2<i32>(25467i, -1i)), false, func_5(vec2<i32>(-2147483647i, -15169i), false, Struct_1(vec3<bool>(true, false, true), 1u, vec2<u32>(83325u, u_input.c), false, vec4<bool>(false, false, true, false))).a), func_5(_wgslsmith_mod_vec2_i32(vec2<i32>(-17275i, -55560i), vec2<i32>(-9396i, 2147483647i)), true, Struct_1(vec3<bool>(false, false, true), 1u, vec2<u32>(u_input.b, u_input.a), true, vec4<bool>(true, false, false, false))).a, func_1(func_6(Struct_4(Struct_1(vec3<bool>(false, true, true), u_input.a, vec2<u32>(1u, u_input.c), false, vec4<bool>(false, false, false, true)), 2781f, vec3<i32>(-18148i, -15353i, -20454i), Struct_2(vec3<f32>(-622f, 1908f, 998f), u_input.a, Struct_1(vec3<bool>(true, true, false), u_input.c, vec2<u32>(u_input.c, 1u), false, vec4<bool>(false, false, true, true))), true), Struct_1(vec3<bool>(true, true, true), u_input.a, vec2<u32>(u_input.b, u_input.c), true, vec4<bool>(false, false, false, true)), Struct_5(Struct_2(vec3<f32>(-473f, 387f, 313f), u_input.b, Struct_1(vec3<bool>(true, false, false), u_input.c, vec2<u32>(u_input.a, 1u), false, vec4<bool>(false, false, false, true))), -47675i, Struct_4(Struct_1(vec3<bool>(true, true, true), u_input.b, vec2<u32>(88052u, u_input.b), false, vec4<bool>(false, true, true, true)), -107f, vec3<i32>(11265i, 11484i, -1i), Struct_2(vec3<f32>(-1000f, -1000f, -647f), 60943u, Struct_1(vec3<bool>(true, true, true), 1u, vec2<u32>(4294967295u, u_input.c), false, vec4<bool>(true, false, false, false))), false), vec3<f32>(-331f, 177f, 739f), vec3<bool>(true, true, true)), -1041f), -vec2<i32>(2147483647i, 2147483647i), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true), -1159f).c.e), func_1(func_1(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(2406f, 1033f, 409f), vec3<f32>(-1758f, 1000f, 107f)), 18777u, Struct_1(vec3<bool>(false, false, true), 1u, vec2<u32>(0u, 61157u), true, vec4<bool>(true, true, false, false))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(33496i, -1i), vec2<i32>(1i, -49225i)), func_2().e, 945f > _wgslsmith_f_op_f32(round(1000f))).a, vec2<i32>(~(i32(-1i) * -2147483647i), 0i), vec4<bool>(func_6(Struct_4(Struct_1(vec3<bool>(false, false, true), u_input.a, vec2<u32>(u_input.a, 0u), false, vec4<bool>(true, false, false, false)), -1045f, vec3<i32>(-87633i, 0i, -1i), Struct_2(vec3<f32>(-1397f, -1617f, -1186f), u_input.c, Struct_1(vec3<bool>(true, false, true), 1u, vec2<u32>(u_input.c, u_input.c), false, vec4<bool>(false, true, true, true))), true), Struct_1(vec3<bool>(false, true, false), u_input.c, vec2<u32>(u_input.a, 35707u), false, vec4<bool>(false, true, false, true)), Struct_5(Struct_2(vec3<f32>(1667f, 121f, 486f), 1u, Struct_1(vec3<bool>(true, false, true), 1u, vec2<u32>(4294967295u, 7623u), false, vec4<bool>(true, true, false, true))), 55393i, Struct_4(Struct_1(vec3<bool>(true, false, false), u_input.a, vec2<u32>(u_input.a, 1u), true, vec4<bool>(true, true, false, true)), 297f, vec3<i32>(0i, -63229i, 69208i), Struct_2(vec3<f32>(648f, -566f, 339f), u_input.c, Struct_1(vec3<bool>(true, false, false), u_input.a, vec2<u32>(u_input.b, u_input.a), false, vec4<bool>(true, false, true, true))), true), vec3<f32>(691f, 759f, 957f), vec3<bool>(true, true, false)), -998f).a.x < _wgslsmith_f_op_f32(min(1130f, -815f)), false, func_5(vec2<i32>(-12629i, -2147483647i), true, func_2()).d.c.d, true), !(all(vec3<bool>(true, true, false)) != true)).a.c.e, vec3<u32>(u_input.b, 1u, u_input.a), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1461f, 857f, 990f))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.c, 1u)), func_1(Struct_2(vec3<f32>(1066f, 2051f, 1040f), 82364u, Struct_1(vec3<bool>(true, true, false), 0u, vec2<u32>(4294967295u, u_input.a), true, vec4<bool>(false, false, false, false))), vec2<i32>(-3806i, -1i), vec4<bool>(false, false, false, false), false).a.c), vec2<i32>(-1i, ~(-11164i)), vec4<bool>(true, true, true, true), true).a.c.c.x & 85303u);
    var var_1 = _wgslsmith_clamp_u32(1u, var_0.a.c.b, 0u);
    var var_2 = Struct_3(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1364f, var_0.a.a.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.a.x, -1439f, 1467f), vec3<f32>(-1156f, var_0.a.a.x, 364f)))), 16178u, func_1(func_6(Struct_4(Struct_1(vec3<bool>(var_0.c.x, true, var_0.c.x), var_0.b.c.x, var_0.a.c.c, var_0.a.c.e.x, vec4<bool>(var_0.b.d, true, var_0.b.e.x, true)), -118f, vec3<i32>(1i, -2147483647i, -2147483647i), var_0.a, var_0.c.x), var_0.a.c, Struct_5(var_0.a, 34159i, Struct_4(var_0.b, -624f, vec3<i32>(26378i, 7293i, -47i), var_0.a, false), vec3<f32>(var_0.a.a.x, var_0.a.a.x, -767f), vec3<bool>(true, true, true)), var_0.a.a.x), firstTrailingBit(vec2<i32>(-19740i, 11368i)), !var_0.a.c.e, all(var_0.a.c.a.xy)).a.c), _wgslsmith_div_vec2_i32(~vec2<i32>(20869i, -23117i), func_5(vec2<i32>(8830i, 2147483647i), var_0.b.a.x, Struct_1(vec3<bool>(true, false, true), var_0.d.x, vec2<u32>(var_0.b.b, 30109u), true, vec4<bool>(false, false, false, var_0.c.x))).c.yy), !(!(!var_0.a.c.e)), !all(!var_0.a.c.a.xz)).a, var_0.b, !(!var_0.b.e), var_0.d, func_1(func_6(Struct_4(func_1(var_0.a, vec2<i32>(-2147483647i, -59390i), var_0.c, true).a.c, _wgslsmith_f_op_f32(-var_0.a.a.x), func_5(vec2<i32>(0i, -57115i), var_0.a.c.a.x, Struct_1(var_0.c.xzx, u_input.b, vec2<u32>(var_0.a.c.c.x, u_input.c), true, var_0.b.e)).c, Struct_2(vec3<f32>(1296f, var_0.a.a.x, -233f), 4294967295u, var_0.b), true), var_0.b, func_1(func_1(Struct_2(var_0.a.a, 4294967295u, Struct_1(vec3<bool>(var_0.c.x, true, var_0.c.x), 1u, vec2<u32>(var_0.a.c.c.x, 10186u), false, vec4<bool>(true, false, var_0.a.c.a.x, var_0.a.c.d))), vec2<i32>(0i, 16930i), vec4<bool>(var_0.c.x, true, true, var_0.b.e.x), var_0.a.c.d).a, -vec2<i32>(-4564i, 7230i), var_0.c, !var_0.b.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.a.x)))), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 2147483647i), vec2<bool>(var_0.b.e.x, false)) >> (var_0.d.zz % vec2<u32>(32u)), vec2<i32>(1i, ~0i)), !select(!vec4<bool>(var_0.b.e.x, var_0.b.a.x, false, var_0.a.c.d), var_0.b.e, true), !func_5(~vec2<i32>(-19784i, -2147483647i), !var_0.a.c.e.x, Struct_1(vec3<bool>(var_0.a.c.e.x, true, true), u_input.b, vec2<u32>(0u, 0u), false, var_0.a.c.e)).e).c.a.c.x);
    var_1 = 35569u;
    var_2 = Struct_3(func_5(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 13511i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -4449i, -1i), vec3<i32>(1i, -15919i, -2147483647i))), func_5(vec2<i32>(1i, 1i), true, Struct_1(vec3<bool>(false, var_2.c.x, true), 62170u, vec2<u32>(var_0.b.b, var_0.a.b), true, var_0.a.c.e)).c.x), var_0.c.x, Struct_1(func_6(Struct_4(var_0.b, var_0.a.a.x, vec3<i32>(1i, -2147483647i, -1i), var_2.a, var_0.b.e.x), Struct_1(var_2.c.xxw, 8982u, vec2<u32>(u_input.b, u_input.a), false, vec4<bool>(var_0.a.c.d, var_0.c.x, var_0.a.c.d, false)), Struct_5(var_2.a, 0i, Struct_4(Struct_1(var_0.c.zwx, 4294967295u, vec2<u32>(7196u, u_input.c), var_0.b.e.x, var_2.a.c.e), var_2.a.a.x, vec3<i32>(2147483647i, 1i, -2147483647i), Struct_2(var_2.a.a, 26893u, Struct_1(var_2.c.yzy, u_input.c, vec2<u32>(21755u, 17859u), var_2.b.a.x, vec4<bool>(true, true, false, false))), true), var_2.a.a, var_0.a.c.a), _wgslsmith_div_f32(221f, var_2.a.a.x)).c.a, ~(44688u >> (var_2.b.c.x % 32u)), select(firstTrailingBit(var_0.a.c.c), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_2.a.c.b), var_2.d.zy), var_0.a.c.e.wz), true, func_1(func_5(vec2<i32>(-24569i, 39078i), false, var_2.a.c).d, -vec2<i32>(-1815i, 28734i), func_5(vec2<i32>(-10121i, 51470i), false, Struct_1(var_2.b.e.zyz, var_2.d.x, var_2.b.c, false, vec4<bool>(false, var_2.b.e.x, true, true))).d.c.e, false).c.d.c.e)).d, func_6(func_5(abs(vec2<i32>(-1i, 1i)) >> (var_0.b.c % vec2<u32>(32u)), -1407f != var_0.a.a.x, var_0.b), var_2.b, func_1(Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a.x, var_2.a.a.x, var_2.a.a.x), vec3<f32>(421f, -349f, var_2.a.a.x), var_2.a.c.a.x)), u_input.b, var_2.b), -min(vec2<i32>(0i, -12415i), vec2<i32>(-1i, -25668i)), func_4(~vec3<i32>(1i, -51874i, 44483i), Struct_5(var_2.a, 1i, Struct_4(Struct_1(var_0.b.e.wyx, 0u, var_0.d.xz, true, var_0.c), var_2.a.a.x, vec3<i32>(3724i, -30110i, 0i), Struct_2(var_2.a.a, 3468u, var_0.b), var_2.a.c.a.x), var_2.a.a, var_2.a.c.a), firstTrailingBit(-14076i)).e, func_1(func_6(Struct_4(var_0.b, var_2.a.a.x, vec3<i32>(-7104i, 9264i, 2147483647i), var_2.a, false), var_2.b, Struct_5(Struct_2(var_2.a.a, var_2.e, var_2.b), -1i, Struct_4(var_0.b, -805f, vec3<i32>(-2147483647i, 12463i, -1i), var_2.a, false), var_0.a.a, vec3<bool>(false, var_2.b.d, false)), var_0.a.a.x), vec2<i32>(-31809i, -30118i) >> (var_2.d.xy % vec2<u32>(32u)), !var_0.c, false).e.x), -136f).c, !vec4<bool>(true, var_0.a.c.e.x, func_1(func_5(vec2<i32>(28713i, -30314i), false, Struct_1(vec3<bool>(var_0.a.c.a.x, true, false), 23991u, var_0.b.c, true, var_0.b.e)).d, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-33403i, -20322i), vec2<i32>(0i, -21331i)), select(var_2.a.c.e, var_2.b.e, var_2.b.e), any(var_0.a.c.e)).c.e, var_2.c.x), var_2.d, select(45032u, 1u, false));
    var var_3 = var_2.b.e.x;
    let var_4 = ~_wgslsmith_clamp_vec2_u32(~func_2().c, vec2<u32>(func_5(vec2<i32>(2147483647i, 33759i), false, Struct_1(vec3<bool>(false, var_0.c.x, var_0.c.x), 1u, vec2<u32>(var_2.e, var_2.e), false, var_0.a.c.e)).d.b, 4294967295u), ~var_2.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.b.c, vec2<u32>(u_input.c, u_input.b) >> (vec2<u32>(1u, 38609u) % vec2<u32>(32u))), 1u), func_4(firstLeadingBit(firstLeadingBit(vec3<i32>(-42875i, 1i, 3435i))), func_1(var_2.a, vec2<i32>(-4459i, 2147483647i) << (var_2.d.zx % vec2<u32>(32u)), var_0.c, func_5(vec2<i32>(20847i, -54156i), var_2.a.c.d, var_2.a.c).a.a.x), 27295i).c.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(-46635i, -21954i, -1i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(-33164i, 23514i, 21538i, 2147483647i), vec4<i32>(-2147483647i, 16163i, 0i, -2147483647i)) << ((vec4<u32>(49621u, var_0.b.b, 76203u, var_2.b.c.x) ^ vec4<u32>(var_4.x, 0u, u_input.c, var_2.a.c.c.x)) % vec4<u32>(32u))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-47854i, -35136i, -32410i, 0i), vec4<i32>(12266i, -30451i, -1i, 21380i), vec4<i32>(1i, 0i, 17930i, 17861i))) | _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, -59386i, -2147483647i, 2147483647i), min(vec4<i32>(-36887i, 2147483647i, 1i, 14171i), vec4<i32>(-623i, 19735i, 0i, 987i)), vec4<i32>(31594i, -14134i, -5155i, -304i))), -(~min(~vec2<i32>(2147483647i, -19757i), vec2<i32>(1i, -2147483647i) >> (var_0.d.xz % vec2<u32>(32u)))));
}

