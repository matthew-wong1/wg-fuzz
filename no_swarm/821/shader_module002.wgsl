struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(true, vec4<bool>(true, true, false, false), 1u, 1424f), Struct_1(true, vec4<bool>(false, true, false, true), 1u, -896f), Struct_1(true, vec4<bool>(true, true, true, true), 18550u, -239f), Struct_1(true, vec4<bool>(false, true, false, false), 15197u, -878f), Struct_1(true, vec4<bool>(false, false, false, false), 0u, -969f), Struct_1(false, vec4<bool>(false, true, true, true), 4294967295u, -437f), Struct_1(false, vec4<bool>(false, true, false, false), 15640u, 1774f), Struct_1(true, vec4<bool>(true, false, false, false), 27026u, -2004f), Struct_1(true, vec4<bool>(true, false, true, true), 2068u, 1782f), Struct_1(false, vec4<bool>(true, true, true, true), 0u, 635f), Struct_1(false, vec4<bool>(false, false, true, true), 0u, -1557f), Struct_1(false, vec4<bool>(false, true, false, false), 0u, -1178f), Struct_1(true, vec4<bool>(false, true, true, true), 30233u, -1000f), Struct_1(false, vec4<bool>(false, true, true, true), 0u, 1808f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = ~(~min(-countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), reverseBits(vec4<i32>(0i, u_input.c, u_input.c, u_input.c) << (vec4<u32>(u_input.d.x, 18521u, arg_0.c, arg_0.c) % vec4<u32>(32u)))));
    var var_1 = ~abs(19898i);
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(min(_wgslsmith_clamp_u32(u_input.a.x, arg_0.c, u_input.b), ~58561u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(12976u, u_input.b), 0u), ~(u_input.b >> (arg_0.c % 32u)), 4294967295u), abs(~(~firstLeadingBit(vec4<u32>(4294967295u, arg_0.c, u_input.a.x, 1u)))));
    var var_3 = Struct_1(any(!select(vec2<bool>(true, true), !vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, arg_0.b.x), vec2<bool>(global0.x, false), arg_0.b.yw))), !select(select(arg_0.b, arg_0.b, select(arg_0.b, vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), false)), vec4<bool>(all(vec2<bool>(arg_0.a, true)), global0.x, false, !global0.x), !select(arg_0.b, arg_0.b, arg_0.b)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.c, 1u, u_input.b, arg_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(7703u, 0u, 61581u, u_input.d.x), vec4<u32>(u_input.a.x, arg_0.c, arg_0.c, 14073u)), vec4<u32>(arg_0.c, 18203u, u_input.b, 1u)), abs(vec4<u32>(4294967295u, 1u, arg_0.c, u_input.a.x)), select(arg_0.b, vec4<bool>(global0.x, false, true, arg_0.a), 68937i <= u_input.c)), ~(~abs(vec4<u32>(0u, arg_0.c, 0u, 1u)))), -312f);
    let var_4 = -1969i;
    return ~(var_3.c << (~arg_0.c % 32u));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~min(~7492u, u_input.a.x), ~47998u | ~func_3(Struct_1(false, vec4<bool>(global0.x, global0.x, global0.x, false), u_input.d.x, arg_0.x))), 14u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-851f - var_0.d), arg_0.x) + arg_0.x)));
    let var_2 = Struct_1(false, !var_0.b, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(var_0.c, var_0.c, 98571u) >> (vec3<u32>(var_0.c, u_input.d.x, u_input.a.x) % vec3<u32>(32u))), min(~_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(1u, var_0.c, u_input.d.x)), u_input.a)), -2505f);
    var var_3 = -1i >> (~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, var_2.c, 27739u), var_2.c)) % 32u);
    let var_4 = var_2;
    return var_2.b.yx;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    let var_0 = 1i;
    var var_1 = arg_0.b.zx;
    global0 = func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.d, -743f, arg_0.d, -331f), vec4<f32>(arg_0.d, -2011f, -1000f, arg_0.d))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(950f, 1000f, 528f, arg_0.d), vec4<f32>(arg_0.d, -286f, arg_0.d, arg_0.d)))))))));
    let var_2 = abs(arg_2.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a, vec4<i32>(62361i, -u_input.c, 1i, 8033i), _wgslsmith_div_u32(~1u, u_input.d.x));
    var var_1 = true;
    let var_2 = Struct_1(false, select(var_0.b, vec4<bool>(global0.x, var_0.a, var_0.a, func_1(global1[_wgslsmith_index_u32(var_0.c, 14u)], vec3<u32>(var_0.c, var_0.c, u_input.d.x), vec4<i32>(u_input.c, u_input.c, 43235i, u_input.c), var_0.c).a && global0.x), any(select(select(vec4<bool>(var_0.b.x, false, true, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(var_0.b.x, var_0.a, false, false)), var_0.b, true))), var_0.c, _wgslsmith_f_op_f32(var_0.d * -868f));
    var var_3 = vec3<bool>(var_0.b.x, true, !(var_0.c >= 94580u));
    global1 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_2.d, 2085f, var_2.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_2.d, 1345f) + vec4<f32>(598f, var_2.d, 1187f, 266f)))))));
}

