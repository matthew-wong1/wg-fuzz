struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, -22030i, 1i), true, i32(-2147483648));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = ~(vec4<u32>(u_input.b.x, ~0u, u_input.b.x, firstTrailingBit(u_input.b.x)) | (~vec4<u32>(1u, u_input.b.x, u_input.b.x, 4845u) ^ (vec4<u32>(u_input.b.x, 4893u, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))) | vec4<u32>(u_input.b.x, u_input.b.x | min(_wgslsmith_div_u32(21530u, 74260u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), u_input.b.x, ~41821u);
    global0 = Struct_1(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(24051i, u_input.a, 49840i), vec3<i32>(-30605i, global0.a.x, global0.c)), vec3<i32>(countOneBits(global0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -1i, -9340i, -58394i), vec4<i32>(global0.a.x, global0.c, 954i, -2147483647i)), u_input.a), global0.a), vec3<i32>(1i, i32(-1i) * -27775i, min(-12565i, ~(-63203i)))), !(!(_wgslsmith_sub_i32(-4903i, -49568i) != u_input.a)), u_input.a);
    var var_1 = Struct_1(vec3<i32>(1673i, -1i >> (abs(var_0.x & var_0.x) % 32u), select(1i, ~global0.a.x, !global0.b)), abs(u_input.a) >= u_input.a, -1i);
    var var_2 = false;
    var_2 = select(global0.b && !select(u_input.b.x >= 1u, var_0.x > 95183u, all(vec3<bool>(true, var_1.b, false))), var_0.x <= countOneBits(~37398u), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1120f - -2121f))))) + _wgslsmith_f_op_f32(floor(-601f)));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-592f, 1000f, 1249f, 1000f), vec4<f32>(-1074f, 994f, 541f, -436f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(859f, 721f, 319f, 563f), vec4<f32>(750f, 1537f, 231f, -1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1207f, -1635f, 324f, 651f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1055f, 200f, -2557f, 1210f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(530f, 397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1003f - var_0.x) - var_0.x) * _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1943f * var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(762f - _wgslsmith_f_op_f32(trunc(var_0.x))))), var_0.x, var_0.x, -529f));
    var var_1 = select(!vec2<bool>(!(!arg_0), true), vec2<bool>(select(all(vec4<bool>(true, global0.b, false, true)), true, !global0.b), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_0, global0.b, global0.b), vec4<bool>(true, true, true, true))) | global0.b), !all(vec4<bool>(arg_0, false | arg_0, true, arg_0)));
    global0 = Struct_1(vec3<i32>(31369i, reverseBits(global0.c), u_input.a), all(!select(!vec4<bool>(true, var_1.x, arg_0, arg_0), !vec4<bool>(arg_0, global0.b, false, false), select(vec4<bool>(false, false, arg_0, true), vec4<bool>(global0.b, arg_0, var_1.x, arg_0), var_1.x))), global0.c);
    return -2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(!vec4<bool>(_wgslsmith_f_op_f32(1000f + 198f) < _wgslsmith_f_op_f32(floor(-632f)), !(!global0.b), global0.b | false, global0.b), true, 11280u << (countOneBits(_wgslsmith_mult_u32(4294967295u, u_input.b.x)) % 32u), _wgslsmith_mult_vec3_i32(global0.a ^ global0.a, vec3<i32>(~20237i, _wgslsmith_dot_vec3_i32(countOneBits(global0.a), -global0.a), -(-23370i << (u_input.b.x % 32u)))));
    var var_1 = var_0.d;
    var var_2 = (select(vec3<i32>(-var_0.d.x, -2485i, -var_1.x), vec3<i32>(0i, 0i, var_1.x) ^ max(var_0.d, vec3<i32>(28213i, 28246i, 0i)), select(global0.b, var_0.a.x, global0.b)) >> (abs(vec3<u32>(~var_0.c, firstLeadingBit(var_0.c), 1u)) % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u));
    var_2 = firstTrailingBit(vec3<i32>(reverseBits(min(var_2.x, _wgslsmith_sub_i32(1i, arg_1))), _wgslsmith_div_i32(-_wgslsmith_add_i32(2147483647i, var_1.x), -1i), _wgslsmith_mod_i32(~var_1.x, -2147483647i)));
    var var_3 = Struct_1(vec3<i32>(min(19475i, ~4116i | u_input.a), ~(-arg_0.x & abs(arg_2)), _wgslsmith_dot_vec2_i32(global0.a.yx, select(reverseBits(arg_0), ~vec2<i32>(var_0.d.x, arg_2), !global0.b))), var_0.a.x, 583i & _wgslsmith_clamp_i32(var_1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -1i, var_2.x, var_2.x), vec4<i32>(var_0.d.x, arg_0.x, 21288i, 4458i)), _wgslsmith_mult_i32(arg_0.x, _wgslsmith_clamp_i32(-2147483647i, var_2.x, u_input.a)), abs(u_input.a)));
    return Struct_1(vec3<i32>(-1i, _wgslsmith_mod_i32(-45325i, -21499i) >> ((6047u | select(24795u, var_0.c, false)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(12249i, u_input.a, -2147483647i), reverseBits(var_3.a)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(50674u, var_0.c), _wgslsmith_mult_vec2_u32(vec2<u32>(41914u, 4294967295u), u_input.b.zz)) % 32u)), true, var_1.x);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = func_4(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -arg_1.d.xx, vec2<i32>(abs(-18888i), func_2(arg_2.b))), -2147483647i | _wgslsmith_add_i32(firstLeadingBit(10959i >> (u_input.b.x % 32u)), -(i32(-1i) * -2147483647i)), arg_1.d.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1013f + -450f)));
    let var_1 = Struct_2(arg_1.a, all(!select(select(arg_1.a.wz, arg_1.a.ww, true), vec2<bool>(arg_1.b, true), all(vec4<bool>(arg_0, false, false, arg_0)))), countOneBits(4294967295u), _wgslsmith_div_vec3_i32(~(min(vec3<i32>(79649i, 17841i, 2147483647i), arg_2.a) ^ (global0.a ^ global0.a)), global0.a));
    var var_2 = 33685u;
    global0 = func_4(-vec2<i32>(arg_1.d.x, ~arg_2.c), i32(-1i) * -54053i, ~var_1.d.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-1i, 2147483647i)) >= reverseBits(_wgslsmith_div_i32(global0.a.x, 358i)), true, global0.b != true);
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1633f, -845f)) + _wgslsmith_f_op_f32(-1f));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-564f))), 828f, _wgslsmith_f_op_f32(-499f + -849f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - -228f) * _wgslsmith_f_op_f32(func_1(var_1, Struct_2(vec4<bool>(true, var_1, false, true), var_0.x, 0u, global0.a), Struct_1(vec3<i32>(-2147483647i, global0.a.x, global0.a.x), global0.b, global0.a.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1178f, -1427f)) - _wgslsmith_f_op_f32(-1627f - -1059f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(743f, 215f, var_1))), _wgslsmith_f_op_f32(f32(-1f) * -377f)), 702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, Struct_2(vec4<bool>(true, false, false, var_1), false, u_input.b.x, global0.a), func_4(vec2<i32>(0i, 11562i), u_input.a, 13063i))))));
    global0 = func_4(~vec2<i32>(max(1i, -27570i), countOneBits(-22480i) >> (u_input.b.x % 32u)), 1i, 14431i);
    var var_4 = func_4(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -global0.a.x, 27703i), ~reverseBits(-1i) << ((max(32251u, 1u) ^ ~u_input.b.x) % 32u)), u_input.a, -1i);
    let var_5 = Struct_1(~vec3<i32>(var_4.c, i32(-1i) * -17224i, -14816i), any(vec4<bool>(any(vec3<bool>(global0.b, var_0.x, var_1)), true, global0.b, true)), u_input.a ^ -max(_wgslsmith_mult_i32(-2147483647i, global0.c), u_input.a));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) * _wgslsmith_f_op_f32(-881f * 745f)) + _wgslsmith_f_op_f32(-var_3.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~1u != (1u | u_input.b.x), Struct_2(vec4<bool>(var_4.b, false, global0.b, true), false, u_input.b.x, var_4.a), Struct_1(vec3<i32>(global0.a.x, var_4.a.x, -1i) | vec3<i32>(global0.c, var_4.c, -15425i), true, ~u_input.a))), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xxw, ~(_wgslsmith_sub_u32(2160u, ~u_input.b.x) | 11889u), -121f, -1i);
}

