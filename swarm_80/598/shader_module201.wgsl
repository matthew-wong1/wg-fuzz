struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec3<i32> {
    global0 = max(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global0.x, 44838i, -32766i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, 24929i, global0.x), vec3<i32>(global0.x, -37431i, -2147483647i), vec3<i32>(-2147483647i, 34111i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-2147483647i, global0.x, -24542i) << (arg_2 % vec3<u32>(32u)), vec3<i32>(global0.x, global0.x, 1i))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(1i, -73050i, global0.x)), vec3<i32>(firstTrailingBit(global0.x), -1i & global0.x, global0.x))) | vec3<i32>(~((global0.x >> (arg_2.x % 32u)) ^ global0.x), _wgslsmith_div_i32(-global0.x, -8121i), -2147483647i ^ global0.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.x))))) * -1240f);
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, global0.x, global0.x, global0.x) | (vec4<i32>(0i, global0.x, -20220i, global0.x) & vec4<i32>(global0.x, -2147483647i, global0.x, -39363i)), vec4<i32>(countOneBits(global0.x), -global0.x, global0.x, countOneBits(2147483647i))) ^ firstLeadingBit(-1i), -1i, 1i);
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(27145u, arg_2.x, ~abs(24653u), max(_wgslsmith_div_u32(arg_2.x, 1u), ~0u))), vec4<u32>(~121236u, (34230u >> (_wgslsmith_mod_u32(u_input.b, u_input.a) % 32u)) & 0u, abs(u_input.a) << (_wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(arg_2.x, 12700u, arg_2.x)) % 32u), ~reverseBits(arg_2.x & 1u)));
    let var_2 = select(!(!(!select(arg_0, arg_0, arg_0.x))), select(!arg_0, !vec2<bool>(arg_0.x, arg_0.x), !any(!vec3<bool>(arg_0.x, true, arg_0.x))), select(arg_0, select(arg_0, select(select(arg_0, arg_0, arg_0), arg_0, !arg_0.x), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), all(vec3<bool>(true, arg_0.x, u_input.b == 4294967295u))));
    return min(vec3<i32>(_wgslsmith_add_i32(global0.x >> (u_input.a % 32u), ~19783i), _wgslsmith_mult_i32(0i, global0.x) | _wgslsmith_div_i32(global0.x, 63749i), max(~(-2147483647i), -global0.x)), (vec3<i32>(-1i) * -vec3<i32>(global0.x, 1i, global0.x)) >> (firstTrailingBit(vec3<u32>(u_input.b, 61730u, arg_2.x)) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(-13924i, -2147483647i)), min(vec2<i32>(1i, 1i), -global0.yx)), global0.x, max(countOneBits(max(global0.x, global0.x)), 0i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    return _wgslsmith_mult_i32(19735i, (reverseBits(arg_2.x) >> (arg_0.d % 32u)) << (max(1u, ~1u) % 32u)) & global0.x;
}

fn func_2(arg_0: vec3<bool>) -> vec3<i32> {
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~abs(vec3<i32>(global0.x, -2147483647i, 14745i)), max(-vec3<i32>(1i, 790i, -1i), select(vec3<i32>(-2147483647i, global0.x, 6794i), vec3<i32>(1i, -2147483647i, global0.x), arg_0.x)) & firstTrailingBit(vec3<i32>(global0.x, -22229i, -1i))), vec3<i32>(-2147483647i, func_4(Struct_1(~u_input.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1000f))), vec3<i32>(33213i, global0.x, 27003i), 0u), Struct_1(~u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(137f, 816f) + vec2<f32>(-1000f, 278f)), func_3(vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(298f, -638f, 136f, 1446f), vec3<u32>(0u, 43612u, 1u), vec3<f32>(190f, -721f, 579f)), u_input.b), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, 25168i, 32489i, global0.x), vec4<i32>(global0.x, 0i, 1i, global0.x) | vec4<i32>(global0.x, -42209i, -1i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x)), arg_0.x), global0.x));
    var var_0 = (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, 42823u), countOneBits(vec3<u32>(4294967295u, u_input.a, 21017u))) ^ 1u) << (0u % 32u);
    global0 = vec3<i32>(_wgslsmith_clamp_i32((global0.x | -global0.x) | global0.x, i32(-1i) * -global0.x, abs(global0.x)), ~_wgslsmith_dot_vec2_i32(global0.xz, vec2<i32>(global0.x, global0.x) ^ _wgslsmith_add_vec2_i32(global0.xz, vec2<i32>(1i, -2147483647i))), global0.x);
    let var_1 = firstTrailingBit(u_input.a);
    var_0 = select(~(~_wgslsmith_div_u32(~0u, 4294967295u)), 4294967295u, !(!arg_0.x));
    return countOneBits(vec3<i32>(~2147483647i | max(-1i, global0.x), -57919i, -global0.x)) ^ abs(vec3<i32>(~12173i, _wgslsmith_mult_i32(global0.x, global0.x), _wgslsmith_sub_i32(-30791i, 56500i)) << ((abs(vec3<u32>(4294967295u, 1u, 0u)) << (countOneBits(vec3<u32>(var_1, 18320u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(~global0.x, 0i), _wgslsmith_sub_vec2_i32(~global0.zx, global0.zx));
    global0 = ~func_2(select(vec3<bool>(false, false, -507f != arg_1.x), !select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, false)), any(vec3<bool>(true, arg_2, arg_2))));
    global0 = ~(-countOneBits(abs(vec3<i32>(21307i, global0.x, -9137i)))) >> (vec3<u32>(u_input.b, 0u, ~u_input.a) % vec3<u32>(32u));
    let var_1 = !(!arg_2);
    return func_3(vec2<bool>(arg_2, var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(265f, arg_0, arg_0, -861f) * vec4<f32>(arg_0, arg_3, arg_0, -709f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0, arg_1.x, 1120f) * vec4<f32>(arg_0, arg_1.x, arg_1.x, -441f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_1.x, 958f, 1000f) - vec4<f32>(-1107f, 1495f, arg_0, 630f)))), ~vec3<u32>(reverseBits(0u) >> (_wgslsmith_sub_u32(u_input.a, 0u) % 32u), ~reverseBits(u_input.b), 59050u), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-534f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-106f)), -1518f, _wgslsmith_f_op_f32(min(-3194f, 1088f))))), all(vec3<bool>(u_input.a < 0u, true, true)) & !((u_input.a >= 19325u) & any(vec3<bool>(true, true, true))), -1095f);
    let var_0 = Struct_1(_wgslsmith_add_u32(select(0u, select(u_input.a, u_input.b, select(false, true, true)), true), 1u), vec2<f32>(-795f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(570f, 1072f)))))), vec3<i32>(abs(-34236i), _wgslsmith_add_i32(_wgslsmith_div_i32(-31042i, func_4(Struct_1(17550u, vec2<f32>(404f, 1016f), vec3<i32>(global0.x, 2873i, -2147483647i), u_input.a), Struct_1(u_input.a, vec2<f32>(365f, -856f), vec3<i32>(0i, global0.x, global0.x), u_input.b), vec4<i32>(global0.x, global0.x, global0.x, -2147483647i), true)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global0.x, 0i, -2147483647i, global0.x), vec4<i32>(-1i, 158i, global0.x, 38492i)), ~vec4<i32>(2147483647i, -2147483647i, -40817i, global0.x))), -global0.x), _wgslsmith_sub_u32(24574u, ~(~18600u) | _wgslsmith_sub_u32(18421u, ~u_input.b)));
    let var_1 = ~(~vec4<u32>(~var_0.a, u_input.b, ~1u, 1u) ^ _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.d, 12336u, var_0.d, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0.a, var_0.a, var_0.a), vec4<u32>(1u, var_0.a, 0u, 1u)) | abs(vec4<u32>(var_0.a, 16223u, 1u, u_input.b))));
    global0 = min(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, 2147483647i), select(abs(var_0.c.x), 22163i, false)), 0i, 44298i), var_0.c);
    var var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    global0 = var_0.c;
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-363f + 1f), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)))));
    var var_5 = var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global0.x, 7676i, global0.x) >> (min(23680u, 65096u) % 32u), func_2(vec3<bool>(false, true, false)).x >> (~1u % 32u)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-18684i, 2147483647i)), vec2<i32>(func_1(var_4.x, var_4, true, var_0.b.x).x, -16444i))), ~countOneBits(~(~var_1.yw)), _wgslsmith_mult_i32(22431i, ~(var_0.c.x << ((var_1.x >> (u_input.a % 32u)) % 32u))));
}

