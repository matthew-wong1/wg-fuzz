struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<f32>(-386f, 971f), vec3<i32>(i32(-2147483648), 0i, -30126i), false), Struct_1(vec2<f32>(416f, 1806f), vec3<i32>(16759i, 4560i, 2147483647i), true), Struct_1(vec2<f32>(1108f, -1975f), vec3<i32>(i32(-2147483648), 0i, 0i), false), Struct_1(vec2<f32>(2287f, -341f), vec3<i32>(0i, 35159i, -46370i), false), Struct_1(vec2<f32>(-673f, 1683f), vec3<i32>(-19950i, 7186i, -888i), true), Struct_1(vec2<f32>(-650f, -482f), vec3<i32>(0i, i32(-2147483648), 0i), false), Struct_1(vec2<f32>(-667f, 2304f), vec3<i32>(i32(-2147483648), 5903i, 0i), false), Struct_1(vec2<f32>(-209f, 961f), vec3<i32>(-1i, -40828i, 0i), true), Struct_1(vec2<f32>(679f, -1042f), vec3<i32>(-58209i, -7754i, -4149i), true), Struct_1(vec2<f32>(-630f, 1038f), vec3<i32>(-1i, 0i, i32(-2147483648)), false), Struct_1(vec2<f32>(-2057f, 928f), vec3<i32>(2147483647i, -55101i, -44894i), false), Struct_1(vec2<f32>(-372f, -1616f), vec3<i32>(42830i, -28307i, 4099i), true), Struct_1(vec2<f32>(163f, 521f), vec3<i32>(-54262i, 1i, 40075i), false), Struct_1(vec2<f32>(1123f, 1708f), vec3<i32>(2147483647i, -1i, i32(-2147483648)), true), Struct_1(vec2<f32>(1047f, 1173f), vec3<i32>(-65402i, -1i, -5712i), true), Struct_1(vec2<f32>(1000f, -302f), vec3<i32>(61231i, -1i, -1i), false), Struct_1(vec2<f32>(-1179f, -386f), vec3<i32>(0i, -96299i, 1i), true), Struct_1(vec2<f32>(999f, 1417f), vec3<i32>(2147483647i, 19131i, 0i), true), Struct_1(vec2<f32>(2080f, -346f), vec3<i32>(1i, i32(-2147483648), -52579i), true), Struct_1(vec2<f32>(-991f, -1057f), vec3<i32>(-74123i, 2147483647i, 1i), true), Struct_1(vec2<f32>(-136f, -742f), vec3<i32>(0i, -85033i, 61i), true), Struct_1(vec2<f32>(954f, 1612f), vec3<i32>(1i, -4265i, i32(-2147483648)), false), Struct_1(vec2<f32>(359f, 1421f), vec3<i32>(4885i, -1i, 0i), false), Struct_1(vec2<f32>(-422f, 697f), vec3<i32>(22445i, -11716i, -1i), false), Struct_1(vec2<f32>(-1010f, -839f), vec3<i32>(8973i, 63271i, 1i), false), Struct_1(vec2<f32>(311f, 425f), vec3<i32>(-8131i, -62398i, 48170i), true), Struct_1(vec2<f32>(2008f, 442f), vec3<i32>(-33936i, -1i, -10188i), false), Struct_1(vec2<f32>(1000f, -368f), vec3<i32>(-1i, -27982i, 6914i), true), Struct_1(vec2<f32>(-1165f, -968f), vec3<i32>(2147483647i, 1i, 74964i), true), Struct_1(vec2<f32>(-733f, -1300f), vec3<i32>(0i, -24213i, 1i), false), Struct_1(vec2<f32>(-1978f, -541f), vec3<i32>(-83360i, -1i, 23453i), false), Struct_1(vec2<f32>(520f, -1602f), vec3<i32>(2147483647i, -7354i, 31910i), true));

var<private> global2: vec4<i32> = vec4<i32>(-1609i, 2147483647i, 0i, 0i);

var<private> global3: array<vec4<bool>, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = ~firstTrailingBit(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 96767u), u_input.b.zx)));
    let var_1 = global2.x;
    global0 = !(!select(!vec3<bool>(true, true, global0.x), !select(vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, true), global0.x), global0.x));
    let var_2 = Struct_2(0i, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), 448f), global2.yyx, global0.x), global1[_wgslsmith_index_u32(var_0.x & _wgslsmith_sub_u32(~abs(u_input.b.x), u_input.b.x), 32u)], vec2<u32>(var_0.x << (var_0.x % 32u), u_input.a), _wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(897f, 2097f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-751f))));
    global0 = !select(!vec3<bool>(6976i > global2.x, true, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_2.c.c, global0.x), vec3<bool>(var_2.b.c, var_2.e, false)), !vec3<bool>(false, false, var_2.b.c), !var_2.e), select(select(!vec3<bool>(true, global0.x, true), vec3<bool>(var_2.e, false, false), var_2.b.a.x >= -243f), vec3<bool>(global0.x & global0.x, all(vec3<bool>(global0.x, false, true)), true), !var_2.b.c));
    return var_2.e;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.a;
    let var_1 = vec4<bool>(global0.x, global0.x, !any(global0.xz), arg_0.c || any(vec2<bool>(true, true)));
    var var_2 = select((!(!global0.x) & true) | true, all(global0.zx), all(vec2<bool>(true, true)));
    global0 = !vec3<bool>(true, false & !func_3(), !all(vec3<bool>(true, true, true)));
    let var_3 = arg_0.a.x;
    return select(~firstLeadingBit(u_input.b.x | 71240u), u_input.b.x, true);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> u32 {
    global3 = array<vec4<bool>, 12>();
    global0 = !arg_0;
    global0 = !(!vec3<bool>(all(vec3<bool>(true, true, arg_0.x)), true, func_2(global1[_wgslsmith_index_u32(23659u, 32u)]) >= 1u));
    let var_0 = Struct_2(~firstTrailingBit(min(-5666i, global2.x)) & -_wgslsmith_mult_i32(22289i, global2.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(118f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-482f - -1452f), _wgslsmith_f_op_f32(-1483f + 964f)))), vec3<i32>(-16391i, firstTrailingBit(~global2.x), _wgslsmith_mod_i32(global2.x, 8247i) | global2.x), !arg_0.x), global1[_wgslsmith_index_u32(~(~(~(arg_1.x << (1u % 32u)))), 32u)], select(~arg_1.ww, min(arg_1.yx | u_input.b.wy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1.xz)) << (firstTrailingBit(vec2<u32>(arg_1.x, u_input.a)) % vec2<u32>(32u)), global0.yz), all(global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(0u)) ^ ~22906u, 12u)]));
    var var_1 = 43197u;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false || any(select(global3[_wgslsmith_index_u32(57312u, 12u)], !global3[_wgslsmith_index_u32(4294967295u, 12u)], vec4<bool>(false, global0.x, false, global0.x))), true, max(1u, func_1(!vec3<bool>(true, global0.x, global0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 74477u) ^ u_input.b)) == ~28797u);
    let var_0 = 1u & ~(u_input.b.x << (select(~4294967295u, reverseBits(u_input.a), false) % 32u));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(max(firstTrailingBit(26224u), ~u_input.a), _wgslsmith_add_u32(0u, 4294967295u | var_0), _wgslsmith_add_u32(~u_input.b.x, ~0u)), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    let var_2 = Struct_2(-global2.x, Struct_1(vec2<f32>(-485f, 901f), -vec3<i32>(1i, global2.x, -44923i), true), global1[_wgslsmith_index_u32(var_0, 32u)], abs(vec2<u32>(abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~(var_1.x & u_input.a))), any(!(!vec3<bool>(false, global0.x, global0.x))));
    var var_3 = var_2;
    var var_4 = var_2.b.a.x;
    let var_5 = ~0u;
    let var_6 = var_2;
    var_1 = _wgslsmith_div_vec3_u32(~(~max(u_input.b.yzz, u_input.b.ywx)), vec3<u32>(4294967295u, ~var_0, select(var_1.x, 43730u, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(~28072u)), 20752u), var_2.d.x << ((var_6.d.x & ~var_0) % 32u), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(~u_input.b), u_input.b), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.a, 0u, 0u), vec4<u32>(14264u, u_input.b.x, var_0, var_1.x)), ~var_6.d.x, min(var_6.d.x, var_2.d.x), var_6.d.x) & ~vec4<u32>(var_2.d.x, var_3.d.x, var_2.d.x, u_input.a)));
}

