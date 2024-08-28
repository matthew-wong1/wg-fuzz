struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = !all(vec2<bool>(true, true));
    let var_1 = _wgslsmith_div_i32(2147483647i, min(reverseBits(1i), -10029i)) | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(_wgslsmith_add_i32(u_input.a, 14587i), u_input.a)), ~0i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2199f)))))));
    let var_3 = _wgslsmith_dot_vec2_i32(~select(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_1, u_input.a), abs(vec2<i32>(u_input.a, -17813i))), -_wgslsmith_div_vec2_i32(vec2<i32>(var_1, 21669i), vec2<i32>(var_1, var_1)), select(vec2<bool>(true, false), vec2<bool>(var_0, true), true)), ~vec2<i32>(var_1, u_input.a));
    return _wgslsmith_clamp_u32(~1u, 57553u, _wgslsmith_div_u32(75725u, 37204u));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -965f);
    let var_1 = var_0;
    var var_2 = Struct_3(Struct_1(arg_0.yzw, _wgslsmith_add_i32(0i, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-879f, _wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(max(789f, var_0))), ~vec4<u32>(~1u, ~59162u, reverseBits(4294967295u), func_3()), firstTrailingBit(1u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f + arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1941f, -2305f, true)))), 1074f), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, var_1, 329f >= var_1)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-911f, -388f, true))))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(func_3(), ~4294967295u, firstTrailingBit(4294967295u), _wgslsmith_div_u32(44268u, 27126u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, ~9206u, min(79898u, 0u), func_3()))), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(arg_0.xxy)), vec2<bool>(any(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), Struct_1(vec3<f32>(_wgslsmith_div_f32(216f, 1580f), 443f, _wgslsmith_f_op_f32(ceil(var_0))), arg_2.x ^ 1i, var_1, vec4<u32>(0u, 1u, ~73262u, 0u), ~4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, 249f)))))));
    var_2 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-223f * var_2.b.c))), -217f, arg_1), 19145i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_0.x), vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.c.c.d.xz, ~vec2<u32>(6700u, 3387u)), max(var_2.c.c.d.x, ~var_2.c.c.d.x), 42464u, (38265u << (0u % 32u)) ^ var_2.a.d.x), var_2.a.d.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)), var_2.d.x, 2648f), ~countOneBits(var_2.a.b << (var_2.c.c.d.x % 32u)), _wgslsmith_f_op_f32(floor(1253f)), var_2.a.d, 11521u), var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, var_1))) + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(var_2.a.c + arg_0.x)))));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-14838i, arg_2.x, arg_2.x, 0i) | (vec4<i32>(-9919i, arg_2.x, -51415i, var_2.c.c.b) & vec4<i32>(2147483647i, u_input.a, -2147483647i, arg_2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-24457i, -1i, -9571i, u_input.a), vec4<i32>(-1i, var_2.c.c.b, 10629i, var_2.a.b) & vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -41285i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(64463i, -1i, var_2.a.b, 10234i) >> (var_2.b.d % vec4<u32>(32u)), select(vec4<i32>(u_input.a, 1i, arg_2.x, var_2.a.b), vec4<i32>(21267i, -3207i, arg_2.x, arg_2.x), var_2.c.b.x)), arg_2.x, -arg_2.x), vec4<i32>(reverseBits(var_2.a.b), u_input.a | _wgslsmith_sub_i32(~arg_2.x, var_2.a.b), var_2.a.b ^ ~arg_2.x, arg_2.x), -vec4<i32>(-14371i, 2147483647i, -18555i, -2147483647i));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f - -1000f) - _wgslsmith_f_op_f32(max(186f, -1511f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1954f * -379f) + _wgslsmith_f_op_f32(sign(307f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2504f, 447f))))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, var_0.x, 1000f)))))), ~(-1i), _wgslsmith_f_op_f32(738f - 305f), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 16870u), vec4<u32>(0u, 16484u, 6689u, 39070u)), ~4015u, abs(0u), ~3585u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 60832u, 4294967295u)), reverseBits(vec4<u32>(1u, 0u, 0u, 24540u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(abs(vec4<u32>(51095u, 0u, 23058u, 70920u)), _wgslsmith_mult_vec4_u32(vec4<u32>(118668u, 0u, 4294967295u, 1u), vec4<u32>(1u, 27690u, 1u, 35302u))))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(659f, var_0.x, var_0.x), vec3<f32>(var_0.x, 831f, 1000f), true))), vec3<f32>(_wgslsmith_f_op_f32(abs(1674f)), -314f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_mod_i32(-(11101i | u_input.a), ~(-16191i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(var_0.x - -2097f)))), abs(~(~vec4<u32>(0u, 5149u, 6282u, 1u))), ~0u), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, -1826f, _wgslsmith_f_op_f32(f32(-1f) * -1030f))), !vec2<bool>(true, func_2(vec4<f32>(var_0.x, var_0.x, var_0.x, 1024f), var_0.x, vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(343f + 760f), -1357f, _wgslsmith_f_op_f32(466f - 1000f)), -22313i, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-1000f * -1000f)), vec4<u32>(firstTrailingBit(30443u), _wgslsmith_div_u32(36715u, 20425u), _wgslsmith_add_u32(53531u, 12370u), ~4294967295u), 4294967295u)), _wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x))));
    var var_2 = true;
    var_2 = !(1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(447f, var_0.x, arg_0.x)))));
    let var_3 = _wgslsmith_mod_vec3_u32(min(~vec3<u32>(10143u, 1u, 8739u) | vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 18388u), _wgslsmith_dot_vec2_u32(var_1.b.d.yz, var_1.c.c.d.xx), func_3()), _wgslsmith_mod_vec3_u32(reverseBits(var_1.b.d.zyy), ~vec3<u32>(var_1.b.d.x, var_1.b.d.x, 21166u)) ^ abs(var_1.b.d.xzy)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_1.c.c.d.zzw | vec3<u32>(1u, var_1.a.d.x, 0u)), vec3<u32>(var_1.a.d.x, 93934u, var_1.c.c.d.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.e, 1266u, var_1.c.c.e), vec3<u32>(var_1.b.d.x, 10597u, var_1.a.d.x)) % vec3<u32>(32u))), var_1.c.c.d.yzy << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.e, 0u, 11269u) >> (var_1.b.d.yww % vec3<u32>(32u)), var_1.a.d.wxz, vec3<u32>(var_1.a.e, 22513u, var_1.a.e)) % vec3<u32>(32u))));
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = func_4(vec3<bool>(!any(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(false, arg_0.b.x, arg_0.b.x))), arg_0.b.x, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.c, arg_0.a.x, 299f, arg_0.a.x) + vec4<f32>(-104f, arg_0.c.a.x, arg_0.c.c, arg_0.c.a.x))), arg_0.a.x, select(vec3<i32>(u_input.a, arg_0.c.b, arg_0.c.b), vec3<i32>(-19000i, -1i, -18245i), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)) >> (~vec3<u32>(30718u, arg_0.c.d.x, arg_1.x) % vec3<u32>(32u)))));
    var var_1 = u_input.a;
    let var_2 = abs(7834u);
    var_1 = -(i32(-1i) * -(i32(-1i) * -11772i));
    var var_3 = min(vec2<u32>(arg_1.x, 43274u), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.b.d.yx) & abs(arg_0.c.d.wx | vec2<u32>(14416u, var_2)), firstLeadingBit(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.a.d.zz, arg_0.c.d.yz)))));
    return ~(_wgslsmith_clamp_u32(arg_0.c.e, 0u, (arg_0.c.d.x ^ var_3.x) | func_4(vec3<bool>(var_0.c.b.x, false, arg_0.b.x)).a.d.x) | _wgslsmith_dot_vec4_u32(~(vec4<u32>(68837u, 0u, var_2, var_2) | vec4<u32>(var_2, 4294967295u, var_2, 30906u)), ~(~vec4<u32>(1u, var_0.b.e, 4294967295u, var_0.b.d.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    let var_0 = -2151f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, var_0, 192f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -314f, var_0) + vec3<f32>(-1000f, 1754f, -315f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, var_0, var_0))))), abs(u_input.a), var_0, select(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(102234u, 102307u, 47983u, 3316u)), vec4<u32>(func_4(vec3<bool>(arg_1, true, arg_1)).a.e, ~0u, _wgslsmith_add_u32(0u, 1u), 107280u), !(!vec4<bool>(false, arg_1, false, false))), ~29901u), Struct_1(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(2579f - -669f)), 2147483647i, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1000f) * var_0))), vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, ~30657u), _wgslsmith_div_u32(5679u, 59245u), _wgslsmith_mod_u32(func_3(), 1u)), 1u), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 + var_0)), var_0, var_0), vec2<bool>(!arg_1, arg_1), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, var_0, -328f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, var_0, -2015f) + vec3<f32>(-2218f, var_0, -1000f))), 2147483647i, var_0, ~min(vec4<u32>(87990u, 80374u, 4294967295u, 41044u), vec4<u32>(4294967295u, 65461u, 29796u, 0u)), max(4294967295u, min(1057u, 15783u)))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-3339f - _wgslsmith_f_op_f32(675f * -1744f))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), var_1.c.c.c);
    var var_3 = var_0;
    var_3 = _wgslsmith_f_op_f32(abs(1970f));
    return ~arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(-3769i > u_input.a, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(select(true, false, false) || true, true));
    let var_1 = vec2<bool>(true, false);
    var_0 = vec2<bool>(false, true);
    var_0 = var_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1552f, _wgslsmith_f_op_f32(trunc(-234f)), _wgslsmith_f_op_f32(-240f + 1516f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1149f, -864f)) - _wgslsmith_f_op_f32(max(-240f, -380f))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(287f, 698f)) * _wgslsmith_f_op_f32(f32(-1f) * -765f)))), func_5(vec2<i32>((2147483647i >> (0u % 32u)) << (func_1(Struct_2(vec3<f32>(-1478f, -356f, 160f), vec2<bool>(true, var_0.x), Struct_1(vec3<f32>(-1000f, 1152f, -939f), 4802i, -183f, vec4<u32>(3205u, 50001u, 78428u, 23766u), 25449u)), vec4<u32>(4294967295u, 15424u, 1u, 60513u)) % 32u), u_input.a), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -864f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(759f, 1000f)) - 1114f)), -1000f, firstTrailingBit(min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(83356u, 4294967295u, 4294967295u, 25833u))) ^ vec4<u32>(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(5252u, 4294967295u, 4294967295u, 0u), ~vec4<u32>(28831u, 15075u, 53652u, 0u)), 1u), reverseBits(_wgslsmith_sub_u32(~(~41962u), 1u)));
    var_0 = !select(!vec2<bool>(var_0.x, true), var_1, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(175f, var_2.c)))), var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, var_2.d, firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(reverseBits(u_input.a), var_2.b), var_2.b, var_2.b, max(1i, var_2.b))), var_2.b, ~vec3<u32>(1u, ~(~var_2.d.x), ~var_2.e));
}

