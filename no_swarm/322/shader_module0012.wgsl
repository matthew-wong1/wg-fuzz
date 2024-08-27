struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: u32 = 1u;

var<private> global2: u32;

var<private> global3: array<f32, 1> = array<f32, 1>(997f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec3<i32>(arg_0.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(28814u, 23u)], u_input.b)), vec3<i32>(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 23u)])));
    global2 = _wgslsmith_sub_u32(u_input.c, u_input.c);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), global3[_wgslsmith_index_u32(firstLeadingBit(arg_0.e), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1061f, -891f)), arg_0.a));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(!(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) && (select(false, true, true) & false)));
    var var_1 = Struct_4(Struct_1(!(!(false & var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(global3[_wgslsmith_index_u32(18691u, 1u)], u_input.d, vec2<i32>(-4075i, -91564i), Struct_1(var_0.a), 7677u)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(global3[_wgslsmith_index_u32(4294967295u, 1u)], -6488i, u_input.b.zx, var_0, u_input.c)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(11052u & arg_0.x, 1u)]), -475f, global3[_wgslsmith_index_u32(arg_0.x, 1u)])));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 21225u), arg_0.x, ~86717u), ~1u), abs(reverseBits(reverseBits(arg_0.x)))), vec3<u32>(~u_input.c, ~u_input.c, u_input.c) | ~arg_0.zwy);
    var var_3 = var_1.a;
    global3 = array<f32, 1>();
    return Struct_1(true);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    let var_0 = !(u_input.b.x <= (1i & arg_2.c));
    var var_1 = arg_2;
    var var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(true, select(arg_1.a.a, false, true)), true));
    let var_3 = arg_1.b.yz;
    var var_4 = Struct_3(Struct_1(select(false, var_1.a.a, !(arg_2.a.a & arg_1.a.a))), -u_input.b.x ^ -24762i, 1i);
    return arg_2;
}

fn func_1(arg_0: bool) -> bool {
    global3 = array<f32, 1>();
    var var_0 = vec2<u32>(~u_input.c, u_input.c);
    let var_1 = func_4(~min(-(~vec2<i32>(u_input.b.x, u_input.a.x)), select(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a, vec2<bool>(arg_0, true)) | vec2<i32>(u_input.a.x, -3540i)), Struct_4(func_2(vec4<u32>(4294967295u, u_input.c, u_input.c, 60111u) | ~vec4<u32>(var_0.x, 40927u, var_0.x, 46122u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1199f, global3[_wgslsmith_index_u32(1u, 1u)], 1000f, global3[_wgslsmith_index_u32(4294967295u, 1u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, -366f, -676f, 1519f)))))), Struct_3(func_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.c, 11258u), vec4<u32>(var_0.x, 13584u, var_0.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 27801u, 1u, 1u), vec4<u32>(var_0.x, 45226u, 26345u, 1u)), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0))), u_input.d, u_input.a.x));
    global1 = ~countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 0u, u_input.c, u_input.c) >> (~vec4<u32>(35238u, 5275u, 33400u, 34015u) % vec4<u32>(32u)), select(vec4<u32>(11573u, 0u, 10505u, 37299u), ~vec4<u32>(34095u, 0u, 4294967295u, var_0.x), any(vec2<bool>(false, true)))));
    global0 = array<vec3<i32>, 23>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(true, false, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -10984i, u_input.a.x, u_input.b.x), vec4<i32>(1i, -1i, u_input.b.x, u_input.d)) == (0i ^ u_input.b.x)), vec3<bool>(func_1(true), false, func_4(u_input.a, Struct_4(Struct_1(false), vec4<f32>(852f, global3[_wgslsmith_index_u32(u_input.c, 1u)], 2206f, global3[_wgslsmith_index_u32(u_input.c, 1u)])), Struct_3(Struct_1(false), u_input.a.x, -13632i)).a.a | func_1(any(vec2<bool>(true, false)))), select(!vec3<bool>(false, select(false, true, false), func_4(vec2<i32>(u_input.a.x, -1i), Struct_4(Struct_1(false), vec4<f32>(global3[_wgslsmith_index_u32(19869u, 1u)], global3[_wgslsmith_index_u32(u_input.c, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)])), Struct_3(Struct_1(false), -1i, u_input.b.x)).a.a), vec3<bool>(true, true, true), all(vec2<bool>(true, true))));
    global3 = array<f32, 1>();
    global0 = array<vec3<i32>, 23>();
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c), 1u)], i32(-1i) * -2147483647i, u_input.b.yz, Struct_1(true), ~4294967295u))).zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-794f, 406f)))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_5(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1755f + 1815f)), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.d, 35164i, 2147483647i))), abs(~vec2<i32>(-2147483647i, u_input.d)), func_2(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 1u, 36644u))), reverseBits(4294967295u)))).yz);
    let var_3 = ~u_input.c;
    global3 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

