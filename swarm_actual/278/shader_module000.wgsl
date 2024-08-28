struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -5925i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    global0 = select(u_input.a, reverseBits(max(u_input.c.x, 0i)), -20636i < -_wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(912i, -23052i, 52321i)));
    global0 = max(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.a, -2545i, arg_0), vec3<i32>(-1i, 11898i, 7793i), vec3<bool>(false, false, false)), -vec3<i32>(~arg_0, u_input.c.x | arg_0, ~2147483647i)), i32(-1i) * -44432i);
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, false)), true), (firstLeadingBit(arg_0) < ~arg_0) | true);
    let var_1 = 14558i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-329f, -1291f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1664f - 2728f), 407f))))));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-52447i, 2147483647i) << (u_input.b.zz % vec2<u32>(32u)), vec2<i32>(var_1, var_1))), (vec2<i32>(-1177i, u_input.c.x) ^ max(u_input.c, u_input.c)) | _wgslsmith_clamp_vec2_i32(u_input.c, countOneBits(vec2<i32>(var_1, arg_0)), countOneBits(vec2<i32>(u_input.a, 25112i)))), -17071i);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    global0 = firstLeadingBit(abs(~(-arg_3.b.x)));
    global0 = abs(func_3(21883i));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a.x + -1000f)), !arg_3.a.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.c.a), _wgslsmith_div_vec3_u32(arg_3.c.b, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(arg_3.a.b, u_input.b), min(vec3<u32>(0u, 1u, arg_3.c.b.x), u_input.d))), vec2<bool>(0i < u_input.c.x, true)), 2147483647i);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-1160f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(993f)))), var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-319f, 589f))), max(vec3<u32>(u_input.d.x, 6154u, var_0.c.b.x), vec3<u32>(u_input.d.x, arg_0, var_0.c.b.x) | arg_3.a.b), arg_3.c.c), arg_3.b.x), arg_3, var_0.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.c.a, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a), -921f), false)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, u_input.e.zzw), vec3<u32>(abs(62497u), countOneBits(arg_0), 4294967295u) ^ vec3<u32>(~arg_3.a.b.x, var_0.c.b.x, var_1.c.b.x >> (arg_3.c.b.x % 32u))), select(!(!var_0.c.c), select(var_0.c.c, vec2<bool>(any(var_0.c.c), var_1.b.c.c.x), !select(false, true, arg_3.a.c.x)), select(select(select(arg_3.a.c, vec2<bool>(arg_3.c.c.x, false), vec2<bool>(var_1.b.a.c.x, true)), vec2<bool>(false, arg_3.a.c.x), !var_1.c.c), vec2<bool>(all(var_1.a.c.c), u_input.d.x == 5331u), select(var_1.a.c.c, vec2<bool>(arg_3.a.c.x, var_0.b), var_0.c.c.x | false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-254f, _wgslsmith_f_op_f32(f32(-1f) * -325f))) - _wgslsmith_f_op_f32(ceil(var_0.c.a.x)))) + 1216f);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = vec2<bool>(!(true || (arg_1 | true)), !arg_1);
    var var_1 = _wgslsmith_f_op_f32(func_4(~0u, vec4<i32>(-1i) * -select(countOneBits(vec4<i32>(-6122i, u_input.c.x, -1i, u_input.c.x)), ~vec4<i32>(2147483647i, u_input.a, -1i, -16707i), select(vec4<bool>(var_0.x, var_0.x, arg_1, false), vec4<bool>(var_0.x, arg_0.c.x, var_0.x, false), vec4<bool>(false, var_0.x, arg_0.c.x, arg_0.c.x))), select(max(-abs(vec4<i32>(u_input.c.x, u_input.a, 2147483647i, -1i)), vec4<i32>(2147483647i, u_input.a, u_input.c.x, 14977i) << (~u_input.e % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -u_input.a, func_3(27557i), u_input.c.x << (u_input.b.x % 32u)), select(vec4<i32>(u_input.a, 1i, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, -1i, -2147483647i, -16216i), -vec4<i32>(41514i, 2147483647i, u_input.c.x, u_input.c.x), arg_1)), select(vec4<bool>(!arg_0.c.x, var_0.x & true, var_0.x, all(vec3<bool>(arg_0.c.x, true, false))), !(!vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x)), true)), Struct_2(arg_0, vec4<i32>(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, -28965i), u_input.a, _wgslsmith_add_i32(u_input.a, 0i)), _wgslsmith_add_i32(u_input.c.x | u_input.a, min(u_input.c.x, 16595i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.a), ~u_input.c.x)), arg_0)));
    var var_2 = !select(select(select(select(vec3<bool>(arg_0.c.x, var_0.x, arg_0.c.x), vec3<bool>(true, var_0.x, true), arg_1), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), -669f > arg_0.a.x), select(vec3<bool>(!arg_1, true, u_input.a >= u_input.c.x), select(!vec3<bool>(var_0.x, true, false), !vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_0.c.x, false, arg_0.c.x)), arg_0.c.x), any(vec3<bool>(true, true, true)));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-308f * arg_0.a.x))), true, Struct_1(arg_0.a, arg_0.b, var_2.xz), -2147483647i), Struct_2(arg_0, -_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.c.x, u_input.c.x, -1i, -50955i), vec4<i32>(31257i, 84049i, 2147483647i, u_input.a)), -vec4<i32>(-23106i, -48004i, u_input.a, u_input.c.x)), arg_0), Struct_1(arg_0.a, ~vec3<u32>(firstTrailingBit(arg_0.b.x), 4294967295u, ~u_input.e.x), vec2<bool>(false, false)));
    var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(1000f - arg_0.a.x), u_input.a <= _wgslsmith_mod_i32(-1i, var_3.b.b.x), arg_0, _wgslsmith_dot_vec3_i32(-firstLeadingBit(var_3.b.b.zzx), ~(vec3<i32>(-2147483647i, -1i, 2147483647i) & var_3.b.b.wwz))), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, var_3.a.c.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, -587f), var_3.b.a.a)), arg_0.b, vec2<bool>(any(var_2.yx), true)), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(u_input.c.x, u_input.a, var_3.a.d, 6162i)), var_3.b.b), var_3.a.c), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(552f + arg_0.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(step(638f, 1455f)), _wgslsmith_f_op_f32(-var_3.a.a))), ~(arg_0.b & var_3.b.a.b), arg_0.c));
    return vec2<bool>(-2147483647i != u_input.c.x, any(var_0));
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> bool {
    let var_0 = arg_1;
    global0 = countOneBits(reverseBits(2679i));
    global0 = u_input.c.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1683f)))))))), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, -661f), vec2<f32>(992f, -431f))))), u_input.e.xwx, select(!func_2(Struct_1(vec2<f32>(arg_1, 368f), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_1(vec2<f32>(arg_1, -1044f), u_input.d, vec2<bool>(true, false)), true).x), vec2<bool>(-512f == arg_1, any(vec4<bool>(false, true, true, true))))), 0i);
    global0 = -10756i;
    return select(reverseBits(arg_0.a) >= -abs(_wgslsmith_sub_i32(var_1.d, u_input.a)), all(vec4<bool>(!all(vec4<bool>(var_1.c.c.x, false, var_1.b, false)), all(vec4<bool>(var_1.c.c.x, var_1.c.c.x, false, var_1.b)) && var_1.c.c.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) < 0u, true)), !any(var_1.c.c));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = select(vec3<i32>(~u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(~(-2147483647i), -u_input.a)) << (arg_1 % vec3<u32>(32u)), countOneBits(abs(vec3<i32>(min(16902i, 0i), -u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)))), func_1(Struct_5(1i), 651f));
    let var_1 = -2015i;
    var var_2 = vec4<bool>(false, func_1(Struct_5(_wgslsmith_mult_i32(1846i, max(-7738i, u_input.a))), -775f), any(vec3<bool>(true, arg_0, all(func_2(Struct_1(vec2<f32>(-197f, -2627f), vec3<u32>(5362u, 0u, 1u), vec2<bool>(true, true)), false)))), 95938i > _wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec2_i32(abs(var_0.yy), var_0.yz)));
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + -1000f))), 6184i < _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, var_0.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.a, 24680i, -12453i), vec4<i32>(2147483647i, 30294i, var_1, -2147483647i))), Struct_1(vec2<f32>(1326f, 2857f), ~select(vec3<u32>(1u, 56012u, 1u), vec3<u32>(10692u, 0u, u_input.b.x), vec3<bool>(true, true, var_2.x)), !select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x))), func_3(-var_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(123f, 637f) + vec2<f32>(559f, -1434f)), ~arg_1 ^ ~vec3<u32>(34150u, 51591u, arg_1.x), var_2.zx), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1, var_0.x, u_input.a) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, var_1, u_input.c.x, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, 0i, var_0.x), vec4<i32>(-1i, var_0.x, -24234i, var_0.x) | vec4<i32>(var_0.x, -21635i, var_0.x, u_input.a), ~vec4<i32>(var_1, u_input.a, 1i, -33934i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1007f, 792f)))), u_input.d, !(!vec2<bool>(var_2.x, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1061f, 1000f), vec2<f32>(-1337f, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(386f, -1000f), vec2<f32>(1096f, -580f)), true)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(657f)), -981f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.b.x) | u_input.e.zy, vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_add_u32(firstLeadingBit(4294967295u), select(arg_1.x, 4294967295u, true)), u_input.d.x), vec2<bool>(false, (1i & var_0.x) >= -2147483647i)));
    let var_4 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x ^ var_1, -u_input.c.x, ~var_3.b.b.x, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-27367i, -2147483647i, 25238i)))) & vec4<i32>(select(u_input.c.x & -21669i, -2147483647i, true), var_1, var_1, _wgslsmith_add_i32(~var_3.a.d, min(u_input.c.x, 1i))), vec4<i32>(-2147483647i, var_1, 0i, -2147483647i));
    return var_3.b;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_5 {
    let var_0 = Struct_3(-121f, arg_1.a.c.x & true, func_5(!(!func_5(false, u_input.d).a.c.x), ~arg_1.c.b).c, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(arg_1.b.wy), vec2<i32>(0i, u_input.a), ~u_input.c), max(arg_1.b.yw, vec2<i32>(u_input.a, 2147483647i) >> (u_input.b.zy % vec2<u32>(32u)))));
    let var_1 = var_0.c;
    global0 = _wgslsmith_sub_i32(abs(var_0.d), (_wgslsmith_add_i32(-1i, countOneBits(arg_1.b.x)) << (min(firstTrailingBit(0u), _wgslsmith_mult_u32(25172u, arg_0)) % 32u)) ^ var_0.d);
    global0 = -arg_1.b.x;
    let var_2 = arg_1.b.x ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.b.x, 2147483647i) & _wgslsmith_mod_i32(-2147483647i, -26853i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -8650i, 22700i, -23439i), vec4<i32>(14687i, 0i, 40951i, var_0.d)) ^ ~16963i), 1i);
    return Struct_5(_wgslsmith_sub_i32(abs(30783i), arg_1.b.x & 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(abs(~abs(u_input.e.x)), func_5(func_1(Struct_5(_wgslsmith_mult_i32(-2147483647i, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) + _wgslsmith_f_op_f32(-1000f * -1218f))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, 103648u, 14610u)), 4294967295u, u_input.d.x)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 10235u, u_input.b.x), vec3<u32>(1u, 1u, u_input.b.x)), ~(max(u_input.d, u_input.d) & abs(u_input.e.wyy))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f - -1856f) * 1f)))) + _wgslsmith_f_op_f32(round(2094f)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -941f)) * vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1614f, var_1)))))), vec2<f32>(340f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.e.x, vec4<i32>(-26970i, var_0.a, u_input.a, u_input.c.x), vec4<i32>(u_input.c.x, 1i, -1i, var_0.a), Struct_2(Struct_1(vec2<f32>(var_1, var_2.x), u_input.b, vec2<bool>(false, true)), vec4<i32>(15223i, u_input.c.x, 61643i, -1i), Struct_1(vec2<f32>(-132f, var_1), u_input.b, vec2<bool>(false, false)))))) + -894f), true & !(var_1 >= 535f), func_5(any(vec4<bool>(false, true, true, false)), vec3<u32>(91638u, min(9070u, u_input.e.x), 4294967295u)).c, _wgslsmith_mult_i32(func_5(func_1(var_0, 1126f), firstLeadingBit(u_input.b)).b.x, _wgslsmith_sub_i32(countOneBits(var_0.a), -8197i))), Struct_2(func_5(-var_0.a > 26177i, ~_wgslsmith_mod_vec3_u32(u_input.e.yxy, u_input.e.xzx)).c, firstLeadingBit(firstTrailingBit(select(vec4<i32>(1i, var_0.a, 1i, var_0.a), vec4<i32>(0i, var_0.a, var_0.a, 1i), false))), func_5(true, u_input.e.xxw).a), func_5(select(~58381u < select(0u, 12331u, true), all(vec3<bool>(false, false, false)), !(var_2.x >= 531f)), ~countOneBits(u_input.b)).a);
    let var_4 = var_0.a;
    var var_5 = vec4<bool>(var_3.a.b, var_3.a.c.c.x && false, var_3.b.c.c.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(4890i, ~var_4) << (45728u % 32u), 24721u, reverseBits(~var_3.b.b.ww & u_input.c), vec3<u32>(~12163u, ((u_input.d.x >> (var_3.c.b.x % 32u)) & min(1u, 4294967295u)) ^ ~u_input.e.x, 4294967295u), ~min(firstTrailingBit(~var_3.b.b), ~(~vec4<i32>(1079i, 0i, u_input.c.x, -42339i))));
}

