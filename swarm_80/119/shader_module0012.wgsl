struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_3(vec2<bool>(arg_1.c || !any(vec4<bool>(arg_0.a.x, arg_1.c, true, arg_0.a.x)), true), arg_0.b, arg_0.b);
    let var_1 = var_0.b.b;
    let var_2 = arg_1.d;
    var var_3 = ~_wgslsmith_mod_vec4_u32(~(~(vec4<u32>(0u, 0u, var_0.b.e.d, var_1.d) >> (vec4<u32>(u_input.c, 4294967295u, var_1.d, var_2) % vec4<u32>(32u)))), vec4<u32>(0u, ~_wgslsmith_mult_u32(var_2, arg_1.d), _wgslsmith_add_u32(var_2, countOneBits(0u)), ~_wgslsmith_mult_u32(8926u, 17502u)));
    var var_4 = Struct_2(!(!var_0.b.a), var_0.b.b, vec3<u32>(~(countOneBits(var_2) >> (var_2 % 32u)), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_0.b.c.x, var_0.c.b.d), ~select(0u, 0u, arg_1.c)), 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.b.x, -1440f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, arg_0.b.e.b.x, -449f) + _wgslsmith_f_op_vec3_f32(round(var_0.c.d))))), arg_0.b.e);
    return _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_clamp_i32(-arg_1.a, u_input.b, 2147483647i)) << (var_3.x % 32u), var_1.a);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> bool {
    var var_0 = 828f;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * -702f)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f - 222f)), 1f))));
    let var_2 = var_1.xwx;
    let var_3 = Struct_3(vec2<bool>(!(arg_3.x > _wgslsmith_div_f32(644f, 768f)), false), Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(arg_3.x - -2047f) <= -142f), Struct_1(reverseBits(_wgslsmith_mult_i32(-49557i, 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_3, arg_3), _wgslsmith_f_op_vec2_f32(select(arg_3, var_1.yx, true))), _wgslsmith_f_op_f32(sign(var_1.x)) < var_2.x, ~_wgslsmith_sub_u32(arg_2, 17021u)), ~((vec3<u32>(4294967295u, 18248u, 0u) << (vec3<u32>(47704u, arg_2, 4294967295u) % vec3<u32>(32u))) & (vec3<u32>(92409u, 4294967295u, 4294967295u) ^ vec3<u32>(1u, u_input.a, u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-var_1.x))), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(var_2.xy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_1))), false, _wgslsmith_clamp_u32(arg_2 >> (u_input.a % 32u), select(arg_2, arg_2, false), select(0u, 35645u, true)))), Struct_2(select(vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, false)) || true), Struct_1(_wgslsmith_mod_i32(2147483647i, u_input.d) | _wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 567f))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), 0u), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 57440u) ^ vec3<u32>(u_input.c, u_input.c, 8942u), select(vec3<u32>(21476u, 33298u, arg_2), vec3<u32>(arg_2, 4294967295u, 1u), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2, var_1.yyz))))), Struct_1(_wgslsmith_mult_i32(arg_0 << (39429u % 32u), countOneBits(arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3 + var_2.zy) * var_1.xx), any(vec2<bool>(true, true)) & select(false, false, false), arg_2)));
    var var_4 = Struct_3(!select(vec2<bool>(arg_2 <= var_3.b.e.d, var_3.c.e.a > u_input.b), var_3.b.a, var_3.a), var_3.c, var_3.c);
    return !(var_4.a.x || any(!vec3<bool>(var_4.b.b.c, false, var_4.b.a.x)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    let var_0 = -_wgslsmith_mult_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(-1i, arg_0)) | min(vec2<i32>(u_input.b, arg_0), vec2<i32>(u_input.b, -1i))), ~(~(-vec2<i32>(arg_0, -29077i))));
    var var_1 = !vec4<bool>(false, true, !arg_1, func_4(func_3(Struct_3(vec2<bool>(true, true), Struct_2(vec2<bool>(true, arg_1), Struct_1(var_0.x, vec2<f32>(-413f, -111f), true, 1u), vec3<u32>(u_input.c, 0u, u_input.a), vec3<f32>(-277f, 432f, 1460f), Struct_1(var_0.x, vec2<f32>(-841f, -677f), arg_1, u_input.c)), Struct_2(vec2<bool>(arg_1, true), Struct_1(17210i, vec2<f32>(-1124f, -283f), arg_1, 50245u), vec3<u32>(u_input.c, 19478u, 12475u), vec3<f32>(447f, -837f, -359f), Struct_1(2147483647i, vec2<f32>(-1346f, -932f), arg_1, 0u))), Struct_1(-1i, vec2<f32>(-888f, -113f), true, 20945u), vec3<bool>(arg_1, true, arg_1), select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.c, 72228u), reverseBits(vec2<u32>(u_input.a, u_input.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1253f, -740f) + vec2<f32>(526f, -647f))))));
    return Struct_3(!select(var_1.ww, var_1.zw, true), Struct_2(var_1.yw, Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(1455f - -2723f), _wgslsmith_f_op_f32(sign(-561f))), var_1.x, u_input.a), max(vec3<u32>(~u_input.c, reverseBits(u_input.a), 1u), abs(~vec3<u32>(u_input.a, u_input.c, 1u))), vec3<f32>(1f, 1f, 1f), Struct_1(var_0.x ^ -1i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-139f, -1057f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-339f, 481f) * vec2<f32>(595f, -2095f)))), true, u_input.c)), Struct_2(!select(vec2<bool>(true, false), var_1.zy, !arg_1), Struct_1(8231i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(665f, -2863f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-990f, -197f))), !var_1.zx)), arg_1 == arg_1, (u_input.a << (u_input.a % 32u)) >> (reverseBits(34057u) % 32u)), ~vec3<u32>(~u_input.a, u_input.a, ~u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-481f, -440f, -134f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-978f, -1906f, 314f) * vec3<f32>(-1000f, 1000f, 1316f))))), Struct_1(~(-arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(147f, 638f), vec2<f32>(995f, 292f)) - vec2<f32>(-831f, 1637f)), false, u_input.a)));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0.b.e.a, _wgslsmith_div_i32(u_input.d | arg_0.c.e.a, -u_input.d)), (vec2<i32>(arg_0.b.e.a, 3605i) ^ firstLeadingBit(vec2<i32>(arg_0.b.e.a, 2181i))) ^ vec2<i32>(firstTrailingBit(-2147483647i), 2147483647i ^ arg_0.c.b.a)), _wgslsmith_sub_vec2_i32(select(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 4047i), vec2<i32>(arg_0.c.b.a, u_input.d)), -firstLeadingBit(vec2<i32>(-2147483647i, 0i)), arg_0.b.a), vec2<i32>(arg_0.c.e.a, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(-7491i, u_input.d)), select(vec2<i32>(u_input.b, -32937i), vec2<i32>(1i, 26141i), arg_0.b.a)))));
    var var_1 = !select(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.b.c), vec3<bool>(all(func_2(1i, arg_0.c.b.c).a), !arg_0.a.x & arg_0.a.x, !arg_0.a.x), !vec3<bool>(arg_0.a.x, false, all(vec3<bool>(true, arg_0.a.x, arg_0.c.b.c))));
    let var_2 = arg_0.c.e;
    var var_3 = !(!((var_2.c != true) | (var_2.c == true)) & !(true || (true && var_2.c)));
    let var_4 = _wgslsmith_f_op_f32(max(var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x)) + func_2(0i, true).b.e.b.x)), var_2.b.x)));
    return arg_0.b.e;
}

fn func_1() -> Struct_1 {
    let var_0 = -48980i;
    var var_1 = vec2<f32>(1681f, 1242f);
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(floor(var_1.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-403f, _wgslsmith_f_op_f32(-var_1.x))))), var_1.x), vec2<f32>(-228f, 182f), ~select(reverseBits(23122u), 0u, any(vec3<bool>(false, true, true))) > (0u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(53916u, 27014u, u_input.c), vec3<u32>(u_input.c, 5626u, u_input.a) << (vec3<u32>(1u, u_input.c, 97696u) % vec3<u32>(32u))))));
    let var_3 = func_5(func_2(11277i, true));
    return func_2(var_3.a >> (~func_5(Struct_3(vec2<bool>(true, var_3.c), Struct_2(vec2<bool>(false, true), Struct_1(-12985i, vec2<f32>(var_2.x, var_2.x), false, var_3.d), vec3<u32>(var_3.d, 41809u, 14447u), vec3<f32>(var_1.x, -1000f, var_3.b.x), var_3), Struct_2(vec2<bool>(var_3.c, var_3.c), Struct_1(21869i, var_2, var_3.c, 9707u), vec3<u32>(1u, 16114u, u_input.c), vec3<f32>(1508f, var_1.x, 1763f), var_3))).d % 32u), all(vec4<bool>(func_5(Struct_3(vec2<bool>(false, var_3.c), Struct_2(vec2<bool>(var_3.c, true), Struct_1(var_0, var_2, var_3.c, u_input.a), vec3<u32>(19778u, u_input.a, 4294967295u), vec3<f32>(1000f, var_2.x, 572f), var_3), Struct_2(vec2<bool>(true, false), var_3, vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<f32>(var_3.b.x, 439f, var_2.x), Struct_1(u_input.d, vec2<f32>(var_1.x, 1228f), false, 94667u)))).c, var_3.c, _wgslsmith_f_op_f32(max(-656f, var_2.x)) <= var_3.b.x, u_input.d <= _wgslsmith_mod_i32(21857i, -31713i)))).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_i32(u_input.d, -abs(1i) >> (max(u_input.a, u_input.c) % 32u), -_wgslsmith_mult_i32(43442i, _wgslsmith_div_i32(2147483647i, u_input.d)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1541f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f + 357f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 681f) + _wgslsmith_f_op_f32(941f + -1847f)), true))));
    var var_2 = any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), any(vec4<bool>(true, false, false, false)) && true), ~u_input.c < u_input.a));
    var var_3 = func_1();
    var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-472f, var_1.x, -1000f, func_2(-2147483647i, var_3.c).c.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_1.x, var_1.x, var_3.b.x)), var_3.c))), vec4<u32>(min(abs(1u), ~select(4294967295u, 12137u, var_3.c)), var_3.d, abs(~firstLeadingBit(var_3.d)), 0u));
}

