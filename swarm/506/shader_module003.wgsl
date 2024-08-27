struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global1: array<vec3<f32>, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec3<bool>, 30>();
    let var_0 = vec4<bool>(_wgslsmith_add_u32(0u, max(76468u >> (0u % 32u), min(1u, u_input.c.x))) <= u_input.d, true, all(select(vec2<bool>(true, true), !vec2<bool>(arg_0.b, arg_0.b), !arg_0.b)) & !arg_0.b, !arg_0.b);
    let var_1 = arg_0.b;
    global0 = array<vec3<bool>, 30>();
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(select(u_input.c.wzw, arg_0.a, select(!global0[_wgslsmith_index_u32(arg_0.c, 30u)], var_0.yxw, var_0.x)), u_input.c.wxy, u_input.c.xwy), !all(!vec3<bool>(var_0.x, var_1, var_1)), arg_0.c, _wgslsmith_mult_i32(u_input.a, arg_0.d));
    return max(_wgslsmith_mult_u32(arg_0.c, ~abs(u_input.d)), _wgslsmith_div_u32(var_2.a.x, 0u >> (arg_0.a.x % 32u))) & ~u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~56728i;
    var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1574f);
    let var_2 = Struct_1(arg_1.a, arg_0.b, 43702u, min(min(-u_input.b, firstLeadingBit(-114771i)), u_input.a));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-602f, -1000f)))), 1000f), -1472f, any(select(!vec2<bool>(arg_0.b, arg_1.b), !select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_1.b, var_2.b), false), !arg_0.b | false))));
    return Struct_1(_wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(select(u_input.c.wzy, arg_0.a, false), var_2.a), arg_0.a, 42137u <= _wgslsmith_div_u32(var_2.c, 10009u)), _wgslsmith_add_vec3_u32(vec3<u32>(99575u, func_3(arg_0), firstLeadingBit(arg_0.a.x)), ~firstLeadingBit(vec3<u32>(35654u, 4294967295u, 40713u)))), arg_0.b, _wgslsmith_mult_u32(u_input.d | ~select(u_input.c.x, 4294967295u, true), arg_0.c), firstLeadingBit(reverseBits(arg_0.d)) >> (arg_1.a.x % 32u));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, max(u_input.b, _wgslsmith_mult_i32(23226i, -1i)), 1724i), _wgslsmith_mult_vec3_i32((vec3<i32>(arg_0.d, arg_0.d, 24267i) & vec3<i32>(arg_0.d, arg_0.d, -22295i)) & vec3<i32>(u_input.b, arg_0.d, arg_0.d), min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_0.d, arg_0.d), vec3<i32>(2147483647i, -2147483647i, arg_0.d)), vec3<i32>(2147483647i, 1i, u_input.b)))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d, ~u_input.b, 2147483647i), -countOneBits(vec3<i32>(u_input.a, u_input.b, u_input.a)) >> (~u_input.c.zxw % vec3<u32>(32u))));
    global1 = array<vec3<f32>, 4>();
    let var_1 = vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), countOneBits(4294967295u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(arg_0.c, u_input.d)), 23213u) & arg_0.c, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), abs(u_input.c.x)), arg_0.c << (arg_0.c % 32u)), 3548u));
    var var_2 = ~min(abs(-var_0) | -vec3<i32>(u_input.a, var_0.x, 23604i), var_0);
    var_2 = (abs(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 49990i, u_input.a), var_0))) | ((~var_0 | var_0) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, var_1.x), var_1.x, var_1.x) % vec3<u32>(32u)))) >> (arg_0.a % vec3<u32>(32u));
    return 1f;
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1842f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec3<u32>(14512u, 22742u, 24667u), false, u_input.c.x, 40021i), Struct_1(vec3<u32>(u_input.d, 1u, 4294967295u), false, u_input.d, u_input.a)))))) - -866f));
    let var_1 = !func_2(func_2(Struct_1(firstLeadingBit(vec3<u32>(4294967295u, 3188u, 48719u)), 1i == u_input.b, select(37789u, 1u, false), u_input.a << (u_input.c.x % 32u)), Struct_1(vec3<u32>(0u, u_input.d, 0u), 9210i >= u_input.b, 42984u, u_input.b)), func_2(Struct_1(select(u_input.c.xzx, vec3<u32>(4294967295u, u_input.c.x, 4294967295u), global0[_wgslsmith_index_u32(1u, 30u)]), any(vec4<bool>(false, true, true, true)), firstTrailingBit(31018u), ~2147483647i), func_2(func_2(Struct_1(u_input.c.wxw, true, 148444u, -49467i), Struct_1(u_input.c.zwz, false, u_input.d, 2147483647i)), func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.d, u_input.d), true, u_input.d, -4571i), Struct_1(vec3<u32>(u_input.d, u_input.c.x, u_input.c.x), false, 10585u, u_input.b))))).b;
    var var_2 = func_2(func_2(func_2(Struct_1(vec3<u32>(9759u, u_input.c.x, 37355u), var_1, ~u_input.d, -5928i), Struct_1(u_input.c.yxw | vec3<u32>(52856u, 1u, u_input.d), var_1, _wgslsmith_div_u32(0u, 38131u), u_input.a)), func_2(func_2(func_2(Struct_1(vec3<u32>(u_input.c.x, 1u, 67450u), true, u_input.c.x, u_input.b), Struct_1(u_input.c.yxx, var_1, u_input.d, 2147483647i)), func_2(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 1u), false, u_input.d, 34993i), Struct_1(u_input.c.www, var_1, 1u, u_input.b))), Struct_1(vec3<u32>(u_input.c.x, 46388u, u_input.c.x), false, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.a, -2147483647i, u_input.b))))), Struct_1(vec3<u32>((u_input.d | u_input.d) | u_input.c.x, 9554u, select(u_input.c.x, u_input.d, true)), !any(vec2<bool>(false, var_1)), ~_wgslsmith_dot_vec4_u32(~u_input.c, countOneBits(vec4<u32>(u_input.c.x, 51250u, u_input.c.x, 4294967295u))), i32(-1i) * -20863i));
    var var_3 = ~_wgslsmith_sub_vec2_u32(var_2.a.yy, _wgslsmith_add_vec2_u32(var_2.a.xz, ~(~vec2<u32>(4294967295u, u_input.c.x))));
    var var_4 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(countOneBits(var_3.x ^ u_input.c.x), abs(_wgslsmith_mult_u32(6058u, u_input.c.x))), 0u);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    let var_1 = Struct_1(u_input.c.xwz, true, max(~_wgslsmith_mult_u32(u_input.c.x & u_input.c.x, ~15230u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.d), u_input.c.zy)), 2147483647i);
    let var_2 = vec2<f32>(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-606f)) * 1203f))));
    let var_3 = vec2<i32>(select(-8632i, -16819i >> (u_input.d % 32u), func_1() && func_2(var_1, var_1).b), u_input.a);
    let var_4 = ~(~(countOneBits(1492u) & ~(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(199f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), select(64418u & ~(~u_input.c.x), ~30933u ^ _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(var_1.a.x, 95898u, u_input.d, 11581u)), !var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f * 545f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -2300f))) * _wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(reverseBits(1u), 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0)), var_2.x, any(vec2<bool>(var_1.b, false))))), -(u_input.a >> (46081u % 32u)));
}

