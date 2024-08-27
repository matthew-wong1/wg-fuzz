struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<u32>(70558u, 32834u, 34649u), 246f, -5122i, -1i), Struct_1(vec3<u32>(1u, 1u, 1u), -1029f, i32(-2147483648), -1i), Struct_1(vec3<u32>(1u, 6837u, 0u), -611f, 0i, -8100i));

var<private> global1: array<bool, 1>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 4294967295u), 761f, 0i, -16669i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global1 = array<bool, 1>();
    var var_0 = all(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58822u, ~1u, ~global2.a.x >> (global2.a.x % 32u)), 1u)], !(!select(global1[_wgslsmith_index_u32(arg_0.a.x, 1u)], global1[_wgslsmith_index_u32(38362u, 1u)], false))));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(~arg_0.a, -1447f, (i32(-1i) * -20639i) << (1u % 32u), 2666i);
    let var_3 = arg_0;
    return countOneBits(abs(global2.a));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_2.a.x >> (4294967295u % 32u);
    global1 = array<bool, 1>();
    global0 = array<Struct_1, 3>();
    let var_1 = Struct_1(~arg_2.a, -866f, abs(48950i), 10196i);
    var var_2 = _wgslsmith_add_vec3_u32(abs(arg_2.a), vec3<u32>(4294967295u, 72916u, (firstTrailingBit(4294967295u) | 12497u) | _wgslsmith_mult_u32(var_1.a.x, u_input.c)));
    return _wgslsmith_div_vec4_i32(vec4<i32>(22833i, _wgslsmith_mult_i32(firstTrailingBit(0i), 0i), 19789i, select(33300i, u_input.b.x, true)), select(-vec4<i32>(u_input.b.x, u_input.b.x, arg_0.c, arg_0.d), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d, u_input.e, -4584i, global2.c), vec4<i32>(-89137i, arg_0.c, 5980i, u_input.b.x)), !vec4<bool>(false, arg_1, arg_1, false)) & vec4<i32>(u_input.e, ~(-1i), ~var_1.d, min(var_1.d, -26866i))) << (select(vec4<u32>(28142u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.c), arg_2.a.xx | global2.a.xx), global2.a.x, ~_wgslsmith_mult_u32(69304u, 36409u)), ~firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 40396u, u_input.c, var_0))), global1[_wgslsmith_index_u32(18476u, 1u)]) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = func_4(global0[_wgslsmith_index_u32(min(0u, _wgslsmith_add_u32(abs(u_input.c >> (global2.a.x % 32u)), abs(4294967295u))), 3u)], true, Struct_1(func_3(Struct_1(reverseBits(vec3<u32>(4294967295u, 50120u, 0u)), 283f, global2.c, -16279i ^ global2.c)), global2.b, -2147483647i, arg_0.x));
    global1 = array<bool, 1>();
    var var_1 = arg_1.x;
    global0 = array<Struct_1, 3>();
    global1 = array<bool, 1>();
    return 1i;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> vec3<u32> {
    let var_0 = !global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(~global2.a.x) | ~(~u_input.c)), 1u)];
    var var_1 = 4294967295u;
    let var_2 = true;
    var var_3 = -15543i;
    var var_4 = vec2<bool>(global2.d < -(~func_2(vec3<i32>(global2.d, arg_1.x, u_input.e), vec4<f32>(-2163f, 834f, global2.b, global2.b))), !arg_2 || false);
    return vec3<u32>(~_wgslsmith_sub_u32(98986u, _wgslsmith_div_u32(u_input.c, 1u)), 1u, min(u_input.c >> (58605u % 32u), 1u)) << (_wgslsmith_sub_vec3_u32(global2.a, vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_0, 488f, arg_1, u_input.b.x);
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(54541u, arg_0.x), 1u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(global2.a.zx, var_0.a.yy, vec2<u32>(0u, global2.a.x)))), 62135u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 0u, u_input.c), select(global2.a, vec3<u32>(6645u, arg_0.x, arg_0.x), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.a.x, 1u)], global1[_wgslsmith_index_u32(arg_0.x, 1u)]))), ~1000u), 1000f, 35002i, 82637i);
    global0 = array<Struct_1, 3>();
    var var_2 = var_0;
    global0 = array<Struct_1, 3>();
    return Struct_1(abs(countOneBits(_wgslsmith_add_vec3_u32(var_0.a, var_0.a | vec3<u32>(1u, 4294967295u, global2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_mod_i32(var_1.d, 119i) >> (select(_wgslsmith_mult_u32(global2.a.x, global2.a.x), ~(var_0.a.x << (1u % 32u)), !any(vec3<bool>(false, true, true))) % 32u), ~_wgslsmith_div_i32(0i, -abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = !(!(!vec3<bool>(false, -217f > global2.b, true)));
    var var_2 = -countOneBits(-2147483647i) <= u_input.a;
    var var_3 = func_5(select(select(func_1(global2.c, u_input.b, false), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 41284u), global2.a), true) ^ vec3<u32>(4294967295u, _wgslsmith_sub_u32(global2.a.x, 68594u), u_input.c), vec3<u32>(~16107u >> (1u % 32u), _wgslsmith_mult_u32(45805u, _wgslsmith_div_u32(global2.a.x, 4294967295u)), func_1(~(-65658i), -vec2<i32>(-9272i, global2.d), var_1.x || false).x), var_1.x), ~u_input.b.x);
    var var_4 = ~vec3<i32>(u_input.e, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, 69547i), u_input.b))), u_input.d);
    var_3 = Struct_1(firstTrailingBit(~select(countOneBits(var_3.a), global2.a, vec3<bool>(var_1.x, var_1.x, false))), var_3.b, u_input.a, -5842i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b), vec2<u32>(1u, global2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -327f, _wgslsmith_f_op_f32(409f - 799f), var_3.b), vec4<f32>(var_3.b, _wgslsmith_f_op_f32(-var_3.b), var_3.b, _wgslsmith_f_op_f32(exp2(var_3.b))), !(!vec4<bool>(global1[_wgslsmith_index_u32(var_3.a.x, 1u)], global1[_wgslsmith_index_u32(11625u, 1u)], false, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(589f, var_3.b, -286f, var_3.b), vec4<f32>(var_3.b, global2.b, 985f, global2.b))), vec4<f32>(949f, global2.b, var_3.b, var_3.b))))), var_3.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b, var_3.b, 735f, 1049f), vec4<f32>(var_3.b, -1683f, var_3.b, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, var_3.b, 1000f, -1000f) + vec4<f32>(global2.b, 290f, global2.b, -377f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.b, 296f, -353f, var_3.b))), vec4<f32>(var_3.b, global2.b, global2.b, -1187f))))));
}

