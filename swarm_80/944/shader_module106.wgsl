struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    var var_0 = ~u_input.c;
    let var_1 = any(select(!select(vec4<bool>(false, true, arg_2, true), vec4<bool>(true, arg_2, true, false), true), vec4<bool>(arg_2, arg_2, !arg_2, !any(vec3<bool>(arg_2, arg_2, arg_2))), any(vec4<bool>(true, true, arg_2 || true, arg_2))));
    var var_2 = -u_input.c;
    var var_3 = Struct_1(-2147483647i, vec4<bool>(var_1, var_1, !(!arg_2), !all(vec2<bool>(arg_2, var_1))), arg_0, arg_1.x, select(!select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, arg_2), vec2<bool>(var_1, arg_2)), !vec2<bool>(false, var_1), !vec2<bool>(arg_2, arg_2)), vec2<bool>(arg_2, true), arg_2));
    let var_4 = Struct_1(var_3.a, vec4<bool>(arg_2, all(var_3.e), true, false), _wgslsmith_add_u32(24917u, ~max(u_input.a, u_input.a)), 967f, select(vec2<bool>(var_1, true), var_3.b.xw, select(!var_1, !arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(71402u, var_3.c, var_3.c, arg_0), vec4<u32>(arg_0, 0u, 4086u, 1462u)) < select(u_input.a, 23185u, false))));
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = vec2<i32>(reverseBits(0i), arg_1.a);
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, arg_3.x), _wgslsmith_dot_vec3_i32(arg_3 >> (vec3<u32>(29996u, arg_0.c, arg_1.c) % vec3<u32>(32u)), countOneBits(vec3<i32>(64372i, var_0.x, -21159i))))), !(!(!vec4<bool>(arg_0.b.x, arg_1.b.x, false, arg_0.e.x))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b.zy, abs(global0[_wgslsmith_index_u32(56407u, 29u)])), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(48714u, arg_1.c), u_input.b.zy))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(577f, -963f), arg_1.d)))), vec2<bool>(func_3(_wgslsmith_dot_vec3_u32(max(u_input.b, vec3<u32>(0u, 63361u, arg_1.c)), reverseBits(u_input.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d, arg_0.d, arg_1.d, arg_0.d))))), !arg_2, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, -926f))))), false));
    let var_2 = ~vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 50353u, u_input.b.x), vec3<u32>(u_input.a, arg_1.c, arg_0.c)), arg_0.c)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 4294967295u, arg_1.c, u_input.a), ~vec4<u32>(u_input.b.x, 4962u, arg_0.c, 15909u)), firstTrailingBit(14525u >> (arg_1.c % 32u))), _wgslsmith_add_u32(~(~45329u), countOneBits(select(arg_1.c, u_input.a, false))));
    let var_3 = arg_0;
    let var_4 = var_3.b.wxx;
    return arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    return func_2(arg_1, arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -403f), 184f, false)) >= 114f, vec3<i32>(u_input.c.x, arg_0.a, arg_1.a)).xzz;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(~((~u_input.e.x | _wgslsmith_sub_i32(u_input.e.x, 1i)) << (u_input.a % 32u)), -3957i);
    let var_1 = firstLeadingBit(u_input.e.x);
    let var_2 = func_4(Struct_1(var_0.x, select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), func_2(Struct_1(var_1, vec4<bool>(false, true, true, true), arg_0.x, 486f, vec2<bool>(true, true)), Struct_1(1i, vec4<bool>(true, true, true, true), u_input.a, -314f, vec2<bool>(false, false)), false, u_input.c), any(vec3<bool>(true, true, true))), vec4<bool>(any(vec2<bool>(false, false)), true, true, 10761u <= u_input.b.x)), 44914u, -1000f, vec2<bool>(true, true)), Struct_1(~(i32(-1i) * -u_input.e.x), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), 4294967295u, _wgslsmith_div_f32(-516f, _wgslsmith_f_op_f32(f32(-1f) * -1239f)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_3 = ((~arg_0.zx ^ max(select(vec2<u32>(u_input.a, arg_0.x), global0[_wgslsmith_index_u32(93568u, 29u)], true), arg_0.zw)) & select(vec2<u32>(~0u, _wgslsmith_sub_u32(arg_0.x, arg_0.x)), u_input.b.zx, true)) >> (max(vec2<u32>(_wgslsmith_mult_u32(u_input.a | 1u, min(1u, 1u)), ~(4294967295u & arg_0.x)), _wgslsmith_add_vec2_u32(abs(global0[_wgslsmith_index_u32(~arg_0.x, 29u)]), u_input.b.zy)) % vec2<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_clamp_i32(~max(~u_input.c.x, ~u_input.e.x), _wgslsmith_add_i32(var_0.x, abs(max(u_input.d, u_input.e.x))), ~16331i), select(!vec4<bool>(select(var_2.x, false, false), !var_2.x, func_2(Struct_1(var_1, vec4<bool>(false, false, var_2.x, var_2.x), 0u, 1422f, vec2<bool>(false, var_2.x)), Struct_1(var_0.x, vec4<bool>(var_2.x, false, var_2.x, var_2.x), 28334u, 2160f, var_2.xx), true, vec3<i32>(1i, 33385i, var_0.x)).x, true), vec4<bool>(true, any(vec4<bool>(true, var_2.x, var_2.x, false)), !any(var_2.yz), var_2.x), !(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), arg_0.x, -491f, var_2.zx);
    return Struct_1(_wgslsmith_mod_i32(firstLeadingBit(var_4.a), max(u_input.d, _wgslsmith_sub_i32(abs(var_1), ~(-1i)))), select(func_2(Struct_1(firstLeadingBit(11975i), vec4<bool>(true, true, true, true), ~15211u, var_4.d, var_4.b.zw), Struct_1(var_0.x, !vec4<bool>(var_4.e.x, var_2.x, var_4.b.x, true), var_4.c, _wgslsmith_f_op_f32(select(-254f, var_4.d, var_4.e.x)), vec2<bool>(var_2.x, var_2.x)), any(select(vec4<bool>(false, var_2.x, false, var_2.x), var_4.b, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, 0i, var_4.a) << (u_input.b % vec3<u32>(32u)), ~vec3<i32>(u_input.d, 2147483647i, u_input.d), abs(u_input.e.wyz))), func_2(Struct_1(~var_4.a, var_4.b, _wgslsmith_sub_u32(u_input.b.x, var_3.x), -723f, vec2<bool>(var_2.x, var_4.e.x)), Struct_1(select(96592i, -1i, false), var_4.b, arg_0.x, _wgslsmith_f_op_f32(var_4.d + var_4.d), vec2<bool>(true, true)), true, select(u_input.e.xyz, vec3<i32>(var_4.a, 2147483647i, 2147483647i) | u_input.c, var_4.b.xwx)), var_4.e.x | func_3(~60894u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, var_4.d, -347f, -269f)), !var_4.e.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(225f, 1367f))))), ~(arg_0.x >> (4294967295u % 32u)), _wgslsmith_f_op_f32(-var_4.d), vec2<bool>(any(var_4.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit((vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x) << (~vec4<u32>(0u, 0u, u_input.a, u_input.b.x) % vec4<u32>(32u))) >> (vec4<u32>(abs(u_input.b.x), ~0u, ~u_input.b.x, 1u) % vec4<u32>(32u))));
    let var_1 = var_0.a;
    let var_2 = var_0.e;
    let var_3 = vec4<f32>(-1152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_f_op_f32(-1132f + _wgslsmith_f_op_f32(ceil(426f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(trunc(-295f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(var_0.d, -652f, var_0.b.x)), var_0.d < var_0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(trunc(var_0.d)))), _wgslsmith_f_op_f32(trunc(1297f))))));
    var var_4 = var_3.x;
    global0 = array<vec2<u32>, 29>();
    var var_5 = vec3<i32>(-1655i, var_0.a, 0i);
    let var_6 = vec4<u32>(u_input.a, countOneBits(~_wgslsmith_sub_u32(countOneBits(u_input.b.x), 33411u)), select(46666u, min(~firstLeadingBit(53319u), 4294967295u), (~(-43487i) > var_0.a) | !(!var_2.x)), var_0.c);
    var_4 = -408f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(reverseBits(~1u), var_0.c), vec2<u32>(0u, firstTrailingBit(var_6.x) ^ var_6.x), 0u, ~(~u_input.a) >> (func_1(~(var_6 << (var_6 % vec4<u32>(32u)))).c % 32u));
}

