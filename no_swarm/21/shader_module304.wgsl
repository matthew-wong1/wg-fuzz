struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = max(17215i, select(u_input.e.x, u_input.a.x, true));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_add_u32(1u, 0u)), _wgslsmith_div_u32(61710u, arg_0.b.c)), arg_0.a.a), vec3<f32>(930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), -958f), ~u_input.c, _wgslsmith_f_op_f32(arg_0.a.d + -613f));
    var var_2 = arg_0.c;
    var var_3 = -vec4<i32>(firstLeadingBit(0i) >> (1u % 32u), 4722i, u_input.a.x, ~_wgslsmith_mult_i32(u_input.d.x, select(19062i, -2147483647i, false)));
    var var_4 = abs(vec3<u32>(var_1.c >> (0u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(18999u, 4294967295u, arg_0.b.a.x), vec3<u32>(var_1.c, arg_0.a.a.x, 4294967295u) ^ vec3<u32>(arg_0.a.a.x, 80811u, 12136u)), ~(vec3<u32>(66231u, arg_0.a.a.x, 1u) ^ vec3<u32>(4294967295u, 4294967295u, 1u))), 10783u));
    return 51404u;
}

fn func_2() -> f32 {
    let var_0 = u_input.d >> (min(vec3<u32>(~(4259u ^ u_input.c), 6816u, abs(func_3(Struct_2(Struct_1(vec2<u32>(u_input.c, 0u), vec3<f32>(-1261f, 786f, -1000f), 0u, 380f), Struct_1(vec2<u32>(4294967295u, u_input.c), vec3<f32>(-2196f, 812f, 1194f), 76197u, -740f), 1052f)))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)), select(~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c) >> (vec3<u32>(1u, u_input.c, 40617u) % vec3<u32>(32u)), true))) % vec3<u32>(32u));
    var var_1 = 0i;
    let var_2 = 500f;
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(589f + 1000f), var_2), var_2), 769f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), firstTrailingBit(vec4<u32>(47u, u_input.c, 1u, _wgslsmith_sub_u32(u_input.c, 29995u)) >> ((max(vec4<u32>(2847u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 30270u, u_input.c)) ^ ~vec4<u32>(48181u, u_input.c, u_input.c, 138131u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(select(~(-vec3<i32>(-38200i, var_0.x, var_0.x)), var_0, true), u_input.d & vec3<i32>(_wgslsmith_mult_i32(53053i, u_input.e.x), -13993i, -var_0.x), var_0));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 424f) * var_3.a.wy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1826f, var_3.a.x)) * vec2<f32>(685f, var_3.a.x))) * var_3.a.yw));
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + _wgslsmith_div_f32(-123f, 1128f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1898f + _wgslsmith_f_op_f32(1797f + -525f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(431f)))) <= 182f, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, 54120u) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), u_input.c, abs(u_input.c))), Struct_2(Struct_1(~min(vec2<u32>(37632u, u_input.c), vec2<u32>(u_input.c, 0u)), vec3<f32>(_wgslsmith_f_op_f32(ceil(642f)), _wgslsmith_f_op_f32(step(1069f, 802f)), _wgslsmith_f_op_f32(198f - 489f)), 884u, _wgslsmith_f_op_f32(round(1325f))), Struct_1(~vec2<u32>(55408u, u_input.c) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, -1000f, -801f)), _wgslsmith_div_u32(firstTrailingBit(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 64874u, u_input.c), vec3<u32>(58575u, u_input.c, 4294967295u))), -552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) * _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, ~u_input.b, -select(-2147483647i, -2147483647i, true)), u_input.a.zyx));
    let var_1 = var_0;
    var var_2 = vec4<f32>(var_1.a, 382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -447f))) - _wgslsmith_f_op_f32(var_1.d.b.b.x - var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))) - var_0.d.c));
    var var_3 = Struct_4(1000f, var_1.b, var_1.d.a.c, var_1.d, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(var_0.e.x), 0i), _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, -2147483647i), -1i), _wgslsmith_mult_i32(-37368i, 0i)), select(_wgslsmith_div_vec3_i32(max(vec3<i32>(-48017i, u_input.b, var_1.e.x), vec3<i32>(arg_0, arg_0, 23165i)), var_0.e), -reverseBits(vec3<i32>(-1i, arg_0, -1i)), select(!vec3<bool>(var_1.b, true, true), !vec3<bool>(var_0.b, var_0.b, true), var_1.b))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_1.a, var_2.x, 1697f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, -1010f, 777f, var_3.a)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(627f, var_2.x, var_0.a, -208f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_3.d.c, var_3.d.b.b.x, var_3.a) * vec4<f32>(760f, var_0.a, 1363f, -716f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(150f + 557f), _wgslsmith_f_op_f32(max(-1389f, var_0.d.b.b.x)), _wgslsmith_f_op_f32(var_1.a * var_1.d.a.d)) + vec4<f32>(-649f, _wgslsmith_f_op_f32(-var_3.d.a.d), _wgslsmith_f_op_f32(round(var_3.a)), _wgslsmith_f_op_f32(var_0.d.c - 1080f)))), vec4<bool>(true, var_0.d.a.a.x <= 0u, !(!(!var_1.b)), var_0.b)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.e.x)) * _wgslsmith_f_op_f32(trunc(1042f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1149f, -1000f))))))) + -601f);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f - 1000f) * _wgslsmith_div_f32(-501f, -1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1385f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1619f) - 341f))), ~(min(countOneBits(vec4<u32>(u_input.c, 16536u, u_input.c, u_input.c)), ~vec4<u32>(1u, u_input.c, u_input.c, 0u)) & _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), vec4<u32>(u_input.c, 1u, 4294967295u, 1u), vec4<bool>(true, false, true, true)), ~vec4<u32>(1u, u_input.c, 29813u, u_input.c))), _wgslsmith_div_vec3_i32(u_input.a.zwx >> (~(vec3<u32>(1u, 45155u, u_input.c) | vec3<u32>(18201u, 1u, 1u)) % vec3<u32>(32u)), u_input.a.wyx));
    var_2 = _wgslsmith_f_op_f32(sign(var_3.a.x));
    var var_4 = !vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)) && true, true, true, select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    let var_5 = var_4.x;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1191f);
    var var_6 = Struct_4(-115f, -613f < var_3.a.x, ~59572u, Struct_2(Struct_1(vec2<u32>(min(15691u, var_3.b.x), var_3.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, -1000f, var_3.a.x)), ~abs(1u), _wgslsmith_f_op_f32(trunc(var_3.a.x))), Struct_1(~(var_3.b.wz >> (vec2<u32>(u_input.c, var_3.b.x) % vec2<u32>(32u))), var_3.a.xwz, 1u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.a.x + 128f)))), _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(trunc(var_3.a.x)))), vec3<i32>(1i ^ u_input.a.x, _wgslsmith_mod_i32(-2147483647i, ~(~u_input.d.x)), -24130i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

