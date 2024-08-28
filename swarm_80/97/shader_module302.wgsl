struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(34148i, 57748i, -45368i), vec3<i32>(2147483647i, 48493i, -1i), vec3<i32>(-19566i, 45492i, 2147483647i), vec3<i32>(-1i, -1i, -6873i), vec3<i32>(-62590i, 8129i, -36147i), vec3<i32>(-27689i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-13079i, i32(-2147483648), 11174i), vec3<i32>(-38339i, 2172i, i32(-2147483648)), vec3<i32>(-49514i, 2147483647i, 54746i), vec3<i32>(0i, 7789i, 14174i), vec3<i32>(-5469i, 1i, 5868i), vec3<i32>(-1i, 1i, 952i), vec3<i32>(-66063i, 1i, 34989i), vec3<i32>(-55154i, 25054i, 0i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(2147483647i, -4762i, -37705i), vec3<i32>(1i, 1i, -25401i), vec3<i32>(i32(-2147483648), -5234i, 6954i), vec3<i32>(0i, -1i, -70984i), vec3<i32>(i32(-2147483648), -1i, -18735i), vec3<i32>(10773i, 2147483647i, i32(-2147483648)), vec3<i32>(51449i, -35138i, -8634i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-14436i, -7123i, -8610i), vec3<i32>(27236i, 0i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 35947i), vec3<i32>(-31043i, -45131i, 1i), vec3<i32>(i32(-2147483648), 810i, -12493i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) * _wgslsmith_f_op_f32(step(arg_2, 717f))));
    global0 = array<vec3<i32>, 29>();
    var var_1 = Struct_1(-vec4<i32>(_wgslsmith_clamp_i32(0i, -1i, -2147483647i), -1i, _wgslsmith_clamp_i32(2147483647i, 58061i, -18182i), 1i) & vec4<i32>(22653i, 1i, firstLeadingBit(1i), -_wgslsmith_sub_i32(-17634i, -17888i)), (all(!arg_1.zz) && true) && all(select(select(vec2<bool>(false, arg_1.x), arg_1.wy, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), !arg_1.x)), vec2<i32>(-firstLeadingBit(48613i), 1658i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(498f, arg_2, -1000f, arg_2), vec4<f32>(829f, var_0, -568f, arg_2))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, var_0, arg_2)) + vec4<f32>(370f, arg_2, arg_2, var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0, arg_2)), _wgslsmith_f_op_f32(-527f + var_0), _wgslsmith_f_op_f32(f32(-1f) * -1684f), var_0))));
    global0 = array<vec3<i32>, 29>();
    var var_2 = true;
    return ~arg_0;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = !(max(u_input.b, func_3(0u, vec4<bool>(false, false, true, true), arg_2.x)) != ~_wgslsmith_clamp_u32(72103u, 0u, u_input.b)) & !(!(arg_0 != -648f) && true);
    let var_1 = Struct_1(-reverseBits(-select(vec4<i32>(-16382i, 2091i, arg_1, -2143i), vec4<i32>(-49211i, 0i, 2147483647i, arg_1), false)), !any(vec3<bool>(true, true, true)), vec2<i32>(arg_1, 7406i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1114f, -1064f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_vec4_f32(arg_2, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -266f, arg_2.x, 753f), arg_2)))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.yyz - vec3<f32>(-120f, var_2.d.x, -2047f))))) - vec3<f32>(var_1.d.x, _wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(610f * var_1.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1259f))), _wgslsmith_f_op_f32(f32(-1f) * -3218f)));
    var_0 = select(all(select(!vec3<bool>(false, false, var_1.b), !vec3<bool>(true, var_1.b, true), false)) | true, select(true, -25014i <= arg_1, all(!select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(var_1.b, var_2.b, false)))), !(!(!var_1.b)));
    return Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-8667i, -arg_1, -3043i >> (u_input.b % 32u), ~3219i), vec4<i32>(-var_2.c.x, 1i, var_1.c.x, var_1.c.x)), vec4<i32>(-1i, ~1i, arg_1, var_1.c.x)), true, firstLeadingBit(vec2<i32>(~43067i, 41166i)), _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.d.x, var_1.d.x, var_1.d.x, 689f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, arg_0, 123f, arg_0), var_1.d)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, arg_2.x, -2322f, 197f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-599f, -274f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, -398f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(round(-1924f)), 119f), vec3<f32>(_wgslsmith_div_f32(2689f, arg_0.d.x), _wgslsmith_f_op_f32(trunc(832f)), _wgslsmith_f_op_f32(f32(-1f) * -183f)), !(!vec3<bool>(false, arg_0.b, false)))))), _wgslsmith_f_op_vec3_f32(arg_0.d.yxy + arg_1.d.yxx), false));
    let var_2 = Struct_2(Struct_1(min(vec4<i32>(arg_0.c.x, arg_1.a.x, func_2(var_0, 1i, arg_1.d).a.x, i32(-1i) * -2147483647i), ~(-arg_0.a)), 0u <= u_input.b, vec2<i32>(arg_1.a.x, reverseBits(1i)) ^ (select(arg_1.a.ww, vec2<i32>(arg_1.c.x, 0i), vec2<bool>(arg_1.b, true)) ^ arg_0.a.yw), arg_0.d), arg_1.b, var_0, !(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, 4294967295u, 1u)) == ~func_3(u_input.b, vec4<bool>(arg_0.b, false, arg_0.b, true), 1000f)));
    global0 = array<vec3<i32>, 29>();
    return var_2.a.a.x << (5417u % 32u);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = u_input.a.yx;
    let var_1 = Struct_2(arg_1, arg_1.b, arg_1.d.x, any(vec4<bool>(true, arg_1.b, true, _wgslsmith_f_op_f32(-arg_1.d.x) != _wgslsmith_f_op_f32(floor(-1499f)))));
    global0 = array<vec3<i32>, 29>();
    let var_2 = Struct_2(arg_1, any(vec2<bool>(var_1.b, true)), _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f - arg_1.d.x)), -828f))), arg_1.b);
    let var_3 = firstLeadingBit(~(~vec3<u32>(arg_2, 1u, 1127u))) & abs(u_input.a);
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> vec2<bool> {
    global0 = array<vec3<i32>, 29>();
    var var_0 = func_5(_wgslsmith_add_i32(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(arg_1, 29u)], vec3<i32>(arg_2.x, -2147483647i, 25549i)), arg_0.d), Struct_1(_wgslsmith_div_vec4_i32(arg_2, vec4<i32>(7801i, arg_0.a.x, arg_0.c.x, arg_0.c.x)), true, countOneBits(arg_2.yy), arg_0.d)), ~(-arg_0.a.x)), Struct_1(arg_2, !(!arg_3), abs(-arg_2.zy), arg_0.d), _wgslsmith_mult_u32(abs(max(u_input.a.x, arg_1)), u_input.a.x));
    var_0 = Struct_2(func_5(_wgslsmith_sub_i32(-668i, arg_0.c.x), arg_0, 10168u).a, func_5(reverseBits(arg_0.c.x), func_2(var_0.a.d.x, min(arg_2.x >> (1u % 32u), -arg_0.a.x), _wgslsmith_f_op_vec4_f32(-arg_0.d)), u_input.b).d, _wgslsmith_f_op_f32(func_5(-select(arg_2.x, arg_0.c.x, false), Struct_1(vec4<i32>(-5049i, arg_2.x, arg_0.a.x, 1i), true, var_0.a.a.wz, vec4<f32>(arg_0.d.x, var_0.c, var_0.a.d.x, arg_0.d.x)), select(~u_input.b, ~arg_1, select(true, var_0.b, false))).a.d.x + 1787f), !func_5(~1i, func_5(_wgslsmith_add_i32(arg_2.x, 1i), func_2(var_0.c, 22675i, vec4<f32>(var_0.c, -350f, -1529f, 1852f)), 4294967295u).a, u_input.b).d);
    let var_1 = Struct_2(var_0.a, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.d.x))), all(select(!vec4<bool>(arg_0.b, arg_3, false, true), vec4<bool>(!arg_3, !arg_0.b, false, true), !select(vec4<bool>(var_0.d, var_0.d, false, arg_3), vec4<bool>(arg_0.b, arg_3, true, true), vec4<bool>(true, arg_0.b, false, arg_0.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a.d)) * var_0.a.d)) + vec4<f32>(170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1907f) * _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -112f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(315f + -1891f), -621f, any(vec4<bool>(false, false, false, true))))))));
    return select(select(vec2<bool>(arg_3 & arg_0.b, true), vec2<bool>(any(select(vec4<bool>(true, arg_3, var_1.b, false), vec4<bool>(arg_3, var_1.b, var_1.a.b, true), true)), var_0.d), all(!(!vec3<bool>(true, var_0.a.b, true)))), vec2<bool>(true, true), vec2<bool>(true, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec4<i32>(abs(-2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-45986i, -47600i)), 1i, -51785i), all(vec2<bool>(true, true)) & true, vec2<i32>(1i, 33643i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, -1000f, -495f, -1785f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1860f)), -857f, _wgslsmith_f_op_f32(1481f * 460f), _wgslsmith_f_op_f32(705f * -1026f)))), !(true || (u_input.b >= ~u_input.b)), -1292f, !all(vec4<bool>(true, true, true, true)));
    let var_1 = vec3<bool>(all(func_1(Struct_1(_wgslsmith_add_vec4_i32(var_0.a.a, vec4<i32>(var_0.a.a.x, var_0.a.a.x, 1i, var_0.a.a.x)), true, vec2<i32>(var_0.a.c.x, 1i), _wgslsmith_f_op_vec4_f32(select(var_0.a.d, vec4<f32>(var_0.a.d.x, 2268f, var_0.c, 587f), true))), 1u, _wgslsmith_sub_vec4_i32(vec4<i32>(37166i, var_0.a.c.x, 18340i, 39174i), firstTrailingBit(var_0.a.a)), (var_0.a.a.x & var_0.a.a.x) > _wgslsmith_clamp_i32(66947i, var_0.a.a.x, var_0.a.a.x))), true, any(select(vec2<bool>(var_0.a.b, func_5(-18800i, Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, vec4<f32>(2459f, -1691f, var_0.c, 270f)), u_input.b).b), !vec2<bool>(var_0.a.b, false), !vec2<bool>(var_0.d, false))));
    var var_2 = var_0.a;
    var var_3 = select(23299i, var_0.a.a.x, false);
    var var_4 = var_0.a;
    let var_5 = all(!select(!vec4<bool>(true, true, var_1.x, true), !(!vec4<bool>(false, false, var_1.x, var_0.a.b)), select(select(vec4<bool>(var_2.b, true, true, var_4.b), vec4<bool>(var_0.d, var_1.x, var_4.b, var_0.d), var_4.b), vec4<bool>(false, var_0.d, var_2.b, var_1.x), var_2.b || false)));
    var var_6 = min(39568i, 0i);
    var var_7 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.b, _wgslsmith_div_u32(u_input.b | u_input.b, 16410u), u_input.b, ~(0u << (0u % 32u))) ^ ~((vec4<u32>(77299u, u_input.a.x, u_input.a.x, 12588u) | vec4<u32>(u_input.a.x, 42884u, u_input.a.x, u_input.a.x)) << (vec4<u32>(u_input.a.x, 22670u, u_input.b, 2298u) % vec4<u32>(32u))));
}

