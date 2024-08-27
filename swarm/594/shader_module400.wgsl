struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = array<bool, 16>();
    global1 = array<Struct_1, 30>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1356f, 329f, global2.b)) * vec3<f32>(arg_0, global2.b, 1000f)))) - vec3<f32>(_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(-1000f - -1016f)), -202f, 144f)), firstTrailingBit(vec3<u32>(u_input.b, ~u_input.a, 18545u >> (u_input.b % 32u))));
    var var_1 = -16717i;
    var var_2 = global2.b;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 707f, _wgslsmith_f_op_f32(-arg_0)), max(countOneBits(~var_0.b), var_0.b));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> bool {
    var var_0 = -1i;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a + _wgslsmith_f_op_vec3_f32(-arg_2.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-arg_2.a), all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(arg_2.b.x, 16u)])))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, arg_2.a.x, arg_3))), vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-816f + 283f), global2.b), _wgslsmith_f_op_f32(arg_2.a.x * 686f)), true)));
    global2 = Struct_1(vec4<bool>(true, -1117f == _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(round(arg_2.a.x))), true, global0[_wgslsmith_index_u32(func_2(-437f).b.x, 16u)] && false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1770f), -1182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) == -155f, vec3<i32>(arg_0, select(min(-global2.d.x, global2.e.x), _wgslsmith_div_i32(arg_1.x | -15647i, 5055i), (var_1.x <= global2.b) || !global2.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2.d, global2.d), vec3<i32>(global2.e.x, 33496i, -30971i)), _wgslsmith_div_i32(-71710i, -arg_0))), arg_1);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(0u ^ ~_wgslsmith_sub_u32(arg_2.b.x, 44885u)), u_input.b ^ arg_2.b.x), 30u)];
    var var_2 = ~(~arg_2.b);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, global2.b)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 16u)];
    global2 = Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(32436u, 16u)], !(!any(vec3<bool>(global0[_wgslsmith_index_u32(2986u, 16u)], global2.c, global2.a.x))), func_3(_wgslsmith_div_i32(global2.e.x, -18042i) & _wgslsmith_mult_i32(arg_3.x, arg_3.x), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2.d.x, global2.e.x), vec2<i32>(arg_3.x, 29177i)), arg_3), func_2(_wgslsmith_f_op_f32(ceil(991f))), global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(global2.b - 458f)))), all(select(select(!arg_1.ywx, !global2.a.zzx, global0[_wgslsmith_index_u32(~u_input.a, 16u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], true)), any(arg_1.zww))), _wgslsmith_add_vec3_i32(global2.d, vec3<i32>(firstLeadingBit(arg_3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, arg_3.x), vec3<i32>(global2.e.x, arg_3.x, arg_3.x)), -40723i)), vec2<i32>(0i >> ((_wgslsmith_div_u32(u_input.a, arg_0) ^ 234u) % 32u), 1i));
    var var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    global2 = Struct_1(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -491f), func_3(-43212i ^ arg_3.x, reverseBits(-(~vec2<i32>(-67259i, -57299i))), Struct_3(vec3<f32>(-1322f, _wgslsmith_f_op_f32(select(global2.b, global2.b, global0[_wgslsmith_index_u32(14361u, 16u)])), _wgslsmith_f_op_f32(min(461f, 626f))), ~vec3<u32>(arg_2, 53999u, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.x, global2.b)))), 2572f)), ~(-global2.d) & (~global2.d ^ global2.d), ((arg_3 & _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 15403i), global2.d.yy)) & vec2<i32>(global2.e.x, select(global2.d.x, global2.d.x, false))) << (vec2<u32>(969u, 0u) % vec2<u32>(32u)));
    return arg_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<bool, 16>();
    global2 = Struct_1(arg_0, _wgslsmith_f_op_f32(784f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1226f, 325f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) - _wgslsmith_f_op_f32(-345f * -702f)))), arg_1, -vec3<i32>(global2.e.x, global2.d.x, -global2.e.x), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-17620i, 37809i, 1i, -23122i) & _wgslsmith_div_vec4_i32(vec4<i32>(global2.e.x, 57211i, -13867i, -20734i), vec4<i32>(-75890i, -1i, 21494i, -1706i)), -(~vec4<i32>(global2.e.x, global2.e.x, 1i, -22470i))), global2.e.x));
    global2 = global1[_wgslsmith_index_u32((u_input.b | func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1488f - arg_2.x) * _wgslsmith_f_op_f32(abs(arg_2.x)))).b.x) & (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(41005u, 1u)), countOneBits(vec2<u32>(u_input.a, u_input.b))), _wgslsmith_add_u32(u_input.a, 6944u)) ^ 0u), 30u)];
    global2 = Struct_1(vec4<bool>(any(global2.a), 21885u >= _wgslsmith_mult_u32(u_input.a | 20743u, _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u)), any(select(global2.a.yxy, global2.a.wxy, select(global2.a.xyy, arg_0.yzx, global2.a.wwx))), false), func_2(_wgslsmith_f_op_f32(437f + 929f)).a.x, !select(all(!arg_0), true, any(global2.a.yw)), -global2.d, select(vec2<i32>(44354i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), global2.d), global2.e.x), -vec2<i32>(global2.e.x, 2147483647i), global2.a.x));
    var var_0 = 605f;
    return global1[_wgslsmith_index_u32(u_input.b, 30u)];
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1179f, 595f, 122f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(904f, global2.b, -1000f) + vec3<f32>(global2.b, 1335f, 554f)), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, global2.b, global2.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 655f, global2.b) - vec3<f32>(global2.b, -1450f, global2.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 1306f, 1795f) * vec3<f32>(-140f, global2.b, arg_0.b)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, global2.b, global2.b), vec3<f32>(-389f, 1000f, global2.b))))), max(~select(~vec3<u32>(u_input.b, 64364u, 26333u), reverseBits(vec3<u32>(2842u, u_input.b, 30255u)), true), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37150u, 4294967295u), vec2<u32>(u_input.b, 5696u)), u_input.b, u_input.a)));
    var var_1 = u_input.a;
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(~var_0.b, vec3<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(54689u, u_input.b), vec2<u32>(1u, u_input.b)), 4294967295u)));
    let var_3 = ~u_input.b;
    var_0 = Struct_3(var_0.a, reverseBits(firstTrailingBit(~(vec3<u32>(7012u, var_0.b.x, 1u) & var_0.b))));
    return func_2(790f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(select(vec4<bool>(func_1(u_input.b, global2.a, u_input.b, global2.e), any(global2.a.wxy), global2.a.x, false), !global2.a, false), (max(14851i, global2.d.x) == 29431i) || select(true, global0[_wgslsmith_index_u32(26330u, 16u)], false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b, -1784f, -1889f, 1000f), vec4<f32>(-1173f, global2.b, global2.b, global2.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, 2473f, global2.b, -1381f))))));
    let var_1 = Struct_2(max(-_wgslsmith_div_i32(24632i, -global2.d.x), reverseBits(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(1i, global2.e.x)))), countOneBits(max(vec4<u32>(_wgslsmith_add_u32(var_0.b.x, 42240u), ~19517u, var_0.b.x, _wgslsmith_div_u32(var_0.b.x, u_input.a)), firstTrailingBit(vec4<u32>(6338u, 4294967295u, var_0.b.x, u_input.a)))));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec4<u32>(_wgslsmith_sub_u32(~var_1.b.x, 77160u), var_1.b.x << (var_0.b.x % 32u), abs(~u_input.b), reverseBits(abs(reverseBits(40617u)))));
}

