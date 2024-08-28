struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec3<f32>(-1248f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1037f * -267f), -286f)), 1f)));
    let var_1 = Struct_4(Struct_3(Struct_1(arg_0), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(true, arg_0, false)), select(!vec3<bool>(true, arg_0, false), vec3<bool>(true, true, true), true), vec3<bool>(arg_0, arg_0, true)), ~4294967295u, vec3<u32>(0u, ~u_input.b.x, _wgslsmith_mod_u32(19639u, 4294967295u)), ~vec2<u32>(1u & u_input.b.x, max(u_input.b.x, 40863u))));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~var_1.a.d.x, 57938u << (u_input.b.x % 32u)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 35211u, 4294967295u), vec3<u32>(161737u, 104459u, 4633u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4032u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, var_1.a.c, 1u)))), 1u);
    var_2 = u_input.b.x;
    let var_3 = Struct_4(var_1.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -213f)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(0u >= arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-571f)) - 228f))))));
    var var_1 = 2147483647i;
    var_1 = select(u_input.c.x, 48415i, true);
    var var_2 = u_input.a;
    var var_3 = arg_1.d;
    return vec4<bool>(true, !arg_1.b.x | true, false, !arg_1.a.a);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(max(14503u, ~(u_input.b.x ^ 1u)), ~select(firstTrailingBit(85862u), u_input.b.x, true)), 0u, firstLeadingBit(countOneBits(11068u)));
    var var_1 = var_0.x;
    let var_2 = ~(-u_input.a.yyy);
    var var_3 = -28090i;
    var_1 = ~(~u_input.b.x);
    return Struct_2(!(true || all(vec4<bool>(true, false, true, arg_1.a))), arg_0.x, arg_2 << (~min(~1u, abs(var_0.x)) % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_1(all(!(!(!vec3<bool>(arg_0.a, false, arg_1)))));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(182f, arg_0.b, arg_2, 257f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 134f, -581f) + vec4<f32>(-1779f, arg_2, 1000f, -1431f)), arg_3))))), Struct_1(!any(vec4<bool>(false, arg_1, var_0.a, true)) != true), ~arg_0.c);
    var var_2 = _wgslsmith_f_op_f32(trunc(-659f));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1406f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f + _wgslsmith_f_op_f32(-arg_0.b))))));
    return Struct_4(Struct_3(Struct_1(true), vec3<bool>(!func_4(vec4<f32>(arg_0.b, 1761f, 944f, arg_0.b), var_0, 1735i).a, func_4(vec4<f32>(-726f, arg_2, -1012f, 1244f), Struct_1(var_1.a), u_input.a.x | u_input.a.x).a, any(!arg_3.zzw)), _wgslsmith_mult_u32(0u, 0u), vec3<u32>(countOneBits(13323u), reverseBits(u_input.b.x), ~firstLeadingBit(u_input.b.x)), vec2<u32>(1u << (~u_input.b.x % 32u), _wgslsmith_mult_u32(~u_input.b.x, firstLeadingBit(4294967295u)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2486f), _wgslsmith_f_op_f32(-368f + -1626f), -551f))), Struct_1(any(func_2(vec2<i32>(914i, 33765i), Struct_3(Struct_1(false), vec3<bool>(arg_1, true, false), arg_0.x, vec3<u32>(1u, 42767u, u_input.b.x), u_input.b.xz)))), -1i), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-239f, -1315f) + -1000f))), select(!select(vec4<bool>(arg_2.x, arg_2.x, true, arg_1), !vec4<bool>(true, arg_2.x, arg_1, arg_2.x), arg_0.x > arg_0.x), select(vec4<bool>(true, true, true, all(vec3<bool>(arg_1, arg_1, false))), vec4<bool>(false, true, arg_1, arg_1), !arg_1), func_2(vec2<i32>(u_input.c.x, 1i), Struct_3(Struct_1(arg_2.x), vec3<bool>(true, arg_1, true), arg_0.x, u_input.b, _wgslsmith_add_vec2_u32(u_input.b.xy, u_input.b.zz)))));
    let var_1 = Struct_1(all(arg_2));
    return countOneBits(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(!(func_1(u_input.b, false, vec2<bool>(true, false)) == abs(0u))), select(vec3<bool>(true, true, true), select(func_2(_wgslsmith_sub_vec2_i32(u_input.a.ww, u_input.a.yw), Struct_3(Struct_1(true), vec3<bool>(true, true, false), 4294967295u, vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.yx)).wxx, vec3<bool>(u_input.b.x > u_input.b.x, all(vec3<bool>(true, false, true)), true), select(func_2(u_input.c.zx, Struct_3(Struct_1(false), vec3<bool>(true, false, false), u_input.b.x, vec3<u32>(72374u, 5293u, u_input.b.x), vec2<u32>(4243u, 35340u))).zwx, vec3<bool>(true, true, true), true)), false), _wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_clamp_vec3_u32(~u_input.b, u_input.b, _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~u_input.b, _wgslsmith_div_vec2_u32(u_input.b.xy, ~u_input.b.yz));
    var_0 = Struct_3(var_0.a, select(var_0.b, select(!(!var_0.b), var_0.b, vec3<bool>(true, true, true)), func_5(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 2297f, 1000f, -712f), vec4<f32>(1368f, -1000f, -457f, 527f), var_0.b.x)), Struct_1(var_0.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, 0i), vec3<i32>(-2147483647i, -5016i, u_input.a.x))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), select(func_2(vec2<i32>(2147483647i, u_input.c.x), Struct_3(var_0.a, var_0.b, u_input.b.x, vec3<u32>(39680u, 59891u, u_input.b.x), vec2<u32>(41307u, 0u))), vec4<bool>(var_0.a.a, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, false, false, var_0.b.x))).a.b), firstTrailingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(54746u, 15461u, var_0.d.x, var_0.c), vec4<u32>(22300u, 11256u, u_input.b.x, 1u), var_0.a.a) << (abs(vec4<u32>(0u, var_0.e.x, u_input.b.x, var_0.d.x)) % vec4<u32>(32u)), ~select(vec4<u32>(var_0.c, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, var_0.e.x, 1u, var_0.e.x), vec4<bool>(true, var_0.a.a, var_0.b.x, var_0.a.a)))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, var_0.c, 0u), vec3<u32>(var_0.e.x, u_input.b.x, 61265u) ^ vec3<u32>(u_input.b.x, u_input.b.x, 105157u)), ~(~(var_0.d >> (vec3<u32>(var_0.c, 34038u, 1u) % vec3<u32>(32u))))), vec2<u32>(27692u, var_0.d.x));
    var var_1 = Struct_4(func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1124f, 588f, 531f, -1536f) - vec4<f32>(-1434f, -1078f, -114f, -866f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, 1000f, -1163f, 117f))), Struct_1(var_0.a.a), 0i), var_0.a.a == !all(var_0.b.zy), -665f, select(vec4<bool>(var_0.b.x, true, false, false), vec4<bool>(func_4(vec4<f32>(-663f, 371f, 756f, -149f), Struct_1(var_0.a.a), 22707i).a, var_0.b.x && false, var_0.b.x, u_input.b.x < var_0.c), vec4<bool>(true || var_0.b.x, true, var_0.b.x == true, !var_0.b.x))).a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

