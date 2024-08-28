struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-599f, Struct_1(1i), Struct_1(1i), 1u, vec4<i32>(-7010i, -36873i, 27115i, 7485i)), Struct_2(655f, Struct_1(51266i), Struct_1(1i), 6278u, vec4<i32>(-35425i, 34202i, -3696i, 0i)), Struct_2(-1000f, Struct_1(i32(-2147483648)), Struct_1(0i), 55298u, vec4<i32>(6332i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(1470f, Struct_1(-1i), Struct_1(-5092i), 16534u, vec4<i32>(-22805i, -1i, i32(-2147483648), i32(-2147483648))), Struct_2(-1443f, Struct_1(1i), Struct_1(31801i), 1u, vec4<i32>(2147483647i, -52634i, 25665i, 2147483647i)), Struct_2(-566f, Struct_1(-1i), Struct_1(17692i), 53526u, vec4<i32>(13750i, -11633i, 1329i, -25929i)), Struct_2(1087f, Struct_1(-30444i), Struct_1(22861i), 1u, vec4<i32>(0i, 2147483647i, 11682i, 2147483647i)), Struct_2(-1096f, Struct_1(2147483647i), Struct_1(-19386i), 4294967295u, vec4<i32>(-1i, -17444i, 0i, 20610i)), Struct_2(130f, Struct_1(-5286i), Struct_1(2147483647i), 4294967295u, vec4<i32>(15446i, 2147483647i, 25384i, 13116i)), Struct_2(-1046f, Struct_1(1i), Struct_1(52517i), 4294967295u, vec4<i32>(65406i, -62082i, -1i, -1i)), Struct_2(858f, Struct_1(23140i), Struct_1(-23296i), 39409u, vec4<i32>(1i, -16124i, -34026i, 0i)), Struct_2(505f, Struct_1(1i), Struct_1(17926i), 4294967295u, vec4<i32>(-2994i, 25794i, -2134i, 0i)), Struct_2(-300f, Struct_1(2147483647i), Struct_1(i32(-2147483648)), 17581u, vec4<i32>(-1i, 0i, 1i, -57390i)), Struct_2(-2021f, Struct_1(1i), Struct_1(1i), 1u, vec4<i32>(-5582i, -1i, 23378i, i32(-2147483648))), Struct_2(-1139f, Struct_1(i32(-2147483648)), Struct_1(2147483647i), 0u, vec4<i32>(-98819i, i32(-2147483648), -12994i, -1i)), Struct_2(1294f, Struct_1(5497i), Struct_1(0i), 5461u, vec4<i32>(39028i, 14665i, -50288i, 1i)), Struct_2(-992f, Struct_1(i32(-2147483648)), Struct_1(0i), 1u, vec4<i32>(2147483647i, -1i, 2147483647i, 1i)), Struct_2(737f, Struct_1(-77018i), Struct_1(26283i), 0u, vec4<i32>(-7283i, 0i, -28856i, 20493i)), Struct_2(-1666f, Struct_1(-30896i), Struct_1(36537i), 1u, vec4<i32>(-353i, 10667i, 0i, 29345i)), Struct_2(-1078f, Struct_1(i32(-2147483648)), Struct_1(-66942i), 20908u, vec4<i32>(-11970i, 24486i, 61734i, 23832i)), Struct_2(-1247f, Struct_1(26513i), Struct_1(-49472i), 1u, vec4<i32>(24785i, 47749i, 1i, 1i)), Struct_2(-1935f, Struct_1(i32(-2147483648)), Struct_1(33615i), 20794u, vec4<i32>(10948i, -32964i, -33267i, 2101i)), Struct_2(1748f, Struct_1(1i), Struct_1(18873i), 11524u, vec4<i32>(-18057i, i32(-2147483648), 25738i, -39721i)), Struct_2(-1287f, Struct_1(-2437i), Struct_1(-4785i), 66641u, vec4<i32>(0i, 0i, -1i, i32(-2147483648))));

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-348f, 1117f), vec2<f32>(1348f, 585f), vec2<f32>(-620f, -2117f), vec2<f32>(-462f, -727f), vec2<f32>(-249f, -479f), vec2<f32>(-1203f, -221f), vec2<f32>(1000f, -135f));

var<private> global2: array<Struct_1, 19>;

var<private> global3: Struct_1 = Struct_1(1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f - _wgslsmith_f_op_f32(select(-551f, -274f, false))))), Struct_1(global3.a), arg_0, _wgslsmith_mult_u32(~1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 46789u, 4294967295u), select(vec3<u32>(4294967295u, 17208u, 23712u), vec3<u32>(35071u, 40707u, 39303u), vec3<bool>(true, false, true)))), vec4<i32>(-1i) * -(select(u_input.a, u_input.a, vec4<bool>(true, false, true, true)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global3.a, u_input.a.x, 0i, arg_0.a), vec4<i32>(-2147483647i, -719i, 27816i, u_input.a.x))));
    global1 = array<vec2<f32>, 7>();
    global3 = Struct_1(u_input.a.x);
    global0 = array<Struct_2, 24>();
    var var_1 = select(select(vec2<u32>(67218u, ~_wgslsmith_div_u32(var_0.d, 4294967295u)), ~vec2<u32>(0u, ~91941u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), all(vec2<bool>(true, false))))), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(var_0.d, var_0.d, 0u), var_0.d), abs(max(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.d), vec2<u32>(19476u, 88952u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d, 51372u), vec2<u32>(4294967295u, var_0.d), vec2<u32>(4294967295u, 3595u))))), all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, true), false)));
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(vec2<u32>(1u, 1u));
    global2 = array<Struct_1, 19>();
    global3 = global2[_wgslsmith_index_u32(var_0.x, 19u)];
    var var_1 = vec4<u32>(var_0.x, ~0u, ~(~22651u), ~abs(1u));
    var var_2 = global0[_wgslsmith_index_u32(var_0.x, 24u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, var_2.a, all(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(func_3(Struct_1(var_2.e.x))));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<f32>, 7>();
    global3 = Struct_1(abs(u_input.a.x));
    var var_0 = global2[_wgslsmith_index_u32(~arg_0, 19u)];
    var var_1 = vec2<u32>(35961u ^ max(arg_0, arg_0), ~(_wgslsmith_mod_u32(arg_0, _wgslsmith_clamp_u32(arg_0, arg_0, arg_0)) | ~(~22868u)));
    let var_2 = Struct_1(-2147483647i);
    return Struct_1(1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = func_4(var_0.d, var_0.a);
    let var_2 = u_input.a.xy;
    var var_3 = vec2<i32>(var_2.x, abs(abs(var_1.a)));
    let var_4 = -269f;
    return StorageBuffer(arg_1.e.yz >> (vec2<u32>(abs(arg_1.d), arg_1.d) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-962f, -1944f, var_0.a)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4)) * _wgslsmith_f_op_f32(-var_4)), var_4)), 4294967295u, ~abs(global3.a));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = global3.a;
    global0 = array<Struct_2, 24>();
    return func_5(func_4(12056u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(4294967295u, 19u)])) * _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x))))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(25329u, 19u)])))), Struct_1(0i), Struct_1(global3.a), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, 1u), 1u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(abs(~(_wgslsmith_div_i32(2147483647i, global3.a) >> (~4294967295u % 32u))));
    let var_0 = ~(global3.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~0u, _wgslsmith_div_u32(66887u, 4294967295u)), countOneBits(~vec3<u32>(28050u, 4294967295u, 1674u))) % 32u));
    global0 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true));
}

