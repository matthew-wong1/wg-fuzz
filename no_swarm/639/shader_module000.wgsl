struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(45255u, 32210u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> i32 {
    let var_0 = ~(~(~(~(vec3<u32>(arg_1, 0u, 7881u) & vec3<u32>(62782u, 0u, arg_1)))));
    global0 = var_0;
    global0 = var_0 ^ (~_wgslsmith_sub_vec3_u32(~var_0, ~vec3<u32>(0u, global0.x, global0.x)) | firstLeadingBit(vec3<u32>(arg_1, 23910u, global0.x) & ~vec3<u32>(14434u, var_0.x, arg_1)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(min(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -670f, 313f, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), vec4<bool>(false, any(vec4<bool>(false, false, arg_2.x, false)), false | arg_2.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 331f), _wgslsmith_f_op_f32(arg_0.x + 1000f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + arg_0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-327f)), -224f, _wgslsmith_f_op_f32(-1216f * -278f))))));
    let var_2 = Struct_1(arg_2.x && true, vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -633f)) + -536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)))), abs(vec3<i32>(u_input.b, u_input.b | ~2147483647i, min(firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(1162i, 29623i, 8102i)))), 50551i);
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(countOneBits(var_2.c.xz), ~firstLeadingBit(vec2<i32>(-15382i, var_2.d))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_3 {
    let var_0 = vec3<bool>(u_input.b > _wgslsmith_mod_i32(~1i, func_3(vec4<f32>(201f, -461f, 195f, -1040f), global0.x, vec3<bool>(true, true, false)) << (_wgslsmith_clamp_u32(1u, global0.x, 29918u) % 32u)), true, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-411f, 511f, true)), _wgslsmith_f_op_f32(1833f + 1000f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-491f, _wgslsmith_f_op_f32(858f + -482f), true)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    var var_1 = Struct_2(select(vec3<bool>(all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, true, var_0.x, true), var_0.x)), (global0.x >= global0.x) == (true || var_0.x), true || all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), var_0, !select(false, any(var_0), !var_0.x)));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2, global0.x, 0u, arg_2), vec4<u32>(87806u, 23943u, 4294967295u, global0.x)), ~(~vec4<u32>(global0.x, 32820u, 1u, 22583u))), ~_wgslsmith_add_u32(arg_0, ~arg_2)), countOneBits(max(vec2<u32>(abs(1u), ~arg_0), ~select(vec2<u32>(41802u, global0.x), vec2<u32>(0u, 4294967295u), var_0.zy))));
    var var_3 = _wgslsmith_mod_vec4_i32(~max(vec4<i32>(arg_1, arg_1, 1i, arg_1) ^ vec4<i32>(arg_1, -48127i, 1i, -28697i), countOneBits(vec4<i32>(u_input.b, arg_1, 0i, 18846i))), firstLeadingBit(min(vec4<i32>(-2147483647i, arg_1, u_input.a.x, arg_1), vec4<i32>(1i, arg_1, arg_1, u_input.a.x)) ^ vec4<i32>(arg_1, -1i, -1i, -3185i))) & ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, arg_1, 9900i, arg_1), vec4<i32>(u_input.b, -2147483647i, u_input.b, arg_1)) >> (~countOneBits(vec4<u32>(53826u, var_2.x, 103785u, global0.x)) % vec4<u32>(32u)));
    var_3 = min(vec4<i32>(u_input.b, -_wgslsmith_mod_i32(abs(2147483647i), arg_1 ^ 2147483647i), -firstLeadingBit(20494i >> (global0.x % 32u)), countOneBits(-var_3.x) ^ arg_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 8880i, u_input.a.x & ~arg_1, arg_1), select(vec4<i32>(var_3.x, countOneBits(17816i), ~0i, 1i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_3.x, -63047i, u_input.b, arg_1), vec4<i32>(2147483647i, arg_1, 0i, 2147483647i), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<i32>(19812i, -29051i, 2147483647i, arg_1)), any(var_1.a)), -_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, arg_1, arg_1, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b, var_3.x, 34720i), vec4<i32>(28668i, u_input.a.x, arg_1, var_3.x)))));
    return Struct_3(Struct_2(!(!vec3<bool>(false, false, var_1.a.x))), var_0.x, Struct_2(select(select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_1.a.x, true, var_0.x), all(var_1.a.xy)), !var_1.a, var_1.a)), vec4<i32>(-1i, -2147483647i, var_3.x, select(firstTrailingBit(-10438i), min(-1i, -28618i), true)) << (~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(12724u, 4294967295u, 58152u, 1u)), ~vec4<u32>(global0.x, 180215u, arg_0, 1u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    global0 = ~firstTrailingBit(vec3<u32>(1193u, global0.x, ~1u));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1127f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-605f + 817f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(343f, 736f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, -372f, 688f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-495f, -324f, -341f) * vec3<f32>(-982f, -834f, -1113f))))));
    var var_1 = Struct_1(func_2(_wgslsmith_add_u32(global0.x, 4294967295u), u_input.a.x, global0.x).c.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(525f - var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))))), vec3<i32>(arg_1.d.x, ~arg_1.d.x & select(u_input.b, -28278i, arg_2.x), func_2(global0.x, ~52126i, 4294967295u).d.x) >> ((firstTrailingBit(vec3<u32>(76751u, global0.x, 3111u)) & _wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, 20929u, 45775u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, 15782u), vec3<u32>(global0.x, 13434u, global0.x)))) % vec3<u32>(32u)), ~u_input.a.x);
    let var_2 = max(func_2(_wgslsmith_div_u32(global0.x, ~global0.x), ~arg_1.d.x, global0.x | select(~global0.x, 12392u | global0.x, arg_1.a.a.x)).d, vec4<i32>(_wgslsmith_sub_i32(-func_2(116707u, arg_1.d.x, 38679u).d.x, var_1.d ^ min(u_input.a.x, 2147483647i)), 1i, -10727i, 2147483647i));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(-231f - _wgslsmith_div_f32(898f, -748f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))), var_0.x);
    return Struct_1(!(!all(select(vec2<bool>(arg_1.c.a.x, false), arg_0.a.zx, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(669f + var_3.x) + -1591f), -1000f)), func_2(~(~_wgslsmith_sub_u32(61771u, 43184u)), -abs(arg_1.d.x), global0.x).d.zxz, ~_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(arg_1.d.x, 48742i), var_1.c.x >> (select(global0.x, 1u, false) % 32u), firstTrailingBit(arg_1.d.x) & -var_1.d));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(vec3<bool>(func_2(firstLeadingBit(countOneBits(0u)), firstLeadingBit(select(u_input.b, -2147483647i, arg_1.c.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, 12905u), vec4<u32>(15574u, 4624u, global0.x, global0.x))).b, false, true));
    var var_1 = -(2147483647i | arg_1.d.x) < -42385i;
    var var_2 = Struct_1(var_0.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(217f * -606f), -2726f), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(1137f * 511f)))))), _wgslsmith_mult_vec3_i32(select(~arg_1.d.xzz, ~vec3<i32>(u_input.b, 10275i, -21561i), !vec3<bool>(arg_1.b, true, false)), ~vec3<i32>(arg_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, -1i, arg_1.d.x), arg_0.c), func_2(31863u, arg_0.d, global0.x).d.x)), _wgslsmith_sub_i32(u_input.b, -27092i));
    var_1 = any(vec4<bool>(true, true, false, false));
    let var_3 = func_4(arg_1.c, Struct_3(func_2(global0.x, u_input.a.x, abs(11828u & global0.x)).c, arg_1.c.a.x, arg_1.c, -(~select(arg_1.d, arg_1.d, vec4<bool>(true, true, arg_0.a, false)))), !func_2(global0.x, -_wgslsmith_div_i32(arg_1.d.x, 40502i), 13421u).a.a);
    return func_2(67023u, var_3.d, 16429u).c;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~vec3<i32>(0i, ~(~arg_0.x), -28791i);
    var var_1 = vec4<u32>(_wgslsmith_div_u32(global0.x, reverseBits(~global0.x)), 24450u, ~0u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, ~global0.x), ~vec3<u32>(1830u, global0.x, 19972u)), 63001u));
    var var_2 = func_5(func_4(Struct_2(!vec3<bool>(false, false, arg_1.a)), func_2(global0.x, -1i, 90092u), !(!(!vec3<bool>(false, arg_1.a, arg_1.a)))), func_2(106182u, func_4(Struct_2(!vec3<bool>(arg_1.a, true, arg_1.a)), func_2(0u, arg_1.d >> (22156u % 32u), _wgslsmith_clamp_u32(global0.x, var_1.x, 24738u)), vec3<bool>(!arg_1.a, true, !arg_1.a)).d, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1.b.x, -391f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2610f)))));
    global0 = var_1.wwy;
    var var_3 = Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_2.a.x, arg_1.a, var_2.a.x), vec4<bool>(var_2.a.x, true, false, arg_1.a), vec4<bool>(var_2.a.x, var_2.a.x, true, arg_1.a)), !vec4<bool>(arg_1.a, var_2.a.x, arg_1.a, false))) && false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_1.b)), arg_1.b, vec2<bool>(true, true))), -_wgslsmith_clamp_vec3_i32(arg_1.c, _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, -4031i, arg_1.d), ~vec3<i32>(11854i, 0i, -21538i)), ~(vec3<i32>(-10114i, arg_1.d, arg_0.x) | vec3<i32>(-29774i, arg_1.d, 39185i))), _wgslsmith_mod_i32(~u_input.b, -16717i));
    return countOneBits(~(~_wgslsmith_mult_u32(var_1.x, abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>(true, true, !(0i > min(u_input.b, u_input.b))));
    global0 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(firstTrailingBit(max(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(global0.x, global0.x, global0.x)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(global0.x), reverseBits(global0.x)), 4294967295u), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(18255u, global0.x), func_1(vec4<i32>(4185i, u_input.b, u_input.a.x, 1i), Struct_1(var_0.a.x, vec2<f32>(-405f, 1614f), vec3<i32>(-10689i, u_input.a.x, u_input.a.x), u_input.a.x)) | ~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 33435u, global0.x, global0.x), vec4<u32>(56929u, 4294967295u, global0.x, global0.x) << (vec4<u32>(global0.x, 23983u, 0u, global0.x) % vec4<u32>(32u)))), ~39058u), ~(~(~(~vec3<u32>(42012u, 0u, 39422u)))));
    let var_1 = func_4(Struct_2(vec3<bool>(func_2(1017u, firstLeadingBit(u_input.b), global0.x).a.a.x, !(!var_0.a.x), var_0.a.x)), func_2(~global0.x, 40101i, global0.x), func_5(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1592f, 455f) + vec2<f32>(-522f, -527f)) * vec2<f32>(1061f, 204f)), ~(-vec3<i32>(u_input.b, -1i, -2147483647i)), u_input.b), Struct_3(Struct_2(var_0.a), var_0.a.x, func_2(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<i32>(-1i, -73278i, u_input.a.x)), 11156u).c, vec4<i32>(0i, u_input.a.x, u_input.b, u_input.a.x)), !func_2(global0.x, -1i, 63977u).c.a.x | !var_0.a.x).a);
    var var_2 = Struct_3(func_5(Struct_1(func_5(Struct_1(var_1.a, var_1.b, var_1.c, 2147483647i), Struct_3(Struct_2(var_0.a), true, Struct_2(var_0.a), vec4<i32>(0i, var_1.d, u_input.b, 1i)), true).a.x, var_1.b, -func_4(Struct_2(vec3<bool>(false, false, var_0.a.x)), Struct_3(Struct_2(var_0.a), var_0.a.x, Struct_2(vec3<bool>(var_1.a, var_1.a, true)), vec4<i32>(u_input.a.x, u_input.b, 0i, u_input.b)), var_0.a).c, u_input.b), Struct_3(Struct_2(var_0.a), all(!vec4<bool>(var_1.a, var_0.a.x, false, var_0.a.x)), Struct_2(select(vec3<bool>(false, var_1.a, true), var_0.a, var_0.a)), ~countOneBits(vec4<i32>(u_input.b, 5757i, var_1.d, u_input.b))), var_1.a), false, Struct_2(select(var_0.a, func_2(~global0.x, -1i, 0u).c.a, vec3<bool>(true, true, true))), -firstTrailingBit(~vec4<i32>(-2147483647i, -32292i, 0i, var_1.c.x)));
    var var_3 = _wgslsmith_div_u32(global0.x, abs(_wgslsmith_sub_u32(global0.x, _wgslsmith_sub_u32(4294967295u, global0.x)))) << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 57537u), vec3<u32>(global0.x, global0.x, global0.x)), global0.x), vec3<u32>(global0.x, 0u, 1u))) % 32u);
    var_0 = func_5(var_1, func_2(~(~global0.x), _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec3_i32(~var_2.d.wxx, var_2.d.zwz)), 44654u), true);
    var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, global0.x), ~func_1(var_2.d, Struct_1(true, vec2<f32>(var_1.b.x, var_1.b.x), var_1.c, u_input.a.x)))), vec4<i32>(-1i) * -var_2.d, vec3<u32>(global0.x, global0.x, ~firstLeadingBit(15545u)), abs(vec3<i32>(_wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(-2228i, 16432i)), -(var_2.d.x & 2147483647i), -30267i)), global0.x);
}

