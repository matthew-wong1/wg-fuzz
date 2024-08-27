struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = Struct_1(1i, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a, -2147483647i), _wgslsmith_dot_vec3_i32(global0.b, firstTrailingBit(vec3<i32>(u_input.d.x, u_input.e.x, -1i)))), ~arg_0, _wgslsmith_sub_i32(u_input.a.x, ~firstLeadingBit(-20075i))), false);
    global0 = Struct_1(arg_0, countOneBits(abs(global0.b)), abs(~_wgslsmith_div_u32(u_input.b, 1u)) >= 63597u);
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(-select(u_input.a, global0.b.xz, false) ^ _wgslsmith_mod_vec2_i32(global0.b.zx, ~global0.b.zy), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a, u_input.c) | vec2<i32>(-1i, 1i), global0.b.xz, u_input.d.xz)), u_input.d, false);
    var var_0 = Struct_1(firstTrailingBit(arg_0), u_input.d, false);
    var_0 = Struct_1(global0.a, abs(var_0.b), global0.c);
    return 5594u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    return ~(~(~(0i & global0.a))) << (func_3(21727i) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global0 = Struct_1(0i, firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(-16200i, abs(-2147483647i), i32(-1i) * -72332i), _wgslsmith_div_i32(1i, ~arg_1), -1i)), any(vec2<bool>(any(vec4<bool>(true, arg_3.c, true, true)), arg_0.c)));
    var var_0 = Struct_1(~(-arg_2), vec3<i32>(firstLeadingBit(arg_2), -2147483647i, -u_input.e.x), all(select(!vec3<bool>(false, arg_0.c, false), vec3<bool>(false, true, true), true)) || (13262u <= ~(0u << (u_input.b % 32u))));
    global0 = Struct_1(~(-firstLeadingBit(arg_2) ^ 1i), vec3<i32>(~(~0i), var_0.a, -countOneBits(u_input.e.x)) | vec3<i32>(u_input.e.x, -firstLeadingBit(arg_0.b.x), _wgslsmith_sub_i32(func_2(arg_0, arg_3), -arg_2)), any(!(!(!vec2<bool>(arg_3.c, true)))));
    var var_1 = arg_0.c;
    let var_2 = Struct_1((arg_1 << (_wgslsmith_add_u32(u_input.b | u_input.b, 33171u) % 32u)) ^ ~min(countOneBits(79677i), select(u_input.d.x, global0.a, false)), ~global0.b, arg_3.c);
    return vec4<i32>(_wgslsmith_mult_i32(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.c, -2147483647i), vec4<i32>(arg_1, 1i, var_2.b.x, arg_3.a))), 1i), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(arg_3.b.zz, arg_0.b.yz), u_input.e), min(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(arg_3.b.x, var_0.a), var_0.b.zx), abs(vec2<i32>(arg_1, global0.a))), vec2<i32>(_wgslsmith_mod_i32(arg_3.a, -1i), -28198i))), _wgslsmith_mult_i32(~1i, 9812i));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.a;
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), vec4<u32>(u_input.b, 38855u, u_input.b, u_input.b))), (~vec4<u32>(1u, u_input.b, 0u, 1u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 4811u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 77477u))) >> (countOneBits(max(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u))), select(vec4<u32>(0u, u_input.b, 1u, 1u), ~(~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) & select(vec4<u32>(18279u, u_input.b, 34389u, 4294967295u), vec4<u32>(u_input.b, 92148u, 1u, 4294967295u), global0.c)), !(!(!arg_3.c))));
    var_0 = -1i;
    global0 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(1000f, 128f), _wgslsmith_f_op_f32(sign(arg_0)), 581f, arg_0)))))));
    return arg_3;
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-502f, -811f, -1848f, 281f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -739f, 497f, 267f), vec4<f32>(-519f, 625f, 206f, 1000f), global0.c))))))));
    let var_1 = !all(vec4<bool>(true, false, false, !arg_0.x));
    global0 = func_5(_wgslsmith_div_f32(var_0.x, var_0.x), Struct_1(-64019i, ~vec3<i32>(u_input.a.x, u_input.e.x & u_input.e.x, -u_input.a.x), false), func_4(Struct_1(~u_input.d.x, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~global0.b.x, func_2(Struct_1(u_input.d.x, vec3<i32>(u_input.c, u_input.d.x, 7113i), arg_0.x), Struct_1(u_input.e.x, vec3<i32>(-52685i, 13224i, 0i), true))), true), func_2(Struct_1(reverseBits(-1i), vec3<i32>(global0.b.x, u_input.a.x, global0.b.x), true), Struct_1(0i, u_input.d << (vec3<u32>(4294967295u, u_input.b, 4294967295u) % vec3<u32>(32u)), all(arg_0.zz))), max(~(u_input.c & -1i), _wgslsmith_mult_i32(global0.a, firstLeadingBit(9781i))), Struct_1(global0.b.x, global0.b, global0.c)), Struct_1(firstTrailingBit(_wgslsmith_mult_i32(func_4(Struct_1(u_input.d.x, vec3<i32>(u_input.a.x, 59089i, -828i), global0.c), -3485i, global0.a, Struct_1(-10201i, vec3<i32>(u_input.a.x, u_input.e.x, u_input.d.x), arg_0.x)).x, global0.a & 22036i)), ~(firstTrailingBit(vec3<i32>(-13168i, u_input.a.x, global0.a)) >> (~vec3<u32>(u_input.b, 20565u, 14482u) % vec3<u32>(32u))), true));
    let var_2 = func_5(var_0.x, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-131f * -1000f), var_0.x), func_5(var_0.x, Struct_1(1i, max(vec3<i32>(global0.b.x, u_input.e.x, global0.a), vec3<i32>(global0.a, -1i, global0.a)), true), select(vec4<i32>(u_input.e.x, 2936i, global0.a, 2147483647i), vec4<i32>(-2147483647i, -1i, 31749i, global0.a), !vec4<bool>(var_1, arg_0.x, false, global0.c)), func_5(_wgslsmith_f_op_f32(299f - 2119f), Struct_1(0i, global0.b, global0.c), vec4<i32>(-2147483647i, u_input.c, -50655i, global0.a), func_5(var_0.x, Struct_1(-16298i, global0.b, var_1), vec4<i32>(-64469i, -28122i, 45785i, 0i), Struct_1(global0.a, global0.b, global0.c)))), ~(vec4<i32>(u_input.e.x, global0.a, global0.b.x, global0.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, 0u), vec4<u32>(u_input.b, 4906u, 4294967295u, 25231u)) % vec4<u32>(32u))), Struct_1(78295i << (firstLeadingBit(u_input.b) % 32u), ~firstLeadingBit(vec3<i32>(u_input.d.x, global0.a, 2147483647i)), all(vec2<bool>(false, true)))), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, u_input.e.x, u_input.e.x, 1i), vec4<i32>(-2147483647i, 2147483647i, 16520i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-57028i, 11458i, u_input.e.x, -20590i), vec4<i32>(u_input.e.x, 27384i, global0.a, u_input.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 40474i, 1i, u_input.e.x), max(vec4<i32>(-35701i, u_input.a.x, -5176i, global0.b.x), vec4<i32>(global0.b.x, 9241i, u_input.d.x, -1i))), true), ~vec4<i32>(_wgslsmith_mult_i32(u_input.c, u_input.e.x), func_2(Struct_1(-45747i, vec3<i32>(-8234i, 1i, 2147483647i), arg_0.x), Struct_1(global0.b.x, vec3<i32>(u_input.c, 1i, 0i), true)), _wgslsmith_mult_i32(-2147483647i, u_input.d.x), func_2(Struct_1(global0.a, u_input.d, arg_0.x), Struct_1(1i, vec3<i32>(2147483647i, -6943i, u_input.e.x), false))), _wgslsmith_mod_vec4_i32(~vec4<i32>(6792i, -31014i, -4449i, 1i), vec4<i32>(-2147483647i, -38014i, 31338i, global0.a)) | (vec4<i32>(-26145i, u_input.d.x, -61663i, u_input.a.x) | (vec4<i32>(global0.b.x, u_input.d.x, global0.b.x, global0.a) | vec4<i32>(u_input.a.x, 0i, -42940i, u_input.e.x)))), Struct_1(_wgslsmith_sub_i32(-43685i, 1i), ~vec3<i32>(~28452i, -2147483647i, ~(-45323i)), true));
    global0 = func_5(_wgslsmith_f_op_f32(1281f + 936f), func_5(_wgslsmith_f_op_f32(784f + 1000f), var_2, countOneBits(-vec4<i32>(u_input.e.x, -13146i, u_input.c, var_2.a)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), func_5(335f, Struct_1(1i, vec3<i32>(var_2.a, global0.a, 37947i), global0.c), -vec4<i32>(2147483647i, -1i, global0.b.x, u_input.e.x), func_5(var_0.x, Struct_1(u_input.d.x, vec3<i32>(0i, u_input.c, 2147483647i), arg_0.x), vec4<i32>(1i, -2147483647i, 1i, -14464i), Struct_1(var_2.b.x, vec3<i32>(-79389i, 5642i, global0.b.x), global0.c))), ~vec4<i32>(1i, global0.a, var_2.a, 13934i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(41800u, u_input.b, 37376u, 17986u), vec4<u32>(44238u, 44282u, 4294967295u, 41421u), vec4<u32>(u_input.b, u_input.b, 0u, 10693u)) % vec4<u32>(32u)), func_5(_wgslsmith_f_op_f32(-var_0.x), Struct_1(-24452i, vec3<i32>(-12897i, 2331i, -1i), var_1), select(vec4<i32>(-41123i, u_input.a.x, var_2.a, 64386i), vec4<i32>(-65316i, var_2.b.x, 2147483647i, global0.b.x), var_2.c), var_2))), func_4(var_2, select(min(u_input.a.x ^ u_input.e.x, -global0.b.x), firstLeadingBit(-5529i), false), var_2.a, var_2), var_2);
    return u_input.d;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(global0.a, func_4(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -1i, 2147483647i, global0.b.x), vec4<i32>(u_input.e.x, -74257i, global0.b.x, -2147483647i) | vec4<i32>(global0.b.x, 5096i, 2147483647i, -1i)), arg_1.b, arg_1.c && false), -2147483647i, -60945i, arg_1).zyy, abs(71294u) >= u_input.b);
    let var_0 = -602f;
    global0 = arg_1;
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(func_5(-1752f, Struct_1(-2147483647i, vec3<i32>(-7785i, -1i, -4805i), global0.c), vec4<i32>(u_input.a.x, 2147483647i, -6932i, -2147483647i), Struct_1(-11797i, global0.b, arg_1.c)).b.yx), max(vec2<i32>(arg_1.b.x, global0.a), u_input.a ^ global0.b.xy)), ~vec2<i32>(abs(u_input.c), global0.b.x)), global0.b, arg_1.c);
    let var_1 = arg_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(~0u, Struct_1(u_input.e.x, abs(func_1(!vec3<bool>(global0.c, true, global0.c))), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global0.a, -29550i, global0.a)) >= _wgslsmith_sub_i32(2147483647i, func_1(vec3<bool>(global0.c, false, global0.c)).x)));
    var var_0 = vec4<u32>(abs(u_input.b) ^ u_input.b, u_input.b, 1u, 4294967295u) ^ ~(~select(select(vec4<u32>(u_input.b, 46438u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 30350u, 81806u), vec4<bool>(true, false, global0.c, true)), min(vec4<u32>(1u, u_input.b, u_input.b, 25928u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(vec4<bool>(global0.c, true, false, true), vec4<bool>(global0.c, global0.c, global0.c, false), true)));
    var var_1 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(~reverseBits(vec4<u32>(37007u, 0u, u_input.b, 1u))), vec4<u32>(_wgslsmith_mult_u32(15498u, var_0.x << (4294967295u % 32u)), ~36632u, ~var_0.x, 1u));
    let var_2 = func_6(29460u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b, var_0.x, 0u) | vec4<u32>(var_1.x, 49476u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 1u)) % 32u), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1310f, 1000f) + _wgslsmith_f_op_f32(-1357f * -1504f)), 1293f), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2077f - -542f)), Struct_1(0i, -global0.b, true), (vec4<i32>(1i, u_input.c, u_input.a.x, 4990i) << (vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.b) % vec4<u32>(32u))) ^ -vec4<i32>(1i, global0.b.x, u_input.a.x, 11069i), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-21533i, u_input.c, global0.a), u_input.d), ~global0.b, global0.c & global0.c)), vec4<i32>(u_input.d.x, ~global0.b.x, -u_input.a.x, global0.a), func_6(u_input.b >> (27178u % 32u), Struct_1(_wgslsmith_clamp_i32(u_input.c, 1i, -2147483647i), global0.b, false))));
    var var_3 = var_2.c;
    let var_4 = var_0.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~u_input.d.x) >> (~var_4.x % 32u), u_input.e.x), var_2.b.x << (_wgslsmith_mod_u32(abs(0u), 41776u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(109f * 881f))))));
}

