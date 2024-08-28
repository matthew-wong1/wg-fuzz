struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(23186i, 67900i, 0i, 2147483647i, 1i, -5673i, 0i, 19174i, i32(-2147483648), 53726i, i32(-2147483648), 16884i, 0i, 2147483647i, -69142i, -1i, i32(-2147483648), 2147483647i, 11572i, 1i, i32(-2147483648), -22483i, 2147483647i, -2772i, -52681i);

var<private> global1: bool = false;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = !vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), arg_2.x >= _wgslsmith_add_i32(-1i, arg_2.x));
    var var_1 = arg_0.e;
    let var_2 = ~(~vec2<u32>(abs(~49228u), _wgslsmith_clamp_u32(0u, ~u_input.b.x, 23470u)));
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(239f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(962f, arg_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * -132f)))), -1000f));
    return abs(-9240i & ~global0[_wgslsmith_index_u32(~(~var_2.x), 25u)]);
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = vec3<i32>(~(~_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(u_input.b.x, 25u)], _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]))), ~abs(func_3(Struct_3(global2.x, global2.x, global0[_wgslsmith_index_u32(0u, 25u)], global2.x, Struct_2(global0[_wgslsmith_index_u32(33504u, 25u)])), Struct_2(global0[_wgslsmith_index_u32(27525u, 25u)]), -vec4<i32>(global0[_wgslsmith_index_u32(1u, 25u)], 0i, -1i, global0[_wgslsmith_index_u32(0u, 25u)]), Struct_2(-12734i))), global0[_wgslsmith_index_u32(1u, 25u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, -529f, -839f, -1403f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1030f, 1594f, global2.x) + vec4<f32>(364f, -1000f, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, global2.x, -213f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(394f, -271f, global2.x, global2.x) - vec4<f32>(global2.x, -801f, 390f, 243f))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(-1416f)), -104f), arg_0))));
    let var_2 = Struct_1(vec2<bool>(true, all(vec4<bool>(any(vec3<bool>(arg_0, true, false)), true, true, arg_0))), -1i, ~_wgslsmith_sub_vec2_i32(~var_0.zx, _wgslsmith_sub_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 1i), var_0.zx, arg_0), vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(34697u, 25u)]) ^ var_0.zy)), _wgslsmith_f_op_f32(1969f - var_1.x));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(1865f - global2.x))) * var_1.x)));
    global2 = _wgslsmith_f_op_vec2_f32(select(var_1.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -2135f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1833f, global2.x)))), !(!all(vec4<bool>(false, true, var_2.a.x, true)))));
    return select(!(!(!vec4<bool>(arg_0, false, false, var_2.a.x))), vec4<bool>(true, var_2.a.x, any(!vec4<bool>(arg_0, arg_0, false, true)), arg_0), abs(~u_input.a) <= ~u_input.a);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 25u)]);
    var var_1 = Struct_4(!select(func_2(false), func_2(true), func_2(true)), Struct_1(vec2<bool>(true, func_2(select(true, false, false)).x), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(32858u, 4294967295u, u_input.b.x, 42808u) ^ u_input.b), 25u)], 14698i, true), vec2<i32>(-71562i, -select(var_0.a, var_0.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x + -953f))) * _wgslsmith_f_op_f32(-global2.x))), Struct_2(abs(var_0.a)), _wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), ~4294967295u, ~u_input.b.x));
    var var_2 = var_1.b;
    let var_3 = var_1.a.yzx;
    let var_4 = var_1.b;
    return Struct_2(-max(_wgslsmith_div_i32(~var_2.b, 1i), ~var_1.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(38790i));
    var_0 = func_1();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-851f, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -108f), vec2<f32>(global2.x, global2.x)), vec2<f32>(global2.x, global2.x), vec2<bool>(true, true))))));
    global1 = 1i > var_0.a;
    let var_1 = _wgslsmith_add_u32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~74082u | ~(27645u & var_1), _wgslsmith_clamp_u32(~(~u_input.a), var_1, 12776u), abs(var_1 << ((u_input.b.x ^ u_input.a) % 32u))));
}

