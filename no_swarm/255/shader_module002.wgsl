struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = !select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false));
    var var_1 = 10042u;
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.e, 87448u, 0u, u_input.e), vec4<u32>(0u, 1u, 4294967295u, 3344u)) | firstLeadingBit(vec4<u32>(36019u, 4294967295u, u_input.e, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 50328u, 4294967295u, 1u), vec4<u32>(u_input.b, u_input.e, 0u, 1u)) << (~vec4<u32>(60079u, 24016u, 4294967295u, 23430u) % vec4<u32>(32u))), max(vec4<i32>(-u_input.d, u_input.c, u_input.d, -21013i), select(-vec4<i32>(u_input.d, 1i, -91810i, 1i), vec4<i32>(u_input.d, -14206i, u_input.d, u_input.c) << (vec4<u32>(u_input.b, 28432u, u_input.e, u_input.e) % vec4<u32>(32u)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
    var_1 = var_2.a.a.x >> (firstLeadingBit(var_2.a.a.x) % 32u);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(737f)), _wgslsmith_f_op_f32(f32(-1f) * -1100f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1851f + -601f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-415f * 706f), -1701f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f))))));
    return ~(~(~select(~var_2.a.a, var_2.a.a, !vec4<bool>(var_0.x, var_0.x, false, true))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(arg_0.a.a, ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_1, 1i, -6319i, arg_0.a.b.x)), countOneBits(vec4<i32>(arg_0.a.b.x, arg_1, -44342i, -1i)))));
    let var_1 = _wgslsmith_mult_vec4_u32(~arg_0.a.a, ~vec4<u32>(_wgslsmith_div_u32(34960u, arg_2.x), _wgslsmith_clamp_u32(~arg_0.a.a.x, arg_2.x | 1u, var_0.a.a.x ^ 27736u), reverseBits(~0u), select(_wgslsmith_mod_u32(arg_0.a.a.x, 1956u), _wgslsmith_add_u32(var_0.a.a.x, u_input.b), true)));
    var_0 = Struct_3(Struct_1(func_3(), arg_0.a.b));
    let var_2 = vec2<f32>(274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)))));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-38934i, 85074i, u_input.d, 2147483647i), arg_0.a.b) << (arg_0.a.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, u_input.d, arg_1), var_0.a.b, arg_0.a.b), abs(vec4<i32>(arg_1, var_0.a.b.x, 11263i, arg_0.a.b.x)))), i32(-1i) * -2147483647i, abs(_wgslsmith_dot_vec3_i32(arg_0.a.b.www, var_0.a.b.zyz) ^ ~u_input.d)), vec3<i32>(var_0.a.b.x, ~min(u_input.c & 1i, _wgslsmith_mult_i32(1i, -1276i)), -2147483647i), var_0.a.b.wxx);
    return arg_2;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = true;
    var_0 = arg_0;
    var_0 = true;
    var var_1 = vec4<u32>(7757u, firstTrailingBit(u_input.e), 4294967295u, u_input.b);
    var var_2 = Struct_1(func_4(Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 8463u, 41910u, 1u), vec4<u32>(u_input.e, var_1.x, 23283u, var_1.x)), vec4<i32>(u_input.d, 1i, -19461i, u_input.d) | vec4<i32>(11200i, -28907i, -2147483647i, 16273i))), ~_wgslsmith_sub_i32(~0i, u_input.c), _wgslsmith_sub_vec4_u32(func_3(), ~(~vec4<u32>(4294967295u, 0u, var_1.x, u_input.b)))), select(~firstLeadingBit(-vec4<i32>(55021i, u_input.d, 1i, -2147483647i)), ~(-vec4<i32>(u_input.d, u_input.c, u_input.d, 31592i)), vec4<bool>(arg_0, select(!arg_0, arg_0, arg_0), true, arg_0)));
    return u_input.d;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = !select(vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true, _wgslsmith_clamp_u32(4294967295u, u_input.e, 0u) >= _wgslsmith_div_u32(u_input.a, 1u)), vec3<bool>(true, any(vec3<bool>(false, false, true)) || true, false), true);
    var var_1 = vec4<u32>(40551u << (_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, u_input.e), select(vec2<u32>(4294967295u, 53050u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), arg_1.a.xz), false)) % 32u), 1u, ~u_input.b, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, arg_1.a.x), ~arg_1.a.x));
    var_1 = vec4<u32>(arg_1.a.x, ~(~max(arg_1.a.x ^ u_input.b, 65334u)), 4294967295u, _wgslsmith_add_u32(u_input.a, ~arg_1.a.x));
    let var_2 = select(select(select(select(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), vec4<bool>(var_0.x, false, true, true)), !select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), false), vec4<bool>(false, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true & var_0.x, true), !select(vec4<bool>(false, false, false, true), !vec4<bool>(false, true, false, var_0.x), !var_0.x)), vec4<bool>(!((var_0.x | var_0.x) || var_0.x), var_0.x, func_3().x > var_1.x, true), !(!select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(true, var_0.x, false, var_0.x))));
    let var_3 = Struct_3(arg_1);
    return Struct_2(vec3<bool>(var_2.x, select(any(vec2<bool>(var_2.x, var_0.x)), (arg_1.b.x <= var_3.a.b.x) | true, _wgslsmith_f_op_f32(arg_2 - 410f) != _wgslsmith_f_op_f32(-arg_2)), true), reverseBits(vec4<u32>(31011u, 0u, ~u_input.b, 1u << (~var_3.a.a.x % 32u))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = func_5(u_input.c, Struct_1(vec4<u32>(~1u >> (_wgslsmith_mult_u32(u_input.b, 4294967295u) % 32u), 1u, u_input.a, select(u_input.b, u_input.e >> (u_input.e % 32u), any(arg_0))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c << (u_input.a % 32u), -2147483647i, _wgslsmith_mod_i32(u_input.c, u_input.c), -2147483647i), vec4<i32>(-49978i, func_2(arg_0.x), u_input.c, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(floor(-462f)))));
    let var_1 = 1f;
    var var_2 = ~vec3<u32>(var_0.b.x, firstTrailingBit(min(38467u, var_0.b.x) << (u_input.a % 32u)), var_0.b.x);
    var_2 = vec3<u32>(_wgslsmith_mult_u32(func_3().x, u_input.b), 1u, 1u);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -1990f)) + _wgslsmith_f_op_f32(sign(2602f))), _wgslsmith_f_op_f32(-var_1));
    return ~_wgslsmith_sub_vec4_u32(~((var_0.b & vec4<u32>(var_2.x, 20315u, u_input.e, 4294967295u)) >> (func_5(2147483647i, Struct_1(vec4<u32>(0u, 109670u, u_input.a, 1u), vec4<i32>(u_input.d, 0i, u_input.d, -22853i)), -1209f).b % vec4<u32>(32u))), ~(~(var_0.b >> (vec4<u32>(4294967295u, u_input.a, var_2.x, var_2.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec4<u32>(84535u, _wgslsmith_mult_u32(u_input.b >> (0u % 32u), 10367u), u_input.b ^ ~u_input.e, ~0u) | _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, 64061u, 4294967295u, 291u), select(vec4<u32>(1u, u_input.b, 41020u, u_input.e), vec4<u32>(1u, 0u, u_input.e, 0u), false), vec4<bool>(true, true, false, true)), max(vec4<u32>(u_input.b, 66687u, u_input.a, u_input.e), func_1(vec2<bool>(false, true))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e, 99044u, 8967u), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b)))) >> (firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.b), abs(4294967295u), func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), true)).x, 0u)) % vec4<u32>(32u));
    var var_1 = func_5(-27275i, Struct_1(func_3(), ~vec4<i32>(u_input.c, 1i, max(u_input.d, 0i), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-239f - -1727f), _wgslsmith_f_op_f32(1000f * 1596f), true))))));
    var var_2 = reverseBits(func_4(Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, var_0.x, 31970u, u_input.e), vec4<u32>(var_0.x, u_input.a, var_0.x, 0u)), -vec4<i32>(1i, u_input.c, 0i, u_input.c))), -(u_input.d >> (firstLeadingBit(33240u) % 32u)), ~(~vec4<u32>(1u, 0u, 1u, 1u))).x);
    var_1 = func_5(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, ~1227i), firstTrailingBit(-15958i)), Struct_1(reverseBits(var_1.b), (_wgslsmith_add_vec4_i32(vec4<i32>(-473i, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, u_input.d, -49796i, -1i)) ^ ~vec4<i32>(u_input.c, 39240i, u_input.c, 57074i)) >> (func_3() % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2069f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1216f + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-587f)))))));
    let var_3 = func_5(abs(u_input.d << (countOneBits(var_1.b.x) % 32u)) | u_input.c, Struct_1(select(vec4<u32>(23796u, abs(57472u), 16248u, abs(4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(89562u, u_input.a, 64003u, 1u), ~vec4<u32>(1u, var_1.b.x, 0u, var_1.b.x)), true), select(vec4<i32>(-1i) * -vec4<i32>(1i, -49948i, u_input.c, 1i), reverseBits(~vec4<i32>(2553i, u_input.d, 1i, -1i)), var_1.a.x && true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1444f - 211f), _wgslsmith_f_op_f32(-1000f + 316f)) + -1320f))));
    let var_4 = Struct_3(Struct_1(~(~var_3.b >> (select(var_1.b, var_3.b, vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x)) % vec4<u32>(32u))), -(vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, -1i, u_input.d))));
    let var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(i32(-1i) * -2147483647i), 0i, u_input.c));
}

