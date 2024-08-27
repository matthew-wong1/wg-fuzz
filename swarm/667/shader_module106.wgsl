struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<f32>(-436f, 1496f, 319f), 1i, vec4<f32>(1108f, 338f, -377f, 1078f), false), Struct_1(vec3<u32>(4294967295u, 14659u, 1u), vec3<f32>(-395f, -201f, -1000f), i32(-2147483648), vec4<f32>(1959f, -1562f, 1691f, -451f), false), Struct_1(vec3<u32>(0u, 29394u, 4294967295u), vec3<f32>(-1000f, 617f, 1000f), 2147483647i, vec4<f32>(458f, 352f, -577f, -1000f), false), Struct_1(vec3<u32>(1u, 1u, 34101u), vec3<f32>(298f, 1000f, 2115f), 71122i, vec4<f32>(808f, -844f, 1164f, 438f), true), Struct_1(vec3<u32>(36760u, 86217u, 0u), vec3<f32>(1223f, 526f, 723f), 46071i, vec4<f32>(-1089f, -1273f, 1228f, -296f), true), Struct_1(vec3<u32>(78234u, 33527u, 35335u), vec3<f32>(-1621f, 215f, 1100f), -95386i, vec4<f32>(1926f, -796f, -1085f, 888f), true), Struct_1(vec3<u32>(42301u, 80828u, 22799u), vec3<f32>(-523f, 1327f, -1940f), -64532i, vec4<f32>(305f, -1255f, -1000f, -1071f), true), Struct_1(vec3<u32>(19940u, 55958u, 4294967295u), vec3<f32>(918f, -602f, 628f), i32(-2147483648), vec4<f32>(555f, -531f, 520f, -1788f), true), Struct_1(vec3<u32>(15283u, 12481u, 124067u), vec3<f32>(-387f, 1937f, 778f), -9994i, vec4<f32>(-816f, -242f, 1706f, -1510f), false), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(948f, -440f, 736f), 22139i, vec4<f32>(1000f, -679f, 151f, 2370f), false), Struct_1(vec3<u32>(10876u, 0u, 100588u), vec3<f32>(629f, 1813f, 980f), -18894i, vec4<f32>(1000f, 1477f, -1184f, 1466f), false), Struct_1(vec3<u32>(4294967295u, 1u, 20198u), vec3<f32>(601f, -990f, 1000f), 0i, vec4<f32>(145f, -830f, -1105f, 2534f), true), Struct_1(vec3<u32>(1u, 1u, 39105u), vec3<f32>(-425f, -606f, -539f), -1i, vec4<f32>(294f, 571f, -623f, -341f), false), Struct_1(vec3<u32>(39760u, 23997u, 21809u), vec3<f32>(-598f, 779f, 1249f), 0i, vec4<f32>(1000f, -619f, 155f, -1000f), false), Struct_1(vec3<u32>(0u, 25131u, 0u), vec3<f32>(396f, -1221f, -393f), 5177i, vec4<f32>(-261f, 413f, 370f, -675f), true), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(380f, 1681f, 945f), 14158i, vec4<f32>(-950f, 162f, -1941f, 1105f), false), Struct_1(vec3<u32>(94681u, 65712u, 0u), vec3<f32>(-1872f, -1306f, -1568f), i32(-2147483648), vec4<f32>(193f, -130f, 1372f, 1520f), true), Struct_1(vec3<u32>(40429u, 54799u, 4294967295u), vec3<f32>(-993f, 905f, -207f), 5109i, vec4<f32>(-1368f, -294f, 1431f, -2084f), false), Struct_1(vec3<u32>(4294967295u, 82693u, 0u), vec3<f32>(1000f, 1089f, -839f), -15441i, vec4<f32>(-1000f, -345f, -557f, 933f), false), Struct_1(vec3<u32>(34241u, 12504u, 0u), vec3<f32>(1264f, -1238f, -346f), 2147483647i, vec4<f32>(-1000f, -783f, 567f, -626f), false), Struct_1(vec3<u32>(0u, 27930u, 64273u), vec3<f32>(-392f, 361f, 2204f), 37209i, vec4<f32>(-645f, 495f, -811f, -293f), true), Struct_1(vec3<u32>(1u, 28432u, 17012u), vec3<f32>(-282f, 1245f, -1063f), -1i, vec4<f32>(940f, 794f, -1000f, -251f), true), Struct_1(vec3<u32>(1u, 70756u, 32000u), vec3<f32>(1135f, -683f, -912f), -8185i, vec4<f32>(1354f, -1538f, 1551f, 1022f), true), Struct_1(vec3<u32>(37115u, 26313u, 72532u), vec3<f32>(181f, -304f, 1590f), -5013i, vec4<f32>(-1811f, 390f, 386f, 483f), false), Struct_1(vec3<u32>(4294967295u, 85706u, 0u), vec3<f32>(-159f, 1128f, -1423f), 2147483647i, vec4<f32>(389f, 1707f, -222f, 819f), false), Struct_1(vec3<u32>(51194u, 13434u, 11593u), vec3<f32>(400f, 528f, 1000f), -4523i, vec4<f32>(-1000f, 916f, 1462f, -2072f), true), Struct_1(vec3<u32>(54050u, 100209u, 0u), vec3<f32>(-2079f, 650f, -334f), 1i, vec4<f32>(-1061f, 1520f, 1638f, -550f), false), Struct_1(vec3<u32>(1u, 36270u, 23669u), vec3<f32>(-1000f, 115f, -672f), 2147483647i, vec4<f32>(-1860f, -699f, -670f, -495f), true));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(11472u, vec2<f32>(3450f, 314f)), Struct_2(11519u, vec2<f32>(-1010f, -1327f)), Struct_2(4294967295u, vec2<f32>(827f, -178f)), Struct_2(0u, vec2<f32>(-1240f, -1210f)), Struct_2(57084u, vec2<f32>(903f, 1031f)), Struct_2(19890u, vec2<f32>(-511f, -503f)), Struct_2(42365u, vec2<f32>(-449f, -233f)), Struct_2(44334u, vec2<f32>(-1222f, 358f)), Struct_2(1u, vec2<f32>(1700f, -935f)), Struct_2(0u, vec2<f32>(1165f, 1000f)), Struct_2(12907u, vec2<f32>(-792f, -211f)), Struct_2(13186u, vec2<f32>(492f, 285f)), Struct_2(37672u, vec2<f32>(834f, 1189f)), Struct_2(1u, vec2<f32>(543f, -286f)));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return arg_0.a;
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(abs(select(1u, _wgslsmith_mult_u32(func_3(Struct_2(27466u, vec2<f32>(347f, -1255f))), ~1u), all(!(!vec3<bool>(global2.x, global3.x, true))))), 28u)];
    global3 = vec3<bool>(any(select(select(!vec4<bool>(global2.x, false, global2.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_0.e, global2.x), vec4<bool>(global2.x, true, false, var_0.e)), any(vec2<bool>(global3.x, global2.x))), vec4<bool>(false, any(vec3<bool>(var_0.e, true, global2.x)), true, u_input.a.x == var_0.c), false)), var_0.d.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1558f)) * _wgslsmith_f_op_f32(-331f - var_0.d.x)) + var_0.b.x), var_0.b.x == -2186f);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_2 = ~(-u_input.a);
    let var_3 = max(~(~(~vec2<u32>(41450u, 1u))) & min(var_0.a.zy, _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 45716u), vec2<u32>(var_0.a.x, var_1.a.x) << (var_1.a.yy % vec2<u32>(32u)))), var_0.a.xy ^ select(abs(_wgslsmith_div_vec2_u32(var_0.a.yx, vec2<u32>(0u, 0u))), reverseBits(firstLeadingBit(var_1.a.xy)), true));
    return !(!(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(abs(-1066f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)))));
}

fn func_1() -> f32 {
    global3 = !select(vec3<bool>(true | !global2.x, func_2(), !global3.x), !(!vec3<bool>(global3.x, false, true)), true);
    var var_0 = u_input.a.x;
    global2 = !global3.xy;
    global0 = array<Struct_1, 28>();
    global1 = array<Struct_2, 14>();
    return -1717f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-140f, 1404f), vec2<f32>(388f, -1876f))))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(-1010f, -256f)), true)), 1f), vec2<bool>(all(select(vec4<bool>(global3.x, global2.x, global2.x, global3.x), vec4<bool>(global3.x, true, false, true), false)), true || (global3.x && false)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1445f, 589f), vec2<f32>(1000f, 359f), false)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, -574f))), global3.x))));
    global1 = array<Struct_2, 14>();
    global0 = array<Struct_1, 28>();
    var var_1 = !any(vec2<bool>(true, true));
    var var_2 = vec4<u32>(~firstTrailingBit(abs(abs(7169u))), ~1u ^ select(1u, 1u, all(select(global3.xy, global3.yx, global2.x))), 1u, 1u);
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(10525u, ~var_2.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.x, 50499u), var_2.x)), ~var_2.yzx, firstTrailingBit(abs(~var_2.xxx))) >> (select(~(var_2.xyy >> (var_2.yyy % vec3<u32>(32u))), ~reverseBits(abs(vec3<u32>(0u, 4294967295u, 35047u))), !select(!vec3<bool>(true, global3.x, global2.x), vec3<bool>(true, global3.x, global2.x), vec3<bool>(true, global2.x, true))) % vec3<u32>(32u));
    let var_4 = vec3<bool>(!global3.x, ((any(global3.zx) || global2.x) || true) | global2.x, -329f < _wgslsmith_f_op_f32(var_0.x - 259f));
    var var_5 = Struct_2(select(0u, func_3(Struct_2(44550u, vec2<f32>(var_0.x, var_0.x))), var_4.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -658f), vec2<f32>(var_0.x, -147f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-616f, var_0.x)), any(vec4<bool>(false, global2.x, global2.x, false)))), global3.xz)), vec2<f32>(var_0.x, var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2219f, _wgslsmith_div_f32(var_0.x, -631f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(17394i, ~u_input.a.x, min(-2147483647i, -1i))) << (vec4<u32>(max(~4294967295u, 0u), var_3.x, ~max(var_5.a, 33157u), _wgslsmith_add_u32(~var_5.a, 22831u)) % vec4<u32>(32u)), abs(_wgslsmith_mod_vec3_u32(var_2.yxw, ~(vec3<u32>(var_3.x, 64605u, 45184u) & vec3<u32>(53455u, var_5.a, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, 1035f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_5.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, -196f))))))), var_2.x);
}

