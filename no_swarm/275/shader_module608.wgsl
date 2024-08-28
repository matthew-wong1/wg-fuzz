struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-1i, 0i), vec2<i32>(-32344i, -15909i), vec2<i32>(2147483647i, -3246i), vec2<i32>(-1i, -26324i), vec2<i32>(0i, 19265i), vec2<i32>(51860i, 19529i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 35156i), vec2<i32>(16067i, -70049i), vec2<i32>(-53301i, 2485i), vec2<i32>(0i, 1i), vec2<i32>(-13054i, i32(-2147483648)), vec2<i32>(1i, 2537i), vec2<i32>(-12957i, -49023i), vec2<i32>(-15339i, 0i), vec2<i32>(-63589i, 0i), vec2<i32>(-11550i, 4877i), vec2<i32>(7848i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(false, Struct_2(true, vec3<bool>(true, false, false)), vec2<bool>(false, true)), Struct_3(false, Struct_2(false, vec3<bool>(true, false, true)), vec2<bool>(true, false)), Struct_3(false, Struct_2(false, vec3<bool>(false, true, true)), vec2<bool>(false, true)), Struct_3(true, Struct_2(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), Struct_3(true, Struct_2(true, vec3<bool>(true, false, true)), vec2<bool>(true, true)), Struct_3(false, Struct_2(false, vec3<bool>(true, false, false)), vec2<bool>(false, true)), Struct_3(true, Struct_2(true, vec3<bool>(true, false, false)), vec2<bool>(false, false)), Struct_3(false, Struct_2(true, vec3<bool>(false, true, false)), vec2<bool>(true, false)), Struct_3(true, Struct_2(false, vec3<bool>(true, false, false)), vec2<bool>(false, true)), Struct_3(false, Struct_2(false, vec3<bool>(true, true, true)), vec2<bool>(true, true)), Struct_3(true, Struct_2(false, vec3<bool>(false, false, false)), vec2<bool>(false, false)), Struct_3(true, Struct_2(true, vec3<bool>(false, true, false)), vec2<bool>(true, true)), Struct_3(true, Struct_2(true, vec3<bool>(true, false, true)), vec2<bool>(false, true)), Struct_3(true, Struct_2(false, vec3<bool>(true, true, false)), vec2<bool>(false, false)), Struct_3(true, Struct_2(false, vec3<bool>(false, true, false)), vec2<bool>(false, true)), Struct_3(true, Struct_2(true, vec3<bool>(true, true, true)), vec2<bool>(true, true)), Struct_3(true, Struct_2(true, vec3<bool>(false, true, true)), vec2<bool>(true, true)), Struct_3(false, Struct_2(true, vec3<bool>(false, false, false)), vec2<bool>(true, false)), Struct_3(false, Struct_2(true, vec3<bool>(true, true, false)), vec2<bool>(false, false)), Struct_3(false, Struct_2(false, vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_3(true, Struct_2(false, vec3<bool>(false, false, true)), vec2<bool>(true, false)), Struct_3(false, Struct_2(true, vec3<bool>(false, false, false)), vec2<bool>(true, true)), Struct_3(true, Struct_2(true, vec3<bool>(true, false, false)), vec2<bool>(false, false)), Struct_3(true, Struct_2(false, vec3<bool>(false, true, true)), vec2<bool>(true, false)));

var<private> global3: array<f32, 9> = array<f32, 9>(-149f, -1702f, 1559f, 1000f, 584f, -1102f, -236f, 256f, -563f);

var<private> global4: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec3<i32> {
    global1 = array<vec2<i32>, 19>();
    let var_0 = u_input.d.x;
    var var_1 = !arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(1137f - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4594u ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 9727u, u_input.c.x, u_input.a), vec4<u32>(72388u, u_input.c.x, 4294967295u, u_input.a), false), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u) ^ vec4<u32>(1u, 1u, 25558u, 91386u)), 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]));
    let var_3 = ~_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.c.x, 0u, 44922u, u_input.a), reverseBits(vec4<u32>(1u, 50217u, 14468u, 0u))), firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(1u, 4294967295u, 0u, 14683u))));
    return -(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(46486i, u_input.b, var_0)) & vec3<i32>(u_input.b, 15032i, 8088i), -max(vec3<i32>(43356i, -2147483647i, 10646i), vec3<i32>(25594i, 57227i, arg_0.b))));
}

fn func_2(arg_0: bool) -> Struct_4 {
    global2 = array<Struct_3, 24>();
    var var_0 = !((_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.a, 9u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(41553u, 9u)] - global3[_wgslsmith_index_u32(u_input.a, 9u)]))) | arg_0);
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(1u, 9u)], u_input.d.x, vec4<u32>(~(~_wgslsmith_div_u32(u_input.c.x, u_input.a)), u_input.c.x, abs(9925u), _wgslsmith_clamp_u32(u_input.c.x, ~(u_input.c.x << (45356u % 32u)), reverseBits(u_input.c.x >> (u_input.a % 32u)))), abs(~(vec3<i32>(-31050i, 2147483647i, -1i) & vec3<i32>(-1i, -1i, u_input.b))));
    let var_2 = -(~select(u_input.e, u_input.b, arg_0) << (countOneBits(~0u) % 32u));
    let var_3 = Struct_5(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a) >> (103506u % 32u), 9u)], -8509i ^ _wgslsmith_sub_i32(-(var_1.d.x << (34174u % 32u)), _wgslsmith_mod_i32(-39381i, var_2)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(70365u, 15719u, 1u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(17284u, u_input.c.x, 0u, var_1.c.x), vec4<u32>(0u, 85538u, 0u, var_1.c.x)), firstLeadingBit(~1u), u_input.a, var_1.c.x), -firstLeadingBit(min(func_3(Struct_4(global4.b.a, var_1.d.x), Struct_2(global4.a, vec3<bool>(true, false, arg_0))), vec3<i32>(var_2, u_input.b, -23723i))));
    return Struct_4(global4.b.b.x, 0i);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = func_2(!(!(u_input.b == 0i)) & any(vec4<bool>(arg_0.x & false, arg_1.b.x && true, true, arg_2.a)));
    var var_1 = Struct_2(!(arg_1.b.x || false), vec3<bool>(!all(!arg_1.b.zz), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_1.b.x, arg_1.a, false), arg_1.b.x)), false));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(81866u, 9u)])) * _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(10157u, 9u)], global3[_wgslsmith_index_u32(42437u, 9u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 750u), 9u)]), -645f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(813f, global3[_wgslsmith_index_u32(u_input.c.x, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<f32>(324f, global3[_wgslsmith_index_u32(u_input.a, 9u)], -2120f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], -955f) - vec3<f32>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(6251u, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1482f, global3[_wgslsmith_index_u32(36479u, 9u)], global3[_wgslsmith_index_u32(8984u, 9u)]))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(15077u, 9u)])), arg_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1592f, global3[_wgslsmith_index_u32(4294967295u, 9u)], 200f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1258f, 1213f, global3[_wgslsmith_index_u32(23694u, 9u)]), vec3<f32>(global3[_wgslsmith_index_u32(24019u, 9u)], -1691f, 457f), arg_0))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(step(-2181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x))) > var_2.x, vec3<bool>(any(!select(vec2<bool>(true, arg_1.a), vec2<bool>(var_1.a, true), arg_0.xz)), var_0.a, true));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return vec2<bool>(func_2(_wgslsmith_mult_i32(arg_2.b, var_0.b) == 2147483647i).a != false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 9u)]) * _wgslsmith_f_op_f32(f32(-1f) * -472f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global3[_wgslsmith_index_u32(u_input.a, 9u)]))) + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c.yx), 9u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 9u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = -vec2<i32>(u_input.b | (reverseBits(u_input.b) >> (4294967295u % 32u)), i32(-1i) * -4846i);
    global4 = arg_0;
    var var_1 = arg_0.b;
    let var_2 = firstTrailingBit(vec4<u32>(94805u, 11364u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a & u_input.c.x, 3639u), ~u_input.a), u_input.c.x));
    var var_3 = vec3<u32>(u_input.c.x, reverseBits(~5750u), _wgslsmith_sub_u32(u_input.a, ~0u));
    return Struct_1(!(!arg_1.x & false), ~(~(~var_3.xy)), !arg_0.c, var_2.x, false & arg_2);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a ^ arg_1, arg_1 >> (0u % 32u), _wgslsmith_add_u32(69985u, 0u)), ~vec3<u32>(33690u ^ u_input.a, 4294967295u, arg_1)));
    global4 = Struct_3(global4.a, global4.b, global4.b.b.yx);
    global4 = Struct_3(arg_3.c.x | select(-235f >= _wgslsmith_f_op_f32(arg_2 * -1639f), arg_3.a, false), Struct_2(true, select(global4.b.b, vec3<bool>(true, !global4.a, func_1(global4.b.b, Struct_2(false, vec3<bool>(arg_3.c.x, global4.c.x, arg_3.c.x)), Struct_4(arg_3.a, u_input.e)).x), !global4.b.b)), vec2<bool>(arg_3.c.x, any(select(arg_3.c, func_4(global2[_wgslsmith_index_u32(arg_3.d, 24u)], vec2<bool>(true, false), false, u_input.b).c, func_1(vec3<bool>(false, false, false), global4.b, Struct_4(global4.b.a, arg_0))))));
    global0 = true;
    global3 = array<f32, 9>();
    return StorageBuffer(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1820f, global3[_wgslsmith_index_u32(1u, 9u)]), -1038f)) - global3[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(1u, 24u)], global4.c, global4.b.a, arg_0).b.x >> ((10969u ^ u_input.c.x) % 32u), 9u)])), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(~u_input.c, ~vec3<u32>(112582u, arg_1, 1u)), ~(~select(var_0, u_input.c, false))), firstLeadingBit(_wgslsmith_mult_u32((arg_1 >> (arg_3.b.x % 32u)) | 1u, _wgslsmith_sub_u32(~33568u, 1u))), vec2<i32>(_wgslsmith_clamp_i32(arg_0, u_input.d.x, -2147483647i), 51552i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(618f, -1136f)), _wgslsmith_div_f32(-1074f, 601f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 9u)] * -811f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(122808u, 9u)] + global3[_wgslsmith_index_u32(u_input.a, 9u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, false), 9u)] * 115f) * global3[_wgslsmith_index_u32(u_input.a, 9u)])), _wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1u), 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(2832u, 9u)] - _wgslsmith_f_op_f32(select(106f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85904u, u_input.a), u_input.c.xx), 9u)], !global4.a)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(1942f, 1451f))));
    let var_1 = global4.b;
    global2 = array<Struct_3, 24>();
    let var_2 = !vec4<bool>(true, !(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 9u)])) >= 1448f), all(var_1.b), var_1.b.x);
    global0 = !global4.b.b.x;
    let x = u_input.a;
    s_output = func_5(~(-(~2147483647i)), 71939u, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 9u)]), func_4(Struct_3(global4.b.a, global4.b, select(global4.c, func_1(global4.b.b, Struct_2(var_2.x, global4.b.b), Struct_4(var_1.b.x, u_input.e)), vec2<bool>(true, var_2.x))), vec2<bool>(true, true), global4.b.b.x, -u_input.b));
}

