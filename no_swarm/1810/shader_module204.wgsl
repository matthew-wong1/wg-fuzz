struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(365f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-551f, 1187f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - _wgslsmith_div_f32(global1.a, 733f)))))));
    let var_1 = !select(select(select(select(vec2<bool>(arg_0, arg_1.x), vec2<bool>(arg_1.x, false), true), !arg_1, arg_1), !(!arg_1), vec2<bool>(select(arg_1.x, false, true), var_0.a == 2279f)), arg_1, !arg_0);
    let var_2 = vec4<bool>((_wgslsmith_f_op_f32(-var_0.a) == 1000f) == true, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) != global1.a, all(select(vec4<bool>(any(vec2<bool>(true, true)), !arg_0, true, true), vec4<bool>(false, false, arg_0 | false, var_1.x), vec4<bool>(true != var_1.x, var_1.x, var_1.x, arg_1.x))));
    global0 = all(!var_2.xyz);
    global0 = !all(var_2.www);
    return 77643u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = arg_3;
    global0 = any(!vec3<bool>(true, arg_2.c, all(!vec4<bool>(true, arg_2.b.x, false, arg_0.c))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(arg_2.a, vec2<u32>(28209u, ~func_3(arg_0.c, vec2<bool>(false, true))), arg_2.a), select(arg_2.b, arg_0.b, arg_2.c), false);
    global1 = Struct_2(-1070f);
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - global1.a)));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(3741u, 53137u, u_input.a.x), arg_0.a.x), ~(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.xz) ^ 4294967295u)), vec2<u32>(arg_1, arg_2.a.x & ~countOneBits(0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    global0 = true;
    let var_0 = Struct_2(arg_1.x);
    let var_1 = ~u_input.b.x <= arg_0.a.x;
    global1 = Struct_2(586f);
    let var_2 = Struct_2(-964f);
    return Struct_2(_wgslsmith_f_op_f32(1f * global1.a));
}

fn func_1(arg_0: u32) -> u32 {
    global1 = func_4(Struct_1(func_2(Struct_1(vec2<u32>(1u, arg_0), vec4<bool>(false, false, false, true), true), 6322u, Struct_1(u_input.b.yy, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), true), Struct_2(-944f)), vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), ~1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, arg_0, 36853u, u_input.e.x), vec4<u32>(1u, u_input.e.x, u_input.a.x, arg_0)), true), u_input.e.x != _wgslsmith_mod_u32(abs(u_input.a.x), 6935u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), -138f, _wgslsmith_f_op_f32(f32(-1f) * -370f), global1.a) + _wgslsmith_div_vec4_f32(vec4<f32>(-435f, global1.a, global1.a, global1.a), vec4<f32>(global1.a, global1.a, global1.a, -1485f))) - vec4<f32>(-685f, _wgslsmith_f_op_f32(f32(-1f) * -706f), global1.a, global1.a)));
    var var_0 = !select(!vec3<bool>(any(vec2<bool>(false, true)), true, select(false, true, false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
    var_0 = vec3<bool>(var_0.x, any(!vec3<bool>(var_0.x | var_0.x, all(vec3<bool>(false, false, true)), var_0.x)), all(vec3<bool>(true, !var_0.x && true, !var_0.x)));
    var var_1 = ~(-u_input.c.xz);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~func_2(Struct_1(vec2<u32>(66497u, arg_0), vec4<bool>(var_0.x, true, var_0.x, false), false), u_input.e.x, Struct_1(vec2<u32>(4294967295u, arg_0), vec4<bool>(var_0.x, var_0.x, false, true), true), Struct_2(global1.a)).x), u_input.b.x, ~_wgslsmith_mod_u32(arg_0, u_input.a.x)), u_input.b);
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a);
    var var_0 = 23123u;
    let var_1 = 1232f;
    var var_2 = Struct_1(~vec2<u32>(func_1(_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(44407u, u_input.b.x))), u_input.e.x), vec4<bool>(true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), true, !(!(557f != var_1))), true);
    let var_3 = ~vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(var_2.a.x | 115384u), func_3(!var_2.c, select(vec2<bool>(false, var_2.c), vec2<bool>(var_2.b.x, var_2.b.x), true))), ~u_input.b.x, 1u, _wgslsmith_div_u32(55097u, _wgslsmith_div_u32(u_input.e.x, 43770u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global1.a * var_1), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(max(-1000f, -421f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-141f, 889f, -1512f), vec3<f32>(926f, -274f, global1.a)))) * vec3<f32>(862f, _wgslsmith_f_op_f32(-global1.a), var_1)))), -vec4<i32>(-2147483647i, firstLeadingBit(-u_input.d), _wgslsmith_div_i32(u_input.c.x, min(u_input.d, -1i)), -8858i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -555f, var_1, -1847f), vec4<f32>(211f, 178f, global1.a, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 151f, -489f, -414f) + vec4<f32>(global1.a, -1112f, global1.a, global1.a))))))));
}

