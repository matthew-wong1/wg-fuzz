struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(2147483647i, 28924i, -2893i, 18318i, i32(-2147483648), 1i, 38647i, -15247i, i32(-2147483648), -1i, -32979i, 8472i, 1i, 0i, 0i, 1i, i32(-2147483648), i32(-2147483648), 0i, 4022i, 7968i, 9900i, 1i, -1i, 1i, -37027i, -10072i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    global0 = array<i32, 27>();
    let var_0 = Struct_2(arg_0);
    global1 = Struct_1(global1.a, abs(1i >> (~global1.d % 32u)) & global0[_wgslsmith_index_u32(global1.d, 27u)], 6624i, global1.a.x);
    global2 = array<vec4<i32>, 8>();
    global0 = array<i32, 27>();
    return global1.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~vec3<u32>(global1.a.x, _wgslsmith_add_u32(global1.a.x, abs(arg_1.d)) << (68432u % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.d, 0u, 0u, arg_1.a.x) & vec4<u32>(global1.a.x, global1.a.x, 13750u, 28377u)), (vec4<u32>(arg_1.d, 1u, 71393u, 0u) << (vec4<u32>(83594u, global1.a.x, 38069u, 10666u) % vec4<u32>(32u))) >> (vec4<u32>(global1.a.x, 76553u, 7405u, 56641u) % vec4<u32>(32u))));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_1 = _wgslsmith_sub_u32(arg_1.a.x, func_3(_wgslsmith_f_op_vec2_f32(-arg_2.a), _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(min(arg_2.a.x, -1222f))), select(vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(all(vec3<bool>(true, false, false)), true, true))));
    var var_2 = false;
    return Struct_1(vec3<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(5160u, ~var_0.x, 4294967295u), arg_1.a), _wgslsmith_mult_u32(select(1u, 48095u, false) & global1.a.x, var_0.x)), ~(-firstLeadingBit(global1.c)), ~_wgslsmith_sub_i32(2706i, global1.c), 0u);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), any(vec2<bool>(true, true))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), all(vec2<bool>(true, true))), vec2<bool>(false, any(vec4<bool>(false, false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(!(arg_1 != arg_2.d), true));
    let var_1 = ~(global1.a.zz << (~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 20144u), vec2<u32>(global1.a.x, global1.a.x))) % vec2<u32>(32u)));
    let var_2 = arg_2;
    var var_3 = min(-vec3<i32>(var_2.c ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.zz), ~_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(arg_2.c, global0[_wgslsmith_index_u32(0u, 27u)])), reverseBits(arg_0.x)), -_wgslsmith_sub_vec3_i32(u_input.a.xww & vec3<i32>(arg_0.x, var_2.b, -1i), vec3<i32>(-51012i, arg_0.x, 1i) & firstLeadingBit(vec3<i32>(var_2.b, global0[_wgslsmith_index_u32(36039u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]))));
    var_3 = ~arg_0;
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-775f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -651f))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(642f)) + 706f))), _wgslsmith_f_op_f32(646f * 1237f));
    global2 = array<vec4<i32>, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(10660u, 27u)]), u_input.a.x, 38288i), 54639u, func_2(-u_input.a.yxw, Struct_1(~global1.a, u_input.a.x, 0i << (global1.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global1.d, 14052u), vec4<u32>(0u, 89580u, global1.d, global1.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) * vec2<f32>(-294f, 242f)))))));
    global0 = array<i32, 27>();
    global2 = array<vec4<i32>, 8>();
    return func_2(abs(-_wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1250u, 27u)], u_input.a.x), -vec3<i32>(5302i, u_input.a.x, 29381i))), func_2(-(~(u_input.a.wxz | vec3<i32>(-2147483647i, 0i, u_input.a.x))), func_2(reverseBits(vec3<i32>(25406i, global1.c, global1.c)), Struct_1(global1.a, i32(-1i) * -6193i, 2147483647i, ~0u), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, -3356f) - var_1))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(arg_1, 466f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, _wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = array<i32, 27>();
    let var_0 = (vec4<i32>(global0[_wgslsmith_index_u32(func_2(vec3<i32>(global0[_wgslsmith_index_u32(7552u, 27u)], -2147483647i, -22129i), Struct_1(arg_1.a, 24957i, arg_1.b, global1.a.x), Struct_2(vec2<f32>(arg_0.a.x, arg_0.a.x))).d, 27u)], countOneBits(func_2(vec3<i32>(-1i, u_input.a.x, -1i), arg_1, Struct_2(vec2<f32>(arg_0.a.x, arg_0.a.x))).b), 0i, u_input.a.x) ^ ~select(global2[_wgslsmith_index_u32(global1.a.x, 8u)] >> (vec4<u32>(28522u, 23431u, 790u, global1.d) % vec4<u32>(32u)), vec4<i32>(arg_2, 40560i, -1i, arg_2), select(true, false, true))) ^ _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-2147483647i, 1i, arg_2, arg_2)), vec4<i32>(arg_1.c, -2147483647i, -4286i, global1.b)) ^ -_wgslsmith_add_vec4_i32(u_input.a, u_input.a));
    global1 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)), -1457f)) - vec2<f32>(_wgslsmith_f_op_f32(588f - 610f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(174f))))));
    var var_2 = min(max(vec2<u32>(global1.d, _wgslsmith_clamp_u32(~arg_1.d, _wgslsmith_div_u32(global1.d, global1.a.x), arg_1.a.x)), global1.a.xz | vec2<u32>(12374u, ~38989u)), vec2<u32>(45157u, _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(global1.d, arg_1.d, 63395u, arg_1.a.x)), select(vec4<u32>(global1.a.x, global1.a.x, arg_1.d, global1.d), vec4<u32>(1u, 0u, global1.d, 4294967295u), true)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(654u, 53211u, 70781u, 95564u), vec4<u32>(arg_1.d, 45883u, arg_1.d, arg_1.d), vec4<bool>(true, true, false, true)), vec4<u32>(global1.d, 24729u, global1.a.x, arg_1.d)))));
    return abs(~(global0[_wgslsmith_index_u32(~5422u, 27u)] << (firstLeadingBit(1726u) % 32u)) >> (17016u % 32u));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(vec2<f32>(378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-248f * -334f))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, 522f, 333f)), vec3<f32>(var_0.a.x, var_0.a.x, -1039f))))))) - vec3<f32>(_wgslsmith_f_op_vec2_f32(func_4(u_input.a.wzy, _wgslsmith_dot_vec3_u32(arg_2.a, abs(vec3<u32>(arg_2.d, 0u, arg_0.a.x))), arg_2)).x, -504f, var_0.a.x));
}

fn func_7(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(1i, -6309i), global0[_wgslsmith_index_u32(arg_3.d, 27u)]), countOneBits(~vec3<i32>(-2147483647i, arg_0, -5964i))) << (min(vec3<u32>(arg_2.x & 11330u, func_3(vec2<f32>(-2388f, 547f), -1254f, vec3<bool>(true, true, true)), reverseBits(arg_3.a.x)), global1.a) % vec3<u32>(32u)), Struct_1(~vec3<u32>(~4294967295u, arg_2.x, 0u), ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~21067u, 27u)], -21846i), ~global1.c, select(_wgslsmith_mult_u32(arg_3.d, global1.d), _wgslsmith_sub_u32(arg_2.x, ~21913u), false)), Struct_2(arg_1.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -11123i;
    var var_1 = func_7(~_wgslsmith_sub_i32(var_0, global1.c), _wgslsmith_f_op_vec3_f32(func_6(Struct_1(global1.a, abs(14261i), func_5(Struct_2(vec2<f32>(198f, 677f)), func_1(117f, -661f, vec4<f32>(-1000f, 1876f, -273f, 1003f)), var_0), func_1(_wgslsmith_f_op_f32(round(1718f)), _wgslsmith_f_op_f32(-1488f + -1521f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2819f, -670f, 1889f) + vec4<f32>(-503f, -2041f, -454f, -474f))).a.x), true, Struct_1(vec3<u32>(func_2(vec3<i32>(-29272i, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global1.d, 27u)]), Struct_1(vec3<u32>(57952u, 19639u, global1.d), -2147483647i, u_input.a.x, 16194u), Struct_2(vec2<f32>(1735f, 217f))).d, ~0u, global1.a.x), -abs(0i), ~42361i, func_2(u_input.a.zwx, func_1(272f, -1133f, vec4<f32>(1975f, 1020f, 575f, 1403f)), Struct_2(vec2<f32>(-750f, -540f))).d))), firstTrailingBit(vec2<u32>(func_2(vec3<i32>(var_0, -2147483647i, 2147483647i), Struct_1(global1.a, var_0, 11159i, global1.a.x), Struct_2(vec2<f32>(-1921f, -1462f))).a.x, global1.d) & (global1.a.yx << (_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 47845u), global1.a.xz) % vec2<u32>(32u)))), Struct_1(global1.a, ~(~(var_0 ^ var_0)), (~global1.b << (global1.a.x % 32u)) >> (global1.a.x % 32u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(40875u, 11565u, global1.a.x), vec3<u32>(global1.d, 1u, 40137u)) & min(global1.d, 0u))));
    let var_2 = -(~(-2147483647i) << (global1.a.x % 32u));
    let var_3 = ~(countOneBits(0u) | global1.d);
    let var_4 = Struct_1(min(~func_1(1734f, _wgslsmith_f_op_f32(139f + 480f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1572f, 1426f, -357f, 154f)))).a, global1.a), 9643i, _wgslsmith_mod_i32(-4579i, var_0 >> (var_1.d % 32u)), ~(~func_1(_wgslsmith_f_op_f32(506f * -542f), _wgslsmith_f_op_f32(round(-488f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, -132f, 529f, 742f))).d));
    global2 = array<vec4<i32>, 8>();
    global2 = array<vec4<i32>, 8>();
    var var_5 = countOneBits(global2[_wgslsmith_index_u32(global1.d, 8u)] | vec4<i32>(reverseBits(-35373i), _wgslsmith_mult_i32(abs(global1.c), countOneBits(15347i)), ~(~(-15592i)), ~_wgslsmith_sub_i32(14760i, 80116i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(-(-52597i & var_2), 1i | ~func_7(0i, vec3<f32>(1387f, -1543f, -341f), vec2<u32>(var_1.a.x, 0u), var_4).b));
}

