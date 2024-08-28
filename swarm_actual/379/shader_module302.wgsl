struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 11>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    let var_0 = _wgslsmith_f_op_f32(select(319f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(min(arg_0.b, -127f)))))), all(!select(select(vec2<bool>(global0.d.x, arg_0.a.x), arg_0.a, arg_3.d.x), arg_0.a, global0.d.x | global0.d.x))));
    var var_1 = global0.e;
    var_1 = select(!select(vec3<bool>(false, true, arg_0.c.b || true), select(arg_3.d, global0.d, !global0.d), true), select(global0.d, !select(vec3<bool>(arg_3.d.x, true, true), !global0.d, vec3<bool>(arg_3.d.x, global0.d.x, true)), vec3<bool>(_wgslsmith_f_op_f32(select(global0.b, arg_3.b, global0.e.x)) <= -221f, arg_0.c.b || true, select(arg_3.e.x, true, true))), global0.d);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32) -> vec4<u32> {
    global0 = Struct_4(~(countOneBits(~global0.a) ^ ~(vec2<u32>(global0.a.x, global0.a.x) << (global0.a % vec2<u32>(32u)))), arg_1.b, _wgslsmith_clamp_vec3_i32(arg_0, arg_0, u_input.a), vec3<bool>(arg_1.a.x, (any(vec3<bool>(arg_1.c.b, true, false)) | (global0.e.x & false)) | !func_3(Struct_3(vec2<bool>(global0.d.x, global0.d.x), -580f, Struct_1(arg_1.d.a, arg_1.c.b, arg_1.c.c), arg_1.d), 1u, Struct_1(vec4<i32>(-64771i, global0.c.x, global1[_wgslsmith_index_u32(global0.a.x, 11u)], 1i), true, arg_0.xz), Struct_4(vec2<u32>(10857u, 111123u), global0.b, global0.c, global0.d, vec3<bool>(arg_1.c.b, false, true))), all(global0.d)), !global0.d);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, global0.b)) - _wgslsmith_div_vec2_f32(vec2<f32>(368f, arg_1.b), vec2<f32>(-1830f, global0.b))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, 2033f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, global0.b))))), vec2<f32>(global0.b, -541f));
    global1 = array<i32, 11>();
    var var_1 = vec2<bool>(false, arg_1.c.b || arg_1.c.b);
    var var_2 = Struct_1(select(select(~vec4<i32>(arg_2, -1i, -11973i, -37162i), arg_1.c.a ^ arg_1.c.a, !global0.e.x) ^ arg_1.d.a, vec4<i32>(2147483647i, min(global0.c.x, arg_1.d.a.x), arg_2 >> (_wgslsmith_mult_u32(1u, global0.a.x) % 32u), 0i), firstTrailingBit(4294967295u | global0.a.x) <= select(_wgslsmith_add_u32(66203u, 2535u), global0.a.x, global0.d.x & arg_1.c.b)), var_1.x, abs(vec2<i32>(_wgslsmith_div_i32(-2147483647i >> (global0.a.x % 32u), arg_0.x ^ 0i), 0i)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, global0.a.x, 4294967295u, global0.a.x)), abs(~(vec4<u32>(4294967295u, global0.a.x, 4294967295u, global0.a.x) ^ vec4<u32>(global0.a.x, global0.a.x, 1u, global0.a.x)))), vec4<u32>(~1u, _wgslsmith_sub_u32(global0.a.x, _wgslsmith_mod_u32(global0.a.x | global0.a.x, 0u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.a.x, global0.a.x) | global0.a.x, global0.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.a.x, 2434u, 4294967295u), vec3<u32>(global0.a.x, global0.a.x, 5888u), global0.d), vec3<u32>(global0.a.x, 4294967295u, 24127u) << (vec3<u32>(4727u, global0.a.x, global0.a.x) % vec3<u32>(32u))), ~(0u ^ global0.a.x))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    global1 = array<i32, 11>();
    global0 = Struct_4(vec2<u32>(66351u, _wgslsmith_dot_vec4_u32(func_2(~vec3<i32>(u_input.a.x, -24637i, arg_2), Struct_3(global0.d.yy, arg_1, Struct_1(vec4<i32>(26445i, arg_0, global0.c.x, global0.c.x), global0.d.x, vec2<i32>(1i, global1[_wgslsmith_index_u32(global0.a.x, 11u)])), Struct_2(vec4<i32>(arg_0, -2147483647i, arg_2, -2147483647i))), _wgslsmith_mod_i32(arg_0, arg_0)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<u32>(4294967295u, 0u, 1u, 0u)), vec4<u32>(global0.a.x, 24257u, 0u, 0u) | vec4<u32>(35505u, 1u, 9035u, 0u)))), global0.b, -(~global0.c), !vec3<bool>(global0.d.x, global0.e.x, global0.a.x <= (37015u & global0.a.x)), vec3<bool>(global0.e.x, global0.d.x, ((global0.a.x | global0.a.x) <= 1u) | any(vec3<bool>(false, true, true))));
    global1 = array<i32, 11>();
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_2, global1[_wgslsmith_index_u32(0u, 11u)], 2147483647i, 49610i), -vec4<i32>(0i, 2147483647i, 27291i, global1[_wgslsmith_index_u32(37208u, 11u)])), max(vec4<i32>(arg_2, arg_0, arg_2, global0.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -8192i, global1[_wgslsmith_index_u32(global0.a.x, 11u)], -1i), vec4<i32>(global0.c.x, u_input.a.x, 1i, 10043i)))), vec4<i32>(-56869i, global1[_wgslsmith_index_u32(global0.a.x, 11u)] & 0i, 24626i, _wgslsmith_add_i32(global0.c.x, u_input.a.x)) | ~vec4<i32>(23049i, 21231i, 2147483647i, -1i)));
    let var_1 = Struct_4(vec2<u32>(_wgslsmith_add_u32(abs(global0.a.x & 1u), _wgslsmith_mod_u32(118632u, 18965u)), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))), vec3<i32>(abs(37815i), -_wgslsmith_add_i32(10923i, var_0.a.x), 35321i) ^ ~(u_input.a & countOneBits(var_0.a.zyw)), select(vec3<bool>(!global0.d.x, all(!vec4<bool>(true, global0.d.x, false, global0.e.x)), true), select(select(!global0.d, global0.d, global0.e), global0.d, global0.d), !select(global0.d, global0.e, false)), global0.d);
    return 1u;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    global1 = array<i32, 11>();
    let var_0 = ~vec2<u32>(global0.a.x, 5012u);
    let var_1 = abs(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(36557u, 4294967295u)), ~abs(global0.a.x ^ global0.a.x)));
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    return StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(global0.c.x, 1i), _wgslsmith_dot_vec2_i32(u_input.a.zx, global0.c.zz), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global0.a.x, 14145u, var_0.x, 549u), ~vec4<u32>(var_1, 0u, var_0.x, var_0.x)), 11u)]), vec4<u32>(_wgslsmith_mult_u32(19422u, ~(47226u << (var_0.x % 32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(global0.a.x, var_0.x, 35716u)), vec3<u32>(var_0.x, global0.a.x, global0.a.x), vec3<u32>(0u, 12185u, var_0.x) << (vec3<u32>(var_0.x, 0u, var_1) % vec3<u32>(32u))), ~vec3<u32>(21752u, 13629u, 32844u) ^ ~vec3<u32>(var_1, var_0.x, global0.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 44402u, global0.a.x) | abs(vec3<u32>(0u, var_1, var_1)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, global0.a.x, 9707u), vec3<u32>(global0.a.x, 0u, 20018u))), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(vec4<bool>(func_1(2147483647i, -470f, -18717i) <= firstTrailingBit(global0.a.x), !(!global0.e.x), (global1[_wgslsmith_index_u32(global0.a.x, 11u)] != 12264i) == all(vec4<bool>(global0.e.x, global0.d.x, true, global0.e.x)), true), vec4<bool>(!select(true, false, false), false, !(!global0.e.x), !func_3(Struct_3(global0.e.zx, global0.b, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(global0.a.x, 11u)], 6377i, u_input.a.x, -4976i), false, vec2<i32>(-1i, global1[_wgslsmith_index_u32(global0.a.x, 11u)])), Struct_2(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(29343u, 11u)], u_input.a.x, -19374i))), global0.a.x, Struct_1(vec4<i32>(global0.c.x, 36136i, -1i, global0.c.x), global0.d.x, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.a.x)), Struct_4(global0.a, global0.b, u_input.a, vec3<bool>(global0.e.x, true, global0.e.x), global0.d))), global0.a.x > abs(~global0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -922f, 1292f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1294f, global0.b, -251f)))), vec3<f32>(_wgslsmith_div_f32(1239f, -720f), _wgslsmith_f_op_f32(188f - 1000f), _wgslsmith_f_op_f32(510f - global0.b))))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~(-26773i), global1[_wgslsmith_index_u32(global0.a.x, 11u)], -13896i ^ global0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, 44429i, 11602i), vec4<i32>(-2147483647i, -44340i, 1i, 14425i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-4509i, 1114i, -1i, global1[_wgslsmith_index_u32(global0.a.x, 11u)]), vec4<i32>(u_input.a.x, global0.c.x, -30933i, global0.c.x))), true, vec2<i32>(-8962i, -41438i)), global0.e.x);
}

