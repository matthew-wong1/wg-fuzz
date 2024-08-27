struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec2<i32>(20188i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, ~(-u_input.c.x), -1i, countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x))), vec4<i32>(1i, -44408i, _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -5529i), _wgslsmith_add_i32(u_input.a.x, -40196i))));
    let var_1 = true;
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-206f + -609f))), _wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1039f - _wgslsmith_f_op_f32(max(894f, -358f))) * _wgslsmith_f_op_f32(f32(-1f) * -1187f)))));
    var var_4 = var_0.b;
    return var_3.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = all(vec2<bool>(true | (-arg_1.a.a.x <= u_input.c.x), !(u_input.b > ~91770u)));
    var var_1 = -firstLeadingBit(-1772i) == (-1i & (i32(-1i) * -arg_1.a.b.x));
    var_1 = true;
    var var_2 = select(select(select(vec2<bool>(any(vec3<bool>(false, var_0, var_0)), var_0), vec2<bool>(arg_2.c != 13497u, var_0 & var_0), !(!vec2<bool>(false, var_0))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), true), vec2<bool>(var_0, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(false, var_0)), !vec2<bool>(var_0, var_0), 993f > arg_2.b.x), select(vec2<bool>(true, true), select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, var_0)), select(vec2<bool>(false, false), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)))), var_0), select(vec2<bool>(any(vec4<bool>(var_0, true, var_0, false)), select(true, var_0, select(false, var_0, false))), select(!select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(round(283f)) != arg_2.b.x), vec2<bool>(select(false, _wgslsmith_div_u32(arg_2.c, u_input.b) >= ~0u, _wgslsmith_f_op_f32(f32(-1f) * -810f) <= _wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x)), !(!(var_0 && false))));
    var var_3 = arg_1.a;
    return 46398i;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(-countOneBits(~_wgslsmith_div_i32(u_input.c.x, arg_0.a.b.x)), arg_0.a.a.x, arg_0.a.a.x);
    var var_1 = vec4<bool>(!arg_1, -817f != arg_0.b.x, arg_1, any(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, false, arg_1)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_3 = select(vec4<bool>(any(!(!vec4<bool>(false, var_1.x, true, false))), true, arg_1, var_1.x), vec4<bool>(arg_1, var_1.x, false, all(select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), !var_1.yx))), !vec4<bool>(!(arg_1 | false), var_1.x, true, false));
    var_1 = vec4<bool>(select(arg_1, true, var_1.x), true, any(select(var_1.yzw, select(select(var_3.wyx, var_3.xyz, var_3.x), !vec3<bool>(arg_1, arg_1, var_3.x), any(vec3<bool>(arg_1, false, arg_1))), !select(var_1.x, arg_1, arg_1))), true);
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(-func_3(arg_0.a, arg_0, Struct_2(Struct_1(vec2<i32>(29705i, var_0), vec4<i32>(29840i, var_0, 22670i, 1i)), vec3<f32>(var_2, 266f, arg_0.b.x), 41463u)), _wgslsmith_mod_i32(var_0 ^ var_0, 1i)), var_0), reverseBits(arg_0.a.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = u_input.c.x;
    var_0 = abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.x, u_input.a.x, -41768i, 53239i), arg_2.b)), func_1(Struct_2(Struct_1(u_input.a.yy, vec4<i32>(-2147483647i, arg_2.b.x, u_input.a.x, -18777i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, 1175f, 667f)), ~49830u), -46193i <= u_input.a.x).b));
    var_0 = _wgslsmith_sub_i32(arg_2.a.x, countOneBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, -30793i)), -vec2<i32>(-22408i, 1i)) & 1i));
    let var_1 = arg_2.b.x;
    var var_2 = Struct_1(min(arg_2.b.yy, _wgslsmith_add_vec2_i32(firstTrailingBit(arg_2.b.xz), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, 0i), vec2<i32>(1i, 23947i) ^ vec2<i32>(var_1, 0i)))), ~(select(vec4<i32>(0i, 2147483647i, var_1, -49563i), -arg_2.b, all(vec3<bool>(false, false, arg_1.x))) | arg_2.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<i32>(u_input.c.x | (46768i ^ u_input.a.x), ~(-u_input.c.x)), ~vec4<i32>(2147483647i, u_input.a.x, 1i, 30570i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(968f, -331f, 1000f)) * vec3<f32>(859f, -2023f, _wgslsmith_div_f32(-1671f, 609f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(470f, 477f, -1145f)))), vec3<f32>(613f, 764f, _wgslsmith_f_op_f32(select(1000f, 256f, true))), func_4(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_1(Struct_2(Struct_1(u_input.a.zx, vec4<i32>(u_input.c.x, u_input.c.x, -361i, u_input.c.x)), vec3<f32>(272f, -877f, -1000f), u_input.b), true), u_input.c.x < u_input.a.x)))), 40761u);
    let var_1 = -1678f;
    let var_2 = var_0.b.x;
    var_0 = Struct_2(Struct_1(u_input.a.zz, vec4<i32>(-2147483647i, -2147483647i, var_0.a.b.x, ~(-21738i))), var_0.b, 50024u);
    let var_3 = vec3<u32>(firstLeadingBit(var_0.c), ~(~(~0u)), 0u) | vec3<u32>(4294967295u, var_0.c, _wgslsmith_sub_u32(min(~41609u, ~1u), _wgslsmith_add_u32(1u, 63967u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1276f)))))), reverseBits(var_0.a.b | ~var_0.a.b) >> (vec4<u32>(12801u, var_3.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_3.x), ~8303u), 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.a.a.x, _wgslsmith_mult_i32(1i & var_0.a.b.x, ~11083i)), -1i));
}

