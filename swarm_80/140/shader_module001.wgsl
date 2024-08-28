struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = !arg_0;
    var_0 = !arg_0;
    var_0 = vec2<bool>(var_0.x, arg_0.x);
    let var_1 = Struct_2(105708u, ~(~vec4<u32>(0u, global0.a, 4294967295u, 17346u)) ^ vec4<u32>(14120u, ~54421u, 43168u, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.b.x, 0u), global0.b.wxz))), global0.e, global0.d, true);
    global0 = var_1;
    return _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-34205i, 8696i)), -vec2<i32>(1i, 1i)), -1i), vec3<i32>(1i, 1i, 1i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(firstTrailingBit(~select(select(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(-23294i, -33407i, 0i), false), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -39072i, 2147483647i), vec3<i32>(2147483647i, -44489i, 6501i)), !vec3<bool>(true, global0.c, false))), max(vec3<i32>(_wgslsmith_div_i32(max(0i, 1i), firstLeadingBit(-22694i)), ~(-16331i), abs(1i) >> (countOneBits(23264u) % 32u)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(2147483647i, 58840i, 37368i), vec3<i32>(20148i, -2147483647i, -2147483647i)) << (reverseBits(global0.b.yzz) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1288i, 2147483647i), vec3<i32>(2147483647i, 26317i, 6491i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 43809i), vec4<i32>(-63742i, 0i, -2147483647i, 1i)), firstLeadingBit(2537i)))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global0.b.xyy >> (vec3<u32>(118774u, 1u, 4294967295u) % vec3<u32>(32u)), ~global0.b.zzz), ~u_input.c, 57723u), ~reverseBits(abs(global0.b))) | vec4<u32>(u_input.c, 76096u, ~1u, reverseBits(~9265u) | _wgslsmith_mult_u32(~26984u, ~global0.a));
    let var_2 = false;
    let var_3 = var_0.b;
    var var_4 = vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(887f)), _wgslsmith_div_f32(global0.d, -1000f)) - global0.d) <= -258f);
    return countOneBits(~(~(-func_2(vec2<bool>(false, true)).x)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(-42235i, -2147483647i, -min(1i, -2377i)), min(-vec3<i32>(-40609i, -1i, 0i) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-60841i, 9796i, -2147483647i, -1i), vec4<i32>(0i, 43164i, 1i, -1i)), ~0i, _wgslsmith_clamp_i32(-2147483647i, 1i, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(47589i, 48167i, 2147483647i), ~vec3<i32>(19311i, -6952i, 1i)), _wgslsmith_div_i32(abs(2147483647i), countOneBits(-59639i)), 1i)));
    var_0 = ~max(~(-11671i), -1i);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d))))), _wgslsmith_f_op_f32(abs(1000f)));
    return Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i) & func_2(vec2<bool>(global0.c, false)), ~vec3<i32>(0i, 57260i, 0i) >> (countOneBits(global0.b.wzx) % vec3<u32>(32u)), -min(vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-2147483647i, -48109i, -54531i))) ^ vec3<i32>(12110i, -1i, abs(1i)), vec3<i32>(_wgslsmith_mod_i32(func_3(), 46722i), 2147483647i, 1i >> (_wgslsmith_dot_vec4_u32(global0.b, global0.b) % 32u)) >> (vec3<u32>(~max(1u, u_input.a), 0u, 9511u) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(abs(global0.d)), 254f);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1113f, -1000f, arg_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), -1102f, _wgslsmith_div_f32(-1196f, var_0.x)))) - vec3<f32>(-274f, 622f, arg_2)));
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b.x, ~(-53135i)), -_wgslsmith_mult_vec2_i32(arg_0.b.zz, _wgslsmith_sub_vec2_i32(arg_0.a.yz, arg_0.a.zz)));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(~global0.b << (_wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(4294967295u, 86668u, u_input.a, 72821u)) % vec4<u32>(32u)), ~global0.b) >> (35161u % 32u), abs(~global0.b), all(select(vec2<bool>(var_1.x <= var_1.x, true), !select(vec2<bool>(global0.c, false), vec2<bool>(arg_1, false), arg_1), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x)))), arg_1);
    var var_3 = all(select(select(!vec2<bool>(global0.c, false), !vec2<bool>(true, var_2.e), vec2<bool>(var_2.e, true)), select(vec2<bool>(arg_1, false), !select(vec2<bool>(global0.e, arg_1), vec2<bool>(true, false), arg_1), 4294967295u < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 10748u, 0u, var_2.b.x), vec4<u32>(u_input.c, var_2.b.x, var_2.b.x, var_2.a))), select(!vec2<bool>(var_2.e, var_2.c), !(!vec2<bool>(arg_1, arg_1)), !(global0.d <= var_2.d))));
    return Struct_2(~_wgslsmith_dot_vec4_u32(~global0.b << ((vec4<u32>(arg_3, arg_3, u_input.b.x, 0u) << (var_2.b % vec4<u32>(32u))) % vec4<u32>(32u)), var_2.b), firstTrailingBit(vec4<u32>(4294967295u | arg_3, ~_wgslsmith_sub_u32(1u, var_2.b.x), 1u, var_2.a)), all(vec4<bool>((arg_0.b.x & -6064i) == 1i, var_2.c, false, _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(1466f * 169f))), var_0.x, (any(!vec2<bool>(false, var_2.e)) == all(!vec3<bool>(global0.e, var_2.e, false))) || ((true & arg_1) | all(select(vec3<bool>(global0.e, global0.e, true), vec3<bool>(global0.e, false, true), var_2.c))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    var var_0 = global0.b.x;
    global0 = Struct_2(4294967295u | arg_0.b.x, ~countOneBits(~(~arg_0.b)), !(!arg_0.e), -520f, countOneBits(58509u) <= _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b.x, arg_0.a, arg_0.a)), global0.b.yyz >> (global0.b.xwy % vec3<u32>(32u))), (u_input.a << (4294967295u % 32u)) ^ 4294967295u));
    return ~29572u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec4<bool>(global0.c, global0.e & true, global0.e, any(vec2<bool>(false, false)))));
    global0 = Struct_2(func_5(func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -185f) <= _wgslsmith_f_op_f32(trunc(250f)), _wgslsmith_f_op_f32(485f - 448f), ~global0.a), abs(~firstLeadingBit(vec3<i32>(1i, 28237i, -33779i)))), ~global0.b & (vec4<u32>(32930u, firstTrailingBit(u_input.b.x), reverseBits(63473u), 4294967295u) >> (vec4<u32>(36219u, global0.b.x, 41468u, 0u) % vec4<u32>(32u))), false, -1000f, global0.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.d, global0.d, global0.d)))))))));
    let var_2 = Struct_1(vec3<i32>(select(-39617i >> (u_input.a % 32u), ~(-11409i >> (u_input.c % 32u)), !(global0.d <= -1123f)), _wgslsmith_div_i32(~2147483647i, 27841i), -24028i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-36251i, 0i, 0i, -58125i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, -11950i)), 2147483647i), ~abs(vec3<i32>(1i, -7846i, -2147483647i))), vec3<i32>(1i, ~(~(-15377i)), 2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - var_1.x)) + _wgslsmith_f_op_f32(select(972f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d), global0.d, var_0.x)), true)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(935f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.d, 757f)), _wgslsmith_f_op_f32(abs(-491f)))))), var_1.x, var_0.x)), var_1.x);
    global0 = func_4(Struct_1(var_2.a, vec3<i32>(var_2.b.x, var_2.a.x, firstTrailingBit(func_2(var_0.zy).x))), global0.e, global0.d, _wgslsmith_mod_u32(~u_input.a, u_input.c));
    let var_5 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(global0.b.xyz, ~vec3<u32>(~24977u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), global0.b.wx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, -1i), vec2<i32>(var_2.b.x, func_1().a.x)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(0i, var_2.b.x))) ^ -(vec2<i32>(var_2.a.x, var_2.a.x) | var_2.a.xx)), -(~_wgslsmith_add_i32(var_2.b.x, -1i)) & (min(-1i, var_2.b.x) ^ _wgslsmith_mod_i32(-1i, -13546i ^ var_2.b.x)), ~_wgslsmith_sub_vec2_u32(var_5, ~vec2<u32>(34359u, 26365u) << (var_5 % vec2<u32>(32u))), vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(35516u, 1u, var_5.x, 4294967295u), func_4(var_2, true, var_4.x, 3637u).b)), _wgslsmith_clamp_u32(var_5.x, ~1u, 42429u), ~global0.b.x), ~abs(26071u));
}

