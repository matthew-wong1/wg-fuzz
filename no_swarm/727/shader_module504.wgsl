struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<i32>(6636i, 0i, 0i), vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 49974i, -23935i), Struct_1(vec2<f32>(108f, -248f), vec3<bool>(false, false, false))), Struct_2(vec3<i32>(2147483647i, 0i, -40473i), vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, -36406i, 11383i), Struct_1(vec2<f32>(631f, 705f), vec3<bool>(false, true, false))), Struct_2(vec3<i32>(2147483647i, 5143i, 0i), vec4<bool>(true, true, true, false), vec3<i32>(60804i, -13250i, -1i), Struct_1(vec2<f32>(1000f, -861f), vec3<bool>(false, false, true))), Struct_2(vec3<i32>(2147483647i, 15703i, 1i), vec4<bool>(true, true, false, false), vec3<i32>(1i, -48718i, 5299i), Struct_1(vec2<f32>(-740f, -117f), vec3<bool>(false, true, true))), Struct_2(vec3<i32>(7334i, i32(-2147483648), 5795i), vec4<bool>(false, true, true, false), vec3<i32>(0i, 64i, 19201i), Struct_1(vec2<f32>(926f, 930f), vec3<bool>(false, true, true))), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, false, true), vec3<i32>(-2096i, -21924i, -39137i), Struct_1(vec2<f32>(-110f, 834f), vec3<bool>(false, false, true))), Struct_2(vec3<i32>(11627i, -39546i, -1i), vec4<bool>(true, false, true, true), vec3<i32>(-32824i, -1i, 0i), Struct_1(vec2<f32>(-867f, 1302f), vec3<bool>(true, false, true))), Struct_2(vec3<i32>(0i, i32(-2147483648), 1i), vec4<bool>(false, false, true, false), vec3<i32>(-1i, -7914i, 47237i), Struct_1(vec2<f32>(654f, -2503f), vec3<bool>(true, true, false))), Struct_2(vec3<i32>(0i, -22866i, 20478i), vec4<bool>(true, false, false, false), vec3<i32>(2147483647i, 2147483647i, -1i), Struct_1(vec2<f32>(-386f, 426f), vec3<bool>(true, true, true))), Struct_2(vec3<i32>(-86820i, 55331i, 1i), vec4<bool>(true, true, true, false), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(-466f, -477f), vec3<bool>(true, false, false))), Struct_2(vec3<i32>(0i, -1i, 38723i), vec4<bool>(true, true, true, false), vec3<i32>(-1i, 35679i, 0i), Struct_1(vec2<f32>(-1000f, 511f), vec3<bool>(true, false, false))), Struct_2(vec3<i32>(2147483647i, -2750i, 12657i), vec4<bool>(true, false, true, true), vec3<i32>(79051i, 1i, i32(-2147483648)), Struct_1(vec2<f32>(1310f, 1381f), vec3<bool>(true, true, false))), Struct_2(vec3<i32>(-24911i, 15575i, 2098i), vec4<bool>(true, true, false, false), vec3<i32>(1i, 15970i, 33154i), Struct_1(vec2<f32>(130f, 669f), vec3<bool>(false, false, true))));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

var<private> global3: array<f32, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<f32> {
    var var_0 = min(-_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, -1i, u_input.a.x, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 15880i, 2147483647i, u_input.a.x), vec4<i32>(-62939i, u_input.a.x, -33035i, u_input.a.x)) | vec4<i32>(-2147483647i, u_input.a.x, -36071i, u_input.a.x)), vec4<i32>(~max(firstTrailingBit(-1i), -u_input.a.x), 1i, -2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 42151i), 2147483647i)));
    global2 = _wgslsmith_add_vec3_u32(u_input.b, ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global0.x, global2.x), u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 26017u), ~vec3<u32>(1u, global0.x, global0.x), vec3<u32>(22824u, u_input.b.x, 1u) >> (global0.xyx % vec3<u32>(32u)))));
    let var_1 = vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(var_0.x << (u_input.b.x % 32u), var_0.x));
    var var_2 = _wgslsmith_div_i32(u_input.a.x, -1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(202f, -169f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1500f, global3[_wgslsmith_index_u32(global0.x, 32u)]) - vec2<f32>(global3[_wgslsmith_index_u32(32996u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)])), vec2<f32>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(30210u, 32u)]))))), !select(vec3<bool>(all(vec4<bool>(true, true, true, false)), false, false), vec3<bool>(1000f < global3[_wgslsmith_index_u32(19620u, 32u)], true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), false)));
    return var_3.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(global0.x, global0.x)), _wgslsmith_add_vec2_u32(~(~(vec2<u32>(1824u, 14465u) | vec2<u32>(global0.x, global0.x))), u_input.b.xz));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.x, 18291u, 9773u), vec4<u32>(1u, u_input.b.x, arg_1.x, 33731u)), 32u)], 1093f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-665f, 118f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-802f, global3[_wgslsmith_index_u32(global2.x, 32u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-524f, global3[_wgslsmith_index_u32(arg_1.x, 32u)]))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(-902f)))), vec3<bool>(true, true, true));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), vec3<bool>(any(select(select(vec4<bool>(false, var_2.b.x, var_2.b.x, true), vec4<bool>(false, true, false, false), vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), false), select(vec4<bool>(var_2.b.x, var_2.b.x, false, true), vec4<bool>(var_2.b.x, true, false, true), vec4<bool>(false, var_2.b.x, var_2.b.x, true)))), false, !any(select(vec4<bool>(false, var_2.b.x, false, var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(true, true, false, true)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global0 = _wgslsmith_div_vec4_u32(abs(vec4<u32>(49074u, _wgslsmith_div_u32(abs(global2.x), abs(global2.x)), 1u, ~_wgslsmith_sub_u32(52082u, 24485u))), vec4<u32>(1u << (global2.x % 32u), select(66343u, min(~1u, 4294967295u), !any(arg_1.d.b)), reverseBits(~(~1u)), u_input.b.x));
    var var_0 = Struct_2(firstTrailingBit(vec3<i32>(u_input.a.x, ~1i, 15383i)), !(!vec4<bool>(all(arg_1.d.b.xz), true && arg_2.b.x, true, true)), ~(arg_1.c ^ vec3<i32>(countOneBits(11455i), ~1i, u_input.a.x)), arg_1.d);
    return (4294967295u ^ reverseBits(~countOneBits(u_input.b.x))) ^ 71271u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<bool>(true, !(!all(vec4<bool>(true, false, arg_3.b.x, arg_3.b.x))), ~_wgslsmith_mult_u32(~global2.x, ~global2.x) <= _wgslsmith_mult_u32(countOneBits(max(80835u, global2.x)), 21268u), arg_1.b.x);
    global0 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, firstTrailingBit(1u)), func_4(arg_0.a.xy, Struct_2(vec3<i32>(arg_2.c.x, arg_0.c.x, arg_0.a.x), vec4<bool>(arg_1.b.x, false, arg_2.b.x, arg_3.b.x), arg_0.c & u_input.a, func_2(arg_2.c, vec2<u32>(global0.x, u_input.b.x))), func_2(min(vec3<i32>(-2147483647i, -2147483647i, -1i), u_input.a), _wgslsmith_mult_vec2_u32(u_input.b.xy, u_input.b.xy))) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 84515u >> (0u % 32u)), u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(global0.zzw, _wgslsmith_sub_vec3_u32(~global0.wyx, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, global0.x, 4294967295u), vec3<u32>(8480u, u_input.b.x, global0.x), global0.yww))) << (max(global2.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u) ^ global0.x) % 32u), ~(~(18941u << (_wgslsmith_clamp_u32(1u, 1u, u_input.b.x) % 32u))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.d.a.x))));
    global0 = vec4<u32>(1u, ~(~firstLeadingBit(4294967295u)), 4294967295u, ~_wgslsmith_mult_u32(global0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 33822u), vec4<u32>(global2.x, 1u, u_input.b.x, 79189u)), global0.x)));
    var var_2 = 32671u;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(countOneBits(global0.x), func_1(global1[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec2<f32>(1846f, 2042f), vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(global0.x, 13u)], Struct_1(vec2<f32>(-179f, global3[_wgslsmith_index_u32(global0.x, 32u)]), vec3<bool>(true, false, false))), true) ^ 60197u) | 4294967295u;
    var var_1 = global0.zxy;
    var var_2 = ~_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(u_input.a.x), u_input.a.x ^ u_input.a.x, select(1i, u_input.a.x, true), u_input.a.x), -vec4<i32>(-22696i, -33184i, u_input.a.x, u_input.a.x)) | vec4<i32>(u_input.a.x, -32238i, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-25798i, 1i | u_input.a.x, u_input.a.x), 0i), u_input.a.x);
    global1 = array<Struct_2, 13>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~45952u, 32u)], _wgslsmith_f_op_f32(sign(-1811f))) * _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.b.x, 32u)])))), -1000f);
    var var_4 = _wgslsmith_dot_vec2_i32(~(~var_2.wx), ~(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -55440i), u_input.a.xy)) >> (~vec2<u32>(var_1.x, 1u) % vec2<u32>(32u))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 32u)]) - 376f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f * -842f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(327f, 1056f) - _wgslsmith_f_op_f32(f32(-1f) * -743f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(global2.x, 32u)])))))), !select(select(func_2(u_input.a, vec2<u32>(global2.x, var_1.x)).b, vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), true, true), -184f == global3[_wgslsmith_index_u32(~u_input.b.x, 32u)]));
    var var_6 = _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.x, 88462u, 3635u, 0u)), select(vec4<u32>(24291u, 4294967295u, u_input.b.x, 91643u), vec4<u32>(u_input.b.x, global0.x, 1u, 36271u), var_5.b.x)), countOneBits(global2.x)), 32u)], global3[_wgslsmith_index_u32(~func_1(Struct_2(vec3<i32>(var_2.x, var_2.x, var_2.x) ^ vec3<i32>(40401i, 2147483647i, u_input.a.x), !vec4<bool>(var_5.b.x, var_5.b.x, var_5.b.x, var_5.b.x), select(var_2.wwy, vec3<i32>(var_2.x, var_2.x, -2147483647i), true), Struct_1(var_5.a, vec3<bool>(false, var_5.b.x, var_5.b.x))), func_2(~var_2.yww, vec2<u32>(u_input.b.x, 0u)), global1[_wgslsmith_index_u32(1u, 13u)], func_2(var_2.yzw, var_1.xx)), 32u)], !((firstLeadingBit(u_input.a.x) != -1i) != all(select(vec3<bool>(false, true, var_5.b.x), var_5.b, var_5.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 56395i), 0u, ~(-var_2.yw), var_5.a.x, ~4294967295u);
}

