struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec3<bool> {
    var var_0 = arg_0.c.d;
    var_0 = min(arg_0.c.d, 0u);
    let var_1 = Struct_3(Struct_2(arg_0.c.a.a, arg_1, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(arg_0.c.e, arg_0.c.c)) << (u_input.c.x % 32u), arg_0.c.a.d, Struct_1(vec2<i32>(min(24832i, -2147483647i), ~u_input.b.x), vec4<i32>(-u_input.b.x, ~(-1i), -arg_0.c.c.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, arg_0.c.e)), arg_0.c.a.a.c)), vec4<f32>(-477f, -197f, arg_0.c.b.x, arg_0.c.b.x), arg_0.c.c >> (select(vec2<u32>(0u, arg_0.c.d), ~select(u_input.c.zy, vec2<u32>(arg_0.b, u_input.c.x), vec2<bool>(false, false)), arg_0.c.a.b) % vec2<u32>(32u)), _wgslsmith_sub_u32(arg_0.c.d, ~(~u_input.c.x) | (~arg_0.c.d | firstTrailingBit(arg_0.b))), vec2<i32>(-49108i, ~(~u_input.a.x)));
    var var_2 = Struct_4(1i, vec2<f32>(arg_0.c.b.x, var_1.b.x));
    var var_3 = arg_0;
    return vec3<bool>(false, var_1.a.b, any(vec4<bool>(arg_1, var_1.a.b, !(!var_1.a.b), max(-3063i, arg_0.c.a.a.a.x) > _wgslsmith_mult_i32(-24163i, u_input.b.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = ~firstLeadingBit(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, 1u, arg_1.c.x), arg_1.c.zyw)));
    let var_1 = Struct_3(Struct_2(Struct_1(arg_2.zy, ~(-arg_1.b), _wgslsmith_mult_vec4_u32(u_input.c & arg_1.c, u_input.c)), true, arg_1.a.x, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(floor(arg_0)), arg_2.xx, var_0.x, ~vec2<i32>(_wgslsmith_dot_vec3_i32(-arg_2, vec3<i32>(0i, arg_1.b.x, -11212i)), firstLeadingBit(u_input.b.x << (arg_1.c.x % 32u))));
    var var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f + var_1.b.x) + _wgslsmith_f_op_f32(ceil(arg_0.x))), var_1.a.b), vec2<bool>(true, true), false);
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -759f), var_1.b.x, true)), var_1.b.x)))));
    var var_4 = select(!func_3(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 171f)), 50718u, var_1), all(vec4<bool>(true, true, true, var_1.a.b)) && all(vec4<bool>(true, true, var_2.x, var_1.a.b))), !(!select(!vec3<bool>(false, var_1.a.b, false), vec3<bool>(var_1.a.b, true, var_1.a.b), true)), vec3<bool>(!any(select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(true, true, false, var_2.x), vec4<bool>(true, false, var_2.x, var_1.a.b))), ~_wgslsmith_dot_vec4_u32(arg_1.c, u_input.c) <= 20201u, false));
    return ~abs(arg_1.c.yx);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: i32) -> Struct_5 {
    let var_0 = abs(u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + 807f))), arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2109f)))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * 404f), _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + -1107f))))));
    let var_2 = select(vec2<bool>(!any(vec3<bool>(true, false, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), -528f >= var_1.x))), func_3(Struct_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1585f, arg_0.x, -630f))), firstTrailingBit(~u_input.c.x), Struct_3(Struct_2(Struct_1(vec2<i32>(35603i, -10409i), vec4<i32>(41407i, var_0, 27473i, var_0), vec4<u32>(4294967295u, u_input.c.x, 41716u, u_input.c.x)), true, -2147483647i, Struct_1(vec2<i32>(var_0, var_0), vec4<i32>(u_input.b.x, -59140i, 10783i, arg_2), vec4<u32>(arg_1, arg_1, arg_1, arg_1)), Struct_1(u_input.a.zz, vec4<i32>(arg_2, var_0, 2147483647i, 26473i), vec4<u32>(arg_1, 4294967295u, 0u, 1u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -2351f, -3071f, -799f), vec4<f32>(var_1.x, arg_0.x, var_1.x, arg_0.x), false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, var_0), vec2<i32>(-31490i, var_0), u_input.b.xz), arg_1, -u_input.a.yz)), true).yy, true);
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-782f)), _wgslsmith_f_op_f32(min(var_1.x, arg_0.x)), _wgslsmith_f_op_f32(419f + 950f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -319f, arg_0.x)))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, var_1.x))))), _wgslsmith_f_op_f32(1481f - _wgslsmith_f_op_f32(ceil(-539f))), 240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)) - 1429f));
    return Struct_5(_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_1.x, -367f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1651f)))))), countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1 << (81871u % 32u), max(arg_1, arg_1), ~arg_1), arg_1)), Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_0), vec2<i32>(u_input.a.x, -2147483647i)), -vec4<i32>(u_input.b.x, -31119i, u_input.b.x, u_input.a.x), u_input.c), !(var_0 >= 20684i), -(var_0 ^ 28327i), Struct_1(-vec2<i32>(2147483647i, u_input.b.x), vec4<i32>(var_0, arg_2, var_0, -14105i), u_input.c), Struct_1(vec2<i32>(arg_2, var_0), ~vec4<i32>(-39888i, var_0, -1i, var_0), reverseBits(u_input.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1309f, arg_0.x, -1785f, -396f), vec4<f32>(815f, var_1.x, 978f, var_1.x))))), ~u_input.b.xy, 34947u, ~vec2<i32>(reverseBits(-16994i), arg_2)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -2708f), _wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(func_2(arg_0.b, Struct_1(vec2<i32>(-43222i, arg_0.e.x), vec4<i32>(-17210i, arg_0.e.x, 2147483647i, 46976i), vec4<u32>(86708u, u_input.c.x, u_input.c.x, arg_0.a.a.c.x)), arg_0.a.e.b.yxz), vec2<u32>(arg_0.d, 39559u)), ~arg_0.a.d.c.wz), ~(~62529u)), u_input.b.x & countOneBits(firstTrailingBit(u_input.b.x)));
    let var_1 = arg_0.b;
    let var_2 = Struct_4(_wgslsmith_dot_vec3_i32(u_input.b, -vec3<i32>(0i, arg_0.c.x, arg_0.e.x)) | var_0.c.a.e.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 715f) + vec2<f32>(var_1.x, var_0.a.x))))) * vec2<f32>(var_0.c.b.x, -608f)));
    let var_3 = true | (var_0.c.a.b && false);
    let var_4 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1886f, _wgslsmith_f_op_f32(-var_2.b.x)) + _wgslsmith_f_op_f32(abs(var_0.a.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = !func_3(Struct_5(vec3<f32>(-447f, _wgslsmith_div_f32(-201f, arg_2.x), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<i32>(-19754i, 2147483647i), arg_1.b, var_0.c), false, var_0.a.x, Struct_1(u_input.b.xy, arg_1.b, u_input.c), Struct_1(arg_1.a, var_0.b, vec4<u32>(4294967295u, 40145u, 86298u, 4294967295u))), vec4<f32>(-775f, 1055f, arg_2.x, -218f), vec2<i32>(arg_1.a.x, -9549i), 4294967295u, vec2<i32>(u_input.a.x, arg_1.a.x))))), 20587u, func_4(vec3<f32>(arg_2.x, arg_2.x, -346f), arg_1.c.x, var_0.a.x).c), true).xz;
    var var_2 = Struct_4(-2520i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, 1252f), vec2<f32>(1000f, -1661f), false)) - _wgslsmith_f_op_vec2_f32(-arg_2)) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + -896f), _wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -128f) - func_4(vec3<f32>(-536f, 808f, -1664f), 58143u, arg_1.b.x).a.zx)))));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(vec3<f32>(arg_2.x, arg_2.x, 2702f), var_0.c.x, var_0.b.x).c.b.x, _wgslsmith_f_op_f32(exp2(arg_2.x)), func_4(vec3<f32>(arg_2.x, 1309f, var_2.b.x), 0u, 0i).c.b.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 884f, arg_0.x) + vec3<f32>(1276f, var_2.b.x, 849f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, -482f))))), arg_1.c.x, -1i).c;
    return func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(round(var_3.b.x))), -152f, arg_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x, _wgslsmith_f_op_f32(floor(var_3.b.x)))))), ~(~24127u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<f32>(1785f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b.x, -1i), vec4<i32>(0i, u_input.a.x, 25774i, 1i), u_input.c), true, u_input.b.x, Struct_1(vec2<i32>(-2147483647i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.b.x, 9756i, u_input.b.x), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)), Struct_1(vec2<i32>(22249i, u_input.a.x), vec4<i32>(-15442i, -2147483647i, 24279i, u_input.a.x), vec4<u32>(1u, u_input.c.x, 0u, 74566u))), vec4<f32>(793f, -123f, -600f, -540f), vec2<i32>(20667i, u_input.b.x), u_input.c.x, vec2<i32>(-27830i, u_input.a.x)))))))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a.x, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 12236i), vec2<i32>(u_input.a.x, -50485i)) << ((u_input.c.wx & u_input.c.xx) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.b.x, -1666i), firstTrailingBit(vec3<i32>(-1i, u_input.a.x, u_input.b.x))), u_input.b.x, 1i, u_input.a.x ^ -13366i), ~abs(u_input.c)), vec2<f32>(-365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(570f, 1356f)))));
    var var_1 = var_0.c.b.x;
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_3 = Struct_4(var_0.c.e.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1633f, _wgslsmith_f_op_f32(323f + 815f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1183f))));
    var var_4 = var_0.c.a.d.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(var_0.c.a.d.c), vec4<u32>(var_4.x, 4294967295u, u_input.c.x, 64634u)), u_input.c >> (vec4<u32>(var_0.c.a.a.c.x, 1u, u_input.c.x, 74264u) % vec4<u32>(32u))), var_0.c.a.e.c.x, reverseBits(_wgslsmith_mult_u32(var_4.x, 1u)), ~firstTrailingBit(var_0.b)), _wgslsmith_mult_u32(~var_0.c.d, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(func_5(var_0.a.zz, var_0.c.a.d, vec2<f32>(var_2, 1047f)).c.a.e.c, vec4<u32>(var_0.b, u_input.c.x, 33095u, 1u)), ~vec4<u32>(var_0.b, 88594u, 65123u, var_0.b) | u_input.c)), ~var_4.x, _wgslsmith_f_op_vec2_f32(-var_0.c.b.zx));
}

