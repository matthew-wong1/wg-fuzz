struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = arg_1;
    global1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(global1.x, u_input.e), _wgslsmith_mod_u32(u_input.e, ~u_input.e), global1.x), vec3<u32>(51558u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19361u, global1.x, 4048u), vec4<u32>(u_input.e, u_input.d.x, 54258u, global1.x)) % 32u), _wgslsmith_mod_u32(global1.x, 0u), 1u)), firstTrailingBit((~vec3<u32>(global1.x, 34964u, 4294967295u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.e, 2971u), vec3<u32>(47481u, 37657u, u_input.e)) % vec3<u32>(32u))) >> (abs(firstLeadingBit(vec3<u32>(u_input.e, 31695u, global1.x))) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(123f - _wgslsmith_f_op_f32(sign(1399f))), _wgslsmith_f_op_f32(ceil(1986f)), true));
    let var_1 = ~(-vec4<i32>(1i, abs(21817i), min(2147483647i, arg_2), _wgslsmith_dot_vec2_i32(countOneBits(u_input.a), ~vec2<i32>(57656i, 2147483647i))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0)), -736f))) < _wgslsmith_f_op_f32(exp2(arg_0)));
    return firstLeadingBit(firstLeadingBit(reverseBits(vec3<u32>(33947u, 1u, 0u)) | vec3<u32>(u_input.d.x, global1.x, global1.x))) >> (vec3<u32>(global1.x | 0u, global1.x, 4294967295u) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global1 = ~(~func_3(_wgslsmith_div_f32(-1157f, _wgslsmith_f_op_f32(f32(-1f) * -409f)), var_0, _wgslsmith_dot_vec3_i32(u_input.b.zxw, vec3<i32>(14701i, u_input.b.x, u_input.b.x) ^ vec3<i32>(-5197i, u_input.a.x, u_input.a.x))));
    let var_1 = vec4<u32>(u_input.d.x, ~(~(~func_3(-644f, Struct_1(vec2<bool>(true, true)), u_input.b.x).x)), _wgslsmith_mult_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global1.x, global1.x), u_input.e, _wgslsmith_clamp_u32(1u, 1u, 1u), ~0u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21653u, 4294967295u, 13741u, 33428u), vec4<u32>(0u, 1u, global1.x, global1.x)), ~u_input.e, global1.x, ~global1.x))), _wgslsmith_add_u32(u_input.d.x, global1.x & _wgslsmith_div_u32(~u_input.e, func_3(-1463f, var_0, -2147483647i).x)));
    global1 = abs(~(var_1.wzz << (abs(~var_1.wwz) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(236f, 930f) * _wgslsmith_div_f32(1362f, -1694f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(455f, -266f)))) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -312f)))));
    return Struct_2(true);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = any(vec2<bool>(select(func_2().a, arg_3.a, ~arg_0.x < -37046i), true));
    let var_1 = !select(select(!select(vec3<bool>(var_0, arg_3.a, true), vec3<bool>(false, var_0, arg_3.a), true), select(!vec3<bool>(arg_3.a, var_0, false), select(vec3<bool>(false, false, var_0), vec3<bool>(true, arg_3.a, false), vec3<bool>(var_0, true, true)), arg_3.a), vec3<bool>(true, true, true)), select(vec3<bool>(u_input.e < 86196u, arg_3.a, var_0), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !var_0), vec3<bool>(global1.x != u_input.d.x, !var_0, true)), arg_3.a);
    global1 = ~func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), Struct_1(var_1.xy), -reverseBits(~u_input.b.x));
    let var_2 = select(countOneBits(abs(vec3<u32>(global1.x, global1.x, 1u)) << ((vec3<u32>(4294967295u, 39517u, global1.x) << (abs(vec3<u32>(u_input.e, 25457u, global1.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(99828u, 1u, u_input.d.x), vec3<u32>(4294967295u, 4294967295u, global1.x)), u_input.e, global1.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 16355u, u_input.e), vec3<u32>(u_input.d.x, 4294967295u, u_input.e)), (arg_2 ^ 0i) <= 0i)), !(~_wgslsmith_mult_i32(arg_0.x, arg_2) <= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(58628i, -6662i, arg_2, arg_2))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(291f, _wgslsmith_div_f32(-533f, -1236f), _wgslsmith_f_op_f32(abs(1039f))), vec3<f32>(1465f, _wgslsmith_f_op_f32(135f * -951f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1327f)) - _wgslsmith_f_op_f32(f32(-1f) * -670f)))));
    return !(!(!select(!vec4<bool>(var_0, var_0, var_1.x, var_1.x), vec4<bool>(var_1.x, arg_3.a, var_1.x, true), any(var_1.yy))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1878f)))) + -1392f);
    var var_0 = _wgslsmith_clamp_u32(u_input.d.x, 9522u, u_input.d.x);
    let var_1 = any(vec3<bool>(!any(select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.yww, arg_0.zyy)), all(!(!vec4<bool>(false, arg_0.x, false, false))), false));
    let var_2 = global1.x;
    global1 = _wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(1u, global1.x, 1u)), ~(~(~vec3<u32>(22100u, u_input.d.x, u_input.e)))) & (firstLeadingBit(vec3<u32>(global1.x, 4294967295u, ~global1.x)) & _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(0u, 16291u, 13356u))), vec3<u32>(u_input.d.x << (36375u % 32u), 0u << (u_input.d.x % 32u), ~0u), min(vec3<u32>(61235u, 16987u, global1.x), ~vec3<u32>(global1.x, global1.x, 31331u))));
    return Struct_1(!arg_0.zx);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_5(select(func_4(u_input.b.wwy, -27404i, -24720i, Struct_2(false)), vec4<bool>(false, true, arg_1.a.x, arg_1.a.x), 380f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    global0 = 799f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-867f, 1410f, true))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1143f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1317f)))))));
    var var_2 = arg_1;
    var var_3 = func_5(!vec4<bool>(all(func_4(vec3<i32>(u_input.c, u_input.c, u_input.c), 9996i, u_input.a.x, Struct_2(false)).yzx), true, var_2.a.x, arg_1.a.x));
    return func_5(!vec4<bool>(!any(vec3<bool>(var_3.a.x, true, true)), true, var_3.a.x, true));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(vec2<bool>(true, true));
    var_0 = func_6(~arg_1, func_5(!func_4(vec3<i32>(1i, 33337i, 1i) ^ vec3<i32>(1i, arg_2.x, arg_2.x), _wgslsmith_sub_i32(arg_2.x, 0i), 57033i | u_input.c, func_2())));
    let var_1 = select(select(vec3<bool>(var_0.a.x, true, !(arg_3.x != -712f)), vec3<bool>(true, !var_0.a.x, _wgslsmith_add_i32(arg_0.x, -2147483647i) == ~u_input.b.x), vec3<bool>(!var_0.a.x, any(!vec4<bool>(false, true, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-arg_3.x) == arg_3.x)), !select(!(!vec3<bool>(var_0.a.x, false, var_0.a.x)), select(!vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, false), var_0.a.x | var_0.a.x), (global1.x | 38270u) == 89121u), select(!(!vec3<bool>(false, var_0.a.x, var_0.a.x)), !(!vec3<bool>(var_0.a.x, var_0.a.x, false)), !select(vec3<bool>(var_0.a.x, var_0.a.x, false), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.x, var_0.a.x)), vec3<bool>(true, false, true))));
    var var_2 = ~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(arg_0.x, -2147483647i), 1i)), reverseBits(arg_2.xy) ^ u_input.a);
    var var_3 = vec4<f32>(-1524f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + -599f), _wgslsmith_f_op_f32(-arg_3.x)), -966f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, arg_3.x) - _wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(940f, _wgslsmith_f_op_f32(ceil(-550f)))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-863f - -191f), _wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.b.x, 17193i, u_input.a.x), u_input.d.x, u_input.b, vec2<f32>(-1274f, 1036f)))))))));
    var var_0 = Struct_1(!(!func_4(-vec3<i32>(-8943i, u_input.c, u_input.a.x), -1i, _wgslsmith_add_i32(-32947i, 2147483647i), Struct_2(true)).zz));
    var var_1 = !func_6(global1.x, func_5(vec4<bool>(any(vec4<bool>(var_0.a.x, false, true, true)), false, true, var_0.a.x))).a;
    var var_2 = func_5(func_4(_wgslsmith_clamp_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.b.x, u_input.c, u_input.c)), u_input.b.wzy, u_input.b.yyy), _wgslsmith_sub_i32(-(~12339i), u_input.a.x), -firstTrailingBit(firstLeadingBit(u_input.a.x)), func_2()));
    let var_3 = any(vec2<bool>(var_0.a.x, func_5(vec4<bool>(true, true, true, true)).a.x));
    var var_4 = false;
    let var_5 = !(!select(select(vec3<bool>(var_0.a.x, var_3, true), !vec3<bool>(false, true, var_3), !vec3<bool>(false, true, var_0.a.x)), !(!vec3<bool>(var_0.a.x, false, true)), !var_3));
    let var_6 = firstTrailingBit(-1i);
    let var_7 = _wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(var_6, var_6, var_6, u_input.b.x)), u_input.b) << (select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20342u, global1.x, 4294967295u, 1949u), vec4<u32>(13736u, 33103u, 11134u, u_input.d.x)), ~vec4<u32>(0u, 0u, u_input.d.x, global1.x)) >> (vec4<u32>(global1.x, global1.x | 82765u, firstTrailingBit(global1.x), u_input.e) % vec4<u32>(32u)), vec4<u32>(func_3(_wgslsmith_f_op_f32(select(1352f, -251f, true)), Struct_1(var_5.zz), var_6).x, u_input.e, 39592u, _wgslsmith_mod_u32(~u_input.e, min(0u, 0u))), var_5.x) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, ~vec3<i32>(firstTrailingBit(-7006i), _wgslsmith_clamp_i32(-1i, 1i, select(-8416i, 42802i, true)), _wgslsmith_sub_i32(var_6, u_input.c)));
}

