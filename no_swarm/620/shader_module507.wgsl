struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = Struct_4(select(!vec4<bool>(arg_3.b.c.x, 0i < arg_3.a.d, true, all(vec2<bool>(arg_2.a.c.x, arg_3.a.c.x))), vec4<bool>(arg_3.b.c.x, false, arg_2.b.c.x, all(!vec4<bool>(arg_1.x, arg_2.a.c.x, arg_2.a.c.x, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_1.x, arg_1.x), !arg_2.b.c.x), !(!vec4<bool>(false, arg_1.x, true, false)), all(vec4<bool>(arg_1.x, true, arg_2.b.c.x, true)))), arg_2.b.b, arg_2, Struct_3(arg_2.a, arg_2.a), Struct_2(abs(arg_0.a) | _wgslsmith_clamp_vec2_i32(~arg_0.a, ~arg_0.a, countOneBits(vec2<i32>(17007i, -14845i)))));
    var_0 = Struct_4(var_0.a, min(1u ^ abs(arg_2.b.b << (u_input.e % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, min(u_input.d, arg_2.a.b)), var_0.d.b.a.xx)), var_0.c, Struct_3(Struct_1(vec3<u32>(_wgslsmith_mult_u32(1u, 5772u), var_0.b, arg_2.b.a.x), min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.c.b.a.x, arg_2.b.a.x), vec4<u32>(11938u, 1u, 8650u, arg_3.b.a.x)), 1u), arg_1, max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.d, u_input.c, 1i, arg_0.a.x), vec4<i32>(-1i, var_0.d.a.d, 1i, -1i)), _wgslsmith_mod_i32(2147483647i, arg_2.a.d))), var_0.d.a), Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(arg_2.a.d, 2147483647i, 1i)), max(vec3<i32>(0i, 0i, arg_0.a.x), vec3<i32>(arg_0.a.x, 2427i, -49784i))), -19830i)));
    var_0 = Struct_4(select(!vec4<bool>(any(vec4<bool>(true, arg_3.b.c.x, true, false)), false, select(true, arg_2.a.c.x, true), true), select(var_0.a, select(!var_0.a, var_0.a, vec4<bool>(true, false, true, var_0.d.a.c.x)), all(select(vec4<bool>(true, arg_3.b.c.x, arg_2.a.c.x, arg_2.b.c.x), vec4<bool>(false, arg_2.a.c.x, arg_3.b.c.x, true), var_0.a))), !arg_3.b.c.x), reverseBits(~(~u_input.d ^ 12812u)), Struct_3(arg_2.a, var_0.d.a), arg_2, arg_0);
    let var_1 = arg_2.b.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1853f, 351f, -1855f)))))))), vec3<f32>(-289f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_div_f32(-1740f, 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-310f)) - -219f), _wgslsmith_f_op_f32(step(-3159f, -691f)))))));
    return true;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.d), vec3<u32>(u_input.d, 62638u, 14944u)) ^ ~vec3<u32>(4294967295u, 0u, 4294967295u)) >> (vec3<u32>(firstLeadingBit(u_input.d), 14018u, abs(u_input.b.x)) % vec3<u32>(32u)), 2967u, vec3<bool>(4294967295u > u_input.e, true | any(vec3<bool>(true, false, false)), func_3(Struct_2(vec2<i32>(u_input.c, u_input.c)), vec3<bool>(true, false, false), Struct_3(Struct_1(vec3<u32>(u_input.b.x, 31733u, u_input.a), 4294967295u, vec3<bool>(false, true, true), 10398i), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.d), u_input.d, vec3<bool>(false, true, true), -13731i)), Struct_3(Struct_1(vec3<u32>(u_input.b.x, 87283u, u_input.d), u_input.d, vec3<bool>(false, true, false), u_input.c), Struct_1(vec3<u32>(4294967295u, 4294967295u, 11813u), u_input.a, vec3<bool>(true, false, false), -1i)))), abs(-1i)), Struct_1(~firstLeadingBit(vec3<u32>(u_input.d, u_input.b.x, 30352u)), _wgslsmith_clamp_u32(0u, u_input.a, ~8435u), vec3<bool>(!all(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, false)) | false, !(u_input.c >= 19699i)), ~u_input.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(910f, -416f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(148f, arg_0), vec2<f32>(arg_0, 1802f), var_0.b.c.x)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(382f, 1400f) - vec2<f32>(1598f, arg_0)))), vec2<f32>(-170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-280f, var_1.x), vec2<f32>(arg_0, var_1.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, -594f) + vec2<f32>(-399f, 186f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_1.x) - vec2<f32>(var_1.x, 460f)) + vec2<f32>(var_1.x, var_1.x)))), true)));
    var var_2 = var_0.b.c.xx;
    let var_3 = var_0.b.c.zy;
    return var_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1093f + 2150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1476f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f - -1005f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, -1797f, 619f)))))));
    var var_1 = _wgslsmith_clamp_i32(16692i, arg_0, ~(-arg_0));
    let var_2 = _wgslsmith_f_op_f32(select(1357f, 1673f, all(!vec3<bool>(true, arg_1.b.c.x, false && arg_1.a.c.x))));
    var_1 = -1i & _wgslsmith_div_i32(firstTrailingBit(min(-25245i, -45347i)), -2147483647i);
    var var_3 = abs(firstLeadingBit(-vec3<i32>(-42956i, 0i, arg_1.a.d))) ^ ~(~(-(vec3<i32>(u_input.c, arg_1.a.d, 2147483647i) | vec3<i32>(arg_0, 0i, -65232i))));
    return _wgslsmith_mod_i32(47223i, _wgslsmith_sub_i32(arg_0, countOneBits(arg_0 & u_input.c)) ^ reverseBits(var_3.x));
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = -2147483647i;
    var_0 = -1i;
    var_0 = i32(-1i) * -func_4(1i, Struct_3(func_2(-382f), func_2(-1027f)));
    var var_1 = _wgslsmith_dot_vec4_i32(min(countOneBits(reverseBits(vec4<i32>(1246i, -8348i, u_input.c, arg_0))), vec4<i32>(0i, -u_input.c, ~(-1311i), firstLeadingBit(u_input.c))) ^ vec4<i32>(u_input.c, -17556i, -10965i, 2147483647i), vec4<i32>(-_wgslsmith_sub_i32(-u_input.c, func_4(-797i, Struct_3(Struct_1(vec3<u32>(0u, u_input.a, 0u), 31598u, vec3<bool>(arg_1, true, arg_1), -27884i), Struct_1(vec3<u32>(u_input.e, u_input.b.x, u_input.b.x), u_input.a, vec3<bool>(arg_1, arg_1, arg_1), -9052i)))), _wgslsmith_sub_i32(~0i, abs(u_input.c) ^ min(u_input.c, arg_0)), 2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-8283i, arg_0, arg_0, -59634i), vec4<i32>(-1i, 1i, arg_0, 48524i))), _wgslsmith_sub_i32(-arg_0, arg_0))));
    var_1 = 3293i;
    return func_4(~arg_0, Struct_3(func_2(_wgslsmith_f_op_f32(trunc(862f))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -458f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4037u;
    let var_1 = false;
    let var_2 = ~var_0 << (30868u % 32u);
    let var_3 = func_1(reverseBits(~8217i ^ _wgslsmith_sub_i32(u_input.c, 2147483647i)), !var_1) <= select(max(48508i, u_input.c), 2147483647i, var_1);
    let var_4 = Struct_3(Struct_1(select(~vec3<u32>(4294967295u, var_2, 1u), vec3<u32>(var_0 << (28739u % 32u), ~var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(16578u, 17717u, u_input.e), vec3<u32>(92132u, u_input.b.x, u_input.e))), vec3<bool>(var_3, select(true, true, false), select(var_3, var_1, var_1))), ~1u, select(vec3<bool>(var_3, u_input.a > 15866u, var_3 && var_3), vec3<bool>(true, var_1, var_3), vec3<bool>(true, all(vec3<bool>(var_3, var_3, var_1)), true)), 1i), Struct_1(vec3<u32>(_wgslsmith_div_u32(~0u, 42297u), ~firstTrailingBit(103205u), countOneBits(1u)), countOneBits(~var_0), vec3<bool>(any(select(vec3<bool>(var_1, var_1, var_3), vec3<bool>(true, false, var_3), vec3<bool>(var_1, false, false))), any(vec3<bool>(false, var_1, true)), !var_1), firstTrailingBit(reverseBits(u_input.c & u_input.c))));
    var var_5 = vec4<i32>(2147483647i, -30816i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-4723i, u_input.c), ~vec2<i32>(var_4.a.d, -14810i)), ~vec2<i32>(-7838i, abs(u_input.c))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(60173u), vec4<i32>(0i, func_4(1i, Struct_3(Struct_1(var_4.a.a, var_4.a.b, var_4.b.c, var_4.b.d), Struct_1(var_4.b.a, var_2, var_4.a.c, 7915i))), 14648i, _wgslsmith_mod_i32(abs(-25266i), var_4.b.d)) >> (max(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_4.a.a.x, u_input.b.x, var_2), vec4<u32>(var_2, u_input.a, 53367u, var_2)), abs(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, u_input.b.x))), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_add_u32(5514u, u_input.e), firstLeadingBit(40390u), ~31913u)) % vec4<u32>(32u)), ~(~(~u_input.b.x)));
}

