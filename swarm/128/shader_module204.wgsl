struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = ~(~_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c, 4294967295u, u_input.a), vec3<u32>(86848u, arg_0, global0.x), false), vec3<u32>(56395u, arg_0, arg_0))) & ~(~vec3<u32>(~arg_0, _wgslsmith_mod_u32(29857u, global0.x), ~arg_0));
    let var_0 = 1i;
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(26192u, _wgslsmith_sub_u32(u_input.a, u_input.c), global0.x), countOneBits(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(28464u, 24807u), arg_0), select(1u, 0u, arg_0 >= global0.x), global0.x)));
    global1 = array<f32, 29>();
    let var_1 = vec4<bool>(false, false | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))), all(select(vec4<bool>(global0.x == 0u, false, false, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), all(vec2<bool>(true, true)))), !(!any(vec4<bool>(false, false, false, false))));
    return -25123i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(53761u, 29u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(459u, 29u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, global1[_wgslsmith_index_u32(1u, 29u)], -160f))))));
    global1 = array<f32, 29>();
    let var_1 = Struct_5(Struct_3(abs(func_3(53975u)), select(true, false, any(vec3<bool>(false, false, false)))), (4294967295u & (global0.x | global0.x)) | (~min(global0.x, 9239u) ^ global0.x), vec3<i32>(u_input.b.x, -29317i, 23651i));
    var var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, var_1.c.x), vec3<i32>(var_1.a.a, -24914i, u_input.b.x)), _wgslsmith_div_i32(-28347i, 41187i | u_input.b.x)), u_input.b.yyx);
    var_2 = ~(-(~(~(-20058i))));
    return Struct_2(var_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    let var_0 = Struct_5(Struct_3(15125i, 678f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1745f * arg_0.a.a.x), arg_0.a.a.x))), _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(global0.x, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.c, 0u, u_input.a, global0.x), arg_1.x)), vec4<u32>(u_input.c, u_input.c, ~82053u, ~68232u)), u_input.b.wyx);
    global1 = array<f32, 29>();
    var var_1 = var_0.a.b;
    let var_2 = Struct_4((i32(-1i) * -arg_2) >= arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a.x, -812f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) - -152f)) - arg_0.a.a), select(select(arg_1.wxw, select(select(arg_1.xwx, arg_1.zxx, arg_1.yzx), !arg_1.xzw, var_0.a.b), any(arg_1)), vec3<bool>(var_0.a.b, true, !any(vec2<bool>(arg_1.x, var_0.a.b))), (1i & min(-1051i, arg_2)) <= _wgslsmith_add_i32(0i, u_input.b.x)));
    global1 = array<f32, 29>();
    return -320f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = 22922i;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(-1147f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0.x), 29u)]))))));
    let var_2 = _wgslsmith_f_op_f32(func_4(func_2(), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec2<bool>(true, false)), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(false, (arg_1.x >= -33492i) && any(vec4<bool>(false, true, false, false)), true, !any(vec3<bool>(true, true, false)))), 23183i));
    let var_3 = firstTrailingBit(global0.yx);
    global0 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(firstLeadingBit(var_3.x), ~global0.x, u_input.a)), ~vec3<u32>(var_3.x, 1u, ~u_input.c) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, global0.x, 4294967295u), vec3<u32>(52584u, 4294967295u, var_3.x) >> (vec3<u32>(u_input.a, 1u, var_3.x) % vec3<u32>(32u))), vec3<u32>(max(40978u, 1u), ~0u, select(0u, u_input.a, false))) % vec3<u32>(32u)));
    return ((~vec3<u32>(1u, 22856u, var_3.x) | vec3<u32>(abs(var_3.x), _wgslsmith_sub_u32(u_input.a, global0.x), ~62832u)) << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(56882u, 4294967295u, 1u) >> (vec3<u32>(0u, global0.x, 7408u) % vec3<u32>(32u)), vec3<u32>(0u, var_3.x, 52070u), vec3<bool>(true, false, false)), ~(vec3<u32>(u_input.a, 60251u, global0.x) | vec3<u32>(global0.x, var_3.x, u_input.c))) % vec3<u32>(32u))) << (vec3<u32>(global0.x, ~global0.x, reverseBits(abs(reverseBits(4294967295u)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0.x, global0.x, 13768u)), ~vec3<u32>(36379u, 11590u, u_input.c))), global0.x, global0.x), max((max(vec3<u32>(60257u, global0.x, global0.x), vec3<u32>(7704u, u_input.c, 36798u)) & ~vec3<u32>(1u, u_input.c, global0.x)) ^ _wgslsmith_add_vec3_u32(func_1(vec4<i32>(-2147483647i, 34351i, 14275i, u_input.b.x), u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c, 5043u), vec3<u32>(global0.x, u_input.c, u_input.c))), max(vec3<u32>(2000u, u_input.c, global0.x), vec3<u32>(u_input.c, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(33813u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))))));
    global0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23876u, u_input.c, 28091u), func_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1i, -33832i, u_input.b.x, u_input.b.x))) | _wgslsmith_sub_u32(countOneBits(u_input.a), ~u_input.c), global0.x, _wgslsmith_dot_vec2_u32(countOneBits(min(vec2<u32>(global0.x, 4294967295u), global0.zx)), reverseBits(vec2<u32>(44686u, 67451u))));
    var var_0 = func_2().a;
    let var_1 = Struct_5(Struct_3(-firstLeadingBit(countOneBits(u_input.b.x)), !(any(vec3<bool>(false, true, true)) & false)), ~global0.x, u_input.b.xyw);
    global0 = _wgslsmith_mult_vec3_u32(firstTrailingBit(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 1u, var_1.b), firstLeadingBit(vec3<u32>(0u, var_1.b, 4294967295u))))), abs(firstLeadingBit(~func_1(vec4<i32>(39414i, var_1.a.a, -2147483647i, var_1.a.a), u_input.b))));
    let var_2 = ~var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_add_vec3_i32(var_1.c, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_2.x, var_2.x, 1i), reverseBits(vec3<i32>(2147483647i, var_1.c.x, 1227i)), vec3<i32>(var_1.c.x, u_input.b.x, 43962i)), reverseBits(~var_1.c))), _wgslsmith_f_op_vec2_f32(-var_0.a.xy));
}

