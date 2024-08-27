struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, -1i);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(2147483647i, vec4<f32>(-171f, 629f, 323f, 2266f), vec2<i32>(2147483647i, 5296i), vec4<i32>(29439i, 0i, 9776i, -50883i), true), Struct_1(-19235i, vec4<f32>(223f, -740f, -198f, -172f), vec2<i32>(-27825i, 35914i), vec4<i32>(2147483647i, 1i, 0i, 12439i), false), Struct_1(38072i, vec4<f32>(132f, 301f, 399f, -213f), vec2<i32>(2147483647i, -31837i), vec4<i32>(0i, 24551i, 21871i, 38688i), false), Struct_1(-585i, vec4<f32>(847f, 854f, 314f, -1891f), vec2<i32>(10335i, -21113i), vec4<i32>(2147483647i, -1i, -1i, 2147483647i), true), Struct_1(-1i, vec4<f32>(-718f, 844f, -674f, -1327f), vec2<i32>(0i, -32202i), vec4<i32>(-1i, i32(-2147483648), 1i, 0i), false), Struct_1(i32(-2147483648), vec4<f32>(1702f, 1557f, 1490f, -333f), vec2<i32>(-1i, 2147483647i), vec4<i32>(1i, 2147483647i, -21935i, -4582i), false), Struct_1(25257i, vec4<f32>(123f, 332f, 217f, -265f), vec2<i32>(11488i, 24586i), vec4<i32>(-1i, -57288i, 2147483647i, -25508i), true), Struct_1(-30762i, vec4<f32>(-541f, -1376f, 359f, -1000f), vec2<i32>(-20154i, 1i), vec4<i32>(-75515i, 51349i, -1i, 7448i), true), Struct_1(7319i, vec4<f32>(-1784f, -1424f, 206f, -1000f), vec2<i32>(i32(-2147483648), 51306i), vec4<i32>(-19659i, 0i, i32(-2147483648), -1i), false), Struct_1(-16779i, vec4<f32>(-1238f, 1796f, -1097f, 115f), vec2<i32>(2147483647i, 2147483647i), vec4<i32>(43839i, -21430i, 2147483647i, 14110i), false), Struct_1(7713i, vec4<f32>(-370f, -103f, -314f, -455f), vec2<i32>(2147483647i, 0i), vec4<i32>(-61512i, 2147483647i, 1i, 2147483647i), false), Struct_1(1i, vec4<f32>(-1733f, 942f, 471f, 1000f), vec2<i32>(39289i, -39984i), vec4<i32>(52673i, 2147483647i, 1123i, i32(-2147483648)), false), Struct_1(2147483647i, vec4<f32>(-548f, -657f, 704f, -359f), vec2<i32>(-26287i, -13214i), vec4<i32>(1i, -28021i, 4451i, 7584i), true), Struct_1(14419i, vec4<f32>(1137f, 761f, -1220f, 770f), vec2<i32>(-1i, 1i), vec4<i32>(i32(-2147483648), 0i, 26128i, -1i), false), Struct_1(-8572i, vec4<f32>(-1307f, -538f, 529f, 1000f), vec2<i32>(0i, i32(-2147483648)), vec4<i32>(-12149i, 7295i, i32(-2147483648), 4295i), false), Struct_1(-7141i, vec4<f32>(-558f, -632f, 664f, 1020f), vec2<i32>(-13326i, 2147483647i), vec4<i32>(i32(-2147483648), 73632i, 18432i, i32(-2147483648)), true), Struct_1(-1035i, vec4<f32>(-282f, 2016f, 806f, 394f), vec2<i32>(i32(-2147483648), -47693i), vec4<i32>(2147483647i, 27543i, -11255i, 1i), false), Struct_1(2147483647i, vec4<f32>(-1000f, -409f, 1000f, -661f), vec2<i32>(-21855i, 74601i), vec4<i32>(-22127i, -1i, i32(-2147483648), 36066i), true), Struct_1(-22676i, vec4<f32>(162f, 854f, -1458f, 1069f), vec2<i32>(51740i, -1i), vec4<i32>(2147483647i, 0i, -18596i, 0i), false), Struct_1(13050i, vec4<f32>(-1188f, 1592f, -264f, 1739f), vec2<i32>(2147483647i, -1i), vec4<i32>(2147483647i, 20994i, -14177i, -29401i), false), Struct_1(0i, vec4<f32>(-301f, -1158f, 1038f, 401f), vec2<i32>(-1i, 2147483647i), vec4<i32>(7577i, 2147483647i, -2069i, -48971i), false), Struct_1(-7276i, vec4<f32>(-276f, -803f, 963f, 1108f), vec2<i32>(1i, -1i), vec4<i32>(i32(-2147483648), 0i, 25724i, i32(-2147483648)), true), Struct_1(12369i, vec4<f32>(1199f, 518f, -872f, -2363f), vec2<i32>(24863i, i32(-2147483648)), vec4<i32>(1i, -37413i, -78311i, -55432i), true), Struct_1(24442i, vec4<f32>(439f, 213f, -1000f, -1000f), vec2<i32>(-1i, 0i), vec4<i32>(3989i, 1727i, 21139i, -1i), false));

var<private> global2: vec2<i32> = vec2<i32>(24585i, 1i);

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global2 = u_input.e.xy;
    let var_0 = vec2<bool>(arg_2.e || any(arg_0), arg_0.x & arg_0.x);
    global3 = _wgslsmith_mult_u32(~(~8658u), 1u);
    global2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-global0.x, global0.x), _wgslsmith_mult_vec2_i32(global0.zz, abs(abs(u_input.e.zx) ^ abs(vec2<i32>(u_input.e.x, arg_2.c.x)))));
    var var_1 = arg_2;
    return 1000f;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global2 = u_input.e.zy;
    let var_0 = !(!vec4<bool>(~u_input.d.x <= ~20797u, any(vec3<bool>(true, arg_0, false)), !any(vec2<bool>(false, arg_0)), arg_0));
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(821f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - -372f)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<bool>(!arg_2, func_2(var_0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -559f, var_1, var_1), vec4<f32>(-668f, 1000f, var_1, arg_1.x), vec4<bool>(arg_0, var_0.x, true, true)))), arg_0, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(u_input.d.x, 0u), u_input.d.x & 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 24779u), ~vec3<u32>(u_input.d.x, u_input.d.x, 0u))), Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, -563f, -286f), vec4<f32>(var_1, arg_1.x, arg_1.x, var_1), false))), vec2<i32>(global2.x, firstLeadingBit(u_input.b)), vec4<i32>(u_input.b, global2.x & global0.x, _wgslsmith_mod_i32(u_input.b, -7033i), -32769i), arg_0)))));
    return false;
}

fn func_4(arg_0: bool, arg_1: bool) -> i32 {
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(68824i ^ func_4(func_1(false, vec3<f32>(1357f, 131f, 345f), false) | true, !any(vec3<bool>(true, true, false))));
    global0 = u_input.e;
    global3 = max(u_input.d.x, 31610u);
    var var_1 = firstTrailingBit(-(~u_input.e.yy));
    let var_2 = max(~_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(u_input.a, u_input.d.x, 0u)), ~(~vec3<u32>(u_input.a, 1u, 55996u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, u_input.a, u_input.a)), firstLeadingBit(vec3<u32>(42381u, u_input.d.x, 4294967295u)))), ~(~vec3<u32>(1u, 1u, 1u)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1421f) * _wgslsmith_f_op_f32(round(1644f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -427f))))))));
    var var_4 = select(select(vec2<bool>(true, !(2260u >= u_input.d.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(true, vec4<f32>(2033f, -1114f, 438f, -385f)))), select(vec2<bool>(global2.x != -2147483647i, global0.x > 0i), vec2<bool>(true, true), any(vec3<bool>(true, false, false)))), vec2<bool>(!all(vec2<bool>(true, true)), func_1(all(vec4<bool>(true, false, false, true)), vec3<f32>(-1459f, _wgslsmith_f_op_f32(floor(1034f)), _wgslsmith_f_op_f32(f32(-1f) * -426f)), ~0u <= _wgslsmith_sub_u32(4294967295u, var_2.x))), true || any(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)));
    let var_5 = 554f;
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, ~(~abs(101774u)), func_2(select(var_4.x, any(vec4<bool>(true, true, var_4.x, false)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, var_5, var_5, 1199f))))), ~(~(~vec4<i32>(-2147483647i, 51888i, -13361i, u_input.b))), vec3<u32>(1u | u_input.a, 1u, select(var_2.x, u_input.c, true) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), _wgslsmith_mod_vec2_u32(u_input.d, u_input.d))), var_2);
}

