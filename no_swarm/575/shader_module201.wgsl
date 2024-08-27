struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(-1000f, false, Struct_1(i32(-2147483648), -1000f, vec2<i32>(37591i, 13325i)), Struct_1(588i, -1415f, vec2<i32>(28844i, -33624i))), Struct_2(-179f, false, Struct_1(-37183i, -486f, vec2<i32>(-31927i, 52096i)), Struct_1(-1i, -109f, vec2<i32>(-1i, 1i))), Struct_2(543f, true, Struct_1(2892i, 1198f, vec2<i32>(14422i, -6183i)), Struct_1(2147483647i, -178f, vec2<i32>(37323i, i32(-2147483648)))), Struct_2(-521f, false, Struct_1(-62601i, -1750f, vec2<i32>(-25390i, 2147483647i)), Struct_1(19891i, 515f, vec2<i32>(-16239i, 2147483647i))), Struct_2(1445f, false, Struct_1(13023i, 1532f, vec2<i32>(-21543i, -1i)), Struct_1(0i, -356f, vec2<i32>(i32(-2147483648), -10270i))), Struct_2(2040f, true, Struct_1(0i, 1537f, vec2<i32>(0i, 2147483647i)), Struct_1(15324i, 699f, vec2<i32>(0i, 1i))), Struct_2(-2878f, false, Struct_1(1i, 767f, vec2<i32>(-36627i, 0i)), Struct_1(-20865i, -1000f, vec2<i32>(17223i, 2147483647i))), Struct_2(210f, false, Struct_1(2147483647i, 1376f, vec2<i32>(2147483647i, -20727i)), Struct_1(0i, 358f, vec2<i32>(i32(-2147483648), -30615i))), Struct_2(1320f, false, Struct_1(46782i, 1694f, vec2<i32>(-29025i, 19297i)), Struct_1(-564i, 176f, vec2<i32>(51038i, 1i))), Struct_2(761f, false, Struct_1(-18257i, -110f, vec2<i32>(1i, i32(-2147483648))), Struct_1(0i, 1000f, vec2<i32>(-21548i, 0i))), Struct_2(-419f, true, Struct_1(0i, -881f, vec2<i32>(0i, 22605i)), Struct_1(52831i, -190f, vec2<i32>(14367i, -10887i))), Struct_2(-1226f, false, Struct_1(18439i, -1211f, vec2<i32>(2147483647i, 1i)), Struct_1(2147483647i, 496f, vec2<i32>(i32(-2147483648), -1i))), Struct_2(-430f, false, Struct_1(0i, 695f, vec2<i32>(1i, i32(-2147483648))), Struct_1(35308i, 1503f, vec2<i32>(-28095i, 0i))), Struct_2(-1506f, false, Struct_1(-1i, -345f, vec2<i32>(2147483647i, -56948i)), Struct_1(0i, 1293f, vec2<i32>(0i, 1i))), Struct_2(-110f, true, Struct_1(-1i, -590f, vec2<i32>(-1i, 46065i)), Struct_1(0i, -1373f, vec2<i32>(1i, -76122i))), Struct_2(-801f, true, Struct_1(1209i, -471f, vec2<i32>(-1i, 2002i)), Struct_1(-1i, 192f, vec2<i32>(1i, 0i))), Struct_2(-521f, true, Struct_1(44817i, 857f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(i32(-2147483648), 475f, vec2<i32>(-2177i, -26230i))), Struct_2(-748f, false, Struct_1(i32(-2147483648), 601f, vec2<i32>(2147483647i, 5803i)), Struct_1(0i, 706f, vec2<i32>(41044i, -1i))), Struct_2(-1107f, true, Struct_1(2147483647i, -2248f, vec2<i32>(i32(-2147483648), 20512i)), Struct_1(1i, 1362f, vec2<i32>(1i, 1i))), Struct_2(227f, false, Struct_1(-11175i, -447f, vec2<i32>(0i, i32(-2147483648))), Struct_1(i32(-2147483648), 1297f, vec2<i32>(-12869i, -55355i))), Struct_2(984f, true, Struct_1(2147483647i, 553f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(16133i, 399f, vec2<i32>(1478i, 1i))), Struct_2(-1304f, true, Struct_1(-26739i, -1438f, vec2<i32>(0i, -4644i)), Struct_1(-22217i, -1000f, vec2<i32>(49265i, i32(-2147483648)))), Struct_2(-736f, true, Struct_1(2147483647i, 568f, vec2<i32>(-26769i, -15598i)), Struct_1(-47066i, -2111f, vec2<i32>(i32(-2147483648), 33001i))), Struct_2(317f, true, Struct_1(-1i, -499f, vec2<i32>(0i, -1i)), Struct_1(i32(-2147483648), -372f, vec2<i32>(2147483647i, 2147483647i))), Struct_2(286f, false, Struct_1(3407i, 190f, vec2<i32>(0i, 0i)), Struct_1(6062i, -999f, vec2<i32>(20255i, i32(-2147483648)))), Struct_2(-618f, true, Struct_1(2147483647i, 734f, vec2<i32>(37563i, 19507i)), Struct_1(2147483647i, -298f, vec2<i32>(-24144i, 2147483647i))), Struct_2(662f, false, Struct_1(-38846i, -182f, vec2<i32>(0i, 2147483647i)), Struct_1(-1i, -1000f, vec2<i32>(44437i, -37453i))), Struct_2(-602f, true, Struct_1(2884i, -168f, vec2<i32>(-15738i, i32(-2147483648))), Struct_1(1i, 901f, vec2<i32>(0i, 23420i))));

var<private> global1: array<bool, 9> = array<bool, 9>(false, false, true, false, true, false, true, false, true);

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 24255u, 1u), vec3<u32>(33245u, 4294967295u, 0u), vec3<u32>(0u, 19134u, 4294967295u), vec3<u32>(0u, 10946u, 40167u), vec3<u32>(1u, 1u, 43836u), vec3<u32>(103647u, 1u, 4142u), vec3<u32>(4294967295u, 0u, 46742u), vec3<u32>(0u, 21375u, 14041u), vec3<u32>(4294967295u, 0u, 11991u), vec3<u32>(5879u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 51530u, 1u), vec3<u32>(4294967295u, 52810u, 68802u), vec3<u32>(0u, 10437u, 4294967295u), vec3<u32>(4294967295u, 0u, 2482u), vec3<u32>(22972u, 32254u, 107109u), vec3<u32>(1u, 4294967295u, 6339u), vec3<u32>(4294967295u, 45799u, 16111u), vec3<u32>(1786u, 7602u, 0u), vec3<u32>(3905u, 35850u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = !(!select(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)])), vec4<bool>(any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), true, all(vec3<bool>(false, true, false)), true), any(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)], true))));
    let var_1 = ~u_input.c;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 9u)];
    global2 = array<vec3<u32>, 21>();
    global2 = array<vec3<u32>, 21>();
    return ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x, _wgslsmith_div_u32(1u, u_input.d), reverseBits(u_input.d)), abs(vec4<u32>(0u, 0u, 22836u, 83922u) | vec4<u32>(42762u, u_input.a.x, u_input.e, 72075u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(vec2<u32>(0u & _wgslsmith_div_u32(arg_1, arg_1), 21714u) & _wgslsmith_clamp_vec2_u32(~(vec2<u32>(4294967295u, u_input.d) | vec2<u32>(arg_3.a.x, 0u)), ~arg_0, vec2<u32>(arg_0.x & 42818u, _wgslsmith_sub_u32(23646u, 0u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.b.d.b))), arg_3.b.b, arg_3.b.c, arg_3.b.c), vec4<f32>(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_div_f32(-846f, 728f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(f32(-1f) * -288f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f))));
    var var_1 = var_0.b.c;
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>((min(arg_0.x, 99633u) & 0u) & ~countOneBits(0u), arg_0.x), arg_0);
    var var_3 = ((_wgslsmith_mult_u32(u_input.d, reverseBits(arg_1)) & ~var_2.x) & (select(u_input.e, arg_0.x, false != arg_3.b.b) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.x, var_0.a.x, arg_1) & vec4<u32>(u_input.e, 0u, arg_0.x, 1u), func_3()))) << (_wgslsmith_add_u32(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(49105u, arg_1, var_2.x, arg_0.x), vec4<u32>(arg_1, var_0.a.x, 35429u, 18940u)), ~4294967295u, 31475u), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 36087u, arg_1, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, var_2.x))))) % 32u);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(abs(0u), max(arg_1 & _wgslsmith_div_u32(var_0.a.x, 22782u), var_2.x)), arg_1), 28u)];
    return Struct_1(var_0.b.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, var_0.b.c.b)))) * -199f), abs(select(_wgslsmith_clamp_vec2_i32(arg_3.b.c.c, vec2<i32>(-61580i, var_0.b.d.c.x), _wgslsmith_sub_vec2_i32(arg_3.b.d.c, vec2<i32>(18412i, -6972i))), vec2<i32>(var_4.c.a, _wgslsmith_mod_i32(6238i, var_1.a)), select(vec2<bool>(true, true), vec2<bool>(var_4.b, arg_3.b.b), vec2<bool>(var_0.b.b, true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    var var_0 = !global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 5846u), u_input.a.x)), 9u)];
    let var_1 = !select(vec4<bool>(all(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 9u)])), true, false, any(vec3<bool>(true, true, true))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(12833u, 9u)], global1[_wgslsmith_index_u32(27157u, 9u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)], true, global1[_wgslsmith_index_u32(0u, 9u)])), true), select(!(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.e, 9u)], false)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 9u)], false, true, global1[_wgslsmith_index_u32(0u, 9u)]), !vec4<bool>(global1[_wgslsmith_index_u32(40350u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], true, false), true), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(56561u, 9u)], global1[_wgslsmith_index_u32(33616u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(57363u, 9u)], true, true, true), true)));
    var var_2 = Struct_3(vec2<u32>(u_input.d, 86045u ^ u_input.e), Struct_2(func_2((u_input.a.xx << (u_input.a.zy % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(4294967295u, 20629u)), func_3().x, -611f, Struct_3(max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, u_input.d)), Struct_2(252f, true, arg_1, arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -348f, arg_0, arg_1.b), vec4<f32>(-1377f, 1000f, arg_1.b, -783f)))).b, !any(!var_1.yx), arg_1, func_2(vec2<u32>(_wgslsmith_mult_u32(0u, u_input.a.x), 4294967295u), _wgslsmith_add_u32(u_input.e, u_input.d), -651f, Struct_3(vec2<u32>(4294967295u, u_input.d), Struct_2(arg_1.b, global1[_wgslsmith_index_u32(51535u, 9u)], arg_1, Struct_1(arg_2, -246f, u_input.b.zy)), vec4<f32>(arg_1.b, arg_0, 788f, 832f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(719f, -921f, arg_1.b, -995f) + vec4<f32>(arg_1.b, arg_1.b, arg_0, -352f))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b, -521f, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), -1528f, arg_1.b, func_2(u_input.a.zy, u_input.a.x, arg_1.b, Struct_3(u_input.a.xx, global0[_wgslsmith_index_u32(80298u, 28u)], vec4<f32>(arg_0, arg_0, -268f, -441f))).b)))));
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u >> (u_input.d % 32u), 31918u, u_input.d, _wgslsmith_mod_u32(71042u, var_2.a.x)), ~(select(vec4<u32>(var_2.a.x, 17004u, 1u, var_2.a.x), vec4<u32>(43810u, var_2.a.x, 2579u, 39546u), vec4<bool>(global1[_wgslsmith_index_u32(28646u, 9u)], var_2.b.b, false, var_1.x)) ^ ~vec4<u32>(50903u, u_input.a.x, 5423u, 68053u))), ~((_wgslsmith_add_vec4_u32(vec4<u32>(0u, 15934u, 1u, 0u), vec4<u32>(var_2.a.x, 4294967295u, var_2.a.x, var_2.a.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, u_input.d, var_2.a.x, 0u), vec4<u32>(0u, u_input.e, 2018u, u_input.d)) % vec4<u32>(32u))) >> (vec4<u32>(~var_2.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(77875u, var_2.a.x)), ~var_2.a.x, var_2.a.x) % vec4<u32>(32u))));
    let var_4 = all(select(var_1.zx, var_1.wx, vec2<bool>(var_2.b.b, var_2.b.b || all(var_1))));
    return ~min(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, 0u, u_input.a.x, var_2.a.x), vec4<u32>(0u, u_input.e, var_2.a.x, 4294967295u)), select(reverseBits(vec4<u32>(81057u, 22617u, u_input.d, u_input.d)), vec4<u32>(var_2.a.x, 16184u, u_input.a.x, var_3) ^ vec4<u32>(60097u, u_input.a.x, 61720u, 33362u), var_1)), countOneBits(vec4<u32>(0u, 30961u, _wgslsmith_add_u32(u_input.e, 0u), ~30708u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-213f, 274f))), func_2(vec2<u32>(12682u, u_input.d), 88204u, _wgslsmith_div_f32(-492f, -1254f), Struct_3(u_input.a.yx, Struct_2(637f, global1[_wgslsmith_index_u32(u_input.d, 9u)], Struct_1(u_input.b.x, 1175f, u_input.b.yx), Struct_1(u_input.b.x, -626f, u_input.b.zx)), vec4<f32>(-710f, -1277f, -100f, -910f))), 1i) | (~select(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 10579u), vec4<u32>(u_input.d, u_input.a.x, u_input.e, u_input.d), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])) | vec4<u32>(u_input.a.x, u_input.e, max(u_input.d, 17989u), u_input.a.x)), select(vec4<u32>(u_input.a.x, 1u, 36114u, reverseBits(func_4(-1000f, Struct_1(2147483647i, -1307f, u_input.b.yx), -33284i).x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.d, 1u), vec4<u32>(u_input.e, u_input.d, u_input.d, u_input.d)), firstLeadingBit(vec4<u32>(12904u, 48503u, 13446u, u_input.d)), ~vec4<u32>(u_input.e, 74447u, u_input.d, u_input.a.x)), vec4<u32>(abs(u_input.a.x), u_input.e, _wgslsmith_mult_u32(4294967295u, u_input.d), ~1u), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.d, 1u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, u_input.d), vec4<u32>(20242u, u_input.a.x, u_input.d, 1u)))), true));
    global1 = array<bool, 9>();
    var var_1 = select(~(~var_0) ^ vec4<u32>(firstLeadingBit(u_input.e), var_0.x, ~(~u_input.a.x), func_4(1000f, Struct_1(-9521i, 844f, vec2<i32>(u_input.c, 0i)), select(u_input.b.x, -1i, global1[_wgslsmith_index_u32(var_0.x, 9u)])).x), _wgslsmith_div_vec4_u32(abs(var_0), _wgslsmith_clamp_vec4_u32(var_0, var_0, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x) & vec4<u32>(var_0.x, 1u, 1u, u_input.a.x), ~var_0))), select(vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.d), 9u)], !(!global1[_wgslsmith_index_u32(var_0.x, 9u)]), false, false), vec4<bool>(false, true, -554f <= _wgslsmith_f_op_f32(ceil(-1372f)), !any(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(var_0.x, 9u)], false))), !(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 9u)], false, false, global1[_wgslsmith_index_u32(0u, 9u)]))));
    var_1 = var_0;
    var var_2 = 2260f;
    return func_2(vec2<u32>(reverseBits(~0u), 5795u), ~var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)))), Struct_3(vec2<u32>(4294967295u, 1u), Struct_2(-1000f, _wgslsmith_add_u32(74944u, u_input.a.x) <= var_1.x, func_2(var_1.zw | var_1.yy, firstTrailingBit(18771u), _wgslsmith_f_op_f32(-253f * -602f), Struct_3(var_1.xx, Struct_2(1077f, true, Struct_1(2147483647i, 1409f, u_input.b.xy), Struct_1(u_input.b.x, 368f, u_input.b.xy)), vec4<f32>(602f, -293f, 172f, 546f))), Struct_1(-56628i, _wgslsmith_f_op_f32(-374f + -1113f), _wgslsmith_mod_vec2_i32(vec2<i32>(-18843i, 1i), u_input.b.zy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, -607f, 532f, 840f) - vec4<f32>(1292f, 301f, 962f, 1180f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, 1956f, 1461f, -2354f))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !(!vec3<bool>(global1[_wgslsmith_index_u32(abs(45152u), 9u)], global1[_wgslsmith_index_u32(arg_0.x, 9u)], false));
    global0 = array<Struct_2, 28>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-1141f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f * 1231f) + _wgslsmith_f_op_f32(arg_1.b - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b)))))), !any(vec4<bool>(1583f == arg_1.b, !var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], !global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), func_2(abs(u_input.a.yy & _wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.xx)), ~(arg_0.x >> (arg_0.x % 32u)), _wgslsmith_div_f32(arg_1.b, -571f), Struct_3(vec2<u32>(1u, 1u), Struct_2(_wgslsmith_f_op_f32(floor(arg_1.b)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true)), arg_1, arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, -462f, arg_1.b, -468f), vec4<f32>(-1283f, -369f, 921f, 1996f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, arg_1.b, arg_1.b, -1012f))))), Struct_1(~62286i, _wgslsmith_f_op_f32(-arg_1.b), abs(func_1().c)));
    let var_2 = _wgslsmith_mod_i32(select(-1i, ~(2147483647i | _wgslsmith_mod_i32(1i, var_1.c.a)), true), u_input.c << (arg_0.x % 32u));
    global0 = array<Struct_2, 28>();
    return arg_1;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(869f, arg_1.a) + -868f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.c.b - 1721f), arg_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.d.b + arg_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1458f, arg_1.a, 1112f, arg_1.d.b)), vec4<f32>(-1640f, -373f, -104f, arg_1.d.b)))))));
    global0 = array<Struct_2, 28>();
    var var_1 = 1000f;
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    let var_0 = func_6(u_input.b, Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1369f))), u_input.b.x <= 1i, func_5(vec2<u32>(~u_input.a.x, u_input.a.x << (u_input.e % 32u)), func_1()), func_1()), select(vec3<bool>((u_input.c >= u_input.c) | !global1[_wgslsmith_index_u32(u_input.e, 9u)], u_input.c <= u_input.b.x, !global1[_wgslsmith_index_u32(1u, 9u)]), !vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, true)), true, !global1[_wgslsmith_index_u32(10836u, 9u)]), true));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(9286u, _wgslsmith_clamp_u32(0u, 9482u, u_input.d)), 4294967295u), _wgslsmith_mod_u32(1u, 4294967295u)), vec2<u32>(3575u, u_input.e) ^ ~(abs(vec2<u32>(u_input.a.x, u_input.d)) & (u_input.a.yz ^ u_input.a.yx)));
    var var_2 = !(!select(vec4<bool>(true, !global1[_wgslsmith_index_u32(var_1.x, 9u)], !global1[_wgslsmith_index_u32(0u, 9u)], !global1[_wgslsmith_index_u32(var_1.x, 9u)]), vec4<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)])), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(30023u, 9u)])), true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 9u)]))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(14055u, 9u)], true, global1[_wgslsmith_index_u32(var_1.x, 9u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(53452u, 9u)], false, false), vec4<bool>(true, true, true, true)), !vec4<bool>(global1[_wgslsmith_index_u32(34531u, 9u)], false, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), !global1[_wgslsmith_index_u32(1110u, 9u)])));
    global2 = array<vec3<u32>, 21>();
    global2 = array<vec3<u32>, 21>();
    var_2 = !select(select(!(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(28903u, 9u)], var_2.x)), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, false, false), vec4<bool>(false, var_2.x, var_2.x, true), false), select(true, false, true)), vec4<bool>(select(true, all(vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(19712u, 9u)], var_2.x)), var_0.c.x >= -11697i), global1[_wgslsmith_index_u32(var_1.x, 9u)], !any(vec4<bool>(var_2.x, false, true, var_2.x)), !(var_2.x && global1[_wgslsmith_index_u32(var_1.x, 9u)])), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(17154u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], false, global1[_wgslsmith_index_u32(var_1.x, 9u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 9u)], true, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(50838u, 9u)])), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 9u)], false, global1[_wgslsmith_index_u32(13815u, 9u)], true), select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 9u)], false, true, var_2.x), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 9u)], false, var_2.x, var_2.x)), global1[_wgslsmith_index_u32(~var_1.x, 9u)]), false));
    var var_3 = -(select(-u_input.b.x, -(i32(-1i) * -1i), true) >> (0u % 32u));
    var_2 = !select(!vec4<bool>(true, u_input.a.x > u_input.a.x, global1[_wgslsmith_index_u32(abs(var_1.x), 9u)], var_2.x), select(vec4<bool>(global1[_wgslsmith_index_u32(~u_input.d, 9u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 9u)], !var_2.x, all(var_2.wy), true & global1[_wgslsmith_index_u32(42228u, 9u)]), vec4<bool>(true, any(var_2.zy), !global1[_wgslsmith_index_u32(0u, 9u)], true)), !(!vec4<bool>(global1[_wgslsmith_index_u32(18261u, 9u)], false, false, global1[_wgslsmith_index_u32(u_input.d, 9u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b * 132f))), 552f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1020f, var_0.b, 429f)))))), 1i, firstLeadingBit(~(~vec4<u32>(var_1.x, 35189u, 11282u, u_input.a.x))), var_1);
}

