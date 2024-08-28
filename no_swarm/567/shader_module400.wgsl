struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 15>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    global0 = Struct_1(global0.a, global0.e, vec2<u32>(1u, 29091u), _wgslsmith_sub_u32(32086u, reverseBits(~18102u & select(1u, global0.d, false))), -360f);
    let var_0 = false;
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_0), -1i, global0.a.x), global0.a.xww), select(~25617i, _wgslsmith_clamp_i32(global0.a.x, global0.a.x >> (15417u % 32u), abs(global1[_wgslsmith_index_u32(global0.d, 15u)])), var_0), global1[_wgslsmith_index_u32(global0.c.x, 15u)], -global0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(ceil(357f))))), ~u_input.b.wy, ~(~global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -228f))) + _wgslsmith_div_f32(-1126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-arg_1)))));
    global1 = array<i32, 15>();
    var var_2 = ~(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.x, 1i), var_1.a.zy, vec2<i32>(var_1.a.x, -2147483647i)), vec2<i32>(arg_0, u_input.a) & var_1.a.yx)) >> ((select(~(~var_1.c), abs(~vec2<u32>(91194u, 21448u)), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0)) ^ ~min(~u_input.b.wz, ~vec2<u32>(u_input.e, 4294967295u))) % vec2<u32>(32u));
    return i32(-1i) * -(~(-1i));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(select(-arg_0.a, vec4<i32>(global0.a.x, -global0.a.x | u_input.a, func_3(global0.a.x << (arg_0.d % 32u), -1000f), ~global0.a.x), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.b.zw, 30289u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.e)))))));
    var var_0 = false;
    let var_1 = Struct_1(vec4<i32>(firstLeadingBit(-1i), arg_2, -3090i, u_input.a), _wgslsmith_div_f32(-1245f, 226f), min(_wgslsmith_div_vec2_u32(arg_0.c, _wgslsmith_mod_vec2_u32(u_input.b.wz, vec2<u32>(global0.d, 4294967295u))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(30652u, 28014u), arg_0.c), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(global0.c.x, 4294967295u)), ~vec2<u32>(4294967295u, global0.c.x)))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b * global0.b), _wgslsmith_f_op_f32(f32(-1f) * -2578f))) + -1127f)));
    var_0 = !(!(_wgslsmith_clamp_i32(~0i, ~global1[_wgslsmith_index_u32(global0.d, 15u)], var_1.a.x) < 1i));
    global1 = array<i32, 15>();
    return Struct_1(~var_1.a, 353f, var_1.c | (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.c.x), var_1.c) ^ firstLeadingBit(vec2<u32>(10078u, global0.c.x))), ~var_1.d, arg_1);
}

fn func_1() -> Struct_1 {
    global0 = func_2(Struct_1(-vec4<i32>(-46076i, -40676i >> (u_input.e % 32u), -2147483647i, max(-2147483647i, global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(411f + _wgslsmith_div_f32(global0.e, global0.b)), _wgslsmith_f_op_f32(trunc(global0.b))), ~(~vec2<u32>(u_input.b.x, 1u) | vec2<u32>(global0.c.x, global0.c.x)), 0u, global0.b), _wgslsmith_f_op_f32(-global0.e), _wgslsmith_div_i32(u_input.a, -1i));
    var var_0 = func_2(func_2(func_2(Struct_1(vec4<i32>(u_input.a, 48503i, global0.a.x, 2147483647i), 474f, ~vec2<u32>(global0.d, 0u), u_input.b.x | 29246u, _wgslsmith_f_op_f32(step(-674f, global0.b))), global0.b, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~7039u, 15u)], select(global0.a.x, 2147483647i, true))), _wgslsmith_f_op_f32(-global0.e), select(abs(21973i), _wgslsmith_dot_vec2_i32(global0.a.zy, global0.a.ww), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, -930f)))))), -14548i);
    var var_1 = func_2(Struct_1(firstTrailingBit(global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))), abs(~var_0.c) >> (~_wgslsmith_sub_vec2_u32(var_0.c, vec2<u32>(21276u, 65222u)) % vec2<u32>(32u)), 16037u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -726f)), _wgslsmith_f_op_f32(step(-1001f, func_2(Struct_1(-var_0.a, -401f, u_input.b.wy, ~43878u, -780f), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(sign(570f))), global0.a.x).e)), -15979i);
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_sub_vec4_i32(var_1.a, vec4<i32>(-1i, global0.a.x, -33433i, u_input.a)), -1118f, select(var_1.c | var_0.c, _wgslsmith_sub_vec2_u32(vec2<u32>(62570u, u_input.e), u_input.b.xw), true), global0.c.x, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(-2147483647i, var_1.a.x, 0i, var_0.a.x), var_0.e, vec2<u32>(76090u, u_input.d), u_input.d, -380f), var_0.e, global1[_wgslsmith_index_u32(u_input.c, 15u)]).e - _wgslsmith_div_f32(461f, -1587f))), global0.b, ~_wgslsmith_dot_vec4_i32(var_0.a >> (vec4<u32>(46697u, 5723u, 20601u, var_1.d) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, var_0.a.x, u_input.a))), _wgslsmith_f_op_f32(round(global0.e)), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.a.yw, vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24213i, global0.a.x, 54965i, 2147483647i), vec4<i32>(global0.a.x, 16821i, var_1.a.x, 2147483647i))))));
    let var_3 = _wgslsmith_add_u32(~func_2(Struct_1(var_1.a, -1483f, global0.c, 4294967295u >> (u_input.c % 32u), _wgslsmith_f_op_f32(abs(var_2.e))), var_2.e, global1[_wgslsmith_index_u32(0u, 15u)]).d, var_0.d);
    return func_2(Struct_1(~vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x ^ var_2.a.x, i32(-1i) * -1i), 571f, ~(var_0.c << (global0.c % vec2<u32>(32u))), ~min(_wgslsmith_dot_vec2_u32(var_2.c, vec2<u32>(global0.c.x, var_2.d)), global0.c.x << (var_0.c.x % 32u)), func_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.x, 0i, -856i, var_2.a.x), var_1.a), var_0.b, max(var_1.c, var_1.c), countOneBits(var_3), _wgslsmith_div_f32(var_1.e, -696f)), _wgslsmith_f_op_f32(round(global0.b)), global1[_wgslsmith_index_u32(abs(~var_2.c.x), 15u)]).b), var_0.e, _wgslsmith_add_i32(-2147483647i, func_3(_wgslsmith_div_i32(var_0.a.x, var_1.a.x), -1640f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    global1 = array<i32, 15>();
    global0 = func_1();
    var var_1 = -30631i;
    var var_2 = func_1();
    return _wgslsmith_add_i32(_wgslsmith_div_i32(1459i, arg_2.a.x), -14933i);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e));
    let var_1 = Struct_1(vec4<i32>(0i, ~select(_wgslsmith_dot_vec2_i32(arg_1.a.xx, vec2<i32>(arg_1.a.x, -5502i)), _wgslsmith_dot_vec4_i32(global0.a, global0.a), true), firstTrailingBit(0i), -33815i), 1368f, vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.b | vec4<u32>(1u, 0u, arg_1.d, 28673u), vec4<u32>(37595u, 32038u, 66288u, 4294967295u)), _wgslsmith_div_u32(~(~8768u), 4294967295u)), ~(~min(74526u, global0.d)) << (29844u % 32u), arg_0);
    global1 = array<i32, 15>();
    let var_2 = all(!vec3<bool>(false, all(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, true, false)))) && true;
    let var_3 = func_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(round(-1000f)), firstLeadingBit(select(arg_1.c, select(vec2<u32>(u_input.c, 1u), u_input.b.wz, vec2<bool>(var_2, false)), all(vec3<bool>(var_2, true, false)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.d, _wgslsmith_mult_u32(global0.d, var_1.c.x), max(15007u, 113622u)), u_input.b.zwx), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + 204f)))))), -710f, _wgslsmith_mult_i32(select(~global0.a.x | 0i, global1[_wgslsmith_index_u32(u_input.d, 15u)], arg_1.e >= global0.e), global0.a.x));
    return 2713f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e * -1421f), global0.b))), Struct_1(vec4<i32>(57009i, func_4(vec2<u32>(global0.d, 4294967295u) & vec2<u32>(15193u, u_input.b.x), Struct_1(global0.a, -143f, vec2<u32>(0u, 9629u), 1u, -1176f), func_1()), global1[_wgslsmith_index_u32(global0.c.x, 15u)], (global1[_wgslsmith_index_u32(4795u, 15u)] >> (4294967295u % 32u)) >> (1u % 32u)), _wgslsmith_f_op_f32(ceil(global0.e)), vec2<u32>(global0.c.x, 1u) & vec2<u32>(_wgslsmith_sub_u32(global0.c.x, global0.d), 1u), 14009u, _wgslsmith_f_op_f32(floor(func_1().e)))));
    var_0 = global0.e;
    let var_1 = 26209u;
    var_0 = -631f;
    let var_2 = Struct_1(vec4<i32>(1i, abs(~global1[_wgslsmith_index_u32(u_input.d, 15u)]), _wgslsmith_add_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_1, 15u)], -1i) << (~27582u % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(19917u, 15u)], 1i), 1i)), global0.a.x), -1000f, ~countOneBits(global0.c), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.yzx);
}

