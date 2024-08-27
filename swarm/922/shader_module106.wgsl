struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

var<private> global3: f32 = 1000f;

var<private> global4: array<vec2<u32>, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(-1346f, 1637f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * 262f))), 1503f), arg_1, -arg_2);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, var_0.b, -1000f), var_0.a))))), -1000f, _wgslsmith_add_vec2_i32(~(-u_input.e.yy), ~(arg_2 << (vec2<u32>(u_input.a, 33766u) % vec2<u32>(32u)))) & vec2<i32>(_wgslsmith_div_i32(0i, ~1i), arg_2.x << (u_input.d % 32u)));
    global0 = Struct_2(select(global0.a, select(vec3<bool>(true || arg_0, all(vec4<bool>(global0.a.x, arg_0, true, true)), true), vec3<bool>(true & global0.a.x, false, true), global1.x), true));
    var var_2 = Struct_2(select(vec3<bool>(arg_0, false, true), select(!global2.a, global2.a, select(!global0.a, vec3<bool>(false, false, true), any(vec4<bool>(global0.a.x, true, false, true)))), true));
    let var_3 = u_input.c.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(select(global2.a, vec3<bool>(false, global0.a.x, global1.x), global1.x));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(332f + -262f), _wgslsmith_f_op_f32(557f - 146f), _wgslsmith_f_op_f32(f32(-1f) * -1048f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(742f, -438f, 1000f, -422f), vec4<f32>(-573f, 245f, 783f, -456f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(922f, -210f, -971f, -693f)))), _wgslsmith_f_op_f32(select(-152f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(any(global0.a), _wgslsmith_f_op_f32(step(-289f, 463f)), u_input.b.xy)))), 25612u != _wgslsmith_div_u32(99140u & u_input.c.x, 1u))), ~(-vec2<i32>(-1i, 2147483647i) << ((vec2<u32>(u_input.c.x, 19180u) ^ global4[_wgslsmith_index_u32(u_input.d, 20u)]) % vec2<u32>(32u))) ^ abs(u_input.e.yz));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = func_2();
    var var_1 = Struct_2(global0.a);
    let var_2 = arg_1.c;
    var var_3 = select(select(var_1.a.zy, !global0.a.xy, global2.a.x), global2.a.xz, !global0.a.zy);
    var var_4 = ~_wgslsmith_sub_u32(countOneBits(reverseBits(_wgslsmith_div_u32(40598u, u_input.c.x))), 0u);
    return global2.a.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = (all(select(vec4<bool>(false, true, arg_1, arg_1), !vec4<bool>(false, arg_2.a.x, false, arg_1), global1.x && true)) & any(!select(vec2<bool>(true, true), vec2<bool>(true, arg_1), false))) | false;
    global1 = vec2<bool>(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, true, true, true)), vec4<bool>(global1.x, arg_2.a.x, true, false), !vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), false);
    let var_1 = 66311u;
    let var_2 = func_2();
    var var_3 = 77053i;
    return Struct_2(vec3<bool>(!global0.a.x, ((i32(-1i) * -22811i) >= ~arg_0) | false, var_2.a.x <= var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_i32(u_input.b.x | _wgslsmith_add_i32(u_input.b.x, -32835i), -_wgslsmith_dot_vec4_i32(max(u_input.b, u_input.b), ~vec4<i32>(2700i, 1901i, 2147483647i, u_input.b.x))), global2.a.x, Struct_2(!vec3<bool>(any(vec4<bool>(global2.a.x, global2.a.x, true, global0.a.x)), func_1(833f, Struct_1(vec4<f32>(-424f, -134f, 1821f, -119f), -1678f, u_input.e.yz), 2147483647i), select(global0.a.x, global0.a.x, global2.a.x))));
    var var_1 = true;
    var_1 = any(select(!vec4<bool>(all(global2.a), all(vec2<bool>(global1.x, global1.x)), true, global0.a.x), select(!(!vec4<bool>(var_0.a.x, global2.a.x, true, false)), select(select(vec4<bool>(global2.a.x, global2.a.x, false, true), vec4<bool>(global0.a.x, global0.a.x, var_0.a.x, true), global2.a.x), vec4<bool>(true, var_0.a.x, global2.a.x, global1.x), global2.a.x || true), vec4<bool>(func_1(241f, Struct_1(vec4<f32>(-258f, -1148f, 246f, -1028f), 1769f, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.x), true, u_input.d >= 4337u, func_4(u_input.e.x, global0.a.x, Struct_2(global2.a)).a.x)), any(select(select(vec4<bool>(global0.a.x, global0.a.x, false, global1.x), vec4<bool>(true, global2.a.x, var_0.a.x, global1.x), vec4<bool>(true, false, global0.a.x, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(global0.a.x, var_0.a.x, global2.a.x, global0.a.x), vec4<bool>(global0.a.x, global1.x, global1.x, true)), true))));
    global3 = _wgslsmith_f_op_f32(select(-678f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f + func_2().b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(839f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - 574f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2129f, 356f)) + _wgslsmith_f_op_f32(sign(-108f))))), global2.a.x & true));
    var var_2 = u_input.e;
    var var_3 = Struct_2(var_0.a);
    var_1 = all(!global0.a);
    global0 = func_4(-10341i, _wgslsmith_add_u32(u_input.c.x, ~1u) > u_input.d, func_4(abs(var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-790f, -672f)), _wgslsmith_f_op_f32(min(749f, -832f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(306f)), _wgslsmith_f_op_f32(f32(-1f) * -687f)), func_4(~(~(-1i)), !global0.a.x, Struct_2(!var_0.a))));
    global4 = array<vec2<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2194f * 348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687f + -509f) * 1000f)) * 253f));
}

