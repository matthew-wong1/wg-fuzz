struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<u32, 10> = array<u32, 10>(0u, 67505u, 33134u, 1u, 12444u, 1u, 64197u, 9808u, 37907u, 4294967295u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(225f, 1092f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -957f)))))));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    var var_2 = Struct_3(false, false, reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28816u, 4294967295u, 5734u, 21265u), vec4<u32>(1u, global1[_wgslsmith_index_u32(92482u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)])), countOneBits(14761u), reverseBits(global1[_wgslsmith_index_u32(4294967295u, 10u)])), ~(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20727u, 10u)], 10u)], 4294967295u, global1[_wgslsmith_index_u32(88415u, 10u)]) << (vec3<u32>(50733u, 0u, 122610u) % vec3<u32>(32u))))));
    var var_3 = !select(select(!(!vec4<bool>(false, false, var_2.b, false)), !vec4<bool>(var_2.a, var_2.b, false, false), true), vec4<bool>(true, false, !any(vec2<bool>(true, var_2.b)), var_2.b), select(!select(vec4<bool>(var_2.b, false, false, var_2.b), vec4<bool>(true, true, var_2.b, var_2.b), var_2.a), vec4<bool>(true, var_2.a, any(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(false, false, var_2.b, var_2.a), vec4<bool>(var_2.a, var_2.b, var_2.b, var_2.b), var_2.b), !vec4<bool>(var_2.a, true, var_2.a, true), all(vec2<bool>(false, var_2.a)))));
    let var_4 = var_0.x;
    return 44460u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_4 {
    global1 = array<u32, 10>();
    let var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-410f - arg_1.x), 875f, 1178f);
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 10u)], 0u), ~(~select(vec2<u32>(1u, 23879u), ~vec2<u32>(532u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), -26355i >= u_input.a)), _wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(~global0[_wgslsmith_index_u32(21004u, 22u)], ~vec2<u32>(2156u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14268u, 10u)], 10u)], 10u)], 10u)]))), countOneBits(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)] ^ global1[_wgslsmith_index_u32(8911u, 10u)], 22u)], _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(73871u, 22u)], vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 22u)])))));
    var_1 = firstTrailingBit(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(func_3(), 10u)] ^ max(var_1.x, var_1.x)), 22u)], ~vec2<u32>(67747u, 3899u)));
    var var_2 = Struct_1(abs(15370i), u_input.a, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_0), _wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(-var_0.x))))), firstLeadingBit(-49861i), vec2<bool>(any(vec4<bool>(true, all(vec2<bool>(true, false)), u_input.a < 12760i, false)), all(vec2<bool>(-851f < var_0.x, all(vec2<bool>(false, false))))));
    return Struct_4(vec2<i32>(reverseBits(-1i), u_input.a ^ -var_2.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_2.c, 720f, 641f))), vec4<f32>(1797f, var_0.x, arg_1.x, 240f))), _wgslsmith_f_op_vec4_f32(-var_0)), false);
}

fn func_1(arg_0: i32) -> Struct_4 {
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-303f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(567f, _wgslsmith_f_op_f32(step(138f, 525f)))))));
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = !(!(!(!select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(arg_0.c, false, arg_0.c), arg_0.c))));
    let var_1 = -2147483647i;
    global0 = array<vec2<u32>, 22>();
    var_0 = vec3<bool>(false, true, true);
    global0 = array<vec2<u32>, 22>();
    return !(true || (arg_0.b.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x - -493f), _wgslsmith_f_op_f32(arg_0.b.x + 976f)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c), arg_2.c, _wgslsmith_f_op_f32(sign(arg_2.c)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1140f, _wgslsmith_f_op_f32(arg_2.c - -928f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-307f + _wgslsmith_f_op_f32(f32(-1f) * -1757f)), -942f));
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    return Struct_3(true, false && arg_2.e.x, arg_1.yxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))) | func_4(func_1(-2147483647i)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))), ~select(vec4<u32>(~38624u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 10u)], 10u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(33999u, 10u)], 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 10u)]), ~vec4<u32>(24796u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19093u, 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(29182u, 10u)], global1[_wgslsmith_index_u32(23127u, 10u)]), vec4<bool>(true, true, func_1(1i).c, any(vec3<bool>(true, true, false)))), Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -36259i) & vec2<i32>(u_input.a, 15188i), func_1(2147483647i).a)), 1i, _wgslsmith_f_op_f32(select(-754f, 2858f, true)), select(~u_input.a, -_wgslsmith_sub_i32(u_input.a, u_input.a), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    var var_1 = select(select(!(!(!vec4<bool>(var_0.a, false, false, var_0.a))), !(!select(vec4<bool>(var_0.b, true, var_0.b, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(true, var_0.a, var_0.a, true))), vec4<bool>(var_0.a, !(!var_0.b), true, true)), vec4<bool>(!any(!vec4<bool>(var_0.a, false, var_0.b, true)), any(vec2<bool>(var_0.b, true)), all(select(vec3<bool>(true, var_0.b, false), vec3<bool>(true, true, true), true)), true), false);
    let var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, func_1(u_input.a).a.x), 1i), u_input.a, -(~(-u_input.a)), 1i) ^ reverseBits(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(33306i, -46819i, u_input.a, -28550i), vec4<i32>(1326i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i)) >> (vec4<u32>(1u, 84471u, 38664u, 4294967295u) % vec4<u32>(32u))));
    var var_3 = true;
    var var_4 = func_1(var_2.x & (i32(-1i) * -44373i));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(6236i, abs(u_input.a & u_input.a), var_2.x, -1i), _wgslsmith_mod_vec3_i32(~var_2.ywx, ~_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_4.a.x), var_2.wwz)), _wgslsmith_f_op_vec4_f32(-var_4.b));
}

