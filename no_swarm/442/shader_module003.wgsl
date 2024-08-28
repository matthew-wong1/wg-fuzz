struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i, -1i, 1i, 23203i, i32(-2147483648), 15090i, 2147483647i, -3141i, 70739i, -18860i, -24722i, -1i, -21984i, -19939i, -30312i, -16441i, -54634i, i32(-2147483648), 483i, -28176i, 2147483647i, -1i, -15061i, -4617i, 36860i, -1i, -40949i, i32(-2147483648), 8049i);

var<private> global1: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    return Struct_3(arg_2);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.x), u_input.b.wyx), 1u, arg_0.x));
    global1 = 745f;
    global1 = -1318f;
    var var_1 = -reverseBits(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 119f, -1000f)))))));
    return func_2(1i, select(!select(vec2<bool>(true, true), !vec2<bool>(false, arg_3.a.a), arg_3.a.a), vec2<bool>(func_2(0i ^ global0[_wgslsmith_index_u32(4294967295u, 32u)], !vec2<bool>(true, arg_3.a.a), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], vec2<bool>(arg_3.a.a, false), arg_2.a, 631f).a, _wgslsmith_f_op_f32(trunc(616f))).a.a, arg_1), !(arg_3.a.a | false)), arg_3.a, _wgslsmith_f_op_f32(floor(var_2.x)));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_4(func_3(_wgslsmith_add_vec2_u32(u_input.c, u_input.b.ww), true & any(vec2<bool>(true, true)), Struct_3(Struct_1(true)), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-24633i, 1i), -vec2<i32>(-22206i, -22438i)), vec2<bool>(true, true), Struct_1(false), _wgslsmith_f_op_f32(round(845f)))), u_input.b.wzy & vec3<u32>(abs(u_input.a.x), 19184u, ~(~u_input.b.x)), func_2(_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -11248i), -vec2<i32>(-1i, 34398i))), vec2<bool>(_wgslsmith_f_op_f32(select(-514f, -259f, false)) == _wgslsmith_f_op_f32(trunc(-1000f)), true), func_3(~u_input.c, select(true, 2147483647i == global0[_wgslsmith_index_u32(22457u, 32u)], func_2(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], vec2<bool>(true, false), Struct_1(false), 1686f).a.a), Struct_3(func_2(48714i, vec2<bool>(false, false), Struct_1(true), -445f).a), func_3(~u_input.c, 56539u < u_input.b.x, Struct_3(Struct_1(false)), func_3(u_input.c, false, Struct_3(Struct_1(true)), Struct_3(Struct_1(false))))).a, _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_dot_vec3_i32(vec3<i32>(select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(120881u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), 40568i, true), countOneBits(abs(20662i)), -_wgslsmith_add_i32(61735i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), abs(select(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_add_vec3_i32(vec3<i32>(-6554i, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), vec3<i32>(global0[_wgslsmith_index_u32(29765u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(3681u, 32u)])), true))));
    var_0 = Struct_4(func_2(~52544i, vec2<bool>(var_0.c.a.a, var_0.a.a.a), var_0.c.a, _wgslsmith_f_op_f32(step(-743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-759f, 800f)))))), _wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(u_input.b.x, u_input.a.x, 28235u)), var_0.b & u_input.b.yzz, var_0.a.a.a), ~var_0.b << (vec3<u32>(u_input.b.x, var_0.b.x, 4294967295u) % vec3<u32>(32u))) ^ vec3<u32>(select(var_0.b.x, 5521u, var_0.c.a.a) << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(u_input.b.x, 84724u)), var_0.a, -(~3436i));
    global1 = 373f;
    var var_1 = Struct_2(_wgslsmith_add_vec4_u32(select(firstTrailingBit(~u_input.b), select(~vec4<u32>(13738u, u_input.c.x, 8218u, u_input.b.x), vec4<u32>(0u, var_0.b.x, 1u, u_input.c.x), vec4<bool>(true, false, false, var_0.a.a.a)), !var_0.a.a.a | true), ~vec4<u32>(1u, 4294967295u, var_0.b.x, ~var_0.b.x)), func_2(_wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(var_0.b.x, 32u)]) ^ global0[_wgslsmith_index_u32(4294967295u, 32u)], reverseBits(var_0.d)), !(!vec2<bool>(var_0.c.a.a, false)), Struct_1(var_0.a.a.a), 132f).a, var_0.d);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f + -452f)) - 1f);
    return !vec4<bool>(true, var_0.c.a.a, (1i > var_1.c) & all(!vec3<bool>(var_0.a.a.a, var_1.b.a, var_0.a.a.a)), !func_3(var_0.b.xy, var_0.a.a.a, Struct_3(Struct_1(true)), var_0.a).a.a & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(func_1()), false);
    let var_1 = ~_wgslsmith_mult_u32(u_input.b.x, ~u_input.a.x);
    global0 = array<i32, 32>();
    let var_2 = Struct_3(Struct_1(all(func_1().zy)));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f * 253f) + _wgslsmith_f_op_f32(min(929f, 404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f * -340f) - -485f)))));
    var var_3 = -global0[_wgslsmith_index_u32(~var_1, 32u)];
    let var_4 = func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, u_input.b.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, u_input.a >> (vec2<u32>(var_1, 116010u) % vec2<u32>(32u))), ~vec2<u32>(61966u, var_1))), !var_2.a.a, func_3(vec2<u32>(u_input.a.x | u_input.c.x, var_1), !(select(true, var_0.x, true) && all(vec4<bool>(true, var_2.a.a, false, true))), var_2, Struct_3(var_2.a)), var_2).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 80339u, _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(~var_1, u_input.b.x | var_1))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-884f)) * -353f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2190f * 1377f) - _wgslsmith_f_op_f32(1428f + -260f))))), -_wgslsmith_sub_vec4_i32(-(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_1, 32u)], -1611i, global0[_wgslsmith_index_u32(1u, 32u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 58837i, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), firstLeadingBit(-vec4<i32>(12030i, 9086i, -2147483647i, 1i))));
}

