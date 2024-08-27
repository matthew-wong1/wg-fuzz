struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, true, true, true, true, false, true, false, true, true, true, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false, true, false, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_1(-_wgslsmith_add_i32(0i, (u_input.a.x & -1i) >> (u_input.b % 32u)), u_input.b, ~reverseBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(0u, u_input.b, u_input.b), arg_0.x), vec3<u32>(u_input.b, u_input.b, u_input.b), min(vec3<u32>(u_input.b, 53380u, u_input.b), vec3<u32>(u_input.b, 23353u, u_input.b)))), -firstTrailingBit(-firstLeadingBit(vec4<i32>(u_input.a.x, -18104i, 46954i, u_input.a.x))), select(vec4<bool>(arg_0.x, ~u_input.b < u_input.b, false, all(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], arg_0.x, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(1u, 31u)], arg_0.x, false), arg_0.x))), arg_0, arg_0));
    var var_1 = all(!arg_0);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-222f)), _wgslsmith_f_op_f32(step(-831f, -477f)))), -475f))));
    var var_3 = Struct_2(Struct_1(~u_input.a.x, u_input.b, max(vec3<u32>(u_input.b, u_input.b, 1u), var_0.c), vec4<i32>(u_input.a.x, -_wgslsmith_mod_i32(var_0.d.x, 41912i), var_0.a >> (countOneBits(u_input.b) % 32u), 17671i | var_0.a), var_0.e), Struct_1(u_input.a.x, 1u, var_0.c, -select(var_0.d, _wgslsmith_mult_vec4_i32(var_0.d, vec4<i32>(1i, 14255i, var_0.a, -45857i)), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 31u)], true, global0[_wgslsmith_index_u32(0u, 31u)])), vec4<bool>(true, arg_0.x, !all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false, global0[_wgslsmith_index_u32(17792u, 31u)])), (u_input.b << (100090u % 32u)) >= 1u)), var_0.d.x, Struct_1(-9615i, ~abs(1u), var_0.c, max(reverseBits(firstTrailingBit(var_0.d)), vec4<i32>(~var_0.d.x, -35540i, 1i, ~(-11541i))), select(select(!vec4<bool>(true, var_0.e.x, global0[_wgslsmith_index_u32(u_input.b, 31u)], var_0.e.x), !var_0.e, !arg_0), !(!vec4<bool>(global0[_wgslsmith_index_u32(22765u, 31u)], arg_0.x, var_0.e.x, var_0.e.x)), any(arg_0.yzw))), _wgslsmith_f_op_f32(-1441f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(step(var_2, var_2)))))));
    var_1 = true;
    return 1u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(u_input.a.x, countOneBits(~u_input.b), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(55614u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 27758i, -24364i), ~arg_0.xww), arg_0.x, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, u_input.a.x, -35982i), firstLeadingBit(arg_0))), select(vec4<bool>(true, true, select(true, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(62576u, 31u)]), global0[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)], false, false, true), (2590i ^ arg_0.x) > reverseBits(20738i))), Struct_1(26782i, _wgslsmith_sub_u32(u_input.b, ~1u), _wgslsmith_sub_vec3_u32(vec3<u32>(35834u, u_input.b & u_input.b, u_input.b ^ 74315u), ~vec3<u32>(4294967295u, u_input.b, u_input.b)), select(reverseBits(arg_0) ^ arg_0, abs(vec4<i32>(1i, -2147483647i, arg_0.x, -1i)), true), vec4<bool>(all(vec4<bool>(true, false, true, false)), global0[_wgslsmith_index_u32(26136u, 31u)], any(!vec2<bool>(global0[_wgslsmith_index_u32(3064u, 31u)], true)), false)), arg_0.x, Struct_1(_wgslsmith_sub_i32(max(6303i, _wgslsmith_div_i32(u_input.a.x, -8455i)), 13714i), ~(~(u_input.b & u_input.b)), vec3<u32>(func_3(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], true, false, false)), u_input.b, ~0u), vec4<i32>(u_input.a.x, -51449i, _wgslsmith_add_i32(-3184i, -3014i | arg_0.x), u_input.a.x), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 31u)] | false, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, global0[_wgslsmith_index_u32(29900u, 31u)])), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-503f, -685f))) + -1192f) + 1000f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-528f + var_0.e)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * var_0.e) * var_0.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e + var_0.e))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1093f, var_0.e) - -795f)))));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_2 = Struct_1(var_0.d.a, ~var_0.b.b, vec3<u32>(~_wgslsmith_sub_u32(~0u, u_input.b), select(_wgslsmith_div_u32(~2055u, var_0.a.b), u_input.b, any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(35325u, 31u)], true)) | !var_0.d.e.x), ~u_input.b), -vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -6098i, -22617i), vec3<i32>(-2147483647i, var_0.b.d.x, u_input.a.x)), ~var_0.a.d.zww), u_input.a.x, ~var_0.d.d.x, 2147483647i), !select(var_0.d.e, select(select(var_0.b.e, var_0.d.e, var_0.b.e.x), select(var_0.d.e, var_0.a.e, var_0.a.e.x), true | global0[_wgslsmith_index_u32(u_input.b, 31u)]), var_0.d.e));
    return Struct_2(var_0.d, Struct_1(var_2.d.x, var_0.d.b, reverseBits(vec3<u32>(43398u, ~21830u, 4294967295u)), vec4<i32>(max(var_0.b.a, var_2.a), _wgslsmith_div_i32(u_input.a.x, var_2.a), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.d.x, -59219i), 45083i), var_0.a.d.x), select(!var_0.a.e, vec4<bool>(true, true || var_0.d.e.x, var_2.c.x >= var_2.c.x, any(var_0.a.e)), any(var_0.d.e.yw) & var_2.e.x)), u_input.a.x, var_0.d, var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = func_2(vec4<i32>(firstTrailingBit(u_input.a.x), -24946i, -_wgslsmith_mult_i32(arg_3, ~22217i), u_input.a.x));
    var var_1 = func_2(arg_0.d).b;
    var var_2 = func_2(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.d, vec4<i32>(arg_3, arg_0.d.x, var_1.a, 1528i)), firstTrailingBit(vec4<i32>(u_input.a.x, 0i, arg_3, 2147483647i)))), vec4<i32>(arg_3, -_wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a.x), var_0.a.d.x, -abs(-17309i)))).b;
    var var_3 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(1u, var_0.b.b)) >> (var_0.a.b % 32u)), 31u)];
    var var_4 = func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(~var_1.a, select(var_0.a.a, abs(-7041i), var_0.b.e.x), -func_2(arg_0.d).c, var_1.a), min(_wgslsmith_add_vec4_i32(vec4<i32>(12741i, arg_3, arg_0.a, var_1.d.x), vec4<i32>(var_1.d.x, u_input.a.x, -1i, var_1.d.x)), arg_0.d), vec4<i32>(_wgslsmith_clamp_i32(var_2.d.x, 30912i, firstTrailingBit(var_2.d.x)), i32(-1i) * -arg_3, u_input.a.x, max(-6677i, _wgslsmith_div_i32(u_input.a.x, arg_0.d.x))))).b;
    return Struct_1(_wgslsmith_div_i32(-8368i, var_4.d.x), func_2(_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(var_1.d.x, 2147483647i, 26902i, u_input.a.x)), vec4<i32>(56584i, ~var_2.d.x, -arg_0.a, -var_4.a))).b.b, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_2.c, var_0.a.c), var_1.c), arg_0.c, vec3<u32>(countOneBits(u_input.b), var_1.b, 0u)), vec4<i32>(-1i, 7149i, var_2.d.x, 2147483647i), vec4<bool>(!any(select(vec2<bool>(false, true), var_2.e.wz, arg_0.e.wz)), var_4.e.x, all(!select(vec2<bool>(var_2.e.x, global0[_wgslsmith_index_u32(arg_0.b, 31u)]), arg_0.e.zw, var_4.e.wz)), !global0[_wgslsmith_index_u32(~(u_input.b & 44344u), 31u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_0 = ~u_input.b;
    var_0 = 0u;
    let var_1 = func_1(Struct_1(1i, 1u, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), ~vec3<u32>(u_input.b, 4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(0u, 0u), u_input.b, 17293u)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x))), vec4<bool>(true, false, true, false)), -1882f, -1231f, u_input.a.x & firstTrailingBit(u_input.a.x));
    global0 = array<bool, 31>();
    let var_2 = func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), select(var_1.a, -1i, var_1.e.x), _wgslsmith_mod_i32(13i, u_input.a.x)) ^ var_1.d, -var_1.d)).b.a;
    var var_3 = vec2<u32>(4294967295u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(621f * -1184f), -(_wgslsmith_div_vec3_i32(max(var_1.d.xzz, var_1.d.yxx), ~vec3<i32>(var_1.a, -1i, var_2)) & var_1.d.yzx), ~u_input.a.x, ~var_1.c >> (min(var_1.c, vec3<u32>(0u, var_3.x ^ u_input.b, _wgslsmith_clamp_u32(2614u, var_1.b, u_input.b))) % vec3<u32>(32u)));
}

