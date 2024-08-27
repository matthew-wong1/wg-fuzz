struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-725f, 166f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1509f + -213f), _wgslsmith_f_op_f32(trunc(1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1143f), -453f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2124f, -166f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(468f, -1126f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(879f, -473f)))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))) - -1000f)), var_0.x);
    let var_1 = vec4<u32>(~(~(~firstTrailingBit(5513u))), 1u & ~(_wgslsmith_dot_vec4_u32(vec4<u32>(66882u, 0u, 16850u, 0u), vec4<u32>(122879u, 28894u, 4294967295u, 4294967295u)) >> (~91u % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(1u, 0u, false), ~78967u, 49589u, _wgslsmith_mult_u32(17060u, 3743u))), firstLeadingBit(min(1u, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~abs(vec3<u32>(1u, 1u, 1u))));
    var var_2 = abs(~vec3<u32>(var_1.x, ~var_1.x, 1u)) ^ vec3<u32>(_wgslsmith_sub_u32(var_1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1, var_1), 6997u)), firstTrailingBit(~4294967295u), ~_wgslsmith_dot_vec4_u32(var_1 | var_1, var_1));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + var_0.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_div_f32(var_0.x, var_0.x))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1896f)), 1316f));
}

fn func_2() -> vec4<bool> {
    let var_0 = ~(u_input.a.x | -1i);
    let var_1 = 335i;
    let var_2 = Struct_3(-910f, ~countOneBits(max(vec3<i32>(-1i, -33301i, u_input.a.x) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)), u_input.a.yyy | u_input.a.xzy)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(125f, -412f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), !(!select(true, false, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(756f, -262f, 1002f))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(-211f)), -537f, 518f), false, select(select(all(vec3<bool>(true, true, false)), true, select(false, false, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    var var_3 = firstTrailingBit(~firstLeadingBit(select(vec2<u32>(15669u, 66796u), vec2<u32>(1u, 1u), var_2.d.d)));
    var var_4 = ((abs(vec2<u32>(var_3.x, var_3.x) & vec2<u32>(4294967295u, 27789u)) >> ((vec2<u32>(var_3.x, 0u) << (~vec2<u32>(var_3.x, 9910u) % vec2<u32>(32u))) % vec2<u32>(32u))) | select(vec2<u32>(_wgslsmith_mod_u32(var_3.x, var_3.x), firstLeadingBit(var_3.x)), countOneBits(~vec2<u32>(var_3.x, var_3.x)), var_2.c < _wgslsmith_f_op_f32(var_2.d.b.x - -443f))) ^ select(countOneBits(vec2<u32>(35247u, var_3.x ^ var_3.x)), ~vec2<u32>(~27592u, 43623u), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(var_2.d.c, false, false, false)), var_2.d.d || var_2.d.c), true));
    return vec4<bool>(true, var_2.d.d, false, !var_2.d.c);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8987u, 20593u)), vec2<u32>(1u, 1u)), max(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(46783u, 1u), vec2<u32>(37586u, 26568u))), ~61839u, ~(~17689u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) << (firstLeadingBit(countOneBits(vec4<u32>(0u, 29181u, 66002u, 37702u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(step(-1736f, arg_0.b)))), vec3<f32>(arg_0.b, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(136f)))), !arg_2.xzw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(trunc(arg_0.b)))))), true, all(select(!arg_2.wyy, vec3<bool>(true, true, 2363f > arg_0.b), !all(arg_2.yz))));
    var var_2 = !select(!((var_0.x <= var_0.x) | false), !select(arg_1, any(arg_2.xww), true), true);
    let var_3 = 4294967295u;
    var_1 = Struct_1(vec3<f32>(-452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1549f)) * _wgslsmith_f_op_f32(149f - _wgslsmith_f_op_f32(arg_0.b - 350f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1595f)) + var_1.a.x)), _wgslsmith_f_op_vec4_f32(step(var_1.b, var_1.b)), true, abs(_wgslsmith_clamp_u32(4294967295u, var_3 >> (var_0.x % 32u), var_0.x)) == ~var_0.x);
    return arg_0.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-378f - -735f);
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_div_i32(~abs(min(var_1, u_input.a.x)), 4099i) ^ arg_3.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(arg_0.a.b));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_3.ywx)) + _wgslsmith_f_op_vec3_f32(var_3.yxy - var_3.wyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.wzw))))), vec4<f32>(_wgslsmith_f_op_f32(1226f - var_3.x), _wgslsmith_f_op_f32(func_4(Struct_4(arg_0.a.b.xzw, -742f), !arg_2, func_2())), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), arg_2, !(!select(true, arg_2, arg_2))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.b.x))) * -870f);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)) + _wgslsmith_f_op_f32(func_4(Struct_4(arg_0.d.a, arg_0.a), arg_0.d.c, vec4<bool>(true, arg_0.d.d, arg_0.d.d, true))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(728f)))), 1576f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1785f + _wgslsmith_f_op_f32(abs(arg_0.c))), 418f))));
    let var_1 = arg_0;
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(469f, 1080f, -1000f), vec3<f32>(-1055f, 1000f, var_0.a.x), vec3<bool>(arg_0.d.d, true, var_1.d.d))) - vec3<f32>(arg_0.a, var_0.a.x, -828f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, -1000f, 447f))))), 184f);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2778f, -1000f, var_1.a) * vec3<f32>(-927f, var_1.c, 964f))))))), -629f);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-549f, var_1.c), arg_0.d.a.x, all(vec2<bool>(true, true)))), -(~countOneBits(vec3<i32>(-38291i, u_input.a.x, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(118f))) - var_2.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(773f, var_2.a.x, -160f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(arg_0.d), 2276i, var_1.d.c, var_1.b)), _wgslsmith_f_op_f32(264f + var_1.c), _wgslsmith_f_op_f32(-1378f - var_0.b), _wgslsmith_f_op_f32(abs(235f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, var_0.a.x, arg_0.d.b.x, var_1.a) * var_1.d.b)))), func_2().x, all(select(select(vec4<bool>(false, arg_0.d.d, arg_0.d.d, arg_0.d.c), vec4<bool>(false, arg_0.d.d, var_1.d.c, true), var_1.d.d), !vec4<bool>(false, true, arg_0.d.d, var_1.d.d), any(vec4<bool>(arg_0.d.d, var_1.d.c, arg_0.d.c, false))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(func_1(Struct_2(var_3.d), var_3.b.x, false, var_1.b)), _wgslsmith_f_op_f32(arg_0.d.a.x * 869f)), vec3<bool>(true || var_3.d.d, any(vec3<bool>(var_1.d.c, var_3.d.c, arg_0.d.d)), true))), _wgslsmith_div_vec4_f32(arg_0.d.b, arg_0.d.b), all(select(vec4<bool>(false, true, false, false), vec4<bool>(var_3.d.c, false, var_1.d.c, false), vec4<bool>(true, true, arg_0.d.d, true))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(923f, -2267f, 990f), vec4<f32>(-1968f, 175f, -134f, 241f), false, true)), u_input.a.x, true, u_input.a.zwx))))), reverseBits(u_input.a.wxy), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec3<f32>(-1296f, _wgslsmith_f_op_f32(-769f - -996f), 123f), vec4<f32>(-272f, 824f, _wgslsmith_f_op_f32(f32(-1f) * -2074f), _wgslsmith_f_op_f32(-1080f + -422f)), !select(false, true, false), false)));
    let var_1 = _wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_div_f32(_wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) - func_5(Struct_3(1111f, vec3<i32>(-2147483647i, 20388i, 1i), var_0.a.a.x, var_0.a)).a.a.x)), var_0.a.b.x));
    let var_2 = ~min(_wgslsmith_dot_vec3_i32(select(u_input.a.wzw, u_input.a.wzy ^ vec3<i32>(1i, u_input.a.x, 21920i), all(vec4<bool>(false, false, var_0.a.d, true))), max(vec3<i32>(25340i, 1i, 21673i), u_input.a.xxx)), u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(var_0.a.a.zy, var_0.a.b.zw));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~select(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 0u), select(vec3<bool>(true, false, true), select(vec3<bool>(var_4.c, false, true), vec3<bool>(false, var_0.a.c, var_0.a.d), vec3<bool>(var_4.c, true, var_4.c)), vec3<bool>(false, var_4.d, var_4.d))), ~(~0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(110955u, 4294967295u, 67199u, 28919u), ~vec4<u32>(28536u, 0u, 1u, 49628u))), 127796u);
}

