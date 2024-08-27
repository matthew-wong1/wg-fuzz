struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-293f, -439f, -1073f), vec3<f32>(-1941f, 284f, 1315f), vec3<f32>(559f, 257f, 514f), vec3<f32>(-328f, 1000f, 842f), vec3<f32>(632f, -1403f, 575f), vec3<f32>(423f, 1793f, 1000f));

var<private> global2: array<f32, 21>;

var<private> global3: vec3<f32> = vec3<f32>(775f, 337f, 580f);

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    return Struct_1(global4.a);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<i32, 30>();
    var var_0 = select(vec4<bool>(arg_0.a.x, true, !(!global4.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global3.x)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, global2[_wgslsmith_index_u32(4294967295u, 21u)])))), select(select(select(vec4<bool>(global4.a.x, false, true, true), vec4<bool>(true, true, global4.a.x, true), u_input.a < global0[_wgslsmith_index_u32(0u, 30u)]), !select(vec4<bool>(arg_0.a.x, true, global4.a.x, global4.a.x), vec4<bool>(true, arg_0.a.x, global4.a.x, false), vec4<bool>(true, true, false, arg_0.a.x)), select(select(vec4<bool>(arg_0.a.x, global4.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, global4.a.x, arg_0.a.x, global4.a.x), arg_0.a.x), !vec4<bool>(false, global4.a.x, global4.a.x, false), !vec4<bool>(global4.a.x, true, global4.a.x, global4.a.x))), !select(!vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(global4.a.x, false, global4.a.x, false), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.a.x, true, global4.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x))), !vec4<bool>(true, false, true, any(vec3<bool>(false, arg_0.a.x, true)))), vec4<bool>(any(!vec4<bool>(true, arg_0.a.x, true, arg_0.a.x)), global4.a.x, false, arg_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(-658f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(72377u, 21u)])))))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.yx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 257f) + global3.xx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 1005f))))) - _wgslsmith_f_op_vec2_f32(trunc(global3.xz)));
    return _wgslsmith_mult_vec2_i32(abs(select((vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]) ^ vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(11444u, 30u)])) & -vec2<i32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(45404u, 30u)]) ^ vec2<i32>(-2147483647i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a), vec2<i32>(21631i, u_input.a) << (u_input.c % vec2<u32>(32u))), !var_0.x)), vec2<i32>(19905i, global0[_wgslsmith_index_u32(~85818u, 30u)]));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(global4.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~u_input.b, 21u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(min(~4294967295u, 11402u), 21u)])) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3, 21u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 21u)] + global2[_wgslsmith_index_u32(0u, 21u)])))))), _wgslsmith_f_op_f32(global3.x - global2[_wgslsmith_index_u32(min(~arg_3, 0u), 21u)]), _wgslsmith_f_op_f32(select(-158f, 1261f, var_0.a.x)));
    var var_2 = Struct_1(!var_0.a);
    return func_2();
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = false;
    let var_1 = -u_input.a;
    var var_2 = Struct_1(func_2().a);
    var var_3 = _wgslsmith_add_u32(4294967295u, ~u_input.b | ~u_input.b);
    global0 = array<i32, 30>();
    return Struct_1(!vec2<bool>(!global4.a.x, var_2.a.x));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.xz, global3.yy, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(42721u, 21u)], 2133f)))), func_4(_wgslsmith_mod_vec3_i32(max(vec3<i32>(4838i, u_input.a, 4238i), select(vec3<i32>(1i, -26467i, 1i), vec3<i32>(2147483647i, u_input.a, 18711i), true)), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 30u)], u_input.a, u_input.a)), func_3(func_2()) | ~(vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), ~(~firstTrailingBit(-22102i)), ~reverseBits(select(0u, u_input.b, false))));
    var var_1 = func_4(-(vec3<i32>(-1i) * -abs(vec3<i32>(-14903i, -1i, u_input.a))), func_3(func_2()), -firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(abs(30075u), 30u)])), ~firstLeadingBit(u_input.c.x));
    var var_2 = ~firstLeadingBit(vec4<i32>(max(u_input.a, 1i), 72988i, ~(~u_input.a), ~u_input.a));
    var var_3 = any(func_4(reverseBits(select(-vec3<i32>(-38768i, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 2147483647i), ~var_2.wzy, true)), _wgslsmith_mod_vec2_i32(reverseBits(var_2.ww), ~select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], -36175i), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 30u)]), vec2<bool>(global4.a.x, var_1.a.x))), -(~var_2.x), ~u_input.c.x & ~countOneBits(u_input.b)).a);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~42612u, 6u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 171f, global2[_wgslsmith_index_u32(1u, 21u)]), vec3<f32>(-366f, global2[_wgslsmith_index_u32(u_input.c.x, 21u)], global2[_wgslsmith_index_u32(14367u, 21u)])), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.c.x, 6u)] * vec3<f32>(global2[_wgslsmith_index_u32(1u, 21u)], 746f, -681f))))) + global1[_wgslsmith_index_u32(u_input.b, 6u)]);
    return vec3<u32>(0u, ~(1u & u_input.b), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(~func_1(), ~(vec3<u32>(_wgslsmith_sub_u32(0u, u_input.c.x), ~4294967295u, _wgslsmith_mult_u32(u_input.b, 46492u)) | vec3<u32>(u_input.b, 78719u, 0u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(38419u, 21u)], global2[_wgslsmith_index_u32(select(1u, u_input.b, global4.a.x), 21u)], global2[_wgslsmith_index_u32(~35554u, 21u)], 322f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-232f, global2[_wgslsmith_index_u32(4294967295u, 21u)], 1378f, -1273f)))))));
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1035f, global2[_wgslsmith_index_u32(u_input.c.x, 21u)])) + var_1.yw)), global3.yx, func_4(_wgslsmith_sub_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<i32>(global0[_wgslsmith_index_u32(10750u, 30u)], u_input.a, -42999i)), select(-vec2<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(0i, 11316i), !global4.a), -(1i | global0[_wgslsmith_index_u32(var_0.x, 30u)]), _wgslsmith_mod_u32(~u_input.b, firstLeadingBit(u_input.b))).a)), func_4(-abs(vec3<i32>(-4883i, u_input.a, global0[_wgslsmith_index_u32(var_0.x, 30u)])), vec2<i32>(-u_input.a, 11188i), u_input.a, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 21u)]))) + var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), 1159f), -1068f));
    global2 = array<f32, 21>();
    global2 = array<f32, 21>();
    global4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-27863i, 15916i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(~1i, u_input.a)) & _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(17594i, -2147483647i), ~(-vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 29813i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_3)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, 537f, 1000f), vec3<f32>(global2[_wgslsmith_index_u32(1u, 21u)], global3.x, var_1.x))), global1[_wgslsmith_index_u32(min(4294967295u, 1u), 6u)], true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 505f, var_3.x) + vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 21u)], 1136f, -611f))) - var_3));
}

