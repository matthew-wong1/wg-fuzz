struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(920f, 893f), vec2<f32>(489f, 194f))), vec2<f32>(218f, -158f)))))));
    let var_1 = 18710u ^ _wgslsmith_add_u32(0u, _wgslsmith_div_u32(arg_0, max(arg_0, arg_0) ^ arg_0));
    let var_2 = Struct_1(vec4<u32>(max(~arg_0, 1u), ~(arg_0 ^ 0u), _wgslsmith_mult_u32(countOneBits(108587u), 1u), _wgslsmith_mult_u32(0u, ~u_input.a)) & ~firstLeadingBit(vec4<u32>(4294967295u, arg_0, 11362u, var_1)), abs(vec2<u32>(arg_0, min(1u, var_1))), -1000f, ~abs(vec4<i32>(i32(-1i) * -42865i, max(-50950i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-25689i, 0i), vec2<i32>(55437i, 0i)), ~(-24114i))));
    var var_3 = max(-1i, var_2.d.x);
    var var_4 = var_2;
    return ~var_4.a;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(func_3(51275u), firstLeadingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, 20956u) << (vec2<u32>(u_input.a, 28819u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(94055u, u_input.a), vec2<u32>(u_input.a, u_input.a), false), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 30321u), vec2<u32>(1u, u_input.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1121f)))))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -30932i) >> (vec4<u32>(0u, 14157u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), ~(vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(1u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, true)), true))));
    let var_1 = false;
    var_0 = Struct_1(vec4<u32>(26328u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), var_0.b)), 4294967295u, u_input.a), ~(~var_0.a.xx ^ ~(~var_0.a.ww)), var_0.c, _wgslsmith_clamp_vec4_i32(var_0.d, _wgslsmith_mult_vec4_i32(min(var_0.d, vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x) & var_0.d), var_0.d), vec4<i32>(var_0.d.x ^ -var_0.d.x, -abs(11510i), i32(-1i) * -var_0.d.x, countOneBits(_wgslsmith_mult_i32(var_0.d.x, var_0.d.x)))));
    let var_2 = Struct_1(var_0.a, vec2<u32>(var_0.b.x, abs(select(var_0.b.x, firstLeadingBit(4294967295u), var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), -696f))))), -(~(var_0.d ^ (vec4<i32>(var_0.d.x, var_0.d.x, -2147483647i, var_0.d.x) | var_0.d))));
    var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(16862u, 1u, 0u)), max(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, 87224u, 46292u), var_2.a.wzw), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, var_0.a.x, var_2.b.x), vec3<u32>(94620u, var_0.b.x, var_2.b.x)))), u_input.a, ~_wgslsmith_add_u32(firstTrailingBit(51893u), u_input.a >> (u_input.a % 32u)), 68613u), vec2<u32>(u_input.a, select(_wgslsmith_div_u32(u_input.a, abs(11538u)), abs(var_2.a.x & 0u), true)), var_2.c, vec4<i32>(var_0.d.x, ~(~var_0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.x, -var_2.d.x, var_0.d.x, 1i), var_2.d), max(1i, var_0.d.x)));
    return min(select(vec4<i32>(reverseBits(0i), var_0.d.x, 13479i, firstLeadingBit(var_0.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, var_0.d.x), vec4<i32>(var_0.d.x, -2147483647i, var_2.d.x, 1i)), var_2.d), !select(false, false, var_1)) ^ vec4<i32>(~var_0.d.x, var_0.d.x ^ var_2.d.x, _wgslsmith_sub_i32(var_2.d.x, min(var_0.d.x, var_2.d.x)), _wgslsmith_div_i32(-20171i, 1i)), abs(_wgslsmith_add_vec4_i32(~max(vec4<i32>(var_2.d.x, -1i, var_2.d.x, var_0.d.x), var_2.d), _wgslsmith_sub_vec4_i32(-vec4<i32>(3265i, var_2.d.x, 51114i, var_0.d.x), var_0.d))));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1056f);
    var var_1 = Struct_1(~(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1146u, 17050u, 28130u)), select(vec4<u32>(5021u, u_input.a, 1u, u_input.a), vec4<u32>(1u, 4294967295u, 1u, u_input.a), true)) << (~(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 6430u)) % vec4<u32>(32u))), vec2<u32>(~1u, ~firstTrailingBit(~0u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(select(-252f, -1344f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) + 1212f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0))))))), -(~(-vec4<i32>(arg_0, arg_0, 24743i, arg_1) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 19189u), vec4<u32>(u_input.a, 44900u, u_input.a, 80787u)) % vec4<u32>(32u)))));
    var_1 = Struct_1(vec4<u32>(~reverseBits(~4294967295u), ~(~0u), _wgslsmith_dot_vec2_u32(var_1.b, func_3(countOneBits(19815u)).xy), _wgslsmith_mod_u32(1u, u_input.a)), var_1.b, _wgslsmith_f_op_f32(floor(var_1.c)), vec4<i32>(reverseBits(_wgslsmith_add_i32(-1i, -2147483647i)), _wgslsmith_sub_i32(1i, 49543i), func_2().x, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i)) << (~(~(~vec4<u32>(var_1.a.x, 11387u, u_input.a, 4294967295u))) % vec4<u32>(32u)));
    var var_2 = var_1.c;
    var var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), all(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), false), vec3<bool>(true, all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, true)))));
    return Struct_1(~abs(abs(var_1.a)), var_1.b, -944f, ~vec4<i32>(firstTrailingBit(arg_1), arg_0 & arg_1, -29727i, i32(-1i) * -48139i) | ~_wgslsmith_div_vec4_i32(firstLeadingBit(var_1.d), _wgslsmith_clamp_vec4_i32(var_1.d, var_1.d, var_1.d)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    let var_1 = arg_1;
    var var_2 = func_4(arg_1.d.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(247i) ^ -var_1.d.x, func_4(_wgslsmith_div_i32(2147483647i, var_1.d.x), 2147483647i).d.x), abs(37024i)));
    var_0 = false;
    var var_3 = func_4(_wgslsmith_mod_i32(var_1.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, var_2.d.x, 62345i), firstTrailingBit(var_1.d.xyy))) ^ _wgslsmith_mult_i32(countOneBits(-45552i), var_1.d.x), _wgslsmith_clamp_i32(var_1.d.x, var_1.d.x, -_wgslsmith_add_i32(var_1.d.x, var_1.d.x)));
    return var_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_1 {
    return func_5(_wgslsmith_f_op_f32(round(799f)), func_4(_wgslsmith_add_i32(~arg_1.x & 1i, ~(-1i)), select(~arg_1.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, arg_1.x, arg_1.x, 75004i), arg_1), func_2()), false)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(arg_1.a, func_4(42008i, firstLeadingBit(func_1(vec2<bool>(true, false), -arg_0, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), arg_1.a).d.x)).b, -857f, _wgslsmith_sub_vec4_i32(min(arg_0, arg_1.d), vec4<i32>(arg_0.x, arg_0.x, firstTrailingBit(firstTrailingBit(-1i)), ~abs(arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-569f, -773f, true)))), _wgslsmith_f_op_f32(abs(856f))))));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~8662u, func_4(1i, var_1.d.x).a.x), arg_1.a.x, 23233u, 29551u) ^ abs(~_wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(1u, var_0.a.x, var_1.b.x, 44744u))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.a.yzy, firstLeadingBit(var_1.a.wxz)), _wgslsmith_mult_u32(firstLeadingBit(u_input.a), ~var_0.b.x)), arg_1.c, -var_0.d);
    let var_4 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(select(var_1.b, var_1.a.zz, vec2<bool>(true, false)), vec2<u32>(1u, var_0.a.x)), ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.b, vec2<u32>(1u, 66357u), vec2<u32>(var_3.b.x, var_0.b.x)), vec2<u32>(0u, 60754u))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_1.a.x, abs(var_0.a.x)), ~(~4294967295u)), firstLeadingBit(vec2<u32>(func_4(-30305i, var_0.d.x).b.x, 38046u ^ var_0.a.x))));
    return Struct_1(var_3.a, max(~vec2<u32>(~var_3.a.x, ~var_4.x), var_3.a.wz), var_0.c, var_1.d);
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    return arg_0;
}

fn func_8(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = func_7(Struct_1(func_5(arg_2.c, Struct_1(vec4<u32>(1u, u_input.a, 87500u, 0u) << (vec4<u32>(0u, u_input.a, arg_2.b.x, arg_1) % vec4<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a), 358f, arg_2.d | arg_2.d)).a, arg_2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(f32(-1f) * -288f)))), arg_2.d), abs(arg_0.x) <= -1i, (func_7(Struct_1(arg_2.a, vec2<u32>(4294967295u, 1u), arg_3.x, vec4<i32>(0i, arg_2.d.x, 11085i, arg_2.d.x)), true, arg_2.b, true).a.zy ^ ~select(arg_2.b, arg_2.b, false)) | (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_1), vec2<u32>(4294967295u, 89930u), arg_2.b), vec2<u32>(0u, 0u)) >> (~_wgslsmith_clamp_vec2_u32(arg_2.a.zx, arg_2.b, arg_2.b) % vec2<u32>(32u))), any(vec4<bool>(true, true, false, all(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec4<i32>(arg_2.d.x, arg_0.x, arg_2.d.x, arg_0.x), vec3<bool>(false, false, false), arg_2.a).c + var_0.c) * arg_2.c))));
    let var_2 = 1u;
    let var_3 = abs(arg_2.d);
    var var_4 = _wgslsmith_sub_u32(~1u, ~arg_1);
    return Struct_1(var_0.a, arg_2.b, -1603f, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(min(reverseBits(vec2<i32>(-1i) * -vec2<i32>(-30078i, 8726i)), select(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), true)), ~(~min(~u_input.a, abs(u_input.a))), func_7(func_6(select(~vec4<i32>(-2619i, 0i, 1i, -1i), vec4<i32>(-28170i, 63442i, 6073i, -29285i), vec4<bool>(true, true, true, true)), func_1(vec2<bool>(true, true), -vec4<i32>(-9619i, 13458i, 81710i, -30431i), vec3<bool>(true, true, true), firstLeadingBit(vec4<u32>(0u, u_input.a, 65612u, 8118u)))), false, ~(~vec2<u32>(1u, u_input.a) | ~vec2<u32>(114481u, u_input.a)), all(vec4<bool>(select(false, false, false), true, all(vec2<bool>(true, false)), true))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-883f - -1623f), _wgslsmith_f_op_f32(trunc(-1000f)), -2685f)))));
    var var_1 = select(vec4<bool>(any(vec4<bool>(14633i < var_0.d.x, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.c <= var_0.c, select(true, true, false), 1656f >= var_0.c, true), vec4<bool>(true, all(vec2<bool>(true, true)), false, false)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, false), true)), all(vec3<bool>(true, true, true)));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 19969u), 4294967295u, ~_wgslsmith_dot_vec3_u32(func_5(var_0.c, var_0).a.wwz, ~var_0.a.zyy), u_input.a), vec2<u32>(u_input.a, func_4(2147483647i, 1i).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, 1098f))), reverseBits(func_5(_wgslsmith_f_op_f32(1006f * var_0.c), func_1(vec2<bool>(true, false), var_0.d, vec3<bool>(false, false, var_1.x), var_0.a)).d) << (~vec4<u32>(~var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -487f), var_2.c, var_2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-186f - -1239f), func_4(22083i, -41412i).c, _wgslsmith_f_op_f32(208f * var_2.c), -961f))));
    var var_4 = Struct_1(min(func_4(28195i, -1i).a, func_7(Struct_1(var_2.a, vec2<u32>(var_0.a.x, 5248u) ^ var_0.b, _wgslsmith_f_op_f32(-var_3.x), -var_2.d), var_1.x, ~vec2<u32>(0u, var_0.a.x), !(var_0.d.x >= -2147483647i)).a), func_6(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, var_2.d.x, var_2.d.x, var_0.d.x), ~vec4<i32>(var_0.d.x, var_2.d.x, var_2.d.x, 18167i)), func_5(-2414f, var_0)).b, _wgslsmith_f_op_f32(-var_2.c), vec4<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(31678i, -40773i, 47075i, var_0.d.x)), vec4<i32>(2147483647i, var_0.d.x, _wgslsmith_mult_i32(-544i, 40986i), _wgslsmith_sub_i32(0i, var_2.d.x))), -_wgslsmith_dot_vec3_i32(abs(var_0.d.wyz), vec3<i32>(0i, var_2.d.x, -41207i) << (vec3<u32>(0u, 4294967295u, 0u) % vec3<u32>(32u))), -var_2.d.x, 1i));
    var_1 = vec4<bool>(all(vec2<bool>(any(var_1.yxx) & var_1.x, true)), !var_1.x && true, true, !all(vec3<bool>(var_1.x, var_0.d.x <= -17111i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-1i, -var_4.d.x ^ (var_2.d.x << (var_4.b.x % 32u)), -(var_0.d.x & var_4.d.x), -47953i), var_4.a.zy, u_input.a, var_0.a.x, var_3.yxx);
}

