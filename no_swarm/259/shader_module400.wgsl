struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = -u_input.b.xww;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1669f))))));
    global0 = Struct_1(-global0.a << (select(u_input.d, _wgslsmith_sub_u32(4294967295u, 1u), true) % 32u), true);
    let var_2 = true;
    global0 = Struct_1(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c), u_input.b), vec4<i32>(min(-55702i, 1i), global0.a, i32(-1i) * -35887i, 1i & u_input.c)), any(vec3<bool>(true, all(vec3<bool>(true, true, global0.b)), var_2)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-721f, var_1))))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, -905f, 484f, -378f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1013f, 1144f, -1000f, 1000f), vec4<f32>(-1124f, -538f, -1986f, -608f)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.b, true))), -164f, _wgslsmith_f_op_f32(-172f + 1771f), -1000f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1254f, 1f, _wgslsmith_f_op_f32(-295f + 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(642f)))))))));
    let var_2 = vec2<bool>(all(vec4<bool>(true != global0.b, global0.b, true, !(global0.a != var_0))), true);
    let var_3 = !var_2.x & var_2.x;
    let var_4 = u_input.b.yz;
    return Struct_2(Struct_1(reverseBits(_wgslsmith_dot_vec4_i32(max(u_input.b, u_input.b), vec4<i32>(1i, -9694i, var_4.x, -36395i) << (vec4<u32>(u_input.d, 20983u, 0u, 55952u) % vec4<u32>(32u)))), false), max(_wgslsmith_div_vec4_u32(max(~vec4<u32>(1u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.d, 5185u, u_input.d, 0u) >> (vec4<u32>(u_input.d, 1u, u_input.e, 75108u) % vec4<u32>(32u))), vec4<u32>(u_input.d, u_input.e, 1u, u_input.d)), vec4<u32>(_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_div_u32(1u, u_input.d), u_input.d), 0u, 41888u | u_input.d, 11745u)), Struct_1(-1i, !(_wgslsmith_f_op_f32(var_1.x * -790f) < 102f)), Struct_1(_wgslsmith_mod_i32(~163i, -47523i), select(all(var_2), global0.b, var_2.x) && global0.b));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = select(!vec3<bool>(false, true, !any(vec4<bool>(global0.b, arg_1.b, true, true))), !(!vec3<bool>(global0.b | true, all(vec2<bool>(false, arg_1.b)), 384f == arg_0.x)), !vec3<bool>(!(arg_0.x < arg_0.x), false, false));
    let var_1 = func_2(i32(-1i) * -2147483647i);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-446f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), true))), !any(select(vec4<bool>(arg_1.b, true, true, arg_1.b), select(vec4<bool>(false, false, false, var_1.c.b), vec4<bool>(arg_1.b, global0.b, var_1.c.b, false), vec4<bool>(true, true, false, true)), all(vec3<bool>(arg_1.b, var_1.c.b, var_1.d.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f + 750f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f + -1238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(666f - -1315f))) - _wgslsmith_f_op_f32(-1175f + _wgslsmith_f_op_f32(-1000f * 543f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1206f)) * 1f) + -945f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1122f + _wgslsmith_div_f32(180f, -446f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1824f, -287f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))) + _wgslsmith_f_op_f32(ceil(-434f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)) - -879f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-721f)) - _wgslsmith_f_op_f32(func_1(vec4<f32>(-1000f, -263f, 1522f, -221f), Struct_1(-2147483647i, global0.b)))))));
    let var_1 = Struct_3(false, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.b.x), 387i, reverseBits(global0.a), global0.a)), Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, global0.a), select(global0.a, u_input.c, global0.b)), true), min(vec4<u32>(4294967295u, 59227u, 4294967295u, 4294967295u) ^ select(vec4<u32>(27944u, u_input.e, u_input.d, u_input.e), vec4<u32>(u_input.d, 22543u, 105144u, u_input.e), global0.b), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.e, u_input.e), vec4<u32>(u_input.e, 34582u, u_input.e, 0u), vec4<u32>(4294967295u, u_input.e, 1u, 1u)), abs(vec4<u32>(4294967295u, 2073u, u_input.d, u_input.e)), global0.b)), func_2(global0.a).c, Struct_1(u_input.a, true)), Struct_2(Struct_1(_wgslsmith_mod_i32(-1i, -1i), true), vec4<u32>(u_input.e, _wgslsmith_add_u32(u_input.e, 0u), select(0u, 2592u, global0.b), 1u) | ~(~vec4<u32>(22738u, 1u, 0u, u_input.e)), Struct_1(1i, _wgslsmith_f_op_f32(step(var_0.x, 1000f)) > var_0.x), Struct_1(func_2(u_input.b.x).a.a, _wgslsmith_f_op_f32(-var_0.x) < var_0.x)));
    global0 = Struct_1(min(-1i, -_wgslsmith_mult_i32(global0.a, _wgslsmith_mod_i32(global0.a, -1i))), !any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.c.c.b, false, false, true), global0.b), vec4<bool>(var_1.a, false, false, var_1.a), all(vec2<bool>(global0.b, false)))));
    global0 = Struct_1(max(_wgslsmith_mult_i32((1i >> (var_1.d.b.x % 32u)) & var_1.d.a.a, firstLeadingBit(_wgslsmith_sub_i32(65112i, u_input.c))), global0.a), global0.b);
    let var_2 = var_1;
    var var_3 = reverseBits(select(u_input.b.x, var_2.b, any(vec4<bool>(true | global0.b, var_2.d.c.b != true, var_2.d.c.a != 0i, global0.b))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(var_0.yyz)), var_1.c, select(select(!vec4<bool>(false, true, var_2.a, true), select(!vec4<bool>(false, true, global0.b, global0.b), select(vec4<bool>(var_1.a, var_2.c.a.b, var_2.d.d.b, true), vec4<bool>(var_2.d.c.b, false, var_1.a, false), var_1.a), select(vec4<bool>(var_1.a, false, false, false), vec4<bool>(global0.b, true, var_1.d.d.b, false), false)), true), vec4<bool>(var_1.d.c.b, true, all(!vec4<bool>(false, false, var_2.a, var_2.c.c.b)), any(vec3<bool>(var_2.c.a.b, false, false))), any(!vec4<bool>(global0.b, var_1.c.c.b, var_2.a, true))), select(select(select(select(vec4<bool>(var_2.c.c.b, true, false, false), vec4<bool>(true, var_2.a, global0.b, var_1.a), vec4<bool>(var_1.d.a.b, var_2.c.d.b, var_2.a, var_2.d.a.b)), vec4<bool>(var_1.a, true, global0.b, true), var_1.c.a.b), select(select(vec4<bool>(false, var_1.c.d.b, var_2.a, true), vec4<bool>(var_1.a, var_1.c.a.b, true, var_2.d.d.b), vec4<bool>(var_1.d.a.b, var_2.a, global0.b, true)), vec4<bool>(true, var_2.c.a.b, var_1.d.d.b, global0.b), vec4<bool>(true, true, false, true)), select(!vec4<bool>(var_2.c.c.b, global0.b, true, true), !vec4<bool>(global0.b, global0.b, false, var_1.d.a.b), true)), vec4<bool>(true, !select(var_2.c.a.b, global0.b, var_1.d.d.b), !(var_2.c.b.x != 37750u), var_1.d.a.b), select(select(vec4<bool>(false, false, false, var_2.a), !vec4<bool>(global0.b, true, false, var_1.c.d.b), vec4<bool>(true, var_2.a, var_1.d.c.b, var_2.d.a.b)), !(!vec4<bool>(global0.b, false, var_2.a, true)), any(vec2<bool>(true, true)))), true);
    var var_5 = var_2;
    let var_6 = select(vec2<bool>(true, all(vec2<bool>(all(var_4.c.yx), !var_2.c.d.b))), var_4.d.ww, !vec2<bool>(true, var_5.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, var_4.b.d.a, var_2.b, u_input.a) & u_input.b, u_input.b), min(u_input.b & vec4<i32>(-58559i, global0.a, 55273i, var_4.b.a.a), vec4<i32>(var_5.d.c.a, 2147483647i, var_4.b.c.a, var_4.b.a.a))), _wgslsmith_f_op_vec4_f32(-var_0), 1u, _wgslsmith_f_op_f32(func_3(var_4.d.zy)));
}

