struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 1285f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1316f)))), select(!vec2<bool>(false != arg_1.x, arg_1.x), select(!arg_1, vec2<bool>(all(arg_1), false), select(vec2<bool>(false, arg_1.x), vec2<bool>(false, arg_1.x), arg_1)), any(vec4<bool>(any(vec2<bool>(false, false)), arg_1.x, all(vec4<bool>(arg_1.x, false, true, arg_1.x)), arg_1.x))), ~_wgslsmith_mod_u32(firstTrailingBit(~u_input.a), abs(arg_2)), vec4<u32>(1u | arg_2, select(71856u | abs(u_input.a), arg_2, arg_1.x), 1u, ~u_input.a));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(585f, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, var_0.b.x)) - arg_0) - -1950f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(323f)))) + _wgslsmith_div_f32(-1000f, 236f)) - _wgslsmith_f_op_f32(-arg_0)));
    let var_2 = Struct_2(vec3<i32>(-2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(-63239i, 24511i))), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(32058i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, -3857i)))), any(vec4<bool>(all(!vec2<bool>(var_0.b.x, var_0.b.x)), true, arg_1.x, arg_1.x)), Struct_1(false, select(vec3<bool>(var_0.b.x, arg_0 > var_0.a, var_0.b.x), select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(false, false, var_0.b.x)), vec3<bool>(var_0.b.x, true, false)), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, true, true), -969f != arg_0))), vec4<u32>(arg_2, select(abs(~4294967295u), ~min(32927u, u_input.a), var_0.b.x), 0u, 50590u), Struct_1(true, !(!vec3<bool>(var_0.b.x, true, true))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 916f)))), select(select(select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x), var_2.a.x < var_2.a.x), var_2.c.b.xz, !var_2.e.b.yz), vec2<bool>(var_0.b.x, var_0.b.x), true), 0u, vec4<u32>(63265u, 0u, 62574u, _wgslsmith_dot_vec2_u32(var_0.d.yw, vec2<u32>(~4294967295u, u_input.a))));
    var_0 = Struct_3(-737f, vec2<bool>(true, arg_1.x), ~var_0.c, var_0.d);
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~firstTrailingBit(arg_1.d.yyx) | firstTrailingBit(vec3<u32>(762u, u_input.a, 4294967295u)), arg_2.d.xxy), arg_2.d.xxx);
    let var_1 = abs(4408u);
    var var_2 = select(select(arg_2.c.b.xy, select(arg_1.b, arg_2.c.b.xy, arg_2.e.b.yx), !arg_1.b), arg_2.e.b.yz, arg_1.b);
    var var_3 = arg_2;
    var var_4 = Struct_3(arg_1.a, vec2<bool>(select(any(select(var_3.c.b, arg_2.e.b, vec3<bool>(arg_2.e.a, false, false))), arg_3, any(!vec4<bool>(arg_2.e.b.x, true, arg_3, arg_2.b))), !(true || !var_3.b)), arg_2.d.x, select(vec4<u32>(arg_2.d.x, countOneBits(_wgslsmith_div_u32(var_1, arg_2.d.x)), ~u_input.a, reverseBits(~var_1)), max(var_3.d, vec4<u32>(4417u, arg_2.d.x, 17580u, 45991u)) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 16122u, 4294967295u, 4294967295u), ~vec4<u32>(0u, var_1, u_input.a, var_0.x)), arg_2.e.a));
    return select(select(!(!arg_2.e.b.xx), select(vec2<bool>(!arg_2.e.b.x, arg_1.b.x | var_4.b.x), !(!arg_1.b), all(!vec4<bool>(var_4.b.x, true, var_2.x, true))), var_3.e.b.yz), select(vec2<bool>(true, true), arg_1.b, !select(arg_1.b, !vec2<bool>(arg_1.b.x, true), arg_2.b)), 0u > (var_1 >> ((abs(4294967295u) ^ abs(var_0.x)) % 32u)));
}

fn func_2() -> f32 {
    let var_0 = i32(-1i) * -36667i;
    let var_1 = vec3<bool>(any(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(576f, vec2<bool>(false, true), u_input.a))), Struct_3(-1009f, vec2<bool>(false, false), ~3802u, ~vec4<u32>(u_input.a, 5591u, u_input.a, u_input.a)), Struct_2(reverseBits(vec3<i32>(0i, var_0, var_0)), true, Struct_1(true, vec3<bool>(true, false, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 18840u, u_input.a, u_input.a)), Struct_1(false, vec3<bool>(true, false, false))), false)), !(var_0 <= (~1i << (u_input.a % 32u))), all(vec3<bool>(false, true, true)));
    let var_2 = reverseBits(_wgslsmith_mult_vec4_u32(select(~(vec4<u32>(4294967295u, 26188u, 44993u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 1u, 25427u)), ~(~vec4<u32>(1u, u_input.a, 44228u, 1u)), vec4<bool>(var_0 < 0i, var_1.x, var_1.x, func_4(1094f, Struct_3(-169f, var_1.zy, u_input.a, vec4<u32>(u_input.a, 4294967295u, u_input.a, 61288u)), Struct_2(vec3<i32>(37019i, var_0, var_0), false, Struct_1(true, vec3<bool>(false, var_1.x, true)), vec4<u32>(u_input.a, 18429u, u_input.a, u_input.a), Struct_1(var_1.x, vec3<bool>(var_1.x, true, var_1.x))), false).x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(u_input.a), firstLeadingBit(38380u), u_input.a, reverseBits(u_input.a)), vec4<u32>(max(1u, u_input.a), 1u, _wgslsmith_mod_u32(u_input.a, 4294967295u), 98976u), abs(~vec4<u32>(u_input.a, u_input.a, 30775u, 64857u)))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1185f, -443f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -1000f, 1385f))) * vec3<f32>(1468f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(717f, -551f)), vec2<bool>(true, false), 0u << (u_input.a % 32u))), -722f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, 1731f, 214f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1033f, -413f, -1214f), vec3<f32>(-1151f, 434f, 652f), vec3<bool>(true, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(200f, 668f, 952f), vec3<f32>(-483f, -573f, 292f))))), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(743f, -840f, -253f)))) - vec3<f32>(_wgslsmith_div_f32(592f, 1133f), _wgslsmith_f_op_f32(f32(-1f) * -2662f), _wgslsmith_f_op_f32(func_3(-991f, var_1.xy, u_input.a))))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.x * 662f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_div_f32(var_3.x, 337f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, -571f, var_3.x), vec3<f32>(2861f, var_3.x, -600f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(847f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x - 1000f))))));
    return -1377f;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = countOneBits(arg_1.c);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1000f, arg_2.x)))))), arg_1.b, arg_1.c, vec4<u32>(_wgslsmith_sub_u32(4294967295u, (arg_1.c & arg_1.c) | 1u), 33152u, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 18725u), _wgslsmith_add_u32(u_input.a, 4294967295u))), ~18221u));
    var_0 = !any(vec2<bool>(any(!vec3<bool>(arg_1.b.x, true, var_2.b.x)), arg_1.b.x));
    var var_3 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(-20809i, -2147483647i, 14316i)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~vec3<i32>(12291i, 102117i, 0i), vec3<i32>(-40210i, -2147483647i, 1i)), vec3<i32>(1i, -30247i, ~select(0i, 2147483647i, false)) << (var_2.d.zwz % vec3<u32>(32u)));
    return Struct_1(var_2.b.x, select(!select(!vec3<bool>(arg_1.b.x, arg_1.b.x, true), vec3<bool>(false, arg_1.b.x, true), all(vec3<bool>(true, var_2.b.x, false))), vec3<bool>(false | !var_2.b.x, true, arg_1.b.x), all(select(select(vec4<bool>(var_2.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, false, true, var_2.b.x), var_2.b.x), !vec4<bool>(arg_1.b.x, var_2.b.x, false, arg_1.b.x), u_input.a <= 0u))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> i32 {
    let var_0 = !select(select(select(arg_1, vec3<bool>(true, arg_2.x, arg_1.x), false), vec3<bool>(any(arg_0.b.xz), arg_1.x, func_4(339f, Struct_3(2210f, arg_0.b.yy, 1u, vec4<u32>(4294967295u, 4294967295u, u_input.a, 54065u)), Struct_2(vec3<i32>(-16478i, -767i, 2147483647i), arg_1.x, Struct_1(arg_1.x, arg_1), vec4<u32>(arg_3.x, u_input.a, u_input.a, arg_3.x), arg_0), true).x), !arg_1), arg_2.yzx, true);
    let var_1 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-25638i, 1i, i32(-1i) * -23897i), countOneBits(min(vec3<i32>(24700i, 60098i, -1i), vec3<i32>(1i, 0i, 4364i)))), vec3<i32>(-24700i, -65821i, 1i) >> (~select(arg_3, vec3<u32>(71u, u_input.a, 0u), arg_1) % vec3<u32>(32u))), true, arg_0, vec4<u32>(arg_3.x, ~u_input.a, 1u, 45278u), arg_0);
    var var_2 = true;
    let var_3 = Struct_3(1734f, select(var_1.e.b.zx, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1544f, 866f, -232f, 348f), vec4<f32>(-944f, 1000f, -1018f, 1091f)))), Struct_3(_wgslsmith_f_op_f32(329f * 2585f), !vec2<bool>(false, arg_0.b.x), ~45838u, var_1.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-148f, 137f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1218f, 299f)))).b.xx, vec2<bool>(all(vec3<bool>(var_0.x, false, false)) && var_0.x, all(arg_2))), 1u << (u_input.a % 32u), vec4<u32>(~(~84441u), 23510u, var_1.d.x, arg_3.x));
    var_2 = !(-1i == var_1.a.x);
    return i32(-1i) * -(~_wgslsmith_sub_i32(max(var_1.a.x, -2147483647i), var_1.a.x));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(abs(302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -1000f), arg_0, arg_0), Struct_3(_wgslsmith_f_op_f32(arg_0 + -601f), vec2<bool>(true, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)), select(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 45277u)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec2<f32>(arg_0, -723f), false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), vec3<bool>(true, !all(vec3<bool>(true, false, false)), true), vec4<bool>(_wgslsmith_sub_u32(~15203u, 1u) < (35943u & u_input.a), all(vec4<bool>(all(vec2<bool>(false, false)), true, true, false)), true, (_wgslsmith_div_i32(-19288i, 1i) ^ firstTrailingBit(29599i)) > firstLeadingBit(0i)), select(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(0u, 0u, 4294967295u)), abs(~(~vec3<u32>(u_input.a, 0u, 7662u))), vec3<bool>(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)))));
    var_0 = func_6(func_5(vec4<f32>(-1054f, -220f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, vec2<bool>(true, true), 4294967295u)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f * -909f)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), 1273f == arg_0), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.a), min(12758u, 30140u)), ~select(vec4<u32>(0u, u_input.a, 51285u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 68256u, u_input.a), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, 307f))))))), !vec3<bool>(!any(vec3<bool>(true, true, false)), true | (arg_0 <= arg_0), true | any(vec2<bool>(true, false))), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), vec3<u32>(~(u_input.a >> (select(71851u, 8630u, true) % 32u)), firstLeadingBit(_wgslsmith_div_u32(0u, 36911u)) << (0u % 32u), ~select(~u_input.a, 38050u, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -430f, arg_0, 877f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -447f, arg_0, arg_0), vec4<f32>(-1376f, 1009f, arg_0, arg_0), vec4<bool>(true, false, false, false)))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f - -411f) + -909f)), -264f, arg_0));
    let var_2 = ~_wgslsmith_div_vec4_u32(min(max(vec4<u32>(u_input.a, u_input.a, 18851u, 1u), vec4<u32>(0u, 0u, 0u, 1680u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(0u, 0u, u_input.a, 34535u))) ^ (vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 16735u, 11607u)), firstLeadingBit(~vec4<u32>(0u, u_input.a, 1u, u_input.a)) << (~(~vec4<u32>(865u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_3 = -(_wgslsmith_mod_vec2_i32(countOneBits(select(vec2<i32>(-36641i, -91738i), vec2<i32>(5891i, 2147483647i), vec2<bool>(false, false))), vec2<i32>(i32(-1i) * -1i, i32(-1i) * -26827i)) | _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -1i)) >> (~vec2<u32>(u_input.a, var_2.x) % vec2<u32>(32u)), abs(vec2<i32>(1i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-54025i, -40680i), ~vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, 1i))));
    return select(select(select(vec4<bool>(all(vec2<bool>(false, true)), true, true, false), vec4<bool>(all(vec2<bool>(true, false)), true, all(vec3<bool>(false, false, false)), true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, true, true, false)))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), true)), !func_5(vec4<f32>(var_1.x, 2414f, arg_0, -322f), Struct_3(-894f, vec2<bool>(true, false), 1u, vec4<u32>(u_input.a, 4294967295u, 23222u, 4294967295u)), var_1.yz).a), select(vec4<bool>(true, true, false, var_3.x >= 5547i), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), true), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)) || func_4(var_1.x, Struct_3(arg_0, vec2<bool>(false, true), 1u, vec4<u32>(19038u, u_input.a, 4294967295u, var_2.x)), Struct_2(vec3<i32>(var_3.x, var_3.x, 1i), true, Struct_1(true, vec3<bool>(true, true, false)), vec4<u32>(0u, 674u, 1u, 67556u), Struct_1(false, vec3<bool>(false, false, true))), var_2.x != var_2.x).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-54802i, 40413i, -34564i, -2147483647i)), func_1(282f)), ~vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(~_wgslsmith_clamp_i32(1i, 1i, ~68369i), ~(-24659i), ~(~_wgslsmith_div_i32(708i, 46917i)), min(firstTrailingBit(-3544i), firstLeadingBit(-1i)) | 0i));
    var var_1 = 30747i;
    let var_2 = vec4<u32>(firstLeadingBit(u_input.a), 58182u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, u_input.a)), ~(~vec2<u32>(u_input.a, u_input.a))), firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(87694u, u_input.a)))), firstLeadingBit(_wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(u_input.a, u_input.a)), u_input.a)));
    var_1 = -_wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(30957i, -1i))), var_0);
    var_1 = _wgslsmith_add_i32(var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))));
}

