struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<f32, 22> = array<f32, 22>(-238f, 1832f, 771f, 465f, 1404f, 605f, 623f, -967f, -847f, 1000f, -226f, -125f, -373f, -334f, -741f, -700f, 1904f, -1309f, 248f, 832f, -743f, -992f);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-125f, 1000f, -2359f));

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3) -> vec2<f32> {
    global2 = array<Struct_2, 2>();
    global2 = array<Struct_2, 2>();
    let var_0 = -274f;
    global1 = Struct_2(arg_0.a.a);
    let var_1 = ~abs(u_input.c);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.yz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a.xx), _wgslsmith_f_op_vec2_f32(global1.a.xy * arg_0.b.a.xz), select(vec2<bool>(arg_0.c, true), vec2<bool>(true, arg_0.d), vec2<bool>(false, true))))))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 34910u, 57367u), vec3<bool>(true, true, false)), ~vec3<u32>(33818u, arg_0.x, 37375u)), arg_0.x, ~(~arg_0.x)) << (_wgslsmith_sub_u32(110401u, 9727u) % 32u), 22u)];
    global2 = array<Struct_2, 2>();
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x, 2u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(-866f)))), global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-409f, 2098f))));
    let var_3 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(true, true), vec2<bool>(true, true));
    return !var_3.x;
}

fn func_2() -> StorageBuffer {
    global2 = array<Struct_2, 2>();
    var var_0 = Struct_1(!select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true), vec4<bool>(func_3(vec2<u32>(1u, 24123u)), select(false, false, true), select(false, false, true), true), true), u_input.a);
    let var_1 = Struct_4(global2[_wgslsmith_index_u32(1u, 2u)], var_0.a.x, -1i, _wgslsmith_f_op_f32(f32(-1f) * -118f), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global0[_wgslsmith_index_u32(30855u, 22u)], global0[_wgslsmith_index_u32(58778u, 22u)]), global1.a, var_0.a.wzx)), _wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global1.a.x, global0[_wgslsmith_index_u32(1u, 22u)]), var_0.a.wwz))))), Struct_2(global1.a), (-u_input.b.x == _wgslsmith_mult_i32(u_input.c, u_input.b.x)) | (all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)) | var_0.a.x), all(vec3<bool>(false, var_0.a.x, var_0.a.x == false))));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, global0[_wgslsmith_index_u32(41059u, 22u)], global1.a.x, global0[_wgslsmith_index_u32(0u, 22u)]) + vec4<f32>(940f, global1.a.x, 1798f, global0[_wgslsmith_index_u32(4294967295u, 22u)])) - vec4<f32>(var_1.d, var_1.d, -1000f, 1047f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(275f)), _wgslsmith_f_op_f32(-var_1.e.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x))), _wgslsmith_f_op_f32(-var_1.e.b.a.x), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 22u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec4<i32>(0i, firstTrailingBit(u_input.a.x), select(-u_input.c, countOneBits(1i), false), 36340i));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~93395u, 22u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * global0[_wgslsmith_index_u32(firstTrailingBit(16348u), 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] - -1250f))) + 319f)));
    var_1 = _wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.a)))), global2[_wgslsmith_index_u32(0u, 2u)], any(vec2<bool>(true, true)), true)));
    var_1 = vec2<f32>(-1185f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1198f * -1214f), global1.a.x));
    let x = u_input.a;
    s_output = func_2();
}

