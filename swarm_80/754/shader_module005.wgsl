struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 756f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1294f, -689f)), _wgslsmith_f_op_f32(f32(-1f) * -1646f), _wgslsmith_f_op_f32(f32(-1f) * -1527f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(528f, 371f, 791f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1886f, 1000f, -1159f))))))));
    var var_1 = Struct_1(true || !(any(vec2<bool>(false, false)) & true));
    var var_2 = Struct_1(!var_1.a);
    let var_3 = -arg_0 >> (u_input.e.x % 32u);
    var var_4 = vec3<bool>(var_2.a, any(select(!(!vec4<bool>(true, var_1.a, var_2.a, var_1.a)), !vec4<bool>(false, true, false, var_2.a), select(vec4<bool>(var_2.a, false, true, false), select(vec4<bool>(var_2.a, false, false, var_1.a), vec4<bool>(var_1.a, var_2.a, false, false), var_2.a), false))), true & var_1.a);
    return _wgslsmith_div_f32(103f, var_0.x);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = !(!select(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), true), !select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), false), true));
    var var_1 = Struct_1(var_0.x);
    global0 = _wgslsmith_f_op_f32(233f * -275f);
    var_1 = arg_0;
    let var_2 = arg_0;
    return -599f;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(904f, 1000f), _wgslsmith_f_op_f32(func_2(10049i)))), 467f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(688f, _wgslsmith_f_op_f32(trunc(-647f)))), _wgslsmith_f_op_f32(f32(-1f) * -1093f)))));
    global0 = 815f;
    var var_0 = _wgslsmith_mult_u32(max(u_input.d.x, 4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~u_input.e.x), 5765u));
    var var_1 = max(firstTrailingBit(-(~u_input.b.ywy)) >> (vec3<u32>(_wgslsmith_mod_u32(1u, abs(23113u)), ~_wgslsmith_mod_u32(44541u, 65681u), u_input.d.x) % vec3<u32>(32u)), vec3<i32>(min(-u_input.a.x, -(u_input.b.x | u_input.b.x)), 0i, ~(-1i)));
    var var_2 = Struct_1(true);
    return Struct_1(all(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1038f) == _wgslsmith_f_op_f32(func_3(Struct_1(false))), false)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = abs(u_input.d.x);
    let var_1 = arg_1;
    global0 = arg_3;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(f32(-1f) * -107f))));
    var var_2 = func_1();
    return Struct_1(select(arg_2.a == true, arg_0, true));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2110f)) * _wgslsmith_f_op_f32(f32(-1f) * -1140f)) - _wgslsmith_f_op_f32(select(588f, _wgslsmith_f_op_f32(-753f - -1401f), arg_1.a))))));
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(sign(1000f));
    global0 = 100f;
    var var_1 = arg_1;
    return arg_3;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(abs(-181f));
    var var_0 = arg_0;
    var var_1 = -arg_1;
    var var_2 = arg_0;
    var_0 = Struct_1(var_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.e.x, u_input.c.x, firstTrailingBit(abs(abs(~28951u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, ~1u, ~u_input.c.x), ~_wgslsmith_mod_u32(firstLeadingBit(1u), u_input.d.x)));
    var var_1 = func_6(func_5(!vec2<bool>(true, any(vec2<bool>(true, false))), Struct_1(!all(vec3<bool>(true, false, true))), true, func_4(true, false, func_1(), 1072f)), u_input.b.x);
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.e.xz, select(_wgslsmith_add_vec2_u32(u_input.c.zy | vec2<u32>(1u, 42317u), ~vec2<u32>(27966u, var_0.x)), var_0.xx, !(!var_1.a))), _wgslsmith_mult_u32(54046u, ~firstTrailingBit(28284u ^ var_0.x)), firstLeadingBit(countOneBits(0u >> (u_input.d.x % 32u))));
    let var_3 = Struct_1(!((any(vec2<bool>(var_1.a, var_1.a)) != true) && var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b.xyy) ^ vec3<i32>(u_input.b.x, -2147483647i & firstLeadingBit(u_input.b.x), -2147483647i), -u_input.b.x, ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.c.xy, vec2<u32>(4294967295u, var_0.x)), countOneBits(vec2<u32>(41046u, 0u) << (vec2<u32>(u_input.e.x, var_2) % vec2<u32>(32u)))), u_input.d, ~61624u);
}

