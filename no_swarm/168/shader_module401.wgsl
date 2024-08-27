struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_3(abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(38772i, -27431i), vec2<i32>(1i, 1i)) << (((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(16210u, u_input.a)) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.a, Struct_1(~firstLeadingBit(~vec3<u32>(4294967295u, u_input.a, u_input.a))));
    var var_1 = Struct_5(!vec4<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec3<bool>(true, false, false)) || true, !all(vec2<bool>(true, true))), _wgslsmith_mult_u32(u_input.a, (u_input.a | 0u) ^ 75424u), Struct_1(vec3<u32>(var_0.c.a.x, var_0.b, u_input.a)));
    var_1 = Struct_5(var_1.a, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(34778u, ~u_input.a), _wgslsmith_sub_u32(58929u, select(var_0.b, _wgslsmith_sub_u32(var_1.c.a.x, 4294967295u), !var_1.a.x)), _wgslsmith_sub_u32(abs(var_0.b ^ u_input.a), var_1.c.a.x)), var_1.c);
    var_1 = Struct_5(!vec4<bool>(true, true, true, !var_1.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~u_input.a), ~var_1.c.a.yz << (var_0.c.a.zy % vec2<u32>(32u))), Struct_1(~(~select(var_1.c.a, var_0.c.a, var_1.a.x))));
    var_1 = Struct_5(select(vec4<bool>(true, all(vec4<bool>(true, false, var_1.a.x, var_1.a.x)) | all(var_1.a.wzx), select(true, var_1.c.a.x > 1u, true), var_0.a.x >= 1i), !(!(!vec4<bool>(var_1.a.x, false, true, var_1.a.x))), var_1.a), ~countOneBits(u_input.a & ~1u), Struct_1(~(~abs(var_0.c.a))));
    return false;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(~vec2<i32>(~1i, 1i), _wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(f32(-1f) * -585f)), vec4<bool>(false, func_3(), (abs(1u) | ~u_input.a) > (u_input.a & ~u_input.a), false));
    var_0 = Struct_4(_wgslsmith_clamp_vec2_i32(reverseBits(~firstTrailingBit(vec2<i32>(-1i, -11174i))), vec2<i32>(firstTrailingBit(1926i ^ var_0.a.x), ~(~var_0.a.x)), var_0.a), var_0.b, vec4<bool>(!var_0.c.x, var_0.c.x, true, false));
    let var_1 = select(!(!(!(!var_0.c.zyx))), select(vec3<bool>(select(var_0.b <= -566f, true, !var_0.c.x), true, var_0.c.x), var_0.c.xxy, vec3<bool>(!func_3(), false, var_0.c.x)), all(var_0.c.wy));
    var var_2 = Struct_1(abs(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 23188u, u_input.a), vec3<u32>(u_input.a, 5908u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a)) | (vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -478f, 439f, var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, -2411f, var_0.b, var_0.b)) * vec4<f32>(230f, var_0.b, -1357f, var_0.b)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, var_0.b, var_0.b, -1505f), vec4<f32>(-1236f, var_0.b, -1002f, var_0.b))), vec4<f32>(var_0.b, var_0.b, -1085f, 2548f), vec4<bool>(true, false, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, 596f, 1187f, var_0.b)))))));
    return Struct_2(Struct_1(var_2.a), 35621i);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    var var_1 = _wgslsmith_mod_u32(arg_1.a.a.x, reverseBits(select(_wgslsmith_sub_u32(u_input.a, 33264u), arg_1.a.a.x, true))) & ~abs(~arg_1.a.a.x);
    let var_2 = min(i32(-1i) * -11638i, arg_1.b);
    var var_3 = !vec2<bool>(!(func_3() != false), true);
    var var_4 = all(vec4<bool>(true, true, select(reverseBits(arg_0) >= (1u << (arg_0 % 32u)), true, all(vec2<bool>(var_3.x, var_3.x))), true));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a.a.x, 1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a, abs(10917u)), 1u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.a.x, ~arg_0, u_input.a | arg_0, 1u & arg_0), firstTrailingBit(vec4<u32>(u_input.a, arg_0, arg_0, 55833u) << (vec4<u32>(10259u, 1u, 4294967295u, 88259u) % vec4<u32>(32u)))), abs(vec4<u32>(4294967295u, arg_1.a.a.x, u_input.a, 4294967295u) & vec4<u32>(arg_1.a.a.x, 50486u, 22748u, 1u)) << (vec4<u32>(select(arg_0, 49302u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(33449u, u_input.a, 15055u, u_input.a), vec4<u32>(arg_0, u_input.a, 1u, 15323u)), 2093u, firstTrailingBit(arg_0)) % vec4<u32>(32u)));
}

fn func_5(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1145f)) + _wgslsmith_f_op_f32(904f * -193f))))), 567f);
    var_0 = -969f;
    return Struct_3(max(~vec2<i32>(-1i, ~2147483647i), -firstLeadingBit(reverseBits(vec2<i32>(2147483647i, 2147483647i)))), ~1u, func_2().a);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    let var_0 = func_5(func_4(4294967295u, func_2()));
    var var_1 = vec3<i32>(var_0.a.x, -11348i, -34948i);
    let var_2 = _wgslsmith_f_op_f32(min(337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))) + _wgslsmith_f_op_f32(f32(-1f) * -888f))));
    var var_3 = func_4(min(~(~u_input.a), ~u_input.a), Struct_2(func_2().a, 60172i));
    var var_4 = countOneBits(~0u);
    return func_5(var_0.b | countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec3<bool>(true, false, select(true, select(true, true, true), any(vec4<bool>(true, true, true, true))))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1245f, _wgslsmith_f_op_f32(f32(-1f) * -143f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2400f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(615f, -240f)), _wgslsmith_div_f32(154f, 827f), true)), _wgslsmith_div_f32(-1476f, _wgslsmith_f_op_f32(select(1315f, -159f, true)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1347f, -1826f, 107f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, var_1.x, var_1.x)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) * vec3<f32>(1184f, -1302f, -482f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1711f, 703f, var_1.x))))));
    let var_2 = Struct_5(vec4<bool>(false, func_2().b <= firstTrailingBit(1i << (0u % 32u)), true, all(vec2<bool>(true, true))), func_1(func_3(), true).c.a.x, var_0.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1722f * -1135f), var_1.x), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f * var_1.x)) * var_1.x)) + var_1.x);
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(-(countOneBits(1i) >> (select(var_2.c.a.x, var_2.c.a.x, var_2.a.x) % 32u)), var_0.a.x), -1i, select(var_0.a.x, 1i, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_mod_i32(countOneBits(var_4.x), _wgslsmith_div_i32(-60708i, var_4.x)) & _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_4.x, var_0.a.x, 0i, var_4.x)), ~(-vec4<i32>(var_0.a.x, var_4.x, var_0.a.x, 2147483647i))), func_5(var_2.c.a.x).a.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1832f, var_1.x)), var_1.x)), var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), -908f), firstTrailingBit(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_0.a.x), var_4.yy))));
}

