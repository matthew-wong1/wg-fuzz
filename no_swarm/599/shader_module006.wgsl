struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = -239f;
    let var_1 = var_0;
    let var_2 = ~select(~vec2<u32>(~0u, ~1u), vec2<u32>(29862u, ~(~0u)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true));
    let var_3 = true;
    let var_4 = select(vec2<bool>(false, var_3), vec2<bool>(all(!select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, true, false), var_3)), _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(u_input.a, 14031i)) > 1i), var_2.x == 16138u);
    return !vec3<bool>(true, _wgslsmith_clamp_i32(firstTrailingBit(u_input.a), ~u_input.a, _wgslsmith_div_i32(-2147483647i, u_input.a)) == ~1i, all(!select(vec4<bool>(false, false, var_4.x, var_3), vec4<bool>(var_3, var_4.x, var_4.x, false), vec4<bool>(var_4.x, var_3, var_3, false))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(-294f, ~u_input.a, !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), ~(~0u), Struct_2(Struct_1(1u, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -34319i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(-18093i, 3289i, 26991i, 0i)), vec4<i32>(1i, _wgslsmith_add_i32(u_input.a, -46625i), 8795i, firstLeadingBit(-1i)), firstLeadingBit(~(-8497i)), true), Struct_1(~(~46040u), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, -99977i, 1i, u_input.a)), select(vec4<i32>(u_input.a, 65915i, -2147483647i, -26152i), vec4<i32>(u_input.a, 27912i, -57459i, -2147483647i), false)), vec4<i32>(u_input.a, u_input.a, countOneBits(0i), _wgslsmith_sub_i32(u_input.a, u_input.a)), 47001i & u_input.a, any(func_3()))));
    let var_1 = var_0.e.a;
    var var_2 = !vec4<bool>(var_0.e.b.e, true, !var_1.e && true, var_0.c.x);
    var_2 = !vec4<bool>(var_1.e, true, true, true);
    var_2 = select(!select(!(!vec4<bool>(true, false, true, var_0.c.x)), vec4<bool>(252f < var_0.a, true, var_0.e.a.e, all(var_2.xxy)), true), !vec4<bool>(false, true, true, var_2.x), !(!(!(!vec4<bool>(true, var_2.x, var_1.e, false)))));
    return Struct_2(Struct_1(~1u, var_1.c, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(8767i, -30076i, -2147483647i, u_input.a), abs(var_1.c), select(var_0.e.b.b, vec4<i32>(15630i, -2147483647i, -4777i, u_input.a), vec4<bool>(false, false, false, var_1.e))), var_1.c), var_1.c.x, false), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-598f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1982f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(682f, -1137f), vec2<f32>(863f, 1000f), true))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, 744f))));
    let var_1 = var_0.x;
    let var_2 = 1u;
    let var_3 = Struct_1(0u, -func_2().a.c, abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(arg_0.a.c), -func_2().a.c)), u_input.a, any(vec4<bool>(arg_1.x, false, false && func_3().x, func_2().b.e)));
    var var_4 = var_3.c;
    return 1u;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_4(func_2(), vec3<bool>(any(select(select(vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, false), arg_0.e), vec2<bool>(arg_0.e, true), any(vec2<bool>(false, false)))), true, !(1i < _wgslsmith_mult_i32(arg_0.c.x, -1i))));
    var var_1 = Struct_3(-202f, -25270i, func_3().xx, var_0 << (0u % 32u), Struct_2(Struct_1(51076u, vec4<i32>(abs(u_input.a), arg_0.c.x, select(arg_0.d, arg_0.c.x, true), _wgslsmith_add_i32(32079i, u_input.a)), arg_0.b, arg_0.c.x, !(11705u >= var_0)), arg_0));
    var_1 = Struct_3(var_1.a, 2147483647i, !vec2<bool>(var_1.e.b.e, false), firstLeadingBit(0u), var_1.e);
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(step(874f, var_1.a))), _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-2147483647i, 36177i) << (vec2<u32>(9153u, arg_0.a) % vec2<u32>(32u)), vec2<i32>(var_1.b, u_input.a) >> (vec2<u32>(0u, 16967u) % vec2<u32>(32u)), !arg_0.e), firstLeadingBit(~(~var_1.e.a.c.zy))), vec2<bool>(all(!(!vec3<bool>(arg_0.e, arg_0.e, true))), var_1.a != var_1.a), var_0, func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = max(36154u, arg_0.d) == arg_0.e.a.a;
    let var_1 = !func_3().x;
    var_0 = !var_1;
    var var_2 = arg_0.e.b.a;
    let var_3 = max(vec2<u32>(~64358u, arg_2.e.a.a), vec2<u32>(~((6406u ^ arg_2.d) << (arg_2.d % 32u)), func_1(arg_0.e.b).e.b.a));
    return any(vec4<bool>(true, !any(select(vec4<bool>(var_1, var_1, arg_2.c.x, var_1), vec4<bool>(false, arg_2.c.x, var_1, arg_0.e.b.e), arg_0.e.b.e)), any(vec4<bool>(true, func_1(arg_2.e.a).c.x, var_3.x <= 27088u, all(vec3<bool>(arg_2.e.a.e, var_1, var_1)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), !select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_5(func_1(Struct_1(1u, vec4<i32>(2147483647i, -34480i, -6857i, u_input.a), vec4<i32>(0i, u_input.a, -9577i, -2147483647i), -19432i, false)), Struct_3(1000f, -11960i, vec2<bool>(false, false), 14488u, Struct_2(Struct_1(4294967295u, vec4<i32>(u_input.a, u_input.a, u_input.a, -18747i), vec4<i32>(0i, -1i, -45974i, 8068i), 2147483647i, true), Struct_1(4294967295u, vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<i32>(6919i, 3666i, u_input.a, 20948i), u_input.a, true))), func_1(Struct_1(607u, vec4<i32>(3437i, -27834i, -38852i, 0i), vec4<i32>(-2147483647i, 8075i, u_input.a, u_input.a), 2147483647i, true)))), !(!(!func_1(Struct_1(61476u, vec4<i32>(u_input.a, -1i, -2147483647i, -18053i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), -21432i, false)).c)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, -918f)) + vec2<f32>(1236f, -253f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(786f, -1000f)), _wgslsmith_f_op_f32(select(1000f, 648f, true)))), func_1(func_1(func_1(Struct_1(1u, vec4<i32>(0i, u_input.a, -23124i, -2147483647i), vec4<i32>(-21851i, u_input.a, u_input.a, 1i), u_input.a, false)).e.b).e.b).e.b.e)) + vec2<f32>(-1321f, _wgslsmith_f_op_f32(ceil(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, 0i, u_input.a, u_input.a) | vec4<i32>(-2147483647i, -13223i, -2789i, u_input.a)), vec4<i32>(-1i, u_input.a, u_input.a, 4960i) ^ vec4<i32>(u_input.a, 27448i, u_input.a, 27781i)) << (vec4<u32>(func_1(Struct_1(1u, vec4<i32>(2147483647i, 0i, u_input.a, u_input.a), vec4<i32>(-10913i, u_input.a, 0i, u_input.a), u_input.a, false)).e.a.a, ~func_4(Struct_2(Struct_1(4294967295u, vec4<i32>(2147483647i, u_input.a, 0i, u_input.a), vec4<i32>(-1i, -7206i, -1i, -18702i), 3003i, false), Struct_1(2038u, vec4<i32>(-41613i, -67012i, u_input.a, 0i), vec4<i32>(u_input.a, -1i, u_input.a, 0i), -776i, var_0.x)), vec3<bool>(true, var_0.x, var_0.x)), firstLeadingBit(1u), _wgslsmith_add_u32(~0u, _wgslsmith_div_u32(1u, 61763u))) % vec4<u32>(32u)), abs(reverseBits(-vec2<i32>(u_input.a, -30021i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(1000f - var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), 1559f)), reverseBits(_wgslsmith_add_vec3_i32(-abs(vec3<i32>(1i, -18465i, -1i)), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(0u, 4294967295u, 91203u) % vec3<u32>(32u))))));
}

