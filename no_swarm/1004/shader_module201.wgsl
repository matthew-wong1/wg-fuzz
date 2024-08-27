struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), vec2<bool>(true, false), vec3<f32>(1434f, 3283f, -1931f), vec4<i32>(-1i, -2860i, -1i, 27096i), vec3<bool>(false, false, false)), 426f), Struct_2(Struct_1(vec2<i32>(-2008i, 3131i), vec2<bool>(false, true), vec3<f32>(-1119f, -1090f, -235f), vec4<i32>(22622i, 15063i, 1i, 2147483647i), vec3<bool>(true, true, true)), 919f), Struct_2(Struct_1(vec2<i32>(52558i, i32(-2147483648)), vec2<bool>(false, false), vec3<f32>(675f, -1038f, 536f), vec4<i32>(2162i, -1i, 1i, -62409i), vec3<bool>(true, true, false)), 255f), Struct_2(Struct_1(vec2<i32>(23468i, -58793i), vec2<bool>(true, true), vec3<f32>(1457f, 1238f, 1010f), vec4<i32>(39161i, -2937i, 0i, -1i), vec3<bool>(true, false, false)), -627f), Struct_2(Struct_1(vec2<i32>(-370i, -16085i), vec2<bool>(true, true), vec3<f32>(-598f, -866f, 240f), vec4<i32>(1i, 1i, 19865i, -55046i), vec3<bool>(true, false, false)), 576f), Struct_2(Struct_1(vec2<i32>(37070i, i32(-2147483648)), vec2<bool>(false, false), vec3<f32>(-886f, -227f, 707f), vec4<i32>(2147483647i, 0i, 2147483647i, -1i), vec3<bool>(false, true, true)), -1732f), Struct_2(Struct_1(vec2<i32>(2147483647i, 38277i), vec2<bool>(true, true), vec3<f32>(429f, 643f, 770f), vec4<i32>(-1i, 20834i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, false, true)), -250f), Struct_2(Struct_1(vec2<i32>(-12783i, 2147483647i), vec2<bool>(true, true), vec3<f32>(-1000f, 692f, 1337f), vec4<i32>(1i, 0i, -23933i, 1i), vec3<bool>(true, false, false)), 1330f), Struct_2(Struct_1(vec2<i32>(42142i, 50023i), vec2<bool>(false, false), vec3<f32>(-796f, -989f, -1188f), vec4<i32>(0i, -37575i, 1i, i32(-2147483648)), vec3<bool>(false, false, true)), 538f), Struct_2(Struct_1(vec2<i32>(1410i, 0i), vec2<bool>(false, false), vec3<f32>(1454f, -1295f, -116f), vec4<i32>(-1i, 0i, 1i, -15760i), vec3<bool>(true, false, false)), -1641f), Struct_2(Struct_1(vec2<i32>(-7547i, 2147483647i), vec2<bool>(true, false), vec3<f32>(-770f, 323f, -336f), vec4<i32>(-39533i, 5148i, 0i, 2147483647i), vec3<bool>(true, false, true)), 1000f), Struct_2(Struct_1(vec2<i32>(-10445i, i32(-2147483648)), vec2<bool>(true, true), vec3<f32>(-599f, -557f, 1327f), vec4<i32>(-1i, 2147483647i, -70259i, 2147483647i), vec3<bool>(true, false, false)), -704f), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<bool>(true, true), vec3<f32>(616f, 263f, -516f), vec4<i32>(i32(-2147483648), 6821i, 2147483647i, 2147483647i), vec3<bool>(false, false, true)), -1235f), Struct_2(Struct_1(vec2<i32>(-6628i, 1i), vec2<bool>(true, true), vec3<f32>(-332f, 598f, 221f), vec4<i32>(-1i, 2147483647i, 1i, 87870i), vec3<bool>(false, false, true)), 505f));

var<private> global1: array<f32, 3>;

var<private> global2: array<Struct_3, 18>;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, true), vec3<f32>(-865f, -395f, 458f), vec4<i32>(-14611i, -1i, -1i, 50322i), vec3<bool>(false, false, true)), 598f), Struct_2(Struct_1(vec2<i32>(8529i, -33058i), vec2<bool>(false, true), vec3<f32>(898f, -478f, 1560f), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), vec3<bool>(true, false, true)), 1000f), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<bool>(true, true), vec3<f32>(188f, 400f, 1764f), vec4<i32>(15328i, 47815i, -46428i, -17646i), vec3<bool>(true, true, true)), -189f), Struct_2(Struct_1(vec2<i32>(-57829i, -43416i), vec2<bool>(false, true), vec3<f32>(168f, 933f, 343f), vec4<i32>(2147483647i, 1i, 30517i, -498i), vec3<bool>(true, true, false)), 693f), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<bool>(false, false), vec3<f32>(-924f, -276f, -963f), vec4<i32>(53563i, 0i, -13610i, 76520i), vec3<bool>(false, false, true)), 280f), Struct_2(Struct_1(vec2<i32>(69358i, -25044i), vec2<bool>(true, true), vec3<f32>(641f, 1029f, 1337f), vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec3<bool>(false, false, true)), 480f), Struct_2(Struct_1(vec2<i32>(5351i, -85385i), vec2<bool>(true, false), vec3<f32>(1460f, -2122f, -736f), vec4<i32>(0i, -21967i, 0i, 1i), vec3<bool>(true, false, true)), 155f), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(true, true), vec3<f32>(-1790f, -1054f, 334f), vec4<i32>(-20637i, 1786i, -5976i, 2147483647i), vec3<bool>(false, true, true)), -811f), Struct_2(Struct_1(vec2<i32>(8351i, -43378i), vec2<bool>(false, false), vec3<f32>(1932f, 876f, -1000f), vec4<i32>(46700i, -40626i, 17819i, -16677i), vec3<bool>(false, false, true)), -1000f), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, true), vec3<f32>(-858f, 732f, 1303f), vec4<i32>(0i, 2147483647i, 12066i, 2147483647i), vec3<bool>(false, true, false)), -269f), Struct_2(Struct_1(vec2<i32>(37932i, 16008i), vec2<bool>(false, true), vec3<f32>(-1062f, -1485f, -887f), vec4<i32>(i32(-2147483648), 3441i, -4922i, -13027i), vec3<bool>(true, false, false)), -724f), Struct_2(Struct_1(vec2<i32>(15981i, 19562i), vec2<bool>(false, true), vec3<f32>(170f, -244f, 181f), vec4<i32>(-1i, -34222i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, true)), -694f), Struct_2(Struct_1(vec2<i32>(-55721i, -54005i), vec2<bool>(false, true), vec3<f32>(121f, 611f, 112f), vec4<i32>(-5546i, 2147483647i, 2147483647i, 25602i), vec3<bool>(true, false, false)), -302f), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec2<bool>(false, false), vec3<f32>(-495f, -888f, -947f), vec4<i32>(i32(-2147483648), -59432i, -26245i, 1i), vec3<bool>(false, false, true)), 301f));

var<private> global4: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<i32>(55613i, -28901i), vec2<bool>(false, false), vec3<f32>(672f, 1132f, 641f), vec4<i32>(-1i, -1i, 1i, -1i), vec3<bool>(false, false, true)), 411f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> u32 {
    global0 = array<Struct_2, 14>();
    let var_0 = ~reverseBits(~vec4<u32>(_wgslsmith_add_u32(1u, 49292u), 4294967295u, 4294967295u, _wgslsmith_div_u32(arg_1, 926u)));
    var var_1 = vec2<u32>(1u, 4825u) << (~_wgslsmith_add_vec2_u32(firstTrailingBit(select(arg_3.xy, vec2<u32>(37641u, var_0.x), global4.a.a.e.zy)), countOneBits(select(u_input.c.zz, vec2<u32>(103240u, 77609u), false))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_sub_vec3_i32(-(_wgslsmith_div_vec3_i32(arg_2.wxy, vec3<i32>(arg_2.x, global4.a.a.a.x, 15148i)) | (vec3<i32>(-1i, arg_2.x, 0i) & u_input.b)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(109208i, u_input.d), _wgslsmith_add_i32(0i, -1i)) >> (11056u % 32u), arg_2.x, ~(-20859i)));
    var var_3 = vec4<bool>(all(vec3<bool>(true, false, any(arg_0))), any(global4.a.a.e) != global4.a.a.e.x, false, global4.a.a.e.x);
    return ~(~(~arg_3.x));
}

fn func_4(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = reverseBits(_wgslsmith_dot_vec2_u32(~u_input.c.zy, ~_wgslsmith_add_vec2_u32(u_input.c.yz, ~vec2<u32>(17473u, 22638u))));
    var var_1 = i32(-1i) * -23138i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2762f))), 1000f);
    let var_3 = select(!select(!vec4<bool>(false, false, global4.a.a.e.x, global4.a.a.e.x), vec4<bool>(global4.a.a.e.x, true, global4.a.a.b.x, global4.a.a.e.x && global4.a.a.b.x), any(!vec2<bool>(global4.a.a.b.x, global4.a.a.e.x))), vec4<bool>(global4.a.a.e.x, !global4.a.a.b.x, true, false), vec4<bool>(!((global4.a.a.d.x << (24485u % 32u)) <= ~u_input.b.x), all(vec2<bool>(global4.a.a.e.x || true, true)), true, true));
    let var_4 = u_input.b.x & u_input.b.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.b - global1[_wgslsmith_index_u32(56542u, 3u)]) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a.b - 837f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -643f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> bool {
    return global1[_wgslsmith_index_u32(22318u, 3u)] < _wgslsmith_f_op_f32(func_4(0u, func_3(!select(vec4<bool>(true, false, global4.a.a.b.x, false), vec4<bool>(global4.a.a.b.x, global4.a.a.b.x, global4.a.a.b.x, global4.a.a.e.x), global4.a.a.b.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, arg_0.x), 0u), _wgslsmith_mod_vec4_i32(global4.a.a.d, vec4<i32>(global4.a.a.a.x, u_input.d, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, u_input.a), vec3<u32>(4294967295u, 1u, 58628u) & vec3<u32>(4294967295u, 4294967295u, arg_1.x)))));
}

fn func_1() -> f32 {
    let var_0 = reverseBits(abs(36100u));
    let var_1 = false;
    var var_2 = all(vec4<bool>(global4.a.a.b.x, any(!(!global4.a.a.e)), !var_1, func_2(~u_input.c, ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u), _wgslsmith_div_u32(0u, var_0 & 57181u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.a.a.c.x + -642f))))));
    let var_3 = select(_wgslsmith_mod_vec4_u32(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, u_input.c.x, 1562u, 33386u), vec4<u32>(6049u, u_input.c.x, u_input.c.x, 49262u)), select(vec4<u32>(13014u, u_input.a, 0u, 90674u), vec4<u32>(4294967295u, u_input.a, var_0, 1u), vec4<bool>(true, global4.a.a.b.x, true, false))), countOneBits(~vec4<u32>(0u, 4294967295u, 4294967295u, var_0)) & min(vec4<u32>(1u, 69181u, var_0, u_input.c.x) << (vec4<u32>(75304u, 0u, 65933u, 29224u) % vec4<u32>(32u)), vec4<u32>(20122u, u_input.c.x, u_input.c.x, 16847u))), abs(~vec4<u32>(var_0 & var_0, _wgslsmith_clamp_u32(4294967295u, 0u, 0u), 1u, 0u & var_0)), vec4<bool>(all(select(vec2<bool>(var_1, var_1), global4.a.a.e.yy, global4.a.a.e.x)), var_1, global4.a.a.e.x, true));
    let var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(~(~u_input.a)), abs(var_0 << ((var_3.x | var_3.x) % 32u)), 1u), u_input.c);
    return global1[_wgslsmith_index_u32(var_0, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(1000f * -378f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global4.a.a.c.x)))));
    global2 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.a.c.x, max(-abs(global4.a.a.d.wx >> (u_input.c.zx % vec2<u32>(32u))), select(global4.a.a.a, vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-1i, -25763i)), !(u_input.a == u_input.c.x))), ~_wgslsmith_sub_i32(min(u_input.d, -1i) & -29065i, u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1762f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a.b)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.b * global1[_wgslsmith_index_u32(1u, 3u)])))));
}

