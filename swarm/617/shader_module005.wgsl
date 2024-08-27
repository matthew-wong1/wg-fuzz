struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 2268u, 13575u), vec3<u32>(34082u, 1u, 6931u), vec3<u32>(0u, 0u, 40630u), vec3<u32>(0u, 16872u, 14371u), vec3<u32>(6340u, 0u, 27981u), vec3<u32>(0u, 4294967295u, 65202u), vec3<u32>(15761u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 33064u), vec3<u32>(4294967295u, 24314u, 1u), vec3<u32>(4294967295u, 54607u, 4294967295u), vec3<u32>(83481u, 4294967295u, 166390u), vec3<u32>(1u, 18624u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u));

var<private> global3: i32;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(1000f, 374f, -1000f), 2591u, vec2<i32>(0i, 2147483647i), 9272u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(global4.a + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(1000f, global4.a.x)), arg_1, 988f), vec3<f32>(_wgslsmith_div_f32(507f, global4.a.x), -1079f, -1758f)))), arg_0, vec2<i32>(global4.c.x, 1i), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(19524u, global4.d << (global4.b % 32u)), max(abs(31775u), global4.b), _wgslsmith_mult_u32(~0u, ~global4.d), arg_0 | _wgslsmith_mult_u32(arg_0, 1u)), vec4<u32>(_wgslsmith_mod_u32(arg_0, u_input.b.x), _wgslsmith_div_u32(~1u, 4294967295u), 1u, ~(~1u))));
    var var_0 = -(~vec2<i32>(min(17401i, -2147483647i), u_input.a));
    global1 = array<vec3<u32>, 14>();
    let var_1 = global4.c;
    let var_2 = ~abs(countOneBits(u_input.b.x) | ~firstLeadingBit(19984u));
    return -2147483647i & _wgslsmith_dot_vec3_i32(reverseBits(-(vec3<i32>(u_input.a, 0i, var_1.x) | vec3<i32>(global4.c.x, global4.c.x, global4.c.x))), vec3<i32>(firstTrailingBit(var_1.x), _wgslsmith_sub_i32(firstLeadingBit(20987i), 2676i), (u_input.a & u_input.a) << (19353u % 32u)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_3(~vec4<i32>(-52609i ^ global4.c.x, -39711i, u_input.a, global4.c.x));
    global2 = array<vec3<u32>, 13>();
    global3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-_wgslsmith_dot_vec4_i32(var_1.a, var_1.a)), u_input.a), _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, global4.c.x), abs(_wgslsmith_add_vec2_i32(global4.c, vec2<i32>(-2147483647i, global4.c.x)))), vec2<i32>(func_3(global4.b, _wgslsmith_f_op_f32(-1779f * 2445f)), global4.c.x)));
    var var_2 = vec3<f32>(-1492f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(ceil(global4.a.x))) - global4.a.x), 536f);
    return firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(38759i, 1i, global4.c.x) ^ min(vec3<i32>(global4.c.x, u_input.a, global4.c.x), var_1.a.xxy), _wgslsmith_mod_vec3_i32(-var_1.a.xwx, ~var_1.a.yyz))) & -1i;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    var var_0 = select(vec3<bool>(arg_2.x, all(vec3<bool>(arg_2.x, true, !arg_2.x)), true), select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(33781u, min(~arg_1.b.x, _wgslsmith_div_u32(4294967295u, 17042u))), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~arg_1.b.x), 20847u), 4u)], global0[_wgslsmith_index_u32(global4.d, 4u)]), global0[_wgslsmith_index_u32(u_input.b.x, 4u)]);
    var var_1 = Struct_4(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 1i), ~u_input.a), _wgslsmith_dot_vec2_i32(global4.c & global4.c, global4.c), _wgslsmith_div_i32(func_2(global4.a.x), -2147483647i)) & _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, -3806i, arg_0) ^ vec3<i32>(u_input.a, u_input.a, 8529i)), -abs(vec3<i32>(56164i, arg_0, arg_0))), Struct_1(global4.a.x, vec2<u32>(~(~12727u), u_input.b.x << (~arg_1.b.x % 32u)), global4.a.x), Struct_2(vec3<f32>(410f, 967f, 642f), 26351u, ~_wgslsmith_clamp_vec2_i32(global4.c, vec2<i32>(-1i, 1i), vec2<i32>(u_input.a, -1i)) | vec2<i32>(i32(-1i) * -27154i, arg_0), global4.d));
    global2 = array<vec3<u32>, 13>();
    global2 = array<vec3<u32>, 13>();
    var var_2 = !vec2<bool>(var_0.x, arg_2.x);
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 13>();
    let var_0 = -vec2<i32>(_wgslsmith_div_i32(11548i, func_1(-2147483647i, Struct_1(-2324f, vec2<u32>(u_input.b.x, 49858u), global4.a.x), vec2<bool>(false, false))), -7055i) << (u_input.b % vec2<u32>(32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global4.a, global4.a))))), ~global4.b, reverseBits(~(~var_0)), 1u);
    global0 = array<vec3<bool>, 4>();
    var var_2 = vec4<u32>(global4.b >> (~var_1.b % 32u), ~reverseBits(reverseBits(~global4.b)), ~0u, u_input.b.x);
    var_2 = ~(~select(~vec4<u32>(var_2.x, 1u, var_1.d, 8375u), ~vec4<u32>(u_input.b.x, var_1.d, var_1.b, 14101u), true));
    global3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(~global4.b, 1u, var_2.x, var_2.x)), reverseBits(vec4<u32>(var_1.d, 28337u, 78608u, var_1.b)) | _wgslsmith_div_vec4_u32(vec4<u32>(25214u, global4.d, 4294967295u, u_input.b.x), abs(vec4<u32>(global4.d, u_input.b.x, u_input.b.x, var_2.x)))), var_1.c);
}

