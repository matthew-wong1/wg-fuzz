struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    let var_0 = ~119161u;
    var var_1 = ~vec4<i32>(-2147483647i, -abs(min(arg_2.x, u_input.a)), -2147483647i, min(-2147483647i, arg_2.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(106f - _wgslsmith_f_op_f32(floor(arg_0.x))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1515f, arg_0.x, false)), arg_1)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1100f)));
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(arg_2.zy), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, arg_2.x), var_1.zx), -arg_3)), vec2<i32>(i32(-1i) * -19466i, select(min(1i, -8874i), -45733i, var_2))), Struct_1(~max(vec2<u32>(0u, var_0), ~vec2<u32>(var_0, 1u))));
    var_3 = Struct_2(arg_2.x, Struct_1(_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_3.b.a.x, 0u)), countOneBits(_wgslsmith_clamp_vec2_u32(var_3.b.a, var_3.b.a, vec2<u32>(var_0, var_3.b.a.x))))));
    return countOneBits(_wgslsmith_add_u32(var_3.b.a.x, var_0));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(32968u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))));
    var var_1 = ~max(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(52223u, var_0.a.x) >> (_wgslsmith_sub_u32(var_0.a.x, var_0.a.x) % 32u)), 28460u);
    var_0 = Struct_1(~var_0.a);
    var var_2 = !select(!(!(!vec4<bool>(false, arg_1, arg_1, false))), vec4<bool>(true, true, true, !(u_input.a < u_input.a)), !select(vec4<bool>(true, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false)), true));
    var_0 = Struct_1(var_0.a >> (firstLeadingBit(vec2<u32>(1u, var_0.a.x) ^ countOneBits(var_0.a)) % vec2<u32>(32u)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~(~74972u), ~(var_0.a.x | var_0.a.x) >> (~(~var_0.a.x) % 32u), 129591u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a.x, select(29586u, 1u, var_2.x)), abs(min(vec3<u32>(37923u, var_0.a.x, var_0.a.x), vec3<u32>(7424u, var_0.a.x, 4294967295u))))), vec4<u32>(firstLeadingBit(41789u), ~countOneBits(32940u), var_0.a.x, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a)), ~0u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(arg_0.x, true && (-u_input.a > _wgslsmith_div_i32(-2404i, u_input.a)), any(vec3<bool>(arg_0.x & arg_0.x, arg_0.x && arg_0.x, arg_0.x)), true), !arg_0, select(true, false, all(select(!arg_0.zyy, !arg_0.ywz, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))));
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(544f - -532f);
    var var_2 = 1u;
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -378i) | vec2<i32>(-63512i, u_input.a), -vec2<i32>(u_input.a, u_input.a)) << (vec2<u32>(0u | arg_1.x, 1u) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_mod_i32(1i, u_input.a), -1i)), Struct_1((vec2<u32>(arg_1.x, arg_1.x) & vec2<u32>(4294967295u, 49708u)) << (_wgslsmith_add_vec2_u32(arg_1.yw, _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(4294967295u, arg_1.x))) % vec2<u32>(32u))));
    return Struct_2(max(0i, _wgslsmith_dot_vec3_i32((vec3<i32>(2147483647i, u_input.a, var_3.a) << (arg_1.xwz % vec3<u32>(32u))) << (min(vec3<u32>(37602u, 1u, 15871u), vec3<u32>(arg_1.x, 8649u, arg_1.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(31325i, u_input.a, u_input.a), vec3<i32>(2147483647i, var_3.a, var_3.a)), abs(vec3<i32>(-1i, u_input.a, 77348i))))), var_3.b);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_4(!(!vec4<bool>(all(vec4<bool>(arg_3.x, false, true, false)), arg_3.x, !arg_3.x, arg_1.x > arg_1.x)), ~vec4<u32>(min(firstLeadingBit(7812u), firstTrailingBit(arg_0.a.a.x)), _wgslsmith_mod_u32(func_2(vec2<f32>(-825f, -911f), arg_1.x, vec3<i32>(-2147483647i, 38568i, 43734i), 1i), ~0u), firstLeadingBit(arg_0.a.a.x), ~func_3(vec4<f32>(-440f, arg_1.x, -1648f, arg_1.x), false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zz * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, -2570f), vec2<f32>(arg_1.x, arg_1.x), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(875f, arg_1.x)))))) + _wgslsmith_f_op_vec2_f32(step(arg_1.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2068f, arg_1.x) * vec2<f32>(arg_1.x, arg_1.x)) * vec2<f32>(-371f, arg_1.x))))));
    let var_2 = var_0.b.a;
    let var_3 = select(false, true, false);
    let var_4 = ~(~var_0.b.a);
    return var_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(true, all(vec3<bool>(true, true, true)), false)), !(4347u < _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.b.a.x, 41661u, arg_1.b.a.x)), min(vec3<u32>(4294967295u, 38091u, arg_1.b.a.x), vec3<u32>(arg_1.b.a.x, arg_1.b.a.x, 1u)))));
    let var_1 = ~(vec3<i32>(6611i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, arg_1.a), vec4<i32>(21204i, -10665i, -25927i, 30673i)), arg_1.a) & select(min(firstTrailingBit(vec3<i32>(-1i, 26406i, 1i)), firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, arg_1.a))), max(-vec3<i32>(arg_1.a, u_input.a, 35948i), select(vec3<i32>(arg_1.a, -84i, arg_1.a), vec3<i32>(9047i, 9945i, arg_1.a), var_0)), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, false, var_0.x), select(var_0, var_0, vec3<bool>(false, var_0.x, var_0.x)))));
    let var_2 = arg_1.b;
    let var_3 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(0u, 23700u), 1u, firstLeadingBit(arg_1.b.a.x)) ^ abs(vec3<u32>(var_2.a.x, 1u, 4294967295u))), vec3<u32>(firstLeadingBit(41391u), var_2.a.x, countOneBits(24906u)));
    var var_4 = _wgslsmith_mod_vec4_u32(max(reverseBits(vec4<u32>(19893u, 113932u, var_3.x, var_3.x) >> (vec4<u32>(arg_1.b.a.x, arg_1.b.a.x, 1u, var_2.a.x) % vec4<u32>(32u))) ^ ~(vec4<u32>(arg_1.b.a.x, 4294967295u, 1u, 24127u) | vec4<u32>(4632u, 0u, 1u, 1u)), abs(~(~vec4<u32>(5635u, var_3.x, 0u, arg_1.b.a.x)))), vec4<u32>(func_2(arg_0.xy, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_clamp_vec3_i32(~var_1, _wgslsmith_div_vec3_i32(var_1, var_1), var_1 & vec3<i32>(1i, -72686i, -555i)), func_1(Struct_3(Struct_1(var_3.yy)), arg_0, -var_1.xz, var_0.zy).a), 36396u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(arg_1.b.a), ~vec2<u32>(26213u, arg_1.b.a.x)), (vec2<u32>(4294967295u, 4294967295u) ^ arg_1.b.a) & max(vec2<u32>(19055u, 27506u), vec2<u32>(var_2.a.x, 1u))), 4294967295u));
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = -648f;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(2147483647i, max(arg_3.a, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_3.a, 11598i), _wgslsmith_sub_i32(u_input.a, -6174i)))), -2593i, 11327i);
    var_1 = vec3<i32>(-1i, u_input.a, 2147483647i);
    let var_2 = Struct_1(arg_1.b.a);
    var_1 = vec3<i32>(select(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(5066i, arg_3.a), var_1.x << (arg_1.b.a.x % 32u))), 1i, true), arg_1.a, ~_wgslsmith_sub_i32(firstLeadingBit(1i), arg_1.a));
    return Struct_3(Struct_1(arg_1.b.a));
}

fn func_7(arg_0: Struct_3) -> Struct_3 {
    let var_0 = ~firstTrailingBit(select(~(~vec4<u32>(30995u, 16028u, arg_0.a.a.x, 4294967295u)), ~(vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, 1u, 1u) & vec4<u32>(arg_0.a.a.x, 5177u, 1u, arg_0.a.a.x)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))));
    let var_1 = select(vec4<bool>(true, true, true, true), select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), false), !vec4<bool>(true, true, false, all(vec3<bool>(false, false, true))), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), vec4<bool>(!any(vec3<bool>(true, true, true)), true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)))));
    var var_2 = !var_1.x & (true & var_1.x);
    var_2 = true;
    let var_3 = var_1.x | all(var_1);
    return arg_0;
}

fn func_8(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = arg_1.x;
    let var_1 = vec4<bool>(!(true | all(vec2<bool>(true, true))), false, false, !any(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_2(0i, func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1002f)))), Struct_2(var_0, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, -1448f, -1731f) - vec3<f32>(-1530f, -1233f, 858f)), func_5(vec3<f32>(1273f, 824f, 617f), Struct_2(arg_1.x, Struct_1(arg_3)))).b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 899f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -567f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(277f, -170f) + vec2<f32>(-1354f, -2189f)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1018f, -749f, 1109f))), Struct_2(_wgslsmith_mult_i32(var_0, arg_1.x), func_6(1117f, Struct_2(var_0, Struct_1(vec2<u32>(arg_0.a.a.x, 4294967295u))), vec2<f32>(439f, 809f), Struct_2(9559i, arg_0.a)).a))).a);
    var var_3 = arg_0.a;
    let var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(~(-8593i)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1000f, -235f), vec3<f32>(-1592f, -913f, 626f), vec3<bool>(var_1.x, var_1.x, false)))), func_1(Struct_3(var_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 528f, -904f)), ~vec2<i32>(0i, 0i), vec2<bool>(true, var_1.x))).a, max(_wgslsmith_div_i32(var_0, arg_1.x), arg_1.x), ~min(func_4(vec4<bool>(true, var_1.x, true, true), vec4<u32>(23032u, 29730u, var_2.b.a.x, arg_3.x)).a, u_input.a)), countOneBits(select(vec4<i32>(arg_1.x, u_input.a, ~1i, var_2.a), select(vec4<i32>(arg_1.x, -1i, -1i, -2147483647i), reverseBits(vec4<i32>(var_2.a, -28283i, var_0, var_0)), var_1.x), any(!var_1.xx))));
    return StorageBuffer(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1025f + -1050f))), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - -1474f) * _wgslsmith_f_op_f32(802f + 343f)))) - _wgslsmith_f_op_f32(max(132f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -371f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(func_7(func_6(-2166f, Struct_2(1i, Struct_1(vec2<u32>(4294967295u, 2740u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, 1477f)), func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-822f, 436f, -1987f))), func_1(Struct_3(Struct_1(vec2<u32>(40770u, 4294967295u))), vec3<f32>(1208f, -1000f, -1553f), vec2<i32>(13136i, 1134i), vec2<bool>(true, false))))), -countOneBits(vec2<i32>(-45840i, u_input.a) ^ vec2<i32>(1784i, u_input.a)), ~(~func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1343f, 450f, 112f) * vec3<f32>(349f, 1121f, -1000f)), Struct_2(37628i, Struct_1(vec2<u32>(49099u, 4294967295u)))).b.a), reverseBits(vec2<u32>(~(~28800u), func_6(_wgslsmith_f_op_f32(f32(-1f) * -339f), func_1(Struct_3(Struct_1(vec2<u32>(43826u, 4294967295u))), vec3<f32>(-176f, 425f, 1100f), vec2<i32>(-4076i, 20970i), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1179f, -1065f) * vec2<f32>(-530f, -865f)), Struct_2(u_input.a, Struct_1(vec2<u32>(0u, 4294967295u)))).a.a.x)));
}

