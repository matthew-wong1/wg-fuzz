struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global0 = u_input.a.yzw;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1039f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f - _wgslsmith_f_op_f32(f32(-1f) * -973f))), 428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-var_0.x)), Struct_1(1398f), Struct_3(arg_0.x, arg_0, ~_wgslsmith_add_u32(global0.x << (u_input.a.x % 32u), 10460u), _wgslsmith_mod_i32(50090i, arg_0.x)));
    var var_2 = var_1.c;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.a, -1763f, var_0.x, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-2240f, var_0.x, -1000f, var_0.x), vec4<f32>(var_0.x, var_1.a.a, var_1.a.a, var_1.b.a)), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, var_1.b.a, -1568f, var_1.a.a))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1203f, var_1.b.a, -1411f, var_0.x))))))));
    return _wgslsmith_f_op_f32(step(-1856f, _wgslsmith_f_op_f32(-var_1.b.a)));
}

fn func_2() -> i32 {
    let var_0 = 2147483647i;
    let var_1 = -2147483647i;
    global0 = ~countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(6700u, 4294967295u, 55378u)), vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(40417u, global0.x), ~global0.x)));
    global0 = ~_wgslsmith_add_vec3_u32(min(u_input.a.wyw, ~vec3<u32>(global0.x, 0u, 27384u)) & _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(global0.x, 0u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, u_input.b, 0u), vec3<u32>(global0.x, 1u, global0.x))), ~(~u_input.a.wzz));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, 1777f, -1000f, 2161f))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-204f - -871f), -1000f)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.c, var_0, var_1, u_input.c))))))), u_input.a.xzx, Struct_1(_wgslsmith_div_f32(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-346f, 464f)) + _wgslsmith_div_f32(1000f, 1244f)))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(~(-67956i << (var_2.d.x % 32u))), 12616i, abs(6464i)), -((vec3<i32>(-2147483647i, -55914i, 16463i) | (vec3<i32>(u_input.c, -2147483647i, u_input.c) >> (vec3<u32>(global0.x, 27757u, u_input.a.x) % vec3<u32>(32u)))) ^ select(vec3<i32>(-30933i, var_0, 1i), firstLeadingBit(vec3<i32>(var_0, var_1, var_0)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = min(-vec3<i32>(_wgslsmith_add_i32(func_2(), u_input.c), -firstTrailingBit(2147483647i), _wgslsmith_div_i32(~u_input.c, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(14465i, -2147483647i, -51283i), ~vec3<i32>(~2147483647i, arg_1.x, arg_1.x << (global0.x % 32u))));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(min(arg_1.x, 2147483647i)), _wgslsmith_div_i32(-(u_input.c & u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.c, var_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, var_0.x, var_0.x), vec3<i32>(arg_1.x, 29920i, var_0.x)))), abs(_wgslsmith_mult_i32(countOneBits(-1168i), -30829i))), vec3<i32>(_wgslsmith_mult_i32(13605i, -9696i), abs(u_input.c & (u_input.c << (10545u % 32u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, 25i, var_0.x), vec4<i32>(var_0.x, var_0.x, 675i, var_0.x) & vec4<i32>(-2147483647i, var_0.x, var_0.x, -1i))));
    var var_1 = !vec4<bool>(all(!vec3<bool>(arg_0, arg_0, true)), arg_0, arg_0, true);
    var var_2 = arg_1;
    global0 = max(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(global0.x, reverseBits(global0.x), ~global0.x)), vec3<u32>(_wgslsmith_div_u32(max(u_input.e.x, global0.x), ~4294967295u), select(u_input.b, 25085u, false) ^ reverseBits(18966u), ~77381u)), firstLeadingBit(~(~u_input.a.wyw)));
    return Struct_1(-1652f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> Struct_2 {
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.a + -1207f), func_1(select(false, false, all(vec2<bool>(true, false))), abs(_wgslsmith_sub_vec2_i32(arg_0.c.b.wz, vec2<i32>(arg_1.a.b.x, arg_1.a.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(163f, arg_1.b.a) * vec2<f32>(arg_0.a.a, -425f)))).a, -2386f, _wgslsmith_f_op_f32(sign(arg_1.b.a))), arg_0.b, arg_0.a, _wgslsmith_div_vec3_u32(~u_input.a.xzz, ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.x, global0.x) & vec3<u32>(u_input.d.x, 16888u, global0.x), u_input.a.yxz ^ u_input.a.yww)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(func_1(true, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, 1i), ~vec2<i32>(-2147483647i, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, -329f)))), Struct_1(1584f), Struct_3(_wgslsmith_add_i32(reverseBits(u_input.c), 1i), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 7750i, 2147483647i, u_input.c), vec4<i32>(u_input.c, 0i, u_input.c, u_input.c))), u_input.b, i32(-1i) * -u_input.c)), Struct_5(Struct_3(0i | firstLeadingBit(u_input.c), abs(~vec4<i32>(u_input.c, u_input.c, -11662i, u_input.c)), 124898u, -max(9341i, -9815i)), func_1(all(vec3<bool>(true, true, true)), abs(vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-124f, -194f), vec2<f32>(-292f, 1208f))))), func_1(true, abs(-vec2<i32>(2147483647i, -684i)), vec2<f32>(1f, 1f)), u_input.d.x, 3390u));
    global0 = var_0.d;
    let var_1 = vec4<f32>(var_0.b.a, var_0.a.x, var_0.b.a, -1325f);
    var var_2 = ~var_0.d;
    var_2 = var_0.d ^ vec3<u32>(_wgslsmith_mult_u32(1u << (countOneBits(68165u) % 32u), _wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(u_input.d.x, 18332u, 38669u, u_input.d.x) % vec4<u32>(32u)), u_input.a)), ~(~var_0.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(global0.x), _wgslsmith_mod_u32(18602u, 4294967295u), _wgslsmith_div_u32(u_input.a.x, global0.x), u_input.e.x ^ 1u), ~u_input.a << (vec4<u32>(1294u, 1u, 0u, 1u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_4(func_1(all(vec3<bool>(true, true, true)), ~vec2<i32>(u_input.c, -34371i), _wgslsmith_f_op_vec2_f32(-var_1.yz)), Struct_1(_wgslsmith_f_op_f32(ceil(-732f))), Struct_3(_wgslsmith_add_i32(u_input.c, u_input.c), ~vec4<i32>(0i, 2147483647i, u_input.c, 0i), 32064u | u_input.d.x, _wgslsmith_mult_i32(-1i, u_input.c))), Struct_5(Struct_3(~u_input.c, firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)), var_2.x, 2147483647i), Struct_1(_wgslsmith_f_op_f32(-var_1.x)), func_1(all(vec3<bool>(true, true, false)), countOneBits(vec2<i32>(64i, -14283i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, var_1.x))), u_input.a.x, ~(var_0.d.x >> (25412u % 32u)))).d.yy, _wgslsmith_f_op_vec2_f32(ceil(var_1.yx)), -u_input.c, func_2());
}

