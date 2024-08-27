struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(743f, 1485f), vec2<f32>(641f, -1000f), vec2<f32>(1000f, 835f), vec2<f32>(1200f, 709f), vec2<f32>(905f, -903f), vec2<f32>(-1253f, -1280f), vec2<f32>(-1000f, 243f), vec2<f32>(1060f, -1050f), vec2<f32>(-780f, -349f), vec2<f32>(-787f, -898f), vec2<f32>(240f, -1000f), vec2<f32>(1435f, -538f), vec2<f32>(183f, -2127f), vec2<f32>(762f, 298f), vec2<f32>(-1000f, -2047f), vec2<f32>(-687f, 1463f), vec2<f32>(1324f, 488f), vec2<f32>(1502f, 147f), vec2<f32>(1120f, 297f), vec2<f32>(1000f, -1292f), vec2<f32>(739f, -965f), vec2<f32>(-127f, -406f), vec2<f32>(-437f, -531f), vec2<f32>(777f, -1120f), vec2<f32>(-1354f, 132f), vec2<f32>(1262f, -721f), vec2<f32>(-871f, 770f), vec2<f32>(-2192f, -128f), vec2<f32>(-346f, -1000f));

var<private> global3: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-11136i, 2147483647i, i32(-2147483648)), vec3<i32>(-30673i, 61675i, -34244i), vec3<i32>(-684i, i32(-2147483648), -1i), vec3<i32>(34646i, 2147483647i, 41043i), vec3<i32>(21868i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), -10970i), vec3<i32>(i32(-2147483648), 20062i, -8260i), vec3<i32>(6207i, -72297i, 0i), vec3<i32>(6026i, 29702i, 4794i), vec3<i32>(45136i, 2147483647i, 1i), vec3<i32>(0i, -1i, 39352i), vec3<i32>(-21948i, 1i, 0i), vec3<i32>(1i, 42048i, 1i), vec3<i32>(1i, -1i, 49647i), vec3<i32>(43365i, 79127i, i32(-2147483648)), vec3<i32>(82349i, 39153i, -96289i), vec3<i32>(i32(-2147483648), -31487i, 0i), vec3<i32>(53001i, -17785i, -9629i), vec3<i32>(-51355i, 27622i, i32(-2147483648)), vec3<i32>(11004i, -31267i, 2147483647i), vec3<i32>(-61589i, -39450i, 6084i), vec3<i32>(-34067i, -21610i, 400i), vec3<i32>(-1i, -1i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = 495f;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(round(-1752f))), _wgslsmith_div_f32(1344f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1314f)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1558f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -659f, _wgslsmith_f_op_f32(-1768f + var_1.x)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, var_1.x, var_1.x))) - vec3<f32>(-113f, -536f, 204f))))));
    var var_3 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(var_1.x, 911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_1.x, true))) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1816f));
    var_0 = -877f;
    return ~(~(~(~firstLeadingBit(vec4<u32>(89931u, 1u, 4294967295u, u_input.a.x)))));
}

fn func_2() -> bool {
    var var_0 = ~u_input.c;
    var var_1 = vec3<f32>(-1627f, 1051f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(1843f + -2170f)))), -175f)));
    let var_2 = Struct_1(abs(vec4<i32>(_wgslsmith_div_i32(2147483647i << (0u % 32u), u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, u_input.c & 25144i), _wgslsmith_mod_i32(-25790i, abs(u_input.b.x)), -select(u_input.b.x, u_input.b.x, false))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(u_input.a.x, 0u)), ~(~vec2<u32>(4294967295u, u_input.a.x))), vec2<u32>(0u, 0u) >> (countOneBits(_wgslsmith_clamp_vec2_u32(u_input.a.xx, vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 60093u))) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_add_vec4_u32(~func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz)), abs(~19429u), Struct_1(vec4<i32>(26406i, -12436i, u_input.b.x, -19984i) ^ var_2.a, u_input.a.yz)), select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, 18608u), ~vec4<u32>(1u, u_input.a.x, 17222u, 29729u)), ~countOneBits(vec4<u32>(9605u, 4294967295u, 14230u, u_input.a.x))), vec4<u32>(_wgslsmith_add_u32(var_2.b.x, 116283u), 13054u, 0u, var_2.b.x >> (u_input.a.x % 32u)) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(16217u, u_input.a.x, 1u, var_2.b.x), select(vec4<u32>(104394u, u_input.a.x, var_2.b.x, u_input.a.x), vec4<u32>(49575u, u_input.a.x, u_input.a.x, var_2.b.x), false)), vec4<bool>(true, true, true, true)));
    var_3 = ~_wgslsmith_mod_vec4_u32(~abs(firstLeadingBit(vec4<u32>(1u, 4294967295u, 92949u, var_3.x))), abs(vec4<u32>(1u, u_input.a.x, 24743u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))));
    return true;
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<bool> {
    global2 = array<vec2<f32>, 29>();
    var var_0 = Struct_1(-(-vec4<i32>(arg_0, 0i, -1i, u_input.b.x) ^ (vec4<i32>(0i, u_input.c, -30430i, u_input.c) & vec4<i32>(u_input.b.x, arg_0, 2147483647i, arg_0))) & _wgslsmith_div_vec4_i32(vec4<i32>(-29168i, arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(38695i, 38887i), u_input.b), 10082i), vec4<i32>(u_input.b.x & arg_0, u_input.c, -u_input.b.x, 0i)), ~u_input.a.xz);
    let var_1 = Struct_1(~vec4<i32>(-1i, u_input.b.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.b.x, 69336i), vec3<i32>(1i, -1i, -47838i)), arg_0), select(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1091f, 1027f), global2[_wgslsmith_index_u32(var_0.b.x & 4294967295u, 29u)]), 4294967295u, Struct_1(vec4<i32>(0i, arg_0, 1i, 121i), vec2<u32>(u_input.a.x, var_0.b.x))).xx, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b, u_input.a.xz) >> (~vec2<u32>(45867u, u_input.a.x) % vec2<u32>(32u)), max(vec2<u32>(var_0.b.x, 9258u) ^ u_input.a.zz, var_0.b)), select(true, (arg_1 != arg_1) & true, true)));
    let var_2 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(~51210i, 1i, -var_0.a.x, 1i)), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -10039i, u_input.b.x, var_0.a.x), var_1.a))) >> (~vec4<u32>(~max(13542u, 0u), 0u, _wgslsmith_div_u32(~0u, 1u), ~u_input.a.x) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1975f - 897f), _wgslsmith_f_op_f32(f32(-1f) * -852f)) * _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 29u)])) * vec2<f32>(1f, _wgslsmith_f_op_f32(-1176f + -268f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-626f, -139f))), _wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(var_1.b.x, 29u)])))) - _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~var_0.b.x, 29u)])), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(23643u, 29u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(var_1.b.x, 29u)], vec2<f32>(-453f, 1791f)))))))));
    return select(select(!vec2<bool>(!arg_1, true), !vec2<bool>(227f < var_3.x, any(vec4<bool>(arg_1, false, arg_1, false))), any(vec3<bool>(any(vec4<bool>(arg_1, true, arg_1, arg_1)), true, true))), vec2<bool>(arg_1, any(!select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true)))), true);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    return Struct_1(vec4<i32>(~u_input.b.x, arg_2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, -28615i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, arg_2.a.x, -40656i), vec3<i32>(arg_2.a.x, arg_2.a.x, 2147483647i))), select(vec3<i32>(-1i, 449i, 22051i), abs(arg_2.a.www), !vec3<bool>(true, arg_1.x, arg_1.x))), countOneBits(-64049i) & ~_wgslsmith_add_i32(2147483647i, u_input.b.x)), vec2<u32>(25449u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 15643u), 1u)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(~vec3<i32>(~10690i, ~2147483647i & -u_input.b.x, 1i), countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), -(abs(u_input.c) ^ u_input.b.x) != -43483i);
    global3 = array<vec3<i32>, 23>();
    global2 = array<vec2<f32>, 29>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f * -1000f) + _wgslsmith_f_op_f32(-383f + -1135f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-235f))))));
    var var_2 = ~global3[_wgslsmith_index_u32(abs(6034u), 23u)] >> (countOneBits(u_input.a) % vec3<u32>(32u));
    return func_5(~0u, vec2<bool>(all(func_4(u_input.b.x, func_2())), true), Struct_1(countOneBits(vec4<i32>(var_0.x, ~u_input.b.x, 0i, _wgslsmith_div_i32(2147483647i, 52084i))), vec2<u32>(min(u_input.a.x, abs(u_input.a.x)), u_input.a.x)), max(min(~(vec3<i32>(var_2.x, 0i, var_0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<i32>(-2147483647i, max(_wgslsmith_clamp_i32(2147483647i, 17542i, u_input.b.x), firstLeadingBit(u_input.b.x)), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(vec4<i32>(i32(-1i) * -1i, ~abs(var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -38633i << (var_0.b.x % 32u), u_input.c, 28095i), ~var_0.a), -1i), vec2<u32>(reverseBits(~u_input.a.x) | _wgslsmith_add_u32(~18711u, abs(var_0.b.x)), 0u));
    var var_2 = select(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true))), select(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), u_input.a.x < var_1.b.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, false, true, false))), true);
    global1 = min(1u, u_input.a.x);
    let var_3 = Struct_1(var_0.a, vec2<u32>(~0u, ~firstLeadingBit(firstLeadingBit(var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-344f, _wgslsmith_f_op_f32(f32(-1f) * -267f)))) - 1112f), var_0.b.x, 8873i, var_0.b.x);
}

