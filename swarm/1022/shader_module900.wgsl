struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, true, true), vec3<bool>(true, true, true));

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_1.x))) - -1588f) - -1122f), !any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d | 84900u, 19u)], !arg_2.b, any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(arg_2.d, 19u)])), select(global0[_wgslsmith_index_u32(arg_3.d, 19u)], arg_2.b, arg_3.b))), _wgslsmith_div_i32(~u_input.c.x | arg_3.e.x, -(~1i)), select(u_input.a, arg_2.d, (false || global0[_wgslsmith_index_u32(arg_3.d, 19u)]) & !(!global0[_wgslsmith_index_u32(u_input.a, 19u)])), max(arg_3.e, arg_2.e));
    var var_1 = arg_2;
    var var_2 = !(!(!var_0.b));
    global1 = array<vec3<bool>, 2>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2074f, _wgslsmith_f_op_f32(max(var_0.a, arg_3.a))))), -258f));
    return _wgslsmith_sub_i32(-1i, arg_0.x);
}

fn func_3() -> u32 {
    global2 = array<vec2<bool>, 4>();
    global3 = array<Struct_1, 1>();
    var var_0 = !(1u != u_input.a);
    let var_1 = vec4<i32>(func_1(-(~vec4<i32>(-59191i, 27125i, u_input.d, 12858i)) & u_input.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-215f + -680f), _wgslsmith_f_op_f32(667f - 237f), _wgslsmith_f_op_f32(f32(-1f) * -392f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)), global0[_wgslsmith_index_u32(u_input.b.x, 19u)], min(-u_input.c.x, u_input.c.x), 7191u, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.c.x, 22347i), vec4<i32>(14697i, u_input.c.x, u_input.d, u_input.c.x)), firstLeadingBit(vec4<i32>(u_input.d, 43539i, u_input.c.x, 21227i)))), global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), abs(1i) & (u_input.d >> (4294967295u % 32u)), countOneBits(func_1(vec4<i32>(u_input.d, -u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 44819i, -1i, -2147483647i), u_input.c), u_input.d >> (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(154f, 1000f, 1133f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-140f, -807f, 463f) * vec3<f32>(-1223f, 154f, -512f))), Struct_1(_wgslsmith_f_op_f32(ceil(1062f)), !global0[_wgslsmith_index_u32(0u, 19u)], 1i, _wgslsmith_div_u32(u_input.b.x, 4294967295u), -u_input.c), global3[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_mod_i32(u_input.d, abs(u_input.c.x) << (_wgslsmith_dot_vec2_u32(u_input.b.zz >> (vec2<u32>(35316u, u_input.b.x) % vec2<u32>(32u)), u_input.b.zz | u_input.b.zy) % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(842f * 723f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2070f + -735f) * -1551f))), true, -2147483647i, u_input.b.x, _wgslsmith_add_vec4_i32(select(u_input.c, ~(var_1 ^ var_1), (global0[_wgslsmith_index_u32(0u, 19u)] | global0[_wgslsmith_index_u32(u_input.a, 19u)]) | false), var_1));
    return min(1u, abs(abs(u_input.a)));
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = ~reverseBits(vec4<u32>(_wgslsmith_add_u32(46432u, ~4294967295u), 50730u, ~5844u, ~1u));
    let var_2 = 1u;
    var_0 = global0[_wgslsmith_index_u32(func_3(), 19u)];
    var var_3 = select(!vec4<bool>(any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(100699u, 19u)])), any(vec2<bool>(true, true)), !(!global0[_wgslsmith_index_u32(var_1.x, 19u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, 22752u, 32106u), 19u)]), vec4<bool>(true, !all(global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(262f, 505f)), _wgslsmith_f_op_f32(ceil(-155f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-362f)))) + _wgslsmith_f_op_f32(min(-1036f, _wgslsmith_f_op_f32(f32(-1f) * -460f)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_mult_u32(min(min(var_2, _wgslsmith_mult_u32(17762u, var_2)), firstTrailingBit(4294967295u)), var_1.x)), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 6107i;
    let var_1 = Struct_1(503f, all(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(10530u, u_input.a, 10007u)), 4u)]), 45826i, ~(~u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, var_0, func_1(u_input.c, vec3<f32>(277f, -1000f, 115f), global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)])), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 5193i, u_input.d), vec4<i32>(4435i, -593i, 1i, var_0))) ^ _wgslsmith_add_vec4_i32(u_input.c, u_input.c));
    global2 = array<vec2<bool>, 4>();
    global1 = array<vec3<bool>, 2>();
    var var_2 = !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false | global0[_wgslsmith_index_u32(1u, 19u)], false)));
    var_2 = !select(!(!select(vec4<bool>(true, false, true, var_1.b), vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, true, var_1.b, var_2.x))), select(vec4<bool>(true, !var_2.x, func_2(), var_1.b), !(!vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(var_1.d, 19u)], var_1.b, var_2.x)), vec4<bool>(false, !global0[_wgslsmith_index_u32(u_input.b.x, 19u)], func_2(), false)), global0[_wgslsmith_index_u32(1u, 19u)] & !global0[_wgslsmith_index_u32(u_input.b.x, 19u)]);
    var_2 = vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_1.d, abs(u_input.b.x)), _wgslsmith_mult_u32(~var_1.d, 0u)), 19u)], select(!((var_1.d <= u_input.b.x) & !var_1.b), global0[_wgslsmith_index_u32(1u, 19u)], true), 68838u <= select(max(~u_input.b.x, _wgslsmith_mult_u32(var_1.d, var_1.d)), _wgslsmith_div_u32(~0u, var_1.d), any(select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(true, var_1.b, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, false)))), false);
    global1 = array<vec3<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 43957u, 32671u), vec4<u32>(u_input.b.x, 28166u, var_1.d, 0u)), vec4<u32>(var_1.d, 39357u, 4294967295u, var_1.d)) | vec4<u32>(reverseBits(0u), abs(u_input.b.x), u_input.a, _wgslsmith_add_u32(u_input.a, var_1.d))), var_1.a, u_input.b.yy, vec4<i32>(2147483647i, countOneBits(_wgslsmith_sub_i32(-u_input.d, abs(2147483647i))), _wgslsmith_clamp_i32(1i, -1i, 0i), var_1.c));
}

