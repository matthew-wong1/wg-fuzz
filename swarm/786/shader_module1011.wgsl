struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 36600u, 0u, 0u));

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(-1581f));
    let var_1 = !any(vec2<bool>(any(vec3<bool>(false, true, false)), true)) | true;
    var var_2 = min(vec4<i32>(max(u_input.b.x, u_input.b.x), -select(u_input.d.x, select(62057i, -23729i, true), var_1), (u_input.b.x << (_wgslsmith_div_u32(28629u, u_input.a.x) % 32u)) << (1u % 32u), ~(~u_input.b.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i) | u_input.b.zy, vec2<i32>(u_input.b.x, -25320i))), vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(abs(u_input.b.x), u_input.d.x >> (14945u % 32u)) >> (abs(36586u) % 32u), firstTrailingBit(~49479i), _wgslsmith_div_i32(u_input.b.x ^ 64631i, 0i)));
    global2 = 128f;
    var_2 = vec4<i32>(var_2.x, 21293i, _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.d.x, 72898i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_2.x, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, u_input.b.x, u_input.b.x), var_2.xwy))) ^ min(-33255i, 0i), 0i | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.b.zx, ~vec2<i32>(var_2.x, -2147483647i)), vec2<i32>(-u_input.b.x, ~u_input.d.x)));
    return firstLeadingBit(0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = vec4<u32>(func_3(), 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_3.zx, u_input.c) << (reverseBits(global0.a.x) % 32u), arg_1.a.d.x), arg_1.a.d.x);
    global0 = Struct_2(vec4<u32>(abs(_wgslsmith_add_u32(u_input.c.x, 4294967295u) ^ var_0.x), 46414u, _wgslsmith_div_u32(_wgslsmith_add_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 10263u), u_input.c)), 13620u), ~(~29275u)));
    return _wgslsmith_clamp_u32(30275u, ~firstTrailingBit(10330u), global0.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    let var_0 = vec3<bool>(false, !(arg_1 <= ((arg_0.d.x << (1u % 32u)) >> (arg_0.d.x % 32u))), ~func_2(vec4<bool>(true, true, true, true), Struct_4(arg_0), vec4<bool>(false, true, false, true), vec4<u32>(u_input.a.x, global0.a.x, 22556u, 4294967295u)) >= max(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 21150u, arg_0.d.x, 20255u), global0.a), global0.a ^ global0.a), reverseBits(1u)));
    global1 = _wgslsmith_clamp_u32(firstLeadingBit(~(~_wgslsmith_div_u32(1u, global0.a.x))), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 79869u)), arg_0.d) << (1u % 32u), arg_1);
    var var_1 = ~(~vec2<u32>(firstTrailingBit(~1u), ~0u));
    var var_2 = Struct_4(arg_0);
    var_1 = global0.a.wz;
    return Struct_4(Struct_1(~_wgslsmith_mult_i32(reverseBits(20435i), ~(-1i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1030f, arg_0.b.x, var_2.a.b.x, var_2.a.b.x))))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-32449i, 1447i), vec2<i32>(var_2.a.a, arg_0.c)), ~(~_wgslsmith_clamp_vec2_u32(arg_0.d, u_input.a, vec2<u32>(0u, 27640u)))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(max(~(~vec3<u32>(25770u, 1u, 19274u)), firstLeadingBit(global0.a.xwz) | global0.a.xwz), countOneBits(abs(_wgslsmith_add_vec3_u32(global0.a.zzx, global0.a.zzz)))), select(vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(global0.a.x, u_input.c.x), max(_wgslsmith_add_u32(4294967295u, arg_0.a.d.x), 19095u)), ~_wgslsmith_mult_vec3_u32(global0.a.wzx, vec3<u32>(0u, 0u, 36002u)), vec3<bool>(arg_1, any(vec2<bool>(false, arg_3)), true)));
    let var_1 = Struct_4(arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(arg_0.a, ~4294967295u).a.b.x));
    var var_3 = Struct_2(global0.a);
    var_3 = Struct_2(global0.a);
    return Struct_1(55394i, _wgslsmith_div_vec4_f32(func_1(var_1.a, 53494u).a.b, vec4<f32>(_wgslsmith_f_op_f32(step(1565f, _wgslsmith_f_op_f32(floor(1198f)))), _wgslsmith_f_op_f32(sign(var_1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)), arg_0.a.b.x)), -1i ^ abs(firstLeadingBit(reverseBits(u_input.b.x))), arg_2);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(any(vec2<bool>(true, true)), true & (u_input.c.x < select(23482u, 26661u, false)), true), vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true, any(vec3<bool>(true, true, true))));
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = 64247u;
    var var_1 = Struct_4(Struct_1(_wgslsmith_sub_i32(-1i, 34082i), arg_2.b, -(~countOneBits(u_input.b.x)), arg_2.d));
    var var_2 = func_1(Struct_1(abs(1i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -687f, 179f, -982f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1642f, 1450f, 1090f, 1370f)))), vec4<f32>(-246f, _wgslsmith_f_op_f32(f32(-1f) * -584f), 380f, _wgslsmith_f_op_f32(trunc(arg_1))))), u_input.b.x, arg_2.d << (abs(~vec2<u32>(arg_2.d.x, global0.a.x)) % vec2<u32>(32u))), 45909u);
    let var_3 = func_1(var_2.a, 1u);
    global0 = Struct_2(min(global0.a, vec4<u32>(~_wgslsmith_mult_u32(var_1.a.d.x, 11302u), 1u, ~global0.a.x, 98208u)));
    return abs(global0.a ^ ~min(global0.a, global0.a)) ^ reverseBits(~countOneBits(vec4<u32>(33048u, u_input.a.x, var_3.a.d.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(891f - 581f) + _wgslsmith_f_op_f32(-458f + -617f)), 534f, func_5(_wgslsmith_div_f32(-705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f))), func_4(func_1(Struct_1(u_input.b.x, vec4<f32>(-1042f, 600f, -2365f, 1364f), 32800i, u_input.a), 0u), !any(vec3<bool>(true, false, true)), vec2<u32>(global0.a.x, 1u), !any(vec2<bool>(false, true)))), u_input.a.x);
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)))));
    let var_1 = any(vec3<bool>(!all(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)))) || (true || any(vec4<bool>(true, true, true, true)));
    let var_2 = false | any(!select(select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, false, var_1, var_1), false), !vec4<bool>(true, var_1, false, var_1), true));
    let var_3 = false;
    let var_4 = 0u;
    var var_5 = Struct_2(vec4<u32>(~var_0.x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.c.x, 0u), 1u), ~countOneBits(1u)));
    global1 = func_2(select(!select(!vec4<bool>(false, var_2, var_3, var_1), !vec4<bool>(var_2, true, var_1, true), 6043u > var_5.a.x), !(!(!vec4<bool>(false, var_1, false, var_1))), var_2), Struct_4(func_4(func_1(Struct_1(1i, vec4<f32>(1051f, -206f, -942f, 699f), 0i, vec2<u32>(var_5.a.x, 0u)), _wgslsmith_mod_u32(global0.a.x, var_4)), true, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_4), vec2<u32>(48500u, var_0.x)), var_1)), vec4<bool>(var_1, var_2, false, true), firstTrailingBit(max(var_0, ~vec4<u32>(var_0.x, 18768u, var_0.x, var_0.x) ^ vec4<u32>(4294967295u, 38255u, 1u, 50606u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(u_input.d.x), u_input.d.x, ~u_input.d.x), -vec3<i32>(u_input.b.x, 0i, 4360i) & u_input.b), (-vec3<i32>(u_input.d.x, u_input.d.x, -1i) ^ vec3<i32>(u_input.d.x, u_input.b.x, 2147483647i)) << (vec3<u32>(0u, max(1u, 0u), 4294967295u) % vec3<u32>(32u))), func_6(505f, _wgslsmith_f_op_f32(max(-560f, _wgslsmith_f_op_f32(-483f + 993f))), func_1(Struct_1(u_input.b.x, vec4<f32>(-2034f, 1103f, -1115f, -1712f), u_input.b.x, var_5.a.yy), 0u).a, 4294967295u).zwx | max(global0.a.yyz, global0.a.yzz), vec2<u32>(~8439u, global0.a.x), ~(~_wgslsmith_mult_u32(global0.a.x, var_4) | 16168u));
}

