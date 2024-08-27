struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-601f, 410f, 120f, 973f), vec4<f32>(-293f, 933f, 133f, 679f), vec4<f32>(-593f, 1193f, 1000f, -605f), vec4<f32>(-900f, 798f, 695f, 156f), vec4<f32>(759f, 1207f, -1418f, 503f), vec4<f32>(270f, 604f, -1000f, -1358f), vec4<f32>(-566f, 115f, -111f, 1859f), vec4<f32>(204f, -1000f, 537f, -1351f), vec4<f32>(1000f, 1000f, 128f, -541f), vec4<f32>(-1071f, -880f, 1181f, 1546f), vec4<f32>(-1852f, -491f, 1000f, -819f), vec4<f32>(-1070f, -1873f, 872f, -567f), vec4<f32>(-1640f, 553f, 1543f, -1483f), vec4<f32>(1000f, 1626f, 538f, 658f), vec4<f32>(-1080f, 968f, -485f, 935f), vec4<f32>(-502f, 579f, -934f, 185f), vec4<f32>(2311f, 117f, 276f, 1516f), vec4<f32>(-1861f, -746f, -222f, 262f), vec4<f32>(167f, 486f, 778f, 2244f), vec4<f32>(1504f, -995f, -672f, -2581f), vec4<f32>(-1144f, 1000f, -950f, -255f), vec4<f32>(-730f, -699f, -1987f, -667f), vec4<f32>(-417f, -1000f, 996f, 1348f));

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<u32, 8> = array<u32, 8>(24523u, 4294967295u, 1u, 20231u, 22530u, 2591u, 50103u, 1u);

var<private> global4: array<u32, 26>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_1(arg_2, global3[_wgslsmith_index_u32(arg_0.b, 8u)]);
    var var_1 = vec2<bool>(true, true);
    global2 = array<Struct_1, 17>();
    let var_2 = vec4<bool>(!var_1.x, select(max(arg_2, arg_2) >= var_0.a, true, all(vec3<bool>(true, true, true))), true, any(vec3<bool>(select(true, true, var_1.x), all(!vec4<bool>(false, var_1.x, var_1.x, false)), any(vec3<bool>(true, false, true)))));
    global0 = array<vec2<bool>, 24>();
    return var_2;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f))))), -620f));
    let var_1 = select(vec4<bool>(true, !(519f == _wgslsmith_f_op_f32(sign(448f))), all(vec4<bool>(true, true, true, true)), true), select(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), !func_3(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~24127u, 8u)], 17u)], min(vec4<i32>(1i, 27965i, 1i, 0i), vec4<i32>(-2147483647i, -987i, -29100i, 1i)), firstTrailingBit(0i)), vec4<bool>(true, true, true, true)), func_3(global2[_wgslsmith_index_u32(12977u, 17u)], vec4<i32>(-9760i, 1i, _wgslsmith_add_i32(-181i, -15318i), -1469i), -1i).x || false);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) | 1u, select(_wgslsmith_mod_u32(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), ~93559u, false), u_input.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, abs(global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), ~34936u, global3[_wgslsmith_index_u32(25521u, 8u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 69432u, 90840u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25142u, 26u)], 8u)], 26u)]), ~vec4<u32>(global4[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(21086u, 8u)], u_input.a.x), countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(0u, 26u)], 0u, 25031u)))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 26u)], 49715u, global3[_wgslsmith_index_u32(1u, 8u)]) ^ ~vec4<u32>(14310u, global4[_wgslsmith_index_u32(0u, 26u)], 4294967295u, 31062u), ~(~vec4<u32>(0u, global3[_wgslsmith_index_u32(47033u, 8u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]))))), 17u)];
    global3 = array<u32, 8>();
    var var_3 = 17371i;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, firstTrailingBit(global3[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 8u)], 26u)]), 8u)]) ^ _wgslsmith_sub_u32(41121u, ~max(u_input.a.x, var_2.b))), 17u)];
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 24>();
    let var_0 = arg_2;
    let var_1 = func_2();
    global3 = array<u32, 8>();
    var var_2 = vec2<bool>(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 53303u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 26u)], 13741u), vec4<u32>(0u, var_1.b, var_1.b, 0u)), reverseBits(1u)) < var_1.b, all(func_3(arg_2, vec4<i32>(-33222i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -17335i, -2147483647i, var_1.a), vec4<i32>(-26395i, var_0.a, var_0.a, var_1.a)), 7597i << (var_1.b % 32u), _wgslsmith_mult_i32(arg_0, 38184i)), 2147483647i).zw));
    return Struct_1(var_0.a, ~(~21178u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 17>();
    let var_0 = func_1(countOneBits(-62194i), -1083f, global2[_wgslsmith_index_u32(5438u, 17u)]);
    var var_1 = var_0.a;
    global3 = array<u32, 8>();
    global1 = array<vec4<f32>, 23>();
    var var_2 = ~65794i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1411f, 247f, 268f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-864f, 581f, -524f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1279f, 572f, -496f))), vec3<f32>(_wgslsmith_f_op_f32(-1454f * 1066f), _wgslsmith_f_op_f32(step(-833f, 1935f)), _wgslsmith_f_op_f32(-280f * -530f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, 1000f, 362f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1939f, -955f, 380f)), _wgslsmith_div_vec3_f32(vec3<f32>(-237f, 881f, -1034f), vec3<f32>(-983f, -1000f, 999f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -800f, -971f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1919f, -444f, 376f)))), true)), -vec2<i32>(~var_0.a, -var_0.a) | countOneBits(vec2<i32>(2147483647i, var_0.a) >> (vec2<u32>(18270u, var_0.b) % vec2<u32>(32u))), firstTrailingBit(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 0u, u_input.a.x), vec4<u32>(var_0.b, var_0.b, 4294967295u, 0u)))));
}

