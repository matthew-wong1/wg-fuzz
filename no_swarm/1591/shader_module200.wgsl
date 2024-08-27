struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(true);
    let var_1 = u_input.c;
    let var_2 = var_0;
    var var_3 = var_2;
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!(true | all(vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-921f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + -902f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1986f, _wgslsmith_f_op_f32(1131f + 378f))), _wgslsmith_f_op_f32(f32(-1f) * -352f)), all(vec4<bool>(select(var_0.a, false, var_0.a), var_0.a, var_0.a, true)))));
    var var_2 = 21040u;
    let var_3 = ~57205u;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1335f, 1629f)))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(var_1 * 1765f)))))));
    return Struct_1(!(59453i != -reverseBits(u_input.b.x)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = !(!all(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0, var_0.a, true), false), vec3<bool>(true, arg_0, false), false)));
    let var_2 = func_2();
    var var_3 = var_2;
    let var_4 = var_2;
    return Struct_1(false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = select(select(vec4<bool>(var_0.a, !arg_0.a, true, true), vec4<bool>(true == (true || arg_2.a), !all(vec4<bool>(true, arg_1.x, var_0.a, arg_2.a)), any(select(vec3<bool>(arg_0.a, false, arg_0.a), arg_1, true)), !arg_1.x), arg_2.a), vec4<bool>(!arg_0.a, 549f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1752f)))), func_2().a, true), _wgslsmith_sub_i32(select(u_input.c, u_input.b.x ^ u_input.b.x, arg_2.a), u_input.b.x) >= max(0i >> (~4294967295u % 32u), 0i << (1u % 32u)));
    var var_2 = -u_input.b;
    var_2 = u_input.a;
    var_2 = u_input.b;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, -1140f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 21355u, ~4294967295u), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(15820u, 32730u, 1u), vec3<u32>(7715u, 0u, 55743u), vec3<u32>(1u, 75479u, 77152u)))));
    var var_1 = u_input.b.wx;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0, var_0) & var_0, 1u, 11684u) >> (firstTrailingBit(vec3<u32>(var_0, ~var_0, 32672u)) % vec3<u32>(32u)), ~select(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, var_0, 1u), vec3<u32>(var_0, var_0, var_0), false), vec3<u32>(4294967295u, 3337u, var_0)), countOneBits(abs(vec3<u32>(var_0, 70649u, 4294967295u))), vec3<bool>(true, true, any(vec2<bool>(true, true)))));
    var var_3 = 107641u;
    var var_4 = 1u;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-831f, 1704f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-503f)))));
    var_4 = ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 52154u), ~vec3<u32>(0u, 1u, 20061u))) & _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(7786u, 56167u, var_0)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 3322u, 0u), vec3<u32>(var_2.x, var_2.x, var_2.x))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 0u, 39850u), vec3<u32>(var_2.x, 39u, 0u), vec3<u32>(var_2.x, var_0, 15314u)), max(vec3<u32>(4294967295u, 18486u, var_0), vec3<u32>(var_2.x, var_2.x, 3671u))));
    let x = u_input.a;
    s_output = func_4(func_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(303f, -1099f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))), vec3<bool>(true, true, true), Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-253f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1162f))))));
}

