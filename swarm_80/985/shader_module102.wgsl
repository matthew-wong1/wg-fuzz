struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = firstLeadingBit(~(_wgslsmith_mod_u32(arg_2 << (arg_2 % 32u), 2090u) ^ 4294967295u));
    var var_1 = arg_1;
    return Struct_2(vec2<u32>(_wgslsmith_div_u32(1u, arg_1) | arg_2, abs(~(~93969u))), Struct_1(arg_0.x, ~min(vec3<u32>(26103u, var_0, 4362u) << (vec3<u32>(1u, arg_2, 4294967295u) % vec3<u32>(32u)), max(vec3<u32>(var_0, arg_1, 4294967295u), vec3<u32>(1u, 4294967295u, 0u))), arg_3.x, u_input.a.xz), ~_wgslsmith_add_u32(~15401u, arg_1), select(arg_0, arg_0, arg_0.x), vec4<bool>(arg_0.x, !any(!vec4<bool>(arg_0.x, true, true, true)), true && (u_input.a.x != _wgslsmith_mult_i32(15717i, -7898i)), true));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.c;
    var var_1 = arg_0.b;
    let var_2 = 1u;
    var_1 = arg_0.b;
    var var_3 = vec2<i32>(reverseBits(firstTrailingBit(u_input.a.x)), u_input.a.x);
    return !func_2(!arg_0.d, var_2 & 1u, var_1.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(452f, 171f)), var_1.c)).b.a;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(962f, 865f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(691f, 923f) * 335f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-252f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f * 1578f) + -466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f))), true | !func_3(func_2(vec2<bool>(false, false), 28093u, 1u, vec2<f32>(-751f, -1224f)))));
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(trunc(-642f));
    let var_1 = ~select(vec4<u32>(countOneBits(~4294967295u), ~(~1u), 6021u, max(~1u, 69137u)), vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 73515u, 53950u)), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(24906u) << (6274u % 32u), _wgslsmith_sub_u32(1u, 1u), _wgslsmith_div_u32(35908u, ~1u)), vec4<bool>(all(vec2<bool>(false, true)), !func_3(Struct_2(vec2<u32>(4453u, 36240u), Struct_1(false, vec3<u32>(26856u, 31958u, 4294967295u), 155f, vec2<i32>(-34811i, u_input.a.x)), 0u, vec2<bool>(true, true), vec4<bool>(false, true, false, true))), all(vec2<bool>(false, false)), true));
    let var_2 = func_2(!vec2<bool>(any(vec2<bool>(true, false)), min(0i, u_input.a.x) < 1i), var_1.x, 84899u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, _wgslsmith_f_op_f32(1419f + 397f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(832f, 314f), vec2<f32>(-237f, -401f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1055f, -1236f), vec2<f32>(836f, -2090f)))))))).b;
    return Struct_2(vec2<u32>(countOneBits(var_2.b.x), ~func_2(vec2<bool>(var_2.a, var_2.a), var_2.b.x, 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, var_2.c))).a.x), var_2, countOneBits(1u), select(vec2<bool>(var_2.a, any(!vec3<bool>(false, var_2.a, var_2.a))), vec2<bool>(!func_2(vec2<bool>(true, var_2.a), var_1.x, var_2.b.x, vec2<f32>(-109f, var_2.c)).b.a, false), select(select(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, var_2.a), true), vec2<bool>(var_2.a, var_2.a), false), vec2<bool>(var_2.a, true), true)), func_2(vec2<bool>(false, any(vec4<bool>(false, true, true, var_2.a))), ~firstTrailingBit(7797u) | 1u, firstLeadingBit(var_2.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c, 868f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.c, var_2.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-668f, var_2.c) * vec2<f32>(1265f, var_2.c)))), vec2<bool>(select(var_2.a, var_2.a, var_2.a), true)))).e);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = func_2(arg_3, 1u, ~(~arg_1.a.x) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46981u, 78374u, arg_1.b.b.x, arg_1.a.x), ~vec4<u32>(arg_1.c, arg_1.a.x, arg_1.a.x, arg_1.b.b.x)), ~4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.c - arg_1.b.c), _wgslsmith_f_op_f32(-arg_1.b.c)))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.c), _wgslsmith_f_op_f32(floor(arg_1.b.c))))).b;
    var_0 = Struct_1(arg_1.b.b.x <= arg_1.a.x, firstTrailingBit(reverseBits(func_1().b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.c + -429f) + _wgslsmith_div_f32(-120f, arg_1.b.c)))), var_0.d);
    var var_1 = vec3<f32>(func_2(arg_3, 25585u ^ (arg_1.b.b.x << (~var_0.b.x % 32u)), ~_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, 0u, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.c, 284f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.c), vec2<f32>(1000f, arg_1.b.c)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1325f, -270f)))))).b.c, _wgslsmith_f_op_f32(arg_1.b.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-832f, arg_1.b.c))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2262f, var_0.c))), -1000f), _wgslsmith_f_op_f32(arg_1.b.c + func_2(!arg_3, _wgslsmith_mult_u32(37196u, 24843u), 19551u, _wgslsmith_f_op_vec2_f32(vec2<f32>(2306f, 796f) + vec2<f32>(var_0.c, 1067f))).b.c))));
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.c, arg_1.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 946f, var_0.c) + vec3<f32>(-1841f, 464f, -239f))))));
    var var_2 = Struct_1(func_2(arg_2.yx, ~(~1u), arg_1.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c) * _wgslsmith_f_op_f32(arg_1.b.c * var_1.x)), _wgslsmith_f_op_f32(-1555f - _wgslsmith_f_op_f32(select(arg_1.b.c, arg_1.b.c, arg_2.x))))).e.x, arg_1.b.b, 1149f, _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(reverseBits(arg_1.b.d), vec2<i32>(arg_0, u_input.a.x)), ~select(vec2<i32>(-2147483647i, arg_0) ^ arg_1.b.d, vec2<i32>(arg_1.b.d.x, var_0.d.x), arg_2.x)));
    return -func_1().b.d;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> StorageBuffer {
    let var_0 = vec4<bool>(!any(arg_0.e.xyx), !arg_0.b.a, reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.a), select(vec2<u32>(arg_0.a.x, arg_0.c), arg_0.b.b.yx, false))) >= arg_0.b.b.x, false & all(func_1().e));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c - -880f)))));
    var var_2 = 1u;
    let var_3 = arg_0;
    let var_4 = u_input.a.yyz;
    return StorageBuffer(0u, -930f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20218u;
    let var_1 = true;
    var var_2 = 1u;
    var var_3 = all(!vec4<bool>(!var_1, var_1, true, all(vec2<bool>(false, var_1)))) || select(!(true & all(vec4<bool>(var_1, false, false, var_1))), true, !var_1);
    var_3 = var_1;
    let var_4 = any(vec2<bool>(true, !any(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(false, var_1, true, var_1), var_1))));
    let x = u_input.a;
    s_output = func_5(Struct_2(vec2<u32>(firstLeadingBit(~var_0), 4294967295u & (48323u << (var_0 % 32u))), Struct_1(select(any(vec2<bool>(var_1, var_4)), any(vec3<bool>(var_4, var_1, true)), !var_1), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0, var_0, 4294967295u)), ~vec3<u32>(var_0, var_0, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0, 1u), vec3<u32>(1u, 4294967295u, 0u))), 1334f, func_4(2147483647i ^ u_input.a.x, func_1(), vec3<bool>(true, true, true), select(vec2<bool>(true, var_4), vec2<bool>(var_1, var_4), vec2<bool>(var_4, var_1)))), var_0, func_1().d, vec4<bool>(all(vec2<bool>(true, true)), u_input.a.x > 18728i, var_4, !var_1)), vec2<bool>(var_4, var_4));
}

