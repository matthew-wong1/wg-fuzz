struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: array<bool, 24>;

var<private> global1: array<f32, 13>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<bool, 7> = array<bool, 7>(false, true, true, false, false, false, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global2 = select(select(!vec4<bool>(!global4[_wgslsmith_index_u32(u_input.c, 7u)], true, any(global2.wzz), any(global2.zy)), select(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 24u)], false)), !select(vec4<bool>(global4[_wgslsmith_index_u32(10826u, 7u)], true, true, global4[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(78689u, 24u)], global2.x, false, false), false), select(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 7u)], true, global4[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 7u)]), global4[_wgslsmith_index_u32(129246u, 7u)] && false)), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c, 24u)], false))), vec4<bool>(any(!global2.wwx), any(vec3<bool>(select(global4[_wgslsmith_index_u32(34256u, 7u)], false, true), true, !global2.x)), all(!global2.www), global0[_wgslsmith_index_u32(u_input.a, 24u)] | global4[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<bool>(global2.x, true, true, 42939i > _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, 54894i), -24601i)));
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i) >> ((vec3<u32>(u_input.c, 4294967295u, u_input.c) << (vec3<u32>(u_input.c, 7750u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, -95809i, u_input.b.x)), u_input.b.x), vec3<i32>(~u_input.b.x, u_input.b.x, -1i));
    let var_1 = Struct_1(vec3<u32>(~(u_input.c & u_input.a) & 34434u, ~(~(~u_input.c)), abs(~(1u | u_input.c))), ~abs(~vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(0u, 18521u)));
    global2 = !select(vec4<bool>(true, !select(global4[_wgslsmith_index_u32(var_1.a.x, 7u)], global2.x, global0[_wgslsmith_index_u32(1u, 24u)]), true, true), vec4<bool>(global4[_wgslsmith_index_u32(reverseBits(4294967295u), 7u)], false, true, true), vec4<bool>(global2.x, !global4[_wgslsmith_index_u32(1u, 7u)], !global2.x, all(!vec4<bool>(true, global4[_wgslsmith_index_u32(20537u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]))));
    let var_2 = var_1.b;
    return -1836f;
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(49366u, ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, 25799u), u_input.a))), 13u)];
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 13u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(16111u, 24u)])), _wgslsmith_f_op_f32(sign(-150f))) - -1000f)), _wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_4(1i, _wgslsmith_div_u32(~u_input.c, 4294967295u));
    var var_3 = ~vec2<u32>(_wgslsmith_mod_u32(~(var_2.b & 1u), ~1u), ~u_input.c);
    let var_4 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 8722u, 0u, u_input.c)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, var_3.x, 15357u), vec4<u32>(var_3.x, 55494u, var_2.b, var_3.x), vec4<u32>(4294967295u, 71957u, 51396u, u_input.c)) | select(vec4<u32>(14438u, 0u, 30174u, 22362u), vec4<u32>(71756u, 0u, var_3.x, 11978u), vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.b, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global2.x)))), 13u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -224f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1261f)), global1[_wgslsmith_index_u32(~1u, 13u)]))));
    return -1149f;
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    global4 = array<bool, 7>();
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    return reverseBits(abs(min(-2147483647i, 1i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    let var_0 = arg_0.xy;
    global0 = array<bool, 24>();
    global4 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(61136u, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)], 659f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(13799u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), false)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-842f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c & 4294967295u, 13u)] + -418f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) - -1258f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1157f * global1[_wgslsmith_index_u32(60475u, 13u)]) + -337f), -675f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 13u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 13u)] * 196f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -260f)) - vec3<f32>(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 13u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 13u)]))))))));
    let var_2 = u_input.b.x;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_4(vec4<i32>(func_1(firstTrailingBit(u_input.b)), -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(0i, u_input.b.x, 0i, u_input.b.x)), vec4<i32>(u_input.b.x, -2660i, u_input.b.x, u_input.b.x)), max(u_input.b.x & u_input.b.x, 9807i)), true), _wgslsmith_div_i32(func_4(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -42446i), vec4<i32>(u_input.b.x, 49426i, -1i, u_input.b.x))), global4[_wgslsmith_index_u32(~(~u_input.c), 7u)]), ~(~u_input.b.x)));
    var var_1 = Struct_1(abs(vec3<u32>(u_input.a, 1u, ~(12339u >> (u_input.a % 32u)))), _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(u_input.a, 22846u))), vec2<u32>(u_input.c, u_input.c & 4294967295u)));
    var var_2 = firstTrailingBit(abs(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 56113u, 66297u), vec4<u32>(var_1.b.x, u_input.a, var_1.a.x, var_1.a.x)), abs(vec4<u32>(4294967295u, var_1.a.x, 5749u, 1u)))));
    var var_3 = select(select(vec3<bool>(any(select(global2.xz, vec2<bool>(false, global4[_wgslsmith_index_u32(21728u, 7u)]), global0[_wgslsmith_index_u32(u_input.c, 24u)])), all(!global2.yy), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 25138u, var_2.x, u_input.a), vec4<u32>(3999u, var_2.x, u_input.a, 0u)) >= var_2.x), global2.wyz, select(vec3<bool>(false, false, any(vec2<bool>(false, global2.x))), vec3<bool>(false, any(vec4<bool>(false, true, global2.x, global2.x)), true), !select(global4[_wgslsmith_index_u32(0u, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], true))), vec3<bool>(all(!global2.yx), global4[_wgslsmith_index_u32(4294967295u, 7u)], false), any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 24u)], global4[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(!global2.x, false, all(global2.zxy)), -901f > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6407u, 13u)]))));
    let var_4 = Struct_4(-19013i, 105749u);
    let var_5 = vec2<bool>(var_3.x, !global0[_wgslsmith_index_u32(var_4.b, 24u)]);
    var var_6 = ~(~u_input.b.yx);
    let var_7 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(~(~var_4.b), 73563u, ~16875u | ~u_input.c)));
}

