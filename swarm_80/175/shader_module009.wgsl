struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    return -1502f;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = -2147483647i;
    var var_2 = -_wgslsmith_add_i32(33558i, -1i) | var_0.b.x;
    var_0 = arg_0;
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.a, arg_0.a), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, arg_1, var_0.a.x), arg_0.a) & var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.a.x, 20751u), select(vec4<u32>(20360u, arg_2, var_0.a.x, 1u), vec4<u32>(arg_2, arg_1, u_input.c.x, 0u), vec4<bool>(true, false, true, false))), reverseBits(min(vec4<u32>(arg_2, 0u, 10181u, 21285u), vec4<u32>(4440u, 1u, 14712u, u_input.c.x)))), ~vec4<u32>(0u & u_input.c.x, abs(0u), arg_1 >> (var_0.a.x % 32u), ~u_input.a.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)) * 999f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = 40436u;
    var_0 = 4294967295u;
    var_0 = countOneBits(1u) | ~u_input.a.x;
    let var_1 = _wgslsmith_dot_vec2_u32(~arg_3.yx, u_input.c.xw) & arg_2.a;
    var var_2 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, arg_2.a, u_input.c.x, 0u) << (arg_3 % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, u_input.c.x, arg_3.x, u_input.a.x), select(vec4<u32>(17165u, u_input.c.x, var_1, u_input.a.x), u_input.c, true))), (arg_3 << (vec4<u32>(2901u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(select(arg_3, arg_3, false), vec4<u32>(arg_2.a, 4294967295u, arg_2.a, 4294967295u)), !any(vec2<bool>(true, true))), ~(~abs(abs(u_input.c))));
    return Struct_4(Struct_3(Struct_1(vec3<i32>(-2147483647i, -arg_2.b.x, -32278i), false, all(vec2<bool>(true, true)), min(arg_2.b.yx, vec2<i32>(u_input.d, 6099i)) | reverseBits(arg_2.b.zx), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, arg_3), u_input.c.x, arg_3.x, var_1)), Struct_1(arg_2.b, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_2()) >= _wgslsmith_f_op_f32(1051f * 1000f), arg_2.b.zz, min(vec4<u32>(4294967295u, var_1, u_input.c.x, arg_2.a), u_input.c)), Struct_1(vec3<i32>(u_input.b, 1i >> (1u % 32u), select(33891i, arg_2.b.x, false)), _wgslsmith_div_f32(arg_1, arg_0.x) < -381f, true, vec2<i32>(firstLeadingBit(arg_2.b.x), u_input.b), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, arg_2.a, var_1, u_input.a.x), vec4<u32>(u_input.c.x, var_1, 18216u, arg_3.x)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23903u), vec2<u32>(4294967295u, 0u)), 0u)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(arg_3, arg_2.b), 17292u, var_1))))), Struct_3(Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 14506i, 24390i), vec3<i32>(0i, u_input.b, u_input.b)), !(arg_0.x < 342f), false, vec2<i32>(~0i, u_input.d), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, 68449u, 35409u, u_input.c.x), u_input.c), ~arg_3)), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_2.b), ~arg_2.b), true, false, ~(~vec2<i32>(0i, -2147483647i)), max(~arg_3, arg_3)), Struct_1(vec3<i32>(abs(u_input.d), -1184i, arg_2.b.x << (var_1 % 32u)), all(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, false)), arg_2.b.yx, vec4<u32>(_wgslsmith_mod_u32(arg_2.a, var_1), var_2.x, firstLeadingBit(arg_3.x), u_input.a.x)), vec2<bool>(true, ~u_input.c.x >= 0u)), _wgslsmith_f_op_f32(-arg_1), Struct_3(Struct_1(vec3<i32>(-1i) * -arg_2.b, false, all(vec3<bool>(false, false, false)), vec2<i32>(-u_input.b, arg_2.b.x), ~u_input.c), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_2.b.x, -10424i), vec3<i32>(-14395i, 28920i, -2147483647i)), all(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true)), select(-arg_2.b.xy, -arg_2.b.xy, select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec4<u32>(arg_2.a, ~79510u, abs(u_input.c.x), var_1 & arg_2.a)), Struct_1(arg_2.b | vec3<i32>(6462i, u_input.d, -1i), true, false, vec2<i32>(~u_input.d, u_input.d), u_input.a), select(vec2<bool>(1793f >= arg_1, any(vec3<bool>(true, true, false))), vec2<bool>(true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_5 {
    let var_0 = false;
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-142f, -1326f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_3(Struct_5(~vec4<u32>(30359u, 10034u, 38088u, 8815u), arg_1.c.a), ~0u, countOneBits(12825u))), Struct_2(u_input.c.x & reverseBits(0u), arg_1.b.a), ~((~vec4<u32>(arg_1.a.e.x, 14449u, 13435u, 13098u) & u_input.a) | arg_1.c.e));
    let var_2 = 34305u;
    var_1 = Struct_4(func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(-735f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_1.d + var_1.b)), func_4(vec3<f32>(-1917f, var_1.d, -740f), _wgslsmith_f_op_f32(var_1.b - var_1.b), Struct_2(u_input.c.x, arg_1.a.a), max(vec4<u32>(16491u, var_2, 1u, 4294967295u), var_1.e.a.e)).b), -258f, Struct_2(1u, vec3<i32>(0i | arg_1.a.d.x, var_1.c.c.d.x, i32(-1i) * -31535i)), arg_1.c.e).c, var_1.b, func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, 298f)), -401f, _wgslsmith_f_op_f32(var_1.b - var_1.d)), 1367f, Struct_2(u_input.a.x, firstLeadingBit(var_1.e.b.a << (u_input.a.xwx % vec3<u32>(32u)))), vec4<u32>(~13736u, ~min(1u, 0u), _wgslsmith_clamp_u32(~arg_1.a.e.x, arg_1.a.e.x, u_input.c.x), select(_wgslsmith_mod_u32(var_2, var_2), u_input.a.x, true))).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-135f - -254f), -126f)), var_1.c);
    var var_3 = !arg_0.zxx;
    return Struct_5(firstTrailingBit(u_input.a), ~(-arg_1.b.a));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_5) -> i32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = true;
    var_0 = !select(!select(vec2<bool>(false, var_1), vec2<bool>(true, true), !vec2<bool>(var_0.x, var_1)), select(vec2<bool>(select(false, var_1, var_0.x), var_1 | var_1), vec2<bool>(true, true), vec2<bool>(!var_1, 4294967295u <= arg_2.a.x)), select(func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(221f, 1159f, -1309f))), _wgslsmith_f_op_f32(f32(-1f) * -1533f), Struct_2(arg_2.a.x, arg_2.b), ~vec4<u32>(u_input.c.x, 4294967295u, 17087u, arg_2.a.x)).a.d, func_4(vec3<f32>(1000f, -121f, -426f), -119f, Struct_2(66367u, vec3<i32>(arg_2.b.x, u_input.b, u_input.b)), u_input.c).c.d, select(arg_1.x, 0i, false) >= -28495i));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1694f, 1166f)), _wgslsmith_f_op_f32(step(2193f, -267f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(max(-985f, -1102f)))))));
    var_0 = vec2<bool>(true, var_1);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(~abs(-u_input.d));
    var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d, func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-54410i, u_input.d)), vec2<i32>(u_input.d, u_input.d), func_1(vec4<bool>(true, false, false, false), Struct_3(Struct_1(vec3<i32>(-19204i, u_input.d, u_input.d), true, false, vec2<i32>(u_input.b, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 3285u)), Struct_1(vec3<i32>(u_input.d, u_input.d, 2147483647i), true, true, vec2<i32>(-2498i, u_input.d), vec4<u32>(20872u, 80166u, u_input.a.x, u_input.c.x)), Struct_1(vec3<i32>(26198i, -24567i, 0i), true, false, vec2<i32>(1i, u_input.b), vec4<u32>(u_input.a.x, 1031u, 63396u, 53686u)), vec2<bool>(false, false)))), select(-5968i, -7860i, false) >> ((u_input.c.x >> (u_input.a.x % 32u)) % 32u), -(u_input.d << (u_input.a.x % 32u)))), vec4<i32>(~u_input.d << (countOneBits(abs(u_input.a.x)) % 32u), select(~(-18455i), firstTrailingBit(~u_input.b), false), u_input.d, -1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-733f, -341f)), 1f, _wgslsmith_f_op_f32(max(-947f, -1290f)), _wgslsmith_f_op_f32(trunc(119f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1421f, 307f, 898f, 1138f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-382f, -1834f, 166f, 1000f)))))))));
    var var_2 = 22899i;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(123f, 1851f, -1000f, var_1.x) * vec4<f32>(-4042f, var_1.x, 513f, -1342f)))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, 814f, 1062f))))))));
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(var_1.zxx * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -938f)) - vec3<f32>(var_1.x, -367f, 401f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 637f, -1029f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)))), 1716f, Struct_2(func_1(vec4<bool>(true, false, any(vec4<bool>(false, true, true, false)), select(false, false, true)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(259f, var_1.x, 378f) * vec3<f32>(var_1.x, -1101f, 1000f)), -1159f, Struct_2(4294967295u, vec3<i32>(u_input.b, u_input.b, 1i)), _wgslsmith_sub_vec4_u32(u_input.a, u_input.c)).e).a.x, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d, u_input.b, u_input.b), ~vec3<i32>(32069i, u_input.d, -11384i))), vec4<u32>(min(~(~u_input.a.x), 16038u << ((27873u & u_input.a.x) % 32u)), select(firstLeadingBit(~u_input.a.x), select(35307u, 4294967295u, false) >> (~u_input.c.x % 32u), 1i != ~u_input.d), u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 15926u), u_input.c.yz), ~(firstTrailingBit(3832u) & u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) - var_1.ww));
}

