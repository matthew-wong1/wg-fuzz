struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, arg_0.d.c) - _wgslsmith_f_op_f32(988f + 1209f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.c, _wgslsmith_f_op_f32(step(arg_1.c, 804f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.c)), _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f)) - 714f)));
    let var_1 = arg_0;
    let var_2 = abs(~(~var_1.d.b));
    var_0 = -309f;
    return ~(i32(-1i) * -58462i);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec2<u32>(~arg_2.x, arg_1.x);
    var var_1 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-7425i, 1i), vec2<i32>(2147483647i, func_3(Struct_2(true, 13431i, Struct_1(27497i, vec4<u32>(15699u, 58978u, var_0.x, arg_1.x), -688f), Struct_1(-63719i, vec4<u32>(arg_1.x, 5846u, u_input.a.x, arg_1.x), arg_0), arg_2), Struct_1(-2147483647i, u_input.a, -1396f), arg_3.x, u_input.a.wwx))), -countOneBits(35113i)));
    var_1 = vec2<i32>(abs(1i) & ((var_1.x & -4005i) << (var_0.x % 32u)), -1i) | countOneBits(~(-(~vec2<i32>(-24363i, var_1.x))));
    var var_2 = Struct_2(false, _wgslsmith_dot_vec2_i32(~(vec2<i32>(var_1.x, -1i) | -vec2<i32>(var_1.x, -1i)), reverseBits((vec2<i32>(var_1.x, var_1.x) & vec2<i32>(var_1.x, var_1.x)) >> (vec2<u32>(arg_2.x, var_0.x) % vec2<u32>(32u)))), Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, 0i, -1i), vec4<i32>(var_1.x, 1i, var_1.x, var_1.x)), vec4<i32>(1i, var_1.x, var_1.x, -31603i) << (~u_input.a % vec4<u32>(32u))), u_input.a | vec4<u32>(_wgslsmith_mod_u32(16768u, 1u), ~arg_1.x, 18129u, 37619u), 978f), Struct_1(~(-4631i), vec4<u32>(~43598u, _wgslsmith_div_u32(~51454u, arg_1.x), ~(~arg_1.x), ~1u), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(arg_0)), !(4294967295u == u_input.a.x)))), ~abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zxz, u_input.a.xxz), arg_2, _wgslsmith_div_vec3_u32(u_input.a.wwy, arg_2))));
    var_2 = Struct_2((select(!var_2.a, false, arg_3.x) | all(arg_3.ww)) && true, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_1.x, ~countOneBits(var_2.d.a), min(var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.a, var_1.x, var_2.d.a, -27469i), vec4<i32>(var_2.c.a, var_2.d.a, 37897i, var_1.x)))), (1i | _wgslsmith_mult_i32(var_2.c.a, var_2.c.a)) << (4294967295u % 32u)), Struct_1(_wgslsmith_div_i32(~2147483647i & var_1.x, var_2.c.a), vec4<u32>(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(var_0.x, arg_1.x, arg_1.x)), u_input.a.x, reverseBits(~var_2.c.b.x)), var_2.c.c), Struct_1(~_wgslsmith_div_i32(var_2.c.a, var_1.x), ~(~u_input.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 991f), _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(461f - -661f))))), abs(~vec3<u32>(~u_input.a.x, var_0.x, arg_1.x)));
    return -652f;
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = arg_0.wyw;
    let var_1 = Struct_2(16524u > u_input.a.x, firstTrailingBit(-1i), Struct_1(0i, vec4<u32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x, 1u) & ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1061u), _wgslsmith_f_op_f32(step(1229f, _wgslsmith_f_op_f32(arg_0.x * -910f)))), Struct_1(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(27082i, 1i, -1i)), -vec3<i32>(19329i, 13201i, 0i)), ((u_input.a ^ u_input.a) << (~vec4<u32>(4294967295u, u_input.a.x, 5055u, u_input.a.x) % vec4<u32>(32u))) | u_input.a, 1086f), (vec3<u32>(4294967295u, u_input.a.x, ~43424u) ^ ~(~vec3<u32>(4294967295u, u_input.a.x, 4294967295u))) | countOneBits(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ select(u_input.a.wzy, u_input.a.yyx, true)));
    var var_2 = var_1.d;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(~(36488u | var_2.b.x), 32801u) >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.b.x, ~var_1.e.x), ~var_1.e.x, 0u & u_input.a.x) % 32u), _wgslsmith_mult_u32(min(u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.e.x), var_1.e.xy)), var_2.b.x), 1u);
    var_2 = Struct_1(-73347i, min(u_input.a, _wgslsmith_div_vec4_u32(~var_2.b, u_input.a) | var_1.d.b), var_0.x);
    return var_1;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(525f, _wgslsmith_div_f32(1523f, 100f)), _wgslsmith_f_op_f32(min(120f, _wgslsmith_f_op_f32(func_2(299f, vec3<u32>(u_input.a.x, u_input.a.x, 35570u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, arg_0, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1370f * 2414f)), _wgslsmith_f_op_f32(f32(-1f) * -174f))));
    var var_1 = var_0.d.b << (_wgslsmith_mult_vec4_u32(~vec4<u32>(~var_0.c.b.x, ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(var_0.d.b.x, 44439u, u_input.a.x)), 49760u << (1u % 32u)), ~(~countOneBits(u_input.a))) % vec4<u32>(32u));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.c, var_0.c.c, var_0.c.c, 1202f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c, var_0.d.c, var_0.d.c, var_0.c.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, var_0.c.c, 169f, var_0.d.c))))));
    let var_3 = Struct_1(2147483647i, ~select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.b.x, 4294967295u, 34896u, 4294967295u), vec4<u32>(6546u, 0u, var_1.x, 1u)) ^ vec4<u32>(4294967295u, 1u, var_0.e.x, 0u), _wgslsmith_clamp_vec4_u32(var_0.d.b, var_0.d.b, var_2.d.b), !(!vec4<bool>(true, false, arg_0, var_0.a))), _wgslsmith_f_op_f32(func_2(1640f, vec3<u32>(0u, ~var_1.x, 0u) & firstLeadingBit(~var_0.d.b.wxz), var_2.d.b.yzw, select(vec4<bool>(true, true, true, true), vec4<bool>(false, !var_0.a, !arg_0, all(vec3<bool>(var_0.a, arg_0, var_0.a))), false))));
    var var_4 = var_2.b;
    return _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(272f, var_3.c, 1103f, 1757f) * vec4<f32>(-287f, var_3.c, -859f, 894f)))))).e.x, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~33309u ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, ~58896u), _wgslsmith_mod_u32(func_1(false), _wgslsmith_mult_u32(0u, u_input.a.x)))) << (countOneBits(6025u) % 32u);
    let var_1 = vec4<u32>(var_0, _wgslsmith_clamp_u32(35972u, ~select(u_input.a.x, ~u_input.a.x, true), 4294967295u << ((countOneBits(var_0) | ~4294967295u) % 32u)), _wgslsmith_clamp_u32(1u, abs(~_wgslsmith_div_u32(u_input.a.x, 1u)), 44928u), ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(var_1.zxz, var_1.xwy), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -15519i, 1i, -2147483647i)), -vec4<i32>(-2147483647i, -11371i, -34011i, 62536i) >> (~var_1 % vec4<u32>(32u))) >> (var_0 % 32u), vec4<i32>(_wgslsmith_add_i32(func_3(Struct_2(false, -2147483647i, Struct_1(-25720i, u_input.a, 645f), Struct_1(-1i, u_input.a, -216f), vec3<u32>(var_0, 1u, var_0)), Struct_1(-2147483647i, var_1, -1804f), true, select(vec3<u32>(0u, 19659u, var_0), u_input.a.xxx, vec3<bool>(true, false, false))), select(_wgslsmith_div_i32(-1842i, -1i), -1i, true)), 1i, 2147483647i, -38069i), _wgslsmith_mult_i32(_wgslsmith_add_i32(select(27106i, -1i, false), ~(-2147483647i)) >> (max(1u, 40777u) % 32u), ~(~(~(-33198i)))));
}

