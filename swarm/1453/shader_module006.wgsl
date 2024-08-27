struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(69047u, 1445u, 48833u, 101721u), vec4<u32>(50841u, 7055u, 4294967295u, 21441u), vec4<u32>(49344u, 27645u, 1u, 36678u), vec4<u32>(102073u, 4294967295u, 25156u, 0u), vec4<u32>(14967u, 19305u, 18536u, 68909u), vec4<u32>(0u, 19570u, 26072u, 77728u), vec4<u32>(38726u, 1u, 0u, 67900u));

var<private> global1: array<vec3<u32>, 27>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<i32>(-17170i, 5309i, i32(-2147483648), 1i), 70463u, 2147483647i, vec4<i32>(4565i, -10881i, 7362i, 0i), vec3<f32>(-572f, 872f, -1841f)), Struct_1(vec4<i32>(-14598i, -1i, 2147483647i, 46296i), 14426u, 5469i, vec4<i32>(39768i, -34308i, 0i, 2147483647i), vec3<f32>(-593f, -779f, -1055f)), Struct_1(vec4<i32>(0i, -45825i, -2498i, -19534i), 1u, -1938i, vec4<i32>(-1i, -26970i, -2648i, -7699i), vec3<f32>(-666f, 524f, 740f)), Struct_1(vec4<i32>(1i, 72322i, 2809i, 8467i), 47598u, 2147483647i, vec4<i32>(-1281i, -28903i, -28392i, 40089i), vec3<f32>(974f, 242f, 1519f)), Struct_1(vec4<i32>(25122i, -1i, i32(-2147483648), -7407i), 0u, 0i, vec4<i32>(i32(-2147483648), 62725i, 0i, -1i), vec3<f32>(1563f, -1151f, -976f)), Struct_1(vec4<i32>(0i, -1350i, -31601i, i32(-2147483648)), 4294967295u, -7568i, vec4<i32>(52614i, -67506i, 4019i, -18928i), vec3<f32>(-679f, 236f, -1564f)), Struct_1(vec4<i32>(1i, 1i, 6778i, -45446i), 0u, i32(-2147483648), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), vec3<f32>(-1702f, 1655f, -352f)), Struct_1(vec4<i32>(11587i, 2147483647i, 53192i, 8407i), 78185u, 0i, vec4<i32>(-38449i, i32(-2147483648), -10776i, 2147483647i), vec3<f32>(1553f, 572f, 1188f)), Struct_1(vec4<i32>(0i, -1i, -1i, 0i), 1685u, 1i, vec4<i32>(-1401i, 2194i, -21475i, 1i), vec3<f32>(812f, -619f, -117f)), Struct_1(vec4<i32>(70467i, 1i, 1i, 1i), 17894u, -17787i, vec4<i32>(1i, -38838i, -8143i, 2147483647i), vec3<f32>(-710f, -1343f, 279f)), Struct_1(vec4<i32>(-1i, -27962i, 1i, -23832i), 33395u, 9274i, vec4<i32>(0i, 11649i, 0i, 4032i), vec3<f32>(-156f, 487f, -1061f)), Struct_1(vec4<i32>(-1i, 10055i, -1i, -41319i), 4294967295u, -22884i, vec4<i32>(1i, 39323i, 0i, i32(-2147483648)), vec3<f32>(800f, -537f, 145f)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, -14579i), 1u, 2147483647i, vec4<i32>(-1i, 2147483647i, -1i, -10811i), vec3<f32>(705f, 249f, -1070f)), Struct_1(vec4<i32>(9899i, 1i, 2147483647i, -2265i), 31573u, -1i, vec4<i32>(-1i, 1i, -18773i, -3214i), vec3<f32>(-177f, 993f, -725f)), Struct_1(vec4<i32>(-1i, 36134i, i32(-2147483648), -1291i), 4294967295u, 0i, vec4<i32>(2147483647i, -19325i, 18643i, -1i), vec3<f32>(-1000f, 253f, 1603f)), Struct_1(vec4<i32>(-64308i, 21283i, 2870i, -45031i), 13560u, 63028i, vec4<i32>(-11686i, 61153i, 1i, 2147483647i), vec3<f32>(162f, -757f, 712f)), Struct_1(vec4<i32>(-18557i, 1i, 0i, -47841i), 4294967295u, -9406i, vec4<i32>(-3307i, 0i, 2349i, 44195i), vec3<f32>(-1868f, -1426f, -938f)), Struct_1(vec4<i32>(0i, i32(-2147483648), -4188i, 0i), 31261u, 1i, vec4<i32>(2147483647i, 2536i, 2147483647i, i32(-2147483648)), vec3<f32>(-1933f, -453f, 1222f)), Struct_1(vec4<i32>(-36351i, i32(-2147483648), -16674i, -1i), 69545u, 15821i, vec4<i32>(-5212i, i32(-2147483648), 11097i, -1i), vec3<f32>(-153f, 483f, 1700f)), Struct_1(vec4<i32>(-4276i, 1i, 1i, 2147483647i), 3795u, 2147483647i, vec4<i32>(-25350i, 0i, 7934i, 33492i), vec3<f32>(1705f, -119f, 279f)), Struct_1(vec4<i32>(23967i, 16354i, i32(-2147483648), -1i), 1u, 1i, vec4<i32>(11639i, 17826i, 1i, 1i), vec3<f32>(-142f, 589f, 788f)), Struct_1(vec4<i32>(12003i, 23789i, 13620i, 0i), 79094u, -11600i, vec4<i32>(11016i, 1302i, -1i, 16131i), vec3<f32>(994f, -941f, 1557f)), Struct_1(vec4<i32>(-33366i, 2147483647i, 2147483647i, 2147483647i), 1u, -39230i, vec4<i32>(2649i, -1i, 1i, 0i), vec3<f32>(425f, 1674f, -296f)), Struct_1(vec4<i32>(10842i, -1i, 2147483647i, i32(-2147483648)), 19867u, 7841i, vec4<i32>(i32(-2147483648), 2147483647i, -34874i, 5613i), vec3<f32>(-1159f, 257f, -151f)), Struct_1(vec4<i32>(1i, 40867i, 2132i, i32(-2147483648)), 1u, -1i, vec4<i32>(-27604i, -1i, i32(-2147483648), -14619i), vec3<f32>(-1303f, 442f, 434f)), Struct_1(vec4<i32>(-25201i, 14982i, 0i, 16236i), 7061u, -1i, vec4<i32>(15408i, -36452i, 1i, 2147483647i), vec3<f32>(164f, 1279f, -1750f)), Struct_1(vec4<i32>(-2915i, 0i, 35807i, -1i), 56229u, i32(-2147483648), vec4<i32>(-17573i, -59280i, -1i, -1i), vec3<f32>(-1246f, -505f, 1345f)), Struct_1(vec4<i32>(-12878i, -22551i, 273i, 15451i), 29375u, 1i, vec4<i32>(-43253i, -38560i, -1i, i32(-2147483648)), vec3<f32>(1193f, -381f, 716f)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 12977i, -14924i), 4294967295u, 30003i, vec4<i32>(1i, 0i, 32386i, -1i), vec3<f32>(-634f, 1729f, -2688f)));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-10316i, 0i, 5404i, -27099i), 4294967295u, -20797i, vec4<i32>(i32(-2147483648), 0i, 2147483647i, 2147483647i), vec3<f32>(-331f, 343f, 786f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<vec4<u32>, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.e.yy) + vec2<f32>(_wgslsmith_f_op_f32(global3.e.x * global3.e.x), 1166f)));
    var var_1 = 1u << (~(global3.b << (4294967295u % 32u)) % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, 252f));
    global3 = Struct_1(vec4<i32>(u_input.a.x, -15399i, 1i | abs(global3.d.x), 42599i), firstTrailingBit(firstTrailingBit(87422u)), -19688i, -global3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.x, _wgslsmith_f_op_f32(-1000f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(266f, 1685f, global3.e.x), vec3<f32>(var_0.x, var_0.x, 157f), vec3<bool>(false, false, true)))) * global3.e));
    return global3.b;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(arg_1.a, Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global3.c, -2147483647i, u_input.a.x, 1426i), vec4<i32>(-40991i, 2147483647i, 2147483647i, 67250i)), global3.d), arg_1.a.a, arg_3.a.x, global3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.e.x, -214f, arg_1.c), vec3<f32>(arg_3.e.x, arg_1.c, -349f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.e) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.d.x, arg_1.b.e.x, 1000f)))))), -187f, vec3<f32>(arg_3.e.x, _wgslsmith_f_op_f32(arg_3.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(-500f - global3.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -147f))))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(328f, -296f, !select(!arg_0.x, any(arg_0), select(arg_0.x, true, arg_0.x))))));
    let var_2 = Struct_1(var_0.b.a, 4294967295u, countOneBits(_wgslsmith_dot_vec3_i32(select(global3.a.zwy, arg_1.b.a.yyw, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<i32>(_wgslsmith_sub_i32(var_0.b.d.x, arg_1.b.c), -2147483647i, reverseBits(arg_1.b.d.x)))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.x, u_input.a.x, 0i, arg_1.b.d.x) << (global0[_wgslsmith_index_u32(min(0u, arg_1.b.b), 7u)] % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(max(arg_1.b.d, arg_1.b.a), -var_0.b.a)) ^ max(firstLeadingBit(-vec4<i32>(arg_1.b.d.x, arg_3.d.x, global3.d.x, 2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, arg_2.x, u_input.a.x, var_0.b.a.x), global3.a), var_0.b.d.x | arg_3.a.x, _wgslsmith_mult_i32(arg_2.x, -2399i), firstTrailingBit(1i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-157f - -1052f)), var_0.c, arg_1.b.e.x));
    global0 = array<vec4<u32>, 7>();
    var var_3 = abs(min(global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.c.x, var_2.b & 1u), arg_1.a.a), 7u)], u_input.b));
    return vec3<bool>(false, all(select(vec2<bool>(arg_3.e.x >= -398f, true), arg_0, !arg_0)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), vec3<bool>(true, arg_0.x, false)), true), arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(func_2(_wgslsmith_clamp_u32(19141u, 0u, (arg_2.b & 84812u) << (global3.b % 32u))), _wgslsmith_sub_u32(u_input.c.x, 26515u));
    return vec2<bool>(1u > var_0, all(func_3(vec2<bool>(true, true), Struct_3(Struct_2(65909u), arg_2, _wgslsmith_f_op_f32(round(-593f)), arg_1.e), global3.a.wy, Struct_1(-global3.a, _wgslsmith_add_u32(global3.b, var_0), abs(u_input.a.x), _wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(-43892i, -2412i, arg_2.c, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, -928f, -742f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    global0 = array<vec4<u32>, 7>();
    var var_0 = select(vec3<bool>(select(false, true, !(global3.b > 74095u)), select(true, false, false), true), !(!vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true)), vec3<bool>(any(select(func_1(global3.e.x, Struct_1(vec4<i32>(21302i, -5452i, -52870i, 32341i), 0u, 12840i, vec4<i32>(1i, -11536i, u_input.a.x, u_input.a.x), global3.e), global2[_wgslsmith_index_u32(66397u, 29u)], vec3<f32>(global3.e.x, global3.e.x, global3.e.x)), vec2<bool>(false, true), any(vec3<bool>(true, false, false)))), true, all(vec4<bool>(true, true, true, true)) | true));
    var var_1 = Struct_2(30318u);
    var var_2 = !select(select(vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), false == var_0.x, !var_0.x, true), select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), !var_0.x), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), !vec4<bool>(func_1(global3.e.x, Struct_1(vec4<i32>(2147483647i, -32460i, 2147483647i, u_input.a.x), 1u, -1i, global3.a, vec3<f32>(-138f, global3.e.x, global3.e.x)), global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global3.e).x, var_0.x == var_0.x, !var_0.x, false), vec4<bool>(true, select(1i != global3.c, true, false && var_0.x), any(!vec3<bool>(false, false, var_0.x)), ~40581u <= (global3.b | global3.b)));
    let var_3 = -1i;
    var var_4 = abs(u_input.b);
    var var_5 = _wgslsmith_mult_u32(global3.b, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x));
    var_1 = Struct_2(~func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_1.a), select(vec2<u32>(var_4.x, 31429u), vec2<u32>(global3.b, 65660u), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xww, 983f, u_input.b);
}

