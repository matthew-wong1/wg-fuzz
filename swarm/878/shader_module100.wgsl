struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(17426i, -21355i, -20964i, -60704i, -1i, 50380i);

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, vec4<u32>(4294967295u, 1u, 1u, 54324u), 1425f), Struct_1(0u, vec4<u32>(5113u, 1u, 1u, 0u), 436f), Struct_1(68618u, vec4<u32>(0u, 1u, 4294967295u, 15680u), -370f), Struct_1(111957u, vec4<u32>(5454u, 27005u, 68509u, 4294967295u), 1000f), Struct_1(19655u, vec4<u32>(1u, 1u, 55333u, 1u), 1000f), Struct_1(1u, vec4<u32>(13783u, 0u, 4294967295u, 4294967295u), 1477f), Struct_1(54587u, vec4<u32>(4294967295u, 0u, 4294967295u, 43693u), 844f), Struct_1(33148u, vec4<u32>(0u, 14591u, 10305u, 31921u), 533f), Struct_1(5815u, vec4<u32>(47808u, 28500u, 108918u, 0u), -1000f), Struct_1(4294967295u, vec4<u32>(17458u, 1u, 6635u, 1509u), -553f), Struct_1(8805u, vec4<u32>(50726u, 67949u, 0u, 1u), 935f), Struct_1(43111u, vec4<u32>(94582u, 7081u, 9049u, 0u), 172f), Struct_1(0u, vec4<u32>(0u, 45420u, 49553u, 1u), -707f), Struct_1(4294967295u, vec4<u32>(1u, 24451u, 21291u, 1u), 1182f));

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(true, 20209u, 1581f, vec2<f32>(-1633f, 1093f)), Struct_2(false, 95999u, -473f, vec2<f32>(218f, -488f)), Struct_2(true, 83044u, -635f, vec2<f32>(873f, -2168f)), Struct_2(false, 4294967295u, -1786f, vec2<f32>(1511f, 1086f)), Struct_2(false, 1u, -1132f, vec2<f32>(122f, 176f)), Struct_2(false, 11069u, -1886f, vec2<f32>(120f, -724f)), Struct_2(true, 31883u, 443f, vec2<f32>(-965f, -619f)), Struct_2(false, 0u, -1009f, vec2<f32>(-401f, 278f)), Struct_2(false, 0u, 1578f, vec2<f32>(-1260f, -262f)), Struct_2(true, 8884u, -1000f, vec2<f32>(1124f, 1073f)), Struct_2(true, 32212u, -1000f, vec2<f32>(-1000f, -308f)), Struct_2(true, 4294967295u, 1349f, vec2<f32>(-1397f, -1208f)), Struct_2(true, 8875u, 1861f, vec2<f32>(1851f, 1479f)), Struct_2(false, 0u, -1000f, vec2<f32>(-770f, 243f)), Struct_2(false, 25537u, -2523f, vec2<f32>(-279f, 1212f)), Struct_2(true, 71541u, 2412f, vec2<f32>(-874f, -596f)), Struct_2(true, 6597u, 1387f, vec2<f32>(757f, -427f)), Struct_2(true, 4294967295u, 472f, vec2<f32>(699f, 285f)), Struct_2(true, 4294967295u, 2466f, vec2<f32>(-1354f, -288f)), Struct_2(true, 4294967295u, -838f, vec2<f32>(-678f, -439f)), Struct_2(false, 1u, -1240f, vec2<f32>(-1582f, -1000f)), Struct_2(false, 30915u, 425f, vec2<f32>(-824f, 594f)), Struct_2(true, 9277u, 1033f, vec2<f32>(-799f, -329f)), Struct_2(false, 4294967295u, -1000f, vec2<f32>(-503f, -463f)), Struct_2(true, 1u, -1484f, vec2<f32>(-816f, 259f)), Struct_2(false, 2509u, 820f, vec2<f32>(-2204f, -814f)), Struct_2(true, 0u, 402f, vec2<f32>(-602f, -1671f)), Struct_2(true, 4294967295u, -606f, vec2<f32>(238f, -614f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>) -> bool {
    let var_0 = min(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.a, global1.b.x, 10438u)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 1u)), vec3<u32>(0u, u_input.d, u_input.b.x))), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 19021u, u_input.d, 4294967295u), vec4<u32>(global1.b.x, 1u, global1.a, 6914u)), _wgslsmith_mod_u32(u_input.e.x, 27980u), 4294967295u)) & _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(55428u, 52687u), global1.b.zw) % vec2<u32>(32u)), vec2<u32>(u_input.e.x, ~41808u)), _wgslsmith_mult_u32(~75043u, ~countOneBits(u_input.d)));
    let var_1 = Struct_3(reverseBits(vec2<u32>(u_input.e.x, global1.a ^ _wgslsmith_clamp_u32(4294967295u, 0u, 26235u))), vec4<bool>(false, arg_2.x, !all(!vec4<bool>(arg_2.x, false, arg_2.x, true)), !arg_2.x && true), Struct_1(global1.b.x, reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.b.x, 19766u, 49986u, 26037u), global1.b)), 2864f), Struct_1(_wgslsmith_dot_vec3_u32(~(global1.b.xzw << (global1.b.wwy % vec3<u32>(32u))), reverseBits(global1.b.xyz)), reverseBits(select(vec4<u32>(21927u, var_0, global1.b.x, 14209u), ~global1.b, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1.c, -794f)), _wgslsmith_f_op_f32(f32(-1f) * -669f), false)) * _wgslsmith_f_op_f32(-831f * global1.c))), Struct_1(_wgslsmith_div_u32(4294967295u, ~1u), ~global1.b, _wgslsmith_f_op_f32(trunc(global1.c))));
    global3 = array<Struct_1, 14>();
    let var_2 = Struct_2(all(select(!(!var_1.b), !vec4<bool>(arg_2.x, arg_2.x, var_1.b.x, var_1.b.x), arg_2.x)), u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.c, var_1.e.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c * -841f), _wgslsmith_f_op_f32(-var_1.e.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, 427f)))));
    global1 = Struct_1(var_1.a.x, ~vec4<u32>(~max(var_2.b, u_input.e.x), ~1u, _wgslsmith_div_u32(~var_1.c.a, u_input.e.x), ~max(55592u, var_1.e.a)), -198f);
    return !var_2.a;
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 14>();
    var var_0 = vec3<i32>(-(~0i), 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(31069i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], 0i)), -_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, 2147483647i, 30733i, u_input.a.x))));
    global4 = array<Struct_2, 28>();
    global1 = Struct_1(abs(~u_input.e.x), _wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, 0u, 3208u, u_input.b.x) & vec4<u32>(4294967295u, 4294967295u, global1.a, u_input.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(67036u, 53967u, 4294967295u, 12981u), _wgslsmith_div_vec4_u32(global1.b, vec4<u32>(global1.a, 110266u, u_input.d, global1.a)))) ^ vec4<u32>(~(~39166u), 41507u, _wgslsmith_clamp_u32(39636u, _wgslsmith_sub_u32(23726u, u_input.e.x), _wgslsmith_mult_u32(0u, u_input.d)), 27410u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(-global1.c)) - _wgslsmith_f_op_f32(-428f * 953f))));
    let var_1 = all(select(!vec4<bool>(true, func_3(u_input.a.wz, var_0.x, vec2<bool>(true, true)), global1.c < 1468f, false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), all(vec4<bool>(false, true, true, true)))), !vec4<bool>(true, all(vec2<bool>(false, false)), true, true)));
    return global3[_wgslsmith_index_u32(~(~u_input.e.x), 14u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(0u != max(countOneBits(u_input.b.x), global1.b.x), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, -499f)))));
    var var_1 = Struct_2(any(vec3<bool>(var_0.a, true, !var_0.a & any(vec4<bool>(var_0.a, false, var_0.a, true)))), 1u, global1.c, var_0.d);
    let var_2 = _wgslsmith_f_op_f32(863f + 2042f);
    let var_3 = global3[_wgslsmith_index_u32(1u, 14u)];
    global2 = false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1042f * -709f))) + global1.c))));
    global0 = array<i32, 6>();
    var var_1 = func_1(u_input.c.xz, 1u >> (u_input.b.x % 32u));
    let var_2 = vec3<bool>(false, all(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-var_0) != _wgslsmith_f_op_f32(global1.c + var_1.c))), false);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(637f * var_1.c)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(392f)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 883f, 1427f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(478f, -480f, 354f), vec3<f32>(-491f, global1.c, 665f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, -685f, var_1.c) * vec3<f32>(global1.c, 903f, global1.c))))))));
    global0 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(var_1.a, 6u)], 0i), u_input.c.xz)), func_2().b.xww);
}

