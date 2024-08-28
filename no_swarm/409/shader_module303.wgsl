struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 31>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, vec2<u32>(0u, 1u), -1930f), Struct_1(false, vec2<u32>(44846u, 1u), 288f), Struct_1(true, vec2<u32>(7697u, 1u), -116f), Struct_1(false, vec2<u32>(1u, 4294967295u), 751f), Struct_1(true, vec2<u32>(4294967295u, 13490u), -191f), Struct_1(true, vec2<u32>(1u, 17892u), 306f), Struct_1(false, vec2<u32>(50124u, 60939u), -1619f), Struct_1(false, vec2<u32>(43154u, 4294967295u), -587f), Struct_1(true, vec2<u32>(4294967295u, 1u), 349f), Struct_1(true, vec2<u32>(23564u, 4294967295u), -569f), Struct_1(true, vec2<u32>(61782u, 4294967295u), -243f), Struct_1(true, vec2<u32>(0u, 0u), -1004f), Struct_1(true, vec2<u32>(0u, 21548u), 1299f), Struct_1(false, vec2<u32>(54383u, 4294967295u), -563f), Struct_1(false, vec2<u32>(0u, 32165u), -1036f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, global2.c, global0.c, 327f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(434f, 312f, global0.c, _wgslsmith_f_op_f32(sign(1408f))) * vec4<f32>(_wgslsmith_f_op_f32(-916f * 585f), _wgslsmith_f_op_f32(global2.c + 934f), global2.c, _wgslsmith_f_op_f32(-729f * -534f)))))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = global0.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, _wgslsmith_f_op_f32(ceil(global0.c)), global2.c, -597f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(338f, 142f, -1000f, 513f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(769f, -846f, 1509f, -751f) * vec4<f32>(580f, 1000f, global0.c, -1254f)), vec4<f32>(-1147f, global0.c, arg_0, -540f)))))));
    var var_2 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1086u) | _wgslsmith_div_vec2_u32(global2.b, ~global2.b), ~global2.b));
    global2 = Struct_1(global0.a, ~global0.b, arg_0);
    let var_3 = 0i;
    return reverseBits(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(u_input.a.x, 15u)];
    let var_0 = vec3<i32>(func_1(-663f, !select(vec2<bool>(true, global2.a), vec2<bool>(true, global0.a), global0.a), vec3<bool>(any(vec4<bool>(global0.a, true, global2.a, true)), true, true)) | 2075i, ~2147483647i, firstLeadingBit(_wgslsmith_mod_i32(-(~(-2147483647i)), -_wgslsmith_mod_i32(-2147483647i, 4573i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, 882f, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, 541f, -168f, global0.c)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, 1097f, global2.c, global0.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global2.c, global2.c, global2.c) + vec4<f32>(1392f, global2.c, global0.c, 1419f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global2.c, 2884f, -161f) - vec4<f32>(global2.c, global0.c, -111f, global0.c)))))));
    let var_2 = 1u;
    var var_3 = Struct_3(true);
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(global0.b.x, ~u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x ^ 29679u, 4616u)), 15u)];
    let var_4 = Struct_2(~_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-45058i, var_0.x, -1i, var_0.x)), ~vec4<i32>(36391i, -1i, -33908i, 1i) & vec4<i32>(var_0.x, -45968i, var_0.x, 2147483647i)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))) - _wgslsmith_f_op_f32(abs(var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-320f, -218f))));
}

