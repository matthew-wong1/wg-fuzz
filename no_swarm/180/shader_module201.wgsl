struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(586f, -8806i, 0u, Struct_1(false), 28176u);

var<private> global1: vec3<i32> = vec3<i32>(-1i, 1i, -67959i);

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 36216u), vec2<u32>(5788u, 74850u), vec2<u32>(0u, 14957u), vec2<u32>(39081u, 35711u), vec2<u32>(4294967295u, 22112u), vec2<u32>(0u, 1u), vec2<u32>(49715u, 56363u), vec2<u32>(11053u, 4294967295u), vec2<u32>(14369u, 1u), vec2<u32>(0u, 30386u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6486u, 23073u), vec2<u32>(59503u, 1u), vec2<u32>(0u, 15766u), vec2<u32>(4294967295u, 1u), vec2<u32>(11815u, 32618u), vec2<u32>(23862u, 24061u), vec2<u32>(31866u, 1u), vec2<u32>(38436u, 86292u), vec2<u32>(4294967295u, 1u), vec2<u32>(19904u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 26230u), vec2<u32>(20350u, 58099u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> i32 {
    global1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-18932i, ~1i), 20936i, -1607i), ~(~abs(max(vec3<i32>(global0.b, 701i, -12805i), vec3<i32>(global0.b, global1.x, -11851i)))));
    let var_0 = Struct_1(true);
    let var_1 = u_input.d & global0.c;
    global1 = vec3<i32>(-1i) * -(~_wgslsmith_add_vec3_i32(vec3<i32>(global0.b, global0.b, 2147483647i), select(vec3<i32>(2147483647i, global1.x, -2147483647i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<bool>(global0.d.a, false, global0.d.a))));
    var var_2 = -select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, 32091i, -8073i), ~vec3<i32>(global1.x, global1.x, global1.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global1.x, -6925i), vec3<i32>(u_input.c, global0.b, 1120i))), vec3<i32>(-(~u_input.e), 2147483647i, global1.x), vec3<bool>(all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, global0.d.a), true)), global0.d.a, var_0.a));
    return -abs(var_2.x);
}

fn func_2() -> Struct_5 {
    global1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -1i, u_input.e), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1.x, global0.b), vec3<i32>(global1.x, global0.b, global1.x))), -1i, -(~global0.b)) | vec3<i32>(_wgslsmith_add_i32(func_3(global0.a), 1i >> (~global0.c % 32u)), _wgslsmith_sub_i32(global0.b, firstLeadingBit(global1.x)), _wgslsmith_mult_i32(global0.b, _wgslsmith_mod_i32(38034i, global0.b)));
    global0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.a)))), any(select(vec3<bool>(global0.d.a, global0.d.a, false), vec3<bool>(false, false, true), vec3<bool>(global0.d.a, global0.d.a, global0.d.a))) & any(vec2<bool>(false, global0.d.a)))), global1.x, u_input.d ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, 1u, 1u) ^ vec3<u32>(u_input.b, 63493u, u_input.d), firstTrailingBit(vec3<u32>(u_input.d, 4294967295u, u_input.d))), ~(vec3<u32>(global0.e, global0.e, u_input.d) ^ vec3<u32>(22305u, global0.e, global0.e))), global0.d, ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 4294967295u, 24433u, global0.c), vec4<u32>(u_input.b, 74006u, global0.c, u_input.b) << (vec4<u32>(global0.c, 1u, u_input.d, 5692u) % vec4<u32>(32u))), ~(~vec4<u32>(global0.c, 23307u, 4294967295u, global0.e))));
    var var_0 = global0.d;
    var var_1 = max(~min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 33478u, global0.e), vec3<u32>(global0.e, 7035u, 27008u), vec3<u32>(14775u, global0.c, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 5797u, global0.c), vec3<u32>(u_input.b, global0.e, 1u)) | ~vec3<u32>(u_input.b, global0.e, u_input.d)), vec3<u32>(_wgslsmith_mult_u32(1u, abs(u_input.d)), (min(48126u, global0.e) << (1u % 32u)) | 73175u, u_input.b));
    var_1 = vec3<u32>(abs(countOneBits(u_input.b)), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, ~4294967295u), var_1.x), 18580u), u_input.d << (var_1.x % 32u));
    return Struct_5(global2[_wgslsmith_index_u32(~var_1.x, 25u)], Struct_1(any(!(!vec2<bool>(var_0.a, var_0.a)))), firstLeadingBit(u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(181f * _wgslsmith_f_op_f32(473f * 101f)), _wgslsmith_f_op_f32(trunc(global0.a)))) != _wgslsmith_f_op_f32(step(1011f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a + global0.a), 430f)))), any(select(vec2<bool>(global0.d.a, global0.d.a), !vec2<bool>(global0.d.a, false), select(vec2<bool>(false, false), select(vec2<bool>(global0.d.a, true), vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a)), select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), vec2<bool>(var_0.a, false))))));
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(floor(457f)), global0.b, ~119847u, func_2().b, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~51230u, 25u)], ~vec2<u32>(1u, 61395u)), u_input.d, global0.c)));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(u_input.c, global1.x)), -countOneBits(vec2<i32>(-1i, u_input.a))), abs(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, 1i), global1.zx), global1.yx))) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~(~u_input.d), 25u)], firstTrailingBit(~vec2<u32>(24765u, arg_0.a.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(49547u, 59111u, 7997u), ~vec3<u32>(global0.c, 39757u, 62314u)), firstLeadingBit(firstLeadingBit(vec3<u32>(32288u, var_0.e, 19700u))))) % 32u);
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -471f))), _wgslsmith_f_op_f32(-var_0.a)), arg_0.c, arg_0.a.x, func_2().b, global0.c);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(280f * _wgslsmith_f_op_f32(max(arg_1, -342f))), 1403f, _wgslsmith_f_op_f32(floor(306f)), arg_1);
    return Struct_2(45337u);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1270f), abs(u_input.c), 42191u, Struct_1(!(998f >= var_0.b.x) | global0.d.a), ~1u);
    let var_2 = -73022i;
    global2 = array<vec2<u32>, 25>();
    let var_3 = var_1;
    return Struct_4(-1215f, countOneBits(-25592i) | _wgslsmith_dot_vec2_i32(~global1.yy << (abs(vec2<u32>(arg_3.x, var_0.a.a)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(var_2, -28895i), var_3.b)), max(abs(~arg_3.x), func_2().a.x), func_2().b, abs(arg_1.a.a) | var_3.c);
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global0 = func_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f * 617f)), global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, _wgslsmith_f_op_f32(-699f + global0.a), global0.a, _wgslsmith_f_op_f32(-global0.a)) * vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(round(global0.a)), global0.a, _wgslsmith_f_op_f32(global0.a - global0.a))))), Struct_3(func_4(func_2(), _wgslsmith_f_op_f32(-208f - 968f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, -143f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1580f, global0.a)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -142f) + vec2<f32>(global0.a, global0.a)))))), _wgslsmith_mod_u32(~global0.e, _wgslsmith_mod_u32(32122u, _wgslsmith_clamp_u32(reverseBits(global0.c), _wgslsmith_mult_u32(global0.c, u_input.b), ~u_input.b))), ~(~(abs(vec4<u32>(64846u, u_input.d, 23064u, 4294967295u)) & (vec4<u32>(80372u, u_input.b, u_input.d, 0u) | vec4<u32>(56535u, global0.c, 4294967295u, global0.c)))));
    global1 = vec3<i32>(func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_div_f32(global0.a, -141f), -421f))), Struct_3(func_4(Struct_5(vec2<u32>(1u, global0.e), Struct_1(global0.d.a), 27695i, global0.d.a, global0.d.a), _wgslsmith_f_op_f32(global0.a - global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a, global0.a), vec2<f32>(global0.a, 764f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(104f, global0.a))))), ~1u, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d, 24404u), u_input.d, global0.e, global0.e), vec4<u32>(46437u, 1u, _wgslsmith_mult_u32(u_input.b, 0u), global0.e))).b, -9959i, _wgslsmith_sub_i32(-_wgslsmith_div_i32(global1.x, firstLeadingBit(1i)), _wgslsmith_clamp_i32(u_input.c ^ ~(-2147483647i), _wgslsmith_mod_i32(-16271i, -arg_0), firstTrailingBit(arg_0 >> (57023u % 32u)))));
    var var_0 = vec2<i32>(13642i, abs(i32(-1i) * -33276i)) << (countOneBits(vec2<u32>(_wgslsmith_add_u32(global0.e, 1351u | global0.c), _wgslsmith_mod_u32(82968u, u_input.b ^ u_input.d))) % vec2<u32>(32u));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(591f - global0.a), -1706f, global0.a), vec4<f32>(487f, global0.a, -938f, _wgslsmith_f_op_f32(1318f - 1268f)))), Struct_3(Struct_2(_wgslsmith_clamp_u32(~49497u, 40656u, _wgslsmith_clamp_u32(global0.c, global0.e, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1219f, global0.a) * vec2<f32>(global0.a, 241f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, global0.a) + vec2<f32>(global0.a, 166f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -1102f) - vec2<f32>(-682f, 460f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(411f, -1501f))))), 0u, firstTrailingBit(vec4<u32>(global0.e, _wgslsmith_mod_u32(global0.c, 4294967295u) ^ min(global0.c, 1u), ~firstTrailingBit(0u), 18538u))).d;
    let var_2 = Struct_5(global2[_wgslsmith_index_u32(global0.e, 25u)], Struct_1(!func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1700f, global0.a, 1000f)), Struct_3(Struct_2(global0.c), vec2<f32>(-324f, global0.a)), firstTrailingBit(u_input.b), vec4<u32>(4294967295u, global0.e, u_input.b, u_input.d)).d.a), abs(-firstLeadingBit(func_2().c)), global0.d.a, global0.d.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -1000f, global0.a, global0.a) * vec4<f32>(global0.a, global0.a, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1376f, global0.a, global0.a)))), select(!vec4<bool>(true, true, false, global0.d.a), select(vec4<bool>(global0.d.a, global0.d.a, true, true), vec4<bool>(false, false, global0.d.a, global0.d.a), var_1.a), !var_2.b.a))) * vec4<f32>(global0.a, global0.a, 549f, global0.a)));
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: bool) -> StorageBuffer {
    global1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, -global0.b), -_wgslsmith_add_i32(-31642i, arg_0), -2147483647i), countOneBits(vec3<i32>(1i, 1i, 1i) | ~vec3<i32>(-163i, 191i, global1.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(69579i, arg_0, u_input.c), global0.d.a), vec3<i32>(0i, 2940i, arg_0) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -4632i, -5673i), vec3<i32>(global1.x, global0.b, 19467i)), select(~vec3<i32>(u_input.e, -41228i, 0i), vec3<i32>(global1.x, global1.x, arg_0), any(vec3<bool>(global0.d.a, true, arg_3)))), min(_wgslsmith_add_vec3_i32(~vec3<i32>(global0.b, -6755i, 0i), ~vec3<i32>(arg_0, 31013i, u_input.e)), vec3<i32>(-2147483647i, func_3(1360f), -1i)), vec3<i32>(-61581i, abs(global1.x << (u_input.b % 32u)), ~(-global1.x))));
    global2 = array<vec2<u32>, 25>();
    global2 = array<vec2<u32>, 25>();
    var var_0 = func_2();
    var var_1 = !vec4<bool>(func_5(_wgslsmith_f_op_vec4_f32(-arg_1), Struct_3(func_4(Struct_5(global2[_wgslsmith_index_u32(var_0.a.x, 25u)], var_0.b, global1.x, false, arg_3), 1809f), arg_2.wx), 16473u, vec4<u32>(~4294967295u, u_input.b, ~u_input.d, 62031u)).d.a, _wgslsmith_div_i32(~u_input.a, var_0.c) <= func_3(-649f), all(vec3<bool>(var_0.b.a, func_2().d, all(vec3<bool>(true, true, var_0.d)))), true);
    return StorageBuffer(-63434i, global1.xy, ~(-1i), global0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(506f, global0.a))) - _wgslsmith_f_op_f32(round(863f))), -1115f, !(!global0.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global0.a, 142f, global0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0.b)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-893f, global0.a, global0.a, 642f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -119f)), _wgslsmith_f_op_vec4_f32(func_1(i32(-1i) * -41351i)).x, -1000f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a)), 2181f, func_5(vec4<f32>(1201f, global0.a, global0.a, 480f), Struct_3(Struct_2(u_input.b), vec2<f32>(152f, global0.a)), u_input.d, vec4<u32>(u_input.d, 33555u, global0.c, 1u)).a, 467f), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), global0.a, global0.a, _wgslsmith_f_op_f32(min(global0.a, -865f)))))), any(vec4<bool>(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, global0.a)), Struct_3(Struct_2(12068u), vec2<f32>(1680f, global0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.e, u_input.b), vec3<u32>(4294967295u, global0.c, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.c, 4294967295u, 146628u, global0.c), vec4<u32>(55111u, global0.e, 4294967295u, 0u))).d.a, true, global0.d.a, !select(global0.d.a, global0.d.a, global0.d.a))));
}

