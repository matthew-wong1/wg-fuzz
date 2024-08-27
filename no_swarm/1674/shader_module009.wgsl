struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(862f, 47671u, vec4<i32>(25583i, 75911i, 0i, 37650i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<f32>(-1000f, 715f, 2278f)), Struct_1(-190f, 1u, vec4<i32>(-9006i, 2147483647i, 0i, -29089i), vec3<i32>(2147483647i, 24493i, 1i), vec3<f32>(1534f, -1000f, -776f)), Struct_1(1000f, 33697u, vec4<i32>(0i, 1i, 42354i, -24929i), vec3<i32>(0i, -42282i, 41131i), vec3<f32>(836f, -1000f, 881f)), Struct_1(192f, 1u, vec4<i32>(i32(-2147483648), 33514i, i32(-2147483648), 24520i), vec3<i32>(13644i, -6517i, 1i), vec3<f32>(-265f, 1000f, 134f)), Struct_1(558f, 4294967295u, vec4<i32>(0i, 0i, 0i, -45625i), vec3<i32>(1i, 1i, -1i), vec3<f32>(-366f, 1493f, -1036f)), Struct_1(-1000f, 4294967295u, vec4<i32>(29518i, 11839i, -65528i, 36832i), vec3<i32>(18647i, 2147483647i, 26345i), vec3<f32>(-469f, 610f, -161f)), Struct_1(220f, 25527u, vec4<i32>(27956i, -12300i, 31694i, 7955i), vec3<i32>(i32(-2147483648), i32(-2147483648), 44354i), vec3<f32>(-863f, -874f, -1000f)), Struct_1(675f, 12215u, vec4<i32>(0i, 2147483647i, 1i, -139i), vec3<i32>(24864i, 1i, -27631i), vec3<f32>(-841f, 446f, -1141f)), Struct_1(132f, 39902u, vec4<i32>(-32268i, 0i, 78270i, -1i), vec3<i32>(-108984i, -6875i, -11247i), vec3<f32>(1002f, 591f, -221f)), Struct_1(-211f, 35913u, vec4<i32>(-67154i, i32(-2147483648), 5087i, i32(-2147483648)), vec3<i32>(0i, -5859i, 37807i), vec3<f32>(-1318f, 377f, 1273f)), Struct_1(-410f, 6809u, vec4<i32>(-1i, i32(-2147483648), 0i, 31030i), vec3<i32>(-16660i, 893i, 1i), vec3<f32>(-1040f, 311f, 466f)), Struct_1(-1206f, 1u, vec4<i32>(1i, -21494i, 0i, -36158i), vec3<i32>(i32(-2147483648), 13988i, 11267i), vec3<f32>(-2517f, 644f, 730f)), Struct_1(424f, 57112u, vec4<i32>(-1i, -1i, 2147483647i, 6112i), vec3<i32>(-18930i, 1i, i32(-2147483648)), vec3<f32>(-315f, 1460f, -495f)), Struct_1(-380f, 0u, vec4<i32>(-25644i, 1i, 17284i, -3958i), vec3<i32>(-29283i, 3990i, 2147483647i), vec3<f32>(-339f, 482f, 142f)), Struct_1(-369f, 30744u, vec4<i32>(-39648i, 14804i, i32(-2147483648), 1i), vec3<i32>(31052i, 1i, 2147483647i), vec3<f32>(137f, -716f, -775f)), Struct_1(624f, 14705u, vec4<i32>(0i, 47718i, -54258i, 6681i), vec3<i32>(-1i, 8971i, 15226i), vec3<f32>(-343f, -1264f, -1437f)), Struct_1(755f, 1u, vec4<i32>(-1i, 37359i, -56296i, 68965i), vec3<i32>(-31996i, -1i, -41728i), vec3<f32>(-801f, 529f, 293f)), Struct_1(406f, 70392u, vec4<i32>(-3702i, 40495i, -43917i, -20355i), vec3<i32>(-15022i, 1917i, 2147483647i), vec3<f32>(179f, 868f, -953f)), Struct_1(-218f, 1u, vec4<i32>(-16568i, -29342i, -19399i, -30242i), vec3<i32>(30482i, 15271i, -4380i), vec3<f32>(1683f, 606f, 581f)), Struct_1(-843f, 4294967295u, vec4<i32>(-38834i, 38527i, 0i, 32041i), vec3<i32>(-11394i, 46057i, 2147483647i), vec3<f32>(-1185f, -1840f, -572f)), Struct_1(1000f, 65528u, vec4<i32>(-31537i, 0i, -37307i, -11485i), vec3<i32>(4705i, i32(-2147483648), -19983i), vec3<f32>(115f, 438f, -1197f)));

var<private> global1: f32;

var<private> global2: i32;

var<private> global3: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = ~(select(_wgslsmith_div_u32(~8933u, 61647u), ~1u, all(select(global3.a, global3.a, false))) << ((20482u & ~global3.b.b) % 32u));
    global3 = Struct_3(select(select(!vec4<bool>(false, false, false, global3.a.x), global3.a, !(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), vec4<bool>(select(true, global3.a.x == arg_0.x, true), all(arg_0), all(select(vec3<bool>(global3.a.x, global3.a.x, false), vec3<bool>(arg_0.x, global3.c, false), arg_0.x)), all(!arg_0)), vec4<bool>(!global3.c, global3.b.c.x >= u_input.a.x, true, any(vec3<bool>(true, arg_0.x, global3.a.x)))), Struct_1(634f, select(global3.b.b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(global3.b.b, var_0), vec2<u32>(var_0, var_0)), ~vec2<u32>(27879u, var_0)), (false || arg_0.x) && any(global3.a)), global3.b.c & ~vec4<i32>(u_input.a.x, global3.b.d.x, global3.b.c.x, -2147483647i), global3.b.d ^ global3.b.d, global3.b.e), u_input.a.x >= ~(-firstTrailingBit(global3.b.c.x)));
    var var_1 = ~max(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(66277u, 0u, 67503u, 25219u), vec4<u32>(4294967295u, var_0, 6431u, global3.b.b)), vec4<u32>(var_0, 11919u, global3.b.b, var_0)), global3.b.b);
    var var_2 = global3.b;
    var var_3 = countOneBits(reverseBits(global3.b.d.x)) & ~(-2147483647i);
    return !select(global3.a, global3.a, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_2(global3.b);
    let var_1 = select(global3.a.zyx, vec3<bool>(var_0.a.e.x > _wgslsmith_f_op_f32(arg_2.x + -783f), ((false || global3.c) || (global3.a.x | global3.c)) & true, !(abs(0u) < (var_0.a.b ^ global3.b.b))), select(global3.a.xxy, !(!(!global3.a.wxw)), global3.c));
    var var_2 = Struct_3(func_3(select(vec2<bool>(false, true), !var_1.xy, false)), global3.b, var_1.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_2.x), _wgslsmith_f_op_f32(floor(1f)));
    var var_4 = !global3.a.zzz;
    return func_3(select(!var_2.a.yy, !select(var_4.yz, vec2<bool>(global3.a.x, var_4.x), var_2.a.yz), all(select(func_3(var_1.yy).wx, var_1.xx, var_0.a.b >= 86124u))));
}

fn func_1() -> i32 {
    global3 = Struct_3(func_2(global3.b.c, -min(vec4<i32>(76450i, global3.b.d.x, -1i, global3.b.c.x) & global3.b.c, -global3.b.c), vec2<f32>(global3.b.e.x, global3.b.e.x)), global0[_wgslsmith_index_u32(60819u, 21u)], true);
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -444f), global3.b.a));
    global1 = _wgslsmith_f_op_f32(step(-575f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.b.e.x, _wgslsmith_f_op_f32(min(-535f, global3.b.a)))), global3.b.a, global3.a.x)), _wgslsmith_f_op_f32(floor(-4034f)))));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-5888i, u_input.a.x, global3.b.d.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), ~_wgslsmith_mult_vec4_i32(global3.b.c, global3.b.c)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 21326i, u_input.a.x), vec4<i32>(u_input.a.x, -45579i, -1862i, u_input.a.x), global3.b.c), global3.b.c), global3.b.c), -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global3.b.c, global3.b.c), vec4<i32>(u_input.a.x, -138i, u_input.a.x, global3.b.d.x))));
    let var_1 = ~countOneBits(~(~vec2<u32>(4294967295u, global3.b.b))) << (firstLeadingBit(vec2<u32>(global3.b.b, _wgslsmith_div_u32(~global3.b.b, 0u))) % vec2<u32>(32u));
    var var_2 = global3.b.b;
    var_2 = ~var_1.x;
    let var_3 = 1i;
    var_0 = select(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_add_i32(var_0.x, func_1()), global3.b.c.x)), global3.b.c, func_2(firstTrailingBit(global3.b.c), ~min(global3.b.c, -vec4<i32>(var_3, var_0.x, global3.b.c.x, -12231i)), _wgslsmith_f_op_vec2_f32(min(global3.b.e.zz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.e.yy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1981f, global3.b.e.x), global3.b.e.zx, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~global3.b.d.x | -2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1191f + global3.b.e.x)))))), -989f);
}

