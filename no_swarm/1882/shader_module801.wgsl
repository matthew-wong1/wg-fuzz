struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(-27394i, -23077i), -1i, 1i);

var<private> global1: array<i32, 26>;

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = -1i ^ global1[_wgslsmith_index_u32(7835u ^ global0.a.a.x, 26u)];
    return 870f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(u_input.c, global0.c) >> (71482u % 32u);
    let var_1 = global2[_wgslsmith_index_u32(36499u, 32u)];
    global1 = array<i32, 26>();
    let var_2 = Struct_2(global0.a, vec2<i32>(select(global1[_wgslsmith_index_u32(~1u, 26u)], ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 2147483647i, 0i, 36920i), vec4<i32>(global0.c, global0.b.x, global1[_wgslsmith_index_u32(global0.a.a.x, 26u)], u_input.a.x)), _wgslsmith_f_op_f32(func_3(arg_0.a, Struct_2(global0.a, vec2<i32>(1i, 39429i), -3335i, -34167i), arg_1, Struct_2(Struct_1(global3.a), global0.b, global1[_wgslsmith_index_u32(1u, 26u)], u_input.c))) < _wgslsmith_f_op_f32(206f * -293f)), reverseBits(_wgslsmith_div_i32(-global1[_wgslsmith_index_u32(global3.a.x, 26u)], -global0.d))), -37664i, 2147483647i);
    let var_3 = global0.a;
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u >> (u_input.d % 32u), ~36970u), _wgslsmith_add_u32(~global0.a.a.x, min(30512u, global0.a.a.x))), ~(~(~u_input.d))));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = Struct_1(global0.a.a);
    var_0 = func_2(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -2834f));
    global0 = Struct_2(global0.a, ~(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 26u)], 0i), vec2<i32>(global1[_wgslsmith_index_u32(34375u, 26u)], 0i), vec2<i32>(global0.c, -10890i)) | vec2<i32>(global1[_wgslsmith_index_u32(global0.a.a.x, 26u)], 1i))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(37328u, 36568u), 26u)], ~(~(~(-u_input.b.x))));
    global0 = Struct_2(Struct_1(reverseBits(~(global0.a.a >> (vec2<u32>(2645u, global0.a.a.x) % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xyy, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), max(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.d, 26u)], global1[_wgslsmith_index_u32(global3.a.x, 26u)])))), ~u_input.c), global1[_wgslsmith_index_u32(4294967295u, 26u)], abs(2147483647i));
    var var_1 = Struct_2(func_2(global0.a, -1000f), u_input.b.xz, _wgslsmith_mod_i32(max(abs(-13948i), global0.c), -(~1i)), _wgslsmith_div_i32(min(2147483647i, -max(u_input.c, u_input.c)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 11157u)), vec2<u32>(0u, var_0.a.x)), 26u)]));
    return StorageBuffer(7064u, abs(abs(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), global0.d, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f * -815f));
    var var_1 = Struct_1(select(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(global3.a.x, global0.a.a.x)), firstTrailingBit(firstTrailingBit(global0.a.a))), firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.a, global0.a.a), ~vec2<u32>(0u, u_input.d))), true));
    var var_2 = u_input.d;
    var var_3 = global0.a;
    global2 = array<vec2<bool>, 32>();
    let var_4 = reverseBits(36040i);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-536f, _wgslsmith_f_op_f32(ceil(197f)), _wgslsmith_f_op_f32(1675f - 183f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, -313f, -420f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-931f, 435f, 1481f))))))));
}

