struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1592f, 263f, -1196f, 1433f, 1539f, -1000f, -2481f, -1469f, 164f, 227f, 1000f, -1000f, -124f, 423f, -1674f, 434f, 209f, 336f, 158f, -876f, 1499f, -2327f, 821f, -740f, 177f, -282f, 247f);

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, false, true, false, true, true, false, true, true, true);

var<private> global2: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global3: array<bool, 10> = array<bool, 10>(true, false, false, false, false, true, false, true, false, true);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<f32>(1810f, 1111f), 69705i), vec3<i32>(0i, 1i, 0i), vec2<bool>(true, true), Struct_1(vec2<f32>(-850f, -989f), 2147483647i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_4(true, arg_2, arg_2);
    global4 = Struct_2(arg_1.d, global4.b ^ (-vec3<i32>(arg_1.b.x, -39429i, global4.d.b) >> (arg_0 % vec3<u32>(32u))), select(arg_1.c, vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_0), vec3<u32>(arg_0.x, 4294967295u, 51324u)), 3u)]), vec2<bool>(!(!global4.c.x), global4.c.x)), arg_1.a);
    var var_1 = !select(!vec4<bool>(true, false, arg_1.c.x, true | global1[_wgslsmith_index_u32(4294967295u, 12u)]), select(vec4<bool>(any(vec4<bool>(false, arg_1.c.x, true, true)), var_0.b > arg_2, any(vec2<bool>(arg_1.c.x, global1[_wgslsmith_index_u32(0u, 12u)])), !global3[_wgslsmith_index_u32(33340u, 10u)]), select(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), select(vec4<bool>(false, false, true, arg_1.c.x), vec4<bool>(global4.c.x, true, false, false), vec4<bool>(true, true, false, arg_1.c.x)), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(38151u, 10u)])), vec4<bool>(true, !global1[_wgslsmith_index_u32(44964u, 12u)], true, true)), select(select(select(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global4.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 27u)] > 971f, global4.c.x), global1[_wgslsmith_index_u32(0u, 12u)], arg_1.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1103f, -595f, 486f, global0[_wgslsmith_index_u32(4294967295u, 27u)]) + vec4<f32>(arg_1.a.a.x, 979f, global0[_wgslsmith_index_u32(99797u, 27u)], 654f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(461f, -552f, global0[_wgslsmith_index_u32(23701u, 27u)], 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, global4.d.a.x, 662f, 100f)), vec4<bool>(all(vec4<bool>(false, global2[_wgslsmith_index_u32(50621u, 3u)], global1[_wgslsmith_index_u32(0u, 12u)], arg_1.c.x)), true, all(vec4<bool>(true, var_1.x, false, true)), var_1.x | global4.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-834f * -392f), -290f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(32228u, 27u)])), -1421f)))));
    global4 = arg_1;
    return abs(vec4<i32>(-2147483647i, ~(-_wgslsmith_sub_i32(arg_1.b.x, 1i)), firstTrailingBit(global4.a.b), _wgslsmith_sub_i32(arg_1.d.b, min(-9271i, 50491i) >> (1u % 32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<f32> {
    global2 = array<bool, 3>();
    let var_0 = ~(-vec4<i32>(global4.b.x, _wgslsmith_clamp_i32(global4.a.b, global4.d.b, -40481i), select(global4.d.b, global4.b.x, arg_1.x), global4.a.b)) & firstTrailingBit(_wgslsmith_mult_vec4_i32(~func_3(vec3<u32>(23354u, 50585u, u_input.b.x), Struct_2(Struct_1(arg_0, global4.d.b), vec3<i32>(21564i, -2147483647i, 7642i), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(46757u, 3u)]), global4.d), 1u), _wgslsmith_div_vec4_i32(-vec4<i32>(global4.a.b, global4.b.x, 4879i, -2147483647i), countOneBits(vec4<i32>(global4.b.x, global4.d.b, -1i, global4.d.b)))));
    let var_1 = !any(arg_1.xyy);
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return vec2<f32>(1201f, _wgslsmith_f_op_f32(780f + arg_0.x));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global0 = array<f32, 27>();
    global2 = array<bool, 3>();
    global1 = array<bool, 12>();
    var var_0 = arg_0.x;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global4.a.a, select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 3u)], global3[_wgslsmith_index_u32(17755u, 10u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], true, global2[_wgslsmith_index_u32(4294967295u, 3u)], true), global3[_wgslsmith_index_u32(37354u, 10u)]), !global4.c.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.d.a, vec2<f32>(224f, 1117f), false)) + _wgslsmith_f_op_vec2_f32(global4.d.a - global4.a.a))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global4.b.x, 0i, 53132i, global4.d.b) & vec4<i32>(arg_0.x, global4.a.b, arg_0.x, arg_0.x)), vec4<i32>(reverseBits(arg_0.x), _wgslsmith_add_i32(arg_0.x, -41554i), abs(9370i), reverseBits(-1417i)))), global4.d, global4.d, firstTrailingBit(firstTrailingBit(1u)) ^ 0u);
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(-global4.a.b ^ var_1.c.b, arg_0.x, var_1.a.b, 0i), min(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, 0i, var_1.b.b), ~vec4<i32>(-1i, var_1.a.b, -1i, var_1.c.b)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.b, arg_0.x, 1i, ~(-2147483647i)), max(select(vec4<i32>(arg_0.x, 1i, arg_0.x, -2147483647i), vec4<i32>(-2147483647i, var_1.b.b, arg_0.x, 46013i), false), ~vec4<i32>(global4.b.x, arg_0.x, 0i, 1i)))));
}

fn func_4(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = -vec4<i32>(1i, -(~(-2147483647i)), global4.d.b, 2147483647i);
    var var_1 = !select(all(!vec4<bool>(global4.c.x, true, false, global1[_wgslsmith_index_u32(77263u, 12u)])) && global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~u_input.e.x), 10u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(53574u, 57524u, u_input.a.x, 9921u), vec4<u32>(38488u, u_input.d.x, u_input.d.x, u_input.e.x), u_input.b)), 3u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, global4.b.x, global4.b.x), vec4<i32>(1i, global4.a.b, -51081i, 49265i)) >= arg_0.x);
    let var_2 = Struct_3(global4.d, global4.d, global4.d, max(~u_input.e.x, 4294967295u) >> (1u % 32u));
    global1 = array<bool, 12>();
    global2 = array<bool, 3>();
    return StorageBuffer(firstLeadingBit(countOneBits(arg_0) | vec2<i32>(_wgslsmith_mult_i32(global4.a.b, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(45052i, var_2.b.b, global4.b.x, 2248i), vec4<i32>(arg_0.x, arg_0.x, var_2.b.b, 2147483647i)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.a.a.x)), global0[_wgslsmith_index_u32(~(~4294967295u), 27u)]), _wgslsmith_f_op_f32(round(-739f)))), 2147483647i, _wgslsmith_clamp_vec3_i32(global4.b, global4.b, vec3<i32>(firstLeadingBit(var_2.a.b), 22768i, -32654i)), _wgslsmith_add_vec3_i32(func_3(_wgslsmith_add_vec3_u32(u_input.b.wwz, u_input.b.yyz), Struct_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global4.d.a.x), 20112i), _wgslsmith_clamp_vec3_i32(global4.b, var_0.wyx, global4.b), !global4.c, Struct_1(vec2<f32>(global4.d.a.x, -1296f), var_2.b.b)), var_2.d).zwy, global4.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    let var_0 = _wgslsmith_mult_u32(u_input.e.x, ~max(38263u, ~u_input.c.x & 23646u));
    var var_1 = var_0 >> (_wgslsmith_mult_u32(~4294967295u, u_input.b.x) % 32u);
    global0 = array<f32, 27>();
    let var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(6807i, 0i, i32(-1i) * -6027i) << (_wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(u_input.b.yyy, u_input.c)) % vec3<u32>(32u)), -vec3<i32>(i32(-1i) * -15603i, 2147483647i, _wgslsmith_clamp_i32(global4.b.x, global4.d.b, global4.b.x)), global4.b);
    var var_3 = vec4<bool>(global1[_wgslsmith_index_u32(min(~min(u_input.a.x, var_0), u_input.a.x), 12u)] & true, any(!global4.c), true, true);
    let x = u_input.a;
    s_output = func_4(~vec2<i32>(70938i, func_1(var_2.yz)));
}

