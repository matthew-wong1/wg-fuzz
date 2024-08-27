struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

var<private> global1: array<vec3<u32>, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.d, arg_1.b.d, 1180f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(281f, arg_1.b.c.x, -113f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2007f, -117f, arg_1.b.c.x)), false))), vec3<f32>(-390f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.c.x, -958f) - arg_1.b.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1010f))))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true))) - _wgslsmith_f_op_vec3_f32(select(arg_1.a.c, arg_1.b.c, vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(arg_1.b.c));
    let var_2 = _wgslsmith_div_vec2_u32(arg_1.b.a.zx, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.a.x, 55114u) | ~arg_1.b.a.zx, ~select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(4294967295u, 39962u), vec2<bool>(true, true))));
    var var_3 = arg_1.a;
    var_3 = Struct_1(_wgslsmith_mult_vec3_u32(arg_1.a.a, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_2.x, 12u)], arg_1.b.a), 66322u), ~var_2.x, 35302u)), 2147483647i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1319f + var_3.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * var_3.d), var_3.c.x, 4294967295u < u_input.a.x)), var_3.c.x))), -686f);
    return ~_wgslsmith_div_i32(~_wgslsmith_mod_i32(0i & var_3.b, var_3.b), _wgslsmith_add_i32(arg_1.b.b, arg_1.a.b));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(-726f));
    let var_1 = Struct_2(Struct_1(~(~global1[_wgslsmith_index_u32(4294967295u, 12u)]) | ~(vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (vec3<u32>(4294967295u, 13901u, u_input.a.x) % vec3<u32>(32u))), (func_3(66214u, Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 12u)], 13901i, vec3<f32>(-2110f, 954f, 824f), 1000f), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 4598i, vec3<f32>(-605f, 366f, -779f), -1022f))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 48872u), vec3<u32>(1u, u_input.a.x, 0u)) % 32u)) >> (u_input.a.x % 32u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, -1210f, -356f)))), 1341f), Struct_1(vec3<u32>(reverseBits(~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 60619u), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17337i) << (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(3371f, -906f, -278f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -1798f))));
    return ~4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(min(~global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<u32>(1u, 100181u, 29739u) | vec3<u32>(arg_1.x, arg_1.x, 53633u)), vec3<u32>(31530u, 40141u, 1u) >> (vec3<u32>(arg_0, arg_0, 7024u) % vec3<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(31714i, 1i), -68691i), -24009i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(905f + 168f), -1074f, 489f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1429f, 788f)))))), Struct_1(select(vec3<u32>(arg_0 << (u_input.a.x % 32u), func_2(vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 2016u, arg_1.x, u_input.a.x), vec4<u32>(u_input.a.x, arg_1.x, 48593u, u_input.a.x))), abs(vec3<u32>(35204u, 0u, arg_0)), true), -firstTrailingBit(_wgslsmith_div_i32(-1i, 1i)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1745f)), -357f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-154f, -333f)) + 2150f)), _wgslsmith_div_f32(1463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) + _wgslsmith_div_f32(-1316f, 507f)))));
    global0 = array<vec4<f32>, 9>();
    var var_1 = Struct_3(var_0.a, vec3<i32>(~(-(~var_0.b.b)), var_0.b.b, 4623i), _wgslsmith_mult_u32(u_input.a.x, ~firstLeadingBit(25271u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 55744u, 8384u), ~vec3<u32>(1u, 0u, 1u)), select(arg_1, arg_1, false) >> (vec3<u32>(var_0.a.a.x, arg_0, 48740u) % vec3<u32>(32u)))), Struct_2(Struct_1(~abs(vec3<u32>(var_0.a.a.x, u_input.a.x, 0u)), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.c) - var_0.b.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.d * -418f)))), Struct_1(global1[_wgslsmith_index_u32(var_0.b.a.x | (0u >> (1u % 32u)), 12u)], var_0.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.c.x, var_0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d * 219f) + _wgslsmith_f_op_f32(sign(378f))))));
    let var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(var_0.b.c.x + _wgslsmith_f_op_f32(var_0.a.c.x - 2065f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-515f, var_1.a.d, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1023f)), true), vec2<bool>(any(vec3<bool>(true, any(vec2<bool>(false, true)), var_0.a.a.x != arg_0)), true), vec2<bool>(all(vec4<bool>(true, var_0.b.c.x >= 1011f, true, false)), any(vec3<bool>(true, true, true))));
    var_1 = Struct_3(var_0.b, var_1.b, _wgslsmith_mult_u32(~(~(~1u)), countOneBits(_wgslsmith_add_u32(41777u, u_input.a.x) & firstTrailingBit(8254u))), var_0.b.a, Struct_2(var_0.b, Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b.a, arg_1), vec3<u32>(var_0.a.a.x, arg_0, var_0.a.a.x), vec3<u32>(4294967295u, 31134u, var_1.e.b.a.x)), -_wgslsmith_dot_vec2_i32(var_1.b.xx, vec2<i32>(var_1.b.x, var_1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.d)), _wgslsmith_f_op_f32(abs(-106f)), _wgslsmith_f_op_f32(1085f + 1313f)), _wgslsmith_f_op_f32(611f + 1397f))));
    return var_0.b;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = Struct_2(func_4(_wgslsmith_div_u32(u_input.a.x << ((u_input.a.x << (4294967295u % 32u)) % 32u), u_input.a.x << (func_2(vec3<bool>(false, true, false)) % 32u)), ~(~(~vec3<u32>(u_input.a.x, 25691u, u_input.a.x)))), func_4(min(~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_dot_vec2_u32(select(u_input.a, vec2<u32>(8645u, u_input.a.x), false), vec2<u32>(u_input.a.x, 25541u))), func_4(~(~0u), select(select(global1[_wgslsmith_index_u32(33239u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<bool>(false, false, true)), _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(15555u, 12u)]), vec3<bool>(true, true, false))).a));
    let var_1 = _wgslsmith_div_i32(max(var_0.a.b, 50138i) & var_0.b.b, var_0.a.b) ^ max(-2147483647i, func_3(28938u, Struct_2(var_0.b, var_0.a)) & select(abs(-2147483647i), abs(var_0.b.b), true));
    var var_2 = !(false && any(vec2<bool>(true, true)));
    let var_3 = Struct_2(func_4(~12842u, vec3<u32>(var_0.a.a.x, 1u, ~66628u)), var_0.a);
    var var_4 = _wgslsmith_mult_u32(66142u, var_0.a.a.x);
    return var_3.b.b;
}

fn func_5(arg_0: i32) -> vec2<f32> {
    var var_0 = !(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true)))));
    var var_1 = Struct_3(Struct_1(~(~abs(vec3<u32>(4294967295u, 0u, u_input.a.x))), 21245i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2818f)))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(arg_0), 0i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-2018i, arg_0, 19040i) << (global1[_wgslsmith_index_u32(0u, 12u)] % vec3<u32>(32u)), countOneBits(vec3<i32>(arg_0, -16252i, arg_0)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(u_input.a.x) ^ (u_input.a.x << (97978u % 32u)), 34742u, u_input.a.x), _wgslsmith_add_u32((u_input.a.x << (u_input.a.x % 32u)) << (u_input.a.x % 32u), u_input.a.x)), vec3<u32>(91342u, u_input.a.x ^ ~(~28090u), u_input.a.x), Struct_2(func_4(~abs(u_input.a.x), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 38848u, 0u), global1[_wgslsmith_index_u32(24432u, 12u)]))), Struct_1(~(~global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 13502i) & vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(109f, -1307f, 675f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1096f, 671f, -1486f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-108f)))))));
    let var_2 = Struct_1(vec3<u32>(~39501u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 25263u), vec2<u32>(48584u, 0u)) ^ ~vec2<u32>(u_input.a.x, var_1.a.a.x))), abs(firstLeadingBit(1i)) & _wgslsmith_add_i32(~var_1.a.b, -1648i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.c)), _wgslsmith_f_op_vec3_f32(var_1.a.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.c + var_1.a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d, -390f, 1765f) - vec3<f32>(var_1.e.a.c.x, var_1.a.c.x, var_1.e.b.d)))), true)), _wgslsmith_f_op_f32(1176f + _wgslsmith_f_op_f32(trunc(-1000f))));
    var var_3 = countOneBits(firstTrailingBit(~(~vec4<u32>(u_input.a.x, 1u, 0u, var_1.d.x)) ^ firstTrailingBit(countOneBits(vec4<u32>(var_1.d.x, u_input.a.x, var_2.a.x, 0u)))));
    var var_4 = var_1.e;
    return vec2<f32>(-2064f, 257f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(abs(func_1(-545f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-344f, -789f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, -243f) * vec2<f32>(-328f, 1525f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1595f, 614f)) + vec2<f32>(-209f, 506f)), true))));
    global1 = array<vec3<u32>, 12>();
    let var_1 = ~countOneBits(~select(vec4<u32>(u_input.a.x, u_input.a.x, 41460u, u_input.a.x), firstLeadingBit(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x)), false));
    var var_2 = 11012u;
    var var_3 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-31358i, select(1i, _wgslsmith_mult_i32(0i, -4824i), all(vec2<bool>(true, true))), abs(17695i), reverseBits(_wgslsmith_add_i32(-1i, 1i))), ~min(-vec4<i32>(1i, 1i, 1i, 1i), -(vec4<i32>(0i, 0i, -10131i, 2147483647i) << (vec4<u32>(u_input.a.x, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_5 = Struct_2(func_4(u_input.a.x, ~(~var_1.xwx)), func_4(24413u, vec3<u32>(~_wgslsmith_dot_vec3_u32(var_1.wyx, global1[_wgslsmith_index_u32(79803u, 12u)]), min(abs(0u), var_1.x), abs(var_1.x))));
    var var_6 = Struct_1(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.yww, ~global1[_wgslsmith_index_u32(0u, 12u)]), global1[_wgslsmith_index_u32(1u | var_5.a.a.x, 12u)]), var_3.x, vec3<f32>(var_0.x, 1016f, 1390f), var_5.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_6.b) << (((2583u & _wgslsmith_div_u32(var_6.a.x, 1u)) & ((31245u >> (var_6.a.x % 32u)) << (var_6.a.x % 32u))) % 32u), func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 0u, max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -89781i, var_5.a.b, -2147483647i) ^ countOneBits(vec4<i32>(-27276i, var_5.a.b, 2147483647i, 1i)), firstTrailingBit(vec4<i32>(var_6.b, var_3.x, 45148i, var_5.b.b) << (vec4<u32>(var_6.a.x, 18554u, u_input.a.x, 2229u) % vec4<u32>(32u)))), var_5.b.b), var_3.wxz);
}

