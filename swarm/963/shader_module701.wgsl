struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 28948u, 5569u, 32557u, 1u, 33319u, 17524u, 63737u, 0u, 1u, 4294967295u, 19651u, 0u, 18812u, 5887u, 70141u, 1u, 1u, 1u, 0u, 40509u);

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2250f)) + _wgslsmith_f_op_f32(f32(-1f) * -2175f)))))) - _wgslsmith_f_op_f32(select(arg_0.a, -826f, false)));
    var var_1 = arg_0;
    let var_2 = vec3<i32>(arg_1.c, i32(-1i) * -(arg_2.x & -1i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, arg_1.c), u_input.a.xxw), abs(u_input.a.yzz) >> (arg_1.d % vec3<u32>(32u))), u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, 797f))) * vec2<f32>(422f, _wgslsmith_f_op_f32(select(var_0, 922f, true)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + -389f), _wgslsmith_f_op_f32(trunc(var_1.a))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(floor(-1657f)))), vec2<f32>(var_1.a, arg_0.a), !(!arg_1.b.yx))));
    var var_4 = _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(~u_input.a, arg_2, firstTrailingBit(-vec4<i32>(u_input.a.x, 1i, 2147483647i, arg_1.c)))), -min(firstLeadingBit(vec4<i32>(arg_1.c, var_2.x, var_2.x, 3957i)), u_input.a | vec4<i32>(arg_1.c, 2147483647i, 0i, var_2.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(arg_1.c, 1i, -62748i, 64615i)), arg_2, ~arg_2), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, var_2.x, -21740i, 2147483647i), vec4<i32>(u_input.a.x, var_2.x, 46830i, var_2.x))), vec4<i32>(0i, var_2.x, _wgslsmith_div_i32(0i, -arg_1.c), 23515i), max(-(u_input.a & vec4<i32>(u_input.a.x, -28164i, 2147483647i, 1i)), u_input.a)));
    return arg_0.a;
}

fn func_2() -> vec2<bool> {
    global0 = array<u32, 21>();
    var var_0 = !(any(vec4<bool>(true, true, true, false)) & all(vec3<bool>(false, true, true))) || true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-307f, _wgslsmith_f_op_f32(trunc(1656f)))) + -146f)), _wgslsmith_f_op_f32(func_3(Struct_3(-691f), Struct_1(firstTrailingBit(~vec2<u32>(71271u, 4294967295u)), vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, false, true))), 32396i, _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 1u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3286u, 21u)], 21u)], 58703u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)]), vec3<u32>(74934u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 0u)))), u_input.a, 454f)), Struct_1(~(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 5122u), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)])) & vec2<u32>(0u, 4294967295u)), vec3<bool>(_wgslsmith_f_op_f32(ceil(178f)) < 502f, true, all(vec4<bool>(true, false, true, false)) || true), (u_input.a.x >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16047u, 21u)], 21u)], 21u)] % 32u)) >> (4294967295u % 32u), ~((vec3<u32>(33501u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]) | vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u)) | _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54251u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32363u, 21u)], 21u)], 21u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(58027u, 21u)], 108909u, 27588u)))), any(select(vec3<bool>(u_input.a.x >= 2147483647i, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), false, true), false)), any(vec2<bool>(true, true)));
    let var_2 = Struct_4(u_input.a, (any(vec3<bool>(true, false, false)) && false) && !(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.d.x, 21u)], 21u)]) >= 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -605f, 339f) * vec3<f32>(var_1.b, var_1.b, var_1.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 132f, var_1.b) * vec3<f32>(var_1.a, 1022f, -1534f))))), -1079f);
    var var_3 = var_1.c;
    return select(var_1.c.b.yy, vec2<bool>(var_1.e, true && (_wgslsmith_f_op_f32(-var_2.e) != 1661f)), var_3.b.xx);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~vec2<u32>(69090u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(26942u, 29705u), 21u)], 1u)), vec3<bool>(any(!func_2()), false, all(vec2<bool>(true, true))), -2147483647i, _wgslsmith_mod_vec3_u32(~(vec3<u32>(4294967295u, 21814u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106110u, 21u)], 21u)], 21u)]) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u, 69890u)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 0u)) ^ abs(firstTrailingBit(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26999u, 21u)], 21u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15929u, 21u)], 21u)], 21u)]))));
    global1 = 7571i;
    var var_1 = Struct_1(countOneBits(var_0.a), vec3<bool>(var_0.b.x && (var_0.b.x | true), func_2().x, true), abs(u_input.a.x), vec3<u32>(6858u, _wgslsmith_mult_u32(59648u, global0[_wgslsmith_index_u32(~var_0.a.x, 21u)]), 1u));
    var var_2 = Struct_2(621f, 444f, Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(90979u, 10049u), _wgslsmith_sub_vec2_u32(var_0.d.yx, vec2<u32>(1u, var_0.a.x))), var_0.b, -2147483647i, reverseBits(var_0.d)), any(!select(var_1.b, vec3<bool>(var_0.b.x, true, var_0.b.x), var_1.b.x)), true);
    var_1 = Struct_1(~var_1.d.zx, !vec3<bool>(true, any(vec4<bool>(true, true, true, false)) && any(vec4<bool>(true, var_0.b.x, false, true)), false), -41791i, var_2.c.d);
    return Struct_1(_wgslsmith_sub_vec2_u32(abs(var_2.c.a), max(max(~vec2<u32>(var_1.a.x, 66139u), _wgslsmith_div_vec2_u32(var_2.c.d.yz, var_1.d.yz)), ~_wgslsmith_sub_vec2_u32(var_0.d.xx, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], var_0.a.x)))), select(!select(select(vec3<bool>(var_0.b.x, true, var_2.e), var_0.b, var_1.b.x), select(vec3<bool>(false, true, var_1.b.x), var_1.b, false), true), vec3<bool>(true, (var_1.b.x == true) || false, true && (var_2.d && false)), var_2.c.b.x && true), -select(var_1.c, var_1.c, false), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(123781u, 21u)], 21u)], 21u)] & 63748u, 8354u) | global0[_wgslsmith_index_u32(16630u ^ _wgslsmith_sub_u32(1630u, 4294967295u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5582u, 21u)], 21u)], 21u)], 21u)]), 21u)]);
    var var_1 = func_1();
    var var_2 = func_1();
    var_2 = func_1();
    let var_3 = Struct_2(604f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -460f))))), Struct_1(vec2<u32>(min(1u, var_0) & (var_0 ^ global0[_wgslsmith_index_u32(45446u, 21u)]), var_0), var_2.b, 0i, _wgslsmith_clamp_vec3_u32(countOneBits(select(var_1.d, var_1.d, var_1.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d.x, 0u, 0u), var_2.d), var_1.d)), all(var_1.b), true);
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(var_3.c.d, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0, var_3.c.a.x) >> (~vec3<u32>(var_1.a.x, global0[_wgslsmith_index_u32(var_0, 21u)], var_1.d.x) % vec3<u32>(32u)), select(~var_3.c.d, abs(vec3<u32>(var_2.d.x, 0u, var_1.a.x)), func_2().x))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, ~global0[_wgslsmith_index_u32(52216u, 21u)]), var_3.c.a.x), 21u)] & _wgslsmith_add_u32(~var_1.a.x, _wgslsmith_mult_u32(~609u, _wgslsmith_mult_u32(var_2.d.x, 34165u))), countOneBits(var_2.a.x) << (31664u % 32u));
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2826f), 1294f));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d, _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(16414u, var_1.d.x, 19981u, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, var_4.x, 71193u, var_3.c.d.x), reverseBits(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(var_3.c.d.x, 21u)], 4294967295u))), countOneBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, 2849u, var_0, var_2.a.x), vec4<u32>(43453u, var_4.x, var_1.a.x, global0[_wgslsmith_index_u32(0u, 21u)])), select(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 21u)], 63457u, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<u32>(var_3.c.d.x, var_4.x, var_1.a.x, var_0), vec4<bool>(true, true, false, var_2.b.x)), !var_1.b.x))));
}

