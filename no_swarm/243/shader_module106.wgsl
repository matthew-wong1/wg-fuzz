struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: f32 = 225f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    global1 = array<Struct_1, 22>();
    var var_0 = arg_0.a.yy;
    var var_1 = var_0.x;
    let var_2 = arg_0;
    let var_3 = firstTrailingBit(vec2<u32>(~arg_0.b.a.x, 1u));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    let var_0 = select(arg_1.a, arg_1.a, global0[_wgslsmith_index_u32(arg_1.a.x, 12u)] >= 0i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(187f, 350f, 131f), vec3<f32>(747f, -2008f, -290f), false)) * vec3<f32>(594f, 2211f, 2418f))) + vec3<f32>(1f, 1f, 1f)));
    let var_2 = arg_0.b;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, (61786u >> (var_3.a.x % 32u)) << (arg_0.a.x % 32u)), vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(var_3.a.x, 25217u), var_3.a.x)), ~min(arg_1.a, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, var_3.a.x), u_input.a), var_3.a.x, select(var_0.x, 1510u, true))));
    return -var_2.yw;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(238f, -205f))))));
    global2 = _wgslsmith_f_op_f32(996f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-593f)) - _wgslsmith_div_f32(1036f, -105f)))), 1f)));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(vec3<bool>(all(vec3<bool>(true, false, true)), func_1(vec2<i32>(u_input.c.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.b, 1u, 87733u), global1[_wgslsmith_index_u32(51506u, 22u)]) | (u_input.b >= 61959u), false), Struct_1(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), 4294967295u & u_input.b, 0u), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], u_input.c.x), ~vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 12u)])), -(~(-1i))), _wgslsmith_clamp_vec2_i32(func_3(Struct_1(vec3<u32>(14726u, u_input.a.x, u_input.b), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), 2147483647i), func_2(Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(53609u, 12u)], -2147483647i, 23236i), u_input.c.x), vec2<i32>(-1i, global0[_wgslsmith_index_u32(93105u, 12u)])), u_input.c, true), vec3<bool>(false, false, true)), -u_input.c, u_input.c)), Struct_2(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), vec3<bool>(false, -73518i <= u_input.c.x, true), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(u_input.b, u_input.a.x, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, 0i, u_input.c.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 83372i, 2147483647i, 32496i)) | -vec4<i32>(global0[_wgslsmith_index_u32(16607u, 12u)], 28862i, -42567i, global0[_wgslsmith_index_u32(4294967295u, 12u)]), u_input.c.x), reverseBits(-u_input.c) & u_input.c));
    global1 = array<Struct_1, 22>();
    let var_1 = vec2<bool>(true, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, false)), true)));
    global1 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_mult_vec3_u32(abs(var_0.b.a), ~firstTrailingBit(~max(var_0.b.a, var_0.b.a)));
    global2 = _wgslsmith_f_op_f32(max(1f, 1f));
    let var_3 = global1[_wgslsmith_index_u32(func_2(Struct_2(!var_0.a, global1[_wgslsmith_index_u32(countOneBits(func_2(Struct_2(vec3<bool>(false, var_0.a.x, true), var_0.b, u_input.c), u_input.c, false).a.x) >> (countOneBits(_wgslsmith_mult_u32(39829u, u_input.a.x)) % 32u), 22u)], ~(~(~vec2<i32>(var_0.c.x, var_0.c.x)))), u_input.c, any(vec2<bool>(all(vec4<bool>(true, true, true, true)), func_4(Struct_2(vec3<bool>(var_1.x, var_1.x, false), global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.c), var_0).a.x || !var_1.x))).a.x, 22u)];
    let var_4 = var_2.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 17802u, u_input.b, 50325u), vec4<u32>(var_4.x, var_0.b.a.x, 49953u, 7102u)), ~vec4<u32>(var_2.x, 0u, 71917u, var_0.b.a.x)), ~(~(~var_2.x))), -1000f, ~var_3.b.ywx | (_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(80081u, 12u)], u_input.c.x), -var_0.b.b.xyx) << (abs(vec3<u32>(var_4.x, 34359u, 36762u)) % vec3<u32>(32u))), u_input.c.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b.a.x, u_input.a.x, 3867u, var_2.x & 1u), ~(~(~vec4<u32>(4294967295u, var_0.b.a.x, 10844u, 1u))), reverseBits(~(~vec4<u32>(75069u, 85823u, var_2.x, var_4.x)))));
}

