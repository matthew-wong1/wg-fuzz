struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: array<f32, 17> = array<f32, 17>(384f, -680f, -1000f, 1502f, -223f, 1000f, 806f, -808f, 309f, -224f, -750f, 675f, -377f, -1084f, -1000f, -311f, -106f);

var<private> global2: u32 = 29711u;

var<private> global3: array<vec4<i32>, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(vec4<i32>(-68805i, 1i, 0i, ~(-2147483647i)) & vec4<i32>(~1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(-2147483647i, 25370i, 1i), vec3<i32>(0i, 1530i, -33839i))), -35935i));
    let var_1 = ~u_input.d;
    let var_2 = reverseBits(~(~(~vec3<i32>(6688i, var_0.a.x, 1i))) << (vec3<u32>(var_1.x, firstTrailingBit(~4294967295u), _wgslsmith_div_u32(~var_1.x, ~8464u)) % vec3<u32>(32u)));
    global3 = array<vec4<i32>, 5>();
    let var_3 = true;
    return _wgslsmith_mult_i32(~var_0.a.x, 52468i) ^ var_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 25638u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0, 17u)], -3135f, -379f, 1195f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], -1037f, -513f)) - vec4<f32>(-677f, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.d.x, 17u)])))), vec2<u32>(60798u, 58952u), -2987f);
    global2 = 12633u;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(~var_1.b.x, 17u)], vec4<u32>(firstLeadingBit(20543u), _wgslsmith_div_u32(firstTrailingBit(min(1u, var_1.b.x)), reverseBits(var_1.b.x)), _wgslsmith_div_u32(firstTrailingBit(0u), ~var_1.b.x ^ _wgslsmith_mult_u32(var_1.b.x, 1u)), max(var_1.b.x, 39354u) << (u_input.d.x % 32u)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_sub_i32(-63755i, -1i), -1i, func_3())), ~select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 41233i, -1i) << (u_input.a.www % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), false));
    global1 = array<f32, 17>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -1520f, -828f, -336f)) * var_1.a))), u_input.b, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(min(~u_input.b.x, ~28111u), 17u)])));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    let var_0 = -544f;
    global3 = array<vec4<i32>, 5>();
    let var_1 = vec2<f32>(var_0, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]);
    let var_2 = func_2();
    var var_3 = ~(-max(-arg_0.a.ywx, vec3<i32>(1673i, -41515i, arg_0.a.x)) | ~reverseBits(vec3<i32>(arg_0.a.x, arg_0.a.x, -20976i)));
    return arg_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    global2 = 4294967295u;
    var var_0 = arg_2.c.x == (i32(-1i) * -3229i);
    global2 = ~(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.b.x)))) ^ (max(62300u, 61980u) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, u_input.c, 1u), vec4<u32>(arg_0.x, 54128u, 45863u, arg_0.x)) | firstTrailingBit(arg_0.x)) % 32u)));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.c.xy, arg_2.c.yy), func_1(Struct_3(arg_3.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1532f)))).a.x, arg_3.a.x, func_3()), min(vec4<i32>(_wgslsmith_add_i32(-arg_2.c.x, arg_2.c.x ^ arg_2.c.x), _wgslsmith_dot_vec2_i32(arg_3.a.wx, vec2<i32>(arg_3.a.x, -6633i)) & -arg_2.c.x, arg_3.a.x, ~(-arg_2.c.x)), ~vec4<i32>(_wgslsmith_sub_i32(arg_3.a.x, -21926i), -52937i, arg_2.c.x, i32(-1i) * -31665i)));
    global0 = array<vec2<i32>, 4>();
    return -1015f;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> u32 {
    global1 = array<f32, 17>();
    let var_0 = arg_1.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(593f, _wgslsmith_f_op_f32(arg_0 * global1[_wgslsmith_index_u32(61452u, 17u)])))))), u_input.a, arg_1.a.zyx);
    var var_2 = countOneBits(_wgslsmith_sub_vec3_i32(arg_1.a.yzz, arg_1.a.ywz));
    global1 = array<f32, 17>();
    return 0u | _wgslsmith_mult_u32(var_1.b.x, u_input.c);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], -1046f, global1[_wgslsmith_index_u32(arg_0.x, 17u)], -2078f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(67675u, 17u)], -1440f, -533f, global1[_wgslsmith_index_u32(0u, 17u)]), vec4<f32>(-1568f, global1[_wgslsmith_index_u32(arg_0.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], -472f))) * vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], -1000f, global1[_wgslsmith_index_u32(u_input.c, 17u)])))), u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c, 17u)])))) + global1[_wgslsmith_index_u32(u_input.c, 17u)]), -353f)));
    global3 = array<vec4<i32>, 5>();
    let var_1 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true)));
    var var_2 = var_0.b.x;
    global1 = array<f32, 17>();
    return Struct_1(var_0.a, ~(firstTrailingBit(~u_input.d) | select(vec2<u32>(u_input.c, 0u), var_0.b, select(var_1, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-2286f, _wgslsmith_f_op_f32(sign(-734f)))))) + -1060f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<u32>(1u, func_5(_wgslsmith_f_op_f32(func_4(vec4<u32>(u_input.c, u_input.b.x, 36690u, u_input.b.x), -575f, Struct_2(173f, vec4<u32>(u_input.b.x, u_input.a.x, 23743u, u_input.c), vec3<i32>(18095i, 2147483647i, 17587i)), func_1(Struct_3(global3[_wgslsmith_index_u32(u_input.b.x, 5u)]), -2096f))), Struct_3(global3[_wgslsmith_index_u32(u_input.c, 5u)] & global3[_wgslsmith_index_u32(18042u, 5u)]))), func_1(func_1(Struct_3(global3[_wgslsmith_index_u32(35229u, 5u)] ^ vec4<i32>(2200i, 30310i, 260i, 0i)), _wgslsmith_f_op_f32(-369f - global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b.x), 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f + -1487f))));
    global2 = _wgslsmith_div_u32(~var_0.b.x, u_input.b.x >> (4294967295u % 32u));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-4712i), firstTrailingBit(firstTrailingBit(40144i)), firstTrailingBit(1i), -12640i), global3[_wgslsmith_index_u32(4294967295u, 5u)] & _wgslsmith_clamp_vec4_i32(-global3[_wgslsmith_index_u32(u_input.c, 5u)], abs(vec4<i32>(-8374i, 1i, 30945i, -7498i)), vec4<i32>(-44015i, -16392i, 2147483647i, -2147483647i))), -71112i, max(abs(_wgslsmith_clamp_i32(-1i, 5919i, 1i) >> (~0u % 32u)), _wgslsmith_add_i32(countOneBits(2147483647i), -1i)));
    let var_2 = var_1.x;
    var_1 = vec3<i32>(~(~var_1.x), ~(~var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1704f, _wgslsmith_div_vec3_u32(u_input.a.wwz, vec3<u32>(37311u >> (var_0.b.x % 32u), 21820u, var_0.b.x)), 807f);
}

