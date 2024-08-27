struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(~vec3<i32>(1i, 1i, 1i)), select(!vec3<bool>(false, any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), false, any(vec2<bool>(false, true)) || true), true), _wgslsmith_div_f32(1452f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(-arg_0.x)))), vec2<f32>(1081f, _wgslsmith_f_op_f32(abs(320f))), all(vec2<bool>(true, true)));
    var var_1 = Struct_4(Struct_3(var_0, Struct_1(_wgslsmith_mod_vec3_i32(var_0.a, ~var_0.a), !select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.b.x, true), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1481f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(arg_0)), vec2<f32>(var_0.d.x, var_0.c), vec2<bool>(false, var_0.e))), true), false, Struct_2(_wgslsmith_div_u32(47072u, ~arg_1))), firstLeadingBit(-select(vec4<i32>(var_0.a.x, 6614i, var_0.a.x, var_0.a.x), abs(vec4<i32>(-36251i, 2147483647i, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.b.x, var_0.e, false, var_0.b.x), vec4<bool>(var_0.e, var_0.e, var_0.e, false), true))), firstLeadingBit(-vec4<i32>(var_0.a.x >> (62120u % 32u), _wgslsmith_mult_i32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -19648i, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, 69103i, -2147483647i, 42498i)), firstTrailingBit(37850i))), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x)))))));
    let var_2 = _wgslsmith_mod_i32(-47544i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.a.x, -var_0.a.x, var_1.a.a.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(12240i, 2147483647i, var_1.b.x, 2147483647i), vec4<i32>(var_1.c.x, 58254i, 1i, var_0.a.x) << (vec4<u32>(24958u, arg_1, u_input.a.x, 134176u) % vec4<u32>(32u)))), abs(-var_1.c)));
    var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_clamp_vec3_i32(-var_1.b.yxy, firstTrailingBit(var_0.a), vec3<i32>(var_0.a.x, var_1.b.x, var_2)), !select(vec3<bool>(false, var_1.a.c, var_0.b.x), var_0.b, var_1.a.b.e), _wgslsmith_f_op_f32(ceil(-1220f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1213f, 426f), arg_0, var_1.a.a.b.zx)), !var_0.b.xz)), countOneBits(8215u) < abs(arg_1)), Struct_1(vec3<i32>(-var_1.b.x, var_0.a.x, -628i), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * -1000f), arg_0, true), true, var_1.a.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, firstLeadingBit(1i), 33223i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_2, var_2), reverseBits(vec4<i32>(var_0.a.x, -32953i, 2147483647i, var_0.a.x))) | var_1.b, var_1.c), vec4<i32>(0i, var_1.a.b.a.x, var_2 ^ min(3606i, var_0.a.x >> (arg_1 % 32u)), -2147483647i), -1000f);
    let var_3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a.d.a, u_input.b), abs(abs(u_input.a.x))));
    return _wgslsmith_f_op_f32(floor(-2245f));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-22314i, arg_1) & vec2<i32>(-1i, 18693i), vec2<i32>(arg_1, -4392i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_1) ^ vec2<i32>(arg_1, arg_1), ~vec2<i32>(-9494i, 1i)))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, ~u_input.a.x), ~(u_input.a & vec2<u32>(1u, 25597u))), vec2<u32>(~1u, u_input.b | 25213u)) % vec2<u32>(32u));
    let var_1 = Struct_3(Struct_1(vec3<i32>(firstLeadingBit(-38106i), firstLeadingBit(arg_1 << (45263u % 32u)), ~2147483647i), arg_0.zwy, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(261f)), _wgslsmith_f_op_f32(abs(-908f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_2, arg_2), 21933u)), _wgslsmith_f_op_f32(step(arg_2, arg_2)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(375f, 1186f), vec2<f32>(368f, arg_2))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1287f, -854f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(607f, arg_2))))), arg_0.x), Struct_1(abs(reverseBits(vec3<i32>(var_0.x, 1i, arg_1))) << (vec3<u32>(u_input.b, ~u_input.b, ~u_input.b) % vec3<u32>(32u)), select(arg_0.xww, arg_0.xzz, arg_0.x), arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1683f)), _wgslsmith_f_op_f32(exp2(arg_2))), any(arg_0.xw)), false, Struct_2(reverseBits(74638u)));
    var var_2 = abs(-2147483647i);
    var var_3 = Struct_4(Struct_3(var_1.a, var_1.b, !arg_0.x, Struct_2(abs(var_1.d.a))), vec4<i32>(-38782i, 1i, _wgslsmith_mod_i32(0i, -15752i), 14284i), abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, -18822i, arg_1, 0i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_1, -1i, -2147483647i), vec4<i32>(-14142i, var_0.x, 56092i, arg_1)))), var_1.b.c);
    var_3 = Struct_4(var_1, var_3.c, var_3.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d))))));
    return var_3.a.a.b.yy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(u_input.b);
    var var_1 = Struct_1(~(-((vec3<i32>(arg_2.x, arg_2.x, arg_2.x) << (vec3<u32>(var_0.a, var_0.a, var_0.a) % vec3<u32>(32u))) >> (select(vec3<u32>(var_0.a, 6021u, 4865u), vec3<u32>(0u, 8391u, 28109u), false) % vec3<u32>(32u)))), vec3<bool>(true, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(623f, 500f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f + arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, 1309f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xx) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, arg_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-517f, arg_1.x)) - _wgslsmith_f_op_vec2_f32(arg_1.xz * vec2<f32>(-754f, arg_1.x)))))), arg_3.x);
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, arg_1.d.a, arg_0.a), vec4<u32>(4294967295u, arg_0.a, arg_1.d.a, u_input.b))), ~vec4<u32>(arg_0.a, 4294967295u, arg_0.a, 32692u) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 24448u, 4294967295u, u_input.b), vec4<u32>(138731u, arg_2.x, 10558u, u_input.a.x))), vec4<u32>(u_input.b, arg_2.x, 37998u, 0u)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, 0u, 4294967295u, arg_0.a), select(vec4<u32>(arg_1.d.a, 27442u, 1u, 37321u), vec4<u32>(1u, 18796u, 11531u, u_input.b), arg_3), all(vec4<bool>(arg_3, false, arg_1.c, false))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(24509u, arg_2.x, arg_1.d.a, 2943u), vec4<u32>(arg_2.x, arg_0.a, arg_1.d.a, 0u)), vec4<u32>(countOneBits(1u), max(u_input.b, abs(arg_1.d.a)), ~max(arg_1.d.a, arg_1.d.a), 46806u)), select(vec4<u32>(1u, func_4(vec2<bool>(true, arg_1.b.e), vec3<f32>(1023f, -1503f, -623f), -arg_1.b.a, arg_1.b.b.zy).a, func_4(arg_1.a.b.xy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.d.x, -647f, arg_1.a.c)), arg_1.a.a << (vec3<u32>(19980u, 84224u, arg_0.a) % vec3<u32>(32u)), arg_1.a.b.xx).a, 4294967295u), ~vec4<u32>(arg_0.a, _wgslsmith_mult_u32(arg_0.a, arg_2.x), max(0u, 0u), _wgslsmith_add_u32(arg_1.d.a, 1u)), any(select(vec4<bool>(true, false, arg_3, arg_3), !vec4<bool>(false, arg_3, arg_1.b.e, true), !vec4<bool>(arg_1.c, arg_3, true, arg_3)))));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(401u, var_0.x), ~_wgslsmith_add_u32(0u, arg_0.a), _wgslsmith_mult_u32(0u, 0u)), 2703u, ~(~(18694u >> (arg_1.d.a % 32u))), arg_1.d.a ^ arg_0.a), ~_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(arg_2.x, var_0.x, arg_2.x, 23983u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.a, arg_0.a, var_0.x), vec4<u32>(16477u, 4298u, 61556u, 13193u), vec4<u32>(30039u, arg_0.a, 45224u, arg_0.a))), ~max(vec4<u32>(81394u, 4294967295u, arg_2.x, arg_1.d.a), vec4<u32>(22696u, 5778u, u_input.a.x, 20591u))));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, _wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_mod_u32(arg_0.a, u_input.b) | _wgslsmith_dot_vec3_u32(arg_2, arg_2)), _wgslsmith_mult_u32(1u, ~countOneBits(4294967295u)), 39983u ^ ~arg_2.x), ~vec4<u32>(4294967295u, arg_0.a, arg_1.d.a, firstLeadingBit(var_0.x)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_1.a.a.xx, vec2<i32>(-arg_1.b.a.x, (arg_1.b.a.x & -37399i) | arg_1.b.a.x));
    let var_2 = reverseBits(firstTrailingBit(u_input.a));
    return vec2<i32>(-1i, _wgslsmith_add_i32(1i | ((var_1 << (u_input.a.x % 32u)) << (~arg_1.d.a % 32u)), _wgslsmith_add_i32(var_1, var_1)));
}

fn func_1() -> Struct_2 {
    let var_0 = abs(func_5(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3281f, 1736f, 1435f))), vec3<i32>(-1i, reverseBits(0i), 1i), func_2(vec4<bool>(true, false, false, false), min(2147483647i, -1356i), _wgslsmith_f_op_f32(-1384f - -327f))), Struct_3(Struct_1(~vec3<i32>(46685i, 0i, 0i), vec3<bool>(true, true, true), 1016f, _wgslsmith_f_op_vec2_f32(vec2<f32>(742f, 2211f) + vec2<f32>(-1790f, 247f)), true), Struct_1(vec3<i32>(-1i, -2147483647i, -2147483647i), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), 389f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1918f, -500f))), true), true, Struct_2(~u_input.a.x)), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), 1u, u_input.b), !all(vec3<bool>(false, true, true))));
    var var_1 = 74560u;
    var_1 = abs(u_input.b);
    let var_2 = _wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(abs(var_0.x), _wgslsmith_div_i32(countOneBits(var_0.x), var_0.x))), var_0.x);
    var var_3 = vec3<bool>(!(var_0.x == var_0.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(false, false)), true), vec4<bool>(false, false, any(vec2<bool>(false, false)), true))), any(vec4<bool>(func_2(vec4<bool>(false, true, true, false), 51686i, -283f).x, func_2(vec4<bool>(false, false, false, false), var_2, -164f).x, any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, true, false)))) || false);
    return func_4(!(!var_3.xz), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, -1133f, -316f)))))), firstLeadingBit(vec3<i32>(~_wgslsmith_add_i32(var_2, var_2), -5026i, 33389i)), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.x & var_3.x, true, true, true | var_3.x), true), -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2531f)), -105f)));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(max(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_2.x, arg_2.x, 53221i), vec3<i32>(0i, 10462i, 19023i)), arg_2), arg_2), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1546f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(338f, -434f) * vec2<f32>(2889f, -503f))))), true), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(60252i), arg_2.x, arg_1 ^ 5323i), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, arg_1, arg_1), vec3<i32>(arg_2.x, 0i, arg_2.x)), arg_2)), !vec3<bool>(false, all(vec4<bool>(false, true, true, false)), true), _wgslsmith_f_op_f32(round(1171f)), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-982f, -770f)))), any(vec3<bool>(any(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, true))))), any(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false)), arg_0);
    let var_1 = -767f;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-416f)) * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-998f + -251f), _wgslsmith_f_op_f32(-773f - -1141f)))))));
    let var_1 = Struct_3(func_6(func_1(), reverseBits(~(i32(-1i) * -6351i)), -(~reverseBits(vec3<i32>(17430i, -42586i, -2147483647i)))), Struct_1(vec3<i32>(max(select(-2147483647i, 1i, true), reverseBits(2147483647i)), 83742i, reverseBits(2147483647i) >> (0u % 32u)), select(vec3<bool>(false, any(vec2<bool>(false, true)), true), select(func_6(Struct_2(1250u), 1i, vec3<i32>(0i, 0i, -1i)).b, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), select(func_6(Struct_2(u_input.b), 0i, vec3<i32>(-19195i, -1i, -1i)).b, func_6(Struct_2(44137u), -2147483647i, vec3<i32>(-2352i, -24649i, 20649i)).b, vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1096f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), true), all(vec3<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, true, true)))) | true, Struct_2(u_input.b));
    var var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_mult_i32(-47865i, var_1.b.a.x >> (var_1.d.a % 32u)), max(1i, var_1.a.a.x) | 1i, var_1.a.a.x), func_6(var_1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.a.a.x), abs(vec2<i32>(19259i, -31351i))), vec3<i32>(~(-10409i), firstLeadingBit(39577i), var_1.b.a.x)).b, 602f, var_1.a.d, !func_6(func_1(), func_6(Struct_2(u_input.a.x), var_1.b.a.x, vec3<i32>(var_1.a.a.x, var_1.b.a.x, var_1.b.a.x)).a.x, _wgslsmith_mod_vec3_i32(var_1.b.a, var_1.b.a)).b.x), Struct_1(~_wgslsmith_clamp_vec3_i32(var_1.a.a, var_1.a.a >> (vec3<u32>(1u, 4294967295u, 17007u) % vec3<u32>(32u)), ~vec3<i32>(-1i, var_1.a.a.x, var_1.b.a.x)), func_6(func_4(!vec2<bool>(true, var_1.a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), select(vec3<i32>(11259i, 0i, 1i), var_1.a.a, vec3<bool>(var_1.c, false, false)), vec2<bool>(var_1.a.b.x, var_1.b.e)), var_1.a.a.x, -vec3<i32>(var_1.b.a.x, 30445i, var_1.b.a.x)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - -761f))), var_0, any(var_1.b.b)), !(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.a.x, -1i, -32658i, var_1.b.a.x), vec4<i32>(80420i, var_1.a.a.x, var_1.b.a.x, var_1.a.a.x)) == -1i), var_1.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1896f, var_1.b.d.x, var_2.b.c, -771f), vec4<f32>(var_2.a.d.x, -1000f, var_1.a.d.x, var_0.x), var_2.b.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1130f, -495f, 1000f, var_1.b.d.x) + vec4<f32>(1954f, -1635f, -743f, 496f)), true)) + vec4<f32>(var_0.x, _wgslsmith_div_f32(var_2.a.d.x, var_2.a.d.x), _wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_div_f32(var_2.a.d.x, -187f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(var_2.a.d.x, _wgslsmith_f_op_f32(var_1.b.d.x + 894f))), _wgslsmith_f_op_f32(var_2.a.c + -519f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-155f, var_1.a.d.x)))));
    let var_4 = Struct_3(var_1.b, Struct_1(-var_1.a.a ^ vec3<i32>(-20903i & var_2.a.a.x, var_1.a.a.x, 0i), !vec3<bool>(var_1.c && true, var_2.a.b.x, true), -1040f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, var_1.b.c))) - vec2<f32>(1144f, var_3.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0)))), any(vec4<bool>(false, var_1.b.a.x >= -27729i, true, true))), var_1.c, var_2.d);
    let var_5 = var_4.a.e;
    let var_6 = Struct_4(Struct_3(func_6(Struct_2(4999u), i32(-1i) * -10355i, vec3<i32>(var_1.b.a.x, ~34595i, var_1.a.a.x >> (60014u % 32u))), func_6(Struct_2(~var_4.d.a), var_1.b.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-7682i, -1i, var_4.b.a.x), var_1.a.a) & -vec3<i32>(var_4.b.a.x, var_4.a.a.x, 24314i)), true, Struct_2(60278u)), min(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, var_4.a.a.x, -76546i, -2147483647i), vec4<i32>(var_1.a.a.x, var_2.b.a.x, 2147483647i, var_1.a.a.x), vec4<bool>(false, var_2.b.e, var_1.a.b.x, var_2.a.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(88399i, var_2.b.a.x, var_4.a.a.x, -50047i), vec4<i32>(-2147483647i, -68326i, 2147483647i, var_2.a.a.x))), vec4<i32>(max(-9076i ^ var_2.b.a.x, ~var_4.b.a.x), var_1.a.a.x, -min(63729i, 28441i), var_4.b.a.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a.x, var_4.b.a.x), var_1.b.a.zy << (vec2<u32>(var_4.d.a, 0u) % vec2<u32>(32u))), 33222i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.a.a.x, var_2.a.a.x, var_4.b.a.x), _wgslsmith_mod_i32(var_2.b.a.x, 5518i)), 1i) << (abs(~(~vec4<u32>(var_2.d.a, var_1.d.a, 88003u, var_4.d.a))) % vec4<u32>(32u)), -2922f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec4<u32>(52018u, 29639u, 18771u, 106263u), vec4<u32>(var_1.d.a, 5249u, 4294967295u, 82429u), vec4<bool>(var_5, true, var_2.c, true)))), var_1.b.a.x);
}

