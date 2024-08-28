struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = -1i;
    var var_1 = !vec2<bool>(true, 2147483647i == (_wgslsmith_div_i32(104371i, u_input.d) >> (1u % 32u)));
    var var_2 = _wgslsmith_mult_vec4_u32(~u_input.c, ~(~u_input.c));
    return 327f;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = ~vec3<u32>(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.c.a.x, 48205u), vec3<u32>(26534u, 1u, 40315u)), 0u), ~u_input.c.x, firstLeadingBit(abs(4294967295u)));
    var_0 = vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 81586u) | vec3<u32>(var_0.x, arg_0.c.a.x, 4294967295u)), (~u_input.c.xwx | _wgslsmith_sub_vec3_u32(u_input.c.xzx, u_input.c.zxw)) << (firstLeadingBit(~u_input.c.xww) % vec3<u32>(32u))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1((~(var_0.yz << (vec2<u32>(9389u, 42131u) % vec2<u32>(32u))) ^ ~u_input.c.wz) | ~(~vec2<u32>(u_input.c.x, 0u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x >> (u_input.c.x % 32u), _wgslsmith_sub_u32(arg_0.a, var_0.x)) >> (arg_0.a % 32u), _wgslsmith_div_u32(0u, 29553u ^ arg_0.a)));
    var_2 = Struct_1(var_2.a, ~(u_input.c.x << (~1u % 32u)));
    return Struct_1(vec2<u32>(88689u, reverseBits(4294967295u)), u_input.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = func_3(Struct_4(~0u, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.d, 2147483647i, -1i)), ~vec3<i32>(arg_2.c.x, u_input.a, u_input.b.x)), Struct_3(select(func_3(Struct_4(u_input.c.x, u_input.b.x, Struct_3(vec2<u32>(u_input.c.x, 4294967295u), -2528i, arg_2.c, vec4<i32>(-21910i, 0i, arg_2.d.x, arg_2.b))), vec4<f32>(250f, 272f, 725f, 619f), 739f).a, vec2<u32>(arg_2.a.x, 4294967295u), !vec2<bool>(true, arg_0)), -25777i, vec4<i32>(u_input.d, u_input.d, arg_2.c.x, 2147483647i), u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, -449f, -1435f, -197f)))), vec4<f32>(-999f, _wgslsmith_f_op_f32(1393f - _wgslsmith_f_op_f32(floor(-511f))), _wgslsmith_f_op_f32(-102f * -902f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) - _wgslsmith_f_op_f32(496f - -1364f))), (_wgslsmith_f_op_f32(select(-1668f, 176f, false)) <= _wgslsmith_f_op_f32(-825f - 1338f)) & !(true | arg_0))), 1000f);
    var_0 = Struct_1(vec2<u32>(934u, _wgslsmith_mult_u32(arg_1.a.x, 49702u)), min(_wgslsmith_add_u32(91916u, 1u), firstTrailingBit(_wgslsmith_mod_u32(abs(1u), u_input.c.x))));
    var var_1 = 1f;
    var_0 = func_3(Struct_4(arg_1.a.x, (-2147483647i << (arg_2.a.x % 32u)) | u_input.a, Struct_3(max(vec2<u32>(arg_3.b, u_input.c.x), vec2<u32>(arg_2.a.x, u_input.c.x)), 1i, u_input.b, vec4<i32>(i32(-1i) * -2147483647i, arg_2.b, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(16689i, arg_2.b), vec2<i32>(-1i, 0i))))), vec4<f32>(_wgslsmith_div_f32(-711f, 1104f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-624f + 625f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1303f + -1855f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-486f - _wgslsmith_f_op_f32(f32(-1f) * -1135f))))), -416f);
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1263f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-359f, 1402f))))))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-521f, -483f, -1884f, 333f)))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), any(vec4<bool>(false, true, false, false)))), func_3(Struct_4(firstLeadingBit(103346u), (u_input.a >> (4294967295u % 32u)) << (1u % 32u), Struct_3(abs(vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_mod_i32(u_input.b.x, u_input.a), -vec4<i32>(u_input.a, u_input.d, u_input.d, 1i), vec4<i32>(0i, 0i, -24690i, 1i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, -799f, 381f, 643f)), vec4<f32>(602f, 608f, 1761f, 1795f))))), _wgslsmith_f_op_f32(func_2(~(~vec3<u32>(19315u, u_input.c.x, 3108u))))), Struct_3(~min(u_input.c.ww, abs(vec2<u32>(69780u, u_input.c.x))), 1i, ~vec4<i32>(2147483647i, u_input.d, u_input.d, 10221i) << (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-9704i, -1i, u_input.b.x, u_input.a), vec4<i32>(-32884i, u_input.b.x, 2147483647i, 1i)) ^ ~firstLeadingBit(u_input.b)), func_3(Struct_4(1u, max(~15364i, 2147483647i), Struct_3(~vec2<u32>(u_input.c.x, u_input.c.x), u_input.a, vec4<i32>(14351i, 2147483647i, -2147483647i, -2147483647i), u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-159f, -111f, -1000f, 1000f), vec4<f32>(-1231f, -1228f, -334f, 1328f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-985f)) + _wgslsmith_f_op_f32(floor(-148f))), _wgslsmith_f_op_f32(-1000f - 413f))))));
    let var_2 = Struct_4(_wgslsmith_sub_u32(~(~u_input.c.x), abs(func_3(Struct_4(1u, u_input.b.x, Struct_3(u_input.c.zz, u_input.a, u_input.b, vec4<i32>(-49785i, 12190i, u_input.d, u_input.a))), vec4<f32>(var_1.x, var_1.x, 536f, -1368f), _wgslsmith_f_op_f32(-379f - -190f)).a.x)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -34492i, 1i, -29947i), u_input.b >> (vec4<u32>(17871u, 1u, 41820u, 1u) % vec4<u32>(32u)))) | -29552i, Struct_3(vec2<u32>(1u, 1u), (firstTrailingBit(u_input.d) & u_input.a) >> (_wgslsmith_mod_u32(1u & u_input.c.x, 1u) % 32u), -vec4<i32>(u_input.d, _wgslsmith_mult_i32(u_input.a, u_input.a), ~(-47671i), min(-2147483647i, u_input.b.x)), u_input.b));
    var var_3 = vec3<i32>(1i, 2947i, _wgslsmith_add_i32(reverseBits(~0i) | var_2.b, ~1i));
    var_0 = u_input.d;
    return ~(~(-8828i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1189f, _wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(f32(-1f) * -1004f)));
    let var_1 = abs(_wgslsmith_div_i32(-func_1(), firstTrailingBit(_wgslsmith_mod_i32(-1i, u_input.a))));
    var var_2 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_1 != -13208i, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), true)));
    var_2 = !select(select(!select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), vec4<bool>(var_2.x, all(vec4<bool>(false, var_2.x, var_2.x, false)), any(vec3<bool>(var_2.x, var_2.x, false)), any(var_2.ywy)), vec4<bool>(false != var_2.x, var_2.x, true, any(var_2.zwy))), select(vec4<bool>(any(var_2.yz), true, !var_2.x, !var_2.x), select(!vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, false), false & var_2.x), vec4<bool>(any(vec3<bool>(var_2.x, var_2.x, false)), var_2.x && false, var_1 != -2147483647i, 333f < var_0.x)), select(!vec4<bool>(true, false, var_2.x, var_2.x), !(!vec4<bool>(var_2.x, false, var_2.x, false)), var_2.x));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.x, var_0.x), vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_add_u32(44122u, u_input.c.x)), u_input.c.x) & ~vec2<u32>(u_input.c.x << (0u % 32u), u_input.c.x << (u_input.c.x % 32u)), ~(~30963u), select(vec3<i32>(abs(var_1), ~u_input.b.x, ~(~u_input.a)), vec3<i32>(-1i) * -vec3<i32>(var_1, u_input.d, u_input.b.x), vec3<bool>(var_2.x, true, var_2.x)), 715f);
}

