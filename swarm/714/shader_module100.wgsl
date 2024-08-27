struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(-347f, Struct_1(vec2<i32>(0i, -1i), vec3<f32>(-628f, -639f, 877f), vec4<i32>(1i, -4278i, 32803i, i32(-2147483648))), 39502u, 464f), Struct_2(1213f, Struct_1(vec2<i32>(-24620i, 2147483647i), vec3<f32>(535f, 780f, 507f), vec4<i32>(0i, 11277i, 1i, -15226i)), 1u, 1000f), Struct_2(937f, Struct_1(vec2<i32>(78226i, i32(-2147483648)), vec3<f32>(-1706f, -613f, 584f), vec4<i32>(0i, 20230i, -1i, 1i)), 9656u, 492f), Struct_2(-1249f, Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<f32>(183f, 171f, -648f), vec4<i32>(0i, -20698i, 0i, 54512i)), 54699u, 1000f), Struct_2(-307f, Struct_1(vec2<i32>(0i, 41396i), vec3<f32>(-1370f, 668f, -111f), vec4<i32>(2147483647i, -26491i, -4590i, 1i)), 1u, 145f), Struct_2(-1000f, Struct_1(vec2<i32>(-78665i, -28621i), vec3<f32>(-1303f, -107f, 1205f), vec4<i32>(0i, -18074i, 34123i, 6780i)), 14906u, -818f), Struct_2(-330f, Struct_1(vec2<i32>(11320i, -3116i), vec3<f32>(1000f, 1305f, 634f), vec4<i32>(i32(-2147483648), 1i, 1i, 0i)), 0u, -3022f), Struct_2(-1146f, Struct_1(vec2<i32>(14968i, 2147483647i), vec3<f32>(362f, -1002f, -282f), vec4<i32>(14062i, 22214i, 28554i, 47452i)), 4294967295u, -559f), Struct_2(1728f, Struct_1(vec2<i32>(15039i, -1i), vec3<f32>(-1062f, 1247f, 1375f), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -7535i)), 16057u, 574f), Struct_2(-512f, Struct_1(vec2<i32>(12694i, 0i), vec3<f32>(1461f, 378f, 1000f), vec4<i32>(-10409i, 2147483647i, -39527i, i32(-2147483648))), 0u, -550f), Struct_2(-1020f, Struct_1(vec2<i32>(i32(-2147483648), -42740i), vec3<f32>(-1231f, -163f, -1133f), vec4<i32>(1i, 34771i, i32(-2147483648), 0i)), 4294967295u, 1283f), Struct_2(1610f, Struct_1(vec2<i32>(-53945i, i32(-2147483648)), vec3<f32>(-826f, -685f, 201f), vec4<i32>(-1i, 12328i, 44506i, -37417i)), 53698u, -889f), Struct_2(113f, Struct_1(vec2<i32>(15834i, -37309i), vec3<f32>(-375f, 310f, -2098f), vec4<i32>(2147483647i, -1i, i32(-2147483648), 13977i)), 91274u, -1133f), Struct_2(-174f, Struct_1(vec2<i32>(0i, 26984i), vec3<f32>(-1150f, -1532f, 1043f), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648))), 38405u, -221f), Struct_2(-1151f, Struct_1(vec2<i32>(1i, 0i), vec3<f32>(-1118f, 827f, 2045f), vec4<i32>(0i, -35759i, -14946i, -25685i)), 35182u, 490f), Struct_2(1000f, Struct_1(vec2<i32>(0i, 1i), vec3<f32>(-360f, 1828f, 154f), vec4<i32>(1i, 0i, 0i, 1i)), 1u, -571f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1940f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(692f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1315f)), _wgslsmith_f_op_f32(floor(arg_1.d)))));
    let var_0 = ~1u;
    var var_1 = arg_1.b;
    var var_2 = vec3<u32>(_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), min(vec2<u32>(0u, arg_1.c), vec2<u32>(var_0, arg_1.c)))), var_0 & ~(~arg_1.c)), countOneBits(6957u), 83995u);
    let var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, arg_1.c, var_0, var_0) & vec4<u32>(u_input.b, var_2.x, u_input.b, arg_1.c), vec4<u32>(var_0, var_2.x, u_input.b, arg_1.c)), ~vec4<u32>(1u, var_2.x, 12715u, u_input.b) & ~vec4<u32>(var_2.x, var_2.x, 22613u, 27307u)), (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.x, var_0, 35652u, arg_1.c), ~vec4<u32>(1u, u_input.b, u_input.b, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c, 40502u, var_0, arg_1.c) ^ vec4<u32>(4294967295u, u_input.b, var_2.x, arg_1.c), vec4<u32>(arg_1.c, 21232u, 1u, u_input.b)) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, 54536u, u_input.b), select(vec4<u32>(0u, u_input.b, arg_1.c, 1u), vec4<u32>(1u, u_input.b, u_input.b, arg_1.c), true)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(142f)), arg_1.a), arg_0.b.xz, arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.zz) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1456f, var_1.b.x))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> vec4<i32> {
    let var_0 = reverseBits(abs(vec3<u32>(_wgslsmith_clamp_u32(abs(arg_1), 4294967295u, ~arg_1), 1u, u_input.b)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(154f, -813f, global0.x, arg_0.x)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(-arg_0.x), -317f))))));
    var var_1 = Struct_1(u_input.a.yz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1532f, _wgslsmith_f_op_f32(max(-730f, arg_0.x)), arg_0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, arg_0.x) * vec3<f32>(-617f, -510f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-global0.zxw)))), _wgslsmith_mod_u32(arg_1, 4294967295u) >= u_input.b)), -(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -6157i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x) << (vec4<u32>(86187u, 73749u, 57740u, var_0.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)) << ((~vec4<u32>(81529u, arg_1, u_input.b, 4294967295u) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b, var_0.x), vec4<u32>(u_input.b, 4294967295u, var_0.x, arg_1))) % vec4<u32>(32u))));
    global1 = array<Struct_2, 16>();
    var_1 = Struct_1(vec2<i32>(-24504i, 1i), vec3<f32>(global0.x, global0.x, 987f), reverseBits(_wgslsmith_clamp_vec4_i32(reverseBits(abs(var_1.c)), vec4<i32>(50457i, max(var_1.c.x, -33321i), ~0i, countOneBits(8591i)), _wgslsmith_div_vec4_i32(select(var_1.c, vec4<i32>(2147483647i, 11751i, u_input.a.x, -2147483647i), true), -vec4<i32>(u_input.a.x, var_1.a.x, u_input.a.x, u_input.a.x)))));
    return var_1.c;
}

fn func_2() -> Struct_1 {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(global0.x)), global0.x, 1000f);
    let var_0 = u_input.a.x & 22024i;
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0, _wgslsmith_mod_i32(2203i, 31369i), -20141i), _wgslsmith_div_vec3_i32(u_input.a, reverseBits(u_input.a)))) >> (u_input.b % 32u);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(-719f)), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(267f, 261f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -296f), -1584f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(701f)), _wgslsmith_f_op_f32(f32(-1f) * -845f)))));
    global1 = array<Struct_2, 16>();
    return Struct_1(~vec2<i32>(u_input.a.x << (u_input.b % 32u), 2147483647i), vec3<f32>(-860f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-931f, -268f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * -199f)))), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 8991i, 45889i, -4000i)), vec4<i32>(var_0, 1i, 11172i, 1i), -vec4<i32>(0i, 43935i, -40717i, 1i))), func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<i32>(0i, u_input.a.x), vec3<f32>(-1350f, 873f, 647f), vec4<i32>(u_input.a.x, var_0, var_1, -2147483647i)), Struct_2(697f, Struct_1(vec2<i32>(99505i, 36942i), global0.xzy, vec4<i32>(var_1, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.b, 114f), true)), u_input.b)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = func_2();
    var var_1 = -vec2<i32>(reverseBits(_wgslsmith_sub_i32(abs(arg_0.b.a.x), ~u_input.a.x)), -61621i);
    var var_2 = !vec4<bool>(arg_1, arg_1, arg_0.c <= u_input.b, true);
    var var_3 = !vec4<bool>(arg_1, arg_1, !select(global0.x < global0.x, true, any(vec4<bool>(var_2.x, arg_1, false, true))), _wgslsmith_f_op_f32(global0.x * global0.x) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1976f + var_0.b.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(854f + var_0.b.x), -1517f, _wgslsmith_f_op_f32(round(1763f)), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -538f, 1202f, arg_0.a) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 2155f, var_0.b.x, 610f), vec4<f32>(698f, -1020f, 451f, global0.x), false))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(abs(1830f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, _wgslsmith_f_op_f32(global0.x + global0.x), -1244f, 1216f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(962f)), _wgslsmith_f_op_f32(func_1(Struct_2(397f, Struct_1(u_input.a.yx, vec3<f32>(global0.x, -465f, global0.x), vec4<i32>(u_input.a.x, -1990i, 1i, u_input.a.x)), u_input.b, -1000f), true)), _wgslsmith_f_op_f32(266f - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(round(637f))))));
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 16u)];
    var var_1 = false;
    let var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4668u, u_input.b), vec3<u32>(0u, u_input.b, 4294967295u)), vec3<u32>(78348u, 73430u, 32721u)))), global0.x, u_input.b);
}

