struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_1(vec3<f32>(-2270f, 1098f, -538f), 4294967295u, -259f), 4294967295u), Struct_4(Struct_1(vec3<f32>(1688f, 1170f, -848f), 54181u, -1000f), 0u), Struct_4(Struct_1(vec3<f32>(-227f, -262f, 1873f), 32151u, -338f), 0u), Struct_4(Struct_1(vec3<f32>(785f, -1593f, -1697f), 1u, 287f), 1u), Struct_4(Struct_1(vec3<f32>(322f, -1000f, -1339f), 4294967295u, -1162f), 0u), Struct_4(Struct_1(vec3<f32>(301f, 200f, -465f), 4294967295u, 2003f), 1u), Struct_4(Struct_1(vec3<f32>(624f, -984f, 147f), 80229u, -921f), 1u), Struct_4(Struct_1(vec3<f32>(-513f, 706f, 865f), 1610u, 869f), 54621u), Struct_4(Struct_1(vec3<f32>(317f, 557f, -445f), 0u, 1124f), 33944u), Struct_4(Struct_1(vec3<f32>(-301f, -1000f, -1058f), 4294967295u, -323f), 1u), Struct_4(Struct_1(vec3<f32>(1395f, 546f, 305f), 39292u, 204f), 4294967295u), Struct_4(Struct_1(vec3<f32>(1955f, -435f, 1755f), 1u, 198f), 70743u), Struct_4(Struct_1(vec3<f32>(-235f, 762f, 1002f), 4294967295u, -274f), 50787u), Struct_4(Struct_1(vec3<f32>(404f, -1654f, 1833f), 90077u, 1067f), 1u), Struct_4(Struct_1(vec3<f32>(-293f, -1746f, 1728f), 9934u, 1179f), 79836u), Struct_4(Struct_1(vec3<f32>(-181f, -1604f, -2159f), 13391u, 1058f), 89947u), Struct_4(Struct_1(vec3<f32>(281f, 338f, -1833f), 1u, 1661f), 4294967295u), Struct_4(Struct_1(vec3<f32>(1000f, -1627f, -486f), 4294967295u, 330f), 102860u), Struct_4(Struct_1(vec3<f32>(270f, 846f, 1499f), 4294967295u, 243f), 4294967295u));

var<private> global1: array<i32, 8>;

var<private> global2: vec4<f32> = vec4<f32>(1021f, -499f, 360f, 898f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(global2.x, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.x + -781f), global2.x, _wgslsmith_f_op_f32(step(global2.x, 581f))), _wgslsmith_f_op_vec3_f32(-global2.yzw)), 77284u, _wgslsmith_f_op_f32(f32(-1f) * -824f)));
    return -(~1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 123f, global2.x), global2.xww), _wgslsmith_f_op_vec3_f32(step(arg_0.a, global2.zyy)))), _wgslsmith_f_op_vec3_f32(-global2.xyz))), ~_wgslsmith_add_u32(79000u, _wgslsmith_div_u32(countOneBits(1u), u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -547f));
    let var_1 = ~select(~(-u_input.a), vec3<i32>(1i, 1i, func_3()), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, false), false));
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-984f, arg_1.a, var_0.c, arg_1.a), vec4<f32>(-850f, 1000f, 875f, 624f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.a.x, _wgslsmith_f_op_f32(sign(-237f)), _wgslsmith_f_op_f32(f32(-1f) * -982f)))))));
    let var_2 = vec4<u32>(1u, ~(64997u >> (arg_0.b % 32u)), u_input.c.x, _wgslsmith_clamp_u32(29058u, arg_0.b, arg_0.b));
    let var_3 = _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), func_3());
    return _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1652f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_5 {
    let var_0 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -639f, 1420f, 156f), vec4<f32>(arg_1.a, -498f, arg_1.a, -891f), arg_2)))))))));
    let var_1 = Struct_2(-2227f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f - 1458f) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(-696f - arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-661f + -511f))), 26027u, arg_1.a));
    let var_2 = !(!(!select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, false, true), vec3<bool>(arg_2, true, true)), arg_2)));
    global1 = array<i32, 8>();
    return Struct_5(true, vec2<f32>(239f, -170f));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec3<i32> {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global2.zxx, u_input.d, 1519f), Struct_3(global2.x), vec4<u32>(0u, 20152u, 53719u, 37984u))) * _wgslsmith_f_op_f32(select(560f, global2.x, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, global2.x, global2.x) + vec3<f32>(global2.x, global2.x, -1261f)), ~firstTrailingBit(2417u), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-global2.x), all(arg_0.wxy))))), Struct_3(global2.x), any(arg_0.yyy));
    global0 = array<Struct_4, 19>();
    let var_1 = Struct_3(563f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1576f, var_1.a) * _wgslsmith_f_op_f32(-958f - var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1750f) * global2.x))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(0i, -1i, 1740i), u_input.a, vec3<bool>(all(vec2<bool>(true, true)), select(true, ~36430u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c.x), vec3<u32>(67845u, 4294967295u, 0u)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), false && select(true, false, any(vec4<bool>(false, false, false, true)))));
    var var_1 = true;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, -1000f)))))));
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.b.x), func_1(vec4<bool>(false, true, false, true), 29962i)), countOneBits(29256i)), 5819i), vec3<i32>(global1[_wgslsmith_index_u32(1913u, 8u)] | u_input.a.x, (-u_input.a.x ^ firstTrailingBit(-13586i)) & u_input.a.x, reverseBits(_wgslsmith_mod_i32(1i, reverseBits(var_0.x)))), vec3<i32>(-(~1i), abs(20022i), abs(global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.c.x), 8u)])));
    let x = u_input.a;
    s_output = StorageBuffer(44995i, i32(-1i) * -33513i, u_input.c.yz, _wgslsmith_sub_u32(u_input.c.x, ~(~(~80496u))));
}

