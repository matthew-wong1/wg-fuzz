struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(38222i, 9061i, 166i, 3310i, 24846i, 1i, 60620i, 34825i, -9785i, -20367i, 4058i, -1i, 2147483647i, 2147483647i, 2147483647i, i32(-2147483648), -89469i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1025f * arg_1.a.x), arg_1.a.x)) * _wgslsmith_f_op_f32(trunc(arg_1.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(204f, _wgslsmith_f_op_f32(1611f - arg_1.a.x)) - arg_1.a.x)), _wgslsmith_f_op_f32(abs(-1092f)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(-367f, arg_1.a.x, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))), arg_1.a.x), abs(max(arg_1.b << (u_input.d % vec4<u32>(32u)), vec4<i32>(1i, 2147483647i, arg_2, 2147483647i) & vec4<i32>(-2147483647i, -25846i, -50681i, 0i)) & arg_1.b));
    global0 = array<i32, 17>();
    var_0 = var_1.a.x;
    let var_2 = arg_1;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 17>();
    let var_0 = ~select(~u_input.a, firstLeadingBit(vec3<u32>(u_input.c.x, 53526u, u_input.c.x) << (vec3<u32>(0u, u_input.a.x, u_input.c.x) % vec3<u32>(32u))), any(vec2<bool>(true, true))) & u_input.a;
    let var_1 = _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_sub_u32(var_0.x, max(1u, _wgslsmith_mult_u32(u_input.d.x, u_input.a.x))), min(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(0u, u_input.d.x)), 12484u)));
    global0 = array<i32, 17>();
    let var_2 = 65043i;
    return Struct_1(arg_0.a, vec4<i32>(-(~(-2147483647i)), -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_1.x) | firstLeadingBit(78568u), 17u)], arg_2.b.x, _wgslsmith_div_i32(i32(-1i) * -u_input.b, abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.x, 17u)], 18977i)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let var_0 = 19014i;
    let var_1 = arg_2;
    return func_3(var_1, _wgslsmith_f_op_f32(-1350f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(sign(arg_2.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -824f))), Struct_1(vec3<f32>(arg_2.a.x, 707f, 2134f), vec4<i32>(_wgslsmith_mod_i32(func_3(Struct_1(var_1.a, vec4<i32>(var_1.b.x, -35124i, -2882i, var_1.b.x)), arg_2.a.x, arg_2).b.x, i32(-1i) * -1i), func_3(func_2(true, Struct_1(var_1.a, vec4<i32>(global0[_wgslsmith_index_u32(41441u, 17u)], 1i, arg_2.b.x, u_input.b)), global0[_wgslsmith_index_u32(27518u, 17u)]), _wgslsmith_f_op_f32(-906f + 592f), func_2(arg_0, Struct_1(var_1.a, vec4<i32>(arg_2.b.x, 12563i, 2147483647i, 1i)), u_input.b)).b.x, var_0 << (arg_1.x % 32u), ~(-16980i))));
}

fn func_1() -> f32 {
    var var_0 = func_5(false, u_input.d.zy, func_4(func_3(func_2(true, Struct_1(vec3<f32>(-2094f, -315f, 1253f), vec4<i32>(0i, u_input.b, global0[_wgslsmith_index_u32(1u, 17u)], 24238i)), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * 225f)), Struct_1(vec3<f32>(181f, 591f, -1155f), abs(vec4<i32>(-6873i, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], -22957i, -2147483647i)))), func_2(any(vec2<bool>(false, false)), func_2(true, func_3(Struct_1(vec3<f32>(962f, -1000f, -1064f), vec4<i32>(2147483647i, -1i, u_input.b, global0[_wgslsmith_index_u32(u_input.d.x, 17u)])), 1297f, Struct_1(vec3<f32>(-251f, -1000f, 1336f), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -45160i, global0[_wgslsmith_index_u32(29269u, 17u)]))), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), u_input.b).a.x, 1i));
    var_0 = func_2(!select(true, all(vec2<bool>(false, false)) && any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))), Struct_1(var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(-4948i, _wgslsmith_mult_i32(0i, 9654i), -26515i, global0[_wgslsmith_index_u32(min(1852u, u_input.a.x), 17u)]), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<i32>(7172i, -1301i, -81667i)), ~global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -2865i, i32(-1i) * -46683i))), 0i);
    let var_1 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_3 = vec4<f32>(var_0.a.x, _wgslsmith_div_f32(-1056f, -565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(760f * var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-768f, var_0.a.x)))) - _wgslsmith_f_op_f32(max(1434f, var_0.a.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1677f, _wgslsmith_f_op_f32(954f - 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, -1088f, -1000f) * vec3<f32>(1000f, 114f, -833f))) - vec3<f32>(233f, -664f, -376f))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, i32(-1i) * -1i, ~0i, ~global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), (~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -4210i) | vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(11910u, 17u)], -2157i, -1i)) ^ vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -7620i, ~3048i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x + 1000f))), var_0.a.x, var_0.a.x, _wgslsmith_div_f32(func_2(false, Struct_1(var_0.a, var_0.b), global0[_wgslsmith_index_u32(u_input.d.x, 17u)]).a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x))))));
}

