struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32 = -1075i;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec4<i32> {
    let var_0 = Struct_3(vec4<i32>(-arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-25918i, ~(-1i), -13999i, 1i), min(countOneBits(vec4<i32>(-14919i, -2147483647i, -1i, global0.x)), vec4<i32>(global0.x, -27649i, arg_1, global0.x))), min(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, global0.x, arg_1), vec3<i32>(global0.x, -2147483647i, 0i))), i32(-1i) * -2147483647i), -15176i), Struct_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(arg_1, global0.x)), _wgslsmith_div_i32(countOneBits(global0.x), firstTrailingBit(global0.x))), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -1736f)), -(~(abs(global0.x) >> (~4294967295u % 32u))), _wgslsmith_add_vec3_i32(-global0.xzx, global0.yww), arg_1);
    return var_0.a;
}

fn func_2() -> Struct_2 {
    global0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -709f, -348f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, 1000f, -791f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(360f, -1035f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2273f)), _wgslsmith_f_op_f32(1270f * -1082f)), 219f)), _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(-1i, global0.x, global0.x, global0.x)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(global0.x, 2147483647i, global0.x, global0.x), firstLeadingBit(vec4<i32>(-12889i, -2147483647i, global0.x, global0.x)), true), vec4<i32>(_wgslsmith_mult_i32(global0.x, 0i), _wgslsmith_div_i32(2147483647i, -1i), 44919i, 0i))));
    var var_0 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, 20720i) << (~u_input.b % 32u), _wgslsmith_mod_i32(5428i, global0.x), -global0.x), global0.x, i32(-1i) * -16846i, global0.x), Struct_2(Struct_1(global0.zy, -(~10740i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(576f, 271f)) * -527f), _wgslsmith_f_op_f32(sign(-1083f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-188f, 778f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1473f, 269f)) + _wgslsmith_f_op_f32(-283f + -854f)))), _wgslsmith_dot_vec4_i32(~firstLeadingBit(~vec4<i32>(-2147483647i, 36620i, global0.x, global0.x)), reverseBits(~vec4<i32>(global0.x, -7591i, 14085i, 1i))), vec3<i32>(reverseBits(25265i), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(21542i, 10118i)), firstTrailingBit(~vec2<i32>(1i, -31680i))), 2147483647i), -abs(_wgslsmith_mult_i32(global0.x | global0.x, global0.x)));
    var var_1 = u_input.b;
    let var_2 = select(!(!vec4<bool>(true, var_0.b.c == -566f, true, all(vec4<bool>(true, true, true, true)))), select(select(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, true), true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(false, false, false)), false, true)), !vec4<bool>(any(vec2<bool>(false, false)), true, ~30803u != (u_input.b ^ u_input.a), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-902f * _wgslsmith_f_op_f32(231f - -1070f)) + 1216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c, -384f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(sign(var_0.b.c))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(446f, _wgslsmith_f_op_f32(-197f - -786f), _wgslsmith_f_op_f32(trunc(-1118f)))))), vec3<bool>(!(_wgslsmith_mod_i32(global0.x, 11738i) > -1i), true, !var_2.x)));
    return var_0.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<i32> {
    global1 = _wgslsmith_div_i32(-16627i, -(((global0.x | arg_2.a.b) >> (~18836u % 32u)) << (1u % 32u)));
    let var_0 = vec4<i32>(0i, global0.x, func_2().a.b, global0.x) ^ vec4<i32>(~(-arg_1.x | _wgslsmith_mult_i32(arg_1.x, 14506i)), ~firstLeadingBit(abs(arg_1.x)), -39531i, abs(2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.c, -1037f, -834f), vec3<f32>(-1000f, 157f, arg_2.c))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c), -542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.c + 388f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c * var_1.x)))), var_1.x, arg_2.b, arg_2.b);
    var var_3 = -1i;
    return ~(arg_1 | ~vec2<i32>(-10741i, global0.x & -1i));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = Struct_3(vec4<i32>((i32(-1i) * -2147483647i) ^ arg_0.x, _wgslsmith_sub_i32(1i, func_2().a.a.x), ~(-1i), _wgslsmith_div_i32(arg_0.x, ~0i)) >> (vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b, u_input.a, firstLeadingBit(1u)), u_input.a >> (u_input.b % 32u), ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u)) % vec4<u32>(32u)), func_2(), ~1i, -vec3<i32>(0i, -global0.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i)) | abs(vec3<i32>(2147483647i, -4613i ^ arg_3.b.a.x, arg_3.b.b)), _wgslsmith_mod_i32(~arg_2.x, -_wgslsmith_mod_i32(arg_3.b.a.x, 0i) >> (0u % 32u)));
    let var_1 = var_0;
    global1 = _wgslsmith_dot_vec2_i32(max(-arg_3.b.a, _wgslsmith_mod_vec2_i32(var_1.a.zx, vec2<i32>(2147483647i, arg_2.x)) << (~vec2<u32>(44710u, u_input.b) % vec2<u32>(32u))), global0.xx);
    global0 = var_1.a;
    var var_2 = arg_0.x;
    return Struct_5(var_1.b);
}

fn func_6(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    global0 = firstTrailingBit(vec4<i32>(func_5(abs(arg_2.b.a), vec4<u32>(1u, ~u_input.a, 1u, ~arg_1), countOneBits(~vec4<i32>(-443i, -32545i, arg_2.b.a.x, 5098i)), Struct_4(arg_2.a, Struct_1(vec2<i32>(29766i, 3756i), global0.x))).a.a.a.x, arg_2.b.a.x, ~_wgslsmith_mod_i32(select(-2147483647i, 19465i, arg_2.a.x), arg_2.b.b << (30230u % 32u)), _wgslsmith_mult_i32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, 369f, arg_0.a.b) - vec3<f32>(arg_0.a.b, arg_0.a.c, 1364f)), 1i).x, arg_0.a.a.b)));
    var var_0 = vec4<bool>((0u >> (u_input.b % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(~13641u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1, 5306u), vec3<u32>(u_input.a, 1u, 98991u))), abs(vec2<u32>(u_input.b, arg_1) << (vec2<u32>(23364u, 11068u) % vec2<u32>(32u)))), arg_2.a.x, !(arg_0.a.a.b < ~reverseBits(arg_0.a.a.a.x)), arg_2.a.x);
    let var_1 = func_5(vec2<i32>(arg_0.a.a.b, -reverseBits(33364i)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 39430u << (arg_1 % 32u), 13070u), ~vec3<u32>(0u, u_input.b, arg_1)), ~arg_1, 4294967295u, ~arg_1), _wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, arg_2.b.a.x, -4804i, arg_2.b.a.x), -vec4<i32>(global0.x, -2147483647i, global0.x, arg_2.b.b)), ~(-vec4<i32>(-20866i, arg_2.b.b, 0i, global0.x))) << ((~countOneBits(vec4<u32>(u_input.a, 69318u, arg_1, 4294967295u)) ^ ((vec4<u32>(u_input.b, 37145u, 1u, 0u) << (vec4<u32>(u_input.a, u_input.b, u_input.a, 4294967295u) % vec4<u32>(32u))) >> (~vec4<u32>(1u, arg_1, arg_1, 49730u) % vec4<u32>(32u)))) % vec4<u32>(32u)), Struct_4(vec3<bool>(true | (-481f == arg_0.a.c), _wgslsmith_mod_i32(-11038i, -1i) <= ~global0.x, arg_2.a.x), func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_2.b.b), vec2<i32>(-2147483647i, arg_2.b.b)), vec4<u32>(0u, u_input.a, 21726u, arg_1), _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_2.b.a.x, -1i, arg_0.a.a.a.x, 1i), vec4<i32>(14719i, arg_2.b.b, arg_2.b.a.x, -31715i), vec4<bool>(true, var_0.x, false, true)), vec4<i32>(arg_2.b.b, arg_2.b.b, 31389i, 4194i) << (vec4<u32>(54593u, arg_1, 1u, arg_1) % vec4<u32>(32u))), Struct_4(var_0.yxx, Struct_1(vec2<i32>(0i, 45415i), arg_2.b.b))).a.a));
    global0 = select(_wgslsmith_mult_vec4_i32(((vec4<i32>(global0.x, var_1.a.a.a.x, 0i, 1i) & vec4<i32>(0i, arg_0.a.a.a.x, -2147483647i, var_1.a.a.b)) ^ -vec4<i32>(-20164i, arg_2.b.a.x, 2492i, 2147483647i)) ^ vec4<i32>(_wgslsmith_mod_i32(-2147483647i, arg_2.b.a.x), var_1.a.a.b, -13467i, var_1.a.a.a.x ^ 0i), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(994f, -345f, -890f)), -2115i)), vec4<i32>(_wgslsmith_clamp_i32(-41065i, var_1.a.a.b, arg_0.a.a.a.x), _wgslsmith_add_i32(arg_0.a.a.a.x, 1i) | 2147483647i, ~(~var_1.a.a.b), global0.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(min(31407u, 20810u), u_input.a, _wgslsmith_add_u32(27417u, 0u), arg_1), firstTrailingBit(~vec4<u32>(1u, arg_1, arg_1, 49547u))) % vec4<u32>(32u)), vec4<bool>(any(select(vec4<bool>(true, true, arg_2.a.x, false), !vec4<bool>(var_0.x, var_0.x, arg_2.a.x, true), vec4<bool>(false, var_0.x, true, false))), true, true, any(select(vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(arg_2.a.x, false, false, true), vec4<bool>(var_0.x, true, false, var_0.x), true), arg_2.a.x))));
    var var_2 = func_5(vec2<i32>(var_1.a.a.a.x, -2147483647i), vec4<u32>(firstLeadingBit(u_input.a), arg_1, 1u | arg_1, arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.a.x, var_1.a.a.b, arg_0.a.a.a.x ^ -arg_0.a.a.a.x, -2147483647i), ~countOneBits(vec4<i32>(29372i, var_1.a.a.b, var_1.a.a.a.x, var_1.a.a.b))), Struct_4(!vec3<bool>(!arg_2.a.x, arg_2.a.x, arg_2.b.b < arg_0.a.a.b), func_2().a)).a;
    return func_5(var_2.a.a, select(vec4<u32>(u_input.b, 1u, firstTrailingBit(abs(arg_1)), u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_1, u_input.b | 16314u, arg_1, ~34650u), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(2093u, 0u, 13333u, 21016u)), vec4<u32>(16222u, u_input.b, arg_1, arg_1) & vec4<u32>(14546u, arg_1, arg_1, u_input.b)), vec4<u32>(~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(5255u, u_input.a, 0u, u_input.a), vec4<u32>(90921u, arg_1, 61962u, 1u)), ~10309u, 53652u)), false), firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a.b, arg_2.b.b, -2147483647i, arg_0.a.a.a.x), vec4<i32>(2147483647i, var_1.a.a.a.x, global0.x, -1i)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.b, arg_1, 4294967295u), ~vec4<u32>(arg_1, 1u, arg_1, 1u)) % vec4<u32>(32u))), Struct_4(!(!select(arg_2.a, vec3<bool>(true, true, arg_2.a.x), var_0.x)), var_2.a)).a;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = select(0u, 1u, false);
    let var_1 = Struct_3(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(global0.x, 0i), abs(_wgslsmith_sub_i32(abs(global0.x), ~(-14682i))), -26887i), func_6(func_5(func_4(arg_2.a.a, vec2<i32>(-35464i, arg_2.a.a.x) ^ arg_2.a.a, func_2()), vec4<u32>(~u_input.b, 1u, abs(591u), u_input.a >> (0u % 32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-29202i, arg_0, 0i, -2147483647i), vec4<i32>(global0.x, -19936i, arg_2.a.b, 0i)) >> (~vec4<u32>(u_input.a, 30646u, u_input.b, u_input.a) % vec4<u32>(32u)), Struct_4(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), Struct_1(arg_2.a.a, 72346i))), max(u_input.a, u_input.b), Struct_4(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), Struct_1(max(vec2<i32>(-1i, arg_2.a.b), global0.xz), -11307i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, firstLeadingBit(-31638i)), ~(~1i) ^ global0.x), vec3<i32>(-62918i, global0.x, _wgslsmith_mult_i32(countOneBits(arg_0), firstTrailingBit(1i))) | (min(_wgslsmith_add_vec3_i32(global0.xyx, global0.yzx), -vec3<i32>(global0.x, global0.x, -2147483647i)) | vec3<i32>(select(1i, arg_0, true), ~2147483647i, ~(-1i))), _wgslsmith_sub_i32(func_4(arg_2.a.a, func_6(Struct_5(arg_2), 1u, Struct_4(vec3<bool>(false, false, false), arg_2.a)).a.a ^ global0.zw, func_5(vec2<i32>(arg_2.a.b, 2147483647i), ~vec4<u32>(u_input.b, 0u, 4294967295u, 1u), vec4<i32>(arg_2.a.a.x, -8558i, 2147483647i, 23590i), Struct_4(vec3<bool>(true, true, true), Struct_1(vec2<i32>(26364i, 0i), arg_0))).a).x, arg_2.a.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-242f)) + var_1.b.b);
    let var_3 = !(!vec2<bool>(arg_0 == arg_0, false));
    var var_4 = arg_2.c;
    return _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, arg_0), arg_0), _wgslsmith_dot_vec2_i32(arg_2.a.a, var_1.d.yy) & arg_2.a.a.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1468f, -1107f) - _wgslsmith_f_op_f32(step(1129f, 257f))))), _wgslsmith_f_op_f32(f32(-1f) * -1482f));
    global0 = vec4<i32>(firstLeadingBit(~(~(-2147483647i))), -func_1(global0.x, var_0, Struct_2(Struct_1(global0.zy, -1i), var_0.x, var_0.x)) >> ((~0u | u_input.b) % 32u), global0.x, _wgslsmith_add_i32(func_2().a.a.x, ~24689i)) >> (_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(35415u, u_input.a, u_input.a, 0u)), ~(~(~vec4<u32>(u_input.a, 38860u, 1u, 21663u)))) % vec4<u32>(32u));
    var var_1 = Struct_4(!vec3<bool>(true, all(vec3<bool>(true, true, true)), true), Struct_1(abs(global0.yw), 50767i));
    var var_2 = Struct_2(var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2027f)) - _wgslsmith_f_op_f32(round(654f)))))), var_0.x);
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.wxw);
}

