struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(vec3<bool>(false, true, !(abs(u_input.e.x) <= select(58371i, u_input.a.x, false))), firstLeadingBit(-50567i), vec3<bool>(true, !select(u_input.e.x != -5336i, false, true), (countOneBits(-2147483647i) == -u_input.a.x) | false), vec2<bool>(true, true));
    let var_1 = true;
    let var_2 = _wgslsmith_add_vec2_u32(u_input.d.xx, select(max(vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), u_input.c | 4294967295u), max(select(u_input.d.yz, vec2<u32>(4294967295u, u_input.d.x), var_0.d), vec2<u32>(u_input.d.x, 4294967295u))), u_input.b.yw, true));
    var var_3 = var_1;
    var var_4 = Struct_3(-974f, all(!(!(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)))), firstLeadingBit(_wgslsmith_mod_i32(0i, firstLeadingBit(~0i))));
    return select(select(!var_0.a, !var_0.c, select(!vec3<bool>(var_4.b, var_1, var_1), !var_0.c, !vec3<bool>(var_1, var_1, var_0.d.x))), !(!var_0.a), var_4.b);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = 88156u;
    var_0 = _wgslsmith_div_u32(7159u, 19621u);
    let var_1 = Struct_2(func_3(), -u_input.e.x, select(func_3(), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_3()))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-478f)) - _wgslsmith_f_op_f32(1104f - 2834f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1434f + -212f)), any(vec2<bool>(false, true))));
    var_0 = 1u | firstLeadingBit(u_input.b.x);
    let var_2 = !vec4<bool>(true, (all(vec3<bool>(true, false, true)) | func_3().x) & all(vec2<bool>(true, var_1.c.x)), (true && var_1.c.x) & false, true & var_1.c.x);
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1511f - _wgslsmith_f_op_f32(-895f + 2374f)), _wgslsmith_f_op_f32(-1200f - _wgslsmith_f_op_f32(abs(836f))))))), var_2.x, 39511i);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = vec3<i32>(0i, max(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, select(-1i, u_input.a.x, arg_0.b)), min(arg_0.c, arg_1 >> (4294967295u % 32u))), ~(~arg_0.c >> (~u_input.c % 32u))), ~(arg_0.c & arg_1));
    var var_1 = arg_0.b;
    let var_2 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(max(-21414i, arg_0.c), countOneBits(-1i)), var_0.xx), arg_2.xy);
    var_1 = true;
    let var_3 = vec3<u32>(u_input.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(27636u, 0u), (u_input.d.zy | vec2<u32>(u_input.d.x, 4294967295u)) ^ vec2<u32>(0u, u_input.c)), ~(max(84594u, u_input.c) | u_input.b.x)), 32154u);
    return Struct_2(vec3<bool>(!arg_0.b | all(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), true)), false, false), i32(-1i) * -_wgslsmith_mult_i32(arg_0.c, arg_1), !vec3<bool>(arg_0.b, func_2(-20846i).b, true), vec2<bool>(func_3().x, any(select(select(vec4<bool>(true, true, arg_0.b, true), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, true, false)), !vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), all(vec4<bool>(false, arg_0.b, true, arg_0.b))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_2.a;
    var_0 = arg_2.a;
    var_0 = !vec4<bool>(func_3().x, arg_0.b, true, true);
    var_0 = !select(vec4<bool>(true, false, true, var_0.x), arg_2.a, !arg_1.c.x);
    var_0 = !(!select(arg_2.a, vec4<bool>(arg_0.b & false, all(arg_2.a.xw), 1000f != arg_0.a, !arg_1.c.x), !arg_1.d.x));
    return func_2(2147483647i);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_mult_u32(57048u, ~(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(713f, -1000f, arg_1.a, arg_1.a) - vec4<f32>(arg_0.a, 813f, arg_1.a, -1214f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1419f, _wgslsmith_f_op_f32(arg_0.a - 1508f), _wgslsmith_f_op_f32(arg_1.a + 1736f), 804f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, -1050f, _wgslsmith_f_op_f32(-389f * arg_1.a))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1661f, var_1.x, var_1.x, -1954f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.a, arg_0.a, 323f) - vec4<f32>(arg_0.a, var_1.x, arg_0.a, arg_1.a))))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(212f, 1810f))), _wgslsmith_f_op_f32(abs(-1000f)));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1534f, var_2.x, false)) - arg_0.a), _wgslsmith_f_op_f32(trunc(308f)), 442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(289f, 825f, var_1.x, arg_0.a) - vec4<f32>(-1266f, -720f, arg_0.a, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 468f, 1437f, 165f) + vec4<f32>(arg_0.a, arg_0.a, var_2.x, arg_0.a))))))));
    return 9989u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(select(!vec4<bool>(!arg_0.a.x, true, all(arg_0.a), true), select(select(vec4<bool>(false, arg_1.c.x, false, false), select(vec4<bool>(true, false, arg_1.a.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, true, false), vec4<bool>(false, arg_0.a.x, true, true)), !vec4<bool>(true, arg_1.c.x, arg_0.c.x, false)), !(!vec4<bool>(arg_0.d.x, true, arg_1.a.x, arg_1.d.x)), vec4<bool>(arg_1.d.x, arg_0.a.x, !arg_0.d.x, true)), vec4<bool>(true, !any(vec3<bool>(arg_1.d.x, true, false)), arg_1.a.x, all(arg_1.c.yz))));
    let var_1 = _wgslsmith_sub_u32(countOneBits(arg_2), func_6(func_5(Struct_3(_wgslsmith_f_op_f32(-955f + 652f), u_input.c != 19778u, _wgslsmith_mod_i32(u_input.e.x, -1i)), func_4(func_2(arg_3.x), -1i >> (0u % 32u), vec4<i32>(0i, -1i, arg_0.b, arg_3.x)), Struct_1(vec4<bool>(var_0.a.x, true, var_0.a.x, arg_1.c.x))), Struct_3(_wgslsmith_f_op_f32(-556f + -1186f), var_0.a.x, u_input.e.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(969f)), _wgslsmith_f_op_f32(-330f - 658f), _wgslsmith_f_op_f32(max(-1767f, -882f)))))));
    var var_3 = func_6(func_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f + var_2.x) - -1000f), all(vec2<bool>(false, var_0.a.x)) == !arg_0.c.x, _wgslsmith_div_i32(-arg_0.b, u_input.a.x)), func_4(Struct_3(var_2.x, !var_0.a.x, _wgslsmith_mod_i32(-2147483647i, 26874i)), arg_0.b, ~vec4<i32>(-41283i, u_input.a.x, arg_0.b, -1i)), var_0), func_5(func_2(_wgslsmith_add_i32(1i, 17678i & arg_3.x)), func_4(Struct_3(_wgslsmith_f_op_f32(max(var_2.x, 1276f)), -925f > var_2.x, arg_3.x), _wgslsmith_add_i32(arg_1.b, ~u_input.a.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, -16505i, arg_0.b, arg_0.b), vec4<i32>(-2147483647i, 50482i, u_input.e.x, u_input.e.x))), Struct_1(!vec4<bool>(arg_0.d.x, false, true, true))));
    var var_4 = all(vec3<bool>(all(select(!var_0.a, vec4<bool>(arg_1.d.x, true, true, arg_1.d.x), !arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)) != -1000f, any(vec2<bool>(true, !arg_1.d.x))));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = select(!(!vec3<bool>(func_1(Struct_2(vec3<bool>(false, false, true), u_input.e.x, vec3<bool>(false, false, false), vec2<bool>(false, false)), Struct_2(vec3<bool>(false, true, false), u_input.e.x, vec3<bool>(true, true, true), vec2<bool>(true, true)), 0u, vec3<i32>(u_input.e.x, u_input.a.x, u_input.a.x)), true, true)), vec3<bool>(func_3().x, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.a.x, u_input.e.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.e.x, -78431i)) >> (_wgslsmith_mult_u32(9336u, 15580u) % 32u)).b, any(vec2<bool>(true, true))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_0 = -(u_input.e.x & 1i);
    let var_2 = select(var_1, var_1, var_1);
    var var_3 = 740f;
    var var_4 = ~u_input.b.zx;
    let var_5 = -1977f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(var_4.x), u_input.d.x ^ max(1u, ~var_4.x), 15787u, 0u));
}

