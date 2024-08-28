struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(global0[_wgslsmith_index_u32(~arg_0, 24u)], reverseBits(u_input.c.x >> (_wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, 51128u, 13850u)) % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    let var_0 = true;
    global1 = 44532u;
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.b.x, 16931u, u_input.b.x, 518u), vec4<u32>(38465u, u_input.b.x, u_input.b.x, 13674u), vec4<bool>(true, var_0, true, var_0)), min(reverseBits(u_input.b), u_input.b))) << (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, _wgslsmith_mult_u32(reverseBits(0u), u_input.b.x), ~(~48508u))) % vec4<u32>(32u));
    global1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.x >> (countOneBits(_wgslsmith_clamp_u32(var_2.x, u_input.a.x, 4294967295u)) % 32u), var_2.x), ~(~(~_wgslsmith_div_u32(0u, u_input.a.x))));
    return Struct_3(arg_2, Struct_2(1i, Struct_1(590f, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, u_input.c.x, arg_2.b.b, arg_0.b), vec4<i32>(arg_3.b.b, arg_2.a, 2147483647i, 0i), vec4<bool>(true, var_0, false, var_0)), countOneBits(vec4<i32>(u_input.c.x, arg_2.a, -1i, arg_0.b))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = func_3(arg_1.b.b, func_3(func_2(min(arg_0.x, 0u) ^ _wgslsmith_add_u32(arg_0.x, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.b.b.a)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 24u)]))), func_2(4294967295u).b & -2147483647i), arg_1.a, func_3(func_3(arg_1.b.b, func_2(u_input.b.x), func_3(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], -32642i), Struct_1(1955f, arg_1.a.b.b), arg_1.b, Struct_2(arg_1.b.a, Struct_1(456f, arg_1.b.b.b))).b, Struct_2(arg_1.b.b.b, Struct_1(440f, u_input.c.x))).a.b, func_2(_wgslsmith_add_u32(arg_0.x, u_input.a.x)), func_3(Struct_1(arg_1.b.b.a, -9078i), Struct_1(1000f, arg_1.b.a), arg_1.a, func_3(Struct_1(arg_1.a.b.a, u_input.c.x), Struct_1(833f, arg_1.b.b.b), Struct_2(-2147483647i, arg_1.b.b), Struct_2(-1i, arg_1.b.b)).a).b, Struct_2(1i, Struct_1(-333f, 1i))).a).b.b, Struct_2(-arg_1.a.b.b, func_2(~u_input.b.x)), Struct_2(15097i, arg_1.b.b)).a;
    var var_1 = firstLeadingBit(arg_0.x);
    var var_2 = 1081f;
    let var_3 = var_0.b;
    var var_4 = vec2<u32>(~u_input.b.x, ~(~abs(abs(1u))));
    return !vec3<bool>(!any(vec4<bool>(true, true, true, true)), true & any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), true)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global1 = u_input.b.x;
    let var_0 = !func_4(u_input.b, func_3(func_2(1u), arg_3, Struct_2(u_input.c.x ^ 9861i, Struct_1(-548f, arg_3.b)), Struct_2(arg_3.b, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_0.b))));
    global0 = array<f32, 24>();
    var var_1 = arg_2;
    let var_2 = var_0.yz;
    return _wgslsmith_add_i32(_wgslsmith_div_i32(-(func_2(u_input.b.x).b ^ _wgslsmith_div_i32(u_input.c.x, -1148i)), ~16174i), -25509i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~39440u;
    let var_0 = !(!select(48561i <= func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.c.x), false, Struct_2(u_input.c.x, Struct_1(1000f, 0i)), Struct_1(675f, -1i)), !any(vec2<bool>(true, true)), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(1u, 24u)])), !(!(!var_0)))), 1i);
    var var_2 = select(vec2<bool>(var_0, true), vec2<bool>(var_0, !(abs(var_1.b) != 1i)), !select(func_4(~u_input.b, Struct_3(Struct_2(2147483647i, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 0i)), Struct_2(u_input.c.x, var_1))).yy, !(!vec2<bool>(var_0, var_0)), true));
    var var_3 = Struct_4(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, true, true, true)), !vec4<bool>(var_0, true, var_0, var_0), var_2.x), !vec4<bool>(103f != var_1.a, func_4(vec4<u32>(57759u, u_input.a.x, u_input.a.x, 0u), Struct_3(Struct_2(var_1.b, var_1), Struct_2(u_input.c.x, Struct_1(-194f, 2147483647i)))).x, var_0, any(vec4<bool>(false, var_0, true, var_2.x))), all(!vec2<bool>(var_0, false))), 1u, u_input.c);
    var var_4 = func_4(u_input.b, func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_3.b, 24u)]))), u_input.c.x), func_2(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33290u, var_3.b, 1u), u_input.b))), func_3(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 32117u), 24u)], 1i), var_1, func_3(Struct_1(351f, 2147483647i), Struct_1(-284f, u_input.c.x), func_3(Struct_1(var_1.a, var_1.b), Struct_1(-180f, 418i), Struct_2(var_3.c.x, Struct_1(126f, -1718i)), Struct_2(-14771i, var_1)).b, Struct_2(var_3.c.x, var_1)).a, func_3(func_2(u_input.a.x), func_2(u_input.a.x), Struct_2(var_3.c.x, var_1), func_3(Struct_1(-913f, var_3.c.x), Struct_1(640f, -2147483647i), Struct_2(u_input.c.x, Struct_1(-354f, var_1.b)), Struct_2(var_3.c.x, Struct_1(-135f, -2147483647i))).a).b).a, Struct_2(var_3.c.x, func_2(_wgslsmith_mult_u32(var_3.b, 4294967295u)))));
    var var_5 = func_3(Struct_1(var_1.a, max(func_2(firstTrailingBit(var_3.b)).b, var_3.c.x)), var_1, func_3(func_2(~u_input.a.x), var_1, Struct_2(-var_3.c.x, func_3(var_1, func_3(var_1, Struct_1(global0[_wgslsmith_index_u32(var_3.b, 24u)], -24886i), Struct_2(-2147483647i, Struct_1(267f, 0i)), Struct_2(var_3.c.x, var_1)).b.b, func_3(var_1, var_1, Struct_2(var_1.b, Struct_1(global0[_wgslsmith_index_u32(28222u, 24u)], -7265i)), Struct_2(62641i, var_1)).b, func_3(Struct_1(var_1.a, -11334i), var_1, Struct_2(u_input.c.x, var_1), Struct_2(1i, Struct_1(-714f, var_3.c.x))).a).b.b), Struct_2(~(i32(-1i) * -12757i), Struct_1(_wgslsmith_f_op_f32(-550f - var_1.a), 1227i))).a, Struct_2(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.c.yz), ~vec2<i32>(-3735i, var_1.b)), 25804i, max(u_input.c.x >> (22069u % 32u), 2147483647i)), Struct_1(1000f, -_wgslsmith_div_i32(-40957i, u_input.c.x)))).a;
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(~var_3.b).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1977f), var_1.a, !var_2.x)))) - -533f), _wgslsmith_mult_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(var_3.c.zy, firstLeadingBit(firstTrailingBit(u_input.c.xx)))), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, select(_wgslsmith_clamp_vec4_u32(vec4<u32>(8290u, u_input.a.x, 23423u, var_3.b), u_input.b, vec4<u32>(22940u, 119806u, 50776u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), u_input.b), var_3.a.x)), 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(var_3.b, 24u)], -1438f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(689f, 1852f, -249f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, var_5.b.a, -912f, var_1.a))))))));
}

