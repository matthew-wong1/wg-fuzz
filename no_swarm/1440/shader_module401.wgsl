struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
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

var<private> global0: array<f32, 12>;

var<private> global1: array<i32, 17> = array<i32, 17>(-59345i, -11854i, -11488i, 24259i, 0i, -1i, 27882i, 1i, -44904i, i32(-2147483648), 1i, -1i, i32(-2147483648), 52039i, 27115i, 2147483647i, 1i);

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: i32;

var<private> global4: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    global2 = array<vec4<u32>, 25>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(34508u ^ u_input.b, ~u_input.b, true), 12u)]), -694f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -486f)))))));
    global1 = array<i32, 17>();
    let var_1 = !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.b, 17u)] >= u_input.c));
    global0 = array<f32, 12>();
    return var_1.zzz;
}

fn func_4(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = -_wgslsmith_dot_vec4_i32(-vec4<i32>(firstTrailingBit(-2147483647i), -28733i, _wgslsmith_mod_i32(33230i, global1[_wgslsmith_index_u32(16587u, 17u)]), -1i | u_input.c), u_input.e);
    global3 = 1i;
    global4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.x * -637f), global4.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -206f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.x, global4.x))), !vec2<bool>(arg_0.x, true)))), vec2<f32>(global4.x, 1187f))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~u_input.b) ^ reverseBits(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(54055u, 25u)], vec4<u32>(4294967295u, u_input.b, 1u, u_input.b))), ~86890u), vec2<u32>(u_input.b, 0u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, global0[_wgslsmith_index_u32(u_input.b, 12u)], -534f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], -2172f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1881f, 834f, global4.x))), arg_0.x && false))), vec3<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 12u)], -165f), _wgslsmith_f_op_f32(-503f + -533f)), 1139f))));
    return select(u_input.d, firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d.x, u_input.c), max(global1[_wgslsmith_index_u32(u_input.b, 17u)], u_input.e.x)), ~1i)), arg_0.xy);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = -func_4(!(!func_3(global1[_wgslsmith_index_u32(u_input.b, 17u)])));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, global4.x, global4.x) * vec3<f32>(global4.x, 635f, global0[_wgslsmith_index_u32(u_input.b, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, global4.x, -151f))))));
    var var_2 = vec2<f32>(global4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(19764u, 12u)], -259f))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(11953u)), 12u)] - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x)))), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -509f, var_1.a.x))))));
    let var_4 = -654f;
    return 11197i >= (-1009i | max(1i, arg_0));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_1(arg_1.a);
    global0 = array<f32, 12>();
    global1 = array<i32, 17>();
    let var_1 = var_0;
    var var_2 = func_2(-26243i);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(firstLeadingBit(max(u_input.b << (firstTrailingBit(func_1(vec2<u32>(32405u, u_input.b), Struct_1(vec3<f32>(global4.x, -920f, 942f)), true, vec4<bool>(true, false, false, true))) % 32u), ~(~(~u_input.b)))), 17u)];
    global3 = u_input.e.x;
    let var_0 = all(vec4<bool>(any(vec2<bool>(false, true)), false, _wgslsmith_f_op_f32(-810f - -615f) > global4.x, false));
    global2 = array<vec4<u32>, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-305f)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(select(1000f, global4.x, var_0))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.x, 1180f, global4.x), vec3<f32>(433f, global0[_wgslsmith_index_u32(23996u, 12u)], -701f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(68685u, 12u)], global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -340f)), global0[_wgslsmith_index_u32(11755u, 12u)])));
    global4 = var_1.a.zz;
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.yy * var_1.a.xy)), vec2<f32>(global4.x, 674f), select(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 2147483647i, u_input.c), u_input.e.xyx), -2749i) > max(select(-1i, global1[_wgslsmith_index_u32(4294967295u, 17u)], false), global1[_wgslsmith_index_u32(4792u, 17u)] ^ global1[_wgslsmith_index_u32(19337u, 17u)]), false, !((4294967295u < u_input.b) || var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-842f, var_1.a.x, 241f, global4.x))))));
}

