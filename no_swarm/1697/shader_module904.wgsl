struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u, vec3<i32>(-40534i, 23667i, -1i), 240f, -427f);

var<private> global1: f32;

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_3(0u, vec3<i32>(2147483647i, -42982i, 30322i), -1170f, 526f), Struct_2(vec3<i32>(-1i, 2147483647i, 1882i), false), vec2<i32>(60919i, 62876i)), Struct_4(Struct_3(1u, vec3<i32>(-18003i, -1i, -1929i), 1402f, -472f), Struct_2(vec3<i32>(2147483647i, 0i, -44221i), true), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_4(Struct_3(78870u, vec3<i32>(-1i, -8070i, 2147483647i), 1033f, 701f), Struct_2(vec3<i32>(24914i, 2147483647i, 18730i), true), vec2<i32>(-1i, 2147483647i)), Struct_4(Struct_3(22296u, vec3<i32>(i32(-2147483648), 31247i, -1i), -861f, -1368f), Struct_2(vec3<i32>(-1i, -16767i, -17314i), true), vec2<i32>(1i, 56818i)), Struct_4(Struct_3(4294967295u, vec3<i32>(0i, -1i, -29911i), 1000f, 134f), Struct_2(vec3<i32>(2147483647i, 17914i, -1i), false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(Struct_3(59129u, vec3<i32>(77633i, 0i, -33341i), -129f, 1232f), Struct_2(vec3<i32>(0i, 13098i, -6563i), true), vec2<i32>(1203i, 2147483647i)), Struct_4(Struct_3(4294967295u, vec3<i32>(1i, 45499i, 0i), 947f, 216f), Struct_2(vec3<i32>(1i, 2147483647i, -41529i), false), vec2<i32>(1i, 10729i)), Struct_4(Struct_3(4294967295u, vec3<i32>(2147483647i, -9512i, 0i), -1716f, 745f), Struct_2(vec3<i32>(-1i, -1i, i32(-2147483648)), true), vec2<i32>(12554i, 0i)), Struct_4(Struct_3(1u, vec3<i32>(0i, 1i, 50914i), -733f, -241f), Struct_2(vec3<i32>(-25916i, 2147483647i, 0i), false), vec2<i32>(1i, 12630i)), Struct_4(Struct_3(74464u, vec3<i32>(-1i, -61637i, -1i), -1177f, -404f), Struct_2(vec3<i32>(i32(-2147483648), 46155i, 1i), false), vec2<i32>(0i, -49616i)), Struct_4(Struct_3(0u, vec3<i32>(57402i, 597i, 0i), -1252f, 1268f), Struct_2(vec3<i32>(i32(-2147483648), -1i, 1i), false), vec2<i32>(-7079i, i32(-2147483648))), Struct_4(Struct_3(45925u, vec3<i32>(4378i, 20934i, -22458i), 479f, -667f), Struct_2(vec3<i32>(-1i, -30537i, 0i), false), vec2<i32>(i32(-2147483648), -22832i)), Struct_4(Struct_3(2228u, vec3<i32>(-54662i, -1i, -3813i), -315f, 227f), Struct_2(vec3<i32>(46456i, 22734i, 2147483647i), true), vec2<i32>(i32(-2147483648), 23075i)), Struct_4(Struct_3(0u, vec3<i32>(22596i, 0i, -8220i), -457f, 532f), Struct_2(vec3<i32>(16842i, -30466i, -35299i), false), vec2<i32>(2147483647i, 34971i)), Struct_4(Struct_3(74185u, vec3<i32>(-25010i, 2147483647i, -4938i), -922f, 2566f), Struct_2(vec3<i32>(-1664i, -1i, 1i), true), vec2<i32>(-1i, 31346i)), Struct_4(Struct_3(0u, vec3<i32>(-1i, -19121i, 2147483647i), -869f, 728f), Struct_2(vec3<i32>(-52883i, 0i, -29077i), false), vec2<i32>(5672i, 0i)), Struct_4(Struct_3(46255u, vec3<i32>(1i, 1i, i32(-2147483648)), -423f, 272f), Struct_2(vec3<i32>(-60948i, -1i, -3418i), false), vec2<i32>(-13801i, -1i)), Struct_4(Struct_3(1u, vec3<i32>(0i, -2497i, 0i), 704f, 1019f), Struct_2(vec3<i32>(2147483647i, 16429i, -35921i), false), vec2<i32>(i32(-2147483648), 20586i)), Struct_4(Struct_3(68468u, vec3<i32>(-14642i, -41712i, -35012i), 1106f, 1545f), Struct_2(vec3<i32>(i32(-2147483648), -44645i, 17131i), false), vec2<i32>(1i, -25269i)), Struct_4(Struct_3(4294967295u, vec3<i32>(13603i, -2752i, 1i), -447f, 490f), Struct_2(vec3<i32>(i32(-2147483648), -14169i, 0i), true), vec2<i32>(i32(-2147483648), 1i)), Struct_4(Struct_3(0u, vec3<i32>(2147483647i, 23184i, 2147483647i), -1199f, -1000f), Struct_2(vec3<i32>(-5454i, -1i, -76920i), false), vec2<i32>(i32(-2147483648), -1i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> vec4<i32> {
    return vec4<i32>(_wgslsmith_mod_i32(52365i | min(-7746i, u_input.a.x << (66434u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(16016i, global2.x, -1i, u_input.b), vec4<i32>(-6460i, global0.b.x, -47886i, global0.b.x) >> (vec4<u32>(u_input.c.x, 25565u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), -vec4<i32>(-14118i, 2069i, -20566i, global0.b.x))), u_input.a.x, -abs(5384i), min(global2.x, 1i));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -221f))), _wgslsmith_f_op_f32(floor(global0.c)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d, global0.c, all(vec3<bool>(true, true, true)))) + _wgslsmith_f_op_f32(trunc(arg_0.x)));
    var_0 = true;
    var var_1 = vec4<i32>(~(global0.b.x & -2147483647i), -2147483647i, 2147483647i, max(-_wgslsmith_sub_i32(u_input.b, -72263i), reverseBits(~0i))) ^ reverseBits(_wgslsmith_div_vec4_i32(func_2(), func_2()));
    global2 = max(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d, 649i), vec3<i32>(19978i, 26971i, -2147483647i)), global0.b | firstTrailingBit(vec3<i32>(u_input.a.x, -1i, -42902i))), min(var_1.zxw | vec3<i32>(global2.x, var_1.x, 34559i), vec3<i32>(-28547i, 2147483647i, var_1.x) >> (vec3<u32>(2073u, 1u, 12904u) % vec3<u32>(32u)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global2.x, 1i), select(u_input.a.x, var_1.x, false), _wgslsmith_dot_vec2_i32(global0.b.zx, global2.xx)), var_1.xwx));
    let var_2 = -172f;
    return -17860i;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, global0.d) - vec2<f32>(627f, global0.d)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1206f, 170f) + vec2<f32>(-555f, arg_1.d))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(523f, 518f), vec2<f32>(1483f, -536f))))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec3<i32>(u_input.d, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 2147483647i, global0.b.x), global0.b)), firstLeadingBit(reverseBits(func_1(vec3<f32>(-625f, global0.d, global0.d)))));
    var var_0 = vec4<bool>(true, all(vec3<bool>(!func_3(vec2<u32>(global0.a, global0.a), Struct_3(global0.a, vec3<i32>(u_input.a.x, u_input.b, global2.x), global0.c, -267f), global2.x, u_input.c.x), any(global3[_wgslsmith_index_u32(min(u_input.c.x, u_input.c.x), 21u)]), true)), true, _wgslsmith_div_u32(11836u, 4294967295u) >= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.c.zx, u_input.c.yy), _wgslsmith_div_vec2_u32(u_input.c.xx, vec2<u32>(1u, global0.a))));
    global4 = array<Struct_4, 21>();
    global2 = func_2().yzx;
    var_0 = select(select(select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), all(global3[_wgslsmith_index_u32(u_input.c.x, 21u)])), !select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec4<bool>(all(vec4<bool>(true, true, true, true)), var_0.x, !(!var_0.x), !all(vec3<bool>(var_0.x, false, false))), true), select(!(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true))), select(!vec4<bool>(false, var_0.x, var_0.x, true), select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, true, false, false)), vec4<bool>(true, var_0.x, false, var_0.x), false), !select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, false, var_0.x, false), var_0.x)), var_0.x), select(!vec4<bool>(false, true, true, false || var_0.x), vec4<bool>(!var_0.x, ~global2.x < _wgslsmith_mod_i32(25457i, -28505i), !(!var_0.x), true), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, false, false), var_0.x)));
    global3 = array<vec2<bool>, 21>();
    var var_1 = -select(firstTrailingBit(firstTrailingBit(global2.yy | global2.xx)), global2.zy << (u_input.c.wx % vec2<u32>(32u)), any(vec2<bool>(true, var_0.x != true)));
    var var_2 = _wgslsmith_div_vec2_i32(select(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.a, global0.b.yx), vec2<i32>(var_1.x, u_input.d)), vec2<i32>(i32(-1i) * -2392i, -31186i)), _wgslsmith_clamp_vec2_i32(u_input.a, abs(firstLeadingBit(global0.b.yz)), -_wgslsmith_add_vec2_i32(vec2<i32>(-17896i, global0.b.x), u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1862f + 326f), _wgslsmith_f_op_f32(global0.d * global0.c))) > global0.c), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(reverseBits(u_input.d), reverseBits(var_1.x)), (var_1.x & -15588i) & -var_1.x), _wgslsmith_div_vec2_i32(-u_input.a, -min(global2.xy, global2.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(103f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), -948f)))));
}

