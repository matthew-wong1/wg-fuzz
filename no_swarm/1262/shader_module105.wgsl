struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1535f), Struct_1(-329f), Struct_1(-795f), Struct_1(181f), Struct_1(-1268f), Struct_1(1069f), Struct_1(-759f), Struct_1(-906f), Struct_1(-400f), Struct_1(836f), Struct_1(-316f), Struct_1(-2427f), Struct_1(-347f), Struct_1(-2920f), Struct_1(1000f), Struct_1(-438f));

var<private> global1: array<u32, 10>;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f * -110f) - _wgslsmith_f_op_f32(313f * -258f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f - 134f) * 478f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1799f + -656f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -880f))))));
    return -580f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    let var_0 = arg_0.zy;
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(!vec2<bool>(var_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    global0 = array<Struct_1, 16>();
    let var_2 = Struct_1(-1130f);
    let var_3 = Struct_1(var_1.a);
    return firstTrailingBit(u_input.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = -(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, u_input.a.x, global2.x), vec3<i32>(global2.x, -1i, -2147483647i))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, select(i32(-1i) * -28780i, -4340i, !(!arg_3))), 38176i);
    global2 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(~(vec4<i32>(var_0.x, 0i, -1i, 1i) >> (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 10u)], 4294967295u, 1u) % vec4<u32>(32u))), vec4<i32>(var_0.x, reverseBits(var_0.x), i32(-1i) * -1i, global2.x)), select(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -5353i, 0i, var_0.x), vec4<i32>(global2.x, 1i, global2.x, -2147483647i)), _wgslsmith_div_vec4_i32(~(-vec4<i32>(global2.x, -1i, 1i, 2147483647i)), abs(vec4<i32>(-10918i, -28686i, 53457i, var_0.x))), select(true & arg_3, true, all(!vec3<bool>(arg_3, arg_3, false)))), ~_wgslsmith_clamp_vec4_i32(-(vec4<i32>(u_input.a.x, var_0.x, 21997i, var_1) | vec4<i32>(u_input.a.x, 0i, 10820i, 1i)), ~select(vec4<i32>(var_1, var_1, global2.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, var_1, var_1), false), countOneBits(vec4<i32>(66663i, 43214i, var_1, 2147483647i))));
    let var_2 = countOneBits(~(0u << (1u % 32u)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, min(_wgslsmith_dot_vec3_u32(~(vec3<u32>(65711u, 0u, global1[_wgslsmith_index_u32(9487u, 10u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(52648u, 10u)], 1u, 1u)), vec3<u32>(var_2, firstTrailingBit(76920u), 0u | var_2)), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_2, ~24880u), ~(var_2 | 0u)))), 16u)];
    return 28670i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -413f);
    global0 = array<Struct_1, 16>();
    global2 = vec4<i32>(-1i) * -vec4<i32>(func_1(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec2<f32>(-160f, 1031f), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, 1686f) + vec2<f32>(-367f, 669f))), select(u_input.a.x ^ global2.x, global2.x, u_input.a.x >= 1i), ~_wgslsmith_sub_i32(0i, -1i), -(~u_input.a.x));
    var var_1 = abs(reverseBits(u_input.a.x));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(abs(1u), global1[_wgslsmith_index_u32(~(~u_input.b), 10u)])), 10u)], _wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(8223u, 10u)], 5175u, 3203u), vec3<u32>(4294967295u, 82935u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 10u)], 10u)])) & (vec3<u32>(u_input.b, 1u, 18725u) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 10u)], 10u)]) % vec3<u32>(32u)))) << (vec3<u32>(33952u, _wgslsmith_dot_vec4_u32(vec4<u32>(37309u, 0u, 12779u, global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<u32>(global1[_wgslsmith_index_u32(36861u, 10u)], 0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 10u)], 10u)])), 4294967295u) % vec3<u32>(32u)), vec3<u32>(reverseBits(~1u), ~4162u, ~(~global1[_wgslsmith_index_u32(21668u, 10u)])))), 16u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(521f)), var_2.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -221f))))));
    let var_4 = vec2<bool>(true, (5699i ^ reverseBits(func_3(Struct_1(var_2.a), 430u, Struct_1(var_3.a), false))) <= -8120i);
    var_1 = u_input.a.x;
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(1i, 44420i, u_input.a.x, 1i), reverseBits(vec4<u32>(62161u, 1u, 2771u, u_input.b)) & countOneBits(vec4<u32>(~u_input.b, global1[_wgslsmith_index_u32(~43455u, 10u)], global1[_wgslsmith_index_u32(9526u ^ u_input.b, 10u)], 3046u)), ~(_wgslsmith_div_u32(_wgslsmith_div_u32(14083u, 4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)]) | min(reverseBits(4294967295u), _wgslsmith_div_u32(83244u, 8517u))));
}

