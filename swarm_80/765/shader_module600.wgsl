struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(abs(_wgslsmith_sub_u32(u_input.b ^ (u_input.b << (u_input.b % 32u)), ~firstTrailingBit(45241u))), ~u_input.b, 0u, reverseBits(u_input.b));
    let var_1 = _wgslsmith_mod_vec3_u32(~var_0.wzw, var_0.yxy);
    global0 = array<vec3<f32>, 24>();
    var var_2 = Struct_1(firstTrailingBit(0u) | 1u, 22402u, max(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(87211i, -2147483647i, u_input.a)), vec3<i32>(-86300i, -35348i, u_input.a) >> (var_1 % vec3<u32>(32u)))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(43131i, -25847i)), vec2<i32>(~u_input.a, 1i))), 292f);
    let var_3 = u_input.b;
    return _wgslsmith_clamp_u32(firstTrailingBit(select(~4355u, 4294967295u, true)), 0u, var_3);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = select(select(vec4<bool>(all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), arg_1)), !select(false, arg_1, arg_1), arg_1, max(-1i, 2147483647i) >= arg_2.d), select(vec4<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, false)), true, all(vec3<bool>(false, arg_1, true)), arg_1), !(!vec4<bool>(false, arg_1, arg_1, arg_1)), !(arg_2.a.c.x >= arg_0.b.a.c.x)), vec4<bool>(arg_1, arg_1, arg_1, false)), vec4<bool>(!any(!vec3<bool>(false, arg_1, arg_1)), false & !(!arg_1), false, true), !select(select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, true, true, arg_1)), vec4<bool>(true, true, false, arg_1), arg_1), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, false), true), vec4<bool>(arg_1 & false, true, true, all(vec3<bool>(arg_1, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(897f - arg_2.c.d), _wgslsmith_f_op_f32(max(arg_0.a.x, -882f)), true)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(203f)))))), arg_2.b));
    global0 = array<vec3<f32>, 24>();
    let var_2 = Struct_2(arg_2.c, 1593f, arg_3, countOneBits(1i));
    let var_3 = arg_0;
    return _wgslsmith_mult_u32(arg_3.b, u_input.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, 232f, 205f) * vec3<f32>(1385f, -246f, 2872f)), Struct_2(Struct_1(0u, u_input.b, vec2<i32>(2147483647i, -27321i), 586f), -1605f, Struct_1(u_input.b, u_input.b, vec2<i32>(2147483647i, 0i), -119f), u_input.a), vec3<u32>(u_input.b, 31892u, 1u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1215f, -721f, 1411f, 825f), vec4<f32>(-2476f, -529f, 1508f, 640f), arg_0.x))), all(arg_0.zw), Struct_2(Struct_1(u_input.b, 4294967295u, vec2<i32>(0i, arg_1), -1081f), _wgslsmith_f_op_f32(1000f * -418f), Struct_1(u_input.b, 0u, vec2<i32>(u_input.a, arg_1), 1000f), -2147483647i), Struct_1(func_3(), ~138925u, vec2<i32>(-2147483647i, 28586i), -1171f)), 24u)])), Struct_2(Struct_1(min(u_input.b, 4294967295u) & u_input.b, 1u, vec2<i32>(firstLeadingBit(arg_1), firstLeadingBit(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(101f * 795f))) - -614f), Struct_1(firstLeadingBit(u_input.b), _wgslsmith_sub_u32(u_input.b, ~u_input.b), vec2<i32>(61973i, u_input.a ^ 1i), _wgslsmith_f_op_f32(f32(-1f) * -2393f)), 0i), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), select(vec3<u32>(83188u, u_input.b, 57322u) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b, 6683u), arg_0.x)), ~vec3<u32>(u_input.b, ~4294967295u, ~u_input.b), arg_0.wyx), vec4<f32>(_wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(751f + -192f)), _wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f - -238f) + -675f)), _wgslsmith_f_op_f32(-1000f * -1067f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 22952u), var_0.c), 24u)])))), var_0.b, _wgslsmith_div_vec3_u32(var_0.c, min((vec3<u32>(11244u, var_0.c.x, 4294967295u) & var_0.c) | abs(var_0.c), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<u32>(1u, u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.d))) * var_0.d));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -523f);
    global0 = array<vec3<f32>, 24>();
    var var_2 = var_0.b.d;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(-1127f * 681f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-472f, 589f), 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -123f)), var_0.b, ~var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(var_0.a.x - 536f), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)), var_0.d.x), _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.d)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> bool {
    global0 = array<vec3<f32>, 24>();
    var var_0 = vec4<u32>(~arg_0.c.x, 1u, func_3(), ~reverseBits(~21447u));
    global0 = array<vec3<f32>, 24>();
    let var_1 = vec4<i32>(func_2(arg_2, ~(-32524i)).b.a.c.x, 1i, firstLeadingBit(_wgslsmith_clamp_i32(abs(firstLeadingBit(arg_0.b.c.c.x)), arg_0.b.c.c.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, arg_0.b.c.c.x, u_input.a), vec3<i32>(u_input.a, u_input.a, arg_0.b.a.c.x), vec3<bool>(true, arg_2.x, arg_2.x)), vec3<i32>(-2147483647i, -2147483647i, 62097i)))), (func_2(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-61790i, arg_0.b.a.c.x, arg_0.b.d))).b.d | -arg_0.b.c.c.x) ^ 1i);
    var var_2 = func_2(select(vec4<bool>(select(!arg_2.x, true, arg_2.x), false, arg_2.x, arg_2.x), arg_2, select(!select(vec4<bool>(true, false, false, arg_2.x), arg_2, vec4<bool>(arg_2.x, true, arg_2.x, true)), !select(arg_2, vec4<bool>(arg_2.x, true, false, false), true), arg_2)), min(4938i, u_input.a)).b.a;
    return !(!arg_2.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    let var_0 = arg_2.x;
    var var_1 = ~vec4<i32>(_wgslsmith_mult_i32(abs(max(0i, -1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0, arg_3.a.c.x, 2147483647i, arg_2.x), vec4<i32>(u_input.a, var_0, 1i, 31145i))), -1i, -2147483647i, ~(-(arg_0.x & -13013i)));
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    let var_2 = min(vec2<i32>(-2147483647i, -7142i), arg_0.yz);
    return !select(true, arg_1, func_5(func_2(!vec4<bool>(false, arg_1, true, true), 1i), ~countOneBits(vec3<u32>(arg_3.a.a, arg_3.c.b, u_input.b)), vec4<bool>(arg_1, any(vec2<bool>(arg_1, arg_1)), false, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b, ~reverseBits(u_input.b), u_input.b | u_input.b) ^ ~vec3<u32>(1u, (u_input.b | 0u) & 1u, ~(~u_input.b));
    var var_1 = !select(!vec4<bool>(func_1(vec3<i32>(0i, 2147483647i, u_input.a), true, vec3<i32>(u_input.a, 0i, -58836i), Struct_2(Struct_1(0u, u_input.b, vec2<i32>(-9700i, 36763i), -473f), 2190f, Struct_1(var_0.x, 1u, vec2<i32>(u_input.a, -1i), 446f), -2147483647i)), true, true, true), vec4<bool>(false, select(all(vec4<bool>(false, true, true, false)), u_input.a != -16701i, 33067i != u_input.a), select(true, select(true, true, true), any(vec3<bool>(false, true, true))), !func_5(Struct_3(vec3<f32>(-873f, -211f, 1000f), Struct_2(Struct_1(0u, u_input.b, vec2<i32>(u_input.a, u_input.a), 1647f), 404f, Struct_1(0u, var_0.x, vec2<i32>(u_input.a, u_input.a), -1497f), u_input.a), vec3<u32>(4294967295u, var_0.x, var_0.x), vec4<f32>(-836f, -138f, 1025f, -342f)), vec3<u32>(u_input.b, 0u, 1u), vec4<bool>(true, true, true, true))), true);
    let var_2 = ~(~abs(vec2<i32>(u_input.a, -2147483647i)));
    global0 = array<vec3<f32>, 24>();
    let var_3 = func_2(!select(select(vec4<bool>(var_1.x, false, true, true), !vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(false, true, false, true)), vec4<bool>(!var_1.x, true, false, false), any(vec3<bool>(true, true, true))), u_input.a).b;
    var var_4 = func_2(!select(!(!vec4<bool>(true, false, var_1.x, var_1.x)), vec4<bool>(func_5(Struct_3(global0[_wgslsmith_index_u32(var_0.x, 24u)], Struct_2(Struct_1(128000u, var_3.c.a, vec2<i32>(var_2.x, 26889i), var_3.a.d), 700f, var_3.a, var_3.d), vec3<u32>(var_0.x, var_3.a.a, 52750u), vec4<f32>(var_3.a.d, -654f, var_3.a.d, var_3.a.d)), vec3<u32>(var_3.c.b, var_0.x, var_0.x), vec4<bool>(false, var_1.x, true, var_1.x)), var_1.x, true, var_1.x && var_1.x), var_1.x), select(-24630i, 1i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_3.a.c.x, u_input.a, -58311i), vec4<i32>(-1i, var_2.x, -7221i, var_2.x)), var_1.x | var_1.x)).b.c;
    let x = u_input.a;
    s_output = StorageBuffer(-22852i);
}

