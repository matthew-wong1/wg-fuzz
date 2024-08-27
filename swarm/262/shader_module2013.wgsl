struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0i, true, vec4<f32>(-652f, 1000f, 2011f, 525f), vec2<i32>(-58176i, 0i)), Struct_1(0i, false, vec4<f32>(-582f, -654f, 839f, 1128f), vec2<i32>(45958i, -19782i)), Struct_1(1i, false, vec4<f32>(-260f, 1166f, 2424f, -358f), vec2<i32>(-1i, -1i)), Struct_1(-1i, false, vec4<f32>(-1304f, -1045f, 1900f, 1510f), vec2<i32>(43596i, 49019i)), Struct_1(0i, true, vec4<f32>(1294f, 2143f, -1591f, -476f), vec2<i32>(i32(-2147483648), -9187i)), Struct_1(48954i, true, vec4<f32>(-213f, -1755f, -1174f, -2902f), vec2<i32>(49775i, 2147483647i)), Struct_1(43841i, false, vec4<f32>(-1316f, -164f, -1985f, -1227f), vec2<i32>(1i, -1i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: u32) -> vec4<f32> {
    let var_0 = -29220i;
    global0 = array<Struct_1, 7>();
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 69410u, firstLeadingBit(1u), arg_2 ^ u_input.a), vec4<u32>(~70802u, 4294967295u, 0u, u_input.a & 75556u)), ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.a, arg_1, arg_2), vec4<u32>(4294967295u, 4294967295u, arg_2, 4294967295u)))));
    var_1 = vec4<u32>(4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(28775u, 2056u), min(1u, 0u)), ~4294967295u, var_1.x), select(var_1.x << (_wgslsmith_mod_u32(arg_1, arg_2) % 32u), abs(~1u), false) & arg_2, ~(arg_2 << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), vec4<u32>(0u, 4294967295u, 0u, arg_2)) % 32u)));
    var_1 = ~countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28621u, arg_2, 0u, arg_2) & vec4<u32>(0u, 44546u, 0u, arg_1), vec4<u32>(19656u, 4939u, var_1.x, arg_2) & vec4<u32>(arg_1, 0u, var_1.x, 4294967295u)), max(vec4<u32>(74871u, 0u, 0u, var_1.x), vec4<u32>(0u, arg_1, arg_1, u_input.a))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(201f)), arg_0.b.x, 1f, -846f))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_3(Struct_1(i32(-1i) * -232i, arg_2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(arg_2, arg_0.c.c, arg_0.c.b), 4294967295u, 62624u)))), _wgslsmith_mod_vec2_i32(~arg_0.d, -(vec2<i32>(26530i, u_input.c.x) ^ vec2<i32>(u_input.b, arg_0.c.a)))), Struct_2(_wgslsmith_f_op_f32(trunc(arg_0.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)))), Struct_1(2147483647i, arg_2.x, vec4<f32>(arg_1, 334f, -1000f, arg_0.b), ~firstTrailingBit(arg_0.c.d)), u_input.c), select(vec4<bool>(all(arg_2), 1u > u_input.a, true, arg_0.c.b || (true == arg_2.x)), select(!(!vec4<bool>(arg_2.x, false, arg_0.c.b, false)), !(!vec4<bool>(true, arg_0.c.b, false, true)), !select(vec4<bool>(true, arg_0.c.b, false, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, false, false), vec4<bool>(arg_2.x, false, true, false))), vec4<bool>(arg_2.x, arg_2.x, arg_0.b > _wgslsmith_f_op_f32(sign(arg_1)), all(vec3<bool>(true, arg_2.x, true)))), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -31402i, 2147483647i), vec3<i32>(u_input.c.x, -43549i, arg_0.d.x) & vec3<i32>(69639i, -2147483647i, -55688i), vec3<i32>(1i, u_input.b, arg_0.c.d.x)), vec3<i32>(abs(0i) | arg_0.d.x, ~0i, u_input.c.x)), select(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-59247i, arg_0.c.a, 18296i), max(vec3<i32>(arg_0.c.a, 2147483647i, -1i), vec3<i32>(-53078i, 1i, -2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.a, 2147483647i, arg_0.d.x) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), true), _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.b, arg_0.d.x, 8271i)), ~vec3<i32>(22322i, 241i, u_input.c.x) | ~vec3<i32>(30392i, 0i, arg_0.c.d.x)), vec3<bool>(all(vec4<bool>(arg_2.x, false, false, arg_2.x)) & all(vec3<bool>(arg_2.x, false, arg_2.x)), arg_2.x, true)));
    var var_2 = Struct_4(~_wgslsmith_add_vec4_u32(vec4<u32>(~36932u, ~u_input.a, u_input.a, 18621u), ~(vec4<u32>(1u, 0u, u_input.a, 0u) ^ vec4<u32>(u_input.a, u_input.a, 22870u, u_input.a))), Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(348f))))), var_1.b.c, -arg_0.d), vec3<bool>(arg_0.c.b, !(_wgslsmith_f_op_f32(-arg_0.b) < -1360f), !any(vec4<bool>(arg_0.c.b, arg_2.x, var_1.c.x, var_1.a.b))), vec4<i32>(firstLeadingBit(arg_0.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(var_1.b.c.d), ~vec2<i32>(2147483647i, arg_0.c.d.x)), (arg_0.d << (vec2<u32>(u_input.a, 17445u) % vec2<u32>(32u))) ^ (vec2<i32>(arg_0.d.x, u_input.b) & vec2<i32>(-1i, 0i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-arg_0.d, _wgslsmith_add_vec2_i32(arg_0.c.d, var_1.b.d)), 15756i), 0i));
    var var_3 = Struct_1(_wgslsmith_mod_i32(-(~_wgslsmith_mult_i32(u_input.c.x, 0i)), 55995i), all(var_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, 1284f, 1000f, arg_0.a), _wgslsmith_f_op_vec4_f32(step(var_1.b.c.c, var_2.b.c.c)))))), vec2<i32>(1i, arg_0.d.x));
    var_1 = Struct_3(var_1.a, var_2.b, select(var_1.c, select(select(var_1.c, select(var_1.c, var_1.c, vec4<bool>(false, true, arg_2.x, false)), vec4<bool>(true, true, true, arg_2.x)), vec4<bool>(arg_0.c.b, all(var_1.c.xyz), all(vec3<bool>(false, false, true)), false), vec4<bool>(true, var_2.c.x, 17437u != var_2.a.x, false)), any(vec2<bool>(var_1.b.c.b, true != var_2.c.x))), 1i, select(firstLeadingBit(-(~vec3<i32>(-14089i, 1i, arg_0.d.x))), select(var_1.e, -vec3<i32>(var_3.a, 2147483647i, u_input.b) >> ((vec3<u32>(var_2.a.x, 4294967295u, 47616u) & vec3<u32>(u_input.a, 504u, 29892u)) % vec3<u32>(32u)), any(!var_1.c)), arg_2.x));
    return arg_0.d.x;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-u_input.b | 43924i, ~(~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), u_input.c.x), u_input.b ^ u_input.b, _wgslsmith_div_i32(reverseBits(-11854i), (func_2(Struct_2(189f, -1000f, global0[_wgslsmith_index_u32(u_input.a, 7u)], vec2<i32>(2147483647i, u_input.c.x)), -447f, vec2<bool>(true, true)) >> (u_input.a % 32u)) & select(i32(-1i) * -2147483647i, u_input.b, false)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(var_1.c.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.wy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1198f))))));
    let var_3 = reverseBits(vec2<u32>(_wgslsmith_mod_u32(~u_input.a, u_input.a), 8926u));
    let var_4 = Struct_5(vec2<bool>((_wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x)) < 1f) & !select(false, true, true), var_1.b), var_1.c, _wgslsmith_clamp_u32(u_input.a, 1548u, var_3.x | abs(var_3.x)) < reverseBits(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(var_3.x, 1u))));
    return Struct_2(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(round(273f)))), Struct_1(u_input.b, -(u_input.b & 16996i) > var_0.x, var_4.b, var_1.d), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.d, _wgslsmith_clamp_vec2_i32(countOneBits(var_1.d), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.d.x, var_0.x), vec2<i32>(var_1.d.x, -32340i)), vec2<i32>(var_1.d.x, var_0.x))), ~vec2<i32>(var_1.d.x, -u_input.c.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> Struct_5 {
    global0 = array<Struct_1, 7>();
    let var_0 = select(select(vec4<bool>(true, false, any(select(vec4<bool>(false, false, arg_1.b.c.b, true), vec4<bool>(false, true, true, false), true)), true), vec4<bool>(arg_1.c.x, true, arg_1.b.c.b, select(func_1().c.b, true, !arg_1.c.x)), true), !vec4<bool>(true, false, false, all(select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.b.c.b, arg_1.b.c.b), vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), false))), !vec4<bool>(1i > _wgslsmith_div_i32(arg_1.d.x, arg_1.b.d.x), arg_1.b.c.b, !any(vec4<bool>(arg_1.c.x, true, arg_1.b.c.b, true)), all(vec4<bool>(arg_1.b.c.b, arg_1.b.c.b, arg_1.c.x, true))));
    var var_1 = ~arg_1.a.xw;
    let var_2 = u_input.c;
    let var_3 = any(vec3<bool>(true, arg_1.b.c.b, false));
    return Struct_5(vec2<bool>(arg_1.b.c.b, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, arg_1.b.b, _wgslsmith_f_op_f32(arg_1.b.c.c.x * -1250f), _wgslsmith_div_f32(1000f, 1405f))))), arg_0 >= ~(abs(u_input.c.x) ^ ~32883i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1735i, Struct_4(firstTrailingBit(min(vec4<u32>(u_input.a, 0u, u_input.a, 19511u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), func_1(), vec3<bool>(reverseBits(u_input.a) < ~u_input.a, true, true), ~vec4<i32>(-49257i, _wgslsmith_mult_i32(-1i, u_input.b), 1i >> (u_input.a % 32u), 0i)), 1u);
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_div_vec3_u32(~abs(~vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(_wgslsmith_add_u32(~u_input.a, firstTrailingBit(u_input.a)) >> (_wgslsmith_sub_u32(u_input.a, ~18348u) % 32u), u_input.a, 43727u));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 54449u), vec4<u32>(26712u, var_2.x, 47848u, u_input.a)), select(vec4<u32>(60226u, u_input.a, var_2.x, u_input.a), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_0.c, var_0.a.x, var_0.c, false))), 1u));
}

