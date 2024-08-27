struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<Struct_3, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-673f * _wgslsmith_f_op_f32(max(813f, -1252f))), 354f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1409f, _wgslsmith_f_op_f32(select(310f, -799f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, 130f)), 906f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-947f - _wgslsmith_f_op_f32(-470f - 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1069f * 1809f) + -636f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(150f, -785f)) + _wgslsmith_f_op_f32(f32(-1f) * -1740f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(343f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(407f * -456f), _wgslsmith_div_f32(-989f, 1734f))))) * 1286f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-126f, -486f))))) - 1f));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), max(vec2<u32>(firstTrailingBit(12952u), 1u), ~vec2<u32>(1u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) + var_2.x), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(70151u, 38788u)), ~vec2<u32>(1u, 43127u)) << (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u))), u_input.b.x, vec4<i32>(countOneBits(u_input.c), ~(-1i), ~(-1i), -29836i));
    global0 = array<vec4<bool>, 14>();
    return vec4<bool>(true, true, true, false);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    let var_1 = select(select(global0[_wgslsmith_index_u32(0u, 14u)], func_3(), !select(select(global0[_wgslsmith_index_u32(var_0.b.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.b.x, var_0.b.x, 9633u), 14u)], true)), !global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.b.x), 14u)], !(!select(all(vec2<bool>(true, false)), true, true)));
    let var_2 = var_0.b.x;
    return arg_0.b;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(21996u, 33602u), ~func_2(Struct_1(-1000f, vec2<u32>(48175u, 8462u))))) ^ reverseBits(23940u);
    global0 = array<vec4<bool>, 14>();
    let var_1 = ~vec2<i32>(abs(arg_0.x & _wgslsmith_div_i32(u_input.c, 2147483647i)), 7301i);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~abs(var_0), (~var_0 | ~37938u) | var_0, 40769u), 8u)];
    global0 = array<vec4<bool>, 14>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1352f, var_2.a.x)), -1000f)), vec2<u32>(var_0, var_0) >> (min(vec2<u32>(var_0, 4294967295u) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), vec2<u32>(var_0, 47567u) & vec2<u32>(var_0, var_0)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(451f, var_2.b.x))))), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~10889u), vec2<u32>(var_0, firstLeadingBit(0u)))), 1i, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0, ~u_input.b, abs(vec4<i32>(arg_0.x, 0i, var_1.x, 1i))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & ((29401i == abs(u_input.c)) | true);
    var var_1 = func_1(vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(-u_input.c, u_input.b.x, u_input.b.x), -22502i, i32(-1i) * -(~u_input.c)));
    var var_2 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-2147483647i, 2147483647i)), u_input.b.zw), var_1.d.zx), u_input.b.xw);
    var var_3 = 0i;
    let var_4 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(abs(var_1.c) ^ -34073i, 76511i)), vec2<i32>(~_wgslsmith_div_i32(13071i ^ var_1.c, abs(u_input.a)), var_1.d.x));
    var var_5 = var_1.b;
    global0 = array<vec4<bool>, 14>();
    let var_6 = global1[_wgslsmith_index_u32(~abs(~(var_5.b.x << (var_5.b.x % 32u))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, _wgslsmith_f_op_f32(-var_5.a), ~countOneBits(var_4.x) & u_input.a);
}

