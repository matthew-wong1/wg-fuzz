struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> bool {
    global0 = array<u32, 27>();
    var var_0 = Struct_3(arg_1.a);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-699f, _wgslsmith_f_op_f32(-652f * -596f), -523f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-436f)), var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 126f, 1036f) - vec3<f32>(arg_1.a, 675f, 1239f)) * _wgslsmith_div_vec3_f32(vec3<f32>(799f, arg_1.a, arg_1.a), vec3<f32>(var_0.a, arg_1.a, 250f))))));
    var var_2 = var_1.a.x;
    var_0 = arg_1;
    return all(!vec3<bool>(arg_0, false, _wgslsmith_f_op_f32(f32(-1f) * -2240f) > _wgslsmith_div_f32(var_1.a.x, -1426f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xxy) + arg_1.a))));
    global0 = array<u32, 27>();
    var var_1 = var_0.a.zx;
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.a.xy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(633f, 688f))))), arg_0.wx);
    var var_2 = 0i;
    return !select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
}

fn func_1() -> f32 {
    global0 = array<u32, 27>();
    let var_0 = select(select(vec3<bool>(false, all(vec2<bool>(true, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), func_2(true, Struct_3(-1421f))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 1578f, -749f, 216f)), Struct_1(vec3<f32>(334f, -340f, 491f))))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    var var_1 = all(select(var_0.zx, !var_0.xy, func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1573f), -1101f, _wgslsmith_f_op_f32(step(322f, -671f)), _wgslsmith_f_op_f32(round(-1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(976f, -743f, -1000f) + vec3<f32>(546f, 1454f, 817f)))).x));
    let var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(u_input.b >> (u_input.b % vec2<u32>(32u))), u_input.b), 27u)] & firstTrailingBit(global0[_wgslsmith_index_u32(firstTrailingBit(~countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)])), 27u)]);
    var var_3 = Struct_3(-223f);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-590f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -714f)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-816f)), -1427f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-356f)), -302f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1746f, 1278f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, -1116f, -1522f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(633f, 338f, -641f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, -549f, 449f))))));
    let var_1 = -vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(46951i, 0i, u_input.d), vec3<i32>(u_input.c, -2147483647i, u_input.d)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b) % 32u), u_input.d), u_input.c);
    let var_2 = Struct_2(var_0.x, _wgslsmith_add_i32(30087i, ~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, -1i), vec4<i32>(u_input.d, u_input.d, var_1.x, -1i)))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(round(544f))))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

