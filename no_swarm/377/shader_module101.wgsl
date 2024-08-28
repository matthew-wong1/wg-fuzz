struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = 1u;
    global0 = u_input.b.x >> (~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 10973u), 63293u) % 32u);
    var var_0 = 2295i;
    global0 = _wgslsmith_add_u32(1u, 108198u);
    var_0 = u_input.a;
    return Struct_1(vec3<u32>(u_input.e.x >> (u_input.e.x % 32u), _wgslsmith_sub_u32(u_input.e.x ^ u_input.e.x, u_input.e.x), _wgslsmith_add_u32(~u_input.e.x, u_input.e.x)), ~4294967295u, ~vec2<i32>(u_input.a, u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(521f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), -1533f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -129f), 1f, false))), -1165f);
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.d.x), firstLeadingBit(-35063i), 1i, arg_0.x), -vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -27683i)), vec4<i32>(max(select(u_input.a, arg_0.x, true), firstLeadingBit(u_input.a)), 11264i, -39594i, select(-25851i, _wgslsmith_mod_i32(arg_0.x, 1608i), any(vec3<bool>(false, true, true))))), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.e.x));
    let var_1 = countOneBits(-392i);
    global0 = u_input.e.x;
    let var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b), u_input.b);
    global0 = ~(~4294967295u);
    return vec3<f32>(_wgslsmith_f_op_f32(196f * 1461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1329f)))), _wgslsmith_f_op_f32(f32(-1f) * -846f));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(630f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    global0 = u_input.e.x;
    var var_1 = var_0.x;
    let var_2 = Struct_2(reverseBits(62463i), ~(u_input.b.zxy | vec3<u32>(u_input.b.x, abs(55001u), 15361u)));
    var_1 = arg_0.x;
    return Struct_1(u_input.b.zyx, 4294967295u, ~(~func_2().c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) * _wgslsmith_f_op_vec2_f32(trunc(func_2().d))), _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    global0 = 4294967295u;
    global0 = 4294967295u;
    var var_0 = !select(!vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), vec4<bool>(!(u_input.d.x <= -2147483647i), (arg_2.e == arg_2.e) & all(vec2<bool>(true, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), false), true);
    var_0 = !vec4<bool>(!(_wgslsmith_mult_i32(arg_3.c.x, 0i) < select(arg_0.c.x, -1178i, false)), var_0.x, any(var_0.xw), var_0.x);
    var_0 = select(select(!vec4<bool>(true, true, true, var_0.x || var_0.x), vec4<bool>(all(select(var_0.www, var_0.yyw, var_0.x)), false, arg_0.d.x < _wgslsmith_f_op_f32(min(-806f, -379f)), false), vec4<bool>(any(select(vec2<bool>(var_0.x, false), var_0.xx, var_0.zy)), var_0.x, true, var_0.x)), !vec4<bool>(var_0.x, !(!var_0.x), any(select(var_0.zxw, var_0.xyw, false)), var_0.x), vec4<bool>(!(select(true, var_0.x, true) || true), var_0.x, !all(vec4<bool>(var_0.x, false, var_0.x, true)), all(select(select(vec2<bool>(var_0.x, false), var_0.zx, true), select(var_0.zw, vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x)), false))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d.x, arg_3.e, -338f, 939f), vec4<f32>(arg_0.d.x, arg_2.e, arg_2.e, arg_0.e)))) + vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.d.x)), _wgslsmith_f_op_f32(trunc(arg_0.d.x)), arg_3.d.x, _wgslsmith_f_op_f32(sign(550f)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    global0 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 21146u), 1u), ~_wgslsmith_clamp_u32(3265u, arg_1, 4294967295u)) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1, ~24434u, arg_1), _wgslsmith_mult_u32(~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 78411u, arg_1, 19469u), u_input.e))) % 32u));
    var var_0 = Struct_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, u_input.c.x, u_input.d.x), u_input.a, u_input.a), u_input.d.x) ^ -(0i ^ -u_input.d.x), u_input.b.yxy);
    let var_1 = ~u_input.e;
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.wyy);
    return Struct_2(-firstLeadingBit(u_input.a), ~var_0.b);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = min(~abs(_wgslsmith_add_vec3_u32(u_input.b.ywy, ~vec3<u32>(0u, 0u, u_input.e.x))), u_input.b.xyy);
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_2(), Struct_2(u_input.a, vec3<u32>(var_0.x, u_input.e.x, u_input.b.x)), func_4(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(2147483647i, 24957i, 1i, -1i)))), func_4(vec3<f32>(1181f, -1056f, 1485f))))), ~68528u);
    let var_2 = !(!(!all(vec3<bool>(true, true, true))));
    var var_3 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, 1001f, -251f, -1098f)), vec4<f32>(-1371f, 910f, -1376f, 1000f))) * vec4<f32>(-652f, _wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(sign(153f)), -372f))), _wgslsmith_div_u32(~1u, 64110u));
    let var_4 = u_input.b;
    return func_6(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(212f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(281f * -121f))), func_2().d.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(1097f, -589f), any(vec2<bool>(true, true))))), vec4<f32>(285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-519f)) * _wgslsmith_f_op_f32(floor(1043f))), _wgslsmith_f_op_f32(f32(-1f) * -1974f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1221f)), _wgslsmith_f_op_f32(f32(-1f) * -1329f))), vec4<bool>(select(var_2 == var_2, var_2, true), true, (var_2 | var_2) & all(vec3<bool>(var_2, var_2, false)), true))), 69824u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -352f;
    var var_1 = u_input.a & _wgslsmith_div_i32(u_input.a, -u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-826f, -1389f, 1683f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1374f, 577f, 777f), vec3<f32>(1031f, -1000f, -907f))))))))));
    let var_3 = countOneBits(670u);
    var var_4 = func_1(u_input.c.x);
    global0 = _wgslsmith_div_u32(~firstTrailingBit(var_4.b.x) << ((_wgslsmith_add_u32(~var_3, _wgslsmith_div_u32(32681u, u_input.b.x)) >> (_wgslsmith_clamp_u32(var_3, ~var_3, 12806u) % 32u)) % 32u), 0u);
    let var_5 = select(select(vec3<bool>(select(false, false, true), -443f >= _wgslsmith_f_op_f32(-var_2.x), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), all(vec2<bool>(true, true))), false), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, any(vec2<bool>(false, false))), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, _wgslsmith_f_op_f32(exp2(var_2.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f + 115f) - _wgslsmith_f_op_f32(359f - var_2.x)), -172f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + 424f)))));
    var_1 = countOneBits(-57558i);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2, vec3<f32>(-1000f, 582f, 447f)))))).b);
}

