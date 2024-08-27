struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(u_input.a, !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), firstLeadingBit(vec4<u32>(30133u, u_input.d, 0u, u_input.b)) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 72734u, 45906u, 17271u), vec4<u32>(u_input.b, 65068u, u_input.d, u_input.b)) % vec4<u32>(32u))), Struct_1(-_wgslsmith_div_i32(firstLeadingBit(u_input.a), u_input.a), true, firstTrailingBit(max(vec4<u32>(0u, 17664u, 43644u, 1u), vec4<u32>(u_input.b, 105u, u_input.c.x, u_input.c.x)) & ~vec4<u32>(u_input.c.x, u_input.d, 1u, u_input.d))), 43500u);
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.a.a, var_0.b.a), ~u_input.a), -vec2<i32>(-13500i, 0i) ^ -vec2<i32>(var_0.a.a, 2147483647i)), any(select(!vec4<bool>(var_0.b.b, var_0.b.b, var_0.a.b, var_0.a.b), select(vec4<bool>(false, false, var_0.a.b, true), vec4<bool>(false, var_0.b.b, false, var_0.b.b), true), var_0.a.b)), vec4<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 90805u, 6207u), var_0.a.c), ~vec4<u32>(var_0.a.c.x, u_input.b, 1u, 1u)), _wgslsmith_clamp_u32(u_input.c.x & 1u, _wgslsmith_dot_vec4_u32(var_0.b.c, vec4<u32>(var_0.b.c.x, var_0.a.c.x, 0u, 0u)), ~0u))), ~0u);
    var var_1 = ~var_0.a.c.x | firstLeadingBit(~4294967295u);
    var_0 = Struct_2(var_0.b, var_0.b, countOneBits(~max(max(77505u, u_input.d), 1u)));
    var_0 = Struct_2(var_0.a, var_0.a, 0u);
    return -vec4<i32>(-firstTrailingBit(var_0.a.a | -1i), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.a.a, var_0.a.a), -var_0.b.a), select(~var_0.a.a, 0i, true) << (var_0.a.c.x % 32u), -2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = ~(~reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.a, u_input.a, 16557i), vec3<i32>(arg_0, u_input.a, -1i)), -vec3<i32>(arg_3.b.a, 0i, u_input.a))));
    let var_1 = !vec4<bool>(true, !(!(arg_0 <= arg_3.a.a)), false, true);
    var var_2 = min(select(-vec2<i32>(-13779i, arg_0), vec2<i32>(min(19033i, -1i), 0i), vec2<bool>(all(var_1), false)) ^ (reverseBits(firstTrailingBit(vec2<i32>(28751i, arg_0))) << (~min(u_input.c, vec2<u32>(u_input.d, arg_3.c)) % vec2<u32>(32u))), -(-var_0.xx | var_0.yz));
    let var_3 = true;
    let var_4 = var_1.x;
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_1(~u_input.a, all(vec3<bool>(_wgslsmith_div_u32(u_input.b, u_input.b) <= abs(19795u), true, true)), abs(~vec4<u32>(u_input.c.x, ~0u, min(4294967295u, u_input.d), u_input.d)));
    var_0 = Struct_1(1i, func_4(_wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-61571i, 0i, -27342i, 14710i), func_3(arg_0))), !(!select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(false, var_0.b, false, var_0.b), var_0.b)), true, Struct_2(Struct_1(~(-8163i), true, _wgslsmith_mod_vec4_u32(vec4<u32>(62436u, 0u, var_0.c.x, 0u), var_0.c)), Struct_1(1i, true, var_0.c), 4294967295u)), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.d, u_input.c.x), var_0.c)));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(0i, u_input.a), vec2<i32>(-6483i, u_input.a), var_0.b), -abs(vec2<i32>(12624i, var_0.a)) << (min(~vec2<u32>(var_0.c.x, 0u), var_0.c.wz) % vec2<u32>(32u))));
    var var_2 = Struct_2(Struct_1(var_0.a, any(select(select(vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(var_0.b, true, var_0.b, false), true), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(var_0.b, true, var_0.b, true))), var_0.c), Struct_1(-abs(-2147483647i), true, var_0.c), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(firstTrailingBit(u_input.d & 9226u), ~_wgslsmith_dot_vec2_u32(var_0.c.wz, u_input.c))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(1116f + -899f), arg_1) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, arg_1, arg_1, -999f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-917f, -643f, arg_1, -1076f), vec4<f32>(arg_0, arg_0, -1000f, 962f)))))) + vec4<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_0), _wgslsmith_div_f32(-474f, arg_0)), arg_0, _wgslsmith_div_f32(arg_1, 1360f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -427f, arg_0, -1394f)) - vec4<f32>(arg_0, -1916f, arg_1, -1958f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_1), arg_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1467f, arg_1, 1496f, arg_0), vec4<f32>(arg_0, -405f, arg_0, arg_1), vec4<bool>(var_0.b, true, true, false)))))), u_input.d == (countOneBits(4294967295u) ^ (~4294967295u & reverseBits(var_2.b.c.x))), var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-1000f, arg_1)))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> i32 {
    var var_0 = Struct_2(arg_2.d, Struct_1(_wgslsmith_sub_i32(-2147483647i, 0i), arg_2.d.a == u_input.a, vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_2.d.c.wzy, arg_2.d.c.xzz)), countOneBits(4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2043u, 0u, arg_0.x), arg_2.d.c.xzy) % 32u), arg_0.x << (firstLeadingBit(u_input.d) % 32u), min(u_input.d, _wgslsmith_add_u32(arg_0.x, arg_0.x)))), ~(1u >> (u_input.b % 32u)));
    var_0 = Struct_2(arg_2.d, func_2(312f, _wgslsmith_f_op_f32(-arg_2.a.x)).d, ~((_wgslsmith_add_u32(arg_0.x, arg_2.d.c.x) & var_0.a.c.x) << (_wgslsmith_sub_u32(min(0u, u_input.b), 23986u) % 32u)));
    var_0 = Struct_2(Struct_1(8427i, true, vec4<u32>(~0u, arg_0.x | ~u_input.c.x, u_input.b, 40890u)), arg_2.d, _wgslsmith_add_u32(0u, max(_wgslsmith_dot_vec3_u32(func_2(-1348f, 527f).d.c.wyz, vec3<u32>(arg_0.x, arg_0.x, u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, arg_2.d.c.x, 923u), func_2(arg_2.a.x, 257f).d.c.x))));
    var var_1 = Struct_2(arg_2.d, arg_2.d, 4294967295u);
    let var_2 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.d.a, 1i), vec2<i32>(var_0.b.a, var_1.b.a)) >> (vec2<u32>(abs(14842u), 442u) % vec2<u32>(32u)), -(~(-vec2<i32>(var_0.a.a, 23386i)) | firstTrailingBit(select(vec2<i32>(var_1.b.a, 0i), vec2<i32>(u_input.a, var_0.b.a), arg_1.yw))));
    return -var_0.a.a;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_2(1f, _wgslsmith_f_op_f32(arg_0 * -328f));
    let var_1 = Struct_2(func_2(var_0.e.x, -210f).d, arg_1, 27384u);
    var_0 = func_2(var_0.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0, arg_0)))));
    let var_2 = var_1.a.c.x;
    var var_3 = _wgslsmith_dot_vec2_u32(countOneBits(max(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.c), vec2<u32>(var_1.a.c.x, var_1.c)), ~arg_2.c.ww), arg_1.c.xx)), vec2<u32>(~1u, ~_wgslsmith_mult_u32(countOneBits(u_input.d), u_input.d)));
    return var_0.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_2(func_6(527f, Struct_1(func_5(~vec2<u32>(0u, 20760u), select(vec4<bool>(arg_0.x, arg_1, arg_1, arg_1), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true)), func_2(-796f, -499f), select(vec4<bool>(arg_0.x, arg_1, arg_1, arg_0.x), vec4<bool>(false, arg_1, true, arg_1), arg_1)), all(arg_0), vec4<u32>(67333u, _wgslsmith_add_u32(0u, 34915u), ~1u, u_input.d ^ 1u)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 40002i, 2147483647i), vec3<i32>(u_input.a, 0i, u_input.a)), 1i), u_input.a == _wgslsmith_sub_i32(9111i, u_input.a), (vec4<u32>(u_input.b, 8592u, u_input.b, 1u) | vec4<u32>(0u, u_input.b, 0u, 1u)) << (~vec4<u32>(2642u, u_input.d, 300u, u_input.d) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(33147u, u_input.b, 51114u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 1u, 0u), vec4<u32>(21173u, 2475u, 4294967295u, u_input.c.x))) <= 1u), Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(-1i, 2147483647i, -33633i)) ^ 1i, _wgslsmith_div_i32(-1i, -57186i) <= u_input.a, vec4<u32>(~u_input.b << (1u % 32u), max(~u_input.d, u_input.d), 0u, 37248u)), select(countOneBits(~(~u_input.b)), ~min(u_input.d, ~u_input.b), false));
    var_0 = Struct_2(var_0.b, Struct_1(var_0.b.a, any(select(vec2<bool>(true, true), arg_0, select(vec2<bool>(true, true), arg_0, vec2<bool>(true, var_0.a.b)))), vec4<u32>(u_input.b, var_0.a.c.x, 0u & u_input.c.x, min(u_input.c.x, u_input.c.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c, 0u), var_0.b.c)), countOneBits(func_6(2046f, func_6(_wgslsmith_div_f32(-153f, -292f), Struct_1(-39133i, arg_0.x, var_0.b.c), func_2(1521f, 615f).d, true), func_6(1085f, func_2(2404f, 945f).d, Struct_1(var_0.b.a, false, var_0.b.c), arg_1), func_4(31435i, vec4<bool>(var_0.a.b, arg_1, arg_1, true), arg_0.x, Struct_2(var_0.b, var_0.b, u_input.b)) | true).c.x));
    var var_1 = func_2(437f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f - _wgslsmith_f_op_f32(max(-885f, -466f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 925f), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-187f, 1000f)), _wgslsmith_f_op_f32(select(180f, -371f, false)))))).d;
    var var_2 = var_0.b;
    return StorageBuffer(vec3<u32>(4294967295u, 0u, var_0.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!vec2<bool>(!all(vec3<bool>(false, false, false)), false), true);
}

