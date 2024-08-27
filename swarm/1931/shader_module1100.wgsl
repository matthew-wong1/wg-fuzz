struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(1322f, 825f, 1000f, 1054f), vec4<f32>(-1000f, -125f, 1204f, 523f));

var<private> global1: f32;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global3: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 1u), vec2<u32>(8725u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 33137u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 14886u), vec2<u32>(21775u, 1u), vec2<u32>(0u, 0u), vec2<u32>(95343u, 0u), vec2<u32>(4294967295u, 76693u), vec2<u32>(80719u, 88226u), vec2<u32>(4294967295u, 3187u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_3(vec4<i32>(select(-53928i, -47015i, true) ^ ~_wgslsmith_add_i32(68511i, 1i), -select(-506i, 2147483647i, true), 1i, ~countOneBits(_wgslsmith_mult_i32(13517i, -21329i))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2.x, 24472u) ^ vec2<u32>(11954u, u_input.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u), global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), ~1u << (_wgslsmith_sub_u32(u_input.a.x, global2.x) % 32u)), firstTrailingBit(vec3<u32>(~4294967295u, global2.x & 1u, global2.x))), !select(true, false, true), !(!vec2<bool>(true, arg_0 <= -617f)));
    var var_1 = _wgslsmith_add_i32(1i, var_0.a.x);
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1990f * -1207f))), -352f));
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, -58281i, -33304i)), reverseBits(-1i), abs(12753i), var_0.a.x), max(-(var_0.a << (vec4<u32>(4294967295u, global2.x, 4294967295u, 19857u) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_i32(var_0.a, var_0.a))), vec3<u32>(global2.x, 96962u, var_0.b.x), any(var_0.d), vec2<bool>(var_0.c, all(select(select(var_0.d, var_0.d, var_0.d), var_0.d, all(vec3<bool>(var_0.d.x, false, false))))));
    var var_3 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~var_0.b.x, ~1u, 4294967295u), vec3<u32>(1u, ~u_input.a.x >> (var_0.b.x % 32u), 0u));
    return 47036u;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = arg_1;
    var var_2 = 74831u;
    let var_3 = ~1i;
    var_1 = Struct_1(var_1.a, 14787u << (func_3(var_1.c.x) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-168f, var_1.c.x, 1000f, -480f), arg_1.c) + vec4<f32>(arg_1.c.x, -892f, 1550f, arg_1.c.x))) * _wgslsmith_f_op_vec4_f32(-arg_1.c)), select(arg_1.d, select(select(select(var_1.d, arg_1.d, true), var_1.d, vec4<bool>(arg_0, false, arg_1.d.x, arg_1.d.x)), select(var_1.d, !arg_1.d, all(arg_1.d.xz)), !var_1.d), !(!(!var_1.d))));
    return ~(~4294967295u);
}

fn func_1() -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 2u)];
    global2 = vec3<u32>(select(_wgslsmith_div_u32(u_input.a.x, 1u), 1u, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) != var_0.x), global2.x, countOneBits(~func_2(true, Struct_1(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), 56535u, vec4<f32>(853f, 1000f, var_0.x, 1000f), vec4<bool>(false, true, false, true)))));
    var var_1 = true;
    return vec4<i32>(reverseBits(~(~29059i)), abs(-2147483647i), 1i, _wgslsmith_sub_i32(~19220i, -firstTrailingBit(2147483647i) >> (29433u % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = -125f;
    global0 = array<vec4<f32>, 2>();
    var var_1 = Struct_2(vec2<bool>(true, all(select(arg_2.b.d, arg_2.c.d, vec4<bool>(arg_2.b.d.x, false, false, true))) & (_wgslsmith_div_i32(-19054i, arg_1.x) != -arg_1.x)), arg_2.b, arg_2.b);
    global1 = _wgslsmith_f_op_f32(ceil(189f));
    var var_2 = Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 0i, 26806i, arg_1.x), func_1()), arg_1), 2147483647i, ~(-arg_1.x), ~countOneBits(arg_1.x | -2147483647i)), arg_2.c.a.wxw, arg_2.b.d.x, !arg_2.a);
    return arg_2.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, global2.x << (1u % 32u)), global2.x, ~u_input.a.x >> (1u % 32u), ~(~4294967295u)), ~(func_1() ^ vec4<i32>(-94136i, 1i, -1i, 17024i)), Struct_2(vec2<bool>(select(true, false, false), all(vec4<bool>(false, false, false, true))), Struct_1(vec4<u32>(4294967295u, 38238u, global2.x, global2.x), global2.x, global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], vec4<bool>(false, true, false, true)), Struct_1(reverseBits(vec4<u32>(1u, 52464u, 43456u, global2.x)), _wgslsmith_add_u32(global2.x, global2.x), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(0u, 2u)] - vec4<f32>(-987f, -1533f, 1455f, 459f)), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(round(701f)));
    let var_1 = -(~_wgslsmith_div_vec2_i32(-vec2<i32>(0i, 1i), vec2<i32>(-1i, 28130i) << (vec2<u32>(28580u, u_input.a.x) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(func_1().zy, -vec2<i32>(-15994i, 11200i)));
    var var_2 = 381f;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-749f + _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x)), vec2<bool>(true, true)));
    let var_4 = ~firstTrailingBit(~global3[_wgslsmith_index_u32(~u_input.a.x, 13u)]) ^ max(min(~_wgslsmith_mult_vec2_u32(global2.zy, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<u32>(19815u, 21906u)), abs(_wgslsmith_mult_vec2_u32(u_input.a, global2.zz)) ^ u_input.a);
    global3 = array<vec2<u32>, 13>();
    var_2 = _wgslsmith_f_op_f32(func_4(vec4<u32>(~64854u, 0u, ~((var_4.x >> (17649u % 32u)) & (global2.x << (31705u % 32u))), _wgslsmith_mult_u32(u_input.a.x, ~(~u_input.a.x))), -vec4<i32>(-11262i, -var_1.x << (u_input.a.x % 32u), _wgslsmith_div_i32(var_1.x, 40599i) << (1u % 32u), 1i), Struct_2(vec2<bool>(true || (var_1.x >= var_1.x), select(true, true, true)), Struct_1(_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_4.x, 4294967295u, global2.x, global2.x), vec4<u32>(4294967295u, 1u, 0u, var_4.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26057u, var_4.x, u_input.a.x), vec4<u32>(17520u, 40973u, 1u, 0u))), global2.x, _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(20559u, 2u)])), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), Struct_1(~(vec4<u32>(1u, var_4.x, u_input.a.x, var_4.x) ^ vec4<u32>(var_4.x, var_4.x, global2.x, global2.x)), _wgslsmith_add_u32(~45707u, ~global2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1561f, 1816f, var_3.x, var_0.x)), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, _wgslsmith_f_op_f32(func_4(vec4<u32>(~reverseBits(var_4.x), abs(u_input.a.x & 22280u), _wgslsmith_div_u32(~u_input.a.x, abs(global2.x)), ~(~u_input.a.x)), vec4<i32>(-var_1.x, reverseBits(_wgslsmith_div_i32(var_1.x, 1i)), -(~0i), _wgslsmith_div_i32(var_1.x, var_1.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(104040u, 15262u, 4294967295u), vec3<u32>(global2.x, 28610u, 6383u)) % 32u)), Struct_2(vec2<bool>(true, true), Struct_1(select(vec4<u32>(var_4.x, 4294967295u, var_4.x, var_4.x), vec4<u32>(48378u, 1u, 1u, 14851u), false), 16673u, global0[_wgslsmith_index_u32(var_4.x, 2u)], select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), Struct_1(min(vec4<u32>(36376u, 0u, 4294967295u, 0u), vec4<u32>(global2.x, 1u, 984u, global2.x)), firstLeadingBit(0u), global0[_wgslsmith_index_u32(func_3(var_3.x), 2u)], vec4<bool>(false, false, true, true))))), firstTrailingBit(firstLeadingBit(vec3<i32>(var_1.x, 2147483647i, 50887i))) >> ((vec3<u32>(8122u, firstLeadingBit(global2.x), 43251u) & _wgslsmith_mod_vec3_u32(vec3<u32>(12518u, u_input.a.x, var_4.x), vec3<u32>(var_4.x, var_4.x, u_input.a.x))) % vec3<u32>(32u)), var_0.x, ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_4.x, 0u), vec2<u32>(u_input.a.x, 1u)) ^ (u_input.a ^ global2.zy)));
}

