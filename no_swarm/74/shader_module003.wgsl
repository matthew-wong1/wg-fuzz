struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.e)), Struct_1(vec4<bool>(all(!vec3<bool>(arg_1.c, true, true)), arg_1.c, !(arg_1.c == arg_1.e.b.x), arg_1.c), vec4<bool>(!arg_1.b, true, arg_1.b, true), select(vec2<bool>(!arg_1.e.c.x, true), vec2<bool>(false, arg_1.c | arg_1.e.c.x), true), min(_wgslsmith_mult_u32(16117u, u_input.a), arg_1.e.d) | countOneBits(arg_1.e.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(arg_1.e.e + arg_0))))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.e * 340f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + arg_1.e.e)))), true)));
    var_1 = 100f;
    var var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(max(arg_2.x, 928f))) * _wgslsmith_f_op_f32(-1f))));
    var_2 = -1244f;
    return all(select(vec4<bool>(true, any(select(arg_1.e.a, vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, true), vec4<bool>(arg_1.b, var_0.b.b.x, arg_1.e.c.x, arg_1.e.b.x))), arg_1.e.b.x, _wgslsmith_f_op_f32(max(-1840f, -762f)) <= _wgslsmith_f_op_f32(var_0.b.e + 461f)), !vec4<bool>(true, arg_1.e.d >= 4294967295u, true, arg_1.b), (1u | u_input.e.x) < (~0u & _wgslsmith_mult_u32(59487u, var_0.b.d))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = arg_0.x;
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), vec2<bool>(func_3(-200f, Struct_2(u_input.b, true, true, vec4<i32>(arg_0.x, -36358i, u_input.b.x, 0i), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec2<bool>(false, true), arg_1.x, 1000f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(767f, -484f, -912f, 1487f)))), true), 22164u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(268f, -445f)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-478f, -327f, -446f, _wgslsmith_f_op_f32(select(-149f, 1106f, true))))), Struct_1(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), abs(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_2, u_input.d.x), arg_1.wzz), ~0u)), -139f), vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_div_u32(abs(abs(_wgslsmith_div_u32(17416u, u_input.a))), 1u) >> (4294967295u % 32u);
    var var_4 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(1i, u_input.b.x, -2147483647i, 1i), vec4<i32>(-23779i, -13546i, 62872i, u_input.b.x), var_1.a.a)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-52620i, 14784i, -4822i, u_input.b.x), vec4<i32>(arg_0.x, -2147483647i, var_0, -1i) & vec4<i32>(var_2, 1i, -11063i, -2147483647i))), min(1i, _wgslsmith_mod_i32(~arg_0.x, 8161i)), _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(var_0, u_input.b.x, var_0), vec3<i32>(u_input.b.x, var_2, 10705i))) ^ _wgslsmith_mod_i32(var_2, ~var_2)), var_1.d.x, !select(var_1.a.b.x, any(var_1.c.c), var_1.c.a.x), -_wgslsmith_mod_vec4_i32((vec4<i32>(var_2, -1i, u_input.b.x, var_0) << (vec4<u32>(arg_2, var_1.a.d, 0u, 1u) % vec4<u32>(32u))) | min(vec4<i32>(arg_0.x, u_input.b.x, 15627i, u_input.b.x), vec4<i32>(var_0, var_0, -2147483647i, 44845i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, u_input.b.x, var_2, 0i), reverseBits(vec4<i32>(u_input.b.x, var_2, 1i, 2147483647i)))), var_1.a);
    return Struct_3(var_4.e, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.e.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(abs(var_1.c.e)), _wgslsmith_f_op_f32(select(var_1.a.e, _wgslsmith_f_op_f32(-923f + 536f), !var_4.e.a.x))))), var_1.a, var_1.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = any(select(!(!arg_1.a.c), !vec2<bool>(true, true & arg_1.a.c.x), arg_1.a.c));
    var_0 = true;
    return vec4<u32>(~firstTrailingBit(~arg_1.a.d), ~(1u << ((~1u >> (_wgslsmith_div_u32(2437u, u_input.e.x) % 32u)) % 32u)), ~1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.c.d, arg_1.c.d), min(u_input.a, arg_1.c.d & u_input.d.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(reverseBits(u_input.b.x), abs(-54733i), firstTrailingBit(u_input.b.x) | ~u_input.b.x)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(12993i, var_0.x), var_0.xx & vec2<i32>(-26524i, 2147483647i)), -38142i, var_0.x << (arg_2.x % 32u)), vec4<i32>(~var_0.x, var_0.x, ~var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(6568i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, var_0.x, u_input.b.x))) ^ vec4<i32>(~2147483647i, -28829i, countOneBits(u_input.b.x), -var_0.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(abs(1i), countOneBits(~var_0.x)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-46877i, 143i, -6901i), min(vec3<i32>(var_0.x, 6548i, var_0.x), u_input.b)), vec3<i32>(-1i, _wgslsmith_sub_i32(15597i, u_input.b.x), -1i))), var_0.x);
    var var_2 = !vec2<bool>(all(select(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(true, true, true, arg_3.x)), vec4<bool>(true, false, arg_3.x, false), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x))), any(func_2(u_input.b.zz, min(u_input.e, u_input.e), reverseBits(1795u), vec2<u32>(u_input.c.x, arg_2.x) ^ vec2<u32>(1u, u_input.e.x)).c.b));
    var var_3 = func_2(var_0.yz, ~(vec4<u32>(u_input.e.x, ~28233u, u_input.a ^ 17794u, ~2313u) >> ((vec4<u32>(10616u, u_input.a, arg_2.x, 36585u) >> (vec4<u32>(0u, 1u, 0u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_u32(u_input.e.x, ~1u), u_input.c.zz);
    var_3 = Struct_3(Struct_1(var_3.c.a, vec4<bool>(var_2.x || all(vec3<bool>(var_3.d.x, false, true)), false, true, arg_3.x), var_3.a.a.yw, u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(u_input.b.zy, arg_2, u_input.e.x, vec2<u32>(u_input.c.x, arg_2.x)).a.e) + -175f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -853f, 1392f, -786f))))), var_3.a, !var_3.a.a.zx);
    return vec3<bool>(var_3.d.x, all(!(!(!vec4<bool>(false, true, false, var_2.x)))), arg_3.x);
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(-arg_0.b.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(614f)))) - 1037f), arg_2.c.e, 760f);
    let var_1 = var_0.x;
    let var_2 = firstTrailingBit(-abs(~u_input.b.x));
    let var_3 = ~(~vec4<u32>(firstTrailingBit(62715u), u_input.a, u_input.e.x, u_input.a)) >> (vec4<u32>(~(~arg_0.b.d), _wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(10255u, 9073u))), select(vec2<u32>(1u, 1u), vec2<u32>(arg_3.b.d, u_input.d.x), vec2<bool>(true, arg_2.d.x)) | ~u_input.e.wz), 1u >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(func_4(vec3<bool>(false, arg_3.b.c.x, true), Struct_3(Struct_1(vec4<bool>(arg_3.b.a.x, arg_2.a.b.x, arg_2.c.c.x, true), arg_3.b.b, vec2<bool>(arg_1.x, arg_2.d.x), 0u, -1000f), var_0, Struct_1(vec4<bool>(true, arg_1.x, arg_0.b.c.x, true), arg_0.b.a, arg_0.b.b.wy, arg_2.c.d, 802f), arg_0.b.b.yz)).x, arg_0.b.d | 0u, _wgslsmith_clamp_u32(0u, 61797u, 7825u)), vec3<u32>(~arg_3.b.d, arg_3.b.d, arg_3.b.d))) % vec4<u32>(32u));
    var var_4 = u_input.e;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1404f, arg_0.a)) - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(arg_0.a - 1183f))), var_1) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.wz, _wgslsmith_f_op_vec2_f32(-var_0.xz))) * vec2<f32>(-666f, _wgslsmith_f_op_f32(floor(-147f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = ~(~(~u_input.d | ~(~vec2<u32>(1u, u_input.e.x))));
    var var_1 = arg_1.a.b.wyy;
    var var_2 = _wgslsmith_f_op_vec2_f32(func_6(Struct_5(_wgslsmith_f_op_f32(-1177f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(round(762f)))), arg_1.c), func_5(arg_3.xx, _wgslsmith_f_op_f32(ceil(arg_1.c.e)), func_4(select(arg_1.a.a.wzz, select(vec3<bool>(arg_1.c.c.x, false, false), vec3<bool>(arg_1.d.x, true, arg_1.d.x), vec3<bool>(false, true, true)), select(arg_1.c.b.zww, vec3<bool>(false, var_1.x, var_1.x), arg_1.c.b.xyw)), func_2(vec2<i32>(-64258i, 0i), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, 15460u, 0u), vec4<u32>(var_0.x, arg_0.x, var_0.x, arg_0.x), vec4<u32>(arg_2, arg_1.a.d, 29102u, var_0.x)), select(arg_1.c.d, 20009u, var_1.x), max(u_input.e.yx, arg_0.yx))), func_2(vec2<i32>(-u_input.b.x, u_input.b.x), vec4<u32>(~4396u, arg_2, 1u >> (var_0.x % 32u), 24737u), firstLeadingBit(u_input.d.x) & var_0.x, _wgslsmith_mod_vec2_u32(u_input.e.zz, vec2<u32>(arg_0.x, arg_1.c.d) | vec2<u32>(arg_2, 1u))).a.a.xxx), Struct_3(Struct_1(select(vec4<bool>(false, var_1.x, false, false), !arg_1.a.a, !var_1.x), select(vec4<bool>(arg_1.d.x, true, arg_1.c.a.x, false), vec4<bool>(true, true, arg_1.c.c.x, var_1.x), any(arg_1.c.b.wzy)), !vec2<bool>(var_1.x, arg_1.a.c.x), abs(_wgslsmith_add_u32(20989u, var_0.x)), _wgslsmith_f_op_f32(floor(arg_1.a.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(748f, arg_1.c.e, 1413f, 1135f), _wgslsmith_f_op_vec4_f32(min(arg_1.b, vec4<f32>(-854f, arg_3.x, arg_1.b.x, arg_3.x)))))), func_2(vec2<i32>(1i, 1i), vec4<u32>(0u, 1u, _wgslsmith_mult_u32(1u, arg_1.c.d), _wgslsmith_mult_u32(1u, arg_2)), arg_1.a.d, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c.x, arg_0.x))).c, select(!var_1.xy, arg_1.c.a.zw, vec2<bool>(33491u <= var_0.x, false))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))), Struct_1(arg_1.a.b, vec4<bool>(true, !var_1.x, arg_1.c.a.x, true), func_2(vec2<i32>(60970i, -1i), select(u_input.e, vec4<u32>(47584u, 4294967295u, arg_2, arg_1.a.d), arg_1.a.a), u_input.c.x, ~vec2<u32>(4294967295u, u_input.d.x)).c.b.xw, _wgslsmith_mod_u32(var_0.x, 22733u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.c.e, arg_1.a.a.x)), -273f, true))))));
    var var_3 = Struct_1(vec4<bool>(all(var_1.zz), false, func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-302f, arg_1.c.e), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1300f, 215f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), abs(vec4<u32>(0u, 32182u, var_0.x, arg_1.a.d)), !arg_1.a.a.wzy).x, false), arg_1.c.b, !var_1.xz, var_0.x, -449f);
    return countOneBits(firstTrailingBit(_wgslsmith_sub_u32(~arg_0.x, reverseBits(6847u))));
}

fn func_7(arg_0: u32, arg_1: f32) -> Struct_4 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1162f)), _wgslsmith_f_op_vec2_f32(func_6(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2827f, 1350f)) - -1000f), func_2(vec2<i32>(7647i, u_input.b.x), ~vec4<u32>(u_input.e.x, u_input.c.x, u_input.d.x, arg_0), u_input.c.x, _wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(29447u, arg_0))).c), vec3<bool>(func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -922f))), -601f, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, 2790u, 41070u), u_input.e), vec3<bool>(true, true, true)).x, true, true), Struct_3(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), func_2(u_input.b.zz, u_input.e, arg_0, u_input.c.yz).c.a.zx, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -119f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1345f, arg_1, arg_1, arg_1) - vec4<f32>(-485f, 680f, arg_1, arg_1))), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), 35799u, _wgslsmith_f_op_f32(-arg_1)), vec2<bool>(true, true)), Struct_5(arg_1, func_2(-u_input.b.xz, vec4<u32>(4294967295u, arg_0, u_input.c.x, 1u), 4294967295u, ~vec2<u32>(15798u, 3931u)).a))).x);
    let var_1 = arg_0;
    let var_2 = Struct_2(-u_input.b, arg_1 >= -3436f, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec4<i32>(3176i, 17541i, -1i, u_input.b.x), func_2(u_input.b.xz & _wgslsmith_clamp_vec2_i32(u_input.b.zy, vec2<i32>(u_input.b.x, u_input.b.x), countOneBits(vec2<i32>(1i, 0i))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(43694u, arg_0), firstLeadingBit(u_input.c.x)), _wgslsmith_div_u32(reverseBits(arg_0), firstTrailingBit(var_1)), _wgslsmith_mult_u32(29317u, 0u) ^ _wgslsmith_mult_u32(arg_0, 20610u), arg_0), 40530u, firstLeadingBit(u_input.c.zy)).c);
    return Struct_4(var_2.a.x, select(vec4<bool>(true, true, true, var_2.c), !vec4<bool>(1000f > var_0.x, all(vec2<bool>(true, false)), true, true), var_2.e.a), ~14246u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x;
    let var_1 = func_7(max(~(~func_1(u_input.e.xxx, Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec2<bool>(false, false), u_input.a, -1000f), vec4<f32>(392f, -746f, 554f, 162f), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec2<bool>(true, true), 48816u, 1000f), vec2<bool>(false, true)), 0u, vec3<f32>(-176f, -605f, 726f))), u_input.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1278f))));
    var var_2 = any(vec4<bool>(max(firstTrailingBit(0u), 52217u) >= u_input.c.x, (var_1.a > var_1.a) & any(vec4<bool>(true, var_1.b.x, var_1.b.x, false)), func_3(-1385f, Struct_2(_wgslsmith_add_vec3_i32(u_input.b, u_input.b), func_3(223f, Struct_2(u_input.b, var_1.b.x, false, vec4<i32>(var_1.a, var_1.a, 1i, 2147483647i), Struct_1(var_1.b, vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec2<bool>(true, true), 4294967295u, -1330f)), vec4<f32>(1000f, -1000f, 470f, -1130f)), var_1.b.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, u_input.b.x, -38295i, 5482i), vec4<i32>(u_input.b.x, 1i, var_1.a, var_1.a), vec4<i32>(1i, -1i, 1108i, -23004i)), func_2(vec2<i32>(var_1.a, 2147483647i), vec4<u32>(11089u, 1u, var_1.c, 15861u), var_1.c, u_input.c.yy).a), vec4<f32>(_wgslsmith_f_op_f32(min(344f, -722f)), 650f, -1242f, -647f)), !(!(!var_1.b.x))));
    let var_3 = ~u_input.b.x;
    let var_4 = ~_wgslsmith_dot_vec4_i32(firstLeadingBit(max(vec4<i32>(0i, -1i, var_3, var_3), reverseBits(vec4<i32>(var_3, 6889i, u_input.b.x, 396i)))), vec4<i32>(-1i) * -(vec4<i32>(var_1.a, 21323i, 1i, var_1.a) | vec4<i32>(var_1.a, -1i, u_input.b.x, 6185i)));
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(836f, -979f)) + vec2<f32>(1f, 1f))));
}

