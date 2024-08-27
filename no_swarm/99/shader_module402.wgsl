struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<u32, 24> = array<u32, 24>(31688u, 20010u, 105381u, 4294967295u, 8612u, 4294967295u, 6926u, 4294967295u, 0u, 61748u, 4294967295u, 1u, 4294967295u, 4294967295u, 4294967295u, 76432u, 24928u, 1u, 54695u, 1u, 1u, 123074u, 4294967295u, 4294967295u);

var<private> global2: array<bool, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1290f, -1074f, -1046f, -403f), vec4<f32>(855f, -1000f, 1441f, -740f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1528f, 570f, 1000f, 473f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -395f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(251f + -1217f), _wgslsmith_f_op_f32(-1624f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1222f, -689f)), _wgslsmith_f_op_f32(sign(-475f))))));
    let var_1 = Struct_2(any(!vec3<bool>(!arg_0, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 24u)], 30u)], global2[_wgslsmith_index_u32(u_input.d.x, 30u)])), Struct_1(44803i, -max(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_div_i32(2147483647i, -56954i)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(2155f, -678f)), 742f, _wgslsmith_f_op_f32(f32(-1f) * -791f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(-1552f, var_0.x, -1970f, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1583f, -1166f, -463f, 686f), vec4<f32>(-368f, 1335f, var_0.x, var_0.x), vec4<bool>(false, true, true, false))), vec4<bool>(true, arg_1.x, true, arg_1.x)))), 1u), Struct_1(~max(1i, u_input.b) | u_input.b, firstLeadingBit(-1i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 903f, 424f, 161f), vec4<f32>(1000f, 1000f, var_0.x, -189f), vec4<bool>(false, arg_0, global2[_wgslsmith_index_u32(u_input.d.x, 30u)], false))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2068f, var_0.x, var_0.x, -1000f), vec4<f32>(-465f, 311f, var_0.x, -1000f)))))), 65707u));
    var_0 = vec4<f32>(var_1.b.c.x, _wgslsmith_div_f32(var_0.x, -2080f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * var_1.b.c.x));
    let var_2 = arg_2;
    var var_3 = ~1u;
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec2<u32> {
    global2 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.c.x - _wgslsmith_f_op_f32(func_3(!arg_2.a, select(vec2<bool>(false, true), vec2<bool>(false, false), true), arg_1.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, var_0, arg_2.c.c.x, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b.c.x, -1382f)) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-1009f + var_0))));
    let var_2 = arg_1.b;
    var var_3 = var_2;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x >> (1u % 32u), global1[_wgslsmith_index_u32(42045u, 24u)]), vec2<u32>(global1[_wgslsmith_index_u32(var_2.d, 24u)], select(1u, 4294967295u, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(func_2(arg_1.xx, Struct_2(true, Struct_1(-55111i, arg_0.x, vec4<f32>(-301f, 1000f, -439f, -1175f), 30633u), Struct_1(u_input.c.x, 2147483647i, vec4<f32>(-182f, 1000f, 794f, -1021f), u_input.a.x)), Struct_2(global2[_wgslsmith_index_u32(39190u, 30u)], Struct_1(arg_0.x, arg_0.x, vec4<f32>(1088f, 465f, -536f, 828f), global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), Struct_1(arg_0.x, u_input.c.x, vec4<f32>(181f, -1728f, 817f, -795f), 0u)), -4158i), vec2<u32>(u_input.d.x, global1[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(39281u, 52929u, 4294967295u), u_input.d.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), _wgslsmith_clamp_vec4_u32(~vec4<u32>(5467u, 4294967295u, 110451u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)]), u_input.d, reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(3438u, 24u)], 4294967295u, 16819u, 5516u)))) % 32u), 30u)], Struct_1(_wgslsmith_add_i32(u_input.b, -_wgslsmith_mult_i32(u_input.b, 1i)), 4078i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, 584f, -2094f, 456f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-820f, -144f, -1033f, 415f), vec4<f32>(306f, 898f, -1026f, 1085f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(false, arg_1.xz, false)), -404f, -706f, _wgslsmith_f_op_f32(round(-1271f)))), 1u), Struct_1(-2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -arg_0.x, i32(-1i) * -2147483647i, u_input.c.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(536f, 954f, -257f, -889f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1451f, -346f, 472f)))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_u32(func_2(vec2<bool>(arg_1.x, false), Struct_2(false, Struct_1(arg_0.x, 16505i, vec4<f32>(700f, -932f, 1104f, -1771f), 1u), Struct_1(arg_0.x, arg_0.x, vec4<f32>(786f, -1000f, 234f, -341f), 1u)), global0[_wgslsmith_index_u32(0u, 12u)], arg_0.x).x & ~u_input.a.x, select(u_input.d.x, 0u, false))));
    let var_1 = max(2147483647i, -reverseBits(arg_0.x ^ _wgslsmith_add_i32(var_0.c.b, u_input.c.x)));
    var_0 = Struct_2(!global2[_wgslsmith_index_u32(reverseBits(~abs(global1[_wgslsmith_index_u32(0u, 24u)])), 30u)], Struct_1(select(firstLeadingBit(~1i), 20087i, all(vec4<bool>(global2[_wgslsmith_index_u32(var_0.b.d, 30u)], true, true, var_0.a))), min(35080i, -var_1), vec4<f32>(var_0.c.c.x, -579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x - -361f)), _wgslsmith_f_op_f32(min(-453f, var_0.b.c.x))), firstTrailingBit(58492u)), var_0.c);
    var_0 = Struct_2(true, var_0.c, Struct_1(abs(var_1), _wgslsmith_dot_vec2_i32(-u_input.c.xy, _wgslsmith_add_vec2_i32(vec2<i32>(var_1, u_input.c.x), vec2<i32>(u_input.b, -1i))) << (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.c - var_0.b.c)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(global1[_wgslsmith_index_u32(var_0.c.d, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], 57154u) ^ u_input.a), u_input.a)));
    var_0 = global0[_wgslsmith_index_u32(var_0.c.d, 12u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.b.d, u_input.d.x) | max(reverseBits(0u), max(_wgslsmith_mult_u32(func_2(arg_1.yy, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 12u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.d, 24u)], 12u)], -1i).x, 10841u), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 2245u), u_input.d.x))), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(738f, _wgslsmith_f_op_f32(f32(-1f) * -318f));
    var var_1 = func_1(-select(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), u_input.b), vec2<i32>(firstTrailingBit(u_input.b), 0i >> (1u % 32u)), -1590f > _wgslsmith_f_op_f32(trunc(var_0.x))), select(vec3<bool>(true, !global2[_wgslsmith_index_u32(~u_input.a.x, 30u)], true), vec3<bool>(true, true, true), !(!(global1[_wgslsmith_index_u32(u_input.a.x, 24u)] != 0u))));
    let var_2 = Struct_2(all(select(!vec4<bool>(false, var_1.a, global2[_wgslsmith_index_u32(48843u, 30u)], false), select(select(vec4<bool>(global2[_wgslsmith_index_u32(var_1.b.d, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 30u)], var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), false), !vec4<bool>(var_1.a, var_1.a, true, true), true), vec4<bool>(true, true, any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(9718u, 30u)], false)), true))), Struct_1(20001i, u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.c.x, var_1.b.c.x, -545f, 851f))) * var_1.c.c)), ~u_input.d.x), Struct_1(_wgslsmith_add_i32(func_1(u_input.c.xz, vec3<bool>(var_1.a, true, true)).b.a, firstLeadingBit(firstTrailingBit(2147483647i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b, -15266i, var_1.c.b), abs(u_input.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(var_1.b.c, vec4<f32>(var_1.b.c.x, var_1.b.c.x, var_0.x, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.c + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.c.x, var_0.x, var_0.x, -231f), vec4<f32>(var_1.b.c.x, var_0.x, var_1.c.c.x, var_1.b.c.x), vec4<bool>(false, true, false, true)))), var_1.a || var_1.a)), min(~1u, 0u) | func_2(!vec2<bool>(false, global2[_wgslsmith_index_u32(5325u, 30u)]), global0[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(64729u, 24u)]), 12u)], func_1(vec2<i32>(-33062i, var_1.c.b), vec3<bool>(var_1.a, true, true)), -var_1.b.b).x));
    let var_3 = -_wgslsmith_sub_i32(41623i, u_input.c.x);
    var_0 = var_1.b.c.xz;
    let var_4 = func_1(~select(u_input.c.yx, u_input.c.yy, !vec2<bool>(var_1.a, true)), !(!(!select(vec3<bool>(false, var_2.a, var_1.a), vec3<bool>(var_2.a, var_1.a, global2[_wgslsmith_index_u32(1u, 30u)]), global2[_wgslsmith_index_u32(4294967295u, 30u)]))));
    let var_5 = !vec4<bool>(true || !select(global2[_wgslsmith_index_u32(31523u, 30u)], var_4.a, var_1.a), var_4.a, all(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 30u)], false, global2[_wgslsmith_index_u32(21099u, 30u)])) | !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_2.b.d, 1u, 0u), vec4<u32>(0u, global1[_wgslsmith_index_u32(var_4.b.d, 24u)], var_2.b.d, 81861u)), 30u)], true);
    var var_6 = Struct_2(false, var_1.c, Struct_1(-18128i, abs(~(~u_input.c.x)), func_1(abs(firstTrailingBit(vec2<i32>(-6920i, 2147483647i))), vec3<bool>(var_2.a, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_4.b.d, 24u)], 30u)])).b.c, _wgslsmith_add_u32(_wgslsmith_mod_u32(27187u, reverseBits(global1[_wgslsmith_index_u32(55050u, 24u)])), min(var_2.b.d | 20886u, ~u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(u_input.c ^ vec3<i32>(33589i, -21618i, u_input.b), u_input.c, var_5.x)), var_6.c.a, var_4.b.c.x);
}

