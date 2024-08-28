struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(abs(-1506f))), global0.a), ~global0.b);
    let var_0 = !global2.x;
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.a)), _wgslsmith_f_op_vec2_f32(ceil(global0.a))), _wgslsmith_clamp_u32(firstLeadingBit(~global0.b), 57627u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, arg_0), vec3<u32>(1u, u_input.d.x, global0.b)) % 32u), arg_0.x));
    let var_2 = 440f;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, 1000f)));
    return ~(~(~(~_wgslsmith_div_u32(arg_0.x, u_input.c.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global0 = Struct_1(arg_3.a, max(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 1u) | u_input.b, 1u));
    global3 = ~(~func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 0u, 0u), u_input.d | vec3<u32>(0u, arg_0.x, u_input.a.x))));
    global0 = arg_3;
    global3 = arg_3.b;
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(29986u, u_input.c.x, arg_0.x, 1u), u_input.a, _wgslsmith_div_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), u_input.a)), firstTrailingBit(vec4<u32>(arg_0.x, u_input.d.x, ~arg_0.x, global0.b)));
    return _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(exp2(arg_3.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    global0 = arg_3;
    let var_0 = global2.x;
    global3 = global0.b;
    let var_1 = ~(-(firstTrailingBit(_wgslsmith_clamp_i32(-18635i, -54838i, -1i)) ^ 0i));
    global1 = true;
    return ~(var_1 << (arg_1.x % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) * _wgslsmith_f_op_vec2_f32(trunc(arg_0.a)))), ~(~(~arg_0.b))), vec2<u32>(~global0.b, arg_1), _wgslsmith_f_op_vec2_f32(func_2(max(u_input.d << (vec3<u32>(4294967295u, global0.b, arg_0.b) % vec3<u32>(32u)), arg_3.wyw) ^ max(arg_3.zwz, vec3<u32>(arg_0.b, 98644u, 0u) << (u_input.d % vec3<u32>(32u))), _wgslsmith_sub_i32(2147483647i, 3882i), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, global0.a.x)), _wgslsmith_mod_u32(global0.b ^ arg_1, ~global0.b)))), arg_0);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a, global0.a)) + _wgslsmith_div_vec2_f32(global0.a, vec2<f32>(1000f, global0.a.x)))))), 77752u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2073f, 3338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.a.x)), arg_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), global0.a.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global2 = select(!(!select(!vec4<bool>(global2.x, global2.x, true, global2.x), !vec4<bool>(true, global2.x, global2.x, false), 49853u <= global0.b)), !vec4<bool>(true, any(select(global2.zy, global2.yy, global2.xx)), true, false), vec4<bool>(true, true != all(global2.yx), true, global2.x));
    global3 = countOneBits(~(~1u));
    global1 = global2.x;
    global0 = Struct_1(global0.a, ~min(816u, 1u));
    global1 = true;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(~u_input.c, ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x | 1u, u_input.d.x), vec2<u32>(u_input.a.x, 83853u) | vec2<u32>(1u, 6745u)));
    global1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, -715f, -1000f, global0.a.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global0.a, var_0.x), var_0.x, false, u_input.a))))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a + global0.a) + vec2<f32>(global0.a.x, 545f))), firstTrailingBit(~countOneBits(global0.b))));
    var var_1 = global2.xyw;
    global3 = 1u;
    let var_2 = ~(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(~var_0.x, ~128193u, ~var_0.x, 44484u)) & reverseBits(u_input.a | _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)));
    global2 = !select(!vec4<bool>(any(global2.ww), true, true, var_2.x > var_2.x), !select(vec4<bool>(global2.x, global2.x, global2.x, var_1.x), vec4<bool>(false, var_1.x, global2.x, true), !vec4<bool>(false, true, false, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1109f) == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(967f, 1709f), _wgslsmith_f_op_f32(exp2(global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 831f, global0.a.x) * vec3<f32>(global0.a.x, 1293f, global0.a.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1620f, -1097f), 107f, global0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1405f, 475f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, global0.a.x, global0.a.x))), vec3<bool>(false, any(vec2<bool>(false, global2.x)), true)))), countOneBits(u_input.a.zyw));
}

