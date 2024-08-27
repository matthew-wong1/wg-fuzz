struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    global0 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(min(22442u, 56014u), 14u)]));
    var var_1 = arg_1.zwz;
    let var_2 = vec4<bool>(true, !all(select(arg_3.a.a.zz, !arg_2.a.a.xy, true)), false & arg_2.a.a.x, all(vec4<bool>(true, !arg_2.a.a.x, true, arg_3.a.a.x)) || false);
    var var_3 = select(select(vec2<bool>(all(vec4<bool>(false, var_2.x, arg_2.a.a.x, true)) && !arg_2.a.a.x, select(any(vec3<bool>(arg_3.a.a.x, var_2.x, false)), any(var_2), true)), vec2<bool>(!any(arg_2.a.a), (arg_3.b.x >= 536f) && true), vec2<bool>(all(arg_2.a.a), arg_2.a.a.x)), vec2<bool>(false, arg_2.a.a.x), arg_3.a.a.x);
    return select(var_2.wy, select(arg_3.a.a.yx, !select(var_2.xx, !arg_3.a.a.yy, !arg_2.a.a.yy), true), arg_3.a.a.zz);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<bool> {
    global0 = array<f32, 14>();
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(58980u), 57678u, ~u_input.a.x), u_input.d.x), select(vec2<bool>(arg_1.x, all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), select(select(!arg_1, func_3(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.a.x), vec4<i32>(43341i, arg_2, arg_2, arg_0.x), Struct_3(Struct_1(vec3<bool>(false, arg_1.x, arg_1.x), 53665u), vec2<f32>(-419f, -526f)), Struct_3(Struct_1(vec3<bool>(arg_1.x, false, arg_1.x), u_input.d.x), vec2<f32>(616f, 470f))), arg_1.x), vec2<bool>(arg_1.x, any(vec3<bool>(true, true, true))), arg_1), vec2<bool>(!select(arg_1.x, arg_1.x, arg_1.x), true)));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    var var_1 = Struct_1(select(vec3<bool>(var_0.a.x < 0u, any(vec2<bool>(arg_1.x, arg_1.x)), 1i == ~arg_0.x), !select(vec3<bool>(true, true, arg_1.x), select(vec3<bool>(arg_1.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(var_0.a.x, 14u)] > global0[_wgslsmith_index_u32(37841u, 14u)]), vec3<bool>(all(!vec4<bool>(true, arg_1.x, false, false)), arg_1.x, var_0.b.x)), 0u);
    return select(var_1.a, !select(var_1.a, select(vec3<bool>(false, var_0.b.x, arg_1.x), vec3<bool>(var_0.b.x, arg_1.x, var_0.b.x), vec3<bool>(false, false, false)), true), !(!all(select(vec2<bool>(arg_1.x, false), vec2<bool>(var_1.a.x, var_1.a.x), var_0.b.x))));
}

fn func_1(arg_0: bool, arg_1: bool) -> StorageBuffer {
    var var_0 = ~(~(vec4<u32>(u_input.d.x, u_input.a.x, 88375u, _wgslsmith_mod_u32(u_input.a.x, 1u)) | vec4<u32>(u_input.a.x, 0u, firstTrailingBit(1864u), reverseBits(0u))));
    let var_1 = select(vec3<bool>(!(_wgslsmith_f_op_f32(-100f * 970f) != _wgslsmith_f_op_f32(-402f - global0[_wgslsmith_index_u32(1u, 14u)])), arg_1, arg_1), select(select(!vec3<bool>(false, arg_0, arg_0), func_2(vec2<i32>(u_input.e.x, 4301i), vec2<bool>(arg_1, arg_1), 29005i), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true), vec3<bool>(arg_0, false, arg_1))), !(!select(vec3<bool>(true, false, arg_0), vec3<bool>(true, true, arg_0), arg_1)), select(!vec3<bool>(arg_1, true, arg_1), func_2(vec2<i32>(2147483647i, -2147483647i), func_3(vec4<u32>(u_input.d.x, var_0.x, u_input.a.x, 14017u), vec4<i32>(u_input.e.x, 2147483647i, u_input.c, u_input.e.x), Struct_3(Struct_1(vec3<bool>(false, arg_1, arg_1), var_0.x), vec2<f32>(global0[_wgslsmith_index_u32(13244u, 14u)], global0[_wgslsmith_index_u32(4247u, 14u)])), Struct_3(Struct_1(vec3<bool>(false, arg_1, true), 70933u), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -874f))), firstTrailingBit(u_input.e.x)), true)), select(select(vec3<bool>(false, false == arg_1, arg_0), vec3<bool>(true, true, true), arg_0 & true), !vec3<bool>(select(false, false, arg_1), arg_1 | arg_0, true), !all(!vec3<bool>(true, true, arg_1))));
    var var_2 = u_input.d.x ^ 1u;
    global0 = array<f32, 14>();
    var var_3 = Struct_1(!vec3<bool>((1227f > global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) && any(var_1.zy), all(select(var_1, vec3<bool>(true, arg_0, true), var_1)), any(!vec4<bool>(false, var_1.x, false, false))), var_0.x);
    return StorageBuffer(min(u_input.b, min(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(2147483647i, 16415i)), abs(_wgslsmith_add_vec2_i32(u_input.e.zx, vec2<i32>(2147483647i, -1i))))), vec4<f32>(global0[_wgslsmith_index_u32(var_3.b, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(var_0.yyy, _wgslsmith_div_vec3_u32(var_0.wyx, u_input.a))), 14u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.b, 14u)]), -2853f) + -492f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(44736u, 14u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f + global0[_wgslsmith_index_u32(var_0.x, 14u)])))), u_input.e.x, _wgslsmith_div_vec2_i32(u_input.b, firstLeadingBit(max(firstTrailingBit(vec2<i32>(u_input.c, -21479i)), u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(895f, _wgslsmith_f_op_f32(f32(-1f) * -1156f), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f - _wgslsmith_f_op_f32(ceil(-1972f)))))));
    global0 = array<f32, 14>();
    let var_1 = firstTrailingBit(firstTrailingBit(u_input.b.x));
    let x = u_input.a;
    s_output = func_1(!(!(!all(vec3<bool>(false, true, false)))), true);
}

