struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(true, max(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -1i, -20640i, -8797i), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -9620i, -2147483647i), vec3<i32>(0i, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(2723i, 14185i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 38679i, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i)), ~vec3<i32>(-43020i, 61027i, -12087i)))), false, ~(~select(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(0u, u_input.c.x, 4294967295u), true)) << (_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(61868u, 1u, 4294967295u), vec3<u32>(23287u, 1u, u_input.c.x)), countOneBits(~vec3<u32>(u_input.a.x, u_input.c.x, 26535u))) % vec3<u32>(32u)));
    var var_1 = Struct_4(Struct_2(_wgslsmith_sub_i32(min(2147483647i, -2147483647i), u_input.b) >= ~min(u_input.b, u_input.b), ~var_0.b, !all(!vec4<bool>(var_0.a, true, true, var_0.c)), max(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), var_0.d << (vec3<u32>(1u, u_input.a.x, 45022u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(var_0.d, var_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -476f), var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1712f, -754f, -539f, -1116f) + vec4<f32>(-129f, -1213f, -900f, -1113f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-994f, 400f, -733f, 444f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, 117f, -372f, 332f)))))))));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(~(~2548u)), 1u), 1u, var_0.d.x & ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, 22552u, 0u), var_0.d), u_input.c.x ^ 32913u));
    var_1 = Struct_4(Struct_2(var_0.c, vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, var_1.c.b.x), true, ~vec3<u32>(1u ^ var_2.x, max(var_1.c.d.x, 67750u), ~var_0.d.x)), _wgslsmith_f_op_f32(-1763f + _wgslsmith_f_op_f32(f32(-1f) * -568f)), var_1.c, _wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x, 1986f, var_1.d.x)));
    var var_3 = (var_0.b.x | -1i) >> (firstTrailingBit(u_input.c.x) % 32u);
    return !(!(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, true), !var_0.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    var var_0 = firstLeadingBit(vec2<u32>(~(~0u), ~(13065u << (1u % 32u)))) << (~vec2<u32>(~7563u, u_input.a.x) % vec2<u32>(32u));
    var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(firstTrailingBit(arg_1.d.x) >> (arg_1.d.x % 32u), var_0.x), abs(firstLeadingBit(_wgslsmith_clamp_vec2_u32(~u_input.c, arg_1.d.zx, u_input.c))));
    var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_1.d.x, u_input.a.x), 4294967295u), u_input.a);
    var_0 = abs(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.d), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 67543u, 1u)), vec3<u32>(20286u, 68760u, 56637u))), u_input.c.x));
    var_0 = abs(~(~vec2<u32>(0u, arg_1.d.x))) ^ _wgslsmith_add_vec2_u32(arg_1.d.zx, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(21359u, 0u)), 4294967295u), u_input.a));
    return false;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = 1000f;
    let var_1 = !(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))));
    var var_2 = Struct_4(Struct_2(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -7102i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, arg_0, -2147483647i), vec4<i32>(arg_0, 1i, -1628i, u_input.b))), Struct_2(true, min(vec3<i32>(2147483647i, 33223i, arg_0), vec3<i32>(arg_0, u_input.b, -1i)), !var_1.x, vec3<u32>(4294967295u, u_input.a.x, 108725u)), func_3()), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, -2147483647i, u_input.b), ~(vec3<i32>(u_input.b, -58611i, u_input.b) ^ vec3<i32>(12580i, -2147483647i, 0i))), var_1.x, max(vec3<u32>(53430u | u_input.a.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 13109u), max(~vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x), vec3<u32>(83691u, 80877u, u_input.a.x), vec3<u32>(45961u, 0u, 1u))))), -607f, Struct_2(false, -vec3<i32>(_wgslsmith_div_i32(-2147483647i, arg_0), arg_0, -u_input.b), true & (_wgslsmith_f_op_f32(f32(-1f) * -214f) >= _wgslsmith_f_op_f32(round(-1338f))), min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12536u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 21033u, u_input.c.x, u_input.c.x)), u_input.a.x, ~u_input.a.x), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(66004u, u_input.c.x, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 20397u))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f + -1118f)), 637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1533f) + _wgslsmith_f_op_f32(step(-434f, -445f)))))));
    var_2 = Struct_4(Struct_2(arg_0 != u_input.b, vec3<i32>(-44587i, _wgslsmith_mult_i32(reverseBits(arg_0), 29916i), i32(-1i) * -1364i), any(vec4<bool>(false, 82396u == var_2.a.d.x, var_1.x, all(vec3<bool>(var_1.x, false, var_1.x)))), var_2.c.d), -1067f, var_2.c, vec4<f32>(1048f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-710f, _wgslsmith_f_op_f32(var_2.d.x * -133f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1167f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) + var_2.d.x)));
    var_0 = -1000f;
    return var_1;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = 1i;
    let var_1 = Struct_4(Struct_2(true, select(select(-vec3<i32>(0i, u_input.b, 0i), vec3<i32>(u_input.b, 6752i, u_input.b) << (vec3<u32>(17663u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)), vec3<bool>(true, false, arg_0)), vec3<i32>(u_input.b >> (754u % 32u), i32(-1i) * -61675i, _wgslsmith_dot_vec4_i32(vec4<i32>(-31551i, -11206i, u_input.b, -25234i), vec4<i32>(u_input.b, 18724i, u_input.b, 2147483647i))), arg_1.a.x), !func_4(~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), Struct_2(false, vec3<i32>(-30561i, u_input.b, u_input.b), false, vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x)), vec2<bool>(arg_0, arg_1.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, 11893u, 4294967295u ^ u_input.c.x), ~(~vec3<u32>(53074u, 67897u, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -975f), Struct_2(false, max(min(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -87663i)), -vec3<i32>(u_input.b, u_input.b, -12243i)), vec3<i32>(2147483647i, ~(-2147483647i), 0i)), true, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 1u, u_input.a.x)), firstTrailingBit(vec3<u32>(u_input.c.x, 26264u, 1u))) >> (vec3<u32>(u_input.c.x, u_input.c.x, min(0u, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, 234f, -949f, -105f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2455f, -676f, 468f, 942f) + vec4<f32>(666f, 100f, -171f, 752f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.d.zz)));
    let var_3 = vec2<i32>(28405i, var_1.a.b.x) | var_1.c.b.zx;
    let var_4 = firstTrailingBit(~vec4<i32>(var_3.x, _wgslsmith_div_i32(-49782i, var_1.c.b.x), 1i, abs(-2147483647i))) ^ vec4<i32>(1i, 1i, 1i, 1i);
    return !select(!select(vec3<bool>(var_1.c.c, true, var_1.c.a), func_2(u_input.b), arg_1.b), !vec3<bool>(true, arg_0, true), !(!(!arg_1.b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(!vec2<bool>(arg_0.c, true), !func_5(any(!vec4<bool>(true, false, false, arg_0.a)), Struct_1(!vec2<bool>(arg_0.c, arg_0.c), func_2(u_input.b), select(vec2<bool>(arg_0.c, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a))), select(vec2<bool>(true & arg_0.a, true), func_5(arg_0.a, Struct_1(vec2<bool>(true, true), vec3<bool>(true, arg_0.c, true), func_3())).zz, func_2(arg_0.b.x).xy));
    let var_1 = u_input.c.x;
    var var_2 = Struct_5(countOneBits(abs(vec3<i32>(arg_0.b.x ^ u_input.b, arg_0.b.x, ~11930i))), Struct_3((~vec4<i32>(1i, -21496i, 1i, 44726i) & abs(vec4<i32>(4903i, u_input.b, arg_0.b.x, arg_0.b.x))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, u_input.b, -2147483647i, 2147483647i), vec4<i32>(arg_0.b.x, 2147483647i, -1i, arg_0.b.x), vec4<i32>(arg_0.b.x, 0i, -1i, u_input.b) | vec4<i32>(2147483647i, -2147483647i, -1i, arg_0.b.x)), ~_wgslsmith_mult_u32(0u, ~var_1), true, Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), var_0.a), !vec3<bool>(true, arg_0.a, var_0.b.x), select(vec2<bool>(false, var_0.c.x), !vec2<bool>(false, arg_0.a), func_5(var_0.a.x, Struct_1(var_0.c, var_0.b, var_0.a)).xz))), Struct_4(Struct_2(func_4(vec4<i32>(arg_0.b.x, 20059i, -18239i, arg_0.b.x), arg_0, var_0.b.zz) & (true || var_0.b.x), ~reverseBits(vec3<i32>(20980i, arg_0.b.x, u_input.b)), true, abs(max(arg_0.d, vec3<u32>(u_input.c.x, 38841u, 26599u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), 2676f), arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(565f, arg_1.x, 1177f, 513f) * vec4<f32>(arg_1.x, -2174f, arg_1.x, arg_1.x)), var_0.c.x))), Struct_4(arg_0, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, 338f, 1383f, arg_1.x) * vec4<f32>(2112f, -964f, 578f, arg_1.x))))));
    let var_3 = Struct_2(var_2.a.x == -_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_2.d.c.b.x, 2147483647i), u_input.b), arg_0.b, !var_0.b.x | func_5(-8918i >= _wgslsmith_mult_i32(u_input.b, arg_0.b.x), Struct_1(!var_2.b.d.b.xx, !vec3<bool>(true, var_2.b.c, var_2.b.c), vec2<bool>(var_0.a.x, true))).x, arg_0.d);
    let var_4 = var_2.b.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, func_1(Struct_2(false, vec3<i32>(29028i, -68479i, u_input.b), false, vec3<u32>(u_input.a.x, 0u, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1049f, 564f) - vec2<f32>(-1000f, 733f)))), func_5(~27311u == ~u_input.c.x, Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), func_2(u_input.b).zx)), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, func_3().x), vec3<bool>(u_input.b <= 0i, true, true), !(u_input.c.x != u_input.c.x)), func_5(true, Struct_1(vec2<bool>(false, false), func_5(false, Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<bool>(false, false))), vec2<bool>(true, true)))), true);
    var var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(abs(~u_input.c.x), u_input.c.x, 1u), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c.x, 1u, 78505u)), (vec3<u32>(76708u, 44504u, 0u) >> (vec3<u32>(u_input.a.x, 4294967295u, 60715u) % vec3<u32>(32u))) & ~vec3<u32>(114418u, 53824u, 428u)), ~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 91953u, u_input.c.x), 44338u, u_input.c.x)));
    let var_2 = 27902u ^ u_input.a.x;
    var_1 = _wgslsmith_add_vec3_u32(~countOneBits(~select(vec3<u32>(1u, u_input.c.x, 53376u), vec3<u32>(var_1.x, 1855u, 105380u), vec3<bool>(false, var_0.x, var_0.x))), _wgslsmith_sub_vec3_u32(reverseBits(abs(vec3<u32>(var_1.x, u_input.a.x, 48951u)) | ~vec3<u32>(4294967295u, u_input.a.x, var_1.x)), (vec3<u32>(1u, var_1.x, 7052u) << ((vec3<u32>(4294967295u, 0u, 15592u) << (vec3<u32>(1u, 1922u, var_2) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(var_1.x, var_1.x, _wgslsmith_dot_vec2_u32(var_1.zx, u_input.a))));
    var var_3 = Struct_5(vec3<i32>(_wgslsmith_sub_i32(min(u_input.b, 2147483647i), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 24331i, 9318i), vec3<i32>(u_input.b, 1i, u_input.b) << (vec3<u32>(var_1.x, var_2, var_2) % vec3<u32>(32u))) | _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, 1204i), vec4<i32>(-2147483647i, 26242i, -28491i, 51660i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.b, -14058i, u_input.b), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, 38456i), vec4<i32>(10760i, u_input.b, 9697i, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), Struct_3(-(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(1u, u_input.a.x, 23385u, var_2) % vec4<u32>(32u))) >> (~(~vec4<u32>(var_1.x, u_input.c.x, 23157u, 4294967295u)) % vec4<u32>(32u)), ~var_2, var_0.x, Struct_1(vec2<bool>(true || var_0.x, false), vec3<bool>(false, false, var_0.x), vec2<bool>(!var_0.x, true))), Struct_4(Struct_2(true, min(vec3<i32>(u_input.b, u_input.b, u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.b, 1i))), !func_5(false, Struct_1(var_0.yx, vec3<bool>(var_0.x, var_0.x, true), vec2<bool>(true, false))).x, ~(vec3<u32>(0u, 0u, 53519u) & vec3<u32>(21977u, var_2, 1u))), -517f, Struct_2(func_1(Struct_2(var_0.x, vec3<i32>(u_input.b, u_input.b, u_input.b), true, vec3<u32>(u_input.c.x, 0u, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(423f, 1000f) - vec2<f32>(-1213f, -1384f))), -vec3<i32>(-60555i, -2147483647i, -3457i), func_3().x, ~_wgslsmith_add_vec3_u32(vec3<u32>(79325u, 27575u, 70785u), vec3<u32>(var_2, 0u, u_input.a.x))), vec4<f32>(598f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-652f + -141f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - 1362f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(f32(-1f) * -214f)))), Struct_4(Struct_2(var_0.x, min(vec3<i32>(u_input.b, u_input.b, 37670i) << (vec3<u32>(var_1.x, var_1.x, 0u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -9112i, u_input.b), vec3<i32>(-2147483647i, 26369i, 2147483647i))), true, ~firstTrailingBit(vec3<u32>(0u, 4294967295u, 49224u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(132f)) + _wgslsmith_div_f32(-322f, 1226f)) + -1317f), Struct_2(var_0.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, -23841i), vec4<i32>(u_input.b, u_input.b, u_input.b, -32510i)), _wgslsmith_mod_i32(15258i, u_input.b), ~(-1i)), false, vec3<u32>(u_input.a.x | 0u, _wgslsmith_dot_vec2_u32(var_1.yx, vec2<u32>(41135u, u_input.c.x)), ~21115u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, -2054f, 1000f, 465f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1261f, 442f, 373f, 791f))), select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_3.c.c.d.zy, vec2<u32>(1u, var_1.x)), u_input.c) ^ _wgslsmith_div_vec2_u32(u_input.a, ~var_3.c.c.d.zx)), vec4<u32>(1u, u_input.c.x, _wgslsmith_div_u32(var_2, ~var_1.x), _wgslsmith_div_u32(u_input.a.x, var_2)));
}

