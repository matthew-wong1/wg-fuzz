struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = 22173u;
    let var_1 = !select(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(12428u, 1u), u_input.c, true), 1u)] == global1[_wgslsmith_index_u32(var_0, 1u)], !(!(324f < global1[_wgslsmith_index_u32(u_input.c, 1u)])));
    var var_2 = Struct_2(-24003i, Struct_1(8094u, false, 0u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(485f, global1[_wgslsmith_index_u32(var_0, 1u)], 241f, -246f) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], 370f, -1230f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 1u)])) + 1507f))))), ~u_input.a << (_wgslsmith_add_u32(~var_0, 9664u) % 32u));
    return var_2.b.c;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: f32) -> Struct_4 {
    global1 = array<f32, 1>();
    global0 = vec4<i32>(-2568i, reverseBits(global0.x ^ min(-global0.x, abs(-62878i))), _wgslsmith_sub_i32(arg_1, arg_1), 50813i);
    global1 = array<f32, 1>();
    return Struct_4(_wgslsmith_f_op_f32(294f + global1[_wgslsmith_index_u32((0u >> (arg_0.x % 32u)) >> (37357u % 32u), 1u)]) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] - -1152f)), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(func_3(), 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)]))), false, Struct_3(vec3<bool>(!any(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, false, false)), false & all(vec3<bool>(true, true, false)))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(17838u, arg_0.x, arg_0.x, 17790u), vec4<u32>(u_input.b.x, 39004u, arg_0.x, 0u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, u_input.a, arg_0.x), firstLeadingBit(vec4<u32>(0u, 1u, 2769u, 4294967295u))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, arg_0.x), vec4<u32>(arg_0.x, 0u, 83342u, u_input.b.x))))), Struct_3(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), global0.x <= -1i), vec3<bool>(true, true, false))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> bool {
    global1 = array<f32, 1>();
    var var_0 = func_2(~countOneBits(vec3<u32>(39254u, arg_1.x, u_input.a) | ~vec3<u32>(4294967295u, u_input.c, 4294967295u)), min(u_input.d.x, 61007i), _wgslsmith_f_op_f32(f32(-1f) * -1689f));
    global0 = ~(-(~firstTrailingBit(~vec4<i32>(13492i, u_input.d.x, u_input.d.x, 0i))));
    var var_1 = Struct_4(all(select(vec4<bool>(false, var_0.a & true, false | var_0.c.a.x, any(vec2<bool>(true, var_0.c.a.x))), vec4<bool>(false, true, all(vec4<bool>(false, false, false, var_0.c.a.x)), true), !select(vec4<bool>(true, true, var_0.a, var_0.e.a.x), vec4<bool>(true, false, arg_2.x, false), arg_2.x))), !var_0.a, Struct_3(!(!vec3<bool>(var_0.c.a.x, false, arg_2.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d.x, 0u, 5390u, arg_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 17510u, 1u) ^ vec4<u32>(u_input.a, 4294967295u, 40906u, arg_1.x), ~var_0.d)), var_0.c);
    let var_2 = Struct_2(firstTrailingBit(countOneBits(global0.x)), Struct_1(4294967295u, var_1.b, _wgslsmith_clamp_u32(reverseBits(25006u >> (var_0.d.x % 32u)), ~(var_0.d.x | var_0.d.x), func_3()), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(1035f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_1.d.x, 1u)], -551f)), -868f, global1[_wgslsmith_index_u32(~u_input.b.x, 1u)])))), -272f, u_input.c);
    return select(false, var_2.b.b, func_2(countOneBits(var_0.d.xxz), u_input.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.d.x, 1u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 31072u), 1u)]))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(true, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), firstTrailingBit(vec2<u32>(u_input.c, u_input.a)), vec2<bool>(true, true)), true));
    global0 = reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, _wgslsmith_add_i32(0i, 2147483647i), 1494i, max(u_input.d.x, u_input.d.x)), vec4<i32>(1i, -1i, ~(-2147483647i), ~(-13917i))));
    let var_1 = Struct_5(vec2<bool>(true, !(!(!var_0.x))), Struct_1(min(firstLeadingBit(firstLeadingBit(u_input.a)), u_input.a), var_0.x, _wgslsmith_add_u32(u_input.a, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-772f, global1[_wgslsmith_index_u32(u_input.b.x, 1u)])))), global1[_wgslsmith_index_u32(u_input.b.x, 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(1132f * global1[_wgslsmith_index_u32(u_input.c, 1u)]), -350f), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c ^ 26446u, u_input.a), 1u)])), Struct_3(vec3<bool>(true, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)) | false, all(!vec4<bool>(var_0.x, false, true, var_0.x)))), Struct_2(-2147483647i, Struct_1(8566u, true, ~167819u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(801f, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]) - vec4<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 1u)], 477f, 1355f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 1u)] - 628f), -735f))), abs(_wgslsmith_mult_u32(func_2(vec3<u32>(1u, 30381u, u_input.c), global0.x, global1[_wgslsmith_index_u32(0u, 1u)]).d.x, 118860u))), func_2(~((vec3<u32>(4294967295u, u_input.a, 4294967295u) | vec3<u32>(u_input.c, 42757u, 0u)) << (vec3<u32>(33412u, u_input.b.x, u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_i32(0i, u_input.d.x) ^ 26663i, -964f));
    var_0 = !var_1.c.a;
    global1 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(trunc(var_1.b.d.x)), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(0u, var_1.e.d.x)));
}

