struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 9782u), vec3<u32>(43452u, 0u, 0u), vec3<u32>(57565u, 38630u, 0u), vec3<u32>(4294967295u, 1u, 56967u), vec3<u32>(74380u, 0u, 30370u), vec3<u32>(4294967295u, 27u, 58873u), vec3<u32>(1u, 4294967295u, 42220u), vec3<u32>(66972u, 0u, 71514u), vec3<u32>(1u, 40149u, 4294967295u), vec3<u32>(4294967295u, 1u, 11772u), vec3<u32>(0u, 7515u, 26057u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 1u, 16234u), vec3<u32>(4294967295u, 4294967295u, 14285u), vec3<u32>(4294967295u, 10140u, 1u), vec3<u32>(40429u, 41165u, 0u), vec3<u32>(40409u, 46201u, 1u), vec3<u32>(38409u, 4294967295u, 15522u), vec3<u32>(37402u, 50854u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 34528u), vec3<u32>(0u, 0u, 63149u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 25999u), vec3<u32>(42079u, 117661u, 48254u), vec3<u32>(0u, 83589u, 0u));

var<private> global1: f32;

var<private> global2: array<Struct_2, 5>;

var<private> global3: array<Struct_2, 13>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global2 = array<Struct_2, 5>();
    global1 = -679f;
    var var_0 = arg_0;
    let var_1 = -142f;
    var var_2 = _wgslsmith_f_op_f32(sign(1000f));
    return any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = arg_1;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(488f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -331f))))));
    let var_1 = ~(~(~998u));
    global1 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1047f))))));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-102f, -509f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -257f), -1000f, arg_3))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-471f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1196f, 740f, false)))))));
    return abs(arg_0.x) << (~(~(~4294967295u)) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_add_u32(~func_3(~global0[_wgslsmith_index_u32(arg_2, 26u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2, 66900u), 13u)], abs(vec2<i32>(0i, u_input.b.x)), true), _wgslsmith_div_u32(4172u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2, 20358u, arg_2), ~26522u))));
    var var_1 = select(!select(select(select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), arg_1.x), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, false), true), select(select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, true, false)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x), arg_1.x), true)), select(select(vec4<bool>(arg_1.x, !arg_1.x, true, !arg_1.x), vec4<bool>(false, select(arg_1.x, false, false), true, all(arg_1)), select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(false, true, arg_1.x, arg_1.x)), !vec4<bool>(arg_1.x, true, arg_1.x, true), select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false), true))), vec4<bool>(arg_1.x, true, 1u < ~var_0.a, true), select(!select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_1.x), vec4<bool>(true, !arg_1.x, false, true), vec4<bool>(arg_1.x, true, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))))), arg_1.x);
    var_1 = !select(select(!select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(arg_1.x, true, false, var_1.x), vec4<bool>(arg_1.x, false, true, var_1.x)), select(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(var_1.x, false, false, var_1.x)), !vec4<bool>(var_1.x, false, var_1.x, arg_1.x), arg_1.x), vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, false, false)), arg_1.x | arg_1.x, select(false, var_1.x, var_1.x), any(vec4<bool>(false, var_1.x, true, var_1.x)))), vec4<bool>(all(vec4<bool>(arg_1.x, false, var_1.x, true)), false, ~var_0.a > arg_2, true), var_1.x);
    var_1 = vec4<bool>((45665u | func_3(~vec3<u32>(arg_2, 22743u, 2701u), var_0, _wgslsmith_mult_vec2_i32(arg_0.zx, u_input.b.xz), var_1.x)) != arg_2, true, !(firstLeadingBit(u_input.b.x) == (-2147483647i | -arg_0.x)), true);
    var var_2 = Struct_1(countOneBits(reverseBits(u_input.a)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2 >> (0u % 32u), select(var_0.a, arg_2, var_1.x)), select(vec2<u32>(573u, var_0.a), ~vec2<u32>(arg_2, 4294967295u), arg_1.x)), -211f);
    return Struct_1(~_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_2.a, 0i, -52412i)), ~(~arg_0.yxx)), countOneBits(firstLeadingBit(select(_wgslsmith_mod_vec2_u32(var_2.b, vec2<u32>(0u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(43335u, var_2.b.x), vec2<u32>(var_0.a, var_0.a)), true))), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1666f);
    global0 = array<vec3<u32>, 26>();
    let var_1 = !vec2<bool>(func_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 0i), vec4<i32>(0i, u_input.a, -1i, 28622i), vec4<i32>(22157i, -43746i, u_input.b.x, 43148i))), _wgslsmith_mult_i32(abs(u_input.b.x), ~(-1i)) > u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)));
    var var_3 = -_wgslsmith_add_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 41321i, 2147483647i, 0i), vec4<i32>(2147483647i, -1i, -1i, -6462i)) | -vec4<i32>(u_input.a, u_input.a, u_input.a, -27016i)) ^ vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), -18967i, select(2147483647i, u_input.b.x, true), -1i), ~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 0i, 2147483647i), vec4<i32>(-2147483647i, -39004i, -2147483647i, -2147483647i))));
    var var_4 = !select(vec3<bool>(true, !(!var_1.x), true), vec3<bool>(true, var_0 != var_0, select(var_1.x, false, true)), true & var_1.x);
    let var_5 = global2[_wgslsmith_index_u32(11628u, 5u)];
    let var_6 = func_2(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(1280i, var_3.x, 14463i, -1i), vec4<i32>(16797i, var_3.x, -2147483647i, var_3.x)), -vec4<i32>(u_input.a, -94365i, var_3.x, 1i) & (vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x) >> (vec4<u32>(var_5.a, 40650u, 66807u, var_5.a) % vec4<u32>(32u))), vec4<i32>(u_input.a, -1i, -19302i, 1i)), var_4.zz, 45980u);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.a), ~var_6.a, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(-42986i, var_3.x, ~(-1i))), reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(36953u, 1852u, var_5.a), vec3<u32>(var_5.a, 23793u, var_6.b.x)))), countOneBits(u_input.b));
}

