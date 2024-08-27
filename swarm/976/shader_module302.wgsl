struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-23465i, 1i);

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec4<u32> {
    global0 = -firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yz, u_input.a.zy), -u_input.a.xz));
    global1 = array<vec3<i32>, 3>();
    var var_0 = -2147483647i;
    var var_1 = abs(-20568i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1049f, 1257f), _wgslsmith_f_op_f32(abs(281f)), -863f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-205f, -927f, 374f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-545f, 958f, -1000f)), vec3<bool>(arg_1.a.x, arg_0.x, false))), arg_1.a.x || (global0.x <= arg_1.b))), vec3<f32>(-504f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(623f, 331f) + 868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)))));
    return vec4<u32>(~global2.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(20192u, arg_3, global2.x, 72973u), firstLeadingBit(vec4<u32>(global2.x, arg_3, 0u, 4294967295u)), vec4<bool>(true, true, arg_0.x, false)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global2.x, 1u, global2.x, global2.x)), firstLeadingBit(vec4<u32>(arg_3, 7724u, global2.x, arg_3)), ~vec4<u32>(global2.x, arg_3, 1u, global2.x))) << (~arg_3 % 32u), arg_3, global2.x);
}

fn func_2() -> Struct_1 {
    let var_0 = global2.x;
    var var_1 = Struct_1(!vec3<bool>(select(false, false, false) & true, any(vec3<bool>(false, false, true)), true), -40254i);
    var var_2 = abs(countOneBits(func_3(var_1.a, Struct_1(var_1.a, global0.x), true, _wgslsmith_sub_u32(global2.x, ~global2.x))));
    var_1 = Struct_1(vec3<bool>(!(_wgslsmith_f_op_f32(1391f + 1588f) < _wgslsmith_f_op_f32(select(-305f, -1000f, true))), any(!(!var_1.a.xz)), var_1.a.x), firstLeadingBit(-2147483647i) | _wgslsmith_mod_i32(-countOneBits(u_input.a.x), firstLeadingBit(44583i)));
    global0 = vec2<i32>(reverseBits(global0.x) >> (~(var_2.x << (~2323u % 32u)) % 32u), u_input.a.x);
    return Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 734f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(879f)), -1000f), false, any(vec4<bool>(global0.x >= u_input.a.x, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), true, all(vec3<bool>(var_1.a.x, false, false))))), -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    global0 = -countOneBits(abs(vec2<i32>(_wgslsmith_clamp_i32(-25154i, -16212i, u_input.a.x), select(global0.x, 2147483647i, arg_0.a.x))));
    var var_0 = global0.x;
    var var_1 = arg_0;
    var_0 = ~0i;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, 701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2364f * -132f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -316f)) * _wgslsmith_f_op_f32(1155f + 1565f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, _wgslsmith_f_op_f32(-397f + -438f), -922f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1287f, 812f, 666f), vec3<f32>(1757f, 276f, -574f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(113f, 1913f, 1359f) + vec3<f32>(1582f, -998f, 309f)), false))))));
    let var_1 = arg_2;
    let var_2 = func_2();
    let var_3 = var_1.b.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    return Struct_2(18936i, func_1(func_2(), _wgslsmith_add_vec3_i32(abs(max(vec3<i32>(arg_0, 18968i, var_1.b.b), vec3<i32>(u_input.a.x, global0.x, u_input.a.x))), vec3<i32>(global0.x, abs(arg_2.b.b), ~arg_0))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global2.x, 1u, var_1.c, var_1.c)), firstTrailingBit(vec4<u32>(global2.x, 0u, 1385u, var_1.c) ^ vec4<u32>(0u, 25973u, 0u, 4294967295u))), 1u));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_2.c, arg_2.c)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c, 21087u), vec2<u32>(arg_2.c, global2.x), vec2<u32>(1u, global2.x)), vec2<u32>(4294967295u, global2.x) << (vec2<u32>(0u, arg_2.c) % vec2<u32>(32u)), arg_2.b.a.x), vec2<u32>(~0u, 6417u)) ^ ~vec2<u32>(~global2.x, arg_2.c), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(1u) ^ countOneBits(global2.x), ~(~global2.x), ~1u), _wgslsmith_mult_u32(~global2.x, firstLeadingBit(_wgslsmith_sub_u32(global2.x, arg_2.c)))));
    let var_1 = arg_2.b.a.x;
    var var_2 = arg_1.xx;
    var_2 = vec2<i32>(_wgslsmith_clamp_i32(6134i, arg_2.b.b | ~(-2147483647i), firstLeadingBit(-74951i) >> (arg_2.c % 32u)), -_wgslsmith_dot_vec3_i32(u_input.a << (vec3<u32>(global2.x, global2.x, global2.x) % vec3<u32>(32u)), arg_1)) ^ -_wgslsmith_mult_vec2_i32(-(vec2<i32>(arg_0, var_2.x) ^ vec2<i32>(var_2.x, arg_0)), arg_1.zy);
    var_0 = global2.x << (arg_2.c % 32u);
    return _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, global2.x), vec2<u32>(1u, 4145u)), 0u), ~vec2<u32>(arg_2.c, arg_2.c) ^ (vec2<u32>(9154u, global2.x) ^ (vec2<u32>(72624u, 4803u) >> (vec2<u32>(global2.x, 1u) % vec2<u32>(32u))))), select(firstLeadingBit(max(select(vec2<u32>(0u, 79104u), vec2<u32>(global2.x, arg_2.c), var_1), ~vec2<u32>(global2.x, 21298u))), abs(select(countOneBits(vec2<u32>(arg_2.c, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c, global2.x), vec2<u32>(global2.x, arg_2.c)), arg_2.b.a.xz)), vec2<bool>(true, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~func_5(global0.x, vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(-28342i, ~1i), -1i), func_4(global0.x, all(vec3<bool>(false, false, false)) | (89950u <= global2.x), Struct_2(0i, func_1(Struct_1(vec3<bool>(false, false, true), 2879i), u_input.a), ~global2.x)));
    let var_0 = func_4(-31988i, true, func_4(~(-_wgslsmith_mult_i32(u_input.a.x, 0i)), func_1(Struct_1(vec3<bool>(true, true, true), func_4(u_input.a.x, true, Struct_2(u_input.a.x, Struct_1(vec3<bool>(false, true, false), -2147483647i), global2.x)).b.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global0.x, 4431i), min(vec3<i32>(global0.x, 1i, u_input.a.x), global1[_wgslsmith_index_u32(global2.x, 3u)]))).a.x, func_4(~(-u_input.a.x), any(vec2<bool>(false, true)), func_4(0i, func_2().a.x, func_4(global0.x, true, Struct_2(global0.x, Struct_1(vec3<bool>(false, true, true), 1i), 1u)))))).c;
    global0 = u_input.a.yy;
    let var_1 = 4294967295u;
    let var_2 = vec2<u32>(_wgslsmith_div_u32(1u, ~(_wgslsmith_add_u32(var_1, global2.x) >> (max(var_0, 70776u) % 32u))), ~_wgslsmith_mod_u32(var_0, ~1u) ^ _wgslsmith_mod_u32(global2.x ^ _wgslsmith_mult_u32(var_1, var_0), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_0, 47412u, var_1), ~vec4<u32>(4294967295u, 4397u, global2.x, var_0))));
    global0 = vec2<i32>(global0.x ^ ~(-(~global0.x)), u_input.a.x);
    var var_3 = func_4(_wgslsmith_dot_vec3_i32(max(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 29903i), vec3<i32>(global0.x, -14195i, global0.x)), vec3<i32>(-u_input.a.x, u_input.a.x, countOneBits(-1i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 39297i, 0i)) >> (~vec3<u32>(global2.x, 4294967295u, var_2.x) % vec3<u32>(32u)), -countOneBits(vec3<i32>(23690i, -2147483647i, 100959i)), ~vec3<i32>(u_input.a.x, global0.x, u_input.a.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(27842i, global0.x, 2147483647i), vec3<i32>(-4229i, global0.x, u_input.a.x)))), 7586i >= func_1(Struct_1(vec3<bool>(true, true, true), reverseBits(global0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.x, 1i), vec3<i32>(global0.x, u_input.a.x, 1867i), u_input.a) | _wgslsmith_add_vec3_i32(vec3<i32>(32458i, -2490i, u_input.a.x), u_input.a)).b, func_4(func_1(Struct_1(vec3<bool>(false, true, false), countOneBits(u_input.a.x)), max(u_input.a, vec3<i32>(-2147483647i, -55979i, 0i))).b, true, func_4(reverseBits(-global0.x), false, func_4(-42369i, true, Struct_2(4386i, Struct_1(vec3<bool>(false, false, true), -40451i), 4294967295u)))));
    let var_4 = all(var_3.b.a.xx) & select(var_3.b.a.x, global0.x == global0.x, var_3.b.a.x);
    var var_5 = any(select(!(!vec4<bool>(false, false, false, var_4)), vec4<bool>(var_3.b.a.x, var_4, true, func_1(var_3.b, firstTrailingBit(vec3<i32>(var_3.a, global0.x, u_input.a.x))).a.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.zx, _wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, -1i), abs(vec2<i32>(0i, global0.x))), vec2<bool>(any(vec2<bool>(var_4, true)), all(vec4<bool>(var_4, false, var_3.b.a.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1047f))) * -215f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, 1933f) - vec2<f32>(-1000f, -846f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -255f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 580f), vec2<f32>(280f, 1866f), var_3.b.a.xx)))))), global2.x);
}

