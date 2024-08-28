struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, 1000f, arg_3.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -415f, 1588f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(465f, arg_3.a.x, -685f)))))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-349f - -549f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1261f, 549f))), _wgslsmith_f_op_f32(-618f * _wgslsmith_div_f32(2048f, -559f)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(~1u, -1i, ~1u, -2147483647i, ~vec2<i32>(-21874i, u_input.b)), any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_clamp_u32(0u, arg_1, u_input.a.x), -14351i, firstLeadingBit(0u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -5769i, 79440i), vec3<i32>(arg_0, u_input.b, arg_0)), ~global0.xz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))), vec4<bool>(true, true, true, true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, 225f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, -384f))), Struct_1(37457u, global0.x, 1u, u_input.b, abs(vec2<i32>(global0.x, -18325i))), Struct_1(arg_1, _wgslsmith_mult_i32(-45823i, -26174i), min(arg_1, 4294967295u), -62525i, global0.yz & global0.zz), u_input.b)))));
    global0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(~u_input.b, ~u_input.b, abs(1i)) << (u_input.a.wxw % vec3<u32>(32u)), max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -global0.x, u_input.b), vec3<i32>(_wgslsmith_clamp_i32(global0.x, global0.x, 132i), max(20757i, 1i), _wgslsmith_sub_i32(global0.x, u_input.b))), ~select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -10573i, 0i), vec3<i32>(-17439i, 2147483647i, arg_0)), select(vec3<i32>(u_input.b, -1i, 2147483647i), vec3<i32>(0i, global0.x, u_input.b), false), true)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(u_input.b), 1i, 1i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -8046i, 0i), vec3<i32>(global0.x, -1i, 0i))), u_input.b, 2147483647i));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(max(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b, -15834i, arg_0, -2147483647i), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), abs(vec4<i32>(arg_0, -2147483647i, arg_0, -28553i))), -select(vec4<i32>(global0.x, u_input.b, 1i, 11513i), vec4<i32>(-7043i, u_input.b, global0.x, global0.x), false)), -(~vec4<i32>(u_input.b, -15832i, 2032i, -1i)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-38412i, -26739i), global0.xy), select(u_input.b, u_input.b, true), global0.x >> (u_input.a.x % 32u), u_input.b)), vec4<i32>(arg_0, global0.x, _wgslsmith_add_i32(global0.x, _wgslsmith_sub_i32(arg_0, -5828i)), -arg_0));
    var var_2 = Struct_5(abs(u_input.a.wy));
    let var_3 = u_input.a.x;
    return Struct_1(4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, ~3675u), vec2<u32>(~23265u, arg_1)) % 32u), countOneBits(_wgslsmith_add_i32(min(select(-8393i, 16693i, true), ~arg_0), var_1.x)), 1u, -(~(-9170i)), -var_1.ww);
}

fn func_1() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(468f)), -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(1184f + -518f), -517f)), func_2(u_input.b, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 49110u, 104303u), vec4<u32>(4294967295u, 1u, 4172u, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), Struct_1(4294967295u ^ ~(u_input.a.x >> (u_input.a.x % 32u)), ~1i, u_input.a.x, global0.x, ~vec2<i32>(42764i, u_input.b ^ 1i)), 1i >> (u_input.a.x % 32u));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)), Struct_1(var_0.c.c, 1i ^ var_0.d, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.a.xwz, u_input.a.yyw), 4294967295u >> ((u_input.a.x | var_0.c.c) % 32u)), select(-47867i, ~(-7988i), true) << (u_input.a.x % 32u), vec2<i32>(~2147483647i | global0.x, firstLeadingBit(-45080i))), func_2(reverseBits(22835i) >> (u_input.a.x % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a, var_0.b.c, var_0.c.c), vec3<u32>(u_input.a.x, var_0.c.c, 4294967295u)), func_2(var_0.b.d, u_input.a.x).c), firstTrailingBit(reverseBits(u_input.a.x)))), ~(var_0.c.d | 52803i));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a))), Struct_1(1u, ~59321i, ~abs(0u), select(-1i, 533i, true), -_wgslsmith_mod_vec2_i32(global0.xz, vec2<i32>(22699i, global0.x)) & -vec2<i32>(var_0.c.e.x, var_0.c.d)), func_2(abs(countOneBits(~3453i)), 23263u), global0.x | max(select(~(-16950i), abs(1i), false), u_input.b));
    global0 = vec3<i32>(abs(abs(var_0.d)), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, 12561i, 6014i, var_0.b.d), -firstTrailingBit(vec4<i32>(var_0.b.b, 0i, u_input.b, var_0.d))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, 31891i) | abs(var_0.c.b), var_0.d, global0.x << (var_0.b.c % 32u))) & _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -30991i, 0i), vec3<i32>(-14910i, u_input.b, 0i)), -41483i), vec3<i32>(var_0.b.e.x, var_0.b.b, _wgslsmith_mult_i32(u_input.b >> (u_input.a.x % 32u), -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global0.x, u_input.b) & (vec3<i32>(var_0.c.e.x, global0.x, u_input.b) >> (u_input.a.wxx % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(global0.x, 67564i, -42808i)));
    var var_1 = Struct_3(Struct_1(u_input.a.x, u_input.b, ~53263u, ~(-2846i), -reverseBits(-vec2<i32>(0i, u_input.b))), true, func_2(_wgslsmith_div_i32(-var_0.b.d | -6902i, reverseBits(1i) ^ _wgslsmith_mult_i32(u_input.b, var_0.c.d)), _wgslsmith_dot_vec4_u32(~u_input.a ^ u_input.a, firstTrailingBit(~u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(531f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -117f) - _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))));
    return true & var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(0u, 4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(741f + 1000f), -435f, -591f)));
    let var_2 = Struct_3(Struct_1(~(~(7586u << (u_input.a.x % 32u))), 2147483647i, ~58085u, 0i, firstTrailingBit(abs(global0.zz)) << (~(u_input.a.yy << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))), func_1(), func_2(-1i, var_0), -689f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(982f, var_1.x, var_1.x, 865f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1213f, -1117f, 469f, var_2.d), vec4<f32>(-539f, 785f, var_2.d, -2184f), vec4<bool>(var_2.b, var_2.b, var_2.b, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.d, var_2.d, 539f, 1663f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1537f, -1061f) - vec4<f32>(-964f, var_1.x, var_1.x, -353f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-348f, -249f), -978f, _wgslsmith_f_op_f32(select(var_2.d, 993f, true)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(var_0, 21605i, 11718u, u_input.b, vec2<i32>(global0.x, -1i)), var_2.b, var_2.c, var_1.x), vec4<bool>(var_2.b, var_2.b, var_2.b, true), vec3<bool>(var_2.b, var_2.b, var_2.b), Struct_2(var_1.zy, Struct_1(4294967295u, var_2.a.b, 51395u, global0.x, var_2.c.e), var_2.a, -2147483647i))).x), 1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(340f)))))), _wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(1145f - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -164f)))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(~var_0, 13888u), ~(~vec2<u32>(0u, var_0))), vec2<u32>(min(u_input.a.x ^ var_0, _wgslsmith_div_u32(24467u, 27357u)), _wgslsmith_dot_vec3_u32(~u_input.a.zzx, vec3<u32>(0u, u_input.a.x, 17699u)))), select(u_input.a.wx, max(u_input.a.yw, vec2<u32>(firstLeadingBit(71161u), countOneBits(u_input.a.x))), !var_2.b));
}

