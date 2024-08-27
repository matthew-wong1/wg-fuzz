struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = 208f;
    let var_1 = Struct_3(Struct_2(countOneBits(vec4<i32>(_wgslsmith_mult_i32(0i, -1i), -1i, arg_0.a.x, ~arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), Struct_1(~(~vec2<i32>(-1i, -19204i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-1196f - -1474f)), arg_0.a.x, reverseBits(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.b.x, 52427u), vec4<u32>(444u, 1u, u_input.b.x, 19403u), vec4<u32>(11043u, u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.b.x)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), all(vec3<bool>(false, false, true))))));
    var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_2 = !(select(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, false, true)) != all(vec2<bool>(false, true))) & true);
    var_0 = -1187f;
    return arg_0.b;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(arg_0.b.a, arg_0.a.c.b);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(-8883i, ~_wgslsmith_mod_i32(var_0.a.x, 4853i)), -_wgslsmith_mod_i32(18239i, _wgslsmith_div_i32(14312i, 0i ^ arg_0.b.a.x)), max(_wgslsmith_sub_i32(min(arg_0.a.a.x, var_0.a.x) | (arg_0.c >> (arg_0.d.x % 32u)), (arg_0.a.a.x | var_0.a.x) ^ 0i), reverseBits(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x) << (~4294967295u % 32u))));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_0.b))))));
    global0 = _wgslsmith_mod_i32(-var_0.a.x, -select((i32(-1i) * -2147483647i) << (firstTrailingBit(arg_0.d.x) % 32u), -2147483647i, true));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(~(-1i)), min(_wgslsmith_mult_i32(-arg_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(8648i, var_1.x, -7450i), arg_0.a.a.zwz)), _wgslsmith_sub_i32(-106i, 1i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.b.a.x), vec2<i32>(var_0.a.x, -56725i))), -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-63174i, -2147483647i, var_1.x), arg_0.a.a.xwy), vec3<i32>(arg_0.b.a.x, arg_0.a.a.x, -1i))), countOneBits(firstTrailingBit(~arg_0.a.a.ywx) ^ (vec3<i32>(var_0.a.x, var_0.a.x, var_1.x) << (u_input.c.ywy % vec3<u32>(32u)))));
    return Struct_2(vec4<i32>(~firstTrailingBit(-12377i), abs(-1i), 2147483647i, _wgslsmith_mod_i32(0i, abs(var_1.x))) | ~_wgslsmith_div_vec4_i32(vec4<i32>(24380i, -2147483647i, 1i, var_2.a.x), arg_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.b);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = func_2(Struct_3(func_2(Struct_3(Struct_2(arg_0.a, -369f, arg_0.c), Struct_1(arg_0.c.a, arg_0.c.b), min(arg_0.c.a.x, 26583i), ~u_input.a)), func_2(Struct_3(Struct_2(vec4<i32>(35800i, -2147483647i, 25410i, 65056i), arg_0.c.b, arg_0.c), arg_0.c, arg_0.a.x, abs(vec4<u32>(1u, u_input.b.x, 12010u, u_input.c.x)))).c, 0i, u_input.c)).c;
    global0 = arg_0.c.a.x;
    global0 = select(1i, _wgslsmith_mod_i32(arg_0.a.x, min(var_1.a.x | var_1.a.x, _wgslsmith_mult_i32(var_1.a.x, 29523i)) >> (26067u % 32u)), var_0);
    let var_2 = ~vec4<u32>(abs(109387u), u_input.a.x, ~u_input.a.x, 11865u);
    return Struct_1(min(arg_0.a.xx, var_1.a), _wgslsmith_f_op_f32(abs(arg_0.c.b)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(2238f, _wgslsmith_f_op_f32(-1115f - 393f), _wgslsmith_f_op_f32(-arg_1.c.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1116f, -1000f, arg_0.b.b) + vec3<f32>(196f, arg_1.b, arg_1.b)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.b)))) - arg_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 872f) + _wgslsmith_f_op_f32(select(-112f, _wgslsmith_f_op_f32(arg_0.b.b + 720f), true))), 1648f));
    let var_1 = !vec3<bool>(arg_2, any(select(!vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, arg_2, arg_2), false), vec3<bool>(arg_2, false, arg_2))), true);
    let var_2 = false;
    var var_3 = arg_0.a.c;
    global0 = arg_0.a.c.a.x;
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = func_5(Struct_3(Struct_2(vec4<i32>(1i, 2147483647i >> (1u % 32u), _wgslsmith_clamp_i32(arg_0, arg_0, arg_0), reverseBits(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * _wgslsmith_f_op_f32(step(arg_1, 178f))), func_4(func_2(Struct_3(Struct_2(vec4<i32>(arg_0, arg_0, arg_0, arg_0), arg_1, Struct_1(vec2<i32>(arg_0, -2144i), 194f)), Struct_1(vec2<i32>(24952i, arg_0), -2216f), 1i, vec4<u32>(5689u, u_input.a.x, 5571u, 58986u))))), func_4(Struct_2(vec4<i32>(arg_0, arg_0, 10071i, 0i), arg_1, Struct_1(vec2<i32>(arg_0, -2147483647i), 1872f))), -(2147483647i ^ arg_0), vec4<u32>(_wgslsmith_mod_u32(26313u, min(4294967295u, 44397u)), firstLeadingBit(0u) << (~u_input.c.x % 32u), 1u, 1u)), func_2(Struct_3(Struct_2(vec4<i32>(2147483647i, arg_0, arg_0, 2147483647i) | vec4<i32>(arg_0, -63669i, arg_0, arg_0), _wgslsmith_f_op_f32(select(arg_1, arg_1, true)), func_4(Struct_2(vec4<i32>(arg_0, 24545i, 15605i, -15329i), 226f, Struct_1(vec2<i32>(arg_0, -1i), -461f)))), func_2(Struct_3(Struct_2(vec4<i32>(arg_0, -32195i, arg_0, arg_0), 688f, Struct_1(vec2<i32>(44212i, arg_0), -662f)), Struct_1(vec2<i32>(-33862i, arg_0), arg_1), arg_0, u_input.c)).c, ~(-1i >> (u_input.c.x % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 1u, 66034u, u_input.a.x), ~u_input.c))), any(vec2<bool>(true, true)), -arg_0);
    global0 = ~2147483647i << (u_input.a.x % 32u);
    global0 = arg_0;
    var var_1 = func_2(Struct_3(func_2(Struct_3(Struct_2(vec4<i32>(-2147483647i, arg_0, 0i, var_0.a.x), arg_1, var_0), func_5(Struct_3(Struct_2(vec4<i32>(arg_0, arg_0, var_0.a.x, arg_0), var_0.b, var_0), var_0, -43666i, vec4<u32>(u_input.a.x, u_input.c.x, u_input.b.x, u_input.c.x)), Struct_2(vec4<i32>(arg_0, -2467i, var_0.a.x, var_0.a.x), var_0.b, var_0), false, 15292i), -1i, u_input.c)), var_0, -(func_5(Struct_3(Struct_2(vec4<i32>(1i, 1i, var_0.a.x, -5872i), arg_1, Struct_1(var_0.a, var_0.b)), var_0, var_0.a.x, vec4<u32>(u_input.b.x, 5472u, 0u, u_input.c.x)), Struct_2(vec4<i32>(arg_0, var_0.a.x, -15934i, 10799i), var_0.b, Struct_1(vec2<i32>(arg_0, 0i), 2177f)), false, arg_0).a.x | ~1i), ~vec4<u32>(~u_input.c.x, 4294967295u, _wgslsmith_mod_u32(u_input.a.x, 77442u), select(u_input.c.x, 23315u, false))));
    let var_2 = Struct_3(Struct_2(firstLeadingBit(vec4<i32>(2147483647i, ~var_0.a.x, var_1.a.x, func_2(Struct_3(Struct_2(vec4<i32>(-1i, 12216i, var_0.a.x, -1i), 1229f, var_1.c), Struct_1(var_1.c.a, -1037f), -8563i, u_input.a)).a.x)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(var_0.b * var_1.c.b)), Struct_1(var_1.c.a, 155f)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(func_5(Struct_3(Struct_2(var_1.a, var_1.c.b, Struct_1(var_1.a.wy, var_0.b)), var_1.c, var_1.a.x, u_input.a), Struct_2(vec4<i32>(1i, 0i, -5595i, var_1.c.a.x), 670f, var_1.c), true, var_1.c.a.x).a.x, _wgslsmith_mult_i32(0i, 11264i)), ~max(var_1.c.a, vec2<i32>(arg_0, var_1.c.a.x)), ~(vec2<i32>(arg_0, -28425i) & vec2<i32>(2147483647i, arg_0))), _wgslsmith_f_op_f32(var_0.b - arg_1)), -_wgslsmith_sub_i32(firstTrailingBit(arg_0), var_1.a.x) ^ (6259i & var_0.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a ^ vec4<u32>(18663u, u_input.a.x, 1u, u_input.b.x), ~(~u_input.c)), vec4<u32>(u_input.a.x, u_input.b.x, _wgslsmith_add_u32(u_input.a.x ^ 8078u, ~48635u), 18319u)));
    return _wgslsmith_div_i32(arg_0, ~var_1.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(abs(vec4<i32>(func_1(0i, -1186f), _wgslsmith_mult_i32(6181i, -16222i), ~(-28832i), ~29092i)), _wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(f32(-1f) * -2341f)), Struct_1(func_4(func_2(Struct_3(Struct_2(vec4<i32>(2147483647i, -2147483647i, 0i, 2147483647i), -1000f, Struct_1(vec2<i32>(0i, -2862i), -1000f)), Struct_1(vec2<i32>(2147483647i, 1i), 538f), -1i, u_input.a))).a, -1000f)), func_5(Struct_3(func_2(Struct_3(Struct_2(vec4<i32>(-1i, 2147483647i, -1i, 15881i), 554f, Struct_1(vec2<i32>(1i, 46599i), -1568f)), Struct_1(vec2<i32>(-1i, 24608i), -1000f), 2147483647i, vec4<u32>(5214u, u_input.c.x, 19512u, 77712u))), func_2(Struct_3(Struct_2(vec4<i32>(-9919i, 0i, 1i, 1i), 555f, Struct_1(vec2<i32>(0i, 0i), -1000f)), Struct_1(vec2<i32>(-18516i, -32484i), 2618f), 2147483647i, u_input.a)).c, firstLeadingBit(countOneBits(-35761i)), select(~vec4<u32>(4294967295u, u_input.b.x, 1u, 102632u), countOneBits(vec4<u32>(u_input.a.x, 66725u, u_input.a.x, 0u)), vec4<bool>(false, true, false, true))), Struct_2(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -763f))), Struct_1(func_5(Struct_3(Struct_2(vec4<i32>(-1i, -48911i, 2147483647i, 0i), -115f, Struct_1(vec2<i32>(-2147483647i, 2147483647i), -559f)), Struct_1(vec2<i32>(0i, 20735i), 832f), -4836i, u_input.c), Struct_2(vec4<i32>(-66141i, -33778i, 584i, 0i), -542f, Struct_1(vec2<i32>(2147483647i, -18220i), -1677f)), false, 70376i).a, _wgslsmith_f_op_f32(-768f - 180f))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), abs(abs(0i))), -3555i, ~u_input.c);
    var var_1 = var_0;
    let var_2 = func_4(var_0.a);
    var var_3 = 1i;
    let var_4 = _wgslsmith_mod_vec3_i32(firstLeadingBit(~var_0.a.a.wyx), vec3<i32>(abs(-_wgslsmith_add_i32(57582i, var_2.a.x)), var_0.c, abs(max(24582i, _wgslsmith_clamp_i32(var_1.b.a.x, var_2.a.x, -1i)))));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.d.x >> (54735u % 32u)));
}

