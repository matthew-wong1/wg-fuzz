struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1158f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a + -854f)))), arg_1.a);
    let var_1 = var_0;
    var var_2 = ~arg_0.b;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -523f)), u_input.c.x);
    let var_4 = abs(9569u);
    return countOneBits(2147483647i | arg_0.b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = true;
    var_0 = true & arg_1.x;
    let var_1 = select(vec2<bool>(!(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true), arg_0.wz, max(firstLeadingBit(1u), 1u) != ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(31226u, 0u), vec2<u32>(4294967295u, 12239u))));
    var var_2 = Struct_1(arg_2.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(~2147483647i, _wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.b), -1i, 0i), _wgslsmith_add_vec4_i32(u_input.c, -u_input.c), vec4<bool>(false, arg_0.x, var_1.x && arg_1.x, true)), vec4<i32>(_wgslsmith_add_i32(-u_input.c.x, select(u_input.c.x, u_input.a, false)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-29966i, -137i, u_input.a), u_input.c.xzy), ~vec3<i32>(-2147483647i, u_input.b, 0i)), u_input.b, -2147483647i)));
    let var_3 = 1u;
    return 0u;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1257f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1452f)), _wgslsmith_f_op_f32(-388f * -259f), all(vec4<bool>(false, arg_0, true, true))))))), _wgslsmith_dot_vec3_i32(u_input.c.yyx, select(_wgslsmith_mod_vec3_i32(select(u_input.c.wyz, vec3<i32>(18991i, 0i, -1i), vec3<bool>(arg_0, arg_0, true)), ~u_input.c.wzz), u_input.c.wwz, any(vec4<bool>(arg_0, arg_0, true, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(307f)), var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a), 1281f) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), var_0.a, -1000f, var_0.a));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(424f - var_0.a), -737f, -1271f, var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, -681f, var_1.x, var_0.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 260f, var_0.a, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1102f, -463f, -1000f) * vec4<f32>(var_1.x, -1000f, var_0.a, -875f))))));
    var var_2 = ~select(abs(vec2<u32>(arg_1.x & arg_1.x, firstTrailingBit(arg_1.x))), ~_wgslsmith_mult_vec2_u32(arg_1.xy, arg_1.xw), !(!arg_0) || !(arg_0 && true));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, 1996f, var_0.a, -1320f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1357f, var_1.x, 1000f, var_1.x)))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(880f, var_1.x)), _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(max(789f, var_1.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_0.a, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x))))))));
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.zw;
    let var_1 = select(_wgslsmith_sub_i32(var_0.x, -1i), 2147483647i, false);
    var var_2 = vec3<f32>(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(246f - -1789f)) - _wgslsmith_f_op_f32(min(1306f, 307f)))), -1008f);
    return func_4(!(_wgslsmith_mult_i32(u_input.b, -2147483647i) <= _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, u_input.c.x), func_2(Struct_1(var_2.x, u_input.b), Struct_1(-1000f, -2147483647i), false, vec4<bool>(true, true, false, true)))), select(vec4<u32>(1526u, ~59992u, func_3(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) << (~4294967295u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 92067u), vec2<u32>(11973u, 28118u))), vec4<u32>(1u, 1u, 1u, 1u), true));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = func_1().b;
    let var_1 = 16731i;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)));
    var var_3 = reverseBits(firstTrailingBit(3857i));
    var_0 = 1i;
    return u_input.a;
}

fn func_6(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2607f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(396f)), _wgslsmith_f_op_f32(arg_3.x - 826f)), 595f, -866f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, 1360f, 1205f, arg_3.x)))) + arg_3));
    var_0 = arg_3;
    var var_1 = func_3(vec4<bool>(true, (true && any(vec4<bool>(false, false, true, false))) | true, false, true & (any(vec2<bool>(true, false)) != all(vec4<bool>(false, true, false, true)))), vec4<bool>(all(vec4<bool>(true, true, true, true)) != true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false))), false, !any(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, func_4(true, vec4<u32>(1u, arg_1.x, 1u, arg_1.x)).a, 1808f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3))))));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_add_u32(~(~arg_1.x), 10022u) <= (~(~arg_1.x) & arg_1.x);
    return func_1();
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<u32>(firstTrailingBit(~(~4294967295u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(22582u, 0u), vec2<u32>(0u, 88627u))), _wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(~64211u, 23562u), 1u), 35382u) ^ vec4<u32>(0u, 4294967295u, 0u, 35775u);
    var var_1 = -1i == u_input.a;
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1346f)), _wgslsmith_f_op_f32(arg_1.a + arg_0.a))) > 664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f * _wgslsmith_f_op_f32(ceil(543f)))) >= -1045f);
    var var_3 = func_6(i32(-1i) * -1i, ~(~var_0.yw), firstTrailingBit(u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_6(-1i, var_0.zx, u_input.c, vec4<f32>(arg_1.a, arg_1.a, -391f, arg_0.a)).a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), arg_0.a, _wgslsmith_f_op_f32(181f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1167f, 1000f, var_3.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -660f, -218f) + vec3<f32>(arg_1.a, -1000f, arg_1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-791f, arg_1.a, 709f), vec3<f32>(arg_1.a, 1525f, -169f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(u_input.b, ~(~vec2<u32>(1u, 1u)), vec4<i32>(1i, u_input.b, func_5(func_1()), _wgslsmith_dot_vec2_i32(~vec2<i32>(-917i, -1i), select(u_input.c.xy, u_input.c.zy, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, -486f, -1000f, 800f))))), func_4(true, ~vec4<u32>(1u, 1u, 1u, 1u)), u_input.c.zwz);
    var_0 = func_7(func_6(-18883i, vec2<u32>(~(~0u), reverseBits(1u)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-79171i, u_input.b, u_input.b, -44934i), -vec4<i32>(59122i, 12254i, var_0.b, var_0.b), vec4<bool>(false, false, true, false)), (vec4<i32>(0i, -67284i, u_input.c.x, -42478i) >> (vec4<u32>(1u, 34395u, 1u, 29469u) % vec4<u32>(32u))) & (vec4<i32>(var_0.b, 1i, -2316i, -1i) & vec4<i32>(60546i, var_0.b, u_input.a, var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(max(func_7(Struct_1(var_0.a, var_0.b), Struct_1(-1112f, var_0.b), u_input.c.zwy).a, _wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-264f + var_0.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -944f), func_6(1i, vec2<u32>(4294967295u, 4704u), u_input.c, vec4<f32>(var_0.a, 129f, -181f, 752f)).a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 251f)))), func_1(), ~u_input.c.zzy);
    let var_1 = var_0.b;
    let var_2 = func_1();
    let var_3 = func_6(func_1().b, reverseBits(vec2<u32>(~_wgslsmith_div_u32(59929u, 1u), _wgslsmith_div_u32(6951u, ~0u))), abs(u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a)))), -844f, var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a - 1461f), _wgslsmith_f_op_f32(var_0.a * var_2.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, 3095f, 288f, var_0.a))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), var_0.a, _wgslsmith_f_op_f32(ceil(var_2.a)), 434f))));
    var_0 = var_3;
    let var_4 = Struct_1(836f, select(var_2.b, var_0.b, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(step(-808f, 1f))), vec3<f32>(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-974f)), -465f) + var_4.a), 1045f), countOneBits(u_input.c), var_0.a);
}

