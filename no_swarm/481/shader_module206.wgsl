struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<i32, 19>;

var<private> global2: f32 = -196f;

var<private> global3: array<u32, 22> = array<u32, 22>(43110u, 4294967295u, 21702u, 18506u, 72653u, 1u, 39153u, 22646u, 26026u, 37892u, 1u, 28374u, 1u, 7827u, 17376u, 0u, 1u, 51464u, 52167u, 0u, 39818u, 62724u);

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1116f, 854f)))) + _wgslsmith_f_op_f32(trunc(-1000f))), u_input.a.xy, abs(~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(8974u, 22u)], u_input.c.x, u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f) - _wgslsmith_div_f32(1412f, _wgslsmith_div_f32(1000f, -1097f))), abs(u_input.b) | _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xw, vec2<i32>(-57076i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 19u)])), u_input.a.yw), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], u_input.d.x), select(u_input.c.x, global3[_wgslsmith_index_u32(1u, 22u)], false), u_input.c.x >> (8755u % 32u), u_input.d.x), min(countOneBits(vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.d.x)), vec4<u32>(57842u, 1u, global3[_wgslsmith_index_u32(u_input.d.x, 22u)], global3[_wgslsmith_index_u32(u_input.c.x, 22u)])))));
    global0 = array<vec2<f32>, 7>();
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.c.x, abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.c.x, global3[_wgslsmith_index_u32(var_0.b.c.x, 22u)]), 22u)] | 12538u, 22u)]), 37950u, _wgslsmith_mod_u32(select(abs(56837u), 80760u, false), var_0.b.c.x)), var_0.b.c, var_0.b.c);
    let var_2 = true || (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, var_0.a.a)))) != _wgslsmith_f_op_f32(f32(-1f) * -259f));
    global1 = array<i32, 19>();
    return ~11026u;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = u_input.d.x;
    let var_1 = !arg_0;
    var var_2 = vec3<bool>(var_1, var_1 == false, !any(!vec3<bool>(arg_0, arg_0, arg_0)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(func_3(), 7u)]));
    let var_4 = i32(-1i) * -(-25113i << (var_0 % 32u));
    return _wgslsmith_mod_u32(19266u, ~(u_input.d.x & (~u_input.c.x ^ global3[_wgslsmith_index_u32(var_0, 22u)])));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(-261f, 588f), ~vec2<i32>(-13462i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(global3[_wgslsmith_index_u32(5832u, 22u)]), u_input.c.x), 19u)]), vec4<u32>(abs(~20280u), 43259u, arg_0 << (4294967295u % 32u), 1u));
    var var_1 = _wgslsmith_div_i32(1i, countOneBits(2147483647i));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~u_input.d, firstTrailingBit(~var_0.c.wy))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_0.c.x, 0u, true), global3[_wgslsmith_index_u32(var_0.c.x, 22u)]), 22u)] << (~0u % 32u)), 21u)];
    global3 = array<u32, 22>();
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)));
    return Struct_1(_wgslsmith_div_f32(959f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a)))), vec2<i32>(arg_1.x, firstLeadingBit(1i)), _wgslsmith_mod_vec4_u32(~var_0.c, vec4<u32>(13563u, 60298u, 1u << (1u % 32u), 56418u) >> (~vec4<u32>(0u, 0u, 0u, var_0.c.x) % vec4<u32>(32u))));
}

fn func_1() -> i32 {
    var var_0 = func_4(_wgslsmith_clamp_u32(firstTrailingBit(global3[_wgslsmith_index_u32(~reverseBits(global3[_wgslsmith_index_u32(0u, 22u)]), 22u)]), 12283u, ~global3[_wgslsmith_index_u32(func_2(true) >> (~global3[_wgslsmith_index_u32(19235u, 22u)] % 32u), 22u)]), select(u_input.a, ~vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72254u, 22u)], 22u)], 1u), 19u)], firstLeadingBit(-2147483647i), -2147483647i, abs(0i)), true), 29933i);
    var var_1 = u_input.b;
    var_1 = ~(~_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-28773i, u_input.a.x), vec2<i32>(0i, -1i))), vec2<i32>(1i, select(global1[_wgslsmith_index_u32(4294967295u, 19u)], -1i, false))));
    var var_2 = -select(func_4(_wgslsmith_sub_u32(0u, var_0.c.x), u_input.a, 1i).b.x, -42269i, any(vec2<bool>(true, true)));
    let var_3 = global4[_wgslsmith_index_u32(2378u, 21u)];
    return -67191i >> (~func_2(true) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-_wgslsmith_sub_i32(1i, ~(-14526i)) | abs(-func_1()));
    var var_1 = firstLeadingBit(8164u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -1139f)), -u_input.a.ww, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], 4294967295u, 19754u, 35906u)), abs(min(vec4<u32>(60175u, global3[_wgslsmith_index_u32(35337u, 22u)], 0u, u_input.c.x), vec4<u32>(global3[_wgslsmith_index_u32(55804u, 22u)], u_input.d.x, 1u, u_input.d.x))))), global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(83012u, 22u)], ~60442u | global3[_wgslsmith_index_u32(min(u_input.d.x, 4294967295u), 22u)]), 21u)]);
    var_1 = u_input.d.x;
    global0 = array<vec2<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-global1[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(4294967295u, var_2.a.c.x), _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 22u)], 22u)], u_input.d.x))), 19u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.c.x, global3[_wgslsmith_index_u32(~u_input.d.x, 22u)]), (u_input.d ^ u_input.d) | (vec2<u32>(var_2.a.c.x, var_2.a.c.x) ^ var_2.b.c.zx), func_4(~var_2.b.c.x, abs(u_input.a), 1i).c.wz), vec2<u32>(func_4(1u, vec4<i32>(u_input.e, -1i, -11223i, 2147483647i), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 19u)]).c.x, ~0u) >> (firstTrailingBit(vec2<u32>(1u, global3[_wgslsmith_index_u32(var_2.a.c.x, 22u)]) & vec2<u32>(var_2.a.c.x, u_input.d.x)) % vec2<u32>(32u))), 22u)], _wgslsmith_dot_vec4_i32(~u_input.a, ~vec4<i32>(0i, 18880i, 1i, 30889i)) & reverseBits(-(~(-4341i))));
}

