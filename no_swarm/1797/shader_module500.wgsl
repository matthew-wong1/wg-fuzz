struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, false, true, false, false, false, false, false, false, false, true, true, false, true, true, false, false, false, true, true, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    global1 = array<bool, 23>();
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    var var_0 = -471f;
    global1 = array<bool, 23>();
    return arg_0.x;
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.b.b.a.x;
    var var_1 = 482f;
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.b.c, arg_0.b.b.c, _wgslsmith_mult_u32(86025u, u_input.a) | ~u_input.c, arg_0.b.b.c), select(min(vec4<u32>(1u, u_input.a, 60550u, arg_0.b.a.x), arg_0.b.a) << (firstTrailingBit(vec4<u32>(arg_0.b.a.x, arg_0.b.b.c, u_input.c, arg_0.b.a.x)) % vec4<u32>(32u)), select(vec4<u32>(37399u, 122741u, 4294967295u, arg_0.b.b.c), vec4<u32>(63105u, arg_0.b.a.x, 0u, arg_0.b.a.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 23u)], arg_0.b.b.e.x, true, global1[_wgslsmith_index_u32(u_input.a, 23u)])), !vec4<bool>(arg_0.b.b.e.x, arg_0.b.b.e.x, arg_0.b.b.b, arg_0.b.b.e.x))), arg_0.b.b);
    var var_3 = arg_0.b.b.e.zw;
    var var_4 = ~u_input.d;
    return var_2.b.b;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = arg_0.b.c;
    var var_1 = arg_0.a.ywy;
    global0 = array<Struct_3, 17>();
    var_1 = select(arg_0.a.zxy, _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(~7884u, func_2(firstLeadingBit(vec3<u32>(1u, arg_0.a.x, 13619u)), vec3<i32>(arg_1, arg_1, 28541i)), max(u_input.a, var_1.x ^ 58012u)), ~_wgslsmith_div_vec3_u32(arg_0.a.xyw, u_input.d) | vec3<u32>(var_1.x >> (31514u % 32u), arg_0.b.c, reverseBits(77891u))), func_3(global0[_wgslsmith_index_u32(52568u, 17u)]));
    let var_2 = Struct_5(Struct_3(u_input.b, Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(29001u, 875u, 0u, 1365u) << (arg_0.a % vec4<u32>(32u)), vec4<u32>(0u, var_1.x, 0u, var_1.x), vec4<u32>(4294967295u, 8110u, 1u, var_1.x)), arg_0.b)), vec3<bool>(!global1[_wgslsmith_index_u32(~1u, 23u)], any(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 23u)], arg_0.b.e.x)) || (any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 23u)])) | all(arg_0.b.e.xwz)), any(!select(arg_0.b.e.zyw, vec3<bool>(false, arg_0.b.b, false), arg_0.b.e.xxy))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(abs(i32(-1i) * -u_input.b.x), u_input.b.x, _wgslsmith_sub_i32(func_1(Struct_2(vec4<u32>(u_input.e, 1u, 0u, u_input.a), Struct_1(vec4<f32>(-1076f, 588f, 606f, -1427f), false, 6304u, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], true, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1006u, 23u)]))), countOneBits(u_input.b.x)), -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 1i))));
    global1 = array<bool, 23>();
    var var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_clamp_u32(1u, u_input.e, 27549u), abs(20048u)), u_input.e << (~u_input.d.x % 32u), abs(u_input.c) ^ (u_input.c >> (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, 28097u, 35737u) ^ vec3<u32>(u_input.c, 1u, u_input.e))) | (vec4<u32>(~min(46071u, 4294967295u), u_input.d.x, firstTrailingBit(_wgslsmith_add_u32(7522u, 29658u)), u_input.e) << (((~vec4<u32>(u_input.a, u_input.c, u_input.e, u_input.e) | (vec4<u32>(23937u, u_input.d.x, u_input.d.x, u_input.e) >> (vec4<u32>(u_input.c, 1u, 1u, 0u) % vec4<u32>(32u)))) | vec4<u32>(~u_input.a, 21196u << (1u % 32u), 28198u, select(u_input.e, u_input.e, false))) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f + -2321f)), _wgslsmith_f_op_f32(f32(-1f) * -1766f), 723f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1214f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-519f, -1134f, -536f, 1310f), vec4<f32>(-609f, 170f, -193f, 777f))))))), select(true, global1[_wgslsmith_index_u32(~0u, 23u)], global1[_wgslsmith_index_u32(~max(~u_input.d.x, ~1u), 23u)]), _wgslsmith_sub_u32(12781u, u_input.a), _wgslsmith_mult_vec4_i32(reverseBits(abs(vec4<i32>(u_input.b.x, var_0.x, var_0.x, u_input.b.x) & vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, 7586i))), -vec4<i32>(var_0.x, u_input.b.x, 2147483647i, max(var_0.x, u_input.b.x))), select(select(!(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 23u)])), vec4<bool>(false, global1[_wgslsmith_index_u32(65894u, 23u)], global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.e), 23u)]), global1[_wgslsmith_index_u32(1u, 23u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 23u)] && global1[_wgslsmith_index_u32(60711u, 23u)], true, global1[_wgslsmith_index_u32(select(23144u, var_1.x, false), 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(-2147483647i < var_0.x, !global1[_wgslsmith_index_u32(var_1.x, 23u)], true, !global1[_wgslsmith_index_u32(u_input.d.x, 23u)]), false), u_input.b.x >= min(select(var_0.x, -2147483647i, false), u_input.b.x)));
    var var_3 = ~firstTrailingBit(_wgslsmith_mult_i32(var_2.d.x, _wgslsmith_mult_i32(u_input.b.x, 18373i)));
    var var_4 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x ^ var_0.x, ~countOneBits(u_input.b.x)), u_input.b.x, -49477i), -select(var_2.d.yx, select(select(u_input.b, vec2<i32>(-2147483647i, var_0.x), vec2<bool>(var_2.b, true)), vec2<i32>(var_2.d.x, var_0.x), var_2.e.zz), false), ~(~(_wgslsmith_mod_i32(u_input.b.x, -1636i) ^ var_2.d.x)), _wgslsmith_sub_vec4_u32(abs(abs(vec4<u32>(u_input.d.x, 1u, var_1.x, u_input.e)) & vec4<u32>(var_2.c, var_1.x, var_1.x, 1u)), firstLeadingBit(~(~vec4<u32>(var_2.c, 6460u, u_input.e, 18576u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_2.d, ~var_2.d, true) << (vec4<u32>(~var_1.x, 55793u | _wgslsmith_add_u32(var_2.c, var_4.d.x), var_1.x, var_2.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, -1000f, true)), _wgslsmith_f_op_f32(round(1148f)), _wgslsmith_f_op_f32(f32(-1f) * -1347f), var_2.a.x)) - vec4<f32>(_wgslsmith_div_f32(-1406f, _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.x, 610f)) * _wgslsmith_f_op_f32(810f + var_2.a.x)))), var_2.a.xy, (_wgslsmith_div_i32(_wgslsmith_mod_i32(46000i, -2147483647i), min(var_0.x, u_input.b.x)) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(1u, var_2.c)) % 32u)) | -19656i);
}

