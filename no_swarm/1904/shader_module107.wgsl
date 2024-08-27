struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = array<vec2<i32>, 27>();
    let var_0 = Struct_1(firstLeadingBit(u_input.c.x ^ ~u_input.a), ~(-19989i));
    var var_1 = countOneBits(abs(1i));
    let var_2 = Struct_2(u_input.a, vec3<bool>(false, true, false), ~min(-vec4<i32>(var_0.b, -4009i, var_0.b, var_0.b), -vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b)) << (vec4<u32>(_wgslsmith_add_u32(72278u, 0u), countOneBits(u_input.c.x), _wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(arg_0.x, var_0.a)) & ~6244u, max(~u_input.e, ~138755u)) % vec4<u32>(32u)), (_wgslsmith_dot_vec3_u32(arg_0, u_input.c << (vec3<u32>(arg_0.x, var_0.a, u_input.a) % vec3<u32>(32u))) < u_input.e) & (true | any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))));
    let var_3 = Struct_2(0u ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 4294967295u), arg_0.yz)), var_2.b, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-322f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-372f))))));
    return vec4<u32>(((var_0.a | var_3.a) & _wgslsmith_mod_u32(21926u, u_input.b)) | var_3.a, var_2.a, ~16670u, 4294967295u) ^ (~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.x, 68836u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(44476u, 1134u, 1u, 57092u), vec4<u32>(var_0.a, 4294967295u, arg_0.x, 39166u)), ~vec4<u32>(arg_0.x, 29712u, 0u, var_3.a)) & _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(75466u, var_2.a, var_0.a, 0u), vec4<u32>(38116u, var_0.a, var_0.a, 39196u)), vec4<u32>(arg_0.x, 0u, var_2.a, arg_0.x) ^ vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.d)), ~vec4<u32>(arg_0.x, 1u, 30261u, var_3.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<u32> {
    global0 = array<vec2<i32>, 27>();
    var var_0 = Struct_2(arg_1.a, arg_2.wxw, ~reverseBits(vec4<i32>(-arg_1.b, _wgslsmith_div_i32(-38968i, -1i), -arg_0.x, -1i)), arg_2.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-884f, 1722f) + vec2<f32>(514f, 1419f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1337f, -675f), vec2<f32>(-1000f, -619f)))) * vec2<f32>(_wgslsmith_div_f32(-1000f, 1000f), -1035f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), 220f));
    var_0 = Struct_2(_wgslsmith_clamp_u32(1u, 94224u, 43890u), var_0.b, max(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, max(2147483647i, var_0.c.x), arg_1.b, _wgslsmith_mult_i32(arg_0.x, 0i)), abs(var_0.c)), vec4<i32>(var_0.c.x | 33840i, var_0.c.x, select(-1i, -1006i, false), 22475i)), !var_0.d);
    var_0 = Struct_2(arg_1.a, !arg_2.xww, max(-max(vec4<i32>(2147483647i, arg_1.b, -1i, arg_0.x), var_0.c), -_wgslsmith_add_vec4_i32(var_0.c, var_0.c)) ^ var_0.c, !var_0.b.x);
    return max(vec4<u32>(_wgslsmith_div_u32(arg_1.a, 37048u), firstTrailingBit(_wgslsmith_mod_u32(1u, 1u)), ~arg_1.a, firstTrailingBit(select(1u, 1u, true))), func_3(~u_input.c));
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<i32>, 27>();
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 2780f), _wgslsmith_f_op_f32(-1097f + 330f))) != _wgslsmith_f_op_f32(sign(-1664f))), true, true);
    let var_1 = 2147483647i >> ((u_input.d | firstTrailingBit(~(~21281u))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-957f + 777f);
    let var_3 = max(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.e, 0u), abs(vec4<u32>(u_input.b, u_input.e, u_input.b, 0u))), countOneBits(vec4<u32>(35588u, 0u, u_input.c.x, u_input.b))) | ~select(func_2(vec3<i32>(var_1, 0i, var_1), Struct_1(u_input.b, -2147483647i), vec4<bool>(false, var_0.x, true, var_0.x)), vec4<u32>(32059u, 1u, u_input.e, u_input.d), any(vec3<bool>(false, false, var_0.x))), ~vec4<u32>(57517u, 30596u, 1u, ~15869u) << (abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.c.x, 4294967295u, 1u), vec4<u32>(0u, u_input.c.x, 69262u, u_input.c.x))) % vec4<u32>(32u)));
    return Struct_2(~_wgslsmith_div_u32(~(~1u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(55903u, var_3.x, var_3.x), vec3<u32>(u_input.d, 33632u, u_input.b)), 1u)), vec3<bool>(true, true, all(!vec4<bool>(true, false, var_0.x, var_0.x))), (-vec4<i32>(-2147483647i, var_1, -22706i, 16546i) ^ ((vec4<i32>(var_1, var_1, var_1, 1i) | vec4<i32>(var_1, 2147483647i, var_1, var_1)) << (reverseBits(vec4<u32>(u_input.b, 25031u, var_3.x, 1u)) % vec4<u32>(32u)))) >> (var_3 % vec4<u32>(32u)), true);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, ~_wgslsmith_dot_vec3_u32(~u_input.c, firstLeadingBit(u_input.c))), u_input.c.xz), 27u)];
    var var_1 = ~vec2<u32>(arg_2, ~arg_2);
    var var_2 = Struct_1(_wgslsmith_mult_u32(~1u, var_1.x ^ (arg_1.a | ~7632u)), -_wgslsmith_clamp_i32(~var_0.x, -_wgslsmith_mult_i32(23780i, arg_1.c.x), var_0.x));
    global0 = array<vec2<i32>, 27>();
    var var_3 = -44895i;
    return 1i ^ (~(-(arg_1.c.x ^ var_2.b)) << (_wgslsmith_add_u32(reverseBits(~u_input.a), _wgslsmith_mult_u32(4294967295u, var_1.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mod_u32(u_input.e, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 10955u) & u_input.c.yz, u_input.c.yx)));
    let var_1 = Struct_2(var_0, !vec3<bool>(all(vec2<bool>(true, false)), (u_input.e > var_0) || true, false), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-1i >> (u_input.d % 32u), ~0i, 3003i >> (var_0 % 32u), 33224i), vec4<i32>(abs(-5910i), abs(-2147483647i), 75536i << (1u % 32u), _wgslsmith_mult_i32(725i, 14194i)), !all(vec3<bool>(false, true, true))), vec4<i32>(_wgslsmith_mod_i32(-12280i, ~0i), func_4(true, func_1(), 20039u & var_0), 1i, max(~(-5080i), 0i))), any(vec4<bool>(false, !all(vec4<bool>(false, true, true, false)), !all(vec4<bool>(false, false, false, false)), !any(vec3<bool>(true, true, false)))));
    global0 = array<vec2<i32>, 27>();
    let var_2 = Struct_1(_wgslsmith_sub_u32(u_input.d, ~(~(~16416u))), _wgslsmith_mult_i32(-2147483647i, var_1.c.x));
    global0 = array<vec2<i32>, 27>();
    var var_3 = var_2;
    global0 = array<vec2<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f) * _wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f - 175f)), !(true | var_1.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-469f - 503f), -3018f))), -1000f), vec3<f32>(_wgslsmith_f_op_f32(382f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(597f + -734f), -209f) - _wgslsmith_f_op_f32(f32(-1f) * -687f)), -1390f));
}

