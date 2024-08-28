struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5) -> bool {
    let var_0 = Struct_3(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1130f, -1170f, true)))), _wgslsmith_f_op_f32(-556f * 246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) - _wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(min(-2551f, _wgslsmith_div_f32(2391f, -935f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(386f, -947f), vec2<f32>(-974f, 1656f)))), vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), ~u_input.a.x < ~u_input.a.x), Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, 6492u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1503f, -480f)))), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), any(vec4<bool>(true, false, arg_0.a, false))), vec4<i32>(u_input.a.x, select(u_input.a.x, u_input.a.x, false), 2147483647i, u_input.a.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(5087u, 35654u, 3091u, 73799u), vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u)), 20815u, select(11572u, 46514u, false))), min(vec4<i32>(10475i, 1i, -26148i, 3490i), ~(-vec4<i32>(u_input.a.x, u_input.a.x, 4157i, u_input.a.x))), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 161909u), vec2<u32>(u_input.b, 43984u)), vec3<f32>(-1070f, _wgslsmith_f_op_f32(526f + 837f), -724f), select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), any(vec2<bool>(true, arg_0.a))), vec4<i32>(u_input.a.x, -1i, ~u_input.a.x, _wgslsmith_mult_i32(39660i, 1i)), vec3<u32>(u_input.b, 4294967295u, 4294967295u))), Struct_1(vec2<u32>(~1u, u_input.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-555f, 703f, 231f) + vec3<f32>(132f, 1011f, 2454f)), vec3<f32>(1f, 1f, 1f)))), select(select(select(vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), vec2<bool>(true, u_input.b != u_input.b), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), !vec2<bool>(true, arg_0.a), any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(36778i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-525i, 34827i, 22912i, u_input.a.x))), ~(~vec3<u32>(u_input.b, 4294967295u, 4294967295u))), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 54614u), vec2<u32>(reverseBits(1u), 1u), ~abs(vec2<u32>(0u, u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1610f, _wgslsmith_f_op_f32(min(264f, 218f)), _wgslsmith_f_op_f32(f32(-1f) * -967f)) + vec3<f32>(_wgslsmith_f_op_f32(min(-880f, -626f)), -1336f, _wgslsmith_f_op_f32(f32(-1f) * -194f))), vec2<bool>(any(vec2<bool>(arg_0.a, false)) & !arg_0.a, ~24500u > _wgslsmith_add_u32(u_input.b, u_input.b)), ~min(vec4<i32>(22374i, u_input.a.x, 0i, -30713i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 10464i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 1i))), ~vec3<u32>(4294967295u, 91248u, u_input.b)));
    let var_1 = Struct_5(false);
    let var_2 = var_0.e.d.xxy;
    let var_3 = var_0.c;
    let var_4 = var_0.c.e;
    return var_3.c.c.x;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = select(!vec2<bool>(!(1000f < arg_0), ~u_input.a.x <= -1i), vec2<bool>(func_3(Struct_5(1000f == arg_0)), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), !(!(arg_0 != _wgslsmith_f_op_f32(829f - -1482f))));
    var var_1 = Struct_5(var_0.x);
    let var_2 = select(~vec4<u32>(u_input.b, ~abs(20u), ~(u_input.b & 49807u), ~(~u_input.b)), vec4<u32>(81527u, max(~abs(u_input.b), ~u_input.b), ~_wgslsmith_add_u32(u_input.b << (u_input.b % 32u), 1u), 1u), select(true, select(any(vec3<bool>(var_1.a, true, true)), any(vec3<bool>(false, false, false)), !var_1.a), var_0.x) & true);
    var_1 = Struct_5(var_1.a);
    let var_3 = firstTrailingBit(-u_input.a.x);
    return ~select(vec2<u32>(~(~var_2.x), ~firstLeadingBit(0u)), _wgslsmith_mult_vec2_u32(var_2.yw, ~_wgslsmith_clamp_vec2_u32(var_2.yx, var_2.zx, vec2<u32>(u_input.b, 15442u))), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(firstTrailingBit(49107u), 0u, arg_1.x), firstLeadingBit(~vec3<u32>(33704u, u_input.b, 4294967295u))), vec3<u32>(0u << (~firstTrailingBit(arg_1.x) % 32u), _wgslsmith_div_u32(select(arg_1.x, _wgslsmith_clamp_u32(9108u, arg_1.x, 4294967295u), true), 3406u), abs(u_input.b)));
    let var_1 = _wgslsmith_clamp_u32(var_0.x, 60492u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.x, var_0.x), var_0) & vec3<u32>(var_0.x, 7302u, arg_1.x), vec3<u32>(min(112843u, 107912u), abs(49522u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 30464u, arg_1.x), vec4<u32>(0u, 1u, arg_1.x, arg_1.x)))), _wgslsmith_sub_vec3_u32(var_0, var_0 | vec3<u32>(1u, u_input.b, arg_1.x))));
    var var_2 = !all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), func_3(Struct_5(false)))) & !(arg_0.x == -2417f);
    var var_3 = ~u_input.a.x;
    var var_4 = Struct_5(any(!vec3<bool>(var_0.x > 48152u, true, any(vec2<bool>(false, true)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1447f), vec4<f32>(134f, arg_0.x, 2383f, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 319f, arg_0.x, 1582f) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1583f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(723f, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(636f, 1755f, -808f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, 1187f, arg_0.x, -1527f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-581f, arg_0.x, -986f, arg_0.x), vec4<f32>(-2939f, arg_0.x, arg_0.x, 261f))))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, -361f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f * -1531f))))));
    let var_1 = Struct_2(var_0.xw, !vec3<bool>(!func_3(Struct_5(true)), all(vec4<bool>(true, false, false, true)), false), Struct_1(max(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(_wgslsmith_mult_u32(u_input.b, 0u), _wgslsmith_mult_u32(85520u, u_input.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-549f, -2339f, -847f))))), vec2<bool>(true, true), -(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~abs(vec3<u32>(u_input.b, 116580u, u_input.b)))), reverseBits(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(1i, u_input.a.x), -1i, -12960i)), Struct_1(~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(55482u, u_input.b), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(trunc(var_0.wxz)), vec2<bool>(true && func_3(Struct_5(true)), !all(vec4<bool>(false, false, true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 41624i)), ~u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1955i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-18164i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 68324u), vec3<u32>(4294967295u, 4294967295u, u_input.b))));
    let var_2 = var_1.c.e >> (~var_1.e.e % vec3<u32>(32u));
    var var_3 = abs(select(u_input.a.x, 2147483647i, true));
    var_3 = var_1.d.x >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(~var_1.c.e.yx, vec2<u32>(func_2(var_0.x).x, var_1.e.e.x))) % 32u);
    return ~(-1i);
}

fn func_5(arg_0: i32) -> Struct_5 {
    let var_0 = ~(-select(countOneBits(~vec4<i32>(arg_0, arg_0, arg_0, 1i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-7457i, arg_0, -12163i, -16914i), -vec4<i32>(2147483647i, -30433i, u_input.a.x, u_input.a.x), vec4<i32>(1i, -1i, u_input.a.x, arg_0)), vec4<bool>(true, all(vec3<bool>(true, true, false)), arg_0 >= -1i, true)));
    var var_1 = Struct_3(!(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 329f, -381f, -573f) - vec4<f32>(982f, -1430f, 135f, 753f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(650f, -1701f, 1144f, 182f) - vec4<f32>(-1080f, -1564f, -1137f, -883f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, 473f, -1958f, -2641f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, -1113f, 1179f, 205f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, 947f, 245f, -919f) * vec4<f32>(418f, -477f, -130f, -149f)), vec4<f32>(607f, 407f, 408f, -1063f)), false)), false)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, -794f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, 590f))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true), Struct_1(vec2<u32>(u_input.b, ~u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, 807f, -523f) - vec3<f32>(1756f, 257f, -1818f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), -(~vec4<i32>(-2147483647i, -28548i, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(13644u, 1u, 12145u), countOneBits(vec3<u32>(4294967295u, 28079u, 0u)), ~vec3<u32>(65753u, 0u, u_input.b))), vec4<i32>(var_0.x, firstTrailingBit(_wgslsmith_add_i32(var_0.x, 42091i)), arg_0, u_input.a.x), Struct_1(vec2<u32>(1u, 6794u), vec3<f32>(_wgslsmith_f_op_f32(abs(-1237f)), -759f, -1913f), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), min(vec4<i32>(2273i, u_input.a.x, u_input.a.x, 34215i), var_0) << (~vec4<u32>(u_input.b, 1141u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 7283u, 1u)), ~vec3<u32>(4294967295u, u_input.b, 10124u)))), Struct_1(_wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 4609u) << (vec2<u32>(49380u, u_input.b) % vec2<u32>(32u))), ~select(vec2<u32>(u_input.b, 40311u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(820f, 558f), vec2<u32>(u_input.b, 0u))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1183f, -585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(-319f, 557f), vec2<u32>(u_input.b, u_input.b))).x * _wgslsmith_f_op_f32(-902f + -174f))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_mod_vec4_i32(var_0, vec4<i32>(abs(5685i), _wgslsmith_mult_i32(24102i, -1i), -16665i, var_0.x)), vec3<u32>(~(65965u >> (u_input.b % 32u)), firstLeadingBit(abs(1u)), 1u)), Struct_1(~vec2<u32>(~4294967295u, u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2814f, 771f, 2260f) + vec3<f32>(101f, 1555f, 371f)) - vec3<f32>(-404f, -1301f, -513f))), select(vec2<bool>(true, false), vec2<bool>(select(true, false, false), true), vec2<bool>(true, true)), ~(~var_0) << (_wgslsmith_mult_vec4_u32(vec4<u32>(30952u, 50721u, 1u, 4294967295u), vec4<u32>(49195u, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u)), ~(~(~vec3<u32>(4294967295u, 4294967295u, u_input.b)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, var_1.e.b.x)) * _wgslsmith_div_vec2_f32(var_1.c.a, var_1.b.xy)) - vec2<f32>(-1053f, _wgslsmith_f_op_f32(step(var_1.d.b.x, var_1.e.b.x)))))));
    var_1 = Struct_3(!(_wgslsmith_mod_i32(abs(var_0.x), 0i) < -42900i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1552f, var_2.x), var_1.d.e.xy)))), var_1.c, var_1.d, Struct_1(vec2<u32>(var_1.e.a.x, ~select(var_1.c.e.e.x, var_1.e.e.x, false)), var_1.e.b, select(var_1.e.c, select(vec2<bool>(false, var_1.e.c.x), !vec2<bool>(var_1.d.c.x, var_1.a), select(var_1.e.c, var_1.c.e.c, false)), select(select(var_1.e.c, vec2<bool>(var_1.c.b.x, false), var_1.d.c.x), select(var_1.c.b.zx, vec2<bool>(false, false), vec2<bool>(var_1.e.c.x, var_1.c.e.c.x)), vec2<bool>(true, true))), abs(var_1.c.d), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.c.c.e.x, var_1.c.e.a.x, 42811u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.c.c.e.x, u_input.b), vec3<u32>(1152u, 31039u, var_1.e.a.x)))));
    var var_3 = firstLeadingBit(_wgslsmith_mult_vec2_i32(var_0.zw, vec2<i32>(min(var_1.c.e.d.x, reverseBits(46927i)), _wgslsmith_sub_i32(var_0.x, func_1()))));
    return Struct_5(all(vec3<bool>(var_2.x != _wgslsmith_f_op_f32(trunc(1315f)), true, all(vec2<bool>(var_1.e.c.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(u_input.a.x, 35977i), vec2<i32>(2147483647i, u_input.a.x) & _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), ~vec2<i32>(11552i, 20580i))));
}

