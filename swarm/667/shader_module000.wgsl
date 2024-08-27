struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(-6396i);
    let var_1 = Struct_3(select(vec3<bool>(~u_input.a.x <= 0u, false, false), vec3<bool>(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, false, false)) && true, true), !any(vec4<bool>(false, true, true, true))), arg_0);
    let var_2 = _wgslsmith_clamp_vec3_i32(-(~(-(vec3<i32>(var_0.a, var_1.b.a, 25671i) >> (u_input.a.xwy % vec3<u32>(32u))))), vec3<i32>(0i, reverseBits(~(-2147483647i)) | ~arg_1.x, _wgslsmith_mod_i32(arg_0.a, arg_0.a) << (4294967295u % 32u)), abs(arg_1.xwx) << (min(~(~vec3<u32>(1u, 0u, 4294967295u)), vec3<u32>(~u_input.a.x, 17127u, abs(27210u))) % vec3<u32>(32u)));
    let var_3 = ((var_2 >> (_wgslsmith_add_vec3_u32(select(u_input.a.yxz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true), _wgslsmith_mult_vec3_u32(u_input.a.zwx, vec3<u32>(1u, u_input.a.x, 36324u))) % vec3<u32>(32u))) ^ max(var_2, vec3<i32>(arg_0.a, -2147483647i, firstTrailingBit(var_0.a)))) | vec3<i32>(select(arg_0.a, reverseBits(-15407i), any(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x))), select(29645i, countOneBits(-15008i) | (var_1.b.a | 0i), true), _wgslsmith_sub_i32(~10977i, -24419i));
    var var_4 = var_1.a.x;
    return var_1.a.yx;
}

fn func_2() -> Struct_2 {
    let var_0 = !(!func_3(Struct_1(i32(-1i) * -14804i), vec4<i32>(-7434i, -2147483647i, -1i, min(0i, 35982i))));
    return Struct_2(Struct_1(max(1i, ~(-30925i))), Struct_1(3682i), Struct_1(min(~1i, _wgslsmith_add_i32(0i, 0i)) << ((~u_input.a.x & u_input.a.x) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> Struct_4 {
    var var_0 = !arg_1.a.x;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-149f, 342f)))));
    var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.a.x, false, true, arg_1.a.x), !vec4<bool>(false, false, arg_1.a.x, false)), vec4<bool>(true, all(arg_1.a.zy), true, any(arg_1.a)), !vec4<bool>(arg_1.a.x, true, arg_1.a.x, false)));
    let var_2 = ~arg_0.c.a;
    return Struct_4(_wgslsmith_clamp_u32(~(~(~145592u)), u_input.a.x, ~_wgslsmith_div_u32(0u, u_input.a.x)), arg_1);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = !select(!select(select(vec4<bool>(arg_0.b.a.x, arg_1.a.x, false, true), vec4<bool>(false, arg_0.b.a.x, false, arg_1.a.x), true), select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_0.b.a.x), vec4<bool>(true, true, arg_1.a.x, arg_0.b.a.x), true), select(vec4<bool>(arg_1.a.x, arg_0.b.a.x, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, false, true), false)), vec4<bool>(true, false, (arg_0.b.a.x & arg_0.b.a.x) || true, arg_1.a.x), arg_1.a.x);
    let var_2 = arg_0.b;
    var var_3 = 2533f;
    var var_4 = arg_0.b;
    return func_4(func_2(), arg_0.b, var_2.b);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_i32(-1i, -5470i);
    var_0 = 2147483647i;
    var_0 = -_wgslsmith_add_i32(~1i, -4305i);
    let var_1 = _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(~(~u_input.a.x)));
    let var_2 = func_5(func_4(func_2(), Struct_3(vec3<bool>(true, true, true), Struct_1(firstLeadingBit(-13081i))), Struct_1(-80769i)), func_4(Struct_2(Struct_1(0i), Struct_1(~(-4018i)), func_2().a), func_4(Struct_2(Struct_1(-2147483647i), func_4(Struct_2(Struct_1(2147483647i), Struct_1(2592i), Struct_1(-913i)), Struct_3(vec3<bool>(true, true, false), Struct_1(0i)), Struct_1(6717i)).b.b, func_4(Struct_2(Struct_1(0i), Struct_1(2147483647i), Struct_1(-2147483647i)), Struct_3(vec3<bool>(false, true, false), Struct_1(-37580i)), Struct_1(49041i)).b.b), func_4(func_2(), Struct_3(vec3<bool>(true, false, false), Struct_1(-2147483647i)), func_2().c).b, func_2().a).b, Struct_1(1i)).b);
    return 1i;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec3<bool>(~(u_input.a.x & u_input.a.x) <= min(1u, u_input.a.x ^ 71153u), true, func_3(Struct_1(arg_0.b.a), -vec4<i32>(-1i, arg_0.c.a, arg_2, 1i)).x), func_4(arg_0, Struct_3(!func_5(Struct_4(4865u, Struct_3(vec3<bool>(false, false, false), arg_0.a)), Struct_3(vec3<bool>(true, true, true), arg_0.b)).b.a, func_5(Struct_4(u_input.a.x, Struct_3(vec3<bool>(false, true, false), Struct_1(arg_0.a.a))), Struct_3(vec3<bool>(false, true, false), Struct_1(2147483647i))).b.b), func_2().a).b.a, select(!select(func_4(Struct_2(arg_0.b, Struct_1(1i), arg_0.a), Struct_3(vec3<bool>(true, false, false), Struct_1(arg_0.c.a)), arg_0.a).b.a, vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !func_5(Struct_4(u_input.a.x, Struct_3(vec3<bool>(true, false, false), Struct_1(20399i))), func_4(arg_0, Struct_3(vec3<bool>(false, false, true), arg_0.b), Struct_1(-1i)).b).b.a, vec3<bool>(true, true, _wgslsmith_f_op_f32(arg_1 - -1432f) <= _wgslsmith_f_op_f32(-arg_1))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), func_5(func_4(Struct_2(arg_0.b, arg_0.a, Struct_1(18901i)), func_5(Struct_4(61067u, Struct_3(var_0, Struct_1(arg_0.c.a))), Struct_3(var_0, Struct_1(arg_0.b.a))).b, arg_0.a), Struct_3(var_0, func_2().a)).b.a.x)), -1458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1127f, false)) + -413f)))));
    let var_2 = abs(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_0.c.a, arg_0.b.a, 1i, arg_0.a.a)), vec4<i32>(func_2().a.a, _wgslsmith_div_i32(-15552i, arg_0.b.a), arg_0.a.a, _wgslsmith_mod_i32(arg_0.c.a, arg_0.c.a))));
    let var_3 = Struct_4(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x >> (16959u % 32u), ~(~1u)), ~(~u_input.a.x ^ u_input.a.x), u_input.a.x), func_4(arg_0, Struct_3(var_0, Struct_1(6544i)), Struct_1(1i)).b);
    let var_4 = func_5(var_3, func_5(func_5(var_3, func_4(func_2(), Struct_3(vec3<bool>(false, true, true), var_3.b.b), func_5(var_3, var_3.b).b.b).b), Struct_3(!(!var_0), func_2().a)).b);
    return arg_0.b;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec2<i32>(func_2().a.a, arg_1.x);
    let var_1 = func_4(func_2(), Struct_3(arg_3.a, Struct_1(max(arg_3.b.a ^ -1547i, ~var_0.x))), Struct_1(_wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, 2147483647i), _wgslsmith_add_i32(arg_1.x, var_0.x)))));
    var var_2 = Struct_1(func_1() >> (_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xx | select(vec2<u32>(var_1.a, var_1.a), u_input.a.xw, vec2<bool>(arg_3.a.x, var_1.b.a.x))) % 32u));
    var_2 = func_5(var_1, var_1.b).b.b;
    var var_3 = arg_2;
    return func_6(func_2(), 1702f, _wgslsmith_mod_i32(~arg_1.x, func_1()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_7(func_6(Struct_2(Struct_1(func_1()), Struct_1(-1i >> (1u % 32u)), func_2().c), -893f, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, 1i, -2147483647i)), vec4<i32>(1i, 0i, 29102i, -2147483647i))), vec2<i32>(0i, -38830i), 792f, func_4(func_2(), Struct_3(vec3<bool>(true, true, true), Struct_1(1i)), Struct_1(-countOneBits(2147483647i))).b);
    var_0 = 4294967295u;
    let var_2 = all(select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true)), vec4<bool>(func_4(Struct_2(Struct_1(26357i), Struct_1(-49659i), var_1), Struct_3(vec3<bool>(true, true, false), var_1), Struct_1(var_1.a)).b.a.x & true, func_4(Struct_2(Struct_1(1i), Struct_1(-1i), var_1), Struct_3(vec3<bool>(false, true, true), Struct_1(var_1.a)), Struct_1(var_1.a)).b.a.x & true, true, !any(vec2<bool>(false, false))), vec4<bool>(select(func_4(Struct_2(var_1, Struct_1(-1i), var_1), Struct_3(vec3<bool>(false, false, false), Struct_1(479i)), var_1).b.a.x, true, any(vec3<bool>(false, false, true))), !func_3(var_1, vec4<i32>(15628i, var_1.a, -35913i, 20999i)).x, func_5(Struct_4(u_input.a.x, Struct_3(vec3<bool>(false, true, true), Struct_1(var_1.a))), Struct_3(vec3<bool>(false, true, true), var_1)).b.a.x & true, true)));
    var var_3 = Struct_4(~4294967295u, Struct_3(vec3<bool>(false, true, false), Struct_1(_wgslsmith_mult_i32(var_1.a, max(var_1.a, 2147483647i)))));
    var_3 = Struct_4(func_5(func_4(Struct_2(func_2().b, var_1, Struct_1(var_1.a)), var_3.b, func_5(func_5(Struct_4(var_3.a, Struct_3(var_3.b.a, Struct_1(28044i))), var_3.b), func_4(Struct_2(var_3.b.b, Struct_1(2147483647i), var_3.b.b), Struct_3(vec3<bool>(var_2, false, var_2), var_1), Struct_1(-17438i)).b).b.b), var_3.b).a, func_4(Struct_2(var_3.b.b, Struct_1(-var_3.b.b.a), var_3.b.b), Struct_3(vec3<bool>(true, true, !var_3.b.a.x), var_3.b.b), Struct_1(_wgslsmith_mod_i32(max(-37469i, var_3.b.b.a), var_1.a))).b);
    var_0 = 4294967295u;
    let var_4 = -_wgslsmith_div_vec3_i32(~abs(vec3<i32>(var_3.b.b.a, var_1.a, 1i)) << (vec3<u32>(~u_input.a.x, 0u & u_input.a.x, var_3.a) % vec3<u32>(32u)), vec3<i32>(var_1.a, -8267i | var_3.b.b.a, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 0u, _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a));
}

