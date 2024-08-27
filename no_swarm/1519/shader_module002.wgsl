struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, true, true, true, false, true, true, true, false, true, false, false, false, false, true, true, false, false);

var<private> global2: array<bool, 2> = array<bool, 2>(true, false);

var<private> global3: vec3<i32>;

var<private> global4: array<f32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    global2 = array<bool, 2>();
    global0 = array<i32, 2>();
    global1 = array<bool, 20>();
    global4 = array<f32, 23>();
    global2 = array<bool, 2>();
    return ~_wgslsmith_mod_u32(~abs(u_input.d), _wgslsmith_mult_u32(81182u, (u_input.d ^ 84179u) ^ ~1u));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<bool>(false, arg_1.a.x, true));
    let var_1 = Struct_5(Struct_3(select(vec3<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(6957u, 2u)], false, false)), arg_2), var_0.a, arg_3.x < (u_input.d << (arg_3.x % 32u)))), Struct_1(~global0[_wgslsmith_index_u32(u_input.d, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_3.x, 23u)]) * _wgslsmith_f_op_f32(-arg_0)) > _wgslsmith_f_op_f32(trunc(-1366f)), countOneBits(_wgslsmith_mult_u32(16295u, 24919u)), -1796f, 334f), Struct_2(Struct_1(-_wgslsmith_add_i32(83987i, 6671i), true, u_input.d, -367f, arg_0), _wgslsmith_div_f32(_wgslsmith_div_f32(-126f, 170f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(81984u, 23u)], -165f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_3.x, 23u)]))), global2[_wgslsmith_index_u32(10804u, 2u)]), -1i);
    global1 = array<bool, 20>();
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.yy, countOneBits(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global3.x), vec2<i32>(2147483647i, global3.x))))), global3.xx);
    global4 = array<f32, 23>();
    return var_1.c.a;
}

fn func_1() -> Struct_4 {
    global3 = vec3<i32>(_wgslsmith_add_i32(11235i >> (_wgslsmith_div_u32(~u_input.d, 3776u) % 32u), u_input.e.x ^ (i32(-1i) * -u_input.a.x)), ~1867i, 2615i ^ _wgslsmith_add_i32(max(_wgslsmith_sub_i32(global3.x, -2147483647i), -2147483647i), global0[_wgslsmith_index_u32(~abs(u_input.d), 2u)]));
    var var_0 = func_3(_wgslsmith_f_op_f32(-392f - 1986f), Struct_3(!select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(u_input.d, 20u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(13849u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(false, true, false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 2u)], true)), true)), global2[_wgslsmith_index_u32((~_wgslsmith_mod_u32(u_input.d, u_input.d) >> (~1u % 32u)) | 0u, 2u)], vec3<u32>(_wgslsmith_add_u32(0u, u_input.d & 0u), ~u_input.d, func_2()) | vec3<u32>(103151u, 21429u, u_input.d));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(500f, global4[_wgslsmith_index_u32(u_input.d, 23u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1212f, func_3(582f, Struct_3(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(u_input.d, 2u)] >= -2147483647i, abs(vec3<u32>(var_0.c, u_input.d, var_0.c))).d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-212f, 525f))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-432f, 1390f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2407f + -165f))))), global4[_wgslsmith_index_u32(10958u, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(~50323u, 23u)], var_0.d, all(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 2u)], var_0.b, var_0.b)))) * var_0.e)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(var_0.d, var_2.x), -731f), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_1.x * -1112f))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~59400u), _wgslsmith_div_u32(u_input.d, var_0.c)), vec2<u32>(u_input.d, 24739u)), 2u)], !var_0.b, _wgslsmith_add_i32(~func_3(global4[_wgslsmith_index_u32(4294967295u, 23u)], Struct_3(vec3<bool>(false, false, false)), any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 20u)], global1[_wgslsmith_index_u32(49001u, 20u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(55243u, u_input.d, var_0.c), vec3<u32>(var_0.c, 15789u, var_0.c))).a, _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.b, var_0.a, global0[_wgslsmith_index_u32(76876u, 2u)], -12285i) | vec4<i32>(global0[_wgslsmith_index_u32(var_0.c, 2u)], -6469i, -26096i, 24204i)) & u_input.e, vec4<i32>(var_0.a, min(u_input.b, -34397i), 1i, var_0.a))), Struct_2(Struct_1(func_3(-856f, Struct_3(vec3<bool>(var_0.b, false, global2[_wgslsmith_index_u32(29688u, 2u)])), true, vec3<u32>(u_input.d, 127222u, 79018u)).a, func_3(_wgslsmith_f_op_f32(var_0.e + 363f), Struct_3(vec3<bool>(true, false, true)), var_0.a > global3.x, vec3<u32>(var_0.c, 4294967295u, 12143u)).b, ~_wgslsmith_mod_u32(17951u, 18718u), _wgslsmith_f_op_f32(abs(-823f)), var_0.e), true & any(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.c, 20u)], false, global1[_wgslsmith_index_u32(42347u, 20u)])), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1().e.a;
    let var_2 = Struct_3(!select(select(!vec3<bool>(false, var_0.e.a.b, global1[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(var_0.c, var_0.c, global2[_wgslsmith_index_u32(var_1.c, 2u)]), !vec3<bool>(var_0.b, global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(481u, 20u)])), !vec3<bool>(var_1.b, global1[_wgslsmith_index_u32(40138u, 20u)], var_0.c), global4[_wgslsmith_index_u32(var_1.c & 21150u, 23u)] == _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x))));
    let var_3 = Struct_5(var_2, var_0.e.a, Struct_2(Struct_1(~2147483647i, !global1[_wgslsmith_index_u32(14667u, 20u)] || all(var_2.a.yx), countOneBits(var_1.c >> (var_0.e.a.c % 32u)), _wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(min(-924f, -1303f))), _wgslsmith_f_op_f32(-514f * 536f)), false, !(_wgslsmith_f_op_f32(var_0.e.a.e - -1187f) > func_3(var_1.d, var_2, false, vec3<u32>(29256u, var_0.e.a.c, var_0.e.a.c)).e)), 1i & _wgslsmith_add_i32(_wgslsmith_add_i32(~global3.x, 7034i), 2096i));
    var var_4 = func_1().e.a;
    var var_5 = vec4<f32>(159f, -960f, _wgslsmith_f_op_f32(-var_3.c.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_4.c, 2u)], 2147483647i), vec3<u32>(0u, 4294967295u, var_4.c));
}

