struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    let var_0 = u_input.a;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = select(select(select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, arg_0)), arg_0), true), select(!(!vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(false, arg_0, true), func_3(~16191u, Struct_4(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 0u), Struct_2(arg_1.wzz, Struct_1(2581u, arg_1.x, vec3<u32>(4294967295u, u_input.d, 1u), vec2<bool>(false, true)), vec2<u32>(u_input.c.x, 8187u), false)), Struct_4(vec4<u32>(u_input.d, u_input.c.x, u_input.b, 67140u), Struct_2(vec3<i32>(-75329i, arg_1.x, 38952i), Struct_1(1157u, u_input.a, vec3<u32>(0u, 13694u, 15872u), vec2<bool>(arg_0, false)), u_input.c, arg_0)), vec2<bool>(arg_0, false))), false), !vec3<bool>(func_3(~1u, Struct_4(vec4<u32>(1u, u_input.c.x, 0u, u_input.b), Struct_2(vec3<i32>(u_input.a, arg_1.x, 1i), Struct_1(u_input.d, u_input.a, vec3<u32>(u_input.b, u_input.b, 0u), vec2<bool>(true, false)), vec2<u32>(u_input.b, 54362u), arg_0)), Struct_4(vec4<u32>(0u, 28480u, u_input.d, u_input.b), Struct_2(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), Struct_1(4913u, 36803i, vec3<u32>(u_input.d, 1u, 1u), vec2<bool>(arg_0, arg_0)), u_input.c, arg_0)), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), arg_0)), arg_0, true), vec3<bool>((true || arg_0) != select(true, arg_0, select(arg_0, arg_0, arg_0)), all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), arg_0)), false));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - 174f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) * -1450f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1126f)) - _wgslsmith_f_op_f32(-1f)))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1680f - -1000f)));
    let var_2 = Struct_4(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c.x, 46797u) ^ vec4<u32>(71002u, 21126u, u_input.c.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 49472u, 19096u, 4294967295u), vec4<u32>(u_input.d, u_input.c.x, 1u, 21624u))), max(vec4<u32>(4294967295u, u_input.c.x, 38928u, 79995u) >> (vec4<u32>(39315u, u_input.b, u_input.d, 18510u) % vec4<u32>(32u)), countOneBits(vec4<u32>(46835u, u_input.d, 44685u, 45274u)))), Struct_2(-firstTrailingBit(vec3<i32>(arg_1.x, u_input.a, -1i) | vec3<i32>(u_input.a, arg_1.x, -41704i)), Struct_1(_wgslsmith_sub_u32(~0u, select(77432u, u_input.d, false)), -9891i, firstTrailingBit(vec3<u32>(u_input.d, u_input.d, u_input.d)), var_0.yz), vec2<u32>(6053u, ~(~u_input.c.x)), any(vec3<bool>(true, any(var_0), arg_0))));
    let var_3 = vec3<bool>(any(var_2.b.b.d), !all(vec4<bool>(false, arg_1.x <= -78751i, all(var_0), true)), var_0.x);
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, 633f))))));
    var var_1 = ~arg_2;
    let var_2 = arg_3.b.b.c.x;
    var var_3 = !func_2(any(!vec3<bool>(arg_3.b.b.d.x, true, true)), select(vec4<i32>(reverseBits(2147483647i), -17996i << (1u % 32u), countOneBits(-31645i), arg_3.b.a.x), ~min(vec4<i32>(1i, arg_3.b.b.b, -56171i, -1i), vec4<i32>(-1i, arg_3.b.a.x, -1i, -22414i)), arg_0.a)).b.d;
    var var_4 = var_0.x;
    return u_input.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = Struct_1(0u, arg_2.b, arg_0, !arg_2.d);
    let var_1 = select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b, -22546i, arg_2.b), vec3<i32>(-1i, u_input.a, 16769i)), -vec3<i32>(arg_2.b, arg_2.b, var_0.b)), 1i, 42659i) & _wgslsmith_mult_i32(43418i, (-10655i ^ arg_2.b) ^ ~(-8529i)), func_4(Struct_3(arg_1 && false), 1u, arg_0.x, Struct_4(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, var_0.c.x, arg_2.c.x)), func_2(true, vec4<i32>(-20693i, 1i, u_input.a, var_0.b)))) >> (~106623u % 32u), arg_1);
    var_0 = Struct_1(u_input.d, _wgslsmith_mod_i32(-23359i, var_1) ^ -firstLeadingBit(select(25251i, arg_3, arg_2.d.x)), _wgslsmith_clamp_vec3_u32(select(~reverseBits(arg_0), vec3<u32>(arg_0.x, _wgslsmith_mod_u32(18010u, 4294967295u), _wgslsmith_clamp_u32(0u, arg_2.a, arg_2.a)), vec3<bool>(var_0.d.x, func_2(false, vec4<i32>(u_input.a, u_input.a, var_0.b, arg_2.b)).b.d.x, any(vec2<bool>(var_0.d.x, false)))), arg_0, ~(~(arg_2.c ^ var_0.c))), !(!var_0.d));
    let var_2 = var_0.d;
    var_0 = Struct_1(abs(u_input.c.x), select(func_2(true, vec4<i32>(_wgslsmith_sub_i32(var_1, arg_3), arg_2.b >> (36929u % 32u), 2147483647i, ~arg_2.b)).a.x, arg_2.b, true), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_2.a, 4294967295u, 10366u), var_0.c) & ~reverseBits(arg_0), vec3<u32>(9947u, ~_wgslsmith_div_u32(arg_0.x, 1u), arg_0.x)), !vec2<bool>(var_2.x, !(!var_0.d.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(max(-1291f, -123f))))), _wgslsmith_f_op_f32(f32(-1f) * -444f)) + _wgslsmith_f_op_f32(select(376f, 1123f, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec3<u32>(20808u, 83728u, 0u), true, Struct_1(u_input.c.x, u_input.a, vec3<u32>(1u, 18210u, 48785u), vec2<bool>(false, true)), _wgslsmith_sub_i32(0i, -51066i))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(round(-871f))))), 122f) + _wgslsmith_div_vec2_f32(vec2<f32>(198f, _wgslsmith_div_f32(-157f, _wgslsmith_f_op_f32(f32(-1f) * -1160f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-997f, -1394f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1602f, 1217f)))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x) <= -1148f;
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, reverseBits(func_2(func_2(true, vec4<i32>(u_input.a, -1i, u_input.a, 0i)).d, max(vec4<i32>(u_input.a, 1i, -72777i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))).a.x)), -((func_2(false, vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)).a.zy | ~vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(u_input.a | u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(28524i, -2147483647i, 16951i)))));
    var var_3 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(firstLeadingBit(func_4(Struct_3(true), u_input.d, u_input.c.x, Struct_4(vec4<u32>(17134u, u_input.c.x, u_input.b, u_input.d), Struct_2(vec3<i32>(var_2.x, var_2.x, 44534i), Struct_1(u_input.c.x, -8712i, vec3<u32>(81431u, u_input.c.x, u_input.b), vec2<bool>(true, false)), vec2<u32>(u_input.b, u_input.b), true)))), _wgslsmith_clamp_i32(40566i, u_input.a, var_2.x) >> (firstLeadingBit(u_input.d) % 32u)), vec2<i32>(-29195i, abs(var_2.x)), func_2(any(vec4<bool>(true, false, false, true)), vec4<i32>(_wgslsmith_div_i32(var_2.x, var_2.x), -u_input.a, u_input.a, i32(-1i) * -4551i)).b.d), ~(~vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.x, 0i), vec3<i32>(-1i, -1i, var_2.x)))));
    var_3 = vec2<i32>(_wgslsmith_mod_i32(countOneBits(var_3.x), 0i), var_2.x | 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(5887u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), _wgslsmith_clamp_u32(u_input.c.x, 16617u, 4294967295u), u_input.d)), u_input.b, vec4<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) & _wgslsmith_mult_u32(70190u, ~u_input.d), 31546u, 1u, countOneBits(~42177u)), vec3<f32>(-278f, var_0.x, _wgslsmith_f_op_f32(1000f + var_0.x)));
}

