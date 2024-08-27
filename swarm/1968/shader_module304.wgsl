struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7599u;

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1454f, -133f), vec2<f32>(1276f, -558f), vec2<f32>(-323f, -1736f), vec2<f32>(619f, 975f), vec2<f32>(-1278f, 445f), vec2<f32>(-114f, 200f), vec2<f32>(158f, 907f), vec2<f32>(-164f, -1000f), vec2<f32>(642f, -1037f), vec2<f32>(2085f, 156f), vec2<f32>(1736f, 1728f), vec2<f32>(487f, -1000f), vec2<f32>(1684f, -349f), vec2<f32>(1018f, -190f), vec2<f32>(-898f, 332f), vec2<f32>(572f, 371f), vec2<f32>(252f, 223f), vec2<f32>(-1318f, 771f), vec2<f32>(424f, -1520f), vec2<f32>(-370f, 1020f), vec2<f32>(-1538f, -250f), vec2<f32>(379f, -466f), vec2<f32>(-1107f, 204f), vec2<f32>(1000f, -1000f));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(true, !(firstTrailingBit(min(u_input.b, u_input.b)) >= u_input.a.x), !(!select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, true), vec2<bool>(true, global2.x)), !vec2<bool>(global2.x, true))));
    var var_1 = var_0;
    global0 = _wgslsmith_sub_u32(4294967295u, countOneBits(~_wgslsmith_div_u32(122831u, ~69934u)));
    let var_2 = vec3<u32>(max(26084u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.a.x, 84038u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), ~u_input.b, ~6966u) << (_wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u) ^ vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.a.x))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, u_input.b))), true), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a.x) & vec3<u32>(0u, 1u, u_input.b), abs(vec3<u32>(0u, u_input.b, u_input.b))))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_dot_vec3_u32(~select(vec3<u32>(61602u, 60781u, 0u), var_2, true), firstLeadingBit(var_2)) | ~(~(~countOneBits(var_2.x)));
    return false;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = 49566i;
    let var_1 = false;
    var var_2 = -1i;
    var_2 = _wgslsmith_div_i32(var_0 ^ var_0, -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(20346i, -57952i, -1i, var_0), vec4<i32>(var_0, var_0, 46158i, 2147483647i)) | vec4<i32>(0i, 1i, -23556i, 1i), select(vec4<i32>(0i, var_0, var_0, var_0) ^ vec4<i32>(var_0, var_0, 0i, -99930i), vec4<i32>(var_0, var_0, 0i, -4238i), all(vec2<bool>(true, arg_1)))));
    var var_3 = vec3<bool>(!(all(select(vec2<bool>(false, arg_2), vec2<bool>(var_1, false), vec2<bool>(global2.x, true))) && !func_3()), arg_1, !all(vec2<bool>(var_1, arg_1)) | (global2.x != false));
    return -17697i;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_5(reverseBits(countOneBits(func_2(_wgslsmith_f_op_f32(round(arg_1)), true, u_input.b != 0u))), _wgslsmith_f_op_f32(select(arg_1, -3294f, !all(select(vec2<bool>(arg_2.b.x, false), arg_2.d.xz, arg_2.b)))), _wgslsmith_f_op_f32(-arg_1));
    let var_1 = vec2<bool>(true, any(select(arg_2.d, vec4<bool>(true & global2.x, false, all(vec4<bool>(true, false, true, global2.x)), all(arg_2.d)), true)));
    var var_2 = firstTrailingBit(~((firstTrailingBit(vec3<u32>(arg_0, u_input.a.x, u_input.b)) ^ ~vec3<u32>(u_input.a.x, 0u, 1u)) & ~(vec3<u32>(1u, 4294967295u, 70005u) & vec3<u32>(28927u, arg_0, arg_0))));
    return Struct_5(arg_2.c.x, _wgslsmith_f_op_f32(abs(-991f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + var_0.c)));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = vec2<bool>((-1001f <= _wgslsmith_f_op_f32(arg_0.c - 336f)) & global2.x, global2.x);
    let var_1 = ((~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.a, -32166i, arg_0.a), vec4<i32>(2147483647i, 6992i, arg_0.a, arg_0.a)) >> (1u % 32u)) >> (u_input.b % 32u)) & 0i;
    let var_2 = any(!(!(!vec3<bool>(true, global2.x, var_0.x))));
    var var_3 = 55576i;
    var var_4 = 1000f;
    return Struct_3(-vec4<i32>(~(i32(-1i) * -12111i), arg_0.a, ~arg_0.a, ~(-2147483647i << (u_input.b % 32u))), _wgslsmith_f_op_f32(1381f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - 1367f)) * _wgslsmith_f_op_f32(f32(-1f) * -1039f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-2106f)))), vec4<f32>(arg_0.c, arg_0.b, _wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(select(2207f, 1096f, global2.x)))), -1989f), Struct_2(Struct_1(1u == u_input.b, false, select(select(vec2<bool>(true, var_0.x), var_0, var_2), !vec2<bool>(true, global2.x), select(var_0, var_0, vec2<bool>(true, var_2)))), !vec2<bool>(any(vec4<bool>(var_0.x, false, false, false)), func_3()), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 23248i), vec4<i32>(29971i, var_1, arg_0.a, var_1)) << (countOneBits(vec4<u32>(u_input.a.x, 23372u, u_input.b, 16885u)) % vec4<u32>(32u))), !select(!vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(false, global2.x, false, var_2), vec4<bool>(true, true, true, var_0.x), global2.x), select(vec4<bool>(false, global2.x, true, true), vec4<bool>(false, global2.x, global2.x, false), var_2))));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = Struct_2(func_4(Struct_5(i32(-1i) * -arg_0.e.c.x, _wgslsmith_f_op_f32(f32(-1f) * -126f), arg_0.b)).e.a, arg_0.e.d.wx, arg_0.e.c, !select(vec4<bool>(all(vec4<bool>(arg_0.e.a.a, global2.x, arg_0.e.b.x, global2.x)), false, select(true, arg_0.e.b.x, true), any(vec3<bool>(true, false, global2.x))), arg_0.e.d, vec4<bool>(arg_0.e.b.x, !arg_0.e.d.x, false, true)));
    var var_1 = arg_0;
    var_1 = Struct_3(var_1.a, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.d, arg_0.e);
    let var_2 = Struct_4(var_0.c.x, -1i, func_4(Struct_5(~_wgslsmith_div_i32(-21886i, var_1.a.x), var_1.c, func_1(4294967295u, -839f, Struct_2(Struct_1(true, false, var_0.a.c), vec2<bool>(false, true), arg_0.a, var_0.d)).c)).e.a, arg_0.e.c.yw, 1i & var_0.c.x);
    global2 = var_1.e.b;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, select(10313u, ~arg_1, true) & _wgslsmith_sub_u32(~50094u, firstTrailingBit(arg_1))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b), arg_1));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> bool {
    global0 = _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(_wgslsmith_add_u32(19572u, arg_0), firstTrailingBit(4294967295u), arg_0), ~vec3<u32>(55202u, arg_0, arg_2), func_4(func_1(arg_2, -1856f, Struct_2(Struct_1(global2.x, global2.x, vec2<bool>(true, false)), vec2<bool>(global2.x, true), vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<bool>(global2.x, false, global2.x, true)))).e.d.wyx)), ~(countOneBits(select(vec3<u32>(5453u, 4294967295u, 4294967295u), vec3<u32>(arg_2, 85218u, arg_2), vec3<bool>(false, global2.x, global2.x))) >> (vec3<u32>(u_input.b, 23219u, countOneBits(76482u)) % vec3<u32>(32u))));
    global2 = !(!vec2<bool>(func_4(Struct_5(-12682i, 1000f, arg_3.x)).e.a.a, true));
    var var_0 = reverseBits(arg_0);
    global1 = array<vec2<f32>, 24>();
    let var_1 = true;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(func_1(u_input.b, 711f, Struct_2(Struct_1(global2.x, global2.x, vec2<bool>(global2.x, global2.x)), vec2<bool>(false, global2.x), vec4<i32>(36900i, -1i, -2147483647i, -1i), vec4<bool>(global2.x, false, global2.x, global2.x)))), 4294967295u), 409f, 79740u, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)]));
    let var_1 = reverseBits(~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 28510u), vec3<u32>(31006u, 0u, u_input.b), vec3<u32>(12883u, 4294967295u, u_input.a.x)), vec3<u32>(u_input.a.x, 0u, 62025u)) << (abs(~min(vec3<u32>(u_input.a.x, 75535u, 63496u), vec3<u32>(4294967295u, 82008u, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(select(1i, _wgslsmith_clamp_i32(59756i >> (var_1.x % 32u), func_2(642f, global2.x, var_0), firstLeadingBit(1894i)), true), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), max(vec3<i32>(-9708i, 2147483647i, -2147483647i), vec3<i32>(-29084i, 2147483647i, 2147483647i) >> (var_1 % vec3<u32>(32u))))), vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(~26089i, 39914i)), abs(max(~30326i, ~1i))));
    let var_3 = var_1.x < var_1.x;
    var var_4 = Struct_2(Struct_1(any(vec4<bool>(global2.x, var_3, false, u_input.b != 10615u)), false, func_4(Struct_5(var_2.x, _wgslsmith_f_op_f32(660f + 461f), _wgslsmith_div_f32(607f, 391f))).e.d.xz), !select(!(!vec2<bool>(true, var_3)), select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(var_0, true), vec2<bool>(var_3, global2.x), false), false), true), select(vec4<i32>(_wgslsmith_div_i32(var_2.x, min(-6694i, var_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.x), ~vec2<i32>(-2147483647i, -2147483647i)), 0i, firstTrailingBit(-25341i << (var_1.x % 32u))), func_4(func_1(_wgslsmith_clamp_u32(u_input.b, 0u, 672u), _wgslsmith_f_op_f32(step(-640f, 1100f)), func_4(Struct_5(2147483647i, 256f, 695f)).e)).e.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) > func_4(Struct_5(var_2.x, 291f, -1380f)).d.x), select(!vec4<bool>(global2.x, true, global2.x, false), select(select(vec4<bool>(false, global2.x, var_3, global2.x), !vec4<bool>(var_3, global2.x, true, global2.x), true), select(func_4(Struct_5(-2147483647i, -542f, -2780f)).e.d, select(vec4<bool>(false, false, global2.x, false), vec4<bool>(false, true, false, true), var_3), vec4<bool>(var_3, false, true, var_3)), vec4<bool>(!var_3, global2.x, any(vec4<bool>(false, var_0, var_0, var_3)), !var_0)), false));
    let var_5 = Struct_2(func_4(func_1(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -762f))), Struct_2(Struct_1(var_0, var_0, var_4.b), func_4(Struct_5(var_2.x, -284f, 933f)).e.b, vec4<i32>(-719i, var_4.c.x, var_4.c.x, var_4.c.x), !var_4.d))).e.a, var_4.a.c, var_4.c, vec4<bool>(any(select(var_4.d, var_4.d, var_4.c.x != var_4.c.x)), var_3, global2.x, global2.x));
    let var_6 = ~59490u;
    var_2 = ~var_5.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_6, ~_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(var_6, var_6, var_6)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, u_input.b, var_1.x), ~vec3<u32>(var_1.x, var_1.x, 1u))), abs(~vec4<u32>(u_input.b, ~u_input.b, reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_1.x, 6069u), vec4<u32>(74060u, var_1.x, u_input.b, 64321u)))), vec4<i32>(var_2.x, func_1(64993u << (1u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -262f), var_5).a ^ var_4.c.x, -(~reverseBits(var_2.x)), 1i ^ ~(var_4.c.x ^ -2147483647i)));
}

