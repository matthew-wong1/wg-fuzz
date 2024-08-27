struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: array<vec3<bool>, 25>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = vec3<i32>(u_input.d, countOneBits(-1i), 1i);
    var_0 = Struct_1(var_1.a);
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(33272u, 7002u, 11210u), vec3<u32>(0u, 17943u, arg_1.x)) | arg_1.x, 2933u);
    return vec4<i32>(abs(u_input.b.x), _wgslsmith_dot_vec2_i32(-(~_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(var_2.x, 37272i))), -(~vec2<i32>(-20851i, u_input.b.x))), var_2.x, -50633i);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 25>();
    let var_0 = func_3(Struct_1(select(all(global1[_wgslsmith_index_u32(45759u, 25u)]), false, false) & true), min(vec2<u32>(u_input.c, select(~72674u, 0u, false)), max(vec2<u32>(firstLeadingBit(0u), ~u_input.c), firstLeadingBit(firstTrailingBit(vec2<u32>(0u, 54880u))))));
    global0 = array<vec2<bool>, 5>();
    let var_1 = 99486u;
    let var_2 = Struct_1(true);
    return var_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3;
    let var_1 = 37596u;
    var var_2 = func_2();
    var var_3 = ~(select(firstTrailingBit(arg_2 << (vec2<u32>(1u, arg_2.x) % vec2<u32>(32u))), arg_2, global0[_wgslsmith_index_u32(16719u, 5u)]) | ~vec2<u32>(arg_2.x, _wgslsmith_add_u32(var_1, 0u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.www)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(541f, 244f, arg_1), arg_0.xyx, false)) + arg_0.xwy) * _wgslsmith_f_op_vec3_f32(select(arg_0.wyy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -1904f, 1872f), arg_0.xyw, true)), true)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(695f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -475f))) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1965f * arg_0.x))), !(!(~u_input.d > 79205i))));
    return Struct_2(Struct_1(var_0.a.a), func_2(), arg_3.a);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_1 {
    global1 = array<vec3<bool>, 25>();
    let var_0 = _wgslsmith_dot_vec4_u32(min(reverseBits(vec4<u32>(u_input.c, u_input.c, 19331u, u_input.c)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 0u), vec4<u32>(25144u, u_input.c, 9501u, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(38670u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 19849u), false), ~vec4<u32>(37975u, u_input.c, u_input.c, 1u))), vec4<u32>(firstTrailingBit(u_input.c), select(~0u, 1u, arg_1 > -1143f), u_input.c, 1u)) ^ u_input.c;
    var var_1 = any(select(vec3<bool>((arg_1 < 1376f) || (arg_1 <= arg_1), func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, -389f, arg_1))), _wgslsmith_f_op_f32(-arg_1), vec2<u32>(var_0, 48304u) | vec2<u32>(24542u, var_0), Struct_2(arg_0.b, Struct_1(true), arg_0.b)).c.a, arg_0.b.a), !(!global1[_wgslsmith_index_u32(~var_0, 25u)]), arg_2));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(489f, -517f, _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_div_f32(485f, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -221f, arg_1) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(839f, -1239f, 1432f, 1016f))))), arg_2)), 405f, ~vec2<u32>(u_input.c, abs(0u)), arg_0);
    return Struct_1(!select(true, var_2.b.a, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_5(func_4(vec4<f32>(808f, _wgslsmith_div_f32(112f, -703f), _wgslsmith_div_f32(1000f, 337f), -1656f), _wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(select(-354f, 1127f, false))), vec2<u32>(~u_input.c, u_input.c), Struct_2(arg_1, Struct_1(arg_0.a), func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2353f * 305f))), false & (u_input.b.x < -2147483647i), u_input.a.x), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, _wgslsmith_f_op_f32(-492f + 1008f), _wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(step(965f, 635f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-244f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1849f)))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(1u, 4294967295u)), func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, -510f, 248f, 1010f) - vec4<f32>(1772f, -2020f, 1000f, -534f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(910f * 1058f))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, u_input.c), abs(vec2<u32>(1u, u_input.c))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1024f, 131f, -347f, -371f), vec4<f32>(-1278f, 922f, -1200f, 992f), arg_0.a)), _wgslsmith_f_op_f32(428f + 352f), abs(vec2<u32>(u_input.c, u_input.c)), func_4(vec4<f32>(107f, -1000f, 740f, -991f), 1011f, vec2<u32>(0u, u_input.c), Struct_2(Struct_1(false), Struct_1(true), arg_1))))).a, arg_1);
    var var_1 = abs(select(~vec4<u32>(7320u, 4294967295u, u_input.c, u_input.c), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 53176u), vec4<u32>(46552u, 1u, 0u, 69154u), vec4<u32>(0u, 46119u, u_input.c, 1u)), select(!vec4<bool>(arg_0.a, arg_1.a, var_0.c.a, arg_0.a), !vec4<bool>(var_0.b.a, false, false, false), !var_0.b.a)) >> ((~vec4<u32>(4531u, 24764u, u_input.c, u_input.c) << ((~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) >> (vec4<u32>(7062u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1669f)), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-109f, 969f)))))), _wgslsmith_f_op_f32(step(-1552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-451f)) - _wgslsmith_f_op_f32(-1000f + 1153f)))), var_1.xx, Struct_2(var_0.b, func_2(), Struct_1(u_input.d == 37779i)));
    global0 = array<vec2<bool>, 5>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1329f, 141f, -692f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(339f)))), 1546f, -201f));
    return Struct_1(true);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec2<bool>, 5>();
    global0 = array<vec2<bool>, 5>();
    global1 = array<vec3<bool>, 25>();
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(663f, arg_2, arg_2, -346f), vec4<f32>(-1345f, arg_2, arg_2, arg_2), vec4<bool>(true, true, arg_1.a, false)))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(round(412f)))))), ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, u_input.c)), vec2<u32>(4294967295u, 3405u) >> (abs(vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-911f, arg_2, 1095f, -733f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2)))), min(~vec2<u32>(u_input.c, 1u), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 41387u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, u_input.c)))), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, 313f) - vec4<f32>(1000f, arg_2, arg_2, arg_2)), vec4<f32>(arg_2, 934f, 124f, arg_2), true)), _wgslsmith_f_op_f32(f32(-1f) * -790f), abs(vec2<u32>(u_input.c, 1u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), arg_3))).c;
    let var_1 = _wgslsmith_mult_vec2_i32(u_input.b.yz, vec2<i32>(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -2147483647i), func_3(arg_3.c, vec2<u32>(19537u, 1u)).x, -34264i), ~(-(u_input.d & -23936i))));
    return arg_3.b;
}

fn func_7(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global1 = array<vec3<bool>, 25>();
    global0 = array<vec2<bool>, 5>();
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(min(firstLeadingBit(_wgslsmith_mult_u32(u_input.c, u_input.c)), ~(u_input.c & u_input.c)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), 3409u)), abs(abs(vec2<u32>(59708u & u_input.c, ~9135u))), ~vec2<u32>(116389u, ~u_input.c ^ u_input.c));
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    return func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -515f), -2266f, _wgslsmith_div_f32(927f, _wgslsmith_div_f32(129f, -765f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -296f))))), 1f, ~var_0, func_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-471f)), _wgslsmith_div_f32(921f, -1212f))), -1967f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(842f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1054f - -140f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1462f, _wgslsmith_f_op_f32(f32(-1f) * -308f))), ~_wgslsmith_mod_vec2_u32(var_0 ^ var_0, vec2<u32>(54952u, var_0.x)), Struct_2(func_6(true, func_1(Struct_1(arg_2.a), arg_2), _wgslsmith_div_f32(647f, 405f), func_4(vec4<f32>(-656f, 1000f, -491f, -732f), -1343f, var_0, Struct_2(arg_2, arg_2, arg_2))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, 196f, 1539f, -625f)), _wgslsmith_f_op_f32(trunc(-152f)), ~var_0, func_4(vec4<f32>(-731f, -428f, 1000f, 113f), -1402f, var_0, Struct_2(arg_2, Struct_1(arg_2.a), Struct_1(arg_2.a)))).b, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -1332f, 302f, -540f)), -1000f, max(var_0, var_0), func_4(vec4<f32>(1481f, -1621f, 1102f, -1000f), 992f, vec2<u32>(u_input.c, u_input.c), Struct_2(arg_2, arg_2, Struct_1(arg_2.a)))).a)));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = arg_3.x;
    global0 = array<vec2<bool>, 5>();
    let var_1 = ~_wgslsmith_sub_i32(-((i32(-1i) * -5516i) >> (u_input.c % 32u)), 40777i);
    global0 = array<vec2<bool>, 5>();
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1, 0i), _wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, -1i))), vec2<i32>(-9921i, 18990i | var_1)), 0i), vec2<i32>(max(var_1, _wgslsmith_mod_i32(func_3(Struct_1(true), vec2<u32>(u_input.c, 5446u)).x, firstLeadingBit(var_1))), reverseBits(-min(11423i, var_1))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_2.x, -1516f), vec3<f32>(arg_2.x, -2764f, arg_2.x), global1[_wgslsmith_index_u32(u_input.c, 25u)])) - vec3<f32>(arg_2.x, arg_2.x, 1000f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_2, vec3<f32>(-1037f, 1854f, arg_2.x))), _wgslsmith_f_op_vec3_f32(step(arg_2, vec3<f32>(arg_2.x, arg_2.x, arg_2.x))), select(arg_1.b.a, arg_3.x, arg_0.a.a)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-291f * -1453f)))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), -164f)));
}

fn func_9(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_f_op_f32(abs(1255f)), _wgslsmith_f_op_f32(1018f + _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.x)), -1197f, false))))), _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 49970u), ~vec2<u32>(32692u, u_input.c)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 4294967295u)))), func_7(firstLeadingBit((arg_1 ^ u_input.b) | reverseBits(u_input.b)), -firstTrailingBit(-vec2<i32>(u_input.b.x, u_input.a.x)), Struct_1(false)));
    let var_1 = Struct_2(var_0.c, var_0.a, func_2());
    var var_2 = true;
    global1 = array<vec3<bool>, 25>();
    var_2 = func_2().a;
    return firstLeadingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.b.x, u_input.d, 16243i), ~vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_1.x, 36197i, u_input.d) >> (~vec4<u32>(1u, u_input.c, 15538u, u_input.c) % vec4<u32>(32u)), vec4<i32>(-u_input.b.x, ~arg_1.x, u_input.a.x, ~arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(_wgslsmith_f_op_vec3_f32(func_8(func_7(countOneBits(-u_input.b), vec2<i32>(u_input.a.x, 21856i) >> (max(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), func_6(true, func_1(Struct_1(true), Struct_1(true)), -169f, func_4(vec4<f32>(-121f, 824f, 1000f, 488f), -153f, vec2<u32>(u_input.c, 53164u), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false))))), func_7(abs(-u_input.b), vec2<i32>(u_input.b.x, -u_input.a.x), func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)), -1979f, _wgslsmith_f_op_f32(-390f - _wgslsmith_f_op_f32(360f - -995f))), select(select(!global1[_wgslsmith_index_u32(u_input.c, 25u)], vec3<bool>(false, false, true), select(global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(55802u, 25u)], vec3<bool>(false, false, false))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(70307u, 46796u)), 25u)], any(global0[_wgslsmith_index_u32(1u, 5u)])))), max(firstLeadingBit(func_3(func_4(vec4<f32>(1556f, 1418f, 2368f, 1298f), 1282f, vec2<u32>(u_input.c, 49260u), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false))).a, select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(65168u, u_input.c), false)).yww), vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 40472i, u_input.d)), ~vec4<i32>(u_input.a.x, -1i, 14871i, 3154i)), u_input.a.x, -u_input.a.x)));
    global0 = array<vec2<bool>, 5>();
    global1 = array<vec3<bool>, 25>();
    var var_1 = Struct_2(func_2(), Struct_1(true), func_7(var_0.yyw, vec2<i32>(_wgslsmith_mult_i32(2147483647i, var_0.x), i32(-1i) * -34142i) & -var_0.xw, func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-531f * -2180f), _wgslsmith_f_op_vec3_f32(func_8(Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)), vec3<f32>(379f, -1030f, -454f), global1[_wgslsmith_index_u32(u_input.c, 25u)])).x, 587f), _wgslsmith_f_op_vec3_f32(func_8(func_7(u_input.b, var_0.zz, Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1119f, -1510f, -959f)), !global1[_wgslsmith_index_u32(11960u, 25u)])).x, ~max(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.c, 0u)), func_7(u_input.b << (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u)), firstLeadingBit(u_input.a), Struct_1(true))).c).a);
    var_1 = Struct_2(Struct_1(var_1.a.a), var_1.a, Struct_1(!all(vec2<bool>(var_1.b.a, var_1.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_8(Struct_2(Struct_1(var_1.a.a), var_1.b, Struct_1(true)), Struct_2(var_1.b, Struct_1(false), var_1.b), vec3<f32>(1199f, 105f, 200f), global1[_wgslsmith_index_u32(u_input.c, 25u)])).x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(736f - -1000f))))), reverseBits(var_0.zz >> (~(~vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u))), -301f);
}

