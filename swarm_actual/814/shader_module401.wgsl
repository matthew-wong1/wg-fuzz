struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-1961f, -1897f), vec3<f32>(-718f, 323f, -2025f), vec3<f32>(-1368f, -1000f, 1524f), 21747u, 0i);

var<private> global1: array<vec2<u32>, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(544f)), -1132f))), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(-903f)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)))))), reverseBits(global0.d), ~0i);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b.zy, vec2<f32>(global0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-912f, var_0.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1861f, -297f) - vec2<f32>(global0.c.x, 542f))))), var_0.b.xz, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.c, var_0.b), _wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(1153f, -635f, var_0.b.x)), vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec3_f32(sign(var_0.b)), global0.d, ~(~_wgslsmith_sub_i32(min(19071i, u_input.b.x), 1i)));
    var var_1 = ~countOneBits(~min(~vec4<u32>(0u, var_0.d, var_0.d, 1u), ~vec4<u32>(global0.d, global0.d, var_0.d, 24776u)));
    let var_2 = _wgslsmith_clamp_vec3_i32(-select(abs(vec3<i32>(u_input.c, -2147483647i, 1i)), select(u_input.b, vec3<i32>(var_0.e, global0.e, 0i), vec3<bool>(false, true, false)), false) ^ (u_input.b | vec3<i32>(global0.e, _wgslsmith_mod_i32(2147483647i, -38478i), ~var_0.e)), -(~(~vec3<i32>(-2147483647i, -22867i, var_0.e))) | min(abs(~vec3<i32>(-10394i, var_0.e, u_input.b.x)), ~vec3<i32>(global0.e, u_input.c, global0.e) << ((var_1.yyx << (vec3<u32>(39786u, var_1.x, 76329u) % vec3<u32>(32u))) % vec3<u32>(32u))), -vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.c, -2147483647i), vec3<i32>(1i, u_input.b.x, global0.e), true), reverseBits(u_input.b)), var_0.e));
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.x, ~(max(69019u, global0.d) & (32497u ^ var_0.d))), vec2<u32>(_wgslsmith_div_u32(max(firstLeadingBit(var_0.d), 54104u), countOneBits(firstTrailingBit(4294967295u))), countOneBits(~108351u & global0.d)));
    return ~((countOneBits(var_3.x) | 1u) | 104918u) >= ~var_1.x;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(step(global0.a.x, 434f))) + _wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 876f) - vec2<f32>(global0.b.x, 1366f)), !vec2<bool>(false, arg_0))))), _wgslsmith_f_op_vec3_f32(min(global0.c, global0.b)), global0.c, abs(firstLeadingBit(abs(~55560u))), firstTrailingBit(_wgslsmith_mod_i32(arg_1.x, global0.e << (global0.d % 32u))));
    global1 = array<vec2<u32>, 23>();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(global0.c.xy * vec2<f32>(1000f, global0.c.x))), _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_div_vec2_f32(global0.a, global0.a)))), vec3<f32>(_wgslsmith_f_op_f32(round(702f)), 1052f, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(floor(-955f)))), global0.c, ~52130u, min(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 1i, global0.e, u_input.c), -vec4<i32>(1i, arg_1.x, u_input.c, -118i)), i32(-1i) * -9903i), ~_wgslsmith_div_i32(~u_input.a, 59544i)));
    return -u_input.d;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32((func_4(func_3(), vec3<i32>(u_input.a, global0.e, 21331i)) ^ ~global0.e) << (_wgslsmith_mult_u32(global0.d, ~global0.d & ~global0.d) % 32u), -u_input.c);
    let var_1 = ~_wgslsmith_mult_i32(global0.e, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(2147483647i, 1i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.e, global0.e, 1i, 42143i), _wgslsmith_mod_vec4_i32(vec4<i32>(-36334i, global0.e, -2147483647i, 2147483647i), vec4<i32>(7009i, -2147483647i, global0.e, global0.e)))));
    var_0 = _wgslsmith_sub_i32(~firstTrailingBit(~global0.e), min(reverseBits(~1i), -(u_input.a ^ u_input.d) << (~global0.d % 32u)));
    let var_2 = 1u << (global0.d % 32u);
    var var_3 = 23985u == (_wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 4849u), var_2) ^ ~select(var_2, var_2, false));
    return Struct_2(func_4(true, u_input.b), true, Struct_1(abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1, global0.e), -2147483647i)), global0.d, 0u >> (firstLeadingBit(~var_2) % 32u), global0.b.x, vec3<u32>(4294967295u, global0.d, ~global0.d)), ~min((vec2<u32>(4294967295u, var_2) ^ global1[_wgslsmith_index_u32(var_2, 23u)]) & ~vec2<u32>(4294967295u, global0.d), ~vec2<u32>(83345u, var_2)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = ~firstLeadingBit(~(~vec4<u32>(29217u, 0u, 0u, arg_1.d.x) & (vec4<u32>(1u, 96657u, 1u, 1u) << (vec4<u32>(arg_1.c.b, global0.d, arg_0.d.x, 4294967295u) % vec4<u32>(32u)))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(115f, 614f)))))), global0.b, vec3<f32>(arg_1.c.d, 1836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - global0.c.x)), abs(12602u << ((0u & arg_0.c.b) % 32u)) >> (~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.d.x, 30503u), arg_0.c.c) % 32u), 2147483647i);
    let var_1 = arg_0.d.x;
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-675f * 381f))), vec2<f32>(_wgslsmith_div_f32(arg_0.c.d, global0.a.x), arg_1.c.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.d), _wgslsmith_f_op_f32(f32(-1f) * -566f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.d - global0.c.x)))), _wgslsmith_f_op_f32(-global0.a.x), arg_1.c.d), global0.c, 3023u, ~u_input.c);
    let var_3 = var_2;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = func_5(func_2(), func_2(), u_input.b.yz, firstTrailingBit(_wgslsmith_mult_u32(reverseBits(global0.d), ~arg_0.x)) & 4294967295u);
    let var_1 = ~40427u;
    let var_2 = vec3<i32>(u_input.c, ~abs(reverseBits(global0.e)), firstLeadingBit(_wgslsmith_mult_i32(var_0.c.a << (4294967295u % 32u), -31728i))) >> (~(~_wgslsmith_mult_vec3_u32(func_5(Struct_2(-1i, var_0.b, Struct_1(44322i, 27554u, 59313u, -877f, vec3<u32>(global0.d, var_1, arg_0.x)), vec2<u32>(global0.d, arg_0.x)), Struct_2(1i, false, var_0.c, global1[_wgslsmith_index_u32(var_0.c.c, 23u)]), vec2<i32>(u_input.c, 0i), var_1).c.e, ~vec3<u32>(70246u, var_1, 4294967295u))) % vec3<u32>(32u));
    let var_3 = !(any(vec3<bool>(any(vec4<bool>(true, true, true, var_0.b)), var_1 != var_1, any(vec3<bool>(true, var_0.b, var_0.b)))) != true);
    var var_4 = _wgslsmith_f_op_f32(min(-455f, 357f));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 1385f), func_5(Struct_2(2147483647i, var_0.b, var_0.c, var_0.c.e.yy), Struct_2(u_input.a, false, Struct_1(35539i, global0.d, global0.d, var_0.c.d, var_0.c.e), var_0.d), firstTrailingBit(u_input.b.zz), 67554u).c.d)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.b.x, -1277f)))) * vec3<f32>(_wgslsmith_f_op_f32(2430f * _wgslsmith_f_op_f32(step(var_0.c.d, -212f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.d), _wgslsmith_f_op_f32(floor(var_0.c.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.d + var_0.c.d))))), ~var_1, -23967i & (-(u_input.d | 0i) >> (6988u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~vec2<u32>(~firstTrailingBit(global0.d), 18101u));
    global1 = array<vec2<u32>, 23>();
    var var_0 = ~vec2<i32>(global0.e, -1i);
    var_0 = ~(-(vec2<i32>(firstLeadingBit(u_input.c), u_input.d) >> (global1[_wgslsmith_index_u32(4294967295u, 23u)] % vec2<u32>(32u))));
    let var_1 = func_2();
    let var_2 = -global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(~2147483647i)), global0.d, var_1.c.d, ~(~global1[_wgslsmith_index_u32(4294967295u, 23u)]), select(abs(60718i), -var_1.a, 0u < var_1.c.b) & var_2);
}

