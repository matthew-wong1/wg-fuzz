struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, -50418i), vec2<i32>(i32(-2147483648), 43295i), vec2<i32>(33945i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(1i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -12412i), vec2<i32>(2147483647i, -5646i), vec2<i32>(-7726i, 0i), vec2<i32>(-3757i, 86962i), vec2<i32>(i32(-2147483648), -71176i), vec2<i32>(2147483647i, 0i), vec2<i32>(-9958i, i32(-2147483648)), vec2<i32>(1i, 13344i));

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global0 = array<vec2<i32>, 14>();
    let var_0 = global0[_wgslsmith_index_u32(0u, 14u)];
    var var_1 = 47123u;
    var var_2 = reverseBits(~4294967295u >> (max(u_input.d.x, ~1u) % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1438f)))), (vec2<u32>(0u, 12304u) | (~vec2<u32>(u_input.b, arg_0) ^ vec2<u32>(19703u, u_input.d.x))) & vec2<u32>(1102u, ~firstLeadingBit(0u)), Struct_1(u_input.d.xx), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-575f, _wgslsmith_f_op_f32(1945f * -357f))))), -712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + -886f)) - -756f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1115f, -580f), vec2<f32>(-1137f, -1090f)) + vec2<f32>(-1000f, 904f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, -1759f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -237f)))))));
    return ~vec2<u32>(_wgslsmith_clamp_u32(32826u, 4294967295u, u_input.b), 1459u);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(~u_input.d.yz, select(countOneBits(vec2<u32>(257u, 0u)), u_input.d.xx, vec2<bool>(false, true))));
    let var_1 = _wgslsmith_div_f32(-1474f, _wgslsmith_f_op_f32(sign(160f)));
    var var_2 = var_1;
    global1 = array<i32, 2>();
    var var_3 = Struct_2(1147f, abs(abs(min(select(vec2<u32>(1u, var_0.a.x), u_input.d.xz, true), func_3(1u)))), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, var_1, -1630f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1024f, var_1), _wgslsmith_div_f32(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2694f, -392f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(979f, var_1))))));
    return ~18706u;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<u32>(func_2(), 0u);
    global0 = array<vec2<i32>, 14>();
    let var_1 = vec3<i32>(~(~(-35533i)), abs(max(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1, arg_2.x), 23221i), -1i)), arg_1);
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(~arg_0.c.a, arg_0.b));
    var var_2 = u_input.c;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(2647u << (max(_wgslsmith_div_u32(u_input.b, u_input.b & u_input.d.x), select(abs(4294967295u), 40696u, u_input.a >= global1[_wgslsmith_index_u32(22158u, 2u)])) % 32u), 2u)], vec3<i32>(~0i, u_input.c.x, ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b, 2u)])));
    var var_1 = func_1(Struct_2(302f, func_1(global2[_wgslsmith_index_u32(0u | abs(var_0.a.x), 30u)], -(u_input.a & 31230i), _wgslsmith_sub_vec3_i32(u_input.c.yyy, vec3<i32>(8125i, -37420i, global1[_wgslsmith_index_u32(0u, 2u)])) & firstTrailingBit(vec3<i32>(-26189i, 6712i, 1i))).a, func_1(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -735f), firstLeadingBit(var_0.a), Struct_1(u_input.d.xy), vec3<f32>(139f, 1367f, 1120f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-712f, 320f) + vec2<f32>(-459f, -1167f))), select(1i, _wgslsmith_clamp_i32(-66977i, 1i, u_input.a), select(true, false, false)), -(vec3<i32>(-6518i, u_input.a, -24915i) & vec3<i32>(21944i, u_input.c.x, 15967i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-416f - 218f), _wgslsmith_f_op_f32(456f + -1000f), -1000f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-1138f, -100f), _wgslsmith_div_f32(858f, 1167f))))), max(-2753i, u_input.c.x), u_input.c.yzz);
    let var_2 = max(_wgslsmith_sub_vec2_i32(min(select(global0[_wgslsmith_index_u32(var_0.a.x, 14u)] | u_input.c.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(66069u, 2u)]), u_input.c.zx), all(vec4<bool>(false, true, true, false))), ~_wgslsmith_div_vec2_i32(vec2<i32>(-16693i, global1[_wgslsmith_index_u32(70577u, 2u)]), vec2<i32>(-32924i, 27532i))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a ^ u_input.a, ~u_input.c.x), ~global0[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_1.a), u_input.d.x), 14u)] << (var_0.a % vec2<u32>(32u)), global0[_wgslsmith_index_u32(u_input.b << (~(~0u) % 32u), 14u)]));
    global1 = array<i32, 2>();
    let var_3 = !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), false));
    let var_4 = vec4<f32>(-190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1534f)) + _wgslsmith_f_op_f32(f32(-1f) * -923f)))), _wgslsmith_f_op_f32(-1f), 1206f);
    var var_5 = vec3<i32>(select(u_input.a, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(4294967295u, var_1.a.x)), 2u)], !all(!var_3)), countOneBits(39570i), -2147483647i);
    var var_6 = abs(~select(u_input.c, u_input.c ^ u_input.c, select(!var_3, !var_3, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.yx))))), _wgslsmith_add_u32(var_0.a.x ^ reverseBits(u_input.d.x >> (37258u % 32u)), var_0.a.x), var_4);
}

