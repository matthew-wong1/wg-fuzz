struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: f32 = 560f;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-501f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -299f))))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> f32 {
    global0 = array<u32, 2>();
    global2 = array<Struct_1, 24>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, !any(arg_2.b.d), global0[_wgslsmith_index_u32(0u, 2u)]))), select(true, any(!(!vec4<bool>(arg_1.b, arg_2.b.d.x, arg_1.b, true))), !arg_1.b));
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f * _wgslsmith_f_op_f32(round(-751f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), arg_0, -1000f, 2280f), !arg_2.b.d.x);
    var var_1 = select(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(41432i, u_input.b, arg_3), arg_2.b.a), arg_2.b.a ^ vec3<i32>(u_input.b, -2147483647i, arg_3)), _wgslsmith_add_vec3_i32(arg_2.b.a, _wgslsmith_sub_vec3_i32(vec3<i32>(11688i, 6801i, u_input.b), arg_2.b.a)), true) | vec3<i32>(arg_2.b.a.x, abs(-u_input.b), _wgslsmith_sub_i32(select(13996i, i32(-1i) * -29093i, any(vec3<bool>(arg_1.b, false, var_0.b))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, arg_3), ~u_input.b, ~arg_2.b.a.x)));
    return 314f;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1625f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))), arg_1.x);
    global2 = array<Struct_1, 24>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.a.wzw, vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 2u)]), countOneBits(4294967295u)), _wgslsmith_sub_u32(0u & u_input.c.x, arg_0.a.x & global0[_wgslsmith_index_u32(1u, 2u)]), ~(~u_input.a))) ^ arg_0.b.c, 24u)];
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(-1198f, -292f))), _wgslsmith_f_op_f32(round(arg_1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -150f))));
    let var_3 = -1000f;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-518f, var_3, arg_0.b.d.x)), 1445f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(910f, Struct_3(arg_1, arg_0.b.d.x), arg_0, 0i)))))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_vec4_f32(func_3(arg_0.b.d.x & arg_0.b.d.x, true, _wgslsmith_add_u32(38904u, 0u))).x)), _wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 1099f) + 2028f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(u_input.b, -abs(-1i), firstTrailingBit(~(-25795i)), u_input.b << (~global0[_wgslsmith_index_u32(51624u, 2u)] % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1(Struct_4(u_input.c, global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(31103u, 40446u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94157u, 2u)], 2u)], 2u)], 2u)], _wgslsmith_clamp_u32(u_input.a, u_input.c.x, u_input.a)), 24u)], ~0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, 451f, -433f, 424f) - vec4<f32>(-1083f, 624f, -1207f, -1712f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1573f, 1980f, 360f, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 664f, 1768f, -123f) + vec4<f32>(-174f, 1000f, -1000f, -1684f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(480f, 1000f, -1197f, 664f), vec4<f32>(1526f, -407f, 296f, 125f), true)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 941f, 2032f, var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -128f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, 897f, var_1.x, -982f))), true & select(true, true, true)))), any(vec4<bool>(true, true, true, true)) || !(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(110009u, global0[_wgslsmith_index_u32(1u, 2u)]), 2u)] <= ~4294967295u));
    let var_3 = select(~min(-var_0.x, ~(~18584i)), -11586i, !select(var_2.b, var_2.b, var_2.b));
    global0 = array<u32, 2>();
    let var_4 = 866f;
    var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.a, vec4<f32>(108f, 415f, -2181f, var_2.a.x))) * _wgslsmith_f_op_vec4_f32(-var_2.a)))))), true);
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-44381i, 0i) << (u_input.c.wy % vec2<u32>(32u)), ~vec2<i32>(var_3, var_0.x))), u_input.a, var_0, ~4741i, u_input.a);
}

