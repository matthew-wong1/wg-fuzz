struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(5230i, 39827i), vec2<i32>(22547i, -17932i), vec2<i32>(-17290i, 1i), vec2<i32>(25851i, -91606i), vec2<i32>(-7646i, -82414i), vec2<i32>(2147483647i, 14470i), vec2<i32>(33787i, -49332i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-8065i, 1i), vec2<i32>(-52230i, 2147483647i), vec2<i32>(-1i, 22067i), vec2<i32>(0i, 19241i), vec2<i32>(15037i, 2147483647i));

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-1i, -44862i, 22557i, -5196i), vec4<i32>(-1i, 36383i, i32(-2147483648), i32(-2147483648)), vec4<i32>(21091i, -48079i, i32(-2147483648), -3530i), vec4<i32>(-14684i, 5135i, -28803i, 0i), vec4<i32>(36952i, i32(-2147483648), -8889i, 2147483647i), vec4<i32>(2147483647i, 26898i, -1i, 32271i), vec4<i32>(22825i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-25786i, -1i, -15013i, -1i), vec4<i32>(5464i, i32(-2147483648), -1i, 0i), vec4<i32>(-8507i, -55122i, 40008i, -1i), vec4<i32>(10716i, -1i, 18835i, 0i), vec4<i32>(35607i, -49065i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 1i, -50986i), vec4<i32>(-8743i, 0i, i32(-2147483648), 7006i), vec4<i32>(1i, 0i, 45040i, 1i), vec4<i32>(-1i, 6848i, 2147483647i, 2147483647i), vec4<i32>(14948i, i32(-2147483648), -66560i, 0i), vec4<i32>(-11230i, -21995i, 3471i, i32(-2147483648)), vec4<i32>(2147483647i, 22139i, -6788i, -38172i), vec4<i32>(i32(-2147483648), 92705i, 2147483647i, 311i));

var<private> global2: array<f32, 23>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec2<i32>, 13>();
    global2 = array<f32, 23>();
    var var_0 = !(-_wgslsmith_add_i32(u_input.c, ~1i) > ~u_input.c);
    let var_1 = _wgslsmith_mult_vec3_i32(max(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.b, u_input.c, 5707i)) | ~vec3<i32>(2147483647i, -2147483647i, 1i), -vec3<i32>(u_input.c, 2413i, 2147483647i)), ~(max(vec3<i32>(-17846i, -21698i, -5916i), vec3<i32>(20115i, u_input.b, 1i)) ^ vec3<i32>(-1i, -25555i, u_input.c))), vec3<i32>(-_wgslsmith_div_i32(-u_input.b, u_input.b), _wgslsmith_add_i32(abs(~(-1i)), 16419i), abs(_wgslsmith_mult_i32(3260i, u_input.c)) | u_input.b));
    let var_2 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~countOneBits(35957u), 23u)], global2[_wgslsmith_index_u32(~abs(1u), 23u)])), global2[_wgslsmith_index_u32(~(~firstLeadingBit(4294967295u)), 23u)]));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec2<bool>(all(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, arg_0 != arg_0), vec3<bool>(true, !arg_0, any(vec2<bool>(arg_0, true))))), true);
    let var_2 = _wgslsmith_sub_i32(-countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.c, 2147483647i), global1[_wgslsmith_index_u32(u_input.a, 20u)])), _wgslsmith_div_i32(var_0.a, reverseBits(var_0.a)));
    let var_3 = ~1u;
    global1 = array<vec4<i32>, 20>();
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 37699u, var_3), vec4<u32>(15465u, u_input.a, 0u, u_input.a), vec4<bool>(arg_0, true, false, false)) << (~vec4<u32>(u_input.a, 4294967295u, 25762u, 1u) % vec4<u32>(32u)), ~(~vec4<u32>(var_3, var_3, 0u, u_input.a))), firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, 0u), vec4<u32>(countOneBits(44675u), max(45889u, 18491u), abs(1u), 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3, 23u)]), -141f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, -993f) + -956f)), vec2<bool>(any(!(!vec4<bool>(true, arg_0, arg_0, arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)], -1674f), _wgslsmith_f_op_f32(579f - global2[_wgslsmith_index_u32(u_input.a, 23u)]))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1705f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1469f, global2[_wgslsmith_index_u32(arg_0.a.x, 23u)], -2214f) + vec3<f32>(1849f, -588f, arg_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1362f, arg_0.b, 471f) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], -942f, arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], 1583f, global2[_wgslsmith_index_u32(arg_0.a.x, 23u)])))))))));
    var var_2 = func_4(arg_0.c.x, arg_1);
    global2 = array<f32, 23>();
    var_0 = Struct_2(firstLeadingBit(8603i), var_0.b);
    return Struct_3(true, 488f, ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_2.a.x, 1u, 4294967295u, 40916u), vec4<u32>(22917u, 1u, arg_0.a.x, 17545u)), vec4<u32>(arg_0.a.x, var_2.a.x, 1u, 0u), vec4<u32>(1u, 49330u, u_input.a, 36184u)) ^ (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 67335u, 1u, 4294967295u), vec4<u32>(var_2.a.x, u_input.a, 72265u, var_2.a.x), vec4<u32>(40812u, 0u, 4294967295u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, var_2.a.x), vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, 37409u))) ^ vec4<u32>(var_2.a.x, 0u & var_2.a.x, ~1u, ~0u)), func_4(true, arg_1), select(!(!arg_2.b.x), !all(var_0.b), select(all(vec2<bool>(arg_2.b.x, arg_0.c.x)), all(!vec4<bool>(var_0.b.x, var_2.c.x, var_2.c.x, var_2.c.x)), arg_2.b.x)));
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<i32>, 13>();
    var var_0 = func_5(func_4(func_2(i32(-1i) * -14356i, Struct_1(~vec3<u32>(53025u, u_input.a, 1u), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(66273u, 23u)], 994f)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), -vec3<i32>(u_input.b, 2147483647i, -2147483647i)), Struct_4(~u_input.c)), Struct_4(27157i), Struct_2(i32(-1i) * -34564i, select(vec3<bool>(func_4(true, Struct_4(34265i)).c.x, any(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), vec2<i32>(u_input.c, abs(-3734i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3()).x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1267f, var_0.d.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.d.a.x, 23u)], global2[_wgslsmith_index_u32(var_0.d.a.x, 23u)]) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, -1811f), vec2<f32>(-645f, -445f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(554f, -965f) * vec2<f32>(global2[_wgslsmith_index_u32(var_0.c.x, 23u)], 213f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.b, 953f), vec2<f32>(var_0.d.b, global2[_wgslsmith_index_u32(21892u, 23u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, global2[_wgslsmith_index_u32(u_input.a, 23u)]) + vec2<f32>(global2[_wgslsmith_index_u32(var_0.c.x, 23u)], var_0.d.b)), func_4(var_0.d.c.x, Struct_4(-1i)).c.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1246f, global2[_wgslsmith_index_u32(83197u, 23u)])) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], var_0.d.b), vec2<f32>(616f, var_0.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, 2635f), vec2<f32>(var_0.d.b, global2[_wgslsmith_index_u32(u_input.a, 23u)]))))), !var_0.d.c))));
    var var_3 = Struct_2(-2147483647i, select(!select(vec3<bool>(var_0.e, var_0.e, false), vec3<bool>(false, false, var_0.d.c.x), select(vec3<bool>(true, false, var_0.e), vec3<bool>(false, var_0.a, false), var_0.d.c.x)), select(select(select(vec3<bool>(false, var_0.d.c.x, false), vec3<bool>(true, var_0.e, var_0.d.c.x), vec3<bool>(var_0.d.c.x, var_0.d.c.x, true)), vec3<bool>(true, true, false), vec3<bool>(var_0.e, true, var_0.e)), !(!vec3<bool>(false, var_0.a, var_0.d.c.x)), (-7897i > u_input.c) || var_0.d.c.x), !vec3<bool>(true, var_0.a, all(var_0.d.c))));
    return StorageBuffer(_wgslsmith_div_vec2_i32(-(vec2<i32>(12841i, -49174i) >> ((vec2<u32>(u_input.a, var_0.d.a.x) & vec2<u32>(4294967295u, 20546u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(1i, u_input.c), -52017i)), ~_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(var_0.c, var_0.c)), 20u)], vec4<i32>(var_3.a, var_3.a, u_input.b, -37811i >> (var_0.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

