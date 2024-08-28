struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(~(vec2<i32>(u_input.d, _wgslsmith_add_i32(-2147483647i, 2147483647i)) | _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 14673i), u_input.b, u_input.b), ~vec2<i32>(arg_1.a, arg_1.a))), -897f, select(vec3<bool>(select(arg_0.b, !arg_1.c, true), true, any(vec3<bool>(arg_2.b, true, arg_0.b))), vec3<bool>(any(select(arg_1.b, vec3<bool>(arg_2.b, false, true), false)), arg_0.b, any(vec3<bool>(false, arg_0.b, true))), arg_1.c), false);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(floor(arg_2.a))), _wgslsmith_div_vec2_f32(arg_2.a, _wgslsmith_f_op_vec2_f32(max(arg_0.a, vec2<f32>(1233f, -1000f))))))), all(select(select(!vec4<bool>(false, true, arg_2.b, arg_0.b), !vec4<bool>(false, var_0.d, false, true), select(vec4<bool>(arg_2.b, false, arg_1.b.x, false), vec4<bool>(arg_2.b, false, true, arg_1.b.x), vec4<bool>(true, false, false, true))), vec4<bool>(true, arg_0.b, true, any(vec4<bool>(false, true, true, false))), arg_1.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1242f)), var_0.b)))));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x))))), vec3<bool>(any(select(!vec2<bool>(true, var_0.c.x), var_0.c.yz, select(false, arg_0.b, arg_0.b))), !(arg_1.c & false) == !(!arg_1.c), !all(select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(false, true, arg_0.b), var_1.b))), !(!(_wgslsmith_f_op_f32(exp2(arg_2.a.x)) >= -2092f)));
    let var_2 = vec4<u32>(u_input.a.x, countOneBits(countOneBits(~60642u) >> (~u_input.a.x % 32u)), reverseBits(u_input.a.x), ~(~1u) ^ u_input.a.x);
    var var_3 = ~firstTrailingBit(~select(~vec3<i32>(var_0.a.x, u_input.b.x, arg_1.a), vec3<i32>(-27854i, 2147483647i, arg_1.a), !arg_1.b));
    return !select(!vec3<bool>(var_1.b, !arg_0.b, arg_1.b.x), select(!select(vec3<bool>(arg_0.b, arg_0.b, var_1.b), vec3<bool>(var_1.b, arg_2.b, arg_0.b), vec3<bool>(true, false, arg_2.b)), select(select(vec3<bool>(var_0.d, true, true), vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_1.c, var_0.c.x, false)), var_0.c, vec3<bool>(true, arg_2.b, false)), select(vec3<bool>(true, var_1.b, true), vec3<bool>(arg_2.b, true, arg_2.b), var_1.b)), all(arg_1.b.zz));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = select(!(!select(select(vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_0.b, false, true)), vec3<bool>(false, false, false), vec3<bool>(arg_0.b, false, arg_0.b))), select(select(vec3<bool>(true, false, false), !vec3<bool>(true, arg_0.b, true), vec3<bool>(select(arg_0.b, arg_0.b, arg_0.b), arg_0.b && arg_0.b, arg_0.b)), vec3<bool>(arg_0.b, arg_0.b, !(!arg_0.b)), select(vec3<bool>(arg_0.b, true, all(vec2<bool>(false, arg_0.b))), select(!vec3<bool>(true, false, arg_0.b), !vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(true, false, true)), !(!arg_0.b))), !select(vec3<bool>(true, arg_0.b, !arg_0.b), select(!vec3<bool>(arg_0.b, arg_0.b, true), !vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(arg_0.b, true, arg_0.b)), select(select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(false, true, true), vec3<bool>(true, true, arg_0.b)), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))));
    var_0 = select(!select(vec3<bool>(var_0.x, u_input.a.x == u_input.a.x, true), vec3<bool>(true, true, true), vec3<bool>(arg_0.b || false, true, false)), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1304f, -1000f))), var_0.x, arg_0.a.x), Struct_4(16614i, !select(vec3<bool>(arg_0.b, arg_0.b, var_0.x), vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_0.b, var_0.x, arg_0.b)), ~41270u >= (u_input.a.x | u_input.a.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1000f)))), any(vec4<bool>(var_0.x, arg_0.b, true, true)));
    var var_1 = Struct_4(select(arg_1, 1i, all(func_3(Struct_2(arg_0.a, false, arg_0.a.x), Struct_4(-2147483647i, vec3<bool>(false, arg_0.b, false), false), arg_0, 245f))), !(!func_3(arg_0, Struct_4(-24300i, vec3<bool>(false, var_0.x, false), arg_0.b), arg_0, _wgslsmith_f_op_f32(-arg_0.c))), var_0.x);
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(trunc(arg_0.a.x)))), arg_0.a), true, arg_0.c);
    var_1 = Struct_4(var_1.a, select(var_1.b, select(select(!vec3<bool>(var_0.x, arg_0.b, true), var_1.b, true), vec3<bool>(func_3(arg_0, Struct_4(arg_1, vec3<bool>(var_1.c, true, var_0.x), var_2.b), arg_0, var_2.c).x, 19303u >= u_input.a.x, true), select(!var_1.b, vec3<bool>(var_2.b, true, var_0.x), !var_1.b.x)), var_1.b), var_1.b.x);
    return Struct_1(abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -36412i), vec2<i32>(4150i, -1i), u_input.b) ^ _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -2147483647i), abs(vec2<i32>(349i, 17716i)))), arg_0.a.x, func_3(Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(948f, var_2.a.x)), var_0.x, arg_0.c), Struct_4(-2147483647i, var_1.b, false), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(108f * -359f), _wgslsmith_f_op_f32(abs(var_2.a.x)), true)) * arg_0.a.x)), any(var_1.b.xx));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = u_input.c;
    var_0 = ~(~arg_3);
    let var_1 = -1i;
    var var_2 = arg_1.zz;
    let var_3 = 42311u;
    return func_2(Struct_2(vec2<f32>(2261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), !(_wgslsmith_div_f32(-711f, 771f) < _wgslsmith_f_op_f32(round(-458f))), _wgslsmith_f_op_f32(521f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1770f + -405f) * _wgslsmith_f_op_f32(trunc(-358f))))), select(var_1, -30684i, arg_0.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(arg_1.c.a, func_2(arg_1.c, ~(-1i)).d, arg_1.c.c);
    let var_1 = all(!(!vec4<bool>(true, var_0.b, true || var_0.b, !arg_0.a.c.x)));
    var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.a) + arg_1.c.a)), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 494f) + var_0.c) * 2045f), -1626f)));
    var_0 = Struct_2(var_0.a, true, func_2(arg_0.c, _wgslsmith_mult_i32(abs(1i), ~abs(-38616i))).b);
    let var_2 = ~1i;
    return Struct_4(arg_1.a.a.x, select(arg_0.a.c, arg_1.a.c, !func_2(arg_0.c, u_input.d).c), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, -242f)), true, _wgslsmith_f_op_f32(957f - 402f)), u_input.a.wwy, vec2<f32>(_wgslsmith_f_op_f32(ceil(126f)), _wgslsmith_f_op_f32(-1000f + 1431f)), u_input.c), min(9017u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 111998u), ~u_input.a.zwy)), Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -439f)), u_input.a.x <= (u_input.a.x << (0u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(416f, -591f)) + _wgslsmith_f_op_f32(2420f + 1000f))), u_input.a.wzw), Struct_3(func_2(Struct_2(vec2<f32>(2543f, -923f), true, _wgslsmith_f_op_f32(f32(-1f) * -254f)), 42607i), _wgslsmith_mult_u32(u_input.a.x, (u_input.a.x >> (u_input.a.x % 32u)) | 4294967295u), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2661f, 579f) * vec2<f32>(725f, -372f)), vec2<f32>(1372f, 634f))), any(vec4<bool>(true, true, true, true)), -1321f), u_input.a.wyx));
    let var_1 = u_input.a;
    var var_2 = u_input.a.yyw;
    var_2 = ~vec3<u32>(var_2.x, var_1.x, (var_1.x & ~var_1.x) >> (_wgslsmith_div_u32(41010u, 0u << (var_2.x % 32u)) % 32u));
    let var_3 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1769f, -547f)) - 1f), -817f))), func_4(Struct_3(Struct_1(abs(u_input.b), _wgslsmith_f_op_f32(max(-421f, 1084f)), !var_0.b, !var_0.c), var_2.x, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, 799f) - vec2<f32>(1154f, -168f)), var_0.b.x, -147f), ~var_1.yxx | vec3<u32>(var_1.x, var_1.x, u_input.a.x)), Struct_3(func_1(Struct_2(vec2<f32>(-951f, 935f), var_0.c, -557f), vec3<u32>(0u, 0u, 8118u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-437f, -817f), vec2<f32>(-807f, 733f))), _wgslsmith_div_i32(-42223i, -1i)), _wgslsmith_div_u32(reverseBits(1u), ~var_1.x), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, 310f)), true, _wgslsmith_div_f32(1847f, -517f)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 30645u, u_input.a.x), vec3<u32>(u_input.a.x, 50033u, var_1.x)))).b, false);
    var var_4 = firstTrailingBit(~var_1.x);
    var var_5 = func_4(Struct_3(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b, 1244f))), !var_3.d, _wgslsmith_f_op_f32(-var_3.b)), var_3.a.x), _wgslsmith_dot_vec2_u32(abs(var_1.wx), u_input.a.yw), Struct_2(vec2<f32>(var_3.b, _wgslsmith_f_op_f32(-var_3.b)), func_2(Struct_2(vec2<f32>(var_3.b, var_3.b), var_0.b.x, -1200f), func_4(Struct_3(Struct_1(vec2<i32>(2147483647i, var_0.a), var_3.b, vec3<bool>(var_3.c.x, var_3.c.x, true), var_0.b.x), var_1.x, Struct_2(vec2<f32>(var_3.b, var_3.b), true, var_3.b), var_1.wwz), Struct_3(var_3, 0u, Struct_2(vec2<f32>(-732f, -430f), var_0.c, var_3.b), u_input.a.zxy)).a).d, var_3.b), u_input.a.xzz), Struct_3(Struct_1(var_3.a, 504f, !(!var_0.b), var_3.c.x), min((var_1.x << (1u % 32u)) >> ((18145u << (var_1.x % 32u)) % 32u), var_1.x), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_div_f32(var_3.b, var_3.b)), var_0.b.x, _wgslsmith_f_op_f32(var_3.b - -1000f)), ~var_1.xzw ^ vec3<u32>(4294967295u, max(u_input.a.x, 25067u), var_2.x)));
    var var_6 = Struct_4(var_3.a.x, vec3<bool>(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, var_3.b)), true, _wgslsmith_f_op_f32(-var_3.b)), Struct_4(0i, var_5.b, var_3.b >= var_3.b), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -1552f)), var_3.b > var_3.b, _wgslsmith_f_op_f32(ceil(var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b)))).x, !func_1(Struct_2(vec2<f32>(var_3.b, 444f), var_5.c, 670f), u_input.a.yzx, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 581f), vec2<f32>(1000f, 183f))), -69732i).c.x, var_3.d), var_5.b.x);
    let var_7 = Struct_3(var_3, 18837u, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.b - var_3.b), var_3.b)), !((var_3.d || var_3.d) | true), _wgslsmith_f_op_f32(-func_2(Struct_2(vec2<f32>(var_3.b, -985f), var_0.b.x, var_3.b), var_0.a).b)), vec3<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_1.x, 24309u, var_1.x), ~var_1)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_6.a, var_6.a, -2147483647i), vec3<i32>(-39384i, 6785i, var_6.a), vec3<i32>(0i, u_input.d, -7132i)) >> (var_7.d % vec3<u32>(32u)), vec3<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, -35832i), ~var_7.a.a.x), vec3<bool>(var_3.b >= 719f, var_0.c, select(var_6.c, var_7.c.b, true))), ~((vec3<i32>(-2147483647i, var_5.a, var_6.a) << (vec3<u32>(var_2.x, 86444u, 4294967295u) % vec3<u32>(32u))) << (min(vec3<u32>(0u, 37628u, 24467u), vec3<u32>(var_7.d.x, var_2.x, var_2.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1473f, -509f))), -1000f))), -2147483647i, 4294967295u);
}

