struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, -17277i, 2147483647i, i32(-2147483648)), vec4<i32>(-13872i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(37356i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(1i, 19496i, -25488i, i32(-2147483648)), vec4<i32>(1i, -27981i, 1i, -46688i), vec4<i32>(23381i, 1i, i32(-2147483648), -56733i), vec4<i32>(1i, 2147483647i, -7509i, -41401i), vec4<i32>(-21732i, -24547i, i32(-2147483648), 0i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 14975i), vec4<i32>(-24414i, i32(-2147483648), 20164i, 64054i), vec4<i32>(0i, -1i, -28404i, -1i), vec4<i32>(-1i, -21099i, 2147483647i, -8544i), vec4<i32>(6287i, 1i, 24333i, -1i), vec4<i32>(2147483647i, -88427i, -27560i, -1i), vec4<i32>(-7589i, 2147483647i, 2147483647i, 26981i), vec4<i32>(-24552i, 0i, 0i, -1i), vec4<i32>(2147483647i, 0i, -94434i, 2147483647i), vec4<i32>(-1i, 1i, 23141i, 62406i), vec4<i32>(-23860i, i32(-2147483648), -4616i, -56206i), vec4<i32>(2147483647i, 28907i, 13576i, -1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(1i, -13587i, 893i, 2147483647i), vec4<i32>(30830i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(-469i, -69072i, 19218i, -1i), vec4<i32>(52541i, -57399i, 45938i, i32(-2147483648)));

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false));

var<private> global3: array<f32, 24> = array<f32, 24>(164f, 538f, 852f, 840f, 605f, 634f, 645f, -625f, -1000f, 168f, -378f, -209f, 948f, 362f, 996f, -630f, -424f, 1260f, 2498f, 171f, -192f, 625f, 1925f, -1000f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    global2 = array<vec4<bool>, 8>();
    global0 = array<vec4<i32>, 26>();
    var var_0 = vec3<bool>(all(vec2<bool>(true, any(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(1u, 8u)])))), !(!(!select(arg_1.x, true, arg_1.x))), ~abs(~global1.c) < (global1.c >> (global1.c % 32u)));
    let var_1 = global1.b;
    let var_2 = var_1.x;
    return global1.c;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec3_u32(global1.d.yxz, ~vec3<u32>(u_input.e, abs(global1.d.x), 4294967295u));
    let var_1 = Struct_1(-464f, vec3<i32>(select(u_input.d, _wgslsmith_div_i32(0i, 2147483647i), true), ~(~(-global1.b.x)), global1.b.x), global1.c, countOneBits(_wgslsmith_sub_vec4_u32(~firstLeadingBit(global1.d), select(global1.d, global1.d, true))));
    var var_2 = true;
    var var_3 = _wgslsmith_sub_i32(var_1.b.x, -608i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a));
    return all(global2[_wgslsmith_index_u32(global1.d.x, 8u)]) | (var_0 <= _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.d, var_1.d) << (var_1.c % 32u), var_0));
}

fn func_2() -> u32 {
    let var_0 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(62787u, 4294967295u, u_input.c) << (global1.d.xxy % vec3<u32>(32u)), ~vec3<u32>(global1.d.x, u_input.e, global1.c) ^ _wgslsmith_mod_vec3_u32(global1.d.xwx, global1.d.ywy), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 0u, global1.c) ^ global1.d.xwy, global1.d.xwz)) | (global1.d.xxw & global1.d.wyz), global1.d.wwy, vec3<bool>(any(vec3<bool>(true, true, true)), func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global3[_wgslsmith_index_u32(global1.d.x, 24u)], -1408f, global3[_wgslsmith_index_u32(68328u, 24u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-862f, global1.a, 1490f, global3[_wgslsmith_index_u32(u_input.e, 24u)]), vec4<f32>(-670f, global3[_wgslsmith_index_u32(global1.d.x, 24u)], 1056f, -888f), false))), vec4<f32>(_wgslsmith_f_op_f32(1000f - global3[_wgslsmith_index_u32(44908u, 24u)]), _wgslsmith_f_op_f32(449f + global1.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.d.x, 24u)]), _wgslsmith_f_op_f32(global1.a * global3[_wgslsmith_index_u32(u_input.c, 24u)]))), true));
    let var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~var_0.x, 24u)]);
    global1 = Struct_1(global1.a, ~(-global1.b), var_0.x, global1.d);
    global3 = array<f32, 24>();
    global0 = array<vec4<i32>, 26>();
    return ~(~global1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2096f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), global1.b, u_input.e, _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(global1.d, vec4<u32>(global1.c, global1.c, 16056u, 53775u)), vec4<u32>(u_input.e, global1.c, func_1(global3[_wgslsmith_index_u32(abs(90675u), 24u)], vec2<bool>(true, true)), max(~global1.d.x, func_2()))));
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-111f + -728f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_1.c, 24u)], -303f) - _wgslsmith_f_op_f32(622f - var_0)))))), var_1.b, _wgslsmith_mult_u32(1u, abs(17412u) << (var_1.d.x % 32u)), _wgslsmith_div_vec4_u32(~(abs(var_1.d) << (_wgslsmith_clamp_vec4_u32(var_1.d, vec4<u32>(60501u, u_input.c, 39736u, var_1.c), vec4<u32>(0u, 29601u, global1.d.x, 14165u)) % vec4<u32>(32u))), var_1.d));
    global0 = array<vec4<i32>, 26>();
    var var_2 = 73646u;
    var var_3 = _wgslsmith_div_i32(-14617i, min(_wgslsmith_clamp_i32(~global1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.b.x, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(-58752i, 27313i, global1.b.x), vec3<i32>(u_input.a, 4585i, u_input.d))), ~2147483647i), _wgslsmith_clamp_i32(max(-var_1.b.x, -17888i), -14760i, -56344i ^ abs(u_input.d))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_div_u32(func_1(-961f, vec2<bool>(false, var_4)) | var_1.d.x, 0u & u_input.c), min(_wgslsmith_add_u32(4294967295u, var_1.d.x) | u_input.c, ~global1.c)));
}

