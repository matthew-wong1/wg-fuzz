struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(14929u, 11829u), 17u)]);
    var var_2 = -1468f;
    var var_3 = arg_3.ywz;
    global0 = select(!vec3<bool>(true, global0.x, true), select(arg_3.yxz, vec3<bool>(!(!arg_0.x), true, any(arg_3) || global0.x), _wgslsmith_f_op_f32(floor(var_1.x)) >= _wgslsmith_f_op_f32(-arg_2.x)), vec3<bool>((32685u << (var_0.x % 32u)) >= u_input.e.x, var_3.x, true));
    return Struct_1(-1i, _wgslsmith_add_i32((16370i << ((0u & u_input.e.x) % 32u)) >> (u_input.d % 32u), countOneBits(_wgslsmith_add_i32(2147483647i >> (u_input.d % 32u), u_input.c.x))), min(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, global3.a, -49088i), global3.c.yyz), -2147483647i, u_input.a.x, -14097i), -vec4<i32>(41313i, _wgslsmith_dot_vec3_i32(global3.d, vec3<i32>(global3.a, global3.b, arg_1)), arg_1, _wgslsmith_mult_i32(-53819i, -34630i))), vec3<i32>(~(22587i << (var_0.x % 32u)), u_input.a.x, global3.a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1908f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-1281f, -1000f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)));
    global3 = func_2(vec2<bool>(all(vec2<bool>(true, !global0.x)), all(select(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true)))), 67296i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f + var_1.x)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 1258f, var_0, var_1.x))))), !(!(!vec4<bool>(global0.x, false, true, global0.x))))), vec4<bool>(true, true, true, true));
    var var_2 = vec2<bool>(any(vec4<bool>(global0.x, !all(vec3<bool>(true, global0.x, global0.x)), global0.x, _wgslsmith_f_op_f32(round(-361f)) <= 641f)), min(30063u, firstTrailingBit(_wgslsmith_add_u32(u_input.d, arg_2))) != u_input.d);
    let var_3 = _wgslsmith_sub_u32(~51681u, _wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(34434u, 8598u, ~arg_2), _wgslsmith_div_u32(reverseBits(arg_2), 1u))));
    return 0u;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<vec2<f32>, 17>();
    global1 = array<vec2<f32>, 17>();
    global3 = func_2(vec2<bool>(false, !(global0.x && !global0.x)), 47017i, _wgslsmith_div_vec4_f32(arg_2, arg_2), !vec4<bool>(33410u < ~u_input.e.x, !(-9232i < u_input.c.x), all(vec4<bool>(false, global0.x, false, global0.x)), any(!vec3<bool>(global0.x, global0.x, true))));
    let var_0 = ~(12215u | ~min(func_3(Struct_2(Struct_1(-2147483647i, 0i, vec4<i32>(-14463i, 21446i, -699i, u_input.a.x), vec3<i32>(u_input.c.x, global3.c.x, 0i)), Struct_1(global3.d.x, -16061i, u_input.a, u_input.a.xzx)), global3.b, 18341u), u_input.d & 0u));
    var var_1 = global0.x;
    return func_2(!select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-global3.b >> (~62228u % 32u), u_input.c.x, _wgslsmith_mult_i32(-1i, firstTrailingBit(global3.a)), u_input.a.x), max(~vec4<i32>(u_input.b, 1i, global3.b, -22681i), global3.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(_wgslsmith_div_f32(491f, 310f), _wgslsmith_f_op_f32(abs(-386f)), arg_1.x, -2234f), !(!vec4<bool>(true, global0.x, global0.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(-1280f * _wgslsmith_f_op_f32(trunc(-1631f))), -2712f, _wgslsmith_f_op_f32(570f + 1253f), arg_2.x))), !vec4<bool>(1i != _wgslsmith_add_i32(1i, global3.b), true & all(vec4<bool>(global0.x, false, false, true)), any(!global0.xz), u_input.b == -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1511f, 232f, false)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-749f, -1049f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.d, 17u)] + global1[_wgslsmith_index_u32(1u, 17u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(776f, -1000f, -426f, -327f) * vec4<f32>(-694f, -575f, 362f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, 894f, -433f, 1007f))))));
    let var_0 = select(vec4<bool>(global0.x, false, true, true), !(!(!(!vec4<bool>(false, true, true, global0.x)))), global0.x);
    var var_1 = var_0.x;
    let var_2 = func_1(_wgslsmith_div_f32(-2874f, _wgslsmith_f_op_f32(f32(-1f) * -739f)), global1[_wgslsmith_index_u32(55112u, 17u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, -1329f, -187f, -1046f))))));
    var var_3 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-509f, 774f)), -275f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2716f * _wgslsmith_f_op_f32(round(617f)))))), _wgslsmith_f_op_f32(floor(329f)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, var_3.x);
}

