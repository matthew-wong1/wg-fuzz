struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    var var_0 = -1i;
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-u_input.b, u_input.a), -u_input.d.x), _wgslsmith_div_i32(firstLeadingBit(u_input.d.x), select(u_input.d.x, -1i, false)) >> (firstTrailingBit(~6470u) % 32u), -2147483647i), Struct_1(vec4<i32>(abs(-7247i >> (arg_3 % 32u)), abs(_wgslsmith_mult_i32(u_input.a.x, 19358i)), _wgslsmith_sub_i32(u_input.d.x ^ u_input.b.x, -16308i), 0i), -abs(-61909i), arg_1), u_input.a.xxw, -vec2<i32>(~(~2147483647i), ~u_input.a.x));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_1.d.x, var_1.d.x, var_1.b.a.x), u_input.b & u_input.b, _wgslsmith_add_vec4_i32(u_input.b, u_input.b)), -var_1.b.a.x, vec2<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(-1042f - arg_1.x))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, var_1.a.x, 15735i, -55696i), vec4<i32>(var_1.b.a.x, -59776i, var_1.c.x, var_1.b.a.x)) >> (~vec4<u32>(u_input.c, arg_3, 176u, 1u) % vec4<u32>(32u)), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), -firstLeadingBit(_wgslsmith_mod_i32(var_1.d.x, -27009i)), -1i, select(select(vec4<u32>(13653u, 4294967295u, u_input.c, u_input.e.x), vec4<u32>(5925u, arg_3, 1u, 3936u), vec4<bool>(true, true, true, true)) >> ((vec4<u32>(4294967295u, u_input.c, arg_3, 58131u) ^ vec4<u32>(u_input.c, arg_3, u_input.c, 43389u)) % vec4<u32>(32u)), vec4<u32>(1u, u_input.c, u_input.e.x, arg_3) & ~vec4<u32>(arg_3, u_input.e.x, arg_3, u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), vec4<u32>(~u_input.e.x, ~arg_3, 1u, 1u), Struct_2(var_1.b, var_1.b, var_1.a.x >> (~arg_3 % 32u), select(reverseBits(-7927i), -13385i, false), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, arg_3, 29165u, 8211u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.e.x, 4294967295u) ^ vec4<u32>(6087u, 63936u, 673u, arg_3), vec4<u32>(u_input.e.x, 4294967295u, arg_3, arg_3), ~vec4<u32>(u_input.c, 10626u, u_input.e.x, 63007u)))), var_1.b.c.x, firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, arg_3), vec4<u32>(33203u, arg_3, 0u, 4294967295u))) >> (reverseBits(firstLeadingBit(vec4<u32>(21504u, 9032u, 1u, arg_3))) % vec4<u32>(32u)));
    let var_3 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, var_2.a.b.a.x <= -5024i, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, false, true)), vec4<bool>(arg_3 < 1u, true, any(vec2<bool>(true, false)), true)), all(vec2<bool>(true, true)) || (38293i > ~var_2.c.a.a.x));
    var var_4 = var_2.a.e.xyz;
    return firstTrailingBit(0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = 1727f;
    let var_1 = max(vec4<u32>(77159u, 1u, ~func_3(arg_0, arg_0, vec3<f32>(-345f, 1000f, var_0), u_input.c), _wgslsmith_add_u32(arg_2, 56530u)), vec4<u32>(1u, u_input.c, min(4294967295u, firstLeadingBit(arg_2)), arg_2 << (u_input.e.x % 32u))) ^ ~(~vec4<u32>(42614u, 1880u, u_input.e.x, ~0u));
    let var_2 = arg_1.zx;
    let var_3 = Struct_4(vec3<i32>(countOneBits(-u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, 12140i), _wgslsmith_div_i32(u_input.a.x, 1i)), 2147483647i) << (~var_1.xxz % vec3<u32>(32u)), Struct_1(vec4<i32>(-23378i, reverseBits(23675i), firstLeadingBit(abs(12732i)), -2147483647i), -8522i, arg_0), -u_input.b.xxx, u_input.a.yw);
    var var_4 = -vec2<i32>(46990i, u_input.d.x);
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> i32 {
    let var_0 = countOneBits(vec3<u32>(u_input.e.x ^ ~countOneBits(u_input.e.x), 84978u, u_input.c));
    let var_1 = any(vec3<bool>(false, abs(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x)) != _wgslsmith_add_u32(u_input.c, func_3(vec2<f32>(-1149f, -170f), vec2<f32>(arg_0.b.c.x, -246f), vec3<f32>(1585f, 452f, -879f), u_input.c)), !(220f > _wgslsmith_f_op_f32(-arg_0.b.c.x))));
    let var_2 = select(!vec3<bool>(false, false, var_1), select(!select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, var_1)), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, var_1)), select(false, var_1, true)), select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, false), !vec3<bool>(false, false, var_1)), !select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1), var_1), _wgslsmith_f_op_f32(307f * -764f) >= _wgslsmith_f_op_f32(exp2(arg_0.b.c.x))), vec3<bool>(var_1 || var_1, 1i <= arg_0.b.b, true)), vec3<bool>(var_1, any(!vec4<bool>(true, var_1, false, var_1)), any(select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), vec2<bool>(var_1, true)))));
    let var_3 = Struct_4(reverseBits(arg_0.a), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1577f, 870f))))), var_2, 1u, any(vec4<bool>(true, all(vec4<bool>(false, false, var_1, var_2.x)), var_2.x, true))).b, arg_0.b.a.zyw, func_2(arg_0.b.c, var_2, _wgslsmith_clamp_u32(func_3(_wgslsmith_f_op_vec2_f32(arg_0.b.c + vec2<f32>(arg_0.b.c.x, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1295f, arg_0.b.c.x)), vec3<f32>(276f, arg_1, 2206f), ~u_input.c), var_0.x, 67496u & _wgslsmith_clamp_u32(29382u, 91848u, 11289u)), var_1).d);
    let var_4 = Struct_3(Struct_2(Struct_1(vec4<i32>(48196i, -9969i, 1i >> (0u % 32u), ~arg_0.b.b), -arg_0.a.x, _wgslsmith_f_op_vec2_f32(step(var_3.b.c, arg_0.b.c))), func_2(arg_0.b.c, vec3<bool>(true, any(var_2.xx), true), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(249u, var_0.x), vec2<u32>(53884u, 1479u), u_input.e.xy), vec2<u32>(var_0.x, 6888u)), var_1).b, _wgslsmith_sub_i32(-2147483647i, select(~52117i, -7130i, !var_2.x)), -42534i, firstTrailingBit(vec4<u32>(0u, abs(4294967295u), u_input.e.x, abs(0u)))), select(vec4<u32>(abs(select(1u, 4294967295u, true)), ~(187u | u_input.c), var_0.x, _wgslsmith_clamp_u32(var_0.x, 1u, var_0.x)), ~(~vec4<u32>(var_0.x, 29926u, var_0.x, u_input.e.x)), true), Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(max(-383f, arg_0.b.c.x)), -1364f), vec3<bool>(var_2.x, all(vec2<bool>(true, var_1)), all(var_2)), ~4294967295u, all(vec4<bool>(var_2.x, true, false, var_1))).b, Struct_1(~firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, arg_0.b.a.x, -8116i)), arg_0.a.x, arg_0.b.c), -1i, -1615i, firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(26114u, u_input.e.x, 3004u, u_input.c), max(vec4<u32>(43333u, 52432u, 36037u, 12956u), vec4<u32>(0u, var_0.x, 0u, 17284u)), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_3.b.c.x, ~(~vec4<u32>(countOneBits(8391u), 14904u, _wgslsmith_mod_u32(1u, var_0.x), ~var_0.x)));
    return func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.c) - vec2<f32>(-602f, 685f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4.a.b.c.x, var_3.b.c.x)))))))), var_2, u_input.c & ~(~(~u_input.c)), !var_2.x).b.b;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(u_input.b, _wgslsmith_mult_i32(_wgslsmith_sub_i32(func_4(func_2(vec2<f32>(260f, -1937f), vec3<bool>(true, true, false), 10869u, true), _wgslsmith_f_op_f32(round(-1000f))), -2147483647i), _wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -45600i, 1i, 8388i), vec4<i32>(u_input.d.x, 16054i, 2147483647i, u_input.d.x)), u_input.d.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(652f, -332f) - vec2<f32>(121f, -189f)))))));
    let var_1 = 1i;
    var var_2 = Struct_4(firstTrailingBit(vec3<i32>(var_1, firstLeadingBit(-var_1), -21428i)), Struct_1(vec4<i32>(select(i32(-1i) * -15615i, _wgslsmith_clamp_i32(-2348i, u_input.b.x, -2147483647i), true), firstTrailingBit(~(-46692i)), -2996i, ~(~u_input.a.x)), 0i, var_0.c), u_input.a.xzw ^ _wgslsmith_mod_vec3_i32(var_0.a.zyz, var_0.a.xyx), ~(~var_0.a.zy));
    var var_3 = Struct_3(Struct_2(Struct_1(~var_0.a, ~firstLeadingBit(-69616i), var_2.b.c), Struct_1(vec4<i32>(var_0.b, _wgslsmith_dot_vec3_i32(var_2.a, vec3<i32>(var_1, var_1, var_0.b)), -1i, _wgslsmith_mod_i32(u_input.b.x, u_input.d.x)), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(194f, 747f) * vec2<f32>(-692f, 807f)))), 0i, -1137i, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(44819u, 72878u, 1u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(3294u, u_input.c, u_input.c, 1u), vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, arg_0, u_input.c, 37587u), countOneBits(vec4<u32>(u_input.e.x, 12266u, u_input.e.x, u_input.e.x))), min(vec4<u32>(0u, arg_0, 0u, u_input.c), vec4<u32>(u_input.c, 4294967295u, arg_0, u_input.c)))), vec4<u32>(~u_input.c, max(_wgslsmith_add_u32(_wgslsmith_mult_u32(34993u, arg_0), 0u & arg_0), 1u), _wgslsmith_mod_u32(u_input.c, min(_wgslsmith_sub_u32(arg_0, arg_0), func_3(var_0.c, var_0.c, vec3<f32>(-651f, var_2.b.c.x, 1558f), 47442u))), 45798u), Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -22210i, -3625i, var_1), vec4<i32>(var_1, -27508i, var_0.b, 2147483647i)) & max(u_input.b, var_0.a), u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 129f)))), var_2.b, -abs(var_2.a.x) << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(var_2.b.a, -abs(u_input.b)), reverseBits(vec4<u32>(u_input.e.x, arg_0, u_input.c, 4294967295u) | vec4<u32>(1u, 1u, 1u, 1u))), -295f, select(~(firstTrailingBit(vec4<u32>(arg_0, 58716u, u_input.e.x, arg_0)) << (vec4<u32>(4294967295u, 7090u, u_input.e.x, 199u) % vec4<u32>(32u))), vec4<u32>(min(~arg_0, 1u), 1u, 28713u, _wgslsmith_add_u32(u_input.c, 13316u)), vec4<bool>(any(vec2<bool>(false, true)) && any(vec4<bool>(true, false, false, true)), true | select(false, false, false), (-11799i << (u_input.c % 32u)) <= 1i, all(vec4<bool>(false, false, true, false)))));
    var_3 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, 1000f)))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), arg_0, select(true, var_0.a.x < 74218i, u_input.c < 33876u)).b, func_2(vec2<f32>(1146f, _wgslsmith_f_op_f32(392f * var_2.b.c.x)), vec3<bool>(all(vec3<bool>(true, false, true)), var_3.c.e.x >= 57275u, all(vec3<bool>(false, false, true))), 30138u, false).b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.a.b, u_input.b.x, -1i), vec3<i32>(var_0.b, 1i, var_2.d.x))), var_0.b), -(~max(var_2.c.x, var_2.b.b)), firstLeadingBit(var_3.c.e) ^ ~var_3.a.e), var_3.b, Struct_2(var_3.a.b, func_2(_wgslsmith_f_op_vec2_f32(-var_2.b.c), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), max(u_input.c, 1u), !all(vec3<bool>(true, false, true))).b, ~(-2147483647i), 2147483647i, vec4<u32>(abs(4294967295u), ~_wgslsmith_mod_u32(var_3.e.x, u_input.e.x), u_input.e.x, 1u)), var_0.c.x, ~vec4<u32>(~min(36129u, var_3.b.x), _wgslsmith_mult_u32(u_input.e.x, ~arg_0), arg_0, arg_0));
    return var_3.a;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.a;
    let var_1 = func_2(vec2<f32>(func_1(13118u).b.c.x, 657f), vec3<bool>(true == (any(vec3<bool>(true, false, true)) || true), true, -105f < arg_0.a.c.x), ~countOneBits(4294967295u), false).b.a;
    let var_2 = arg_0;
    var var_3 = all(select(vec3<bool>(true, all(vec3<bool>(true, true, true)), select(false, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)))));
    var_3 = all(vec3<bool>(!any(vec3<bool>(true, true, true)), false, true));
    return Struct_1(_wgslsmith_mult_vec4_i32(var_2.a.a, -var_1), -1i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)) + _wgslsmith_f_op_f32(floor(var_2.b.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))))) + 380f);
    let var_1 = func_5(func_1(_wgslsmith_mult_u32(~firstLeadingBit(u_input.c), 47778u)));
    var_0 = _wgslsmith_f_op_f32(-var_1.c.x);
    let var_2 = 18101u;
    let var_3 = vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(func_3(var_1.c, var_1.c, vec3<f32>(-1270f, var_1.c.x, 381f), var_2) == _wgslsmith_clamp_u32(3600u, 66070u, u_input.c), all(vec2<bool>(true, true)), ~54067u >= _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(4294967295u, var_2, 19504u)), select(true, select(false, true, true), var_1.c.x < var_1.c.x))), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -min(vec2<i32>(2147483647i, 6994i), u_input.a.yw), vec2<i32>(max(u_input.b.x, min(2147483647i, 0i)), -37318i)), var_1.c.x, var_1.c);
}

