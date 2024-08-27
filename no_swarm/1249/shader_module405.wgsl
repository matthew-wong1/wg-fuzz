struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_5 = Struct_5(Struct_1(1u, 0i, 2147483647i), Struct_1(37277u, 2147483647i, 25993i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> vec3<bool> {
    var var_0 = false;
    let var_1 = all(!(!(!(!vec3<bool>(arg_2, arg_2, arg_2)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, arg_1, -144f, -150f) * vec4<f32>(arg_1, -419f, 1000f, arg_1))))))));
    let var_3 = arg_0;
    let var_4 = Struct_3(vec4<i32>(var_3.a.c, global1.a.c, u_input.a, var_3.a.b) | vec4<i32>(50541i, var_3.a.b, firstLeadingBit(2147483647i) << (0u % 32u), -2147483647i), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(firstTrailingBit(var_3.b.b), i32(-1i) * -u_input.b)), Struct_2(Struct_1(min(countOneBits(global1.b.a), 9565u), 1i, ~abs(1i)), _wgslsmith_f_op_f32(-var_2.x)), true, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) - var_2.x) > _wgslsmith_f_op_f32(1635f * arg_1), any(vec4<bool>(arg_2, var_3.a.a < var_3.b.a, arg_2 && var_1, false))));
    return select(!select(vec3<bool>(arg_2, !arg_2, var_1), select(vec3<bool>(var_1, arg_2, true), !vec3<bool>(var_4.d, arg_2, var_4.e.x), false), !(!vec3<bool>(arg_2, false, var_4.e.x))), !vec3<bool>(global1.a.a == ~global1.a.a, false, (var_4.c.b < arg_1) != any(var_4.e)), vec3<bool>(arg_2, var_1 && (~var_4.c.a.a > 1u), arg_2));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    var var_0 = func_3(Struct_5(Struct_1(abs(arg_0.c.a.a), -40745i, firstLeadingBit(17585i)), arg_0.c.a), _wgslsmith_f_op_f32(229f - -413f), !(!(!arg_0.d)));
    var var_1 = Struct_4(arg_0.c, arg_0);
    var var_2 = Struct_3(var_1.b.a, arg_1.a.yx, Struct_2(Struct_1(global1.b.a, -56212i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.b.a.xyz, var_1.b.a.zwx), firstTrailingBit(17068i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-889f * arg_0.c.b), -553f)), false, !arg_1.e);
    return var_1.b.c.a.b;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 32669i, arg_2, 28351i), arg_3.a)))), ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -41221i), vec3<i32>(-37744i, 1i, -3441i))), _wgslsmith_sub_i32(-arg_1.x, 5105i), _wgslsmith_dot_vec2_i32(arg_3.b, vec2<i32>(arg_0, arg_2)), _wgslsmith_add_i32(48851i, _wgslsmith_sub_i32(arg_1.x, 2147483647i))));
    let var_1 = (_wgslsmith_div_u32(arg_3.c.a.a, 1u) | ~_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.a.a, arg_3.c.a.a), firstLeadingBit(0u))) & _wgslsmith_div_u32(arg_3.c.a.a, _wgslsmith_div_u32(global1.a.a, 26418u));
    let var_2 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1, arg_3.c.a.a), ~vec2<u32>(18884u, 1u))), abs(vec2<u32>(16674u ^ var_1, arg_3.c.a.a & 0u))) <= reverseBits(44128u);
    var var_3 = _wgslsmith_dot_vec4_i32(select(~(~(arg_3.a >> (vec4<u32>(var_1, 51472u, global1.b.a, 20626u) % vec4<u32>(32u)))), vec4<i32>(i32(-1i) * -20554i, reverseBits(global1.a.b), -arg_0, -arg_1.x) ^ arg_3.a, !arg_3.e.x), reverseBits(select(-arg_3.a, ~vec4<i32>(arg_0, arg_1.x, -33084i, global1.b.c), select(global1.b.c <= -55426i, true, true))));
    return global1.b;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = 27663u;
    var var_1 = Struct_5(arg_2.a, func_4(34001i >> (_wgslsmith_mult_u32(~arg_0, global1.b.a) % 32u), -abs(vec2<i32>(arg_2.a.c, 1i)), min(~(~u_input.b), _wgslsmith_div_i32(-u_input.b, func_2(Struct_3(vec4<i32>(u_input.a, u_input.b, 1i, -1i), vec2<i32>(global1.b.c, arg_2.a.c), Struct_2(arg_2.a, arg_2.b), true, vec2<bool>(true, false)), Struct_3(vec4<i32>(-50623i, u_input.a, global1.b.c, -5458i), vec2<i32>(global1.a.b, global1.a.b), arg_2, true, vec2<bool>(false, true))))), Struct_3(vec4<i32>(1i, arg_2.a.c, -u_input.b, ~global1.b.c), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 5639i)), vec2<i32>(0i, 1i)), arg_2, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), func_3(Struct_5(Struct_1(global1.a.a, 32111i, 2147483647i), Struct_1(global1.a.a, u_input.a, -4685i)), 1000f, true).zy)));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(floor(-1156f))), _wgslsmith_f_op_f32(sign(arg_3))));
    let var_3 = Struct_5(Struct_1(1u, func_2(Struct_3(-vec4<i32>(arg_2.a.b, global1.a.c, 54446i, 11075i), vec2<i32>(u_input.b, -1i) | vec2<i32>(-30886i, u_input.a), arg_2, true, vec2<bool>(true, false)), Struct_3(vec4<i32>(arg_2.a.b, -27864i, -70789i, u_input.a), vec2<i32>(arg_2.a.b, -2147483647i), arg_2, all(vec4<bool>(false, true, false, false)), func_3(Struct_5(global1.a, Struct_1(global1.b.a, -2147483647i, var_1.a.c)), arg_2.b, true).xx)), select(firstLeadingBit(u_input.a) ^ 64238i, (31936i << (arg_0 % 32u)) & countOneBits(var_1.b.b), all(vec3<bool>(false, false, true)))), Struct_1(arg_2.a.a, reverseBits(-1i), 2147483647i));
    global1 = Struct_5(Struct_1(_wgslsmith_mod_u32(~func_4(34017i, vec2<i32>(29093i, u_input.b), u_input.a, Struct_3(vec4<i32>(arg_2.a.b, global1.a.b, -1i, -1i), vec2<i32>(25636i, arg_2.a.b), arg_2, true, vec2<bool>(true, false))).a, _wgslsmith_sub_u32(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.a, arg_0), vec2<u32>(arg_2.a.a, 20884u)))), -(~global1.a.c & ~(-1i)), -8360i ^ _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~arg_2.a.c)), Struct_1((_wgslsmith_sub_u32(59010u, arg_2.a.a) ^ min(154211u, 11016u)) ^ 4294967295u, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2160i, -2147483647i))), _wgslsmith_div_i32(1i, -2147483647i)));
    return -828f;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = ~abs(-vec3<i32>(-2147483647i, reverseBits(arg_2.c.a.b), arg_0.x));
    let var_1 = Struct_5(func_4(u_input.b, ~select(vec2<i32>(1i, 1i), abs(var_0.yz), arg_2.d), ~_wgslsmith_add_i32(global1.a.b, min(u_input.a, -1170i)), arg_2), func_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, arg_2.a.x, 0i, -36225i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 12029i, arg_2.c.a.b, arg_0.x), select(arg_2.a, arg_2.a, vec4<bool>(arg_2.d, true, true, arg_2.e.x)))), vec2<i32>(countOneBits(global1.a.b), global1.a.c), ~_wgslsmith_sub_i32(-1i, ~var_0.x), Struct_3(_wgslsmith_div_vec4_i32(~arg_2.a, arg_2.a), arg_0, arg_2.c, false, !arg_2.e)));
    var var_2 = vec2<u32>(max(_wgslsmith_mod_u32(45158u, countOneBits(1u)), 4294967295u), 0u);
    var var_3 = -1i;
    var var_4 = var_0.xz;
    return Struct_5(Struct_1(arg_3.x, ~reverseBits(arg_0.x & -27975i), reverseBits(var_1.a.c) >> (firstLeadingBit(var_1.a.a) % 32u)), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-7075i, -2147483647i), vec2<i32>(u_input.a, -29962i) ^ vec2<i32>(u_input.b, -2147483647i)), (vec2<i32>(0i, u_input.a) | vec2<i32>(global1.a.b, -17231i)) << (firstTrailingBit(vec2<u32>(15806u, global1.a.a)) % vec2<u32>(32u))) & 23652i);
    global0 = select(true, true, any(vec4<bool>(true, true, true, true)));
    global1 = func_5(vec2<i32>(-1i) * -(~vec2<i32>(u_input.b, u_input.b) << ((vec2<u32>(4294967295u, global1.a.a) ^ vec2<u32>(global1.b.a, global1.a.a)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.a.a, ~(global1.b.a << (0u % 32u)), Struct_2(Struct_1(global1.a.a, u_input.a, var_0), _wgslsmith_f_op_f32(-1036f * 210f)), 1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -618f)))), Struct_3(-select(select(vec4<i32>(2147483647i, global1.a.b, 32021i, 1i), vec4<i32>(u_input.b, 9179i, 9773i, global1.a.c), vec4<bool>(false, false, true, false)), select(vec4<i32>(u_input.b, -8904i, global1.b.c, global1.a.b), vec4<i32>(37260i, global1.b.b, 72355i, u_input.b), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), vec2<i32>(global1.a.b, 14212i), Struct_2(Struct_1(0u, ~(-14275i), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123f + -1449f))), true, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), func_3(Struct_5(global1.b, Struct_1(13972u, 22555i, var_0)), 757f, false).x), vec2<bool>(true, true))), vec4<u32>(1u, 0u, 1181u, func_4(_wgslsmith_div_i32(56389i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(global1.b.c, u_input.a))), -vec2<i32>(1i, 1i), _wgslsmith_add_i32(u_input.b, var_0), Struct_3(-vec4<i32>(-40860i, -1i, u_input.a, u_input.a), -vec2<i32>(global1.a.b, var_0), Struct_2(Struct_1(global1.b.a, 2147483647i, -35567i), 104f), select(true, true, false), vec2<bool>(true, true))).a));
    var var_1 = !all(vec4<bool>(true, true, true, true));
    global0 = any(!func_3(Struct_5(func_4(8610i, vec2<i32>(48188i, -1i), global1.a.b, Struct_3(vec4<i32>(-23084i, -13300i, -1i, global1.b.b), vec2<i32>(u_input.a, 50368i), Struct_2(global1.a, -409f), false, vec2<bool>(true, true))), Struct_1(4294967295u, var_0, var_0)), _wgslsmith_f_op_f32(-857f + 197f), _wgslsmith_sub_i32(-1i, u_input.b) == -24671i));
    global1 = func_5(max(~(-(~vec2<i32>(global1.a.b, u_input.b))), select(vec2<i32>(reverseBits(var_0), ~global1.a.c), vec2<i32>(~(-9146i), 20245i), select(vec2<bool>(true, true), func_3(Struct_5(Struct_1(68618u, 73485i, -12022i), global1.a), -1260f, true).xx, func_3(Struct_5(Struct_1(37661u, global1.b.c, 2147483647i), Struct_1(32651u, 2147483647i, var_0)), -1249f, false).zy))), 806f, Struct_3(-(~vec4<i32>(var_0, -35858i, 2147483647i, 36624i)), vec2<i32>(-func_5(vec2<i32>(-2147483647i, 0i), -1652f, Struct_3(vec4<i32>(13264i, global1.a.c, -42541i, -6224i), vec2<i32>(u_input.b, -2147483647i), Struct_2(global1.a, 453f), false, vec2<bool>(false, false)), vec4<u32>(global1.b.a, 1u, 15644u, 45348u)).b.b, _wgslsmith_sub_i32(355i, u_input.a)), Struct_2(global1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1099f - 125f), -1507f))), true, select(func_3(func_5(vec2<i32>(0i, -22140i), -877f, Struct_3(vec4<i32>(u_input.a, global1.b.b, -2147483647i, 1i), vec2<i32>(-1i, 6818i), Struct_2(Struct_1(global1.b.a, global1.b.b, -8663i), 1335f), true, vec2<bool>(false, false)), vec4<u32>(global1.a.a, 4294967295u, global1.a.a, global1.a.a)), _wgslsmith_f_op_f32(max(-356f, -525f)), true).yy, vec2<bool>(true, true), vec2<bool>(true, true))), ~vec4<u32>(1u, abs(1u), ~0u, firstTrailingBit(24390u)));
    var_1 = true | func_3(func_5(select(firstLeadingBit(vec2<i32>(var_0, var_0)), vec2<i32>(global1.b.b, global1.b.b), false), 748f, Struct_3(vec4<i32>(-29796i, u_input.b, global1.a.c, 47160i) << (vec4<u32>(global1.a.a, 4294967295u, global1.a.a, 1u) % vec4<u32>(32u)), ~vec2<i32>(12280i, -16833i), Struct_2(Struct_1(8271u, 1i, u_input.b), -648f), true, vec2<bool>(true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(26176u, 0u, 4294967295u, global1.b.a), vec4<u32>(20406u, 0u, 4294967295u, global1.b.a) & vec4<u32>(global1.b.a, global1.b.a, 4294967295u, global1.a.a), abs(vec4<u32>(global1.a.a, 5244u, global1.b.a, 8901u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f * -1348f))), all(vec2<bool>(true, 49458u <= global1.b.a))).x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(4294967295u, global1.b.a, 4294967295u) << (vec3<u32>(0u, 4294967295u, 67567u) % vec3<u32>(32u)))) >> (vec3<u32>(select(47040u << (global1.a.a % 32u), ~global1.a.a, true), global1.b.a, global1.b.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1538f, -1146f, 1550f, 173f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, 1000f, -1733f, 2209f))))));
}

