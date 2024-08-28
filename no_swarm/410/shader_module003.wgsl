struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, true, true, true, false, false, true, true, true, true, false, true, false, true, true, true, true, false, true, true);

var<private> global2: array<Struct_3, 8>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<bool, 21>();
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(248f)) - _wgslsmith_f_op_f32(exp2(global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1528f, 213f, global0.x) * vec3<f32>(-554f, 1243f, -627f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, global0.x, 508f) - vec3<f32>(global0.x, global0.x, -2204f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -247f, -1316f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-466f + global0.x), _wgslsmith_f_op_f32(round(global0.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(800f, global0.x, 1493f)))))))), true));
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~(-27903i), _wgslsmith_mod_i32(26934i, -18509i), _wgslsmith_sub_i32(-1i, 41768i)), select(select(vec4<i32>(41349i, 0i, -27312i, -19230i), vec4<i32>(626i, -6439i, -2147483647i, 0i), vec4<bool>(global1[_wgslsmith_index_u32(36553u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])), vec4<i32>(-1i, -23159i, 2147483647i, 0i), all(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), vec4<i32>(0i, 1i, countOneBits(-4986i), ~0i))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_clamp_i32(-1i, 0i, 2147483647i), -(i32(-1i) * -478i), select(~(-29934i), 1i, global1[_wgslsmith_index_u32(~0u, 21u)]), countOneBits(1i)), abs(vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(vec4<i32>(544i, -6429i, ~39653i, -6887i)));
    global2 = array<Struct_3, 8>();
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    global2 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.a, ~u_input.a | 1u, 4294967295u, func_3()) ^ reverseBits(arg_0));
    let var_1 = Struct_2(~41408u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1410f, -1419f)))) + _wgslsmith_f_op_f32(-global0.x)), Struct_1(arg_0.zyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, global0.x, global0.x))))), firstTrailingBit(-select(vec2<i32>(-8111i, 0i), vec2<i32>(0i, -19769i), global1[_wgslsmith_index_u32(arg_0.x, 21u)])), select(!select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)])), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)] && global1[_wgslsmith_index_u32(arg_0.x, 21u)], true), vec2<bool>(true, true))), Struct_1(~firstTrailingBit(arg_0.wxy), vec4<f32>(_wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(round(-1166f))), global0.x, _wgslsmith_f_op_f32(1068f - -473f), _wgslsmith_f_op_f32(max(819f, _wgslsmith_f_op_f32(f32(-1f) * -743f)))), _wgslsmith_add_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(54931i, 39992i), vec2<i32>(-28868i, -1i), vec2<i32>(-1i, 0i)), -vec2<i32>(57486i, -21690i)), vec2<i32>(47304i, firstTrailingBit(-8853i))), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 21u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(var_0, 21u)], global1[_wgslsmith_index_u32(70812u, 21u)]), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(var_0 < 4294967295u, true), false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.d.b.wx)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(333f - var_1.b)))));
    global1 = array<bool, 21>();
    return var_1.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<bool>) -> vec3<bool> {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.b.x, -3166f, func_2(vec4<u32>(39363u, 1u, 35002u, 8580u), _wgslsmith_f_op_f32(ceil(global0.x))).b.x)), func_2(vec4<u32>(u_input.b, _wgslsmith_div_u32(111163u, ~0u), min(0u, ~arg_0.d.a.x), ~44261u), -124f).b.zwy);
    global1 = array<bool, 21>();
    let var_0 = Struct_2(82610u, -1788f, arg_0.c, Struct_1(vec3<u32>(abs(u_input.b), 21729u, _wgslsmith_clamp_u32(0u, u_input.a, arg_0.d.a.x)) & arg_0.d.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, global0.x, 1177f, global0.x)), arg_0.c.b))), -vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.d.c, vec2<i32>(arg_0.d.c.x, arg_0.d.c.x)), arg_0.c.c.x), func_2(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 36477u, arg_0.c.a.x, u_input.a), vec4<u32>(1u, 20316u, 1u, u_input.b)), _wgslsmith_f_op_f32(trunc(-157f))).d));
    var var_1 = arg_0.c.c.x;
    let var_2 = select(!vec4<bool>(true, select(var_0.d.d.x & true, all(arg_2), arg_0.d.d.x & global1[_wgslsmith_index_u32(var_0.a, 21u)]), !arg_1.a, global1[_wgslsmith_index_u32(62425u, 21u)]), vec4<bool>(!var_0.c.d.x, true, arg_2.x, arg_2.x || false), vec4<bool>(true, 28765u <= func_2(vec4<u32>(var_0.a, 4294967295u, 14558u, u_input.b), arg_0.c.b.x).a.x, global1[_wgslsmith_index_u32(u_input.a, 21u)], arg_2.x));
    return !(!select(var_2.xww, var_2.wwx, any(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c.a.x, 21u)], arg_1.a, true, true))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 8u)];
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 428f, -715f), vec3<f32>(global0.x, -2091f, 756f))))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - 689f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-647f, 662f)) + _wgslsmith_f_op_f32(global0.x + 783f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = _wgslsmith_div_u32(arg_3.x, ~0u >> (arg_3.x % 32u)) != ~u_input.b;
    let var_2 = !all(func_4(Struct_2(~7338u, global0.x, Struct_1(var_0.a, vec4<f32>(1786f, global0.x, global0.x, 645f), vec2<i32>(arg_2, 1i), vec2<bool>(true, false)), func_2(var_0.b, global0.x)), Struct_4(select(false, true, arg_1.x)), vec2<bool>(arg_0, arg_2 < arg_2)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, -1186f, global0.x)), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(60753u, 21u)], true)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-965f, 217f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 327f, global0.x)))), !any(!vec4<bool>(true, arg_1.x, arg_0, true)))));
    return Struct_2(arg_3.x, global0.x, Struct_1(_wgslsmith_div_vec3_u32(var_0.a << (var_0.b.xwx % vec3<u32>(32u)), select(vec3<u32>(arg_3.x, 67970u, var_0.a.x), var_0.a, vec3<bool>(arg_0, var_1, false))) << (~vec3<u32>(25177u, var_0.b.x, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, 522f, -457f)) + func_2(vec4<u32>(39430u, arg_3.x, 0u, 81465u), global0.x).b))), func_2(vec4<u32>(~u_input.a, var_0.a.x, abs(arg_3.x), u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1179f)).c, select(arg_1, select(arg_1, arg_1, arg_1), arg_1.x)), Struct_1(abs(vec3<u32>(firstLeadingBit(35981u), _wgslsmith_clamp_u32(58161u, var_0.a.x, var_0.b.x), func_3())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 785f, global0.x, global0.x)), vec4<f32>(-505f, _wgslsmith_f_op_f32(global0.x - -2258f), -470f, _wgslsmith_f_op_f32(1137f * global0.x)), vec4<bool>(!arg_0, true, !var_1, arg_1.x))), ~min(-vec2<i32>(arg_2, arg_2), -vec2<i32>(arg_2, 17131i)), !(!select(vec2<bool>(false, true), arg_1, var_2))));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f * -159f)), _wgslsmith_f_op_f32(round(global0.x)))))));
    var var_0 = -(vec3<i32>(-1i) * -vec3<i32>(~0i, _wgslsmith_add_i32(arg_1, 30062i), _wgslsmith_div_i32(arg_1, 0i)));
    var var_1 = arg_0;
    global2 = array<Struct_3, 8>();
    let var_2 = _wgslsmith_mult_vec2_u32(var_1.c.a.yx, vec2<u32>(33865u, _wgslsmith_add_u32(var_1.c.a.x, ~var_1.c.a.x)) ^ arg_0.d.a.yz);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.d.b.yxz - arg_0.d.b.ywx)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1972f))))))), _wgslsmith_f_op_vec3_f32(func_5(func_1(all(vec4<bool>(true, global1[_wgslsmith_index_u32(57136u, 21u)], true, false)), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])), 1i, vec2<u32>(~4294967295u, u_input.a & 1u)), ~1i)));
    let var_0 = -440f;
    var var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(-28431i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-13808i, -1i, -5244i, 2147483647i), vec4<i32>(0i, 2147483647i, 8554i, -1372i)) & ~2147483647i), -(~(-vec3<i32>(1i, -40672i, 0i) << (~vec3<u32>(u_input.b, 24209u, 74579u) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(~u_input.b | _wgslsmith_div_u32(5051u, u_input.b), 1090u, u_input.b, _wgslsmith_add_u32(26u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))).b.yzy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, var_0, 1538f))))));
    let var_3 = ~(~_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(u_input.a, 0u)), vec2<u32>(~1u, ~4294967295u)));
    var_1 = firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(0i, 2147483647i, var_1.x), -(~(~vec3<i32>(-30901i, -22065i, 26764i)))));
    let var_4 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1108f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(242f)) - -558f) + _wgslsmith_f_op_f32(abs(-981f)))), min(0u, _wgslsmith_mod_u32(0u, u_input.b)));
}

