struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 15373u, 1u, 1u, 28078u, 1u, 35716u, 49250u, 60721u, 1u, 4294967295u, 6596u, 4294967295u, 58352u, 75647u, 1u, 51286u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    let var_0 = Struct_2(arg_1.a, arg_1.b, arg_1.b);
    global0 = array<u32, 17>();
    return _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec4_u32(var_0.c.d, var_0.c.d));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = Struct_2(Struct_1(u_input.a.wxy, !vec4<bool>(true, all(vec2<bool>(arg_1.x, arg_1.x)), true, !arg_1.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 1u, 99828u), u_input.a.zyx), ~(vec3<u32>(u_input.a.x, 86583u, u_input.a.x) ^ vec3<u32>(4294967295u, 77529u, 1u))), vec4<u32>(global0[_wgslsmith_index_u32(abs(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 17u)])), 17u)], 21188u, func_2(vec3<i32>(-15946i, -1i, u_input.b), Struct_2(Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(84996u, 17u)], 4294967295u), arg_1, u_input.a.zxx, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), 0u), Struct_1(vec3<u32>(1u, 43185u, 0u), vec4<bool>(arg_1.x, true, false, arg_1.x), vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)]), u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), Struct_1(vec3<u32>(1u, 1u, 90255u), arg_1, u_input.a.yzz, vec4<u32>(u_input.a.x, u_input.a.x, 40231u, 4294967295u), 5875u))), _wgslsmith_sub_u32(abs(32990u), u_input.a.x & 70772u)), _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x) | ~(~global0[_wgslsmith_index_u32(2277u, 17u)])), Struct_1(u_input.a.zww, !arg_1, ~u_input.a.wyy & _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x, 103707u), vec3<bool>(arg_1.x, false, arg_1.x)), vec3<u32>(6737u, global0[_wgslsmith_index_u32(93798u, 17u)], 68558u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 0u, 0u) | vec3<u32>(49896u, u_input.a.x, global0[_wgslsmith_index_u32(1u, 17u)])), vec4<u32>(func_2(firstTrailingBit(vec3<i32>(arg_2, arg_2, u_input.b)), Struct_2(Struct_1(u_input.a.xzx, vec4<bool>(true, arg_1.x, arg_1.x, false), vec3<u32>(1u, 1u, 28973u), vec4<u32>(77214u, u_input.a.x, 8182u, u_input.a.x), 93889u), Struct_1(u_input.a.zxy, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec3<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<u32>(24389u, global0[_wgslsmith_index_u32(44497u, 17u)], 61340u, global0[_wgslsmith_index_u32(1u, 17u)]), u_input.a.x), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 1u, u_input.a.x), arg_1, vec3<u32>(0u, 0u, global0[_wgslsmith_index_u32(100021u, 17u)]), u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)]))), global0[_wgslsmith_index_u32(u_input.a.x << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)]), u_input.a.yy), 17u)] % 32u), 17u)], 1u, _wgslsmith_mod_u32(61959u, 4278u >> (0u % 32u))), ~1u), Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 4294967295u, 1u), u_input.a.wzy), vec3<u32>(20582u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)])), ~vec3<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(27822u, 17u)]) ^ _wgslsmith_sub_vec3_u32(u_input.a.xzz, vec3<u32>(36851u, u_input.a.x, 12461u)), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17745u), 17u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 17u)], 4294967295u), u_input.a.wxy), global0[_wgslsmith_index_u32(1u, 17u)])), arg_1, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 61434u), u_input.a.wyy)), firstTrailingBit(firstTrailingBit(max(vec4<u32>(4294967295u, 29237u, 51712u, 30508u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x, 8137u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))), ~u_input.a.x));
    global0 = array<u32, 17>();
    var_0 = Struct_2(Struct_1(~reverseBits(vec3<u32>(1u, 1u, var_0.c.c.x)), !select(var_0.a.b, var_0.a.b, !arg_1.x), ~vec3<u32>(_wgslsmith_sub_u32(5922u, var_0.c.c.x), global0[_wgslsmith_index_u32(44453u, 17u)], _wgslsmith_dot_vec3_u32(var_0.a.a, var_0.c.d.yyx)), u_input.a, global0[_wgslsmith_index_u32(1u ^ (reverseBits(4294967295u) << ((0u << (u_input.a.x % 32u)) % 32u)), 17u)]), Struct_1(vec3<u32>(var_0.c.d.x, ~0u, 112341u >> (var_0.c.d.x % 32u)), vec4<bool>(true, any(select(vec4<bool>(var_0.c.b.x, true, false, true), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x))), countOneBits(0i) > u_input.c, var_0.b.b.x), ~countOneBits(vec3<u32>(var_0.a.c.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], max(global0[_wgslsmith_index_u32(var_0.c.c.x, 17u)], global0[_wgslsmith_index_u32(27370u, 17u)]), u_input.a.x), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 4294967295u, 0u, u_input.a.x)), 4294967295u), var_0.c);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(1u, u_input.a.x, any(vec3<bool>(true, var_0.b.b.x, var_0.b.b.x))), ~(global0[_wgslsmith_index_u32(1u, 17u)] | var_0.c.e), firstTrailingBit(u_input.a.x), ~(u_input.a.x << (global0[_wgslsmith_index_u32(4294967295u, 17u)] % 32u))), var_0.a.d), 17u)] | 0u;
    var var_2 = var_0.c.a.x;
    return 41932u;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(72673u, global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0), global0[_wgslsmith_index_u32(func_2(vec3<i32>(u_input.b, 58989i, -2147483647i), Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(28582u, 17u)]), vec4<bool>(true, arg_1, false, arg_1), u_input.a.xxz, u_input.a, global0[_wgslsmith_index_u32(0u, 17u)]), Struct_1(u_input.a.yyy, vec4<bool>(false, arg_1, false, arg_1), u_input.a.xxy, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 98943u, 1u), arg_0), Struct_1(u_input.a.xwy, vec4<bool>(arg_1, arg_1, false, arg_1), vec3<u32>(32679u, u_input.a.x, 43743u), u_input.a, arg_0))), 17u)], ~arg_0) >> (14663u % 32u), ~4294967295u), 17u)];
    let var_1 = arg_1;
    var var_2 = var_0;
    let var_3 = vec4<i32>(select(-_wgslsmith_mult_i32(2147483647i, -1i), -43149i, true), u_input.c, ~(-30099i), 48453i);
    var_2 = _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, global0[_wgslsmith_index_u32(34327u, 17u)]), 17u)]) & (u_input.a.wy >> ((u_input.a.wy >> (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u)))) | vec2<u32>(1u, _wgslsmith_mult_u32(var_0, _wgslsmith_add_u32(7488u, u_input.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(6992u, u_input.a.x), ~(~vec2<u32>(0u, 15997u))));
    return Struct_1(~vec3<u32>((arg_0 ^ var_0) ^ 47002u, arg_0 << (~global0[_wgslsmith_index_u32(0u, 17u)] % 32u), reverseBits(u_input.a.x)), select(!select(select(vec4<bool>(true, true, arg_1, var_1), vec4<bool>(true, true, true, var_1), true), !vec4<bool>(true, var_1, false, arg_1), vec4<bool>(true, true, false, false)), vec4<bool>(arg_1, arg_1, !var_1 | all(vec4<bool>(var_1, true, false, var_1)), true), true), vec3<u32>(~func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1818f, 915f, 174f), vec3<f32>(1834f, -204f, -688f))), vec4<bool>(true, var_1, false, arg_1), -1i, _wgslsmith_f_op_f32(abs(-120f))), ~45763u, firstTrailingBit(reverseBits(4294967295u))), ~vec4<u32>(_wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 0u), _wgslsmith_div_u32(var_0, var_0)), func_2(-vec3<i32>(var_3.x, u_input.c, -2147483647i), Struct_2(Struct_1(vec3<u32>(30942u, 74150u, 22224u), vec4<bool>(false, var_1, var_1, true), u_input.a.wxy, u_input.a, 1u), Struct_1(vec3<u32>(21212u, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec4<bool>(false, false, true, true), u_input.a.zww, vec4<u32>(24520u, global0[_wgslsmith_index_u32(arg_0, 17u)], 1u, 1u), 83820u), Struct_1(vec3<u32>(4294967295u, 0u, 31822u), vec4<bool>(arg_1, var_1, arg_1, var_1), vec3<u32>(3092u, global0[_wgslsmith_index_u32(0u, 17u)], 8198u), vec4<u32>(arg_0, var_0, u_input.a.x, global0[_wgslsmith_index_u32(8870u, 17u)]), global0[_wgslsmith_index_u32(17816u, 17u)]))), _wgslsmith_sub_u32(~1u, u_input.a.x & var_0), ~min(var_0, 1u)), ~abs(0u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = arg_0.b.yx;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.c, u_input.a.zwz), vec3<u32>(_wgslsmith_div_u32(17297u, 1u), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1549f, 181f, -519f) + vec3<f32>(-667f, -758f, -446f)), vec4<bool>(arg_0.b.x, true, true, true), abs(1406i), _wgslsmith_f_op_f32(1000f + -745f)), arg_0.c.x) & u_input.a.xyx);
    let var_2 = _wgslsmith_f_op_f32(484f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-964f, _wgslsmith_f_op_f32(floor(-196f)), false)))));
    global0 = array<u32, 17>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(true, func_4(func_1(_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(17880u, 1u)), true), ~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79957u, 17u)], 17u)], 44158u), 17u)], 1i | (u_input.c & u_input.c)), all(vec4<bool>(true, true, true, true)));
    var var_1 = vec2<bool>(all(vec2<bool>(all(vec3<bool>(var_0, var_0, true)), true)), func_1(_wgslsmith_clamp_u32(firstLeadingBit(func_3(vec3<f32>(776f, 1092f, 2116f), vec4<bool>(true, var_0, var_0, true), u_input.b, -1000f)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.xwy, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))), 17u)], firstLeadingBit(~u_input.a.x)), var_0).b.x);
    let var_2 = Struct_2(func_1(u_input.a.x, true || any(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_0, var_1.x, true)))), Struct_1(~u_input.a.zyy, !vec4<bool>(all(vec2<bool>(false, var_1.x)), true, true, var_0), abs(_wgslsmith_mult_vec3_u32(~u_input.a.ywz, min(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(9534u, u_input.a.x, 0u)))), vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.wxz, ~vec3<u32>(71979u, 0u, 52074u)), ~1u, ~44935u, ~_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xw)), ~41025u), func_1(u_input.a.x ^ 4294967295u, true));
    let var_3 = var_2;
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(select(vec3<u32>(~3176u, func_2(vec3<i32>(33717i, u_input.b, u_input.c), Struct_2(var_3.c, var_3.a, Struct_1(vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23348u, 17u)], 17u)], 17u)]), vec4<bool>(var_2.c.b.x, true, var_2.c.b.x, var_0), vec3<u32>(var_2.b.a.x, 27045u, var_3.c.e), vec4<u32>(4294967295u, 69455u, 42992u, u_input.a.x), 40506u))), 1u), vec3<u32>(1u, 10877u, ~var_2.c.d.x), !select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_2.b.b.x, var_3.c.b.x), vec3<bool>(var_2.b.b.x, false, true))), var_2.b.d.xyx), select(var_2.c.b, var_3.a.b, !vec4<bool>(all(vec3<bool>(true, var_3.b.b.x, false)), true, false, select(var_1.x, true, false))), vec3<u32>(((54954u ^ var_3.c.e) & 32645u) >> (~(~u_input.a.x) % 32u), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(var_3.c.c.x, 17u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8210u, var_3.a.d.x, u_input.a.x), var_2.a.a), 4294967295u, global0[_wgslsmith_index_u32(7785u, 17u)])), 17u)], ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, var_2.b.d))), ~vec4<u32>(global0[_wgslsmith_index_u32(~var_3.b.c.x ^ _wgslsmith_sub_u32(1756u, 1527u), 17u)], 55634u, var_2.c.d.x << (1u % 32u), var_2.c.d.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.c.e, 6057u ^ ~u_input.a.x), 17u)], _wgslsmith_mod_u32(18261u, ~(~u_input.a.x))), 17u)]);
    let var_5 = func_1(_wgslsmith_add_u32(~53275u, _wgslsmith_div_u32(var_3.a.c.x, ~24253u >> (u_input.a.x % 32u))), (reverseBits(u_input.b) != 0i) | false);
    var_4 = Struct_1(~var_2.a.a, select(!select(select(vec4<bool>(true, true, false, false), var_2.b.b, vec4<bool>(var_3.a.b.x, true, var_5.b.x, var_5.b.x)), vec4<bool>(true, false, false, false), true), var_5.b, vec4<bool>(var_5.b.x, var_0, any(func_1(396u, var_3.c.b.x).b.xwz), true)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u << (global0[_wgslsmith_index_u32(var_5.e, 17u)] % 32u), _wgslsmith_add_u32(2778u, var_5.d.x), 4294967295u), var_2.a.d.wzw), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 52451u, 4294967295u), var_4.d), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_5.e, var_2.c.a.x, 61827u, var_3.a.a.x), var_3.a.d)), var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(~(~0u)), var_5.d.x), var_3.c.d.xzy);
}

