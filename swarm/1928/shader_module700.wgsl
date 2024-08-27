struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: bool;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(true, true), Struct_3(false, true), Struct_3(false, false), Struct_3(true, true), Struct_3(false, true), Struct_3(true, true), Struct_3(true, false), Struct_3(true, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    global0 = true;
    global0 = !any(vec2<bool>(_wgslsmith_mult_i32(u_input.b, -2147483647i) == 2147483647i, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    var var_0 = u_input.c;
    return 5925i;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = func_2();
    global1 = array<Struct_3, 8>();
    var var_1 = Struct_1(vec3<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(473f - 807f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-832f, 622f)), any(vec3<bool>(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(false, false, true))))), min(~(vec3<u32>(49414u, u_input.c, u_input.c) & ~vec3<u32>(u_input.c, u_input.c, u_input.c)), reverseBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 48399u, u_input.c), vec3<u32>(14093u, 2465u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c)), max(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)))), _wgslsmith_div_vec4_u32(~select(firstTrailingBit(vec4<u32>(u_input.c, 104945u, u_input.c, 14599u)), vec4<u32>(54479u, 0u, 0u, 0u), true), vec4<u32>(4294967295u, u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(44456u, u_input.c, u_input.c)), u_input.c)), (i32(-1i) * 0i) >> (0u % 32u));
    global1 = array<Struct_3, 8>();
    var_1 = Struct_1(vec3<bool>(select((25120i < u_input.b) && var_1.a.x, false, 0u <= _wgslsmith_clamp_u32(0u, 107648u, 4294967295u)), false, !(!var_1.a.x)), var_1.c.zww, firstLeadingBit(abs((vec4<u32>(30404u, 42488u, 31951u, var_1.b.x) & vec4<u32>(4294967295u, 0u, var_1.b.x, 48688u)) >> (vec4<u32>(u_input.c, var_1.b.x, 1u, var_1.c.x) % vec4<u32>(32u)))), 1i);
    return var_1.c;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_3, 8>();
    var var_0 = vec3<i32>(~(-27204i), ~(-1i), ~(-(~u_input.a))) | vec3<i32>(1510i, 1i, -_wgslsmith_div_i32(i32(-1i) * -1i, 2147483647i));
    var var_1 = firstTrailingBit(vec3<i32>(func_2(), _wgslsmith_dot_vec2_i32(~vec2<i32>(44646i, 2147483647i), var_0.yy) & (-2147483647i << (~u_input.c % 32u)), var_0.x));
    let var_2 = true;
    global0 = (max(1i, 73334i) | -(~39130i << (u_input.c % 32u))) >= (var_0.x << (~(~(9456u & u_input.c)) % 32u));
    return Struct_1(arg_1, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(18730u, u_input.c, u_input.c)), 0u) >> (~12030u % 32u), u_input.c, ~u_input.c), func_3(firstTrailingBit(~abs(1i))), ~(~var_0.x) & min(-1i, min(var_0.x, -var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 8>();
    let var_0 = func_1(Struct_5(Struct_4(vec2<bool>(false, true)), Struct_3(all(vec2<bool>(false, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))), vec3<bool>(true, true, true), vec3<bool>(reverseBits(u_input.c) != u_input.c, !all(vec4<bool>(false, false, true, true)), !any(vec4<bool>(true, false, false, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1805f), _wgslsmith_f_op_f32(ceil(-104f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-751f, 493f), vec2<f32>(1297f, 324f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1095f, 1130f) + vec2<f32>(-1581f, -1213f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1776f, -352f))))))));
    global1 = array<Struct_3, 8>();
    var var_2 = Struct_3(!var_0.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

