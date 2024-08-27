struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = select(any(vec3<bool>(arg_2.x, 12159u < u_input.b, any(vec4<bool>(true, arg_2.x, true, arg_0)))), !(!arg_0), arg_0 | true) == !(!(_wgslsmith_f_op_f32(select(arg_1, 2114f, false)) > arg_1));
    var var_1 = -u_input.c;
    var var_2 = Struct_1(select(select(arg_2, !arg_2, select(arg_2, !arg_2, arg_2)), select(arg_2, !select(vec2<bool>(arg_0, arg_2.x), arg_2, arg_0), arg_2), _wgslsmith_f_op_f32(abs(arg_1)) == _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(120f - arg_1))), select(arg_2.x, arg_0, any(!(!vec3<bool>(false, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-715f, 1000f, 1052f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_2.x, select(_wgslsmith_sub_i32(2147483647i, 12755i), -19286i, arg_0) > -53040i);
    var_1 = countOneBits(~1i);
    var_2 = Struct_1(!vec2<bool>(-u_input.a <= u_input.c, false), all(vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-arg_1), arg_1, -101f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f)), 1140f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.x, arg_1)))), all(vec2<bool>(any(vec3<bool>(true, true, true)), arg_2.x)), true);
    return var_2.c;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f + 1154f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1033f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, 653f, vec2<bool>((u_input.c | -3831i) <= u_input.c, any(vec3<bool>(true, false, false)) || true))));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, ~u_input.b, reverseBits(u_input.b), 47829u)), vec4<u32>(u_input.b, u_input.b, max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b)), min(24067u, u_input.b)), abs(u_input.b)), vec4<u32>(u_input.b & u_input.b, 6785u, _wgslsmith_mod_u32(1u, 3934u), 11942u) & firstLeadingBit(~vec4<u32>(15858u, 77247u, u_input.b, 1u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + _wgslsmith_div_f32(1000f, 388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))))));
    return Struct_1(vec2<bool>(max(~4294967295u, 4294967295u) >= ~u_input.b, true), !(-2147483647i != ~abs(u_input.c)), var_1, select(u_input.b > 16703u, false, any(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), 1i >= u_input.c)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_div_u32(~abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, arg_1.x, 0u), vec4<u32>(60994u, arg_1.x, arg_1.x, 44779u)), ~arg_1.x)), u_input.b);
    var var_1 = arg_0;
    let var_2 = true;
    var_1 = arg_0;
    var_0 = arg_1.x;
    return !any(vec3<bool>(all(arg_2), false, false));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    let var_0 = 4434u;
    let var_1 = arg_1;
    let var_2 = Struct_2(arg_1.a, arg_1.b, arg_1.c);
    var var_3 = countOneBits(~u_input.b);
    var_3 = abs(~(select(~u_input.b, 1u, true) ^ ((var_0 ^ 4294967295u) >> (_wgslsmith_mod_u32(u_input.b, 69004u) % 32u))));
    return Struct_3(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_0) | vec2<u32>(52807u, var_0), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(105648u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1024u, 0u), vec2<u32>(u_input.b, u_input.b))) >> (firstTrailingBit(vec2<u32>(reverseBits(u_input.b), ~var_0)) % vec2<u32>(32u)), var_1.b.b, Struct_2(var_2.a, func_2(), var_2.c), Struct_1(!(!(!var_1.b.a)), arg_1.b.e, vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_2.b.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1382f, 1000f)), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-var_2.b.c.x)), false, !func_4(Struct_2(vec2<f32>(arg_1.b.c.x, -236f), var_2.b, arg_1.c), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(var_0, u_input.b, u_input.b)), select(vec4<bool>(arg_1.b.b, true, true, var_1.b.a.x), vec4<bool>(arg_0.x, arg_0.x, arg_1.b.b, true), vec4<bool>(false, var_1.b.a.x, true, true)), var_1.c)), var_1.b);
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(~reverseBits(u_input.b & (u_input.b << (102361u % 32u))), 6785u, u_input.b);
    let var_1 = func_5(vec4<bool>(any(vec3<bool>(false, false, true)) || (u_input.c == u_input.c), true, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, -299f)), func_2(), u_input.c), vec3<u32>(var_0.x, 1u, reverseBits(1u)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), 1i), !(u_input.a != -2147483647i)), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(470f, 1137f) + vec2<f32>(1021f, 2123f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1409f, -107f))))), func_2(), _wgslsmith_sub_i32(-1i, -31512i)), any(vec4<bool>(true, func_4(Struct_2(vec2<f32>(-1348f, -1326f), Struct_1(vec2<bool>(false, false), false, vec4<f32>(1671f, 295f, 939f, -1533f), false, false), u_input.c), vec3<u32>(u_input.b, 1u, var_0.x), vec4<bool>(false, true, false, false), -34546i) & (u_input.a == u_input.a), false, any(vec4<bool>(true, false, false, false)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -109f) + var_1.d.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(180f))))))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1406f);
    let var_4 = func_5(!vec4<bool>(var_1.b & (var_1.e.c.x < var_2), all(!vec3<bool>(var_1.b, var_1.e.d, var_1.b)), _wgslsmith_div_i32(u_input.c, var_1.c.c) >= 4097i, false && var_1.b), var_1.c, var_1.b && ((u_input.c | var_1.c.c) <= (-23441i | var_1.c.c))).e;
    return Struct_3(var_0.xx, !var_1.c.b.b, func_5(!select(vec4<bool>(var_1.b, var_4.d, var_4.b, true), vec4<bool>(var_4.b, false, false, false), vec4<bool>(var_1.c.b.b, true, true, var_4.e)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b.c.x, 299f) * _wgslsmith_f_op_vec2_f32(var_1.c.b.c.xz + var_4.c.xy)), var_4, -(~0i)), any(vec3<bool>(-561f >= var_1.d.c.x, var_1.e.e, var_1.c.b.a.x))).c, Struct_1(vec2<bool>(_wgslsmith_f_op_f32(trunc(1000f)) > _wgslsmith_f_op_f32(var_2 - -1000f), !select(var_1.b, var_1.b, true)), (var_4.c.x < -664f) & all(select(var_1.d.a, vec2<bool>(var_1.d.b, true), vec2<bool>(var_4.a.x, var_1.d.b))), _wgslsmith_f_op_vec4_f32(-var_4.c), var_4.b, !var_4.b), var_4);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    var var_0 = func_1().c;
    var_0 = func_1().c;
    var_0 = func_5(select(!(!select(vec4<bool>(false, var_0.b.d, arg_1.b.b, true), vec4<bool>(var_0.b.b, arg_0.b, false, arg_1.b.b), arg_0.e.e)), select(select(select(vec4<bool>(arg_0.c.b.d, true, true, false), vec4<bool>(true, true, var_0.b.a.x, false), var_0.b.e), !vec4<bool>(false, false, var_0.b.a.x, false), vec4<bool>(false, arg_0.b, false, true)), vec4<bool>(true, true, !var_0.b.e, var_0.b.e), true), vec4<bool>(func_4(arg_1, ~vec3<u32>(4294967295u, 28265u, u_input.b), !vec4<bool>(var_0.b.b, arg_0.e.a.x, true, var_0.b.a.x), arg_1.c), true, false, false)), arg_0.c, (u_input.b >> (~func_5(vec4<bool>(true, arg_1.b.b, arg_0.e.d, true), Struct_2(var_0.a, Struct_1(arg_0.c.b.a, var_0.b.b, arg_1.b.c, true, var_0.b.a.x), arg_1.c), false).a.x % 32u)) >= 1u).c;
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(var_0.c, -2147483647i)) & -vec2<i32>(-1i, 11073i), -(abs(vec2<i32>(arg_1.c, u_input.c)) << ((vec2<u32>(arg_0.a.x, 4294967295u) ^ arg_0.a) % vec2<u32>(32u)))), -_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), -vec2<i32>(arg_0.c.c, 2147483647i)), select(vec2<i32>(1549i, -29821i) ^ vec2<i32>(arg_1.c, 32873i), ~vec2<i32>(-1i, -1i), true), vec2<i32>(arg_1.c, firstLeadingBit(-1i))));
    var var_2 = firstTrailingBit(vec2<i32>(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(11124i, 0i))), select(arg_0.c.c, _wgslsmith_mod_i32(0i, arg_0.c.c), true)));
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_f_op_f32(func_6(func_1(), func_1().c, _wgslsmith_mult_u32(23910u, u_input.b & select(u_input.b, u_input.b, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(569f, 1000f, 600f, -1023f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-803f, 747f, -1829f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, 1355f, 1886f, 898f))))))));
}

