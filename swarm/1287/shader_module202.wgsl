struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    return arg_1.d;
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<bool>(any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), all(vec2<bool>(false, false)))), true, any(vec3<bool>(true, true, true)) || false);
    var var_1 = u_input.a;
    let var_2 = ~_wgslsmith_mod_vec3_i32(reverseBits(u_input.b), max(vec3<i32>(u_input.a, u_input.b.x, ~u_input.a), min(-vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, u_input.a))));
    var var_3 = var_0.x;
    var_3 = (54450u < min(~_wgslsmith_clamp_u32(58766u, 0u, 4294967295u), 1u)) & true;
    return select(vec4<bool>(var_0.x & true, var_0.x, !any(vec3<bool>(false, true, false)), false), vec4<bool>(any(var_0), !(firstTrailingBit(17587u) < 4294967295u), !var_0.x, true), any(select(select(select(var_0, var_0, vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), var_0), !vec3<bool>(var_0.x, true, false), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1136f + -104f) * arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f * arg_2))));
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = Struct_1(abs(arg_1.a), 1u, func_3(), 1467f, reverseBits(var_1.a.x) ^ (~min(0i, -40844i) >> (var_2.b % 32u)));
    var_2 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 6614i, var_2.e), vec4<i32>(var_3.a.x, u_input.a, 3540i, var_2.e)), -vec4<i32>(-35883i, var_2.a.x, 48752i, 2385i), vec4<i32>(16098i, -arg_3.e, arg_3.a.x ^ var_2.a.x, _wgslsmith_add_i32(1i, -2147483647i))), vec4<i32>(-1i, -1i, 1i, -18757i)), var_3.b, vec4<bool>(any(!vec4<bool>(true, var_2.c.x, true, false)), var_1.d < 140f, false, !select(!arg_3.c.x, true, arg_3.c.x)), -534f, reverseBits(u_input.b.x));
    return Struct_1(~(vec4<i32>(_wgslsmith_mod_i32(-22784i, -32852i), countOneBits(var_2.a.x), i32(-1i) * -1i, ~u_input.b.x) << ((~vec4<u32>(1u, arg_1.b, arg_3.b, 44847u) >> ((vec4<u32>(4294967295u, var_2.b, arg_1.b, var_2.b) ^ vec4<u32>(17106u, arg_0.x, arg_3.b, var_3.b)) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(arg_1.b), select(vec4<bool>(!all(vec3<bool>(false, true, false)), (1000f < arg_3.d) != any(arg_1.c), func_3().x, true), vec4<bool>(any(select(var_2.c, var_1.c, false)), true, (true && arg_1.c.x) && arg_3.c.x, false), select(!vec4<bool>(arg_1.c.x, var_2.c.x, true, true), vec4<bool>(arg_1.c.x, !arg_1.c.x, var_2.c.x, true), func_3())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f * -329f) - _wgslsmith_f_op_f32(abs(-112f)))))), abs(1i));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(vec4<i32>(~1i >> ((~arg_3.b << (~27126u % 32u)) % 32u), ~arg_2.a.x, _wgslsmith_dot_vec2_i32(u_input.b.yy, ~firstTrailingBit(vec2<i32>(-27572i, -2147483647i))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_3.a.x), arg_0.a.xz) >> (4294967295u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), ~4294967295u) << (_wgslsmith_sub_vec2_u32(vec2<u32>(47484u, 7149u) | vec2<u32>(25723u, arg_3.b), select(vec2<u32>(37390u, arg_3.b), vec2<u32>(arg_3.b, arg_0.b), true)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 37322u) | vec2<u32>(4294967295u, arg_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(29458u, 1870u), vec2<u32>(1u, arg_3.b))), min(~vec2<u32>(0u, 15600u), ~vec2<u32>(1u, 53529u)))), select(!select(!vec4<bool>(true, true, arg_2.c.x, arg_2.c.x), select(vec4<bool>(arg_0.c.x, false, false, arg_2.c.x), arg_0.c, true), func_3()), arg_2.c, vec4<bool>(arg_3.c.x, !(!arg_0.c.x), arg_0.c.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - arg_2.d) - _wgslsmith_div_f32(arg_1, arg_2.d)))), ((arg_2.a.x << (0u % 32u)) & 0i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.a.xxy), ~vec3<i32>(-27496i, arg_0.e, arg_2.a.x)), ~_wgslsmith_dot_vec3_i32(arg_3.a.yxx, arg_3.a.xwx)));
    var var_1 = firstLeadingBit(arg_0.e);
    var var_2 = arg_2.a.x;
    let var_3 = arg_3;
    var var_4 = ~vec4<u32>(max(~1u, var_3.b), max(~18031u, 1215u), ~58816u, ~1u);
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = func_2(~(~select(~vec3<u32>(4294967295u, 4294967295u, 38135u), vec3<u32>(arg_2.b, 16299u, 90863u), func_3().x)), arg_2, arg_1, func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b, 14362u, arg_2.b), vec3<u32>(arg_2.b, arg_2.b, arg_2.b), vec3<u32>(23750u, 93906u, arg_2.b) & vec3<u32>(10246u, 60592u, 1u)) << (vec3<u32>(min(arg_2.b, 0u), 4294967295u | arg_2.b, reverseBits(4294967295u)) % vec3<u32>(32u)), arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(640f * _wgslsmith_f_op_f32(select(arg_1, arg_3.x, arg_0))))), Struct_1(func_2(~vec3<u32>(1u, arg_2.b, arg_2.b), Struct_1(arg_2.a, arg_2.b, vec4<bool>(true, arg_2.c.x, false, arg_0), arg_3.x, -2147483647i), arg_2.d, Struct_1(arg_2.a, 4294967295u, arg_2.c, arg_1, -1i)).a, _wgslsmith_clamp_u32(arg_2.b, 51992u, arg_2.b) & func_2(vec3<u32>(arg_2.b, 18437u, arg_2.b), arg_2, -548f, Struct_1(vec4<i32>(arg_2.a.x, u_input.b.x, u_input.b.x, 6962i), 1u, arg_2.c, 2019f, arg_2.e)).b, !(!vec4<bool>(true, arg_0, false, false)), arg_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(22522i, arg_2.e, arg_2.e), vec3<i32>(u_input.b.x, 3119i, 1i) >> (vec3<u32>(arg_2.b, arg_2.b, arg_2.b) % vec3<u32>(32u))))));
    let var_1 = (_wgslsmith_mod_vec2_i32(-select(vec2<i32>(var_0.e, 1i), vec2<i32>(-42613i, var_0.e), arg_2.c.yx), func_2(vec3<u32>(var_0.b, arg_2.b, 3301u), func_2(vec3<u32>(4294967295u, 1u, 1u), arg_2, arg_3.x, Struct_1(arg_2.a, arg_2.b, arg_2.c, arg_1, -1i)), arg_3.x, arg_2).a.xz) | select(arg_2.a.xz, vec2<i32>(u_input.b.x, 12306i), func_3().xw)) ^ -vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.a.wwx, -u_input.b), _wgslsmith_mod_i32(u_input.b.x, min(u_input.b.x, u_input.a)));
    var var_2 = u_input.a;
    var var_3 = ~(-1i);
    var_2 = _wgslsmith_sub_i32(25239i, _wgslsmith_add_i32(var_0.a.x << (arg_2.b % 32u), _wgslsmith_clamp_i32(abs(arg_2.e), 1i, u_input.b.x & u_input.b.x))) & countOneBits(func_2(abs(vec3<u32>(var_0.b, 57060u, var_0.b)), var_0, 910f, Struct_1(-arg_2.a, ~arg_2.b, select(arg_2.c, var_0.c, true), 717f, -8253i)).e);
    return vec4<bool>(arg_2.c.x, func_3().x, var_0.c.x, false);
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    return Struct_1(arg_2.a, _wgslsmith_sub_u32(31761u, countOneBits(1u)), !arg_2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(arg_2.d - arg_2.d)))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_2.a.zzw, arg_2.a.zzz) >> (0u % 32u), -select(-50653i, arg_2.e, arg_0.x)) & 42095i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 445f;
    var var_1 = func_6(func_5(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-569f, -293f)) + _wgslsmith_f_op_f32(func_1(true, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), 14981u, vec4<bool>(true, true, true, false), 1030f, 2147483647i))))), Struct_1(func_4(func_2(vec3<u32>(0u, 4294967295u, 32540u), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 1i), 26125u, vec4<bool>(true, false, true, true), 1000f, u_input.a), -583f, Struct_1(vec4<i32>(12864i, u_input.a, u_input.a, u_input.a), 3383u, vec4<bool>(true, false, false, false), -1000f, -1884i)), -1687f, Struct_1(vec4<i32>(-31061i, -4205i, u_input.b.x, u_input.b.x), 58946u, vec4<bool>(true, true, true, false), -212f, u_input.a), func_2(vec3<u32>(70988u, 65229u, 47290u), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 1i), 28503u, vec4<bool>(true, true, false, false), 1357f, u_input.b.x), 2299f, Struct_1(vec4<i32>(48964i, -32382i, 2147483647i, u_input.a), 1u, vec4<bool>(true, true, true, true), -1000f, 2147483647i))), 40792u, select(vec4<bool>(false, false, true, false), func_3(), u_input.b.x > 14887i), _wgslsmith_div_f32(214f, -656f), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, 0i), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -1i)), _wgslsmith_sub_i32(-14570i, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-232f, -922f, false)), _wgslsmith_f_op_f32(floor(-218f)), 1f, -558f)), true, func_2(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, 10375u, 0u)), ~(~vec3<u32>(39186u, 62492u, 85455u))), func_2(select(countOneBits(vec3<u32>(4294967295u, 4294967295u, 26270u)), firstTrailingBit(vec3<u32>(11134u, 0u, 27578u)), true), Struct_1(func_4(Struct_1(vec4<i32>(-24559i, 2147483647i, u_input.b.x, u_input.b.x), 1u, vec4<bool>(true, false, false, true), -249f, u_input.b.x), 117f, Struct_1(vec4<i32>(u_input.a, -1212i, 0i, u_input.b.x), 4294967295u, vec4<bool>(false, false, true, true), 783f, 2147483647i), Struct_1(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.a), 4294967295u, vec4<bool>(false, false, true, false), -623f, 2147483647i)), _wgslsmith_div_u32(101854u, 19254u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x), -860f, Struct_1(vec4<i32>(-1i, u_input.a, 0i, 1i) & vec4<i32>(u_input.a, u_input.a, -4438i, u_input.a), max(58042u, 43155u), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), _wgslsmith_div_f32(-414f, 844f), ~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-629f, -551f, false)), _wgslsmith_f_op_f32(trunc(444f))))), func_2(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 53361u), reverseBits(19289u), 1u), func_2(vec3<u32>(29478u, 70838u, 1u), func_2(vec3<u32>(62105u, 4294967295u, 44769u), Struct_1(vec4<i32>(1i, u_input.a, u_input.a, u_input.b.x), 33307u, vec4<bool>(false, false, true, true), -501f, -2147483647i), -1024f, Struct_1(vec4<i32>(2147483647i, 15956i, u_input.a, u_input.a), 18998u, vec4<bool>(false, true, false, false), -425f, u_input.a)), -1000f, Struct_1(vec4<i32>(0i, u_input.a, u_input.b.x, -4737i), 0u, vec4<bool>(true, true, true, false), -651f, 47804i)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 222f), _wgslsmith_f_op_f32(-1756f - -685f))), Struct_1(vec4<i32>(u_input.a, 1i, 1i, 2312i), 29968u, vec4<bool>(true, true, true, true), _wgslsmith_div_f32(516f, -102f), u_input.a >> (0u % 32u)))), select(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(countOneBits(0u), _wgslsmith_mult_u32(4294967295u, 0u), 1u), firstTrailingBit(37991u), ~43027u), _wgslsmith_mult_u32(0u, ~(~24207u)), any(vec4<bool>(true, true, true, false))));
    var var_2 = ~max(vec3<u32>(0u | var_1.b, 1u, ~var_1.b) ^ ~(~vec3<u32>(4294967295u, 35570u, 33209u)), abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, var_1.b, 4294967295u), vec3<u32>(4294967295u, 1939u, 32253u)))));
    var var_3 = -(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) & (var_1.a | vec4<i32>(-var_1.e, u_input.b.x, _wgslsmith_clamp_i32(u_input.a, -127i, -1i), 0i)));
    var_1 = Struct_1(var_1.a, 36489u, var_1.c, -486f, -(~_wgslsmith_mod_i32(41754i, 2147483647i)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(abs(var_1.d)))), 535f, 318f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(27576i, 14176i, u_input.a), var_1.a.zxw)), select(-var_3.x, 11209i, all(!var_1.c.wyz)) >> (~(~(~var_2.x)) % 32u));
}

