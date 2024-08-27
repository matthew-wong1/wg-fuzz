struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, false, true, false, false, false, false, false, false, true, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = countOneBits(_wgslsmith_mult_vec4_u32(min(~(vec4<u32>(4294967295u, u_input.a, 19205u, u_input.a) & vec4<u32>(17168u, 27273u, 72447u, u_input.a)), min(select(vec4<u32>(1u, u_input.a, 2665u, u_input.a), vec4<u32>(44737u, u_input.a, u_input.a, 4294967295u), vec4<bool>(true, arg_0.a.x, false, true)), min(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(1u, 1u, 4294967295u, 54455u)))), vec4<u32>(u_input.a, ~firstLeadingBit(u_input.a), ~u_input.a, ~countOneBits(u_input.a))));
    let var_2 = select(!select(arg_0.a, select(vec2<bool>(var_0.a.x, arg_0.a.x), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], var_0.a.x, false, arg_0.a.x))), !vec2<bool>(any(select(vec3<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 13u)], var_0.a.x, false), vec3<bool>(global0[_wgslsmith_index_u32(10087u, 13u)], false, true))), false), false);
    return !var_0.a;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_0 = Struct_1(arg_2);
    return Struct_1(select(var_0.a, vec2<bool>(!any(var_0.a), (1u | arg_0) >= u_input.a), select(select(var_0.a, var_0.a, true), vec2<bool>(arg_2.x, 38244u == u_input.a), func_3(Struct_1(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-240f, 624f) * vec2<f32>(-1852f, -810f)), vec2<i32>(8910i, 7179i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = ~_wgslsmith_mult_u32(~firstTrailingBit(~u_input.a), u_input.a);
    let var_2 = u_input.b;
    global0 = array<bool, 13>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1273f)) + -1031f), _wgslsmith_f_op_f32(-1f), -372f, _wgslsmith_f_op_f32(round(-1292f))));
    return !vec4<bool>(arg_0.a.x, arg_0.a.x, !(true == (4294967295u >= var_1)), any(select(vec3<bool>(arg_0.a.x, var_0.a.x, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 13u)]), true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_0 = select(-countOneBits(~vec3<i32>(0i, 0i, 61227i)), -vec3<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(2147483647i, u_input.b)), u_input.b), !((select(u_input.b, -2147483647i, arg_1.a.x) > u_input.b) == true));
    global0 = array<bool, 13>();
    let var_1 = arg_1;
    return _wgslsmith_mult_u32(~u_input.a, min(15778u, 0u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> bool {
    var var_0 = vec2<u32>(func_5(select(vec4<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(arg_2.x, 13u)], true, select(arg_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 13u)], true)), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 13u)], false)), func_4(func_2(u_input.a, 0u, arg_0.a), Struct_1(arg_0.a), u_input.a)), Struct_1(select(arg_0.a, select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(13222u, 13u)]), vec2<bool>(arg_0.a.x, true), arg_0.a.x), !arg_0.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(3941u, arg_2.x, arg_2.x), ~vec3<u32>(arg_2.x, u_input.a, arg_2.x)), 13u)]), u_input.a);
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_u32(arg_2, ~select(arg_2, arg_2 & arg_2, true)));
    global0 = array<bool, 13>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))));
    var_0 = vec2<u32>(~1u, firstTrailingBit(_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u))));
    return !(!global0[_wgslsmith_index_u32(~var_0.x, 13u)]);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = vec3<u32>(16366u, 27703u >> (min((11061u >> (u_input.a % 32u)) & 1u, _wgslsmith_clamp_u32(62772u << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 13339u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_5(vec4<bool>(false, arg_1.a.x, arg_1.a.x, global0[_wgslsmith_index_u32(1u, 13u)]), arg_1, true))) % 32u), 75269u);
    let var_1 = ~(-(~(-(~vec4<i32>(-1i, u_input.b, u_input.b, -34763i)))));
    var var_2 = arg_1;
    let var_3 = select(select(func_4(arg_1, func_2(var_0.x, _wgslsmith_div_u32(u_input.a, u_input.a), arg_1.a), u_input.a), select(vec4<bool>(any(vec3<bool>(var_2.a.x, global0[_wgslsmith_index_u32(var_0.x, 13u)], arg_2)), select(true, false, true), func_1(Struct_1(var_2.a), arg_0.x, vec4<u32>(var_0.x, 3219u, u_input.a, u_input.a)), !arg_2), vec4<bool>(all(vec3<bool>(true, arg_2, arg_2)), true, func_3(Struct_1(var_2.a), arg_0.xw, vec2<i32>(var_1.x, -2147483647i)).x, true), !(!vec4<bool>(arg_2, false, arg_2, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), !(!arg_1.a.x && all(vec3<bool>(arg_2, arg_1.a.x, false)))), select(vec4<bool>(false, true, var_2.a.x || true, func_1(Struct_1(arg_1.a), arg_0.x, vec4<u32>(1u, 0u, 1u, 21670u)) | true), select(!select(vec4<bool>(false, arg_2, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], false, false, true)), !select(vec4<bool>(var_2.a.x, true, true, false), vec4<bool>(arg_2, true, true, true), true), func_2(4294967295u, u_input.a, vec2<bool>(false, var_2.a.x)).a.x && false), vec4<bool>(!arg_1.a.x, true, func_1(func_2(u_input.a, 1u, vec2<bool>(false, arg_2)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), vec4<u32>(u_input.a, 0u, var_0.x, u_input.a)), var_2.a.x)), !vec4<bool>(any(!vec3<bool>(true, var_2.a.x, arg_2)), func_1(func_2(u_input.a, var_0.x, vec2<bool>(var_2.a.x, false)), _wgslsmith_f_op_f32(sign(-168f)), vec4<u32>(1u, u_input.a, 25453u, 70053u)), func_3(Struct_1(vec2<bool>(arg_1.a.x, false)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -943f), arg_0.wz)), vec2<i32>(13435i, u_input.b)).x, true));
    return 8550i;
}

fn func_7(arg_0: i32) -> Struct_1 {
    return Struct_1(func_3(Struct_1(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]))), vec2<f32>(-1926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(664f)))), vec2<i32>(select(firstTrailingBit(-32007i), ~(-2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), 13u)]), firstTrailingBit(0i << (u_input.a % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_add_i32(49363i, _wgslsmith_div_i32(func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(497f, 1598f, -1361f, -1023f) + vec4<f32>(770f, 2067f, 770f, 613f)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(52582u, 13u)])), func_1(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)])), -308f, vec4<u32>(60366u, 0u, u_input.a, 0u))), ~u_input.b)));
    global0 = array<bool, 13>();
    var var_1 = ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~u_input.a, 75798u), _wgslsmith_add_vec3_u32(vec3<u32>(22680u, u_input.a, 40898u), vec3<u32>(u_input.a, 0u, 53009u) | vec3<u32>(u_input.a, 0u, 79052u))) >> (vec3<u32>(~max(0u, u_input.a) << (~116128u % 32u), 4294967295u, u_input.a | func_5(vec4<bool>(global0[_wgslsmith_index_u32(42716u, 13u)], true, false, var_0.a.x), Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(70653u, 13u)])), 0u == u_input.a)) % vec3<u32>(32u));
    let var_2 = select(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -19962i, 4428i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2020i, u_input.b, u_input.b), vec4<i32>(6126i, u_input.b, 1i, -23386i))), ~(vec4<i32>(-5227i, -9520i, u_input.b, -25813i) << (vec4<u32>(u_input.a, u_input.a, var_1.x, 0u) % vec4<u32>(32u)))), -(~u_input.b), abs(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)), u_input.b), _wgslsmith_mod_vec4_i32(max(-(~vec4<i32>(-21052i, u_input.b, u_input.b, u_input.b)), -(vec4<i32>(-1i, u_input.b, -31537i, -1i) ^ vec4<i32>(u_input.b, -1i, 2471i, -61072i))), abs(firstTrailingBit(vec4<i32>(1i, u_input.b, 1i, -9259i) & vec4<i32>(u_input.b, 2147483647i, u_input.b, 0i)))), !select(!(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(48207u, 13u)], var_0.a.x)), !(!vec4<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(0u, 13u)], var_0.a.x)), all(var_0.a)));
    global0 = array<bool, 13>();
    var_1 = firstLeadingBit(countOneBits(~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, var_1.x, 0u)), vec3<u32>(var_1.x, 1u, var_1.x) ^ vec3<u32>(2980u, u_input.a, 0u))));
    let var_3 = ~select(83558u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, var_1.x), ~vec3<u32>(u_input.a, u_input.a, 0u)), true);
    let var_4 = false;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(var_2.x, ~u_input.b), var_2.xw, _wgslsmith_mod_u32(abs(var_3), var_1.x) > _wgslsmith_div_u32(~38402u, var_1.x)));
}

