struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), -22707i, 1i, -25372i, 16926i, -6374i, -23025i, 0i, 38844i, -20617i, 1i, 9754i, 1i, 17545i);

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: vec2<i32> = vec2<i32>(-8941i, -1i);

var<private> global3: f32;

var<private> global4: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1678f, 426f, 1181f), vec3<f32>(-326f, 1625f, -1364f), vec3<f32>(-1000f, -282f, -208f), vec3<f32>(1315f, 300f, 1286f), vec3<f32>(542f, -1288f, -422f), vec3<f32>(-494f, -195f, 406f), vec3<f32>(1903f, -1784f, 1663f), vec3<f32>(-1086f, -1376f, -1660f), vec3<f32>(1904f, 1209f, 355f), vec3<f32>(907f, 629f, 462f), vec3<f32>(-882f, 378f, 156f), vec3<f32>(-471f, -892f, -266f), vec3<f32>(-1131f, -1242f, -744f), vec3<f32>(209f, -771f, 1473f), vec3<f32>(-725f, -1224f, 1765f), vec3<f32>(505f, 2391f, -465f), vec3<f32>(-520f, -684f, 757f), vec3<f32>(-1788f, -979f, -579f), vec3<f32>(-323f, -684f, 760f), vec3<f32>(-866f, 721f, -2284f), vec3<f32>(318f, -327f, -1119f), vec3<f32>(-2056f, -995f, 197f), vec3<f32>(-622f, -751f, 1496f), vec3<f32>(-1046f, -1394f, -1719f), vec3<f32>(-1729f, -970f, -701f), vec3<f32>(-115f, 1634f, -179f), vec3<f32>(1000f, 477f, 1035f), vec3<f32>(-1381f, 1085f, 1311f), vec3<f32>(333f, 1000f, 465f), vec3<f32>(-537f, -428f, 636f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = arg_3.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2596f, _wgslsmith_f_op_f32(select(277f, -806f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(581f))) + -204f), all(vec4<bool>(select(true, var_0.c, var_0.c), arg_1, -25622i >= global0[_wgslsmith_index_u32(u_input.a, 14u)], arg_3.a)))));
    let var_2 = arg_3.d;
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-725f, -786f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) - -661f))))));
    global2 = u_input.c.xz;
    return all(!arg_2.zz);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = ~4294967295u;
    let var_1 = Struct_2(arg_0.c | func_3(any(vec2<bool>(true, true)), any(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, true), vec2<bool>(arg_0.c, arg_0.c))), vec3<bool>(false, arg_0.c, true), Struct_2(any(vec4<bool>(arg_0.c, arg_0.c, arg_1.c, false)), select(vec2<bool>(true, true), vec2<bool>(arg_1.c, true), true), -2147483647i, Struct_1(2147483647i, arg_0.b, true, u_input.d))), select(select(!(!vec2<bool>(false, arg_0.c)), select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c, false), vec2<bool>(false, true), vec2<bool>(arg_0.c, true)), arg_0.c), true && arg_0.c), !select(!vec2<bool>(true, arg_0.c), select(vec2<bool>(true, true), vec2<bool>(arg_1.c, false), vec2<bool>(true, true)), arg_0.c && arg_1.c), true), _wgslsmith_clamp_i32(-(~13259i), ~(-2147483647i), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 2147483647i, arg_0.b, arg_2.x)), vec4<i32>(2147483647i, arg_2.x, arg_0.a, -53375i))), Struct_1(arg_0.b, u_input.e, !arg_0.c, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 0u, 1u), vec3<u32>(60473u, arg_1.d, var_0)), 0u, ~u_input.d)));
    var var_2 = arg_0.c;
    var var_3 = abs(91780u) != arg_1.d;
    var_2 = any(!vec2<bool>(false, !arg_1.c)) & false;
    return Struct_1(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 14u)]), -global2.x), -(vec2<i32>(arg_0.a, arg_1.b) & countOneBits(vec2<i32>(0i, 2147483647i)))), true, u_input.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<i32, 14>();
    var var_1 = !(!select(!(!vec4<bool>(arg_1.a, var_0.a, arg_1.d.c, var_0.b.x)), vec4<bool>(true, false, arg_1.b.x, all(vec4<bool>(arg_1.d.c, arg_1.b.x, false, var_0.a))), var_0.b.x));
    var var_2 = arg_1.b.x;
    var_1 = !vec4<bool>(!var_0.b.x, arg_1.d.c, all(vec4<bool>(true, true, var_1.x, false || arg_1.a)), true);
    return Struct_2(false, vec2<bool>(true, true), ~(-abs(global2.x)), Struct_1(0i, func_2(Struct_1(arg_0.b, arg_1.d.b, arg_0.c | var_1.x, arg_0.d), Struct_1(arg_0.b, reverseBits(arg_1.d.b), var_0.b.x, 1u), u_input.c).a, true, ~(select(var_0.d.d, 0u, true) ^ _wgslsmith_dot_vec2_u32(arg_2.wx, arg_2.yw))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~70u), u_input.a), 0u) > arg_1.x;
    let var_1 = func_4(func_2(Struct_1(2147483647i, -2147483647i, !arg_2, arg_1.x), Struct_1(max(_wgslsmith_add_i32(arg_0.x, -1i), i32(-1i) * -1i), 0i, true, 4294967295u), countOneBits(u_input.c)), Struct_2(false, vec2<bool>(false, true), reverseBits(2147483647i), Struct_1(1i, arg_0.x, !arg_2, countOneBits(~4294967295u))), ~(~(~(~vec4<u32>(arg_1.x, 0u, 25072u, 35090u)))), ~arg_1.yx);
    var var_2 = firstLeadingBit(~global1[_wgslsmith_index_u32(14736u, 23u)] | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(67775u, 61062u), 23u)]);
    let var_3 = select(_wgslsmith_div_i32(abs(-46804i), -34651i), _wgslsmith_sub_i32(arg_0.x, 18917i), arg_2);
    let var_4 = Struct_1(func_2(var_1.d, func_4(func_4(Struct_1(global2.x, -2147483647i, true, arg_1.x), Struct_2(true, var_1.b, var_2.x, var_1.d), ~vec4<u32>(arg_3, 0u, arg_1.x, 0u), vec2<u32>(57148u, u_input.a)).d, var_1, ~firstLeadingBit(vec4<u32>(1u, arg_1.x, 42123u, 4294967295u)), _wgslsmith_add_vec2_u32(arg_1.zy << (arg_1.zx % vec2<u32>(32u)), arg_1.xy)).d, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(25339i, var_2.x, 2147483647i)), arg_0.xwz & arg_0.wwy), firstTrailingBit(vec3<i32>(var_1.c, 1i, arg_0.x)))).a, ~(~(-1i)), any(!select(vec3<bool>(true, false, true), !vec3<bool>(arg_2, false, arg_2), select(vec3<bool>(true, var_1.d.c, var_0), vec3<bool>(false, arg_2, false), vec3<bool>(true, false, arg_2)))), ~abs(48228u));
    return var_4;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_2 {
    global1 = array<vec2<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(761f, 821f)) + -222f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-496f, 1395f)) + _wgslsmith_f_op_f32(f32(-1f) * -250f))))) * 282f);
    let var_1 = arg_1.d;
    let var_2 = all(!vec2<bool>(select(arg_0.c, true, true), true));
    global3 = -565f;
    return Struct_2(true, arg_1.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.d, 13219u), 14u)], Struct_1(select(func_4(func_1(vec4<i32>(2147483647i, global2.x, -19804i, 2147483647i), arg_3.wxw, var_2, var_1.d), func_4(Struct_1(u_input.e, -2147483647i, true, var_1.d), Struct_2(false, arg_2.yx, 1i, var_1), vec4<u32>(var_1.d, 1u, 34610u, arg_0.d), vec2<u32>(arg_1.d.d, 1u)), reverseBits(arg_3), ~vec2<u32>(12335u, arg_1.d.d)).c, _wgslsmith_dot_vec4_i32(-vec4<i32>(11087i, arg_1.c, arg_1.d.a, u_input.c.x), max(vec4<i32>(-55245i, arg_1.c, arg_1.c, global0[_wgslsmith_index_u32(var_1.d, 14u)]), vec4<i32>(33513i, -38006i, arg_1.c, u_input.c.x))), true), countOneBits(-12715i), arg_1.b.x, ~(_wgslsmith_div_u32(762u, 1u) << ((21772u | var_1.d) % 32u))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    global2 = vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(1i, abs(1i))), arg_1.d.a);
    var var_0 = vec4<i32>(u_input.e, u_input.e, 51051i, ~firstLeadingBit(u_input.e));
    global2 = vec2<i32>(40535i, arg_1.d.a);
    global1 = array<vec2<i32>, 23>();
    var var_1 = select(!vec3<bool>(!func_3(true, true, vec3<bool>(true, true, false), arg_0), all(vec4<bool>(false, false, arg_1.d.c, true)), all(vec3<bool>(arg_1.a, false, arg_0.b.x))), !select(select(vec3<bool>(arg_1.d.c, true, arg_0.b.x), vec3<bool>(false, arg_0.d.c, true), select(vec3<bool>(false, arg_1.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_1.d.c), arg_1.b.x)), vec3<bool>(all(vec4<bool>(arg_1.b.x, arg_1.a, false, arg_1.b.x)), all(vec2<bool>(arg_0.b.x, arg_1.d.c)), func_1(vec4<i32>(var_0.x, -2147483647i, arg_1.d.a, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<u32>(u_input.d, u_input.a, arg_0.d.d), arg_0.a, arg_0.d.d).c), select(vec3<bool>(arg_0.a, arg_1.b.x, false), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(false, false, arg_0.b.x), vec3<bool>(true, arg_1.a, false)), false)), arg_1.d.c);
    return ~(~(vec4<u32>(u_input.d, u_input.d, arg_0.d.d, 4294967295u) << (abs(vec4<u32>(u_input.d, 53798u, 0u, arg_1.d.d)) % vec4<u32>(32u))) << (min(vec4<u32>(~1791u, 9816u, _wgslsmith_sub_u32(26008u, arg_1.d.d), 1u), max(select(vec4<u32>(u_input.d, 104600u, arg_1.d.d, 30972u), vec4<u32>(1987u, arg_1.d.d, arg_1.d.d, arg_1.d.d), false), vec4<u32>(50221u, u_input.d, arg_1.d.d, 0u) ^ vec4<u32>(u_input.a, 0u, 1u, 1u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_1(_wgslsmith_sub_i32(-28373i, global0[_wgslsmith_index_u32(0u, 14u)]), global0[_wgslsmith_index_u32(~u_input.a, 14u)], select(false, false, false), select(4294967295u, 0u, false)), Struct_2(true, vec2<bool>(true, true), 24238i, func_1(vec4<i32>(global0[_wgslsmith_index_u32(24985u, 14u)], 351i, 2147483647i, 2563i), vec3<u32>(u_input.a, 16702u, u_input.d), false, u_input.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), func_2(Struct_1(u_input.c.x, 1i, true, 0u), Struct_1(0i, global0[_wgslsmith_index_u32(u_input.a, 14u)], false, u_input.d), vec3<i32>(-56851i, -2147483647i, global2.x)).c), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.d), vec3<u32>(1u, u_input.d, 0u)), u_input.d, 79685u)), func_5(Struct_1(u_input.b, u_input.c.x | -3362i, true, 1u), func_5(func_1(vec4<i32>(-6564i, -6863i, global0[_wgslsmith_index_u32(u_input.d, 14u)], 14159i), vec3<u32>(73430u, 17242u, u_input.d), true, u_input.d), Struct_2(true, vec2<bool>(true, true), 2147483647i, Struct_1(8986i, u_input.e, true, u_input.d)), vec4<bool>(true, true, true, true), ~vec4<u32>(u_input.d, u_input.d, u_input.a, 0u)), vec4<bool>(true, true, true, true), ~vec4<u32>(1u, 21041u, 2495u, 35332u))) << (countOneBits(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.a), ~53958u), ~func_6(Struct_2(true, vec2<bool>(false, true), global0[_wgslsmith_index_u32(10933u, 14u)], Struct_1(11759i, 0i, true, u_input.d)), Struct_2(true, vec2<bool>(false, false), -35482i, Struct_1(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], false, 4294967295u))).x, 1u, ~max(u_input.d, 1u))) % vec4<u32>(32u));
    let var_1 = (false || all(vec2<bool>(true, true))) || false;
    let var_2 = ~global2.x;
    let var_3 = !select(vec4<bool>(var_1, true, var_1, !var_1), select(select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_1, false, true), select(vec4<bool>(false, true, var_1, true), vec4<bool>(true, var_1, false, true), vec4<bool>(var_1, true, false, false))), select(vec4<bool>(false, var_1, var_1, var_1), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, true, false, var_1)), select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(false, false, true, false), var_1)), !(!vec4<bool>(var_1, var_1, true, var_1))), !select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, true, true, true), true));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zyz, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(11320i, global2.x, -31948i, var_2) & ~vec4<i32>(u_input.b, var_2, global0[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i), abs(-vec4<i32>(55277i, -27460i, u_input.c.x, global2.x))), vec4<i32>(global2.x, 1i, _wgslsmith_mod_i32(var_2, global2.x), reverseBits(u_input.e)) | vec4<i32>(global0[_wgslsmith_index_u32(42702u, 14u)] & u_input.b, var_2, _wgslsmith_sub_i32(var_2, global2.x), 1i)), _wgslsmith_sub_u32(28365u, reverseBits(_wgslsmith_mod_u32(var_0.x, var_0.x))));
}

