struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(23690u, 35766u);

var<private> global1: array<Struct_4, 11>;

var<private> global2: array<bool, 8>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    global0 = arg_0;
    let var_0 = Struct_2(any(arg_2), ~vec2<i32>(firstTrailingBit(u_input.c.x), arg_1.c.x), -71128i);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(151f + arg_1.b.x)))) * arg_1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(941f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))) * arg_1.b.xyz), firstTrailingBit(var_0.b));
    return 2688u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> vec3<u32> {
    let var_0 = global0.x;
    var var_1 = true;
    let var_2 = _wgslsmith_div_i32(-(~u_input.d), _wgslsmith_mult_i32(~(~u_input.c.x) >> (countOneBits(firstLeadingBit(global0.x)) % 32u), _wgslsmith_mod_i32(abs(1i >> (u_input.b % 32u)), -u_input.d)));
    global0 = ~vec2<u32>(4294967295u, func_3(vec2<u32>(arg_2, 76964u) & _wgslsmith_add_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, global0.x)), Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -113f, 1313f, 2431f)), -vec2<i32>(var_2, 2147483647i), _wgslsmith_div_u32(u_input.a, u_input.a), global0.x), !select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2, 8u)], false), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)]), global2[_wgslsmith_index_u32(4294967295u, 8u)])));
    global2 = array<bool, 8>();
    return select(vec3<u32>(u_input.a & 31617u, min(abs(max(4294967295u, 13512u)), _wgslsmith_clamp_u32(arg_2, 1u, global0.x)), reverseBits(global0.x)), vec3<u32>(func_3(~vec2<u32>(1674u, 4294967295u), Struct_1(true, vec4<f32>(arg_0, arg_0, arg_1.x, -1637f), u_input.c.xx, 49972u, ~arg_2), vec2<bool>(true, true)), arg_2, _wgslsmith_dot_vec4_u32(select(vec4<u32>(47628u, 34918u, arg_2, 4815u), vec4<u32>(0u, arg_2, arg_2, 35346u), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.x, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)])), abs(vec4<u32>(u_input.a, 4294967295u, global0.x, 24673u))) & _wgslsmith_div_u32(4294967295u & u_input.a, ~95841u)), vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)] || global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(firstTrailingBit(34839u), 8u)])), !(global2[_wgslsmith_index_u32(global0.x, 8u)] && global2[_wgslsmith_index_u32(min(13419u, 4294967295u), 8u)]), true));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<i32> {
    global1 = array<Struct_4, 11>();
    var var_0 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(u_input.b, 50984u, 1u)) | (vec3<u32>(u_input.a, global0.x, 74086u) >> (vec3<u32>(global0.x, 0u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(func_2(_wgslsmith_f_op_f32(min(144f, -140f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1989f, -1000f) - vec2<f32>(-645f, -1035f)), global0.x), (vec3<u32>(1u, u_input.a, u_input.b) & vec3<u32>(1u, 0u, global0.x)) << (countOneBits(vec3<u32>(global0.x, u_input.a, u_input.a)) % vec3<u32>(32u)))));
    let var_1 = any(!vec4<bool>(all(vec2<bool>(false, arg_1)) || arg_1, (u_input.c.x == arg_0) | false, any(!vec4<bool>(false, arg_1, arg_1, false)), true));
    return abs(~select(vec3<i32>(2147483647i, arg_2, u_input.c.x) | u_input.c, -(~u_input.c), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(14931u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec3<bool>(false, false, arg_1), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.x;
    global0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(max(global0.x, 4294967295u), 4294967295u), _wgslsmith_mod_vec2_u32(~vec2<u32>(41318u, 4294967295u), select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 31842u), vec2<bool>(global2[_wgslsmith_index_u32(55405u, 8u)], true))) | ~vec2<u32>(global0.x, 10662u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x << (global0.x % 32u), _wgslsmith_div_u32(1503u, global0.x)), vec2<u32>(countOneBits(global0.x) & _wgslsmith_mult_u32(23785u, u_input.b), u_input.b)));
    var var_1 = _wgslsmith_mult_vec3_i32(min((~vec3<i32>(u_input.d, u_input.c.x, -6380i) | vec3<i32>(-2147483647i, 2147483647i, 1642i)) ^ ~func_1(5546i, global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.d), select(vec3<i32>(2147483647i, 11514i, 30434i), u_input.c, global2[_wgslsmith_index_u32(min(func_3(vec2<u32>(0u, u_input.b), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 8u)], vec4<f32>(1110f, 528f, -693f, -1886f), u_input.c.zx, u_input.b, 9456u), vec2<bool>(global2[_wgslsmith_index_u32(66552u, 8u)], true)), _wgslsmith_mod_u32(global0.x, 4294967295u)), 8u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -1i, reverseBits(u_input.d)), u_input.c));
    global2 = array<bool, 8>();
    let var_2 = _wgslsmith_f_op_f32(min(-645f, _wgslsmith_f_op_f32(-478f - 1f)));
    var var_3 = Struct_1(select(all(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(60862u, 8u)], global2[_wgslsmith_index_u32(57202u, 8u)]))), any(!select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], false), global2[_wgslsmith_index_u32(59936u, 8u)])), true), _wgslsmith_div_vec4_f32(vec4<f32>(-678f, _wgslsmith_f_op_f32(step(var_2, -971f)), _wgslsmith_f_op_f32(floor(-735f)), _wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(min(var_2, var_2)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, 1000f, true))), _wgslsmith_f_op_f32(1f * -1250f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-826f, var_2)) - _wgslsmith_div_f32(215f, var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1075f)) - -155f))), _wgslsmith_sub_vec2_i32(-(vec2<i32>(var_1.x, -12127i) ^ var_1.xy), -vec2<i32>(-var_1.x, select(u_input.d, 2147483647i, global2[_wgslsmith_index_u32(global0.x, 8u)]))), _wgslsmith_mult_u32(~u_input.a, u_input.a), _wgslsmith_mult_u32(global0.x, ~firstTrailingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.wx, global0.x);
}

