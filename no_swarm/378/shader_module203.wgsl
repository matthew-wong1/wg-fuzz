struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-1i, -35924i, i32(-2147483648), 1i), vec4<i32>(0i, i32(-2147483648), 34893i, i32(-2147483648)), vec4<i32>(2147483647i, -47149i, 69605i, -15067i), vec4<i32>(38057i, -24362i, 1i, 0i), vec4<i32>(13001i, 2147483647i, 18794i, -1i), vec4<i32>(18717i, 2147483647i, 35267i, 0i), vec4<i32>(-49041i, 39428i, 13752i, 16371i), vec4<i32>(0i, -7503i, 0i, -11373i), vec4<i32>(28269i, 2147483647i, 19790i, 8151i), vec4<i32>(-66717i, 1i, 2904i, 30760i), vec4<i32>(2147483647i, 0i, 48772i, -21514i), vec4<i32>(2147483647i, 0i, -12458i, -1i), vec4<i32>(-7813i, 0i, 0i, -32731i), vec4<i32>(37460i, -5221i, -1i, 1i), vec4<i32>(-52605i, -5279i, 35953i, 2147483647i), vec4<i32>(0i, -24006i, 2147483647i, -5124i), vec4<i32>(-8278i, -1854i, 2467i, 65992i), vec4<i32>(-19615i, 0i, 0i, -1i), vec4<i32>(-17912i, 0i, 2147483647i, 41377i), vec4<i32>(-52025i, -1i, -20351i, -18338i), vec4<i32>(-45744i, 5179i, -28735i, 10194i), vec4<i32>(1i, -7175i, -69061i, 1i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(vec4<bool>(all(vec2<bool>(true, true)), select(select(true, false, u_input.b.x > u_input.b.x), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), false, true));
    global0 = array<vec4<i32>, 22>();
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-131f, 104f, -1000f, -865f), vec4<f32>(101f, 105f, -200f, 784f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-975f, -1583f, -186f, 1243f), vec4<f32>(494f, 613f, -313f, 1052f))))))))));
    let var_3 = Struct_2(Struct_1(!select(var_0.a, !var_0.a, vec4<bool>(true, false, var_0.a.x, true))), vec4<bool>(!((var_2.x > 199f) | (u_input.b.x != u_input.b.x)), true, !any(select(var_0.a, var_0.a, var_0.a)), true));
    return var_3.a.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec2_i32(u_input.a.wz, min(vec2<i32>(0i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x) | -49556i), abs(firstTrailingBit(vec2<i32>(-1i, u_input.c.x)))));
    global0 = array<vec4<i32>, 22>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-962f + -986f) + _wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -616f))))));
    var var_2 = -(~(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x) ^ vec3<i32>(34566i, -54372i, -19913i), countOneBits(vec3<i32>(var_0.x, var_0.x, u_input.a.x))) | vec3<i32>(~u_input.c.x, ~0i, _wgslsmith_sub_i32(-1i, var_0.x))));
    var var_3 = Struct_1(!select(arg_0.b, select(select(arg_1.a, arg_1.a, arg_2.x), select(vec4<bool>(true, arg_0.b.x, arg_1.a.x, arg_1.a.x), arg_1.a, vec4<bool>(true, true, arg_1.a.x, arg_0.b.x)), arg_1.a), arg_2.x));
    return !vec4<bool>(arg_0.a.a.x, any(!vec4<bool>(true, false, arg_0.a.a.x, arg_1.a.x)), true || func_3(), false);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), func_2(Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(true, true, true)), !func_2(Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(false, true, true))));
    let var_1 = all(var_0.a) | all(select(vec3<bool>(true, u_input.b.x <= 1u, true), vec3<bool>(any(var_0.a.wxx), !var_0.a.x, true), var_0.a.x));
    global0 = array<vec4<i32>, 22>();
    let var_2 = var_0;
    global0 = array<vec4<i32>, 22>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 22>();
    var var_0 = all(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(false, false, false) & true, true), vec3<bool>(!func_1(0u, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -33889i)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), vec3<bool>(all(vec2<bool>(true, true)), func_2(Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))).x, select(func_3(), u_input.a.x > u_input.c.x, func_2(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(true, true, true)).x))));
    var var_1 = abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -u_input.a.x, u_input.c.x), -(vec3<i32>(u_input.c.x, 1i, 42389i) << (u_input.b.wxz % vec3<u32>(32u)))));
    var var_2 = !(!(u_input.b.x == ~u_input.b.x) & any(vec3<bool>(true, true, true)));
    var var_3 = 2416i;
    var var_4 = 64895u;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(22298u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i)), ~(-vec4<i32>(2147483647i, 0i, u_input.c.x, 1i)), true) << (~_wgslsmith_sub_vec4_u32(~u_input.b, u_input.b) % vec4<u32>(32u)));
}

