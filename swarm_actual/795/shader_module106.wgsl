struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a.x, -10392i), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.c.b.x, arg_3.a.c.x, 42935u, 1u), vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(1u, 2u)], 1u, global0[_wgslsmith_index_u32(93394u, 2u)]))), arg_3.b.b, true, -48205i), Struct_1(arg_3.c.e, _wgslsmith_add_vec4_u32(arg_3.b.b, firstLeadingBit(vec4<u32>(9080u, 4294967295u, global0[_wgslsmith_index_u32(31665u, 2u)], arg_3.c.b.x))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_3.a.c.x), arg_3.a.c, vec4<bool>(arg_3.b.d, arg_1, true, true)), arg_3.a.c), true, ~countOneBits(arg_3.d.x)), arg_3.c, vec4<i32>(-40200i, _wgslsmith_dot_vec4_i32(max(arg_3.d, vec4<i32>(arg_3.d.x, -2056i, 2147483647i, -18368i) & vec4<i32>(45357i, 30758i, 2147483647i, 16511i)), arg_3.d), arg_3.b.e, 4504i | u_input.b));
    let var_1 = arg_0.wyw;
    var var_2 = var_0;
    let var_3 = -arg_3.d;
    global0 = array<u32, 2>();
    return u_input.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = -360f;
    var var_1 = arg_0.b >> (~(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 79116u, 31528u), arg_0.b), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(31164u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), func_3(vec4<f32>(-359f, 1032f, -1000f, 1340f), arg_2.x, -1462f, Struct_2(Struct_1(2147483647i, arg_0.b, vec4<u32>(arg_1.x, 34107u, global0[_wgslsmith_index_u32(u_input.e, 2u)], 0u), arg_0.d, u_input.a.x), Struct_1(2147483647i, vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(arg_0.b.x, 2u)], arg_1.x, arg_0.b.x), arg_0.c, false, 37470i), arg_0, vec4<i32>(-12537i, 14669i, 5041i, arg_0.e)))) >> (~(~vec4<u32>(arg_0.b.x, 60973u, arg_1.x, arg_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = Struct_2(arg_0, arg_0, arg_0, ~(-(_wgslsmith_mod_vec4_i32(vec4<i32>(-27842i, u_input.a.x, -1i, arg_0.a), vec4<i32>(1i, arg_0.e, arg_0.e, u_input.b)) ^ vec4<i32>(21910i, -1i, 44333i, u_input.c))));
    let var_3 = var_2;
    global0 = array<u32, 2>();
    return ~13557u;
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = Struct_1(arg_1, vec4<u32>(~_wgslsmith_div_u32(u_input.d.x, global0[_wgslsmith_index_u32(30914u, 2u)]) << (~6451u % 32u), 4294967295u, 0u, ~_wgslsmith_sub_u32(func_2(Struct_1(arg_1, vec4<u32>(u_input.e, 9342u, global0[_wgslsmith_index_u32(u_input.e, 2u)], 50350u), vec4<u32>(10458u, 0u, 0u, u_input.e), false, u_input.a.x), vec2<u32>(u_input.e, u_input.d.x), vec4<bool>(false, false, arg_0, true)), 8543u)), vec4<u32>(u_input.e, u_input.e << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 38207u, 1u), vec4<u32>(1u, 13241u, u_input.d.x, 4294967295u)) % 32u), 13470u >> (1u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d.x, ~select(4294967295u, global0[_wgslsmith_index_u32(31311u, 2u)], false)), 2u)]), true, arg_1 >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, global0[_wgslsmith_index_u32(16514u, 2u)], 23899u), vec4<u32>(1u, 0u, 17678u, u_input.d.x) & vec4<u32>(4294967295u, 1u, 72250u, 130u)), ~global0[_wgslsmith_index_u32(23048u, 2u)]) % 32u));
    var var_1 = 11764i;
    var var_2 = Struct_1(arg_1, _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(var_0.b.x, 2u)], u_input.d.x, 0u), ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.e, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], 27946u, global0[_wgslsmith_index_u32(var_0.c.x, 2u)])) << (min(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 2u)], 2u)], 65035u, u_input.d.x), vec4<u32>(global0[_wgslsmith_index_u32(var_0.b.x, 2u)], 0u, u_input.e, u_input.e)) % vec4<u32>(32u)), select(select(select(vec4<u32>(18425u, 67026u, 4294967295u, var_0.b.x), var_0.c, arg_0), vec4<u32>(27205u, u_input.e, 95871u, 39649u), arg_0), ~var_0.b, all(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(var_0.d, arg_0))))), vec4<u32>(~var_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, var_0.b.x, 30040u, 4294967295u), vec4<u32>(1u, var_0.c.x, u_input.d.x, 1u)), vec4<u32>(global0[_wgslsmith_index_u32(var_0.b.x, 2u)], 27788u, u_input.e, 35453u)), ~u_input.e << (max(0u, 25953u) % 32u), ~var_0.c.x) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, abs(1u)), ~(~global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), ~firstLeadingBit(27549u), 0u) % vec4<u32>(32u)), all(select(!vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, var_0.d, var_0.d, true), true)) & true, arg_1);
    var_1 = -(~firstTrailingBit(-4631i));
    let var_3 = _wgslsmith_f_op_f32(sign(-810f));
    return firstLeadingBit(~(-27264i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.b), abs(vec3<i32>(u_input.a.x, u_input.b, -17303i))) == _wgslsmith_clamp_i32(func_1(false, u_input.c), ~(-57367i), ~u_input.a.x)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1825f, -2051f), vec2<f32>(-818f, -254f))), vec2<f32>(1000f, -1084f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(336f, -573f))) + vec2<f32>(_wgslsmith_f_op_f32(130f * 845f), -234f))));
    var var_2 = _wgslsmith_div_u32(u_input.e, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~10002u, 2u)] >> (global0[_wgslsmith_index_u32(90311u, 2u)] % 32u), 2u)]);
    global0 = array<u32, 2>();
    let var_3 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(reverseBits(u_input.e), func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x))), any(var_0.yx), _wgslsmith_f_op_f32(max(1664f, var_1.x)), Struct_2(Struct_1(-2147483647i, vec4<u32>(var_3, u_input.d.x, 2804u, 4294967295u), vec4<u32>(34803u, 2301u, 4294967295u, global0[_wgslsmith_index_u32(var_3, 2u)]), var_0.x, u_input.a.x), Struct_1(7439i, vec4<u32>(var_3, 39737u, 4294967295u, 81677u), vec4<u32>(4294967295u, 70554u, global0[_wgslsmith_index_u32(var_3, 2u)], 1u), var_0.x, 2147483647i), Struct_1(18137i, vec4<u32>(global0[_wgslsmith_index_u32(21885u, 2u)], 0u, global0[_wgslsmith_index_u32(u_input.e, 2u)], 0u), vec4<u32>(34815u, var_3, var_3, var_3), true, u_input.a.x), vec4<i32>(u_input.a.x, 13554i, u_input.a.x, -13914i))))), u_input.b);
}

