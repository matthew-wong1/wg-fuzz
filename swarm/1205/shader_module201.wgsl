struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: array<Struct_5, 24>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 22707u, 19556u)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 59823u, 33265u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 71306u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 6809u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<u32>(49825u, 6485u, 46260u, 3192u)), Struct_1(vec2<bool>(true, true), vec4<u32>(45318u, 4294967295u, 55672u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<u32>(75229u, 125974u, 1u, 79973u)), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 0u, 3504u, 9017u)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 1u, 30593u, 1u)), Struct_1(vec2<bool>(false, true), vec4<u32>(36707u, 84102u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, false), vec4<u32>(60641u, 26898u, 15859u, 6510u)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 812u, 4694u)), Struct_1(vec2<bool>(false, false), vec4<u32>(82921u, 31422u, 1u, 52728u)), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 1u, 1u)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 31202u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec4<u32>(75519u, 0u, 82786u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec4<u32>(20533u, 4294967295u, 21484u, 22211u)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 34856u, 60378u, 45516u)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 2997u, 1u)));

var<private> global3: Struct_3;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 24u)];
    let var_1 = arg_2;
    return _wgslsmith_div_i32(0i, -firstLeadingBit(var_0.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = ~vec2<u32>(global3.b.x, max(abs(global3.b.x | global3.b.x), ~_wgslsmith_div_u32(u_input.a.x, 68939u)));
    var var_1 = global2[_wgslsmith_index_u32(var_0.x, 20u)];
    var var_2 = global2[_wgslsmith_index_u32(41464u, 20u)];
    let var_3 = vec2<u32>(~_wgslsmith_sub_u32(~(~var_0.x), ~u_input.a.x), global3.a.x);
    var var_4 = ~vec3<i32>(_wgslsmith_add_i32(u_input.b, func_3(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(var_1.b.x, 1u)], global0[_wgslsmith_index_u32(376u, 1u)]), Struct_1(vec2<bool>(arg_0.x, true), vec4<u32>(26039u, var_0.x, var_3.x, var_2.b.x)), global1[_wgslsmith_index_u32(var_1.b.x & 0u, 24u)])), ~u_input.b, ~u_input.b);
    return select(arg_1.xyx, !arg_1.yyx, !arg_1.zxx);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.x));
    global2 = array<Struct_1, 20>();
    let var_1 = select(select(func_2(arg_0, !vec4<bool>(true, arg_0.x, true, true)), !vec3<bool>(arg_0.x, true, arg_0.x), !(!select(vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, global3.c, global3.c), true))), vec3<bool>(all(arg_0), !select(func_2(arg_0, vec4<bool>(true, false, arg_0.x, true)).x, arg_0.x & global3.c, global3.c), !(true || !arg_0.x)), false);
    global1 = array<Struct_5, 24>();
    let var_2 = global2[_wgslsmith_index_u32(~0u, 20u)];
    return vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_div_f32(750f, _wgslsmith_f_op_f32(-1083f + -227f)), 452f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(global3.c, false), vec3<f32>(-1013f, 969f, 1180f))) + vec3<f32>(-526f, 450f, -1681f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, -1219f, 611f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, -1507f, -255f))))));
    global4 = u_input.b;
    var var_1 = var_0.x;
    let var_2 = Struct_3(vec4<u32>(49911u, _wgslsmith_sub_u32(_wgslsmith_add_u32(~global3.a.x, _wgslsmith_add_u32(32144u, global3.b.x)), _wgslsmith_div_u32(1u, 30457u & u_input.c.x)), u_input.a.x, 1389u), global3.b, select(global3.c, false, !(global3.c == global3.c) == !select(true, global3.c, global3.c)));
    var var_3 = !(!vec2<bool>(any(!vec2<bool>(global3.c, false)), global3.c));
    global4 = u_input.b;
    global2 = array<Struct_1, 20>();
    let var_4 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(-u_input.b), i32(-1i) * -1i, _wgslsmith_mult_i32(1i, 22828i), u_input.b), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 16892i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))) | countOneBits(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 141f);
}

