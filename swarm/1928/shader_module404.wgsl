struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(18194u, 16337u, u_input.e.x), firstTrailingBit(4294967295u));
    var_0 = ~(~(~_wgslsmith_div_vec2_u32(arg_0.a.xy, _wgslsmith_clamp_vec2_u32(arg_0.a.zz, vec2<u32>(0u, 44975u), arg_0.a.yw))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_mult_vec3_u32(arg_0.a.wxy, ~u_input.d);
    var var_3 = ~vec3<u32>((1u << (countOneBits(u_input.d.x) % 32u)) >> (var_0.x % 32u), 1u, _wgslsmith_add_u32(~1u, 1u));
    return u_input.b.x;
}

fn func_2() -> bool {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(!(_wgslsmith_add_i32(-6598i, u_input.b.x) < 22406i), true), vec2<bool>(any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, false))), false));
    let var_1 = 58347u;
    var var_2 = Struct_1(~vec4<u32>(94314u, 1u, ~(~60362u), 4294967295u), -func_3(Struct_1(abs(vec4<u32>(var_1, u_input.e.x, 34048u, 71437u)), -38902i, _wgslsmith_f_op_f32(f32(-1f) * -291f), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(226f, -744f, -1000f, -163f) + vec4<f32>(-112f, -1555f, -1283f, 1564f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f))))) + -267f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1338f, -1271f, 2106f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-947f, 1000f, 788f) - vec3<f32>(-360f, 1043f, -146f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(193f, -178f, -657f) * vec3<f32>(-489f, 118f, 243f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f) * _wgslsmith_f_op_f32(max(-341f, 962f))), -746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f * -383f)))));
    var var_3 = -_wgslsmith_add_vec4_i32(vec4<i32>(-var_2.b, _wgslsmith_add_i32(29988i, -35351i), -1i, 2147483647i << (u_input.d.x % 32u)), vec4<i32>(u_input.b.x, -57207i, 18043i, 1i | u_input.c)) | vec4<i32>(var_2.b, 39067i, ~var_2.b, -2147483647i);
    var_2 = Struct_1(max(var_2.a, ~(~vec4<u32>(4294967295u, var_1, 0u, var_1))), u_input.c, var_2.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.e.xyz) + vec3<f32>(var_2.d.x, var_2.d.x, var_2.c)))) + var_2.e.yxx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.e + vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(var_2.d.x * 122f), -1000f, var_2.e.x))));
    return any(vec2<bool>(true, true));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = select(vec3<bool>(!(firstTrailingBit(-1i) == 2147483647i), true, func_2()), vec3<bool>(true, true || func_2(), func_2()), true);
    var var_1 = Struct_1(reverseBits(arg_3.a), i32(-1i) * -arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_3.e.x)))) * 1292f), vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 1765f)))), _wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(-arg_3.e.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_0.x), vec4<f32>(arg_0.x, arg_2.x, arg_2.x, -608f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, 3748f, _wgslsmith_f_op_f32(select(-611f, -1210f, true)), arg_2.x)))));
    let var_2 = reverseBits(-vec3<i32>(_wgslsmith_div_i32(max(var_1.b, arg_3.b), u_input.a), -var_1.b, u_input.b.x >> (u_input.e.x % 32u)));
    var_1 = arg_3;
    let var_3 = arg_0.ww;
    return Struct_2(false, Struct_1(var_1.a, u_input.c, -471f, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.x, 123f)), _wgslsmith_f_op_f32(-var_1.d.x))), arg_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -249f)), _wgslsmith_f_op_vec4_f32(arg_3.e - _wgslsmith_f_op_vec4_f32(min(var_1.e, vec4<f32>(1893f, var_3.x, arg_2.x, var_3.x))))), Struct_1(vec4<u32>(~1u & arg_3.a.x, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(arg_3.a, vec4<u32>(var_1.a.x, 4294967295u, 78934u, var_1.a.x))), 23833u, ~_wgslsmith_div_u32(arg_3.a.x, arg_3.a.x)), arg_3.b, -300f, arg_0.yzy, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1148f, _wgslsmith_div_f32(var_3.x, -251f), var_1.e.x, -535f), vec4<f32>(_wgslsmith_f_op_f32(358f - -652f), _wgslsmith_f_op_f32(534f + -373f), _wgslsmith_f_op_f32(abs(-1027f)), -408f)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = -(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, -25701i, 1i, u_input.a), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.c.b, arg_0.b.b, u_input.a, -77800i), vec4<i32>(-33407i, arg_0.c.b, 1i, -2147483647i) | vec4<i32>(arg_0.c.b, 1i, 1i, 2281i))) << (vec4<u32>(~arg_0.b.a.x, 108643u, arg_0.b.a.x, 1u) % vec4<u32>(32u)));
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.e.x, arg_0.b.c, arg_0.b.d.x, arg_0.c.d.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.e.x), -1666f, arg_0.c.c, arg_0.b.e.x)), arg_0.c.e, -u_input.a != 17635i)), arg_0.b.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1969f))), arg_0.b.d.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.b.e.yy))))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1847f, -428f, -2042f, 967f), arg_0.b.e)) - _wgslsmith_div_vec4_f32(arg_0.b.e, arg_0.b.e))), 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(239f + 1000f), _wgslsmith_f_op_f32(1000f + arg_0.b.c)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c.e.x, 1759f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, arg_0.b.c) + arg_0.c.d.xy)))), func_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.d.x), _wgslsmith_f_op_f32(334f * arg_0.b.e.x), _wgslsmith_f_op_f32(-958f + 1041f), -2357f), abs(countOneBits(u_input.d.x)), _wgslsmith_div_vec2_f32(arg_0.c.d.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(188f, arg_0.c.e.x) + arg_0.c.d.yz)), func_1(arg_0.c.e, abs(arg_0.b.a.x), arg_0.c.d.xy, arg_0.b).b).c).c);
    var var_2 = true;
    let var_3 = vec4<i32>(u_input.c & _wgslsmith_mult_i32(func_3(func_1(vec4<f32>(-163f, arg_0.b.c, -713f, -389f), arg_0.c.a.x, vec2<f32>(-1165f, var_1.c.d.x), arg_0.c).b), arg_0.c.b), 52483i, -260i, -1i);
    let var_4 = false;
    return func_1(arg_0.c.e, arg_0.c.a.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.c.d.yz))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479f + 580f) * _wgslsmith_div_f32(arg_0.b.e.x, -773f))))), arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = func_1(arg_0.c.e, ~_wgslsmith_mult_u32(5219u, ~(~arg_0.b.a.x)), vec2<f32>(arg_0.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-287f, arg_0.b.d.x)))), Struct_1(~vec4<u32>(13338u, 4294967295u, ~0u, _wgslsmith_mult_u32(arg_0.c.a.x, 1u)), i32(-1i) * -4515i, -831f, vec3<f32>(arg_0.b.e.x, arg_1.b.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1148f)), vec4<f32>(_wgslsmith_f_op_f32(603f - _wgslsmith_f_op_f32(abs(-1215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-460f))), _wgslsmith_f_op_f32(func_1(vec4<f32>(-408f, arg_1.b.d.x, -2618f, arg_1.b.c), arg_1.b.a.x, vec2<f32>(arg_0.c.d.x, arg_0.b.d.x), arg_1.b).b.c + -1026f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c.d.x + arg_1.b.c), _wgslsmith_f_op_f32(-arg_0.c.e.x), true))))).b;
    var_0 = arg_0.c;
    var_0 = Struct_1(firstTrailingBit(~reverseBits(arg_0.b.a)), 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-835f, arg_1.b.c)), _wgslsmith_f_op_f32(step(1000f, 451f)))), _wgslsmith_f_op_f32(step(1457f, _wgslsmith_f_op_f32(arg_0.c.d.x * -666f))))), vec3<f32>(func_4(func_4(func_4(arg_1))).c.e.x, _wgslsmith_f_op_f32(-arg_0.c.d.x), -380f), _wgslsmith_f_op_vec4_f32(-arg_0.b.e));
    let var_1 = arg_0.b.e;
    var_0 = func_4(Struct_2(true, func_4(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.e.x, 488f, var_1.x, var_1.x))), 0u, _wgslsmith_f_op_vec2_f32(exp2(arg_0.b.d.zy)), arg_1.b)).b, func_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-1000f - arg_1.b.e.x), 2783f, 2078f), _wgslsmith_sub_u32(4294967295u, arg_0.c.a.x), arg_0.b.d.zy, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.c.a.x, u_input.d.x, arg_2), vec4<u32>(4294967295u, 1u, 37998u, 0u)), -var_0.b, _wgslsmith_f_op_f32(var_0.e.x * arg_0.c.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1612f, var_1.x, 744f) * var_0.e))).c)).c;
    return 9639u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(vec4<f32>(-130f, _wgslsmith_f_op_f32(min(883f, -1001f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -338f), u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, 1000f))), Struct_1(~vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, 21912u), u_input.a >> (u_input.d.x % 32u), _wgslsmith_f_op_f32(-777f + -282f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, -366f, -447f) + vec3<f32>(957f, -1000f, 1721f)), vec4<f32>(-283f, 216f, 538f, -1000f)))), func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(154f, -715f, 161f, 1000f))))), min(u_input.e.x, abs(~u_input.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2241f, -349f) * vec2<f32>(-1708f, -281f)))), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 22898u), vec4<u32>(1006u, u_input.d.x, u_input.d.x, 0u)), ~(i32(-1i) * -8030i), _wgslsmith_f_op_f32(-1108f * _wgslsmith_div_f32(249f, -1757f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3662f, 498f, -1292f))), func_1(vec4<f32>(175f, -1000f, 1000f, 416f), _wgslsmith_clamp_u32(u_input.d.x, 1u, u_input.e.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(810f, 345f) * vec2<f32>(1643f, -672f)), Struct_1(vec4<u32>(26358u, 33666u, u_input.e.x, u_input.d.x), u_input.b.x, 774f, vec3<f32>(-316f, 1730f, -501f), vec4<f32>(128f, -190f, -317f, -119f))).c.e)), u_input.d.x, vec2<i32>(~(-(~u_input.c)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 33827i, u_input.a, u_input.b.x), vec4<i32>(0i, -651i, u_input.a, u_input.c)), countOneBits(vec4<i32>(37397i, u_input.c, u_input.b.x, 0i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(25964i, -2147483647i), _wgslsmith_div_i32(u_input.c, -33879i)))));
    let var_1 = -(~1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, max(u_input.e.x, func_4(func_4(func_1(vec4<f32>(623f, 462f, 908f, -1000f), u_input.d.x, vec2<f32>(-655f, 1000f), Struct_1(vec4<u32>(var_0, 4294967295u, var_0, u_input.e.x), var_1, 604f, vec3<f32>(888f, -1340f, 1573f), vec4<f32>(-573f, 978f, -1097f, -637f))))).c.a.x));
}

