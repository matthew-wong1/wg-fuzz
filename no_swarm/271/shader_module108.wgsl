struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(92459u, 0u), -35329i, 3418i, vec4<f32>(736f, 211f, -1000f, -731f)), Struct_1(vec2<u32>(4294967295u, 52149u), i32(-2147483648), -46422i, vec4<f32>(-192f, 737f, -201f, 387f)), Struct_1(vec2<u32>(37804u, 1u), 2147483647i, -30053i, vec4<f32>(2076f, 950f, -1000f, 310f)), Struct_1(vec2<u32>(40072u, 1u), 0i, 37552i, vec4<f32>(-1217f, 353f, 920f, 1660f)), Struct_1(vec2<u32>(70013u, 1u), 4128i, 11019i, vec4<f32>(123f, -1000f, -1000f, 365f)), Struct_1(vec2<u32>(59134u, 4294967295u), 2147483647i, 5374i, vec4<f32>(-382f, -276f, 1189f, -494f)), Struct_1(vec2<u32>(1u, 1u), 0i, -2059i, vec4<f32>(-1000f, 1000f, 767f, 1000f)), Struct_1(vec2<u32>(16894u, 53654u), 1i, 21151i, vec4<f32>(-2121f, -1117f, -1000f, 952f)), Struct_1(vec2<u32>(0u, 4158u), i32(-2147483648), -5119i, vec4<f32>(-934f, -902f, 1225f, 1756f)), Struct_1(vec2<u32>(62261u, 6689u), 2147483647i, 0i, vec4<f32>(1630f, 952f, -201f, -149f)), Struct_1(vec2<u32>(1u, 4294967295u), 0i, 1i, vec4<f32>(771f, 453f, 1000f, -527f)), Struct_1(vec2<u32>(0u, 38884u), -59036i, -8009i, vec4<f32>(1000f, -1001f, 280f, 135f)), Struct_1(vec2<u32>(4294967295u, 1u), 1i, -19702i, vec4<f32>(-1404f, -655f, -711f, 1140f)), Struct_1(vec2<u32>(0u, 4294967295u), 2147483647i, 2147483647i, vec4<f32>(1600f, 964f, 1098f, -1102f)), Struct_1(vec2<u32>(1u, 4294967295u), -9427i, -1i, vec4<f32>(1000f, 543f, -443f, 473f)), Struct_1(vec2<u32>(0u, 4294967295u), -1893i, -30867i, vec4<f32>(501f, -335f, 1000f, 1911f)), Struct_1(vec2<u32>(4294967295u, 43315u), 1i, i32(-2147483648), vec4<f32>(-1000f, 1276f, 749f, 241f)), Struct_1(vec2<u32>(43836u, 1u), -14590i, 12547i, vec4<f32>(-1624f, 817f, 1497f, 618f)), Struct_1(vec2<u32>(27319u, 5344u), -47702i, -18054i, vec4<f32>(-1301f, -571f, -1338f, -511f)));

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_2(vec2<u32>(27892u, ~u_input.a.x << (30578u % 32u)), arg_0.c.d.wy, arg_0.c, !any(!global1.xy));
    let var_1 = !select(!(!(!vec4<bool>(arg_0.d, true, false, true))), select(!vec4<bool>(var_0.d, global1.x, true, var_0.d), !(!vec4<bool>(false, false, var_0.d, false)), vec4<bool>(true, true, true, true)), select(!(!vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d)), vec4<bool>(!var_0.d, true, var_0.d, true), _wgslsmith_div_u32(0u, arg_0.a.x) <= 0u));
    let var_2 = ~arg_0.c.a.x;
    var var_3 = select(vec2<bool>(any(var_1.zw), firstTrailingBit(u_input.c.x) > (countOneBits(0u) ^ (7382u | arg_0.c.a.x))), select(global1.yy, var_1.zz, !(!select(vec2<bool>(true, global1.x), vec2<bool>(false, false), vec2<bool>(arg_0.d, var_1.x)))), false);
    return vec2<f32>(var_0.b.x, -185f);
}

fn func_3() -> bool {
    global1 = !(!(!(!(!vec3<bool>(global1.x, true, global1.x)))));
    let var_0 = !select(select(!(!vec2<bool>(global1.x, true)), global1.zy, global1.x), global1.yz, !(!select(global1.yz, vec2<bool>(false, global1.x), vec2<bool>(true, false))));
    var var_1 = ~vec3<i32>(u_input.b, u_input.b, 0i);
    var_1 = vec3<i32>(-firstLeadingBit(-53185i), u_input.b, countOneBits((2147483647i << (u_input.c.x % 32u)) ^ 1i)) << (vec3<u32>(u_input.c.x, u_input.c.x, 20383u) % vec3<u32>(32u));
    let var_2 = var_0;
    return select(any(!vec4<bool>(global1.x, var_2.x, false, var_2.x)) & false, true, true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_1, 19>();
    var var_0 = Struct_1(arg_1.c.a << (_wgslsmith_mod_vec2_u32(u_input.a.xy ^ (u_input.a.zy >> (vec2<u32>(arg_0.c.a.x, 65221u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(abs(u_input.a.xx), u_input.a.zy & arg_1.a)) % vec2<u32>(32u)), arg_1.c.b ^ _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), 1i), ~(2147483647i << (max(1u, reverseBits(arg_3.x)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1171f, arg_1.c.d.x, -412f, 146f) - arg_1.c.d) + _wgslsmith_f_op_vec4_f32(-arg_1.c.d))));
    let var_1 = arg_3;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.c.b, 12694i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.c, -10967i, -24481i), vec4<i32>(arg_0.c.b, arg_1.c.b, arg_0.c.b, 61083i))), firstTrailingBit(vec4<i32>(2147483647i, var_0.c, arg_1.c.b, -16189i))), ~(arg_0.c.c & ~1i)), -25441i, u_input.b, _wgslsmith_add_i32(-firstTrailingBit(7174i), 0i));
    let var_3 = -19083i;
    return Struct_2(~vec2<u32>(~arg_3.x, abs(_wgslsmith_clamp_u32(1u, 91450u, arg_3.x))), vec2<f32>(-343f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-386f, var_0.d.x)))), Struct_1(vec2<u32>(u_input.c.x, 110514u), countOneBits(-u_input.b), var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, -868f, var_0.d.x, -2279f))), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2(arg_0, -2147483647i)).x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(-1443f, 536f), _wgslsmith_f_op_f32(-1000f + -707f)))), func_3());
}

fn func_1(arg_0: bool, arg_1: bool) -> vec2<f32> {
    let var_0 = true;
    let var_1 = func_4(Struct_2(_wgslsmith_add_vec2_u32(u_input.c.wy, vec2<u32>(0u, min(u_input.c.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(u_input.a.zx, vec2<f32>(-584f, 2471f), global0[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1), firstTrailingBit(u_input.b)))), global0[_wgslsmith_index_u32(~countOneBits(~u_input.c.x), 19u)], (func_3() != true) | global1.x), Struct_2(_wgslsmith_mod_vec2_u32(abs(u_input.c.yz), _wgslsmith_div_vec2_u32(u_input.c.zy, vec2<u32>(u_input.a.x, u_input.c.x)) & ~u_input.c.xw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-824f, 1892f) + vec2<f32>(1112f, -1000f)) - vec2<f32>(-122f, -481f)), vec2<f32>(-1691f, _wgslsmith_f_op_f32(select(446f, -365f, true)))), global0[_wgslsmith_index_u32(0u, 19u)], true), u_input.b, vec3<u32>(~u_input.a.x, u_input.c.x, 2795u));
    let var_2 = vec4<bool>(var_1.d, (false && !(-1271f < var_1.c.d.x)) || all(vec4<bool>(false, var_1.b.x <= 1354f, var_1.b.x > var_1.b.x, false)), ((_wgslsmith_f_op_f32(sign(476f)) == _wgslsmith_f_op_f32(trunc(-919f))) == all(!vec3<bool>(false, true, var_0))) && false, var_1.d);
    global1 = var_2.zxy;
    let var_3 = global0[_wgslsmith_index_u32(~func_4(Struct_2(vec2<u32>(1u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.d.x, var_1.c.d.x)))), func_4(var_1, var_1, ~u_input.b, ~u_input.a).c, any(select(vec3<bool>(true, var_0, false), var_2.wyy, var_1.d))), Struct_2(~(vec2<u32>(28327u, 28957u) & var_1.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(571f, 2236f)), func_4(func_4(var_1, Struct_2(vec2<u32>(var_1.c.a.x, 53320u), vec2<f32>(var_1.b.x, -865f), var_1.c, true), var_1.c.b, u_input.c.xwz), func_4(var_1, Struct_2(vec2<u32>(var_1.c.a.x, u_input.c.x), var_1.b, global0[_wgslsmith_index_u32(1u, 19u)], var_0), 14842i, vec3<u32>(u_input.c.x, u_input.a.x, var_1.a.x)), 18814i, firstTrailingBit(vec3<u32>(1u, u_input.c.x, u_input.c.x))).c, true), var_1.c.b, u_input.c.zww).a.x, 19u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, _wgslsmith_f_op_f32(trunc(-445f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>((_wgslsmith_mult_u32(u_input.a.x, u_input.c.x) >> (8675u % 32u)) >> (_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(1u, 46358u, u_input.a.x, 4294967295u)) % 32u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 33096u, u_input.c.x, 1u)) << (~(3797u & u_input.c.x) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1197f, 1293f), vec2<f32>(-867f, -397f), vec2<bool>(global1.x, global1.x)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1585f, -668f) * _wgslsmith_f_op_vec2_f32(func_1(true, global1.x)))), Struct_1(u_input.a.xx, ~(-1i), ~u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(381f, -1711f, -203f, 2320f), vec4<f32>(805f, 554f, 835f, 1442f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-625f, 255f, -1230f, -210f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-835f, 1388f, -169f, -212f))))))), select(global1.x | true, any(!vec2<bool>(false, global1.x)), true));
    var_0 = Struct_2(vec2<u32>(~firstLeadingBit(_wgslsmith_add_u32(var_0.c.a.x, 1u)), var_0.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-970f, _wgslsmith_f_op_f32(var_0.b.x + -432f)))), global0[_wgslsmith_index_u32(~firstTrailingBit(var_0.a.x), 19u)], func_4(func_4(func_4(Struct_2(vec2<u32>(36709u, 1u), vec2<f32>(-1570f, var_0.c.d.x), global0[_wgslsmith_index_u32(u_input.c.x, 19u)], true), Struct_2(u_input.a.zy, vec2<f32>(var_0.c.d.x, -1295f), Struct_1(vec2<u32>(0u, u_input.c.x), 2147483647i, u_input.b, vec4<f32>(var_0.b.x, var_0.c.d.x, 464f, 1474f)), false), -1056i, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_0.a.x), vec3<u32>(1u, var_0.a.x, 10044u))), Struct_2(~vec2<u32>(0u, 64959u), vec2<f32>(var_0.b.x, 1080f), Struct_1(vec2<u32>(33277u, 2816u), -8905i, 46338i, var_0.c.d), var_0.c.a.x <= 11862u), ~(u_input.b | -11349i), ~abs(vec3<u32>(4294967295u, 84241u, var_0.a.x))), Struct_2(_wgslsmith_add_vec2_u32(abs(var_0.c.a), var_0.a ^ vec2<u32>(u_input.c.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(525f, var_0.b.x), var_0.b)), func_4(func_4(Struct_2(var_0.c.a, var_0.c.d.zw, var_0.c, false), Struct_2(vec2<u32>(65643u, var_0.a.x), var_0.b, var_0.c, var_0.d), var_0.c.b, vec3<u32>(0u, u_input.c.x, 27694u)), func_4(Struct_2(var_0.c.a, vec2<f32>(var_0.b.x, var_0.b.x), Struct_1(vec2<u32>(37859u, var_0.a.x), 2147483647i, u_input.b, var_0.c.d), false), Struct_2(u_input.a.xy, var_0.b, var_0.c, false), 24022i, u_input.c.yzx), _wgslsmith_add_i32(var_0.c.b, var_0.c.b), u_input.c.zwx).c, false), _wgslsmith_div_i32(-(i32(-1i) * -56803i), u_input.b), _wgslsmith_mult_vec3_u32(~select(u_input.a, vec3<u32>(var_0.a.x, var_0.a.x, u_input.c.x), vec3<bool>(var_0.d, global1.x, false)), u_input.c.yyx)).d);
    var_0 = func_4(Struct_2(~vec2<u32>(1u, 1u | u_input.a.x), vec2<f32>(1f, 1f), func_4(func_4(func_4(Struct_2(vec2<u32>(1u, var_0.c.a.x), vec2<f32>(var_0.c.d.x, -557f), global0[_wgslsmith_index_u32(45599u, 19u)], true), Struct_2(vec2<u32>(0u, 39758u), var_0.b, global0[_wgslsmith_index_u32(1u, 19u)], var_0.d), -40388i, u_input.a), Struct_2(vec2<u32>(u_input.c.x, 0u), var_0.c.d.zw, var_0.c, true), u_input.b, abs(u_input.c.xyw)), func_4(func_4(Struct_2(var_0.a, vec2<f32>(var_0.b.x, var_0.c.d.x), Struct_1(var_0.a, var_0.c.c, -1i, vec4<f32>(var_0.c.d.x, 384f, -1059f, var_0.b.x)), false), Struct_2(vec2<u32>(4294967295u, 54535u), var_0.c.d.xx, Struct_1(vec2<u32>(u_input.c.x, 1385u), var_0.c.b, 0i, vec4<f32>(-859f, var_0.b.x, var_0.c.d.x, var_0.b.x)), global1.x), var_0.c.b, vec3<u32>(var_0.a.x, u_input.a.x, 19899u)), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), var_0.c.d.zz, Struct_1(vec2<u32>(var_0.c.a.x, 34102u), var_0.c.c, var_0.c.c, vec4<f32>(var_0.c.d.x, 876f, var_0.c.d.x, -1000f)), false), 1i, vec3<u32>(u_input.a.x, 43805u, var_0.c.a.x) >> (vec3<u32>(19202u, 28569u, 23882u) % vec3<u32>(32u))), var_0.c.c, vec3<u32>(u_input.c.x, firstTrailingBit(1u), ~var_0.a.x)).c, false), func_4(Struct_2(vec2<u32>(countOneBits(u_input.a.x), countOneBits(0u)), var_0.b, func_4(Struct_2(vec2<u32>(u_input.c.x, 73497u), var_0.b, Struct_1(var_0.a, u_input.b, -2257i, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), global1.x), Struct_2(var_0.c.a, vec2<f32>(var_0.b.x, var_0.b.x), global0[_wgslsmith_index_u32(17725u, 19u)], global1.x), u_input.b, vec3<u32>(0u, 4294967295u, 4294967295u)).c, !(u_input.b <= var_0.c.c)), Struct_2(vec2<u32>(var_0.c.a.x, u_input.a.x) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u)), var_0.c.d.wy, func_4(Struct_2(var_0.a, var_0.c.d.xz, var_0.c, true), Struct_2(vec2<u32>(var_0.c.a.x, var_0.c.a.x), var_0.c.d.zx, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], true), _wgslsmith_dot_vec4_i32(vec4<i32>(36730i, var_0.c.c, -2147483647i, var_0.c.b), vec4<i32>(var_0.c.c, -2147483647i, u_input.b, 1i)), u_input.c.yww).c, func_4(func_4(Struct_2(vec2<u32>(u_input.a.x, var_0.a.x), vec2<f32>(-1460f, var_0.c.d.x), global0[_wgslsmith_index_u32(3453u, 19u)], false), Struct_2(vec2<u32>(var_0.a.x, var_0.c.a.x), vec2<f32>(480f, var_0.b.x), Struct_1(vec2<u32>(u_input.a.x, 14695u), -2147483647i, var_0.c.c, vec4<f32>(var_0.c.d.x, var_0.c.d.x, -863f, var_0.c.d.x)), var_0.d), 53908i, u_input.c.wyz), func_4(Struct_2(u_input.c.xy, vec2<f32>(-1719f, var_0.b.x), global0[_wgslsmith_index_u32(51108u, 19u)], false), Struct_2(u_input.a.zx, var_0.b, var_0.c, true), 0i, vec3<u32>(43099u, u_input.c.x, var_0.c.a.x)), var_0.c.c, u_input.c.wyy).d), _wgslsmith_mod_i32(42261i, u_input.b), ~u_input.a), var_0.c.b, vec3<u32>(84734u, u_input.a.x, u_input.a.x));
    let var_1 = vec4<bool>(all(!vec3<bool>(all(vec4<bool>(global1.x, true, true, true)), var_0.d, true)), all(vec4<bool>(true, true, false != (u_input.a.x > 1u), global1.x)), global1.x, false && !(!any(vec2<bool>(false, true))));
    var var_2 = func_4(Struct_2(~vec2<u32>(~1u, firstTrailingBit(var_0.c.a.x)), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f + 673f))), Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(80963u, 4294967295u), ~vec2<u32>(var_0.a.x, 1u)), -1i, u_input.b, _wgslsmith_f_op_vec4_f32(var_0.c.d + var_0.c.d)), any(select(global1.yz, var_1.yx, func_3()))), Struct_2(vec2<u32>(max(0u, 4294967295u), ~_wgslsmith_mod_u32(u_input.c.x, 19965u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(681f, 300f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c.d.zz, vec2<f32>(var_0.c.d.x, var_0.b.x), true)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b.x, var_0.b.x))))), func_4(func_4(func_4(Struct_2(vec2<u32>(var_0.a.x, u_input.a.x), var_0.c.d.zx, Struct_1(u_input.c.yy, -8945i, 6114i, var_0.c.d), false), Struct_2(var_0.c.a, vec2<f32>(-968f, var_0.b.x), var_0.c, var_0.d), -45843i, u_input.a), Struct_2(var_0.a, vec2<f32>(var_0.c.d.x, var_0.b.x), var_0.c, false), _wgslsmith_mod_i32(0i, -13091i), u_input.c.xzy | u_input.a), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(4294967295u, var_0.a.x)), var_0.c.d.xx, Struct_1(var_0.c.a, u_input.b, u_input.b, vec4<f32>(-947f, var_0.c.d.x, var_0.b.x, var_0.c.d.x)), var_1.x), u_input.b, min(vec3<u32>(u_input.a.x, 24958u, u_input.c.x), _wgslsmith_mod_vec3_u32(u_input.a, u_input.c.zyz))).c, false), _wgslsmith_mod_i32(var_0.c.b, _wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0.c.b, 1i), vec2<i32>(-28789i, var_0.c.c) | vec2<i32>(8927i, var_0.c.c)), select(vec2<i32>(-2147483647i, 37720i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-1i, -41705i), vec2<i32>(-1i, u_input.b)), select(var_1.xw, vec2<bool>(global1.x, var_0.d), var_1.x)))), u_input.c.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~(~u_input.c.zxw), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 34075u, u_input.a.x), u_input.a))), var_2.c.d);
}

