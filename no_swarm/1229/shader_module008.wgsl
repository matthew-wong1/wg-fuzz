struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<vec3<f32>, 4>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = firstTrailingBit(select(vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~15948u, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(4294967295u, 53402u)), firstLeadingBit(~vec4<u32>(12643u, u_input.a.x, u_input.a.x, 85130u))), !select(!vec4<bool>(false, global0.x, true, false), !vec4<bool>(global0.x, global0.x, true, true), global0.x)));
    var var_1 = select(global0.yy, vec2<bool>(!global0.x, select(false, true, any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x)))), global0.x);
    let var_2 = Struct_3(true, -_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(1923i, -2147483647i, 2147483647i, 41989i), vec4<i32>(u_input.b.x, 43032i, -32396i, u_input.b.x)), max(countOneBits(vec4<i32>(u_input.b.x, 8540i, 1i, -37321i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -17245i, u_input.b.x, u_input.b.x)))));
    var var_3 = var_2;
    var_0 = ~countOneBits(~vec4<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, var_0.x), countOneBits(1u), _wgslsmith_sub_u32(8537u, u_input.a.x)));
    return var_3.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = func_3();
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2226f), -825f, arg_1.a)), -1000f, 1f, _wgslsmith_f_op_f32(1452f + -800f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, -138f, -340f, -345f) * vec4<f32>(-1333f, -1000f, -135f, -1763f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, 2056f, 585f, 1000f))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)));
    global0 = vec3<bool>(true, all(vec3<bool>(arg_1.a & true, arg_0.a, false)), select(false, true, true));
    var var_3 = vec4<f32>(1150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-560f + -1631f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-var_1.x));
    return vec3<bool>(arg_0.a, arg_1.a, false);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    global0 = !(!(!vec3<bool>(any(vec3<bool>(global0.x, global0.x, arg_0)), true, true)));
    global0 = select(func_4(Struct_3(func_3(), vec4<i32>(_wgslsmith_div_i32(-44012i, 35257i), countOneBits(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-38511i, -18285i, u_input.b.x, u_input.b.x), vec4<i32>(25499i, u_input.b.x, u_input.b.x, -27294i)), -u_input.b.x)), Struct_1(true)), func_4(Struct_3((-66006i >= u_input.b.x) | true, vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -u_input.b.x, min(u_input.b.x, -1i), select(u_input.b.x, u_input.b.x, arg_0))), Struct_1(arg_0)), !arg_0);
    var var_0 = Struct_1(true);
    var var_1 = true;
    var var_2 = vec3<u32>(_wgslsmith_div_u32(u_input.a.x & abs(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 44262u, u_input.a.x, 91725u))), firstTrailingBit(24806u), 19198u) ^ max(vec3<u32>(firstTrailingBit(4294967295u), u_input.a.x, ~0u) >> ((vec3<u32>(arg_1.x, arg_1.x, arg_1.x) ^ reverseBits(vec3<u32>(4294967295u, arg_1.x, u_input.a.x))) % vec3<u32>(32u)), ~vec3<u32>(49852u, ~0u, 4294967295u));
    return Struct_1(arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_3 {
    global0 = vec3<bool>(!(!func_4(Struct_3(true, vec4<i32>(2147483647i, u_input.b.x, 50562i, 0i)), Struct_1(false)).x), !(!all(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, false, true, arg_0.a), false))), !(!arg_1.a.d.a));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -1000f, arg_1.d, 349f)) + vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-435f + arg_1.a.a.x), _wgslsmith_f_op_f32(718f * 182f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.a.x, -1519f, 2234f, arg_1.a.a.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, -261f, arg_1.c.x, arg_1.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(118f * _wgslsmith_f_op_f32(trunc(arg_1.a.a.x))), -827f, 1594f, 2174f)));
    var var_1 = arg_1.a;
    var var_2 = u_input.b.zx;
    let var_3 = arg_1;
    return Struct_3(arg_0.a, vec4<i32>(-15041i, u_input.b.x, 0i, 1i));
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)), 605f)))));
    let var_1 = func_5(Struct_1(!global0.x), Struct_4(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.xw)), vec2<f32>(132f, arg_0.x)), Struct_1(!global0.x), func_2(true, _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), Struct_1(global0.x)), Struct_1(!func_3()), vec2<f32>(1569f, var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-940f, arg_0.x)), arg_0.x, global0.x)), vec3<bool>(false, global0.x, !global0.x)), ~u_input.a);
    let var_2 = func_5(Struct_1(true), Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_0.xz, _wgslsmith_f_op_vec2_f32(-arg_0.yz), global0.zz)), func_2(true & var_1.a, select(u_input.a, vec2<u32>(15244u, u_input.a.x), var_1.a)), Struct_1(all(vec3<bool>(var_1.a, global0.x, var_1.a))), func_2(true, vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u)))), Struct_1(any(vec3<bool>(false, true, var_1.a))), arg_0.yx, _wgslsmith_f_op_f32(min(929f, _wgslsmith_div_f32(997f, _wgslsmith_f_op_f32(exp2(arg_0.x))))), vec3<bool>(true, any(select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(var_1.a, true, false, global0.x), vec4<bool>(true, true, global0.x, var_1.a))), false)), vec2<u32>(u_input.a.x, abs(abs(0u))));
    let var_3 = arg_0.x;
    var var_4 = u_input.a.x;
    return vec4<i32>(abs(-_wgslsmith_sub_i32(u_input.b.x, var_1.b.x)), var_2.b.x >> (~u_input.a.x % 32u), -1i, abs(2147483647i)) << (firstLeadingBit(vec4<u32>(countOneBits(u_input.a.x | u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 22001u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 6440u, u_input.a.x)), 4294967295u, u_input.a.x)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -229f;
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 18300i), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, -498i, u_input.b.x))), -firstLeadingBit(vec4<i32>(-27633i, u_input.b.x, -1i, 36726i)), global0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x ^ u_input.b.x, 0i, i32(-1i) * -1i, i32(-1i) * -2147483647i) ^ func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(199f, 448f, -1064f, -696f), vec4<f32>(894f, -495f, -1705f, -1000f)))), ~(-func_5(Struct_1(global0.x), Struct_4(Struct_2(vec2<f32>(187f, -494f), Struct_1(false), Struct_1(global0.x), Struct_1(global0.x)), Struct_1(false), vec2<f32>(-654f, 1306f), 1944f, vec3<bool>(global0.x, global0.x, false)), vec2<u32>(u_input.a.x, u_input.a.x)).b)));
    var var_2 = Struct_3(true, -(~(-vec4<i32>(2147483647i, -24342i, var_1, var_1))) << (min(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, 12308u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<bool>(true, true, global0.x, true)), u_input.a.x != 7759u), ~(~vec4<u32>(96454u, 0u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    global1 = array<vec3<f32>, 4>();
    var var_3 = ~(-(func_5(Struct_1(var_2.a), Struct_4(Struct_2(vec2<f32>(2458f, 199f), Struct_1(global0.x), Struct_1(var_2.a), Struct_1(global0.x)), Struct_1(global0.x), vec2<f32>(428f, -233f), -1108f, vec3<bool>(true, true, false)), u_input.a).b.x ^ _wgslsmith_add_i32(reverseBits(1i), 2147483647i)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1685f, -388f) * vec2<f32>(-556f, 745f)) + vec2<f32>(-771f, -1350f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(144f, 184f) - vec2<f32>(-658f, 1089f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, -1000f)))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1131f, 1311f, var_2.a)) * _wgslsmith_f_op_f32(floor(420f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1396f, 397f)))))));
    var var_5 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))), func_2(global0.x, min(vec2<u32>(37239u, 0u), vec2<u32>(1u, u_input.a.x)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(30899u, u_input.a.x, u_input.a.x)), ~20665u) % vec2<u32>(32u))), Struct_1(true), Struct_1(~(~u_input.a.x) < u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1798u), u_input.a), ~u_input.a), u_input.a.x));
}

