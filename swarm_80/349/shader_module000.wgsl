struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-25403i, 1i, 2147483647i), vec3<i32>(-23727i, 0i, 11010i), vec3<i32>(i32(-2147483648), -2109i, -17356i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(0i, 0i, -1i), vec3<i32>(-1i, -25060i, 594i), vec3<i32>(-5335i, 21225i, 2147483647i), vec3<i32>(1257i, 28882i, 1i), vec3<i32>(i32(-2147483648), 22419i, 0i), vec3<i32>(-1i, -21354i, 6589i), vec3<i32>(i32(-2147483648), 55461i, -2542i), vec3<i32>(0i, -75362i, i32(-2147483648)), vec3<i32>(-23798i, -25338i, 2147483647i));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    global2 = Struct_2(vec3<i32>(i32(-1i) * -2147483647i, reverseBits(_wgslsmith_mod_i32(-27088i, u_input.c)) ^ (22705i | global2.a.x), _wgslsmith_add_i32(min(global2.a.x, 1i), u_input.c)), countOneBits(global2.b));
    global1 = array<vec3<i32>, 13>();
    var var_0 = select(select(!vec2<bool>(all(vec3<bool>(true, true, true)), 79833i >= global2.a.x), select(vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), false), false), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false), !vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_1 = vec2<i32>(~u_input.c, -1i);
    let var_2 = Struct_1(var_0.x, _wgslsmith_sub_u32(firstTrailingBit(33527u), countOneBits(4294967295u)), !vec2<bool>(!(!var_0.x), var_0.x), vec3<bool>(var_0.x, !(!var_0.x), any(select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), vec2<bool>(true, var_0.x)), select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), false), vec2<bool>(var_0.x, true)))), -1419f);
    return _wgslsmith_dot_vec3_u32(~u_input.a.zzw, ~u_input.a.xwx & u_input.a.xzw);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(11573u != ~(_wgslsmith_mod_u32(u_input.a.x, 1u) >> (_wgslsmith_add_u32(u_input.b.x, 24562u) % 32u)), _wgslsmith_sub_u32(func_3(), ~u_input.b.x), vec2<bool>(false, true), !vec3<bool>(select(true, true, true), true | (32138u != u_input.b.x), false), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * -256f)), _wgslsmith_f_op_f32(global0.x * 228f), true)), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.e))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 901f, false))) * _wgslsmith_f_op_f32(-844f - 923f))));
    let var_2 = Struct_3(false || var_0.c.x, false, Struct_1(var_0.d.x, ~(~var_0.b) >> (~u_input.a.x % 32u), var_0.d.zx, vec3<bool>(1336f >= _wgslsmith_f_op_f32(abs(var_0.e)), var_0.c.x, all(!vec2<bool>(var_0.d.x, var_0.d.x))), 202f), u_input.a, -1i);
    var_0 = Struct_1(all(vec4<bool>(true || (0u == u_input.a.x), -599f <= var_2.c.e, !(!var_0.a), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_2.b, var_2.c.c.x, true), vec4<bool>(true, true, false, false))))), var_0.b, var_0.c, !var_2.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c.e, -194f)) * _wgslsmith_div_f32(2281f, var_1)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -937f) + _wgslsmith_f_op_f32(min(global0.x, var_0.e)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.e * _wgslsmith_f_op_f32(216f - 522f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(274f)), _wgslsmith_f_op_f32(floor(-2100f))))), 141f, _wgslsmith_f_op_f32(-414f * 1f));
    return Struct_1(true, _wgslsmith_sub_u32(var_2.d.x, 43258u), vec2<bool>(var_0.c.x, false), var_0.d, var_2.c.e);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = vec3<bool>(var_0.d.x, false, var_0.a);
    let var_2 = vec2<u32>(~firstTrailingBit(~(0u ^ u_input.b.x)), 1u);
    global2 = Struct_2(vec3<i32>(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 0i, 0i), select(global1[_wgslsmith_index_u32(12469u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], vec3<bool>(false, true, false))), global2.a.x << (~var_2.x % 32u), u_input.c), vec4<i32>(-1i) * -vec4<i32>(global2.b.x, global2.a.x, _wgslsmith_mod_i32(2147483647i, -2147483647i), max(0i, 2147483647i)));
    var var_3 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-global2.b, max(global2.b, vec4<i32>(u_input.c, global2.a.x, 17950i, u_input.c))), global2.b) < _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, 10167i, global2.b.x, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, 2090i, -2147483647i, global2.b.x), vec4<i32>(global2.b.x, u_input.c, -39260i, -1i)), vec4<bool>(var_1.x, false, var_0.a, var_0.c.x)), abs(vec4<i32>(u_input.c, u_input.c, global2.a.x, u_input.c)) & reverseBits(global2.b)));
    return Struct_2(vec3<i32>(global2.b.x, -10036i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~17377i, u_input.c, -u_input.c), global2.a.x)), -global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 13>();
    global2 = func_1();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2213f, global0.x, global0.x, global0.x) + vec4<f32>(2438f, global0.x, -1000f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -544f, global0.x, global0.x))))))));
    let var_0 = Struct_3(false, !(~(-u_input.c) <= -2147483647i), func_2(), u_input.a, 27154i);
    let var_1 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(-global2.a.x, _wgslsmith_add_i32(var_0.e, -2147483647i), func_1().a.x), vec4<i32>(abs(u_input.c), _wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(var_0.d.x, 13u)], vec3<i32>(var_0.e, var_0.e, ~u_input.c)), -38787i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(23379i, global2.a.x), ~vec2<i32>(11856i, u_input.c), -global2.a.xy), reverseBits(vec2<i32>(1i, 1i)))));
    global1 = array<vec3<i32>, 13>();
    var var_2 = 7722u;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.xw * global0.wx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1712f) - vec2<f32>(875f, 1000f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1270f * global0.x), var_0.c.e), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1799f), _wgslsmith_f_op_f32(f32(-1f) * -530f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1385f) * _wgslsmith_f_op_f32(-var_0.c.e)), 119f)));
    let var_4 = vec2<u32>(u_input.a.x, reverseBits(~select(~81110u, u_input.b.x >> (u_input.b.x % 32u), var_0.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(global0.wxz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.wxw), global0.wxy))))), 18189u);
}

