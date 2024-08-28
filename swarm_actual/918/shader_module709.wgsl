struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, false, false, false, true, false, true, false, false, false, false, false, true, true, false, false, false, false, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = vec4<i32>(-1i & (arg_3 >> (1u % 32u)), _wgslsmith_add_i32(-2850i, global0[_wgslsmith_index_u32(~(~u_input.d), 11u)]), 25500i, max(8061i, reverseBits(~(-1i))));
    global0 = array<i32, 11>();
    var var_1 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(_wgslsmith_sub_u32(u_input.d, 42316u), _wgslsmith_dot_vec4_u32(vec4<u32>(38132u, u_input.a.x, 33241u, 0u), vec4<u32>(1u, u_input.d, u_input.a.x, u_input.a.x)), ~23473u, 33466u)), select(~(abs(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)) << (~vec4<u32>(u_input.a.x, 1u, 18238u, 21689u) % vec4<u32>(32u))), vec4<u32>(0u, select(firstLeadingBit(46684u), reverseBits(1u), true), countOneBits(u_input.a.x), 13674u), false));
    var var_2 = reverseBits(-(~(u_input.b | global0[_wgslsmith_index_u32(65213u, 11u)]) | ~global0[_wgslsmith_index_u32(1u >> (var_1.x % 32u), 11u)]));
    let var_3 = -var_0.x;
    return 47250u;
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = Struct_2(global1.yz, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, func_3(max(25595i, -2147483647i), !global1.wx, Struct_1(-1000f, vec3<f32>(901f, -1246f, 409f)), -51860i), ~u_input.d), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(143430u, u_input.d, u_input.d, 55216u), max(vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 19138u))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, 47206u, u_input.d, u_input.a.x)), vec4<u32>(u_input.d, 33337u, u_input.a.x, u_input.d), select(vec4<u32>(u_input.d, 53251u, u_input.d, 0u), vec4<u32>(u_input.d, 50364u, u_input.a.x, 4294967295u), global1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-770f)), _wgslsmith_f_op_f32(-601f * -252f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f), -2326f));
    let var_1 = firstLeadingBit(vec2<u32>(14634u, u_input.d));
    let var_2 = -2147483647i;
    let var_3 = Struct_1(-152f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1221f, var_0.d, -1309f) * vec3<f32>(var_0.d, var_0.c, -429f))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(401f, var_3.b.x, -681f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1252f, var_3.a, -1375f) + var_3.b), true)) + vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(sign(var_0.c))))));
    return -39621i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    global2 = array<bool, 22>();
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a, u_input.a | u_input.a);
    var var_1 = false;
    var var_2 = vec3<i32>(2147483647i << (~abs(~var_0.x) % 32u), func_2(!global1.x, -abs(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 11u)], arg_0.x, -51605i))), arg_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1238f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))));
    return vec4<bool>(false, !(-(~(-2147483647i)) < max(-33344i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)] >> (0u % 32u))), all(vec2<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], true), vec4<bool>(true, true, false, true), vec4<bool>(global1.x, global1.x, global2[_wgslsmith_index_u32(5603u, 22u)], false))), false)), !(!(_wgslsmith_f_op_f32(-1000f - var_3.b.x) > _wgslsmith_f_op_f32(arg_1.x * -625f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> u32 {
    global1 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(1u, 11u)], u_input.e, u_input.e), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), global0[_wgslsmith_index_u32(~arg_0.x, 11u)], reverseBits(40005i))), vec3<i32>(max(func_2(false, u_input.e), -22974i), 0i, -(~624i))), vec2<f32>(arg_2.x, 776f));
    var var_0 = ~arg_1.x;
    let var_1 = abs(~(~vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(arg_0.x, 11u)]), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 11u)]), ~global0[_wgslsmith_index_u32(arg_0.x, 11u)], u_input.e)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 444f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-161f * _wgslsmith_f_op_f32(arg_2.x - 250f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1120f, -1371f, _wgslsmith_f_op_f32(arg_2.x + -125f)))));
    var var_3 = var_2;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f) + 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f))) - 808f);
    global2 = array<bool, 22>();
    global1 = select(!vec4<bool>(all(vec3<bool>(global1.x, false, false)), global1.x, all(!vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)], false, global1.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(9915u, 20779u, 4294967295u), ~vec3<u32>(1u, 51220u, 3117u)), 22u)]), vec4<bool>(all(select(vec2<bool>(global2[_wgslsmith_index_u32(58383u, 22u)], true), vec2<bool>(global1.x, global1.x), !global1.xx)), ~func_1(u_input.a, vec4<u32>(u_input.d, u_input.a.x, 4294967295u, 367u), vec3<f32>(-589f, -1205f, -449f)) >= ~1u, global2[_wgslsmith_index_u32(14631u, 22u)], true), vec4<bool>(all(!select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], false, false))), global1.x && func_4(-vec3<i32>(-1i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-569f, 611f), vec2<f32>(111f, -1695f)))).x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.d), 4294967295u), 62374u), 22u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, 2148f, 1187f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, -1517f, 240f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, 1320f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, 1606f, -648f) + vec3<f32>(-1400f, 1000f, -801f)), global1.yyz))) * _wgslsmith_div_vec3_f32(vec3<f32>(-691f, _wgslsmith_f_op_f32(680f * -833f), -1408f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1396f, 202f, -1068f), vec3<f32>(-1000f, -674f, -623f)))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -378i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) | -(~vec4<i32>(-2147483647i, 1i, u_input.c.x, -7053i)), -min(vec4<i32>(40214i, -1i, u_input.c.x, u_input.c.x) | vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 295i, 7932i, u_input.b), vec4<i32>(u_input.c.x, u_input.c.x, 11818i, u_input.e))));
}

