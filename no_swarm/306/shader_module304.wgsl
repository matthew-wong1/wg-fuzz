struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-17725i, -8960i, 18674i, -1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> i32 {
    global0 = vec4<i32>((u_input.a & -4343i) >> (abs(10002u) % 32u), arg_0.a.x, ~abs(reverseBits(min(arg_0.d, -6421i))), u_input.a);
    let var_0 = Struct_2(vec2<u32>(63469u & arg_0.b, arg_2 | reverseBits(reverseBits(arg_2))), Struct_1(arg_0.a, 124529u, ((12704i ^ arg_0.d) | 11185i) <= 1i, ~global0.x), vec2<u32>(49323u, _wgslsmith_mult_u32(43718u, 35113u)) >> ((abs(vec2<u32>(1u, 1u)) & vec2<u32>(~94887u, firstTrailingBit(1u))) % vec2<u32>(32u)), vec4<u32>(1u, arg_2, ~abs(~4294967295u), firstTrailingBit(abs(8943u))), Struct_1(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.x), vec2<i32>(arg_0.a.x, arg_0.d)), -1i, 1i) >> ((reverseBits(vec4<u32>(arg_0.b, 10926u, arg_0.b, arg_0.b)) ^ min(vec4<u32>(1u, arg_0.b, 4294967295u, arg_0.b), vec4<u32>(arg_2, 11161u, arg_2, arg_0.b))) % vec4<u32>(32u)), select(33161u, arg_0.b >> ((arg_2 & 1u) % 32u), _wgslsmith_mod_i32(global0.x, 2147483647i) > 1i), true, _wgslsmith_add_i32(u_input.a, 2147483647i)));
    let var_1 = arg_0;
    let var_2 = var_0;
    var var_3 = var_0.e.c;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-var_1.d, var_1.d, -(var_1.d >> (var_2.c.x % 32u)), (i32(-1i) * -2147483647i) >> (0u % 32u)), vec4<i32>(4110i >> (_wgslsmith_add_u32(arg_0.b, 1u) % 32u), 2435i, arg_0.a.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(global0.x)))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.b.d, var_2.b.d), _wgslsmith_mult_i32(-global0.x, arg_0.d), ~global0.x & global0.x, _wgslsmith_sub_i32(firstLeadingBit(var_0.e.a.x), ~u_input.a)), var_0.b.a));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = vec4<i32>(-1i, -1i, _wgslsmith_mult_i32(18196i, ~countOneBits(func_3(Struct_1(vec4<i32>(u_input.a, -1i, arg_0, 1i), 60871u, true, arg_0), vec3<bool>(true, false, true), 35340u, false))), u_input.a);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f), 391f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1507f, -1079f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2083f))))));
    global0 = ~_wgslsmith_mult_vec4_i32(~max(vec4<i32>(global0.x, 5244i, arg_0, arg_0), vec4<i32>(28815i, u_input.a, u_input.a, 0i)), vec4<i32>(-_wgslsmith_mult_i32(0i, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.yy, global0.wy), vec2<i32>(-17415i, u_input.a) ^ vec2<i32>(1i, -1i)), 7538i, _wgslsmith_sub_i32(~(-2147483647i), min(u_input.a, -2147483647i))));
    global0 = firstTrailingBit(reverseBits((_wgslsmith_clamp_vec4_i32(vec4<i32>(26466i, 2147483647i, -50500i, arg_0), vec4<i32>(1i, global0.x, -19763i, -1i), vec4<i32>(global0.x, 1i, global0.x, -9266i)) ^ abs(vec4<i32>(-1221i, 1i, global0.x, 2147483647i))) | max(min(vec4<i32>(global0.x, arg_0, u_input.a, u_input.a), vec4<i32>(1i, arg_0, u_input.a, -33153i)), ~vec4<i32>(arg_0, u_input.a, u_input.a, u_input.a))));
    let var_1 = Struct_1(vec4<i32>(0i, _wgslsmith_add_i32(2147483647i, global0.x), u_input.a >> (~1u % 32u), global0.x), firstTrailingBit(1u), _wgslsmith_clamp_i32(global0.x, u_input.a, -(~global0.x)) < ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(u_input.a, -16440i)), u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(abs(vec4<i32>(1i, u_input.a, -2147483647i, global0.x)), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(27795u, 0u, 1u, 56415u) % vec4<u32>(32u))), vec4<i32>(-12535i, reverseBits(23079i), -1i, _wgslsmith_add_i32(2147483647i, u_input.a))), vec4<i32>(-global0.x, 0i, max(arg_0, ~arg_0), -69341i)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    return Struct_2(min(arg_2.zx, max(arg_2.yz, _wgslsmith_sub_vec2_u32(~arg_2.wz, _wgslsmith_div_vec2_u32(arg_2.yy, vec2<u32>(arg_3, 42726u))))), func_2(func_3(arg_0, vec3<bool>(false, true, any(vec4<bool>(arg_0.c, arg_1, true, false))), ~arg_0.b, false)), vec2<u32>(max(arg_0.b, arg_2.x), ~(~arg_2.x)) << (~vec2<u32>(arg_0.b, _wgslsmith_sub_u32(56062u, arg_3)) % vec2<u32>(32u)), ~(~arg_2), arg_0);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = ~arg_1.e.a;
    global0 = -(vec4<i32>(_wgslsmith_add_i32(global0.x, 1i), _wgslsmith_div_i32(31630i, global0.x), _wgslsmith_div_i32(global0.x, 2147483647i), u_input.a) ^ -firstTrailingBit(vec4<i32>(-17964i, -13643i, 1i, u_input.a))) ^ ~arg_1.e.a;
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, func_4(Struct_1(_wgslsmith_clamp_vec4_i32(arg_1.e.a, arg_1.b.a, arg_1.b.a), 13162u, true, 1i), all(vec2<bool>(arg_1.e.c, true)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.d, arg_1.d), abs(vec4<u32>(1u, 39929u, arg_1.c.x, 54605u))), firstLeadingBit(1u)).e.a.x, ~u_input.a), firstTrailingBit(~abs(vec4<i32>(u_input.a, 20028i, global0.x, global0.x)) >> (~(~arg_1.d) % vec4<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1202f, 403f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1444f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f))));
    return Struct_1(arg_1.e.a, ~abs(~1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(785f)), _wgslsmith_f_op_f32(ceil(693f))), _wgslsmith_f_op_f32(f32(-1f) * -1357f))) != var_0.x, 81928i ^ func_3(arg_1.b, !select(vec3<bool>(arg_1.b.c, true, arg_1.e.c), vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_1.b.c, true)), _wgslsmith_div_u32(~arg_1.a.x, 1u), _wgslsmith_f_op_f32(floor(-1000f)) < 470f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    global0 = -(~(-(~arg_1.b.a) << (firstLeadingBit(arg_0.d) % vec4<u32>(32u))));
    let var_0 = arg_0;
    global0 = reverseBits(reverseBits(~(~var_0.e.a)) | vec4<i32>(_wgslsmith_add_i32(u_input.a, arg_3.b.d), _wgslsmith_add_i32(-u_input.a, _wgslsmith_clamp_i32(var_0.b.a.x, global0.x, var_0.e.a.x)), -2147483647i, -1i));
    let var_1 = arg_3.b;
    global0 = vec4<i32>(~(i32(-1i) * -11498i), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, arg_1.b.a.x, u_input.a), arg_0.e.a.wzw, arg_1.e.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b.d, 61826i, var_0.b.a.x), arg_1.e.a.zxw, var_1.a.xxy)), ~_wgslsmith_div_i32(reverseBits(global0.x), 76123i)), global0.x, ~2147483647i);
    return func_5(true != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)) > _wgslsmith_f_op_f32(-1043f - _wgslsmith_f_op_f32(-arg_2.x))), func_4(func_2(_wgslsmith_sub_i32(-arg_3.b.d, arg_3.e.a.x | arg_3.b.d)), false, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(21962u, 21820u, 1u, 1u), _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(20445u, 8650u, 4294967295u, arg_3.c.x)))), 1u));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.d;
    var var_1 = vec2<u32>(arg_0.x, var_0.x);
    var var_2 = all(vec4<bool>(func_1(func_4(arg_3, arg_1.b.c | arg_1.b.c, vec4<u32>(4294967295u, 4294967295u, 79626u, 1u), ~0u), arg_2, vec4<f32>(_wgslsmith_f_op_f32(floor(-191f)), _wgslsmith_f_op_f32(round(456f)), -1000f, 1f), func_4(Struct_1(vec4<i32>(-1i, 43924i, u_input.a, arg_2.e.d), 0u, arg_2.e.c, -428i), arg_3.c, var_0, _wgslsmith_mod_u32(19058u, 4294967295u))).c, arg_1.b.c, func_2(7748i).c, arg_1.b.c));
    global0 = arg_1.e.a;
    var var_3 = all(select(vec3<bool>(false, arg_1.b.c, arg_1.e.c), select(vec3<bool>(func_2(u_input.a).c, func_2(-28452i).c, false), !vec3<bool>(false, true, arg_1.b.c), arg_3.c), arg_2.e.c));
    return _wgslsmith_f_op_f32(-1159f - -849f);
}

fn func_7(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = -u_input.a;
    let var_1 = func_4(func_5(select(false, firstTrailingBit(6051u) >= func_2(global0.x).b, any(vec2<bool>(true, true))), func_4(Struct_1(max(vec4<i32>(global0.x, 2147483647i, 54769i, u_input.a), vec4<i32>(17886i, -43240i, u_input.a, 1i)), func_2(-2147483647i).b, all(vec2<bool>(true, false)), -global0.x), true, vec4<u32>(1u, 1u, 1u, 1u), ~firstTrailingBit(92853u))), (!func_1(Struct_2(vec2<u32>(9113u, 18332u), Struct_1(vec4<i32>(u_input.a, 31059i, global0.x, global0.x), 1u, false, global0.x), vec2<u32>(0u, 8438u), vec4<u32>(43365u, 22155u, 46591u, 63445u), Struct_1(vec4<i32>(-2147483647i, global0.x, -45434i, -6638i), 56729u, false, global0.x)), Struct_2(vec2<u32>(0u, 6310u), Struct_1(vec4<i32>(global0.x, -1i, global0.x, -1i), 4294967295u, true, 2147483647i), vec2<u32>(311u, 1u), vec4<u32>(53886u, 33009u, 1u, 3974u), Struct_1(vec4<i32>(0i, 32791i, global0.x, u_input.a), 15813u, true, global0.x)), vec4<f32>(591f, arg_0.x, arg_0.x, arg_0.x), Struct_2(vec2<u32>(26306u, 0u), Struct_1(vec4<i32>(3963i, global0.x, u_input.a, u_input.a), 1u, false, -1i), vec2<u32>(1u, 0u), vec4<u32>(14195u, 52835u, 4294967295u, 1u), Struct_1(vec4<i32>(-41523i, u_input.a, u_input.a, u_input.a), 0u, false, u_input.a))).c & true) & true, ~vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 46597u)), vec2<u32>(1u, 4294967295u)), 1u, 1u, _wgslsmith_sub_u32(~6387u, _wgslsmith_clamp_u32(23521u, 3536u, 86268u))), 0u);
    let var_2 = vec4<f32>(arg_0.x, 482f, -2289f, 512f);
    var var_3 = ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -1i ^ var_1.e.d, -2147483647i, 2147483647i & u_input.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(83594i, 2147483647i, 1i, -14008i), -var_1.e.a, var_1.b.a | vec4<i32>(var_1.b.d, -2147483647i, global0.x, -2147483647i)) << (~(~vec4<u32>(var_1.c.x, var_1.e.b, 8271u, var_1.b.b)) % vec4<u32>(32u)));
    var var_4 = Struct_2(~(~var_1.d.wz << (func_4(func_4(var_1.b, false, var_1.d, 1u).b, true, var_1.d, 0u).a % vec2<u32>(32u))), var_1.e, max(~var_1.c, vec2<u32>(countOneBits(_wgslsmith_div_u32(var_1.e.b, 26517u)), _wgslsmith_sub_u32(~var_1.b.b, _wgslsmith_mod_u32(var_1.e.b, var_1.a.x)))), var_1.d, func_4(func_5(true, func_4(var_1.e, true, _wgslsmith_mult_vec4_u32(vec4<u32>(20750u, 25549u, var_1.d.x, 36911u), var_1.d), min(52616u, 0u))), _wgslsmith_mod_u32(1u, ~var_1.b.b) == _wgslsmith_div_u32(var_1.c.x, var_1.e.b), reverseBits(vec4<u32>(4294967295u ^ var_1.a.x, 25940u, _wgslsmith_mult_u32(var_1.c.x, var_1.c.x), 1u)), _wgslsmith_dot_vec2_u32(countOneBits(max(var_1.a, vec2<u32>(0u, 11934u))), abs(_wgslsmith_clamp_vec2_u32(var_1.c, vec2<u32>(var_1.b.b, 23529u), vec2<u32>(27863u, var_1.c.x))))).b);
    return StorageBuffer(var_1.e.a, func_5(true, func_4(Struct_1(abs(var_1.e.a), 1u, true, ~1i), var_4.e.c, vec4<u32>(~var_4.a.x, 4294967295u & var_4.a.x, ~1u, 1u), ~firstTrailingBit(1u))).a.yw, ~_wgslsmith_dot_vec2_i32(min(~vec2<i32>(var_1.e.a.x, 1838i), firstTrailingBit(vec2<i32>(global0.x, -2147483647i))), max(_wgslsmith_add_vec2_i32(var_4.e.a.xx, vec2<i32>(u_input.a, global0.x)), abs(var_1.b.a.yy))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~var_4.e.b, 4294967295u, 21326u), ~func_1(Struct_2(vec2<u32>(0u, 4294967295u), var_1.e, var_4.d.wx, var_4.d, Struct_1(vec4<i32>(u_input.a, var_4.b.a.x, var_1.b.d, 21551i), var_1.b.b, false, -16653i)), var_1, arg_0, var_1).b, var_4.d.x), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_4.d.x, 58690u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.b, var_1.a.x), var_1.a)), _wgslsmith_dot_vec2_u32(var_4.a, ~vec2<u32>(var_1.a.x, var_1.d.x)), _wgslsmith_div_u32(reverseBits(var_4.e.b), 1u))), func_4(var_1.e, var_4.b.c, select(abs(vec4<u32>(var_1.b.b, 4294967295u, var_1.c.x, var_1.e.b)) | func_4(Struct_1(var_4.e.a, var_1.a.x, var_4.b.c, var_1.e.a.x), true, vec4<u32>(var_1.a.x, 26399u, 4294967295u, 34017u), var_4.c.x).d, var_1.d, select(select(vec4<bool>(true, false, var_4.e.c, var_4.b.c), vec4<bool>(var_4.b.c, true, var_4.b.c, var_4.b.c), vec4<bool>(false, var_4.b.c, var_1.b.c, false)), !vec4<bool>(true, var_1.b.c, false, true), var_1.e.c)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_4.a.x, 125669u), 0u)).e.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -545f)))), _wgslsmith_f_op_f32(func_6(max(~vec3<u32>(1u, 4294967295u, 32834u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 46023u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u))), Struct_2(~vec2<u32>(21479u, 16030u), func_1(Struct_2(vec2<u32>(4294967295u, 20242u), Struct_1(vec4<i32>(29452i, 46876i, u_input.a, global0.x), 4294967295u, false, 2147483647i), vec2<u32>(5163u, 7516u), vec4<u32>(0u, 1u, 1u, 22595u), Struct_1(vec4<i32>(global0.x, 1i, u_input.a, global0.x), 0u, true, -2147483647i)), Struct_2(vec2<u32>(52706u, 1u), Struct_1(vec4<i32>(-9172i, u_input.a, 48001i, u_input.a), 29679u, true, u_input.a), vec2<u32>(1u, 36585u), vec4<u32>(0u, 66192u, 0u, 40463u), Struct_1(vec4<i32>(u_input.a, -2147483647i, 0i, global0.x), 25420u, true, global0.x)), vec4<f32>(578f, 633f, 364f, -316f), Struct_2(vec2<u32>(1u, 17133u), Struct_1(vec4<i32>(-5376i, -2147483647i, 8652i, u_input.a), 0u, true, -46042i), vec2<u32>(1u, 1u), vec4<u32>(0u, 1u, 0u, 0u), Struct_1(vec4<i32>(-6605i, 14674i, 41273i, 1751i), 0u, true, u_input.a))), ~vec2<u32>(121057u, 59349u), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(vec4<i32>(-36544i, -2147483647i, u_input.a, 6764i), 76844u, false, u_input.a)), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec4<i32>(-620i, -26417i, u_input.a, 7478i), 40128u, false, global0.x), ~vec2<u32>(87189u, 4049u), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(vec4<i32>(global0.x, -2147483647i, -32807i, u_input.a), 50249u, false, u_input.a)), func_1(func_4(Struct_1(vec4<i32>(24302i, u_input.a, -2147483647i, u_input.a), 0u, false, -2147483647i), true, vec4<u32>(2549u, 4294967295u, 7765u, 4294967295u), 4294967295u), Struct_2(vec2<u32>(0u, 1u), Struct_1(vec4<i32>(-24277i, global0.x, -16554i, 57567i), 29511u, true, global0.x), vec2<u32>(1u, 30633u), vec4<u32>(1u, 27317u, 32156u, 4294967295u), Struct_1(vec4<i32>(global0.x, 1i, global0.x, u_input.a), 1u, false, -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(185f, 1711f, 696f, 540f) - vec4<f32>(-136f, 365f, -1208f, -1206f)), func_4(Struct_1(vec4<i32>(global0.x, global0.x, -2147483647i, 2147483647i), 42548u, false, u_input.a), true, vec4<u32>(4276u, 1u, 26918u, 54160u), 1u)))), -1383f, -1209f));
}

