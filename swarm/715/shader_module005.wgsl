struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1000f, 646f, 1357f, -564f, 997f, 445f, -101f, -676f, -105f, 633f, 1093f, 628f, -1000f, 967f, 714f, -1332f, 402f, -1585f, -749f, -657f, -1000f, -1718f, -1000f, -463f);

var<private> global1: array<f32, 10>;

var<private> global2: array<vec3<u32>, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_2.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))) - vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20363u, 24u)] + 847f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(44715u, 10u)] - global0[_wgslsmith_index_u32(73498u, 24u)]))), firstTrailingBit(_wgslsmith_mult_i32(1i, -24850i)), ~min(-vec3<i32>(1i, 0i, 4475i), vec3<i32>(1i, 1i, 1i)), 1i, _wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 24u)] - global1[_wgslsmith_index_u32(49375u, 10u)])))));
    global2 = array<vec3<u32>, 19>();
    let var_1 = var_0.a;
    global0 = array<f32, 24>();
    let var_2 = Struct_2(var_0.a);
    return ~countOneBits(vec4<u32>(abs(_wgslsmith_sub_u32(u_input.a.x, 24759u)), 4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, 77441u, arg_1), vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, arg_2.x), true), _wgslsmith_add_vec4_u32(vec4<u32>(80033u, u_input.a.x, 95841u, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), 1u));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2535i, 33424i, 2147483647i), vec3<i32>(56336i, -1i, -1i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(16033i, -1i, 1i, -32493i), vec4<i32>(10123i, -2147483647i, -2147483647i, -2147483647i)), -40557i) << (func_3(vec3<bool>(true, true, true), ~u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 19u)], true) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(-select(-33478i, 58345i, false), reverseBits(20251i) << (select(u_input.a.x, 3499u, false) % 32u)), 1i, i32(-1i) * -1917i, ~1i));
    var var_1 = u_input.a.x;
    let var_2 = 1577f;
    let var_3 = Struct_1(vec2<f32>(1f, 1f), abs(var_0.x), vec3<i32>(abs(var_0.x), abs(var_0.x) & ~_wgslsmith_mult_i32(var_0.x, var_0.x), -2147483647i), ~var_0.x, var_2);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.a), var_0.x, vec3<i32>(0i, ~1i, ~(~10667i)), abs(var_0.x), var_3.e);
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    global0 = array<f32, 24>();
    global2 = array<vec3<u32>, 19>();
    var var_0 = 112604i;
    let var_1 = u_input.a;
    let var_2 = 1f;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(1379f, -770f) - vec2<f32>(-310f, var_2)), select(vec2<bool>(false, arg_1.x), arg_1.zy, arg_1.x))) - vec2<f32>(global0[_wgslsmith_index_u32(8292u, 24u)], _wgslsmith_f_op_f32(arg_0 + -527f))), 1i, -vec3<i32>(i32(-1i) * -1i, ~10441i, -1i << (var_1.x % 32u)), -12371i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1081f))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, var_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, -109f) + vec2<f32>(global0[_wgslsmith_index_u32(4800u, 24u)], global1[_wgslsmith_index_u32(76787u, 10u)])) + vec2<f32>(global1[_wgslsmith_index_u32(2040u, 10u)], global1[_wgslsmith_index_u32(98654u, 10u)])), any(select(arg_1, arg_1, true)))), ~(~(-2147483647i)), vec3<i32>(1i, reverseBits(2147483647i), -1i) ^ select(vec3<i32>(6816i, 21895i, 43418i), vec3<i32>(0i, 2147483647i, -19984i), all(vec2<bool>(arg_1.x, false))), ~(-56852i), -936f), u_input.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.a.x, func_2()), 10u)], global0[_wgslsmith_index_u32(5853u, 24u)])), select(vec4<bool>(false, true, true, true), vec4<bool>(select(true, false, false), any(vec2<bool>(true, true)), true, true), vec4<bool>(true, true, true, true)));
    let var_1 = !vec4<bool>(true, 835f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.b.e)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_0.c), 24u)])), !(_wgslsmith_f_op_f32(-var_0.a.e) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 24u)]) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41718u, 24u)]));
    return func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(func_3(select(vec3<bool>(true, var_1.x, true), var_1.wxy, var_1.x), ~1u, vec3<u32>(u_input.a.x, var_0.c, 1u) ^ vec3<u32>(61041u, 1u, 1u), all(var_1)), abs(countOneBits(vec4<u32>(u_input.a.x, var_0.c, 108754u, var_0.c)))), 1u), 10u)], vec4<bool>(var_1.x, var_1.x, var_1.x, true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1());
    var var_1 = 1i;
    global2 = array<vec3<u32>, 19>();
    var var_2 = vec4<u32>(abs(_wgslsmith_mod_u32(~func_3(vec3<bool>(true, true, false), 49014u, vec3<u32>(1u, u_input.a.x, 4294967295u), true).x, ~countOneBits(u_input.a.x))), 54053u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, ~0u) ^ u_input.a.x, u_input.a.x), 1u);
    global1 = array<f32, 10>();
    let var_3 = !(!(var_0.a.d < 1i));
    var_1 = 12539i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(937f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_0.a.e, 628f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 437f, 284f, 1141f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(var_2.x, 24u)], -193f))))))), _wgslsmith_f_op_f32(1000f * var_0.a.e));
}

