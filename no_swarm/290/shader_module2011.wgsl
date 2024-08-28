struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: Struct_4;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 0u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    global1 = Struct_4(global1.a);
    let var_0 = vec4<bool>(false, (arg_0.x || (~40041u == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4784u, arg_1.a, 55930u), vec4<u32>(u_input.a, 0u, 21798u, arg_1.a)))) | (any(arg_0) == select(!arg_0.x, true, all(arg_0))), false, true);
    var var_1 = global1.a;
    var var_2 = global1.a;
    var_2 = Struct_2(var_1.a);
    return _wgslsmith_div_u32(global2.x, arg_1.a);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(global1.a.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, -313f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(vec3<bool>(false, true, false), var_0.a), 36356u ^ global1.a.a.a), 21u)] + _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a.b), _wgslsmith_f_op_f32(-1f))));
    global1 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_u32(34056u, 4294967295u), 1013f)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2375f)))) * _wgslsmith_f_op_f32(sign(var_0.a.b))), _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_4(arg_0: f32) -> Struct_4 {
    global0 = array<f32, 21>();
    let var_0 = Struct_4(Struct_2(Struct_1(~(global2.x & 100098u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1000f)))));
    global1 = Struct_4(Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.a.a), vec2<u32>(var_0.a.a.a, 1u)), -157f)));
    let var_1 = Struct_3(1i, vec4<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), -2147483647i <= (u_input.b.x & u_input.b.x), all(vec2<bool>(false, true)) || true, true), ~global2.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.b, -273f) * vec2<f32>(1000f, arg_0)))));
    let var_2 = ~abs(global2.yx);
    return Struct_4(var_0.a);
}

fn func_5(arg_0: Struct_4) -> u32 {
    return ~arg_0.a.a.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_1(select(~(~(~1u)), func_5(func_4(_wgslsmith_f_op_f32(func_2(u_input.b.x, vec2<u32>(32898u, arg_1.c))))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-208f)))));
    var var_1 = func_4(global0[_wgslsmith_index_u32(global1.a.a.a, 21u)]);
    var var_2 = _wgslsmith_sub_i32(-19198i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 43106i, u_input.b.x), vec3<i32>(1i, u_input.b.x, 49563i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -15661i, 0i), vec3<i32>(55232i, 6650i, 23425i)), vec3<i32>(0i, arg_1.a, -arg_1.a))) & firstTrailingBit(-40802i);
    let var_3 = func_4(global1.a.a.b).a;
    let var_4 = vec2<i32>(u_input.b.x, abs(0i | reverseBits(u_input.b.x << (18319u % 32u))));
    return arg_1.b.x;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<f32, 21>();
    let var_0 = -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, 14418i, -6996i), select(vec4<i32>(arg_0.a, u_input.b.x, -66036i, -1i), -vec4<i32>(-1i, 36700i, -15637i, -2455i), arg_0.b), firstTrailingBit(vec4<i32>(arg_2.x, -1i, arg_2.x, arg_0.a) >> (vec4<u32>(arg_0.c, global2.x, 4294967295u, u_input.c) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.b.x, arg_0.a, arg_0.a, 0i)), ~vec4<i32>(-81918i, 39188i, -16679i, -22226i)));
    global2 = min(~vec3<u32>(1u, 1u, global1.a.a.a), vec3<u32>(_wgslsmith_mult_u32(global1.a.a.a, global1.a.a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 0u, 56306u, 37805u), vec4<u32>(25582u, global1.a.a.a, ~4294967295u, global2.x)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.d, global2.x, 0u), vec4<u32>(arg_0.c, 59609u, 4294967295u, 12314u)), countOneBits(1u))));
    var var_1 = func_4(2033f).a.a;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(15183u, 21u)], global1.a.a.b, global1.a.a.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, -1607f, arg_0.d.x) - vec3<f32>(-183f, -162f, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, arg_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 21u)])), true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_2(global1.a.a));
    global0 = array<f32, 21>();
    var var_0 = Struct_2(Struct_1(~(39070u >> (global2.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) - global0[_wgslsmith_index_u32(u_input.a, 21u)]))));
    var var_1 = var_0.a.b;
    var var_2 = func_6(Struct_3(~61148i, vec4<bool>(select(true, func_1(vec3<bool>(false, true, true), Struct_3(u_input.b.x, vec4<bool>(true, true, true, false), 27385u, vec2<f32>(515f, -237f)), vec3<f32>(global1.a.a.b, global0[_wgslsmith_index_u32(global2.x, 21u)], var_0.a.b)), false), true, true, false && any(vec4<bool>(false, true, true, true))), global1.a.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-226f, -532f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, -776f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, _wgslsmith_f_op_f32(var_0.a.b - 822f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(max(global1.a.a.b, global0[_wgslsmith_index_u32(26465u, 21u)]))))), u_input.b);
    var_1 = var_2.d.x;
    let var_3 = _wgslsmith_mod_vec3_i32(~reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-57439i, var_2.a, u_input.b.x), vec3<i32>(var_2.a, u_input.b.x, -1i)), countOneBits(vec3<i32>(-2147483647i, 34414i, -2147483647i)))), vec3<i32>(min(0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 19102i), ~(-34080i))), var_2.a, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(func_4(global0[_wgslsmith_index_u32(2182u, 21u)]).a.a.b)), var_2.d.x))), _wgslsmith_clamp_vec2_u32(global2.zy, vec2<u32>(~55300u, abs(72166u)), ~(~global2.yx)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(472f - var_2.d.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(524f, global0[_wgslsmith_index_u32(u_input.d, 21u)])) - global1.a.a.b))), -1i);
}

