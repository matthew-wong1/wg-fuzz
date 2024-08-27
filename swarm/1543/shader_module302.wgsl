struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    var var_0 = u_input.a;
    var var_1 = vec2<u32>(u_input.b.x, u_input.b.x);
    var_0 = _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(var_0.x, 1i)) >> (~94398u % 32u), -(~196i)), -vec3<i32>(-u_input.a.x, u_input.c.x, ~(~28380i)));
    var var_2 = -141f;
    var_1 = abs(vec2<u32>(~(~u_input.d) & _wgslsmith_add_u32(var_1.x, firstTrailingBit(1u)), u_input.d));
    return !(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.x, 0u, var_1.x)), firstTrailingBit(vec3<u32>(u_input.d, 0u, var_1.x))), ~u_input.b.x) != 1u);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = ~u_input.d;
    let var_1 = Struct_2(select(vec2<bool>(any(vec2<bool>(false, true)), func_3(Struct_3(vec4<f32>(-467f, 384f, arg_0, 225f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -418f))))), vec2<bool>(u_input.c.x > (u_input.c.x << (u_input.d % 32u)), func_3(Struct_3(vec4<f32>(1561f, arg_0, 1289f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -875f)))), vec2<bool>(true, true)), arg_0, Struct_1(select(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(597f, arg_0))), _wgslsmith_sub_u32(min(u_input.b.x, 2159u), 1u)), u_input.d);
    let var_2 = Struct_5(~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(32829u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4461u)))), !select(!select(vec3<bool>(var_1.c.a, var_1.c.a, true), vec3<bool>(true, var_1.c.a, var_1.a.x), vec3<bool>(false, false, false)), vec3<bool>(false, !var_1.a.x, !var_1.a.x), true | (u_input.c.x > 79954i)));
    var var_3 = Struct_2(vec2<bool>(all(vec2<bool>(true, !var_2.b.x)), false), _wgslsmith_f_op_f32(ceil(arg_0)), Struct_1(((var_2.a.x << (1u % 32u)) > ~4294967295u) && !(46707u > u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-122f, arg_0), var_1.c.b, false)) + vec2<f32>(arg_0, var_1.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.b))), ~abs(~u_input.b.x)), var_2.a.x);
    let var_4 = all(select(vec4<bool>(var_1.c.a, var_3.a.x == var_2.b.x, !(!var_3.a.x), all(vec3<bool>(var_1.c.a, true, false))), !(!(!vec4<bool>(false, var_2.b.x, false, var_1.c.a))), select(vec4<bool>(var_1.c.a, var_1.c.b.x != 1046f, true, !var_1.a.x), vec4<bool>(!var_2.b.x, all(vec4<bool>(var_1.a.x, false, false, true)), !var_1.a.x, false), true)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, var_1.c.b.x, arg_0)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(182f, var_1.c.b.x, 1946f, 912f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.c.b.x, var_3.b, 120f, -179f), vec4<f32>(-1321f, arg_0, -974f, -472f))), _wgslsmith_mod_i32(u_input.a.x, u_input.c.x) <= (i32(-1i) * -1i))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(select(select(vec2<bool>(any(vec2<bool>(true, false)), arg_0.a.x >= 728f), !select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(!arg_1.a, true)), select(vec2<bool>(true, arg_1.a), !(!vec2<bool>(arg_1.a, true)), vec2<bool>(true, func_3(Struct_3(vec4<f32>(1000f, -2581f, arg_0.a.x, arg_0.a.x)), vec2<f32>(1492f, 1246f)))), vec2<bool>(true, !(!arg_1.a))), arg_1.b.a.x, Struct_1(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.x, -1276f))), -723f), u_input.d), 0u);
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-46944i, u_input.c.x), -18280i, 2147483647i);
    var_1 = max(vec3<i32>(firstLeadingBit(1i), _wgslsmith_clamp_i32(1i, 2147483647i, ~2147483647i), u_input.a.x << (27093u % 32u)), -vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, u_input.a.x), vec2<i32>(7834i, 0i)), arg_3.x)) & (arg_3 >> (~vec3<u32>(~u_input.b.x, 1u << (var_0.c.c % 32u), _wgslsmith_clamp_u32(var_0.d, u_input.d, u_input.b.x)) % vec3<u32>(32u)));
    let var_2 = ~firstLeadingBit(vec3<u32>(reverseBits(~u_input.d), ~1u << (var_0.d % 32u), ~(~var_0.d)));
    return Struct_1(var_0.a.x, arg_0.a.zw, ~_wgslsmith_mult_u32(var_0.c.c, 1u));
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = Struct_2(!vec2<bool>(_wgslsmith_f_op_f32(abs(arg_0.b.a.x)) >= _wgslsmith_f_op_f32(floor(arg_0.b.a.x)), false), arg_0.b.a.x, func_4(Struct_3(vec4<f32>(651f, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(select(-1000f, -1474f, arg_0.a)), 1857f)), arg_0, func_2(arg_0.b.a.x), _wgslsmith_div_vec3_i32(u_input.c.ywy, countOneBits(~vec3<i32>(-1446i, u_input.c.x, -10089i)))), u_input.b.x);
    var var_1 = var_0.d;
    var var_2 = Struct_5(~((_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.c, var_0.c.c, u_input.d), vec3<u32>(574u, 14407u, u_input.b.x)) | vec3<u32>(u_input.b.x, u_input.d, 1u)) ^ firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, 2537u, u_input.d)))), select(select(!select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, true, true), arg_0.a), vec3<bool>(0u < u_input.b.x, all(var_0.a), arg_0.a), all(vec2<bool>(false, true))), !(!vec3<bool>(var_0.a.x, false, false)), !select(vec3<bool>(arg_0.a, true, true), !vec3<bool>(var_0.c.a, arg_0.a, true), 890f >= var_0.b)));
    let var_3 = Struct_5(_wgslsmith_add_vec3_u32(var_2.a, vec3<u32>(1u, 0u, u_input.d)), var_2.b);
    var var_4 = abs(-(vec2<i32>(-1i) * -vec2<i32>(-9994i, u_input.c.x)));
    return 321f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)) + _wgslsmith_f_op_f32(ceil(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec2<bool>(func_1(Struct_4(true, Struct_3(vec4<f32>(-1145f, 1576f, -2586f, 641f)))), any(vec4<bool>(true, true, false, true)))));
    var_0 = select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(!(var_0.x | var_0.x), true), select(vec2<bool>(var_0.x, var_0.x || var_0.x), select(vec2<bool>(true, var_0.x), !vec2<bool>(true, var_0.x), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x)), false), vec2<bool>(true, true));
    let var_1 = func_2(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-1785f + _wgslsmith_f_op_f32(ceil(319f)))).a.x));
    var_0 = select(select(select(vec2<bool>(true, !var_0.x), select(vec2<bool>(false, false), vec2<bool>(true, var_0.x), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(true, true))), select(select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), true), select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), true), vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), false)), vec2<bool>(var_0.x, !var_0.x)), select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), var_0.x), !vec2<bool>(true, var_0.x), u_input.d == 1u), !(!(!vec2<bool>(true, var_0.x))), var_0.x), false);
    let var_2 = Struct_2(!select(vec2<bool>(false, select(false, var_0.x, var_0.x)), vec2<bool>(select(true, false, var_0.x), !var_0.x), (u_input.d ^ u_input.b.x) >= 1u), -704f, func_4(func_2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_1.a.x + 936f))), Struct_4(false, var_1), Struct_3(_wgslsmith_f_op_vec4_f32(round(var_1.a))), ~(~firstTrailingBit(u_input.a))), u_input.d);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1.a.x));
    var_0 = vec2<bool>(!all(var_2.a) == !any(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, false, var_2.c.a, false), true)), var_2.c.a);
    let var_4 = -1i;
    var var_5 = 911f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.c.b.x - _wgslsmith_f_op_f32(-var_2.c.b.x)), abs(~(-1i)), u_input.b.x, vec4<u32>(80938u, var_2.c.c << (6240u % 32u), reverseBits(~(~0u)), 44522u));
}

