struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, vec3<i32>(-1183i, -37117i, -1i), 0i), Struct_1(true, vec3<i32>(-3797i, 2147483647i, 2147483647i), 12362i), Struct_1(true, vec3<i32>(31461i, 2147483647i, -30349i), -8282i), Struct_1(false, vec3<i32>(-59945i, -32025i, -1i), -1i), Struct_1(true, vec3<i32>(19292i, 2147483647i, 2147483647i), 1i), Struct_1(false, vec3<i32>(0i, 1i, 8205i), 25936i), Struct_1(false, vec3<i32>(8415i, -41956i, 26307i), -11446i), Struct_1(false, vec3<i32>(1i, 252i, 1i), 36283i), Struct_1(true, vec3<i32>(31308i, -6354i, 1i), i32(-2147483648)), Struct_1(true, vec3<i32>(41478i, 2147483647i, -16217i), 38401i), Struct_1(false, vec3<i32>(41321i, 1i, 46203i), -1i), Struct_1(false, vec3<i32>(1i, i32(-2147483648), 2147483647i), 25354i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(249f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x)), _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(trunc(var_0)));
    return -(~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -30527i, 26903i), vec3<i32>(u_input.b.x, u_input.b.x, 0i)), vec3<i32>(1i, 1i, 1i), abs(u_input.b.xzy))) | _wgslsmith_mod_vec3_i32(u_input.b.zxw, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), -vec3<i32>(-60060i, 2147483647i, u_input.b.x)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(true, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, arg_0.x, arg_0.x) * vec3<f32>(-1165f, 1800f, arg_0.x))))), u_input.b.x | reverseBits(min(1i, u_input.b.x) | u_input.b.x));
    let var_1 = vec3<bool>(var_0.a, any(select(select(!vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), all(vec3<bool>(true, var_0.a, false))), !select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), var_0.a), false)), var_0.a);
    var var_2 = u_input.a.x;
    var var_3 = u_input.a.x ^ (_wgslsmith_clamp_u32(1u, reverseBits(u_input.a.x), u_input.c) << (((u_input.c ^ select(0u, 0u, var_0.a)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 42416u, u_input.c), vec3<u32>(u_input.a.x, 1u, 1u))) % 32u));
    var var_4 = !any(vec2<bool>(false, false));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(1u, abs(36857u) ^ u_input.a.x))), 12u)];
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_1.x;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(max(~(~_wgslsmith_sub_u32(u_input.c, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 43614u, u_input.a.x), vec3<u32>(23244u, u_input.c, 27795u)) ^ abs(4294967295u)), 12u)]);
    global0 = -countOneBits(var_1.a.c) <= _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(abs(u_input.b.x), ~u_input.b.x), _wgslsmith_add_i32(-u_input.b.x, arg_2.b.x)), arg_2.c);
    var var_2 = vec4<u32>(u_input.a.x >> (~(~1u) % 32u), abs(u_input.c), min(1u >> (max(u_input.a.x, u_input.a.x) % 32u), ~(~u_input.c)) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(66533u, 4294967295u, 48108u, u_input.a.x), firstLeadingBit(vec4<u32>(u_input.c, u_input.a.x, u_input.c, 4294967295u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c), vec4<u32>(54031u, 1u, u_input.c, 57559u)))), ~(23610u >> ((u_input.a.x | 71881u) % 32u)));
    global0 = var_1.a.a;
    return !var_1.a.a;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = -386f;
    let var_1 = !select(select(vec3<bool>(true, 0u < u_input.c, any(vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a))), select(vec3<bool>(true, true, false), select(vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.a.a, false), vec3<bool>(false, true, false)), true), !(!vec3<bool>(arg_1.a.a, true, arg_1.a.a))), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_1.a.a, arg_1.a.a), false && arg_1.a.a), vec3<bool>(arg_1.a.a, true, true), false), vec3<bool>(func_4(u_input.b.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(652f, -259f), vec2<f32>(var_0, var_0))), func_2(vec3<f32>(-777f, 1483f, 412f))), arg_1.a.a, true));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, ~_wgslsmith_add_u32(u_input.a.x, arg_0), 1u), ~vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(513u, 16628u, 81891u, 1u) & vec4<u32>(u_input.a.x, 0u, 14001u, 1259u), ~vec4<u32>(arg_0, arg_0, arg_0, u_input.c)), ~1u));
    var var_3 = global1[_wgslsmith_index_u32(~(~var_2.x), 12u)];
    var var_4 = 49326u;
    return arg_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = true;
    global0 = !any(select(vec2<bool>(!arg_0.a.a, arg_1.a), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(arg_2.a.a, arg_2.a.a), !vec2<bool>(arg_2.a.a, arg_2.a.a), select(vec2<bool>(arg_0.a.a, true), vec2<bool>(arg_2.a.a, true), vec2<bool>(arg_1.a, true)))));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((~max(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(69505u, u_input.c, u_input.c, u_input.c)) | vec4<u32>(18187u, u_input.a.x, u_input.c, 1u)) >> (~(~(vec4<u32>(1u, u_input.c, 4114u, 4294967295u) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), ~vec4<u32>(~(~u_input.a.x), u_input.c, u_input.c, 1u)), 12u)];
    var var_1 = select(select(vec3<i32>(~(-arg_2.a.b.x), 1i, _wgslsmith_mult_i32(-52889i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, var_0.b.x, u_input.b.x, arg_0.a.c), vec4<i32>(-1i, -1i, -2147483647i, var_0.b.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b >> (vec3<u32>(8682u, u_input.c, u_input.a.x) % vec3<u32>(32u)), func_3(vec3<f32>(-294f, 1176f, -962f))), vec3<i32>(arg_0.a.b.x, arg_1.c, arg_0.a.c) & arg_0.a.b), true), ~_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 55549i, u_input.b.x), _wgslsmith_mod_vec3_i32(-var_0.b, vec3<i32>(arg_0.a.c, var_0.b.x, 19070i) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)))), select(select(vec3<bool>(var_0.a, true, var_0.a), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.a, false), vec3<bool>(arg_0.a.a, true, false), vec3<bool>(arg_2.a.a, arg_2.a.a, false)), !vec3<bool>(arg_0.a.a, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(var_0.a, false, true), !vec3<bool>(arg_2.a.a, false, var_0.a))), !select(vec3<bool>(true, false, arg_0.a.a), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.a.a, arg_1.a), var_0.a), vec3<bool>(false, false, true)), arg_2.a.a));
    var_0 = arg_0.a;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_5(Struct_2(Struct_1(false, u_input.b.xyx, u_input.b.x)), func_1(u_input.c, Struct_2(Struct_1(true, u_input.b.zyy, 37733i))), Struct_2(global1[_wgslsmith_index_u32(u_input.c, 12u)])), u_input.a.x) | u_input.a.x, 12u)]);
    global0 = var_0.a.a;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(378f)))))))));
    var var_2 = Struct_2(var_0.a);
    var var_3 = Struct_2(var_0.a);
    let var_4 = Struct_2(Struct_1(u_input.b.x >= _wgslsmith_clamp_i32(~(-6081i), -2147483647i, -1i), -vec3<i32>(28502i, var_3.a.c, _wgslsmith_clamp_i32(-339i, -1i, 34553i)), 10585i));
    var var_5 = var_4;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(var_0.a.c, 28158i), -u_input.b.x, ~var_4.a.b.x), vec3<i32>(-var_0.a.c, 1i << (countOneBits(u_input.a.x) % 32u), var_0.a.b.x)), vec4<f32>(_wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(step(1693f, _wgslsmith_f_op_f32(f32(-1f) * -444f)))), _wgslsmith_f_op_f32(-var_1), -747f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1))));
}

