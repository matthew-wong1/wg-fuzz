struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global0 = any(vec3<bool>((~4294967295u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2809u), vec2<u32>(u_input.b, u_input.b))) < 1u, !((u_input.d.x ^ u_input.a.x) <= 0i), false));
    let var_0 = Struct_1(!(u_input.b != 0u), _wgslsmith_div_vec4_i32(max(abs(u_input.a), ~vec4<i32>(u_input.d.x, 1i, 1i, u_input.c.x)) << (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), countOneBits(~(-vec4<i32>(u_input.d.x, u_input.c.x, -2147483647i, u_input.c.x)))), ~(~u_input.b), vec4<bool>(true, true, true, true), true | all(vec4<bool>(true, true, true, u_input.b > u_input.b)));
    global0 = true;
    let var_1 = Struct_1(false, _wgslsmith_sub_vec4_i32(u_input.a ^ var_0.b, reverseBits(_wgslsmith_clamp_vec4_i32(max(var_0.b, var_0.b), u_input.c, firstLeadingBit(var_0.b)))), _wgslsmith_add_u32(abs(max(var_0.c, u_input.b)) >> (u_input.b % 32u), u_input.b), select(vec4<bool>(select(any(var_0.d.zx), all(vec4<bool>(var_0.d.x, var_0.a, false, false)), true), u_input.b != (4294967295u & u_input.b), false, any(var_0.d)), vec4<bool>(firstLeadingBit(var_0.b.x) == _wgslsmith_div_i32(-2147483647i, var_0.b.x), true, var_0.d.x, var_0.a), !(true | any(vec3<bool>(var_0.a, var_0.e, var_0.e)))), var_0.d.x);
    global0 = all(vec2<bool>(true, !(var_0.e & all(var_0.d))));
    return -u_input.d.x;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    var var_0 = Struct_2(vec2<u32>(~arg_3, 1u) << (vec2<u32>(abs(~0u), _wgslsmith_add_u32(firstLeadingBit(arg_3), ~28797u)) % vec2<u32>(32u)), Struct_1(true, vec4<i32>(func_3(), -1i, u_input.d.x, abs(arg_1.x | -66130i)), 0u, !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), true), Struct_1(arg_0 <= 2027f, arg_1, select(~4294967295u, ~arg_3, true) << ((arg_3 ^ arg_3) % 32u), vec4<bool>(true, ~arg_1.x == min(arg_1.x, u_input.c.x), true, true), 872f < _wgslsmith_f_op_f32(sign(arg_0))));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2204f, _wgslsmith_f_op_f32(step(-858f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, 2081f), _wgslsmith_f_op_f32(arg_0 + 498f), true))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(f32(-1f) * -550f))))) > -284f;
    var var_3 = Struct_2(vec2<u32>(select(reverseBits(0u), ~(~var_1.c), true), 0u), Struct_1(any(vec4<bool>(all(var_0.c.d), true, true, any(var_1.d.yzy))), vec4<i32>(u_input.d.x >> ((u_input.b & 1u) % 32u), -6885i, var_0.c.b.x, reverseBits(-49689i)), u_input.b, vec4<bool>(!var_0.c.a, var_0.b.a, !(var_1.b.x > u_input.c.x), false), !(-31536i != (arg_1.x << (arg_3 % 32u)))), Struct_1(any(!select(var_1.d.xz, vec2<bool>(false, false), true)), var_0.b.b & -abs(u_input.c), 1u, var_1.d, var_1.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -138f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1055f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = 1i;
    let var_1 = abs(vec2<i32>(-62585i, 0i));
    var var_2 = vec4<u32>(4294967295u, 4294967295u, 1u, _wgslsmith_mod_u32(arg_1.b.c, 47397u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_2(-897f, vec4<i32>(select(1i, arg_1.b.b.x, all(vec2<bool>(arg_1.b.e, true))), _wgslsmith_sub_i32(-u_input.c.x, ~var_1.x), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(20270i, var_1.x, 122108i, var_1.x), firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, -456f, -794f)), arg_1.b.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(3310f + _wgslsmith_f_op_f32(f32(-1f) * -1655f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f + 1087f)) + _wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_f32(sign(209f)))), !((19829u | u_input.b) < ~12694u))));
    let var_4 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1195f * 1113f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-643f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-702f, -777f))))))));
    global0 = select(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))) && (_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_2(vec2<u32>(u_input.b, 4294967295u), Struct_1(true, u_input.c, u_input.b, vec4<bool>(true, true, true, true), false), Struct_1(true, vec4<i32>(u_input.d.x, u_input.c.x, -2147483647i, -1i), 26352u, vec4<bool>(true, true, false, true), false)))) <= var_0), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, -1219f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_2(vec2<u32>(63652u, u_input.b), Struct_1(false, vec4<i32>(u_input.c.x, -8511i, u_input.a.x, u_input.c.x), 0u, vec4<bool>(true, false, false, false), false), Struct_1(true, vec4<i32>(-54238i, u_input.d.x, u_input.a.x, 1i), 0u, vec4<bool>(false, false, false, false), true)))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1290f, 385f, var_0) - vec3<f32>(1192f, -381f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, var_1.x, -225f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_1.x, -2265f), vec3<f32>(259f, var_1.x, var_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-974f, var_0, var_0), vec3<f32>(-255f, var_1.x, var_0))))))), vec3<f32>(-1114f, 293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2213f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), select(vec3<bool>(select(true, false, false) && false, select(false, true, any(vec2<bool>(true, false))), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true)));
    var var_2 = Struct_1(true, min(_wgslsmith_add_vec4_i32(max(u_input.c, vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -28397i, 24877i, u_input.d.x), vec4<i32>(-12656i, u_input.d.x, 28363i, 0i), u_input.c)), ~(~vec4<i32>(u_input.c.x, -1i, 758i, 4607i))) | u_input.a, u_input.b, vec4<bool>(_wgslsmith_dot_vec2_i32(min(u_input.a.xy, u_input.d), vec2<i32>(u_input.c.x, u_input.d.x)) != _wgslsmith_mod_i32(abs(-2147483647i), u_input.d.x), true, (select(false, true, true) | any(vec3<bool>(false, false, true))) == true, select(true, true, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-max(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-51319i, u_input.c.x, var_2.b.x), u_input.c.wwy)), var_2.b.yyw), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(144f - 1116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))));
}

