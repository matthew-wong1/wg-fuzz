struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -164f))) + 1000f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = vec2<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(sign(803f)) >= _wgslsmith_f_op_f32(floor(arg_0.c)), true, 0u >= u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * 861f) == -504f);
    var var_1 = arg_2;
    var var_2 = ~(~vec2<i32>(-2147483647i, 1i));
    var_2 = reverseBits(abs(select(~vec2<i32>(2147483647i, 44762i), vec2<i32>(u_input.d << (var_1.d.a.x % 32u), i32(-1i) * -30236i), !(u_input.e != -2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(arg_2.d.b.x - var_1.a.x);
    return !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, true))), var_0.x, arg_0.d.b.x != _wgslsmith_f_op_f32(-var_1.c)), !(-1506f != _wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = max(vec4<i32>(arg_0, -1i, u_input.e, -2147483647i) | ~vec4<i32>(52570i, arg_0, ~(-1i), u_input.d), -(~vec4<i32>(_wgslsmith_sub_i32(u_input.e, 24203i), 41952i, firstTrailingBit(-50368i), _wgslsmith_sub_i32(u_input.e, u_input.d))));
    let var_1 = Struct_1(vec3<u32>(13620u, arg_3.c >> ((_wgslsmith_sub_u32(arg_2.x, 0u) << (~arg_2.x % 32u)) % 32u), 47370u), arg_3.b, 38257u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.d.x, 698f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -699f))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, 538f, 1000f, -1275f) - vec4<f32>(145f, 221f, -885f, 848f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(354f)), _wgslsmith_f_op_f32(arg_3.b.x + var_1.d.x), arg_3.b.x, 209f))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(299f + 290f)))), Struct_1(firstTrailingBit(vec3<u32>(1u, 4294967295u, 9825u) | _wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(21727u, arg_3.c, 0u), vec3<u32>(1u, 1u, 0u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_div_f32(714f, arg_3.d.x)), var_1.b.x), ~reverseBits(arg_2.x), arg_3.d));
    let var_3 = Struct_1(vec3<u32>(1u & ~_wgslsmith_sub_u32(var_1.c, var_2.b.c), u_input.a.x, arg_2.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f + 214f) + _wgslsmith_f_op_f32(trunc(var_2.d.b.x))), var_2.b.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.x))))), select(~var_2.b.c, ~(4294967295u >> (arg_3.a.x % 32u)), true) & 30191u, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 537f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1229f, _wgslsmith_f_op_f32(sign(var_2.d.b.x))))))));
    var var_4 = vec3<bool>(arg_1.x, arg_1.x || (~u_input.c > ~_wgslsmith_sub_u32(50679u, var_3.c)), !arg_1.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1074f, var_3.d.x, -1513f, _wgslsmith_f_op_f32(-2072f * 1184f)), _wgslsmith_f_op_vec4_f32(var_2.a + var_2.a))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(var_2.a)), _wgslsmith_f_op_vec4_f32(-var_2.a)))))), var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2526f)) - arg_3.b.x), arg_3);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = false;
    var var_1 = vec3<bool>(select(!all(vec4<bool>(arg_2, true, arg_2, true)), any(select(vec4<bool>(arg_2, false, arg_2, false), !vec4<bool>(false, true, arg_2, true), !vec4<bool>(arg_2, arg_2, false, arg_2))), false), true, arg_2);
    let var_2 = func_4(countOneBits(-u_input.e), select(select(vec3<bool>(select(arg_2, true, arg_2), var_1.x, true), select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, true, false), true), !vec3<bool>(false, false, arg_2), !vec3<bool>(arg_2, var_1.x, arg_2)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), arg_2)), select(select(select(vec3<bool>(arg_2, true, var_1.x), vec3<bool>(false, true, arg_2), vec3<bool>(true, true, false)), !vec3<bool>(false, true, arg_2), var_1.x), select(func_2(Struct_2(vec4<f32>(arg_1.b.x, 1910f, -655f, arg_1.b.x), Struct_1(u_input.a.wzy, vec3<f32>(arg_1.d.x, 1215f, -578f), 84877u, arg_1.d), 469f, arg_1), Struct_1(vec3<u32>(79746u, arg_0, 0u), vec3<f32>(-119f, -1722f, -1439f), arg_0, arg_1.d), Struct_2(vec4<f32>(263f, arg_1.d.x, -121f, 1000f), arg_1, arg_1.d.x, Struct_1(vec3<u32>(arg_1.a.x, 0u, arg_1.a.x), arg_1.b, 10731u, vec2<f32>(arg_1.d.x, -1448f)))), vec3<bool>(true, true, var_1.x), var_1.x), vec3<bool>(true, true, true)), !(!select(vec3<bool>(var_1.x, arg_2, arg_2), vec3<bool>(false, true, false), arg_2))), vec4<u32>(1u, firstTrailingBit(firstLeadingBit(abs(4294967295u))), arg_0, firstLeadingBit(firstLeadingBit(33115u))), Struct_1(~firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x) ^ arg_1.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, arg_1.b.x, 1168f)))), abs(u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.b.yy))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.b.x)))))));
    let var_3 = Struct_1(firstTrailingBit(vec3<u32>(4294967295u, arg_1.c, ~1700u)) & vec3<u32>(23922u, reverseBits(0u >> (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 29087u, 9333u), _wgslsmith_clamp_vec3_u32(u_input.b.wxx, vec3<u32>(var_2.d.c, 41968u, 4294967295u), vec3<u32>(var_2.b.c, var_2.b.a.x, 5264u)))), vec3<f32>(_wgslsmith_f_op_f32(272f + 533f), arg_1.d.x, arg_1.d.x), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1056f, arg_1.b.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - var_2.d.b.x)))));
    var var_4 = _wgslsmith_f_op_f32(ceil(-497f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, _wgslsmith_f_op_f32(f32(-1f) * -344f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.d.x, arg_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(448f, -774f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1261f, 217f) * vec2<f32>(1299f, -200f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(451f)), _wgslsmith_div_f32(-734f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-862f, -386f), _wgslsmith_f_op_f32(select(1000f, 127f, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1073f, -2550f) - vec2<f32>(837f, 1185f))))));
    let var_1 = Struct_2(vec4<f32>(-838f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(func_1(26058u, Struct_1(vec3<u32>(u_input.c, 4294967295u, 13237u), vec3<f32>(var_0.x, var_0.x, var_0.x), u_input.b.x, vec2<f32>(var_0.x, -1482f)), false)))), 677f), Struct_1(~_wgslsmith_mult_vec3_u32(u_input.b.xyy, vec3<u32>(u_input.b.x, u_input.c, 18008u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1495f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))), -2436f), _wgslsmith_add_u32(46351u, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, 155f) + var_0)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 798f))), 999f, func_4(u_input.e, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(false, true)))), reverseBits(reverseBits(u_input.b | vec4<u32>(u_input.c, u_input.a.x, 0u, 0u))), Struct_1(reverseBits(vec3<u32>(5972u, u_input.c, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), countOneBits(max(u_input.c, u_input.a.x)), var_0)).d);
    var var_2 = _wgslsmith_mod_i32(-u_input.d, -u_input.d);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -695f) + _wgslsmith_f_op_f32(f32(-1f) * -711f)), 1f, _wgslsmith_div_f32(588f, -898f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1793f)), _wgslsmith_f_op_f32(max(-239f, -347f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_1.d.b.x - 1495f), _wgslsmith_f_op_f32(abs(var_1.d.d.x)), _wgslsmith_f_op_f32(step(var_0.x, -516f)))))), func_4(i32(-1i) * -14647i, select(vec3<bool>(true, true, true), select(func_2(Struct_2(vec4<f32>(var_1.c, var_0.x, 303f, 629f), var_1.d, -781f, var_1.b), var_1.b, var_1), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), min(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.c, 0u, 55698u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, u_input.c, var_1.b.a.x))), Struct_1(vec3<u32>(func_4(u_input.d, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 1u, 1u, var_1.d.c), Struct_1(var_1.d.a, var_1.b.b, u_input.b.x, var_1.d.d)).b.a.x, var_1.b.a.x, 72309u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -690f, var_0.x)))), func_4(1i, vec3<bool>(true, true, true), ~u_input.a, var_1.d).d.c, var_1.a.xx)).b, var_1.b.b.x, Struct_1(~var_1.b.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), var_1.b.b.x, 876f), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.b.x, var_1.d.d.x)))));
    var_2 = u_input.d;
    var var_4 = var_3.d.d.x;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), var_0.x) * _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_1.a.x))))) * var_3.a.x);
    var var_6 = func_4(i32(-1i) * -248i, func_2(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-204f, var_1.c, -204f, -752f))), func_4(-1i, select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec4<u32>(4294967295u, 34776u, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(62664u, u_input.c, u_input.b.x), vec3<f32>(-478f, var_5, var_1.d.b.x), 9466u, var_0)).b, _wgslsmith_f_op_f32(-var_1.d.b.x), Struct_1(var_1.d.a, var_1.d.b, _wgslsmith_mod_u32(18414u, var_3.d.a.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(692f, var_3.a.x))))), Struct_1(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b.x, 4294967295u, var_3.b.a.x), var_3.b.a), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.c, 7704u, var_1.b.c), vec3<u32>(1u, 1u, var_3.d.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5, -1503f, 1000f), vec3<f32>(var_5, -1000f, 838f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), 2553u, _wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(-var_0)))), func_4(u_input.e, vec3<bool>(true, true, true), _wgslsmith_div_vec4_u32(u_input.a, u_input.a), func_4(2147483647i, vec3<bool>(true, true, true), vec4<u32>(33740u, 1u, u_input.c, u_input.c) >> (vec4<u32>(72987u, var_1.d.a.x, 44894u, 20527u) % vec4<u32>(32u)), func_4(-2147483647i, vec3<bool>(true, true, false), vec4<u32>(var_3.b.a.x, var_3.d.c, 4294967295u, var_3.b.a.x), var_3.d).b).d)), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), func_4(1i, vec3<bool>(~var_3.b.c == ~var_3.d.a.x, _wgslsmith_f_op_f32(sign(var_1.d.b.x)) <= _wgslsmith_f_op_f32(-var_3.b.b.x), reverseBits(var_3.d.a.x) == 4294967295u), ~vec4<u32>(var_1.d.a.x, 12440u, var_3.d.a.x, var_1.d.a.x | 4294967295u), Struct_1(abs(min(vec3<u32>(3006u, var_3.d.a.x, var_1.d.c), u_input.a.xwz)), _wgslsmith_f_op_vec3_f32(-var_3.a.xwz), ~43473u & ~var_1.d.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-313f, var_5), vec2<f32>(var_5, var_3.c)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.d.x, 1006f), var_3.b.d)))).b);
    let var_7 = func_4(u_input.e, vec3<bool>(false, true, !(any(vec4<bool>(false, false, false, false)) & true)), vec4<u32>(var_1.b.a.x, 0u, var_1.b.c, var_3.b.c), Struct_1(u_input.b.wxy, _wgslsmith_f_op_vec3_f32(-var_1.b.b), _wgslsmith_clamp_u32(u_input.c, ~(~31100u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(43181u, u_input.c, var_1.b.c)), reverseBits(var_3.d.a))), _wgslsmith_f_op_vec2_f32(step(var_6.d.d, func_4(-54371i, vec3<bool>(true, true, true), ~u_input.b, Struct_1(var_1.b.a, vec3<f32>(-1084f, var_0.x, var_1.b.d.x), 0u, vec2<f32>(-1000f, 1986f))).a.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~5772i), 4294967295u);
}

