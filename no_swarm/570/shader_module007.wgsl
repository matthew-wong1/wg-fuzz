struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(-52952i, vec4<f32>(1115f, 349f, -799f, -2327f), 2147483647i, true), 1i, vec2<i32>(9879i, 9693i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> i32 {
    var var_0 = 61990u;
    var var_1 = Struct_1(firstLeadingBit(arg_1.x), vec4<f32>(432f, _wgslsmith_f_op_f32(exp2(global0.b.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)))), -338f), global0.b.c, false);
    var_1 = Struct_1(_wgslsmith_dot_vec3_i32(arg_1.zyy, abs(firstTrailingBit(vec3<i32>(arg_1.x, var_1.a, var_1.a)) & arg_1.ywz)), var_1.b, reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(abs(0i), global0.d.x, var_1.a), _wgslsmith_mult_i32(~u_input.a, _wgslsmith_mod_i32(-2147483647i, var_1.a)))), !arg_0.x);
    var var_2 = vec4<i32>(54226i, select(~(~global0.d.x) & (_wgslsmith_mod_i32(u_input.a, arg_1.x) << (firstLeadingBit(u_input.b.x) % 32u)), ~_wgslsmith_div_i32(global0.d.x & -2018i, global0.d.x), 1u == ~(u_input.b.x << (u_input.c % 32u))), 0i, _wgslsmith_div_i32(_wgslsmith_mod_i32(-27461i, _wgslsmith_mult_i32(min(u_input.a, u_input.a), 36074i)), global0.b.a));
    var_2 = max(vec4<i32>(-(i32(-1i) * -9498i), 1i, -2147483647i, ~u_input.a), select(vec4<i32>(-1i) * -vec4<i32>(0i, arg_1.x, 0i, -2147483647i), ~select(vec4<i32>(2147483647i, -17974i, global0.d.x, -42021i), firstLeadingBit(vec4<i32>(var_1.a, 1i, 1i, global0.c)), vec4<bool>(false, false, global0.a.x, false)), !select(vec4<bool>(var_1.d, global0.a.x, var_1.d, global0.b.d), vec4<bool>(var_1.d, arg_0.x, false, arg_0.x), vec4<bool>(true, true, true, true))));
    return ~(-54359i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> u32 {
    global0 = Struct_2(!select(vec2<bool>(global0.b.d, 2147483647i >= global0.b.c), select(select(vec2<bool>(false, global0.a.x), global0.a, global0.b.d), vec2<bool>(global0.a.x, true), vec2<bool>(global0.a.x, true)), true), global0.b, _wgslsmith_mod_i32(u_input.a, global0.b.c), vec2<i32>(~(~(-u_input.a)), _wgslsmith_mult_i32(~u_input.a, func_3(vec3<bool>(true, global0.b.d, false), -vec4<i32>(global0.b.a, 2147483647i, global0.b.a, 1i)))));
    global0 = Struct_2(vec2<bool>(global0.b.d, _wgslsmith_dot_vec2_i32(global0.d, global0.d) >= reverseBits(global0.d.x & global0.d.x)), global0.b, 32639i, firstLeadingBit(select(global0.d, global0.d, global0.b.d & !global0.a.x)));
    let var_0 = global0.a;
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_div_i32(func_3(select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, false), vec3<bool>(global0.b.d, var_0.x, global0.b.d)), true), ~reverseBits(vec4<i32>(2147483647i, global0.d.x, u_input.a, global0.b.c))), -global0.c), abs(vec2<i32>(_wgslsmith_add_i32(17379i, 1i), -38978i)));
    let var_1 = Struct_2(!vec2<bool>(global0.b.d, global0.a.x), global0.b, (u_input.a & -2147483647i) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(arg_2.x, 27406u, 43843u, 60292u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 84125u, u_input.c, 1u), vec4<u32>(46191u, arg_2.x, 1u, u_input.b.x))) % 32u), global0.d);
    return ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ arg_2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    return global0.b.c;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1018f)) - _wgslsmith_f_op_f32(-arg_2))));
    var var_1 = func_2(arg_3.b.yx, _wgslsmith_f_op_vec3_f32(-arg_3.b.wwz), countOneBits(reverseBits(firstTrailingBit(select(vec2<u32>(arg_1.a, 61462u), vec2<u32>(1u, 4294967295u), true)))));
    var var_2 = Struct_3(4894u, -32181i);
    var var_3 = _wgslsmith_mult_vec3_i32(abs(min(vec3<i32>(arg_1.b, _wgslsmith_mult_i32(32565i, arg_3.c), max(-63257i, -1i)), vec3<i32>(var_2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -11972i, 0i), vec3<i32>(-2147483647i, 23331i, u_input.a)), arg_0))), -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.b, -16061i), -1i), 1i, -32979i));
    var_2 = Struct_3(var_2.a, 2147483647i);
    return vec4<u32>(arg_1.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32((arg_1.a | arg_1.a) ^ ~4294967295u, 1u), arg_1.a ^ 4294967295u, _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(var_2.a, var_2.a)), _wgslsmith_mult_u32(select(arg_1.a, 4294967295u, arg_3.d), u_input.c))), 1u, ~(~arg_1.a | _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(4294967295u, 97931u)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = true;
    var var_1 = func_5(_wgslsmith_mult_i32(0i, func_4(_wgslsmith_mod_u32(u_input.c & 9765u, func_2(vec2<f32>(909f, global0.b.b.x), vec3<f32>(global0.b.b.x, -528f, -105f), u_input.b)), Struct_2(vec2<bool>(global0.a.x, var_0), Struct_1(9607i, global0.b.b, 11497i, false), _wgslsmith_div_i32(u_input.a, 56898i), reverseBits(global0.d)), Struct_1(-global0.c, vec4<f32>(global0.b.b.x, global0.b.b.x, -803f, global0.b.b.x), ~1i, !arg_0.x))), Struct_3(~1u, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)), global0.b);
    let var_2 = var_1.x;
    var var_3 = global0.b;
    global0 = Struct_2(!(!arg_0), global0.b, firstLeadingBit(-29414i), vec2<i32>(global0.d.x, min(abs(u_input.a), var_3.c)));
    return Struct_2(select(global0.a, vec2<bool>(var_0, !var_0), true), Struct_1(_wgslsmith_sub_i32(global0.c | 5809i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 0i, 314i), vec4<i32>(var_3.c, -61796i, var_3.a, var_3.a)), 1i)), vec4<f32>(1908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b.x))), var_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1025f * -1390f)))), ~(-834i), true), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_3.c, 9320i, u_input.a, 2147483647i), vec4<i32>(global0.d.x, global0.b.c, var_3.a, -5756i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.c, var_3.c, global0.b.a, 1i), vec4<i32>(u_input.a, -53132i, global0.c, var_3.c))), vec4<i32>(_wgslsmith_div_i32(global0.b.a, u_input.a), -26672i, -1i, func_4(u_input.b.x, Struct_2(arg_0, global0.b, global0.b.a, vec2<i32>(global0.b.c, -1i)), global0.b))), select(vec2<i32>(~firstTrailingBit(0i), 18143i), _wgslsmith_mod_vec2_i32(global0.d, _wgslsmith_add_vec2_i32(global0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i)))), !select(global0.a, select(vec2<bool>(true, false), global0.a, arg_0.x), !var_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a);
    var var_0 = firstLeadingBit(u_input.c) & ~(reverseBits(0u) & _wgslsmith_div_u32(0u, u_input.c));
    let var_1 = 1u;
    let var_2 = vec4<bool>(all(vec3<bool>(true, !all(vec3<bool>(global0.a.x, true, true)), !global0.a.x)), all(!select(vec4<bool>(global0.b.d, global0.a.x, global0.b.d, false), vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(false, true, true, true))) || true, false, !all(vec4<bool>(false, true, var_1 <= 0u, global0.a.x)));
    var var_3 = vec2<bool>(false | (true && all(select(var_2, var_2, false))), true);
    let var_4 = _wgslsmith_div_f32(global0.b.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1461f))))))));
    var_0 = u_input.b.x;
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(-1193f * -177f), _wgslsmith_f_op_f32(f32(-1f) * -640f)) * _wgslsmith_f_op_vec3_f32(min(global0.b.b.xxz, vec3<f32>(-536f, var_4, var_4)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(945f, 156f, 1000f) * vec3<f32>(1893f, -492f, 1000f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4, -1802f, var_4)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.b.x, -1000f, var_4), global0.b.b.xwx)))), var_2.zxy))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.b.b.x, -1958f), 1f, _wgslsmith_f_op_f32(round(-1512f)))) + global0.b.b.xxz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.b.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.b.x, global0.b.b.x, -488f, 237f), vec4<f32>(global0.b.b.x, -1065f, var_5.x, 1130f)))))), global0.d, min(vec3<u32>(u_input.b.x, func_5(global0.d.x, Struct_3(70823u, global0.c), global0.b.b.x, global0.b).x, var_1), (vec3<u32>(var_1, u_input.b.x, var_1) | vec3<u32>(var_1, 0u, 8515u)) | ~vec3<u32>(1u, 1u, u_input.c)) << ((~(vec3<u32>(u_input.c, 1u, 30790u) << (vec3<u32>(20634u, 65853u, 1u) % vec3<u32>(32u))) & vec3<u32>(~u_input.b.x, ~var_1, 4294967295u)) % vec3<u32>(32u)));
}

