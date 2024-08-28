struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(-68089i, vec4<u32>(23210u, 1u, 0u, 28139u)), Struct_2(45883i, vec4<u32>(1u, 74890u, 4294967295u, 22072u)), Struct_2(i32(-2147483648), vec4<u32>(0u, 29444u, 4294967295u, 4941u)), Struct_2(34754i, vec4<u32>(0u, 0u, 1u, 1u)), Struct_2(-21582i, vec4<u32>(1u, 19131u, 1u, 4294967295u)), Struct_2(-174i, vec4<u32>(1u, 23745u, 10321u, 1u)), Struct_2(-1i, vec4<u32>(22852u, 4294967295u, 0u, 113948u)), Struct_2(i32(-2147483648), vec4<u32>(18124u, 0u, 4294967295u, 0u)), Struct_2(-36552i, vec4<u32>(20752u, 23179u, 0u, 4294967295u)), Struct_2(1i, vec4<u32>(0u, 1u, 40115u, 12217u)), Struct_2(30551i, vec4<u32>(38765u, 14241u, 0u, 8687u)), Struct_2(i32(-2147483648), vec4<u32>(6179u, 53470u, 2638u, 17155u)), Struct_2(61580i, vec4<u32>(0u, 4294967295u, 1u, 94658u)), Struct_2(-1i, vec4<u32>(13848u, 39157u, 0u, 56748u)), Struct_2(0i, vec4<u32>(47984u, 0u, 1u, 4294967295u)), Struct_2(-61867i, vec4<u32>(56174u, 0u, 100880u, 65244u)), Struct_2(82771i, vec4<u32>(28887u, 30795u, 6312u, 16293u)), Struct_2(-1i, vec4<u32>(1u, 4294967295u, 44975u, 6142u)), Struct_2(-43739i, vec4<u32>(110307u, 0u, 41567u, 1u)), Struct_2(i32(-2147483648), vec4<u32>(40364u, 44177u, 810u, 0u)), Struct_2(2147483647i, vec4<u32>(1u, 0u, 80454u, 16376u)), Struct_2(1i, vec4<u32>(4294967295u, 1u, 16273u, 4294967295u)), Struct_2(-10272i, vec4<u32>(20679u, 12851u, 82281u, 62358u)), Struct_2(66772i, vec4<u32>(26943u, 4294967295u, 16324u, 44280u)), Struct_2(-1i, vec4<u32>(4294967295u, 27752u, 21535u, 16208u)), Struct_2(-24515i, vec4<u32>(15066u, 28147u, 16024u, 144566u)), Struct_2(-1i, vec4<u32>(64476u, 64798u, 24232u, 0u)), Struct_2(0i, vec4<u32>(4294967295u, 4294967295u, 39630u, 31351u)));

var<private> global1: array<vec3<f32>, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 1u)]));
    global0 = array<Struct_2, 28>();
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(max(1i, 0i), -2147483647i) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x))), true, -779f);
    global0 = array<Struct_2, 28>();
    let var_2 = abs(u_input.b);
    return _wgslsmith_f_op_f32(sign(var_1.c));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = 787f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(-1632f, arg_2.c))))));
    let var_1 = Struct_1(~(-1i), false, _wgslsmith_f_op_f32(f32(-1f) * -1092f));
    global0 = array<Struct_2, 28>();
    var var_2 = var_1.b;
    let var_3 = 0i;
    return 4294967295u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> bool {
    global0 = array<Struct_2, 28>();
    var var_0 = 1i;
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec3<i32>(0i, arg_2, arg_2)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-140f, 380f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))), Struct_1(arg_2, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))));
    var var_2 = Struct_2(3778i, select(reverseBits(vec4<u32>(u_input.b.x, 11242u << (u_input.a % 32u), 103329u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a))), countOneBits(firstTrailingBit(vec4<u32>(66603u, 1u, 1u, u_input.a))) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 64574u, u_input.b.x), vec4<u32>(4294967295u, 54665u, 1u, u_input.b.x)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), true))));
    var_1 = _wgslsmith_sub_u32(0u, u_input.a) | u_input.a;
    return _wgslsmith_div_u32(31438u >> (1u % 32u), u_input.a) == u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(true, true, true, all(vec2<bool>(true, true))), !select(vec4<bool>(u_input.a <= u_input.a, true, true, true), vec4<bool>(func_1(vec2<i32>(2147483647i, 7597i), vec2<f32>(1000f, 424f), 2147483647i, 35930i), true, true, true), true), true);
    var var_1 = Struct_2(_wgslsmith_mult_i32(0i, -50986i), firstTrailingBit(firstTrailingBit(reverseBits(~vec4<u32>(47202u, 19403u, 1u, u_input.a)))));
    global0 = array<Struct_2, 28>();
    var var_2 = _wgslsmith_f_op_f32(round(1f));
    global1 = array<vec3<f32>, 1>();
    let var_3 = vec2<f32>(1000f, 1f);
    global0 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, max(4294967295u, ~_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(4294967295u, var_1.b.x, 19769u, u_input.b.x))), ~(var_1.b.x ^ u_input.a), _wgslsmith_sub_u32(1u, u_input.a)), vec4<i32>(var_1.a, 1i, 1i, var_1.a) ^ vec4<i32>(_wgslsmith_div_i32(1i, ~var_1.a), _wgslsmith_mult_i32(~8564i, var_1.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(43854i, -1i, -2147483647i), vec3<i32>(var_1.a, -1i, var_1.a)), vec3<i32>(-1i, -2147483647i, var_1.a)), -2147483647i), _wgslsmith_f_op_f32(-399f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f * var_3.x)) + _wgslsmith_f_op_f32(-var_3.x))), vec4<i32>(-1i) * -(abs(vec4<i32>(0i, var_1.a, var_1.a, -63711i)) & firstLeadingBit(vec4<i32>(15886i, var_1.a, var_1.a, var_1.a))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.a, 0i, var_1.a), vec3<i32>(var_1.a, var_1.a, -1i) ^ vec3<i32>(-26920i, 1i, -1i), vec3<i32>(var_1.a, var_1.a, -10734i) ^ vec3<i32>(2147483647i, var_1.a, var_1.a)) << (abs(firstLeadingBit(var_1.b.xzy)) % vec3<u32>(32u)));
}

