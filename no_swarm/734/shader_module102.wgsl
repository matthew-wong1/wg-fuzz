struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec2<i32> = vec2<i32>(-36760i, 1i);

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = Struct_1(false, arg_3.a.b, arg_3.a.c, (u_input.b.x >> (4294967295u % 32u)) & ~1u);
    var_0 = arg_3.a;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_3.a.c.x), _wgslsmith_f_op_vec2_f32(-var_0.c));
    var var_2 = select(all(!select(!vec4<bool>(false, var_0.a, arg_3.a.a, true), select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(arg_3.a.a, var_0.a, arg_3.a.a, var_0.a), var_0.a), select(arg_3.a.a, arg_3.a.a, var_0.a))), !(!arg_3.a.a), (var_0.d | abs(4294967295u)) > 1u);
    global0 = array<Struct_2, 10>();
    return arg_3.a.b;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(!all(vec4<bool>(false, true, false, false)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(38951i, global1.x, global1.x, global1.x), func_3(global1.x, 1428f, vec2<f32>(-890f, -1236f), global0[_wgslsmith_index_u32(1u, 10u)])), -(~vec4<i32>(global1.x, global1.x, -1i, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, _wgslsmith_f_op_f32(f32(-1f) * -756f)) * vec2<f32>(_wgslsmith_f_op_f32(1072f - 1119f), 251f)), 1u), 17200i, global1.x);
    global2 = ~4294967295u;
    var var_1 = -790f;
    var var_2 = ~(~(~(~var_0.a.d)));
    var var_3 = var_0.a.a;
    return vec3<bool>(false, false, var_0.a.a);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.c.x)))) + arg_1.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.c.x)) + _wgslsmith_f_op_f32(floor(-2265f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.c.x), 379f)));
    var var_1 = func_2();
    let var_2 = Struct_3(arg_1.a, arg_1.a.b.x, ~_wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.a.b.zy, vec2<i32>(arg_1.a.b.x, global1.x)), firstLeadingBit(vec2<i32>(arg_1.a.b.x, global1.x)))));
    let var_3 = Struct_3(Struct_1(var_2.a.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, arg_1.a.b.x, 1i), vec4<i32>(17582i, 16967i, -2147483647i, -35052i)), firstTrailingBit(arg_1.a.b))), var_0.zy, 4294967295u), arg_1.a.b.x, firstTrailingBit(-2147483647i) ^ _wgslsmith_dot_vec3_i32(arg_1.a.b.xwx, vec3<i32>(countOneBits(-57283i), ~(-1i), var_2.a.b.x)));
    let var_4 = -_wgslsmith_clamp_vec4_i32(arg_1.a.b, -vec4<i32>(_wgslsmith_div_i32(1i, var_3.a.b.x), global1.x, select(-16318i, -17715i, var_3.a.a), arg_1.a.b.x), _wgslsmith_sub_vec4_i32(var_2.a.b, ~min(vec4<i32>(1i, global1.x, global1.x, 39553i), var_3.a.b)));
    return var_3.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 68723u;
    let var_0 = min(vec3<i32>(-global1.x, _wgslsmith_div_i32(27576i, 43531i), -(~global1.x) << (0u % 32u)), reverseBits(vec3<i32>(max(_wgslsmith_mult_i32(-11014i, global1.x), ~21074i), _wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(35214i, global1.x, -9690i, -14275i), vec4<i32>(3569i, 1i, global1.x, -3456i))), countOneBits(global1.x) & global1.x)));
    let var_1 = !(!(((48544u >= u_input.b.x) | any(vec2<bool>(false, true))) | true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -841f), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1588f))) + _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_i32(0i, 15578i), global0[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 10u)])))) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(818f * -1000f), 1625f))));
    let var_3 = vec2<i32>(select(-1i, ~(-1i), false), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(~var_3)), global1.x);
}

