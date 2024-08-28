struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, true, true, false, true, true, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.xx)))), !arg_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, arg_0, arg_2.x, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -767f, arg_0, arg_0)))))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(233f)), arg_1.c, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(941f, arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + arg_0))), _wgslsmith_f_op_f32(-807f * _wgslsmith_div_f32(-741f, arg_0)), arg_2.x)));
    var var_1 = Struct_4(var_0.a, vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(204f - arg_2.x) * 550f) + _wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(1628f - 204f))), -762f));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(898f)) + _wgslsmith_f_op_f32(select(-887f, -672f, var_1.a.b))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.a.x + arg_1.c)))) + 1239f));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_4 {
    global0 = array<bool, 26>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(196f * 1664f))))), arg_1.x, _wgslsmith_div_f32(-420f, 2276f), 466f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1621f))) + var_0.x), arg_1.x) - vec3<f32>(1000f, -325f, _wgslsmith_f_op_f32(sign(-940f))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 361f, true))))), 789f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(120f * arg_0.a.x), Struct_1(vec4<bool>(true, true, arg_0.b, false), -1i, var_0.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, var_0.x, 410f) - vec3<f32>(-746f, 793f, -1131f)), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true, global0[_wgslsmith_index_u32(12169u, 26u)]), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1391f * 804f), -1058f))) - _wgslsmith_f_op_f32(f32(-1f) * -656f)), -1782f);
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(select(~4294967295u, ~7434u, any(vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(22228u, 26u)], true, true))), 1u), abs(736u)), _wgslsmith_clamp_u32(83542u, 1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(4294967295u, 10516u, 4294967295u)))));
    return Struct_4(Struct_3(var_0.wz, all(vec3<bool>(u_input.b.x >= 1i, true, -14348i == u_input.b.x))), _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-607f + _wgslsmith_f_op_f32(-arg_1.x)), 662f, -123f)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    global0 = array<bool, 26>();
    var var_0 = Struct_1(vec4<bool>(func_2(Struct_3(vec2<f32>(1806f, arg_1.b.x), u_input.a.x == -10072i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_1.b.zzy))).a.b, select(true, true, false), true, 0u != arg_0.x), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-413f * 162f))) - _wgslsmith_f_op_f32(sign(arg_2.a.x))), ~(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-51769i, 0i, u_input.a.x), ~u_input.a.x) >> (_wgslsmith_mult_u32(16427u, arg_3.x) % 32u)));
    global0 = array<bool, 26>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-699f, -949f))), Struct_1(vec4<bool>(true, true, arg_1.b.x > arg_2.a.x, true), ~2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_clamp_i32(-41458i & u_input.b.x, var_0.b, -28362i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-404f, arg_2.a.x, _wgslsmith_div_f32(arg_2.a.x, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, var_0.c) - vec3<f32>(arg_1.b.x, -1000f, -913f)) + arg_1.b.wwy))), select(var_0.a.wxz, var_0.a.xyx, vec3<bool>(arg_0.x <= arg_3.x, func_2(Struct_3(vec2<f32>(arg_2.a.x, 1000f), true), vec3<f32>(arg_2.a.x, 443f, arg_2.a.x)).a.b, !var_0.a.x)))), arg_1.a.a.x, _wgslsmith_f_op_f32(-var_0.c));
    global0 = array<bool, 26>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-924f, var_0.c))) - _wgslsmith_f_op_vec2_f32(arg_1.b.yy * arg_2.a))), global0[_wgslsmith_index_u32(0u, 26u)]);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_4(func_2(func_2(Struct_3(arg_1.a, all(vec2<bool>(false, false))), vec3<f32>(_wgslsmith_f_op_f32(708f + -1704f), arg_1.a.x, -142f)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_2, arg_1.a.x))))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(352f, func_4(vec3<u32>(4294967295u, arg_3, arg_3), Struct_4(Struct_3(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_1.b), vec4<f32>(arg_2, 1000f, -1000f, arg_0)), arg_1, vec2<u32>(arg_3, arg_3)).a.x, _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(select(-663f, -1760f, true))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_1.a.x, arg_0, arg_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.a.x, arg_2, arg_1.a.x)))));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(var_0.a, vec3<f32>(-1024f, arg_0, var_0.b.x)).a.a.x, arg_2) - arg_1.a), false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(2241f)), _wgslsmith_f_op_f32(func_3(arg_1.a.x, Struct_1(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_3, 26u)], var_0.a.b), -2023i, arg_1.a.x, u_input.a.x), vec3<f32>(var_0.a.a.x, arg_0, var_0.b.x), vec3<bool>(false, global0[_wgslsmith_index_u32(42002u, 26u)], true))), 438f)), var_0.b)));
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, all(vec2<bool>(false, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_1.b, true, arg_1.b), false), select(vec4<bool>(false, arg_1.b, false, arg_1.b), vec4<bool>(false, true, var_0.a.b, var_0.a.b), all(vec4<bool>(true, var_0.a.b, var_0.a.b, true)))), reverseBits(~(~u_input.b.x)), func_4(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, 22698u, 1u), vec3<u32>(1u, 16565u, 12311u)), vec3<u32>(64419u, 51659u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(10570u, 52798u, arg_3), vec3<u32>(54349u, 4294967295u, 18776u))), Struct_4(var_0.a, _wgslsmith_div_vec4_f32(var_0.b, var_0.b)), Struct_3(_wgslsmith_f_op_vec2_f32(var_1.a.a + vec2<f32>(arg_0, -359f)), true), vec2<u32>(4294967295u, arg_3)).a.x, -(-2147483647i >> (arg_3 % 32u))), ~((vec3<u32>(2090u, arg_3, arg_3) >> (~vec3<u32>(0u, arg_3, 0u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_3, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 4294967295u, 4294967295u), vec3<u32>(10837u, arg_3, 6722u))) % vec3<u32>(32u))));
    var var_3 = abs(min(-18853i, ~var_2.a.d)) << (~1u % 32u);
    let var_4 = func_4(vec3<u32>(arg_3, 2567u, _wgslsmith_div_u32(arg_3, arg_3)), Struct_4(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(step(1759f, _wgslsmith_f_op_f32(floor(var_0.a.a.x)))), arg_0, _wgslsmith_f_op_f32(var_0.b.x + -328f))), func_2(Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.a.a))), arg_1.b), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2144f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -2168f))).a, ~firstLeadingBit(var_2.b.zz)).a.x;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_0.b.xxy, vec3<f32>(arg_2, _wgslsmith_div_f32(360f, 130f), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -546f, var_2.a.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, var_0.a.a.x, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.zzz) * vec3<f32>(arg_0, arg_0, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, var_0.a.a.x, -427f) + vec3<f32>(-1831f, arg_0, -297f)))), any(!var_2.a.a)))), any(var_2.a.a)));
}

fn func_6(arg_0: Struct_5, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = _wgslsmith_clamp_u32(select(~(~0u), 0u, true), arg_3.b.x, _wgslsmith_clamp_u32(65004u, 31195u, 33813u)) ^ ~(~62681u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_3.b, arg_3.b), ~arg_3.b.x) % 32u));
    var var_1 = _wgslsmith_mod_u32(min(30428u, ~1u) << (_wgslsmith_mult_u32(arg_3.b.x, arg_3.b.x) % 32u), ~1u);
    let var_2 = all(!arg_3.a.a.wyx) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i ^ arg_2, arg_3.a.b ^ u_input.a.x), u_input.b.zzw) >= ~arg_2);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(min(arg_0.a.xx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.xy)))))), var_2), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.c, arg_3.a.c, 138f, arg_0.a.x) - vec4<f32>(-1000f, 3524f, -1000f, arg_3.a.c)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.a.c, arg_3.a.c, -644f, arg_1)))) - vec4<f32>(550f, 1162f, arg_0.a.x, -1015f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1000f, arg_3.a.c, arg_1)))))));
    let var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(arg_3.a.b, -2147483647i, 15959i, u_input.b.x)), vec4<i32>(-51673i, -arg_2, -1i, select(max(arg_3.a.d, u_input.b.x), -2147483647i, true))), 2147483647i, arg_2, reverseBits(1i));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.b.xzx, arg_0.a)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = true;
    var var_1 = vec4<i32>(~u_input.b.x, u_input.a.x, u_input.a.x, 1i) | -countOneBits(u_input.a);
    global0 = array<bool, 26>();
    var var_2 = func_6(Struct_5(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(round(-1454f)), func_4(vec3<u32>(32466u, 44029u, 20336u), func_2(Struct_3(arg_2.xy, false), vec3<f32>(arg_2.x, -159f, 955f)), Struct_3(vec2<f32>(arg_2.x, -1139f), global0[_wgslsmith_index_u32(arg_3, 26u)]), vec2<u32>(22952u, arg_3)), 994f, arg_3))), _wgslsmith_f_op_f32(exp2(arg_2.x)), ~var_1.x & 15714i, Struct_2(Struct_1(!vec4<bool>(false, arg_1, true, false), var_1.x, 510f, _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b)), max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_3, 12206u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 1u, arg_3), vec3<u32>(arg_3, 819u, 1u), vec3<u32>(26992u, 0u, 4294967295u))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_3, 40062u, 4294967295u), abs(vec3<u32>(15046u, 4294967295u, 44381u))))));
    var var_3 = vec2<bool>(any(vec3<bool>(all(select(vec4<bool>(true, var_0, arg_0, true), vec4<bool>(global0[_wgslsmith_index_u32(48690u, 26u)], true, false, arg_0), vec4<bool>(false, arg_0, arg_1, arg_1))), !func_4(vec3<u32>(arg_3, arg_3, 68898u), Struct_4(Struct_3(vec2<f32>(1000f, arg_2.x), true), vec4<f32>(-1000f, arg_2.x, -446f, -768f)), Struct_3(var_2.a.xz, var_0), vec2<u32>(4294967295u, 4294967295u)).b, true)), func_4(~(vec3<u32>(4294967295u, arg_3, arg_3) | vec3<u32>(64890u, 1u, 1u)), func_2(Struct_3(vec2<f32>(722f, 1000f), global0[_wgslsmith_index_u32(arg_3, 26u)]), arg_2), func_4(~vec3<u32>(arg_3, 18031u, 9139u), Struct_4(Struct_3(vec2<f32>(341f, 127f), false), vec4<f32>(var_2.a.x, var_2.a.x, arg_2.x, -1000f)), func_2(Struct_3(var_2.a.xy, true), vec3<f32>(arg_2.x, arg_2.x, var_2.a.x)).a, countOneBits(vec2<u32>(arg_3, 138358u))), ~abs(vec2<u32>(arg_3, 21511u))).b || any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, arg_1), vec2<bool>(false, var_0), var_0))));
    return _wgslsmith_mult_u32(41913u, arg_3) >> (_wgslsmith_add_u32(16792u, 0u) % 32u);
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1558f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - 298f) - _wgslsmith_f_op_f32(arg_2.x - arg_2.x))), vec3<f32>(arg_2.x, -1423f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-899f, arg_2.x))))));
    var var_1 = Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(abs(arg_3.x), 26u)], any(vec3<bool>(select(false, arg_1.x, global0[_wgslsmith_index_u32(arg_3.x, 26u)]), true, true))), _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(11984i, -73466i), ~u_input.a.x)), u_input.a.x), 1f, -33203i);
    var_1 = Struct_1(select(select(select(!vec4<bool>(var_1.a.x, arg_0, false, true), !var_1.a, !vec4<bool>(global0[_wgslsmith_index_u32(20760u, 26u)], arg_1.x, true, true)), vec4<bool>(arg_1.x, true, arg_0, all(var_1.a)), var_1.a), select(var_1.a, !(!var_1.a), vec4<bool>(true, true, true, true)), vec4<bool>(true, 1f <= _wgslsmith_f_op_f32(var_1.c + 131f), false, all(var_1.a.xx))), _wgslsmith_mod_i32(-(~u_input.b.x) << (~(~arg_3.x) % 32u), -reverseBits(firstLeadingBit(-1i))), 622f, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-30090i, u_input.a.x), 36484i) >> (0u % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(arg_2.x, arg_2.x, 1789f))), vec3<f32>(_wgslsmith_f_op_f32(-1142f - 240f), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(-128f * var_1.c)), !(!arg_0))), arg_2.xwy, false)));
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x | var_1.b, 1i), ~min(~vec2<i32>(var_1.d, var_1.b), vec2<i32>(1i, u_input.b.x))), select(u_input.a.zw, _wgslsmith_div_vec2_i32(select(u_input.a.xw, countOneBits(vec2<i32>(-6514i, 13571i)), arg_1), u_input.a.wy), vec2<bool>(true, false)));
    return Struct_2(Struct_1(vec4<bool>(true, arg_0, arg_0, arg_0), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.x, -471f, global0[_wgslsmith_index_u32(80789u, 26u)])), 708f, true)) - arg_2.x), min(_wgslsmith_add_i32(u_input.b.x, u_input.a.x) | 6308i, var_1.d)), ~arg_3.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 98422u, 86705u), vec4<u32>(3055u, 68407u, 35859u, 4294967295u)))) << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, 0u), abs(95278u)), 1u, ~min(9227u, 0u)) % 32u)) ^ 34175u;
    let var_1 = func_7(global0[_wgslsmith_index_u32(abs(func_1(true, global0[_wgslsmith_index_u32(max(~53809u, 1u), 26u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1761f, -914f, 1156f) - vec3<f32>(-1176f, 220f, 887f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1756f, 248f, -744f))), ~(~var_0))), 26u)], select(select(!vec2<bool>(global0[_wgslsmith_index_u32(var_0, 26u)], global0[_wgslsmith_index_u32(var_0, 26u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 26u)]), vec2<bool>(true, true)), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(33642u, 26u)], false))), any(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, 820f, -145f, 160f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(102f, -930f, 631f, -850f) + vec4<f32>(1392f, -601f, -1315f, -1802f))))))), firstTrailingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(12694u, 0u, 0u, 0u) ^ vec4<u32>(1419u, 97907u, 4294967295u, var_0)), vec4<u32>(_wgslsmith_div_u32(var_0, 43794u), ~var_0, var_0, 1u))));
    global0 = array<bool, 26>();
    let var_2 = _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c))))));
    global0 = array<bool, 26>();
    let var_3 = var_0;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, -23556i)), vec2<i32>(5007i, var_1.a.b))), ~15567i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 + 1381f))), Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1673f, var_1.a.c))), var_1.a.a.x), _wgslsmith_f_op_f32(step(var_1.a.c, _wgslsmith_f_op_f32(func_3(var_1.a.c, Struct_1(vec4<bool>(false, true, var_1.a.a.x, var_1.a.a.x), u_input.a.x, -671f, 27939i), vec3<f32>(1634f, var_1.a.c, var_2), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]))))), var_3)).x)));
}

