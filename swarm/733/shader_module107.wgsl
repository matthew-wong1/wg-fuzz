struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<u32, 30> = array<u32, 30>(0u, 20631u, 4294967295u, 0u, 4294967295u, 46318u, 5430u, 0u, 10633u, 4294967295u, 16356u, 4294967295u, 4294967295u, 17002u, 110482u, 120770u, 66459u, 17216u, 2496u, 18630u, 85301u, 16898u, 0u, 1u, 28437u, 46048u, 21975u, 1u, 85230u, 80251u);

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-581f, -1410f), vec2<f32>(459f, 1780f), vec2<f32>(1000f, 776f), vec2<f32>(583f, 788f), vec2<f32>(1000f, 1496f), vec2<f32>(444f, 1259f), vec2<f32>(1000f, -184f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = !(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~u_input.a), firstLeadingBit(~vec2<i32>(u_input.a, 2147483647i))) != _wgslsmith_clamp_i32(-u_input.a & -u_input.a, u_input.a, abs(u_input.c)));
    global3 = array<vec2<f32>, 7>();
    var var_1 = Struct_5(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, -5321i)), vec3<i32>(u_input.c, -1i, -31451i) | vec3<i32>(2147483647i, u_input.a, 0i)), ~0i, 34131i)), vec3<bool>(any(!(!vec3<bool>(global0.a, false, false))), global0.a, true), !(!select(global0.a, false, select(global0.a, global0.a, false))));
    let var_2 = Struct_4(~var_1.a.zy, Struct_3(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 16774i), var_1.a)), reverseBits(~u_input.b), Struct_1(true), arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_div_f32(-2079f, _wgslsmith_f_op_f32(1032f + -841f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1337f, var_2.b.e)), -643f, _wgslsmith_f_op_f32(sign(1854f)) < _wgslsmith_f_op_f32(round(-337f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.e)) * _wgslsmith_f_op_f32(abs(325f)))) - _wgslsmith_f_op_f32(776f + 616f));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.e * _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f * var_2.b.e) - -244f), all(var_1.b.zz)))), _wgslsmith_f_op_f32(sign(697f))));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-318f + _wgslsmith_f_op_f32(func_3(u_input.d))), select((2147483647i << (u_input.b.x % 32u)) != -45133i, true, true))), _wgslsmith_div_f32(1567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(704f - -1322f) - -245f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(-606f))), _wgslsmith_f_op_f32(func_3(abs(u_input.b.yx))))))));
    global2 = global0.a;
    global2 = global0.a;
    global0 = Struct_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(false, global0.a), global0.a))));
    global2 = global0.a;
    return select(!(!(!vec4<bool>(global0.a, true, false, true))), select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 0i), vec2<i32>(0i, arg_0)) >= ~arg_0, all(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, true, false), vec3<bool>(true, false, global0.a))), false, false), vec4<bool>(global0.a, (global1[_wgslsmith_index_u32(0u, 30u)] >> (u_input.d.x % 32u)) < 0u, true, false), min(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86259u, 30u)], 30u)]), 20050u) <= u_input.d.x), !(!select(vec4<bool>(global0.a, global0.a, global0.a, true), select(vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(global0.a, true, false, false), vec4<bool>(true, global0.a, global0.a, global0.a)), vec4<bool>(true, true, false, global0.a))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global3 = array<vec2<f32>, 7>();
    var var_0 = vec4<i32>(-1030i, ~u_input.a, u_input.a, _wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a) ^ vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c)), 0i)));
    global2 = all(!(!select(select(vec4<bool>(false, global0.a, arg_1.a, false), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a, false, true, global0.a)), func_2(var_0.x), any(vec2<bool>(arg_1.a, true)))));
    let var_1 = ~u_input.b.yy;
    let var_2 = ~vec3<u32>(~(~4294967295u), _wgslsmith_add_u32(select(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], global0.a), _wgslsmith_add_u32(1u, u_input.d.x)), 1u) | vec3<u32>(max(5986u, abs(firstLeadingBit(0u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.d.x, 30u)], 30u)], var_1.x);
    return _wgslsmith_clamp_u32(~1u, 0u, var_2.x) ^ 90242u;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> StorageBuffer {
    return StorageBuffer(~u_input.b.xxw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(161f)), 407f) + _wgslsmith_f_op_vec2_f32(abs(global3[_wgslsmith_index_u32(func_1(Struct_1(global0.a), Struct_1(false)), 7u)])))), Struct_1(!all(!vec4<bool>(global0.a, true, false, false))));
}

