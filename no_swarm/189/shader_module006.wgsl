struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(4294967295u, 48086u, 47048u), vec3<u32>(1u, 31153u, 6118u), vec3<u32>(0u, 8307u, 28722u), vec3<u32>(4294967295u, 65411u, 16021u), vec3<u32>(66812u, 15775u, 1u), vec3<u32>(7981u, 41321u, 0u), vec3<u32>(0u, 0u, 28601u), vec3<u32>(0u, 34230u, 4220u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(110828u, 110344u, 0u), vec3<u32>(1u, 1u, 21108u), vec3<u32>(0u, 42641u, 1u), vec3<u32>(0u, 41215u, 4294967295u), vec3<u32>(40122u, 49530u, 1u), vec3<u32>(58986u, 51965u, 4294967295u), vec3<u32>(4294967295u, 30881u, 1u));

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-154f, 873f), vec2<f32>(-935f, 1662f), vec2<f32>(-1686f, -1000f), vec2<f32>(548f, 798f), vec2<f32>(730f, -568f), vec2<f32>(150f, 1149f), vec2<f32>(-513f, 191f), vec2<f32>(-1822f, -434f), vec2<f32>(-900f, -1173f), vec2<f32>(268f, 1469f), vec2<f32>(-1060f, 1146f), vec2<f32>(-644f, -511f), vec2<f32>(-808f, -1114f), vec2<f32>(833f, 270f), vec2<f32>(451f, 1000f), vec2<f32>(-1974f, -942f), vec2<f32>(-1000f, 664f), vec2<f32>(-1783f, 739f), vec2<f32>(783f, 101f), vec2<f32>(1820f, 577f), vec2<f32>(-974f, 1385f), vec2<f32>(-916f, 840f), vec2<f32>(1726f, 795f), vec2<f32>(-135f, 1131f), vec2<f32>(-1486f, 2220f), vec2<f32>(1463f, 1375f), vec2<f32>(610f, 226f), vec2<f32>(897f, 819f), vec2<f32>(-1239f, 715f), vec2<f32>(1663f, -261f), vec2<f32>(-2540f, -599f));

var<private> global2: vec2<bool>;

var<private> global3: bool;

var<private> global4: vec3<i32> = vec3<i32>(-47303i, 0i, -13243i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global3 = global2.x;
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    let var_0 = arg_1;
    global2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2306f * var_0.a.x))) > arg_1.a.x, arg_0);
    return 10147u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = abs(global4.xx);
    let var_1 = Struct_1(vec3<f32>(-840f, _wgslsmith_div_f32(-696f, arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(362f)) + _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), arg_1.b);
    global4 = arg_0;
    let var_2 = var_1;
    global2 = vec2<bool>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_2.b.x, 4294967295u, 26159u), vec4<u32>(arg_1.b.x, 4294967295u, 0u, 0u)) & func_3(global2.x, Struct_1(var_1.a, var_1.b)), 4539u) <= 70730u, !(!(_wgslsmith_add_u32(var_2.b.x, arg_1.b.x) > _wgslsmith_add_u32(var_1.b.x, arg_1.b.x))));
    return vec4<i32>((var_0.x & -2147483647i) | 2147483647i, countOneBits(u_input.a.x >> (arg_1.b.x % 32u)), countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -26552i, arg_0.x), _wgslsmith_mod_vec3_i32(arg_0, arg_0)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(6786i, ~2147483647i, -31149i), ~(-arg_0)), _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-1i, u_input.a.x, u_input.a.x)), ~arg_0, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-19526i, -57815i, -39482i), arg_0)))));
}

fn func_1() -> f32 {
    var var_0 = abs(abs(~(~vec4<i32>(2147483647i, global4.x, -8385i, global4.x))) | abs((vec4<i32>(u_input.a.x, global4.x, 50686i, 38045i) & vec4<i32>(u_input.a.x, 1i, u_input.a.x, 10987i)) << (vec4<u32>(0u, 17768u, 47503u, 67810u) % vec4<u32>(32u))));
    var_0 = func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, var_0.x), min(-vec3<i32>(-1i, 0i, 50917i), -var_0.zxz)) << (vec3<u32>(10027u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(27825u, 3008u), 1u), abs(_wgslsmith_add_u32(1u, 1u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2329f, 1000f, -1400f)))))), countOneBits(abs(~vec3<u32>(44959u, 55434u, 21635u)))));
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1364f);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_2 * -353f)))), 498f, -351f)));
    return _wgslsmith_div_f32(2660f, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(reverseBits(~4294967295u)), 18336u, abs(~(~28481u))), vec3<u32>(_wgslsmith_dot_vec2_u32(min(min(vec2<u32>(58624u, 1u), vec2<u32>(12983u, 41642u)), abs(vec2<u32>(0u, 15182u))), vec2<u32>(1u, 174014u)), ~(~4294967295u), ~firstLeadingBit(firstTrailingBit(92941u))));
    global0 = array<vec3<u32>, 17>();
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(364f, 405f, 295f), vec3<f32>(1225f, 1423f, 509f))), _wgslsmith_div_vec3_f32(vec3<f32>(180f, -687f, 730f), vec3<f32>(-527f, 388f, 901f)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1125f)))), -563f, _wgslsmith_f_op_f32(max(-610f, _wgslsmith_f_op_f32(round(-180f)))))), ~(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 17u)]) | global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 4294967295u), 17u)]));
    global1 = array<vec2<f32>, 31>();
    global0 = array<vec3<u32>, 17>();
    let var_4 = vec4<bool>(global2.x || global2.x, !(var_3.a.x != 532f), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(-106f, 15336u);
}

