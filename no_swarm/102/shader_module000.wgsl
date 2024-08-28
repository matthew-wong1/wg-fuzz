struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 38816u, 27313u, 533u, 38085u);

var<private> global2: array<f32, 8>;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<u32>(29782u, 4294967295u), true, 172i, vec4<i32>(1i, 21263i, 23691i, 1i), vec2<f32>(502f, -1948f)), -1012f, vec4<u32>(1u, 37822u, 1u, 4294967295u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(24987u, 81548u ^ (arg_1.x | _wgslsmith_div_u32(4294967295u, arg_1.x)));
    global1 = array<u32, 5>();
    let var_1 = -414f;
    global1 = array<u32, 5>();
    let var_2 = u_input.b.x;
    return abs(_wgslsmith_mult_u32(max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(33521u, 1u), 4294967295u), 1u), global4.a.a.x));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global4.b, global2[_wgslsmith_index_u32(40703u, 8u)])), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global4.a.e.x))))))));
    var var_0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(min(func_1(global4.a.c, global4.a.a) << (~(~88785u) % 32u), global3.x), 8u)]));
    let var_1 = _wgslsmith_mod_i32(max(firstLeadingBit(_wgslsmith_sub_i32(~global4.a.c, firstTrailingBit(2147483647i))), 2147483647i), u_input.c ^ _wgslsmith_div_i32(-26454i, 60092i));
    var var_2 = 0i << (1u % 32u);
    let var_3 = vec4<f32>(-584f, _wgslsmith_f_op_f32(ceil(global4.b)), 121f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-999f, _wgslsmith_div_f32(1724f, _wgslsmith_f_op_f32(global4.b + global2[_wgslsmith_index_u32(global3.x, 8u)])), any(vec3<bool>(global4.a.b, false, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(371f, -350f))))));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_3(reverseBits((arg_0.c | -2147483647i) | (5155i >> (global3.x % 32u))) == countOneBits(_wgslsmith_div_i32(func_3(), -45400i)), Struct_1(global4.c.ww, true, -27437i, firstLeadingBit(arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.e))), true, vec3<f32>(2218f, global4.b, _wgslsmith_f_op_f32(f32(-1f) * -334f)), Struct_2(Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0.a.x, u_input.b.x)), true, 8447i, vec4<i32>(abs(u_input.d.x), min(-2147483647i, u_input.d.x), -12253i, 15131i), arg_0.e), global4.a.e.x, firstTrailingBit(vec4<u32>(~global1[_wgslsmith_index_u32(global4.a.a.x, 5u)], arg_1 << (arg_1 % 32u), max(u_input.a, 4294967295u), global4.a.a.x & 31534u))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f - _wgslsmith_f_op_f32(arg_0.e.x - global4.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.b - -747f))), var_0.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, global4.a.e.x, var_0.e.b)) - var_0.d)));
    global4 = var_0.e;
    var var_2 = var_0;
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_2(global4.a, abs(func_1(u_input.e, _wgslsmith_div_vec2_u32(vec2<u32>(93978u, 15342u) >> (global4.a.a % vec2<u32>(32u)), global3.yy))));
    var var_0 = Struct_4(Struct_3(all(select(vec3<bool>(global4.a.b, global4.a.b, false), vec3<bool>(global4.a.b, false, false), vec3<bool>(true, false, global4.a.b))), Struct_1(max(global4.a.a, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 5u)], 5u)], global4.c.x)), global4.a.b, -517i, ~reverseBits(global4.a.d), global4.a.e), !any(vec4<bool>(global4.a.b, false, global4.a.b, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628f + -1355f)), global2[_wgslsmith_index_u32(13688u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -199f)), Struct_2(Struct_1(countOneBits(global3.zz), true, u_input.e, vec4<i32>(-17602i, global4.a.c, u_input.c, u_input.d.x), _wgslsmith_f_op_vec2_f32(global4.a.e + global4.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(27149u, 8u)], -148f, false)) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~_wgslsmith_add_vec4_u32(global4.c, vec4<u32>(11703u, global4.a.a.x, global3.x, 1u)))), func_2(func_2(func_2(func_2(global4.a, 34402u).a, _wgslsmith_dot_vec2_u32(global4.a.a, global3.yy)).a, global4.a.a.x).a, u_input.a).a, vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(3750u, 5u)], u_input.b.x), ~0u), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 8u)])) > _wgslsmith_f_op_f32(578f + 970f), ~(~2147483647i), select(_wgslsmith_div_vec4_i32(global4.a.d, global4.a.d), _wgslsmith_mod_vec4_i32(vec4<i32>(3589i, global4.a.d.x, global4.a.c, global4.a.d.x), vec4<i32>(-1i, u_input.d.x, -15289i, -2147483647i)), select(true, false, global4.a.b)), global4.a.e), global4.b, ~select(global4.c, global4.c, vec4<bool>(false, global4.a.b, true, global4.a.b))), Struct_2(func_2(global4.a, _wgslsmith_dot_vec2_u32(global3.yy, ~vec2<u32>(global3.x, 21129u))).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 8u)]) + _wgslsmith_f_op_f32(global4.b + global2[_wgslsmith_index_u32(4294967295u, 8u)])))), ~(~_wgslsmith_mult_vec4_u32(global4.c, vec4<u32>(4294967295u, global3.x, 31535u, 1u)))));
    var var_1 = Struct_4(var_0.a, Struct_1(var_0.e.a.a, var_0.c.x, _wgslsmith_dot_vec4_i32(global4.a.d, firstLeadingBit(reverseBits(global4.a.d))), min(vec4<i32>(-9716i, var_0.b.d.x, -33188i, max(global4.a.c, 15424i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(global4.a.d, vec4<i32>(-37549i, 27297i, 87791i, global4.a.d.x)), vec4<i32>(u_input.e, -22321i, -29580i, global4.a.c), -global4.a.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global4.a.e))))), !select(select(!vec2<bool>(global4.a.b, global4.a.b), !var_0.c, var_0.a.c || var_0.e.a.b), var_0.c, vec2<bool>(true, var_0.e.a.b)), func_2(func_2(Struct_1(~var_0.d.a.a, all(vec4<bool>(true, global4.a.b, true, true)), firstTrailingBit(0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global4.a.c, 0i, u_input.e, 0i), vec4<i32>(50298i, 0i, 2147483647i, var_0.a.e.a.c)), _wgslsmith_div_vec2_f32(vec2<f32>(853f, -1058f), global4.a.e)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global4.c, vec4<u32>(global4.c.x, global1[_wgslsmith_index_u32(var_0.b.a.x, 5u)], 29606u, global4.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, global1[_wgslsmith_index_u32(1u, 5u)], global4.c.x), vec4<u32>(global1[_wgslsmith_index_u32(10300u, 5u)], 1u, 1u, global3.x), global4.c))).a, ~abs(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(63311u, 5u)], 1u))), Struct_2(func_2(Struct_1(global4.a.a, var_0.a.e.a.b, firstTrailingBit(var_0.a.b.d.x), reverseBits(vec4<i32>(34492i, 1i, 2147483647i, var_0.b.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, var_0.a.d.x))), 1u).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1083f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) * _wgslsmith_f_op_f32(ceil(var_0.e.b)))), ((global4.c & vec4<u32>(19855u, 61515u, 1u, u_input.a)) >> ((vec4<u32>(29825u, var_0.e.c.x, var_0.a.b.a.x, 43656u) & vec4<u32>(var_0.d.c.x, global4.c.x, global4.a.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 5u)], 5u)])) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_add_u32(global4.a.a.x, global1[_wgslsmith_index_u32(0u, 5u)]), var_0.d.a.a.x, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 0u, global4.c.x), 29932u)));
    var_1 = Struct_4(Struct_3(any(vec3<bool>(false, any(var_1.c), true)), func_2(Struct_1(global3.xx, var_0.b.b, ~u_input.e, vec4<i32>(var_1.a.b.d.x, 1i, -1i, var_0.e.a.c) ^ vec4<i32>(-1i, var_0.b.c, var_0.a.b.c, u_input.e), func_2(global4.a, 0u).a.e), 23854u | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.e.c.x, global1[_wgslsmith_index_u32(var_1.d.c.x, 5u)]), 5u)]).a, var_0.a.b.b, var_1.a.d, Struct_2(func_2(func_2(global4.a, 1u).a, var_0.e.a.a.x | 34434u).a, -653f, _wgslsmith_add_vec4_u32(global4.c, var_1.a.e.c >> (vec4<u32>(37742u, global4.c.x, u_input.a, 1u) % vec4<u32>(32u))))), Struct_1(global4.c.wx, !(!(!var_1.d.a.b)), 1i, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global4.a.d.xw, vec2<i32>(1i, -1i)), _wgslsmith_div_i32(2147483647i, u_input.e)), -(~11599i), 1i, var_0.b.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.d.a.e)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.e.a.e) - var_1.a.b.e))), var_0.c, func_2(func_2(func_2(func_2(var_1.b, var_1.b.a.x).a, ~var_0.b.a.x).a, 0u).a, 1u), var_1.d);
    global0 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~u_input.a, 5u)], ~112826u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(16424u, 8u)], var_1.a.e.b), var_1.b.e, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-global4.a.e)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.e.b, global4.a.e.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1654f, 391f) * vec2<f32>(-1022f, -422f))) * var_1.a.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * 558f) - var_1.d.a.e.x)) + _wgslsmith_div_f32(global4.a.e.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 8u)] * _wgslsmith_f_op_f32(-589f + global2[_wgslsmith_index_u32(53654u, 8u)])))), -2147483647i, ~vec3<u32>(_wgslsmith_add_u32(50062u, ~global3.x), _wgslsmith_dot_vec3_u32(var_0.a.e.c.yyw, u_input.b) ^ func_2(var_0.e.a, var_0.b.a.x).c.x, ~func_2(var_1.e.a, 0u).a.a.x));
}

