struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1178f;

var<private> global1: array<u32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(any(vec2<bool>(false, any(vec2<bool>(true, false)))), 52895u);
    global1 = array<u32, 18>();
    var var_1 = Struct_2(true, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(10205u, var_0.b), ~var_0.b), _wgslsmith_mod_u32(38793u, _wgslsmith_sub_u32(min(global1[_wgslsmith_index_u32(0u, 18u)], var_0.b), ~98768u)), ~var_0.b));
    let var_2 = -(countOneBits(vec2<i32>(1i, 1i)) ^ ~vec2<i32>(1i >> (global1[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u), select(581i, 1i, false)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(floor(-529f))));
    return _wgslsmith_add_vec4_u32(firstTrailingBit(~select(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 19262u, var_1.b, global1[_wgslsmith_index_u32(var_1.b, 18u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, var_0.b, 39890u, 0u), vec4<u32>(1u, 16374u, u_input.a.x, var_1.b)), vec4<bool>(var_1.a, false, true, var_0.a))), max(min(firstLeadingBit(~vec4<u32>(0u, var_1.b, 4294967295u, 4294967295u)), (vec4<u32>(var_0.b, u_input.a.x, 66785u, 0u) << (vec4<u32>(var_0.b, 45412u, global1[_wgslsmith_index_u32(var_1.b, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(var_1.b, global1[_wgslsmith_index_u32(4294967295u, 18u)], var_1.b, 52676u))), (countOneBits(vec4<u32>(1u, 1u, 60678u, u_input.a.x)) & max(vec4<u32>(var_0.b, 0u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(var_1.b, 18u)]), vec4<u32>(20203u, 1u, 1u, u_input.a.x))) << (vec4<u32>(0u, _wgslsmith_mult_u32(var_0.b, 4294967295u), u_input.a.x, var_1.b) % vec4<u32>(32u))));
}

fn func_2() -> vec3<i32> {
    let var_0 = max(-1i, 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(-1584f)), _wgslsmith_f_op_f32(-1325f * -1203f), _wgslsmith_f_op_f32(-446f - 434f), -945f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, 656f, 897f, -406f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(260f, -1038f, 231f, 657f) - vec4<f32>(-203f, -1753f, 718f, 1015f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, 1259f, 502f, 480f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x))) - vec4<f32>(var_1.x, 420f, -1584f, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -818f, 210f, var_1.x))) + vec4<f32>(var_1.x, var_1.x, -756f, 1378f))))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2268f), u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(var_1.x, 871f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_f32(-var_2.a), all(vec3<bool>(false, false, true)) | false)), ~(~func_3()), any(vec3<bool>(all(vec4<bool>(false, true, false, false)) != true, true & all(vec2<bool>(true, true)), true)), 1i ^ firstTrailingBit(~(var_0 | 1i)), vec2<bool>(false, all(vec2<bool>(true, true))));
    return _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 1i, var_0), var_3.c), vec3<i32>(-70915i, -8692i, 4027i))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0, var_3.d), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -24966i, 15926i), vec3<i32>(-1i, var_0, -2147483647i)))), -(-vec3<i32>(var_0, 1i, -33037i) ^ (countOneBits(vec3<i32>(9739i, var_3.d, var_3.d)) >> (vec3<u32>(var_2.b, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-12188i, arg_0, _wgslsmith_mult_i32(34578i, 43833i), arg_2.x), arg_2 & vec4<i32>(1073i, arg_0, -2147483647i, -1i)) ^ firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.x, 0i, arg_0, arg_1.x), arg_2) | (arg_2 & ~arg_2));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-954f)), ~(~(~(vec4<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37277u, 18u)], 18u)], 47580u, 4294967295u) | vec4<u32>(global1[_wgslsmith_index_u32(44601u, 18u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u)))), !any(vec3<bool>(true, true, true)), ~2147483647i, vec2<bool>(true, true));
    var_0 = vec4<i32>(arg_0, arg_2.x, -24834i, 1i) << (vec4<u32>(u_input.a.x, 0u, min(5239u, firstTrailingBit(65515u)), global1[_wgslsmith_index_u32(abs(max(var_1.b.x, u_input.a.x)), 18u)]) % vec4<u32>(32u));
    let var_2 = Struct_2(any(select(var_1.e, vec2<bool>(false || var_1.e.x, var_1.e.x), all(var_1.e) || false)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_1.b.x << (countOneBits(var_1.b.x) % 32u), 2186u), 18u)]);
    var_0 = firstTrailingBit(arg_2 >> (vec4<u32>(func_3().x, _wgslsmith_mult_u32(firstLeadingBit(4294967295u), 4294967295u), ~18902u, firstLeadingBit(0u) >> (func_3().x % 32u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(select(-2415f, 204f, false)), firstTrailingBit(~var_1.b), var_1.e.x | !(!(!var_2.a)), -select(-2147483647i >> (~4294967295u % 32u), arg_2.x, select(var_2.a, var_1.e.x, var_1.e.x)), !(!var_1.e));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    var var_0 = func_4(-1i, _wgslsmith_add_vec3_i32(max(vec3<i32>(_wgslsmith_add_i32(1i, -1i), 0i, _wgslsmith_add_i32(0i, -2147483647i)), -func_2()), func_2()), min(select(~max(vec4<i32>(1i, 2675i, -1i, 30132i), vec4<i32>(4359i, -29751i, -2147483647i, -1i)), vec4<i32>(1i, 1i, 1i, 1i), !vec4<bool>(arg_1.a, arg_2, false, arg_2)), abs(~(-vec4<i32>(12153i, -1596i, 2147483647i, 23479i)))));
    let var_1 = vec3<i32>(~(-var_0.d), _wgslsmith_add_i32(~var_0.d, ~(-64002i)), ~1i);
    var var_2 = 106f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -304f, -866f), vec3<f32>(var_0.a, -529f, arg_0.a), var_0.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1033f, -663f, var_0.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(330f, arg_0.a, 3686f)))) - vec3<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1383f, var_3.x, var_3.x, -1066f) - vec4<f32>(var_0.a, 685f, -353f, 1982f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, arg_0.a, 1000f, var_0.a), vec4<f32>(var_3.x, 624f, -977f, -892f))))))));
    return Struct_4(_wgslsmith_div_f32(-1247f, -1292f), ~4294967295u);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = abs(vec4<i32>(-arg_2.b.x, -abs(2147483647i), -5329i, abs(max(0i, -14140i)))) << (abs(select(min(firstTrailingBit(arg_2.a.b), func_3()), vec4<u32>(firstLeadingBit(arg_2.a.b.x), global1[_wgslsmith_index_u32(reverseBits(arg_1.b), 18u)], 26072u, ~arg_2.a.b.x), vec4<bool>(!arg_2.a.c, true, any(vec2<bool>(false, arg_0.x)), arg_2.a.b.x == 4294967295u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.a - -610f), -1345f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.a, -230f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-711f, arg_2.a.a))), false)))), vec2<f32>(arg_1.a, -1531f), arg_2.a.c)), vec2<f32>(_wgslsmith_f_op_f32(trunc(293f)), arg_1.a)));
    var var_2 = Struct_3(func_4(min(var_0.x, 0i), -arg_2.b.xwy, arg_2.b), _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_2.a.d, var_0.x >> (func_4(6329i, vec3<i32>(2147483647i, -59708i, var_0.x), vec4<i32>(-1i, arg_2.a.d, 27263i, var_0.x)).b.x % 32u), var_0.x, 1i >> (arg_2.a.b.x % 32u)), var_0), _wgslsmith_add_vec3_u32(~arg_2.c, _wgslsmith_div_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(97077u, 18u)], arg_2.c.x, u_input.a.x), ~arg_2.c) << (~arg_2.c % vec3<u32>(32u))));
    var var_3 = Struct_3(arg_2.a, var_0, ~_wgslsmith_sub_vec3_u32(vec3<u32>(8702u, arg_1.b, var_2.c.x), ~arg_2.c) & vec3<u32>(u_input.a.x, var_2.a.b.x, global1[_wgslsmith_index_u32(func_3().x, 18u)]));
    return _wgslsmith_add_u32(4294967295u, ~select(1u, ~49376u, func_4(_wgslsmith_sub_i32(var_0.x, -7756i), reverseBits(var_0.xwz), var_0 | vec4<i32>(9439i, arg_2.b.x, 52740i, arg_2.a.d)).e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_div_u32(1u ^ func_5(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), func_1(Struct_4(110f, global1[_wgslsmith_index_u32(1u, 18u)]), Struct_2(false, 1u), true), Struct_3(Struct_1(525f, vec4<u32>(u_input.a.x, 32345u, global1[_wgslsmith_index_u32(65315u, 18u)], 0u), true, -1i, vec2<bool>(true, true)), vec4<i32>(-31553i, -21600i, 0i, -2177i), vec3<u32>(9908u, global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.x))), _wgslsmith_clamp_u32(~(~func_3().x), func_3().x, 23034u));
    global1 = array<u32, 18>();
    var var_1 = select(vec4<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), any(vec3<bool>(false, true, false)))), !select(true, true, true), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, true, true), 0u > u_input.a.x)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true)) && true, any(vec3<bool>(true, true, true))), true & any(vec4<bool>(true, true, true, true))), all(vec4<bool>(true, true, true, true)));
    var_1 = !vec4<bool>(true, var_1.x, !(!var_1.x), any(vec3<bool>(false, false, var_1.x)) | false);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f + 156f) * 2108f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(688f * 1317f)))), -792f), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~(-47220i)), -1i), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(~(-23463i), 35787i), 30209i & (36320i << ((global1[_wgslsmith_index_u32(79478u, 18u)] ^ var_0) % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(799f, 728f, 511f, -1186f) * vec4<f32>(-1142f, 429f, 849f, -168f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(696f, 1000f, 481f, -546f) - vec4<f32>(-1405f, -237f, -2217f, -2524f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1252f, -2337f, 1428f, 1000f), vec4<f32>(1280f, 1098f, -1000f, 440f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(574f, 615f, 135f, 1990f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1000f, 759f, -587f), vec4<f32>(-746f, 910f, -1000f, 720f), vec4<bool>(false, true, var_1.x, var_1.x))))))), select(!(!vec4<bool>(var_1.x, true, true, var_1.x)), select(!vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(true, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, true))), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true)), vec4<bool>(var_1.x, true, false, true), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, true)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2245f, _wgslsmith_f_op_f32(round(-2040f)), -164f, -543f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -610f, 595f, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(745f, -830f, -1213f, -320f) + vec4<f32>(1096f, 196f, 1000f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1451f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(f32(-1f) * -689f), 1229f), !select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), all(vec4<bool>(var_1.x, true, true, var_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -345f));
}

