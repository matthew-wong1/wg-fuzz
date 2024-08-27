struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 10990u), vec2<u32>(10030u, 15517u), vec2<u32>(16332u, 63544u), vec2<u32>(1u, 0u), vec2<u32>(41272u, 0u), vec2<u32>(1u, 0u));

var<private> global2: array<u32, 30> = array<u32, 30>(4294967295u, 1u, 3526u, 14933u, 4294967295u, 45714u, 49126u, 37532u, 1885u, 101689u, 1u, 0u, 0u, 28336u, 16567u, 11568u, 0u, 46298u, 1u, 75571u, 7264u, 4294967295u, 12641u, 43211u, 1u, 26222u, 0u, 30267u, 1u, 9381u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_i32(u_input.d, ~(-4846i)));
    global1 = array<vec2<u32>, 6>();
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(reverseBits(1u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] % 32u)), ~42097u) & ~(reverseBits(92781u) & global2[_wgslsmith_index_u32(~58381u, 30u)]), u_input.a << (global2[_wgslsmith_index_u32(31004u, 30u)] % 32u));
    global2 = array<u32, 30>();
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 0i), vec3<i32>(var_0.a, 0i, 1i)));
    return u_input.b.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(~select(u_input.d, select(2147483647i, 38100i, false), any(vec3<bool>(true, true, true))), 2147483647i));
    let var_1 = Struct_1(-(-59474i | u_input.d));
    var_0 = Struct_1(firstLeadingBit(firstLeadingBit(u_input.d)));
    global0 = u_input.d;
    global0 = -u_input.d;
    return !vec2<bool>(true, _wgslsmith_mod_u32(~u_input.e, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])) <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(func_3(777f)), 30u)], 30u)]);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(~0u, ~(~firstTrailingBit(global2[_wgslsmith_index_u32(1u, 30u)]) ^ 4294967295u), 4294967295u);
    var var_1 = select(~var_0.yy, _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.e << (u_input.e % 32u), var_0.x), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 20581u), var_0.xy), ~vec2<u32>(var_0.x, 0u)), ~_wgslsmith_add_vec2_u32(var_0.xx, global1[_wgslsmith_index_u32(8739u, 6u)]))), !select(func_2(), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_2 = !(!((~var_0.x ^ _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(9026u, 30u)], 40862u)) <= ~(~2856u)));
    global2 = array<u32, 30>();
    let var_3 = _wgslsmith_div_vec2_u32(~select(~global1[_wgslsmith_index_u32(45037u, 6u)] & reverseBits(global1[_wgslsmith_index_u32(u_input.e, 6u)]), ~(var_0.zx ^ vec2<u32>(u_input.e, 0u)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_mod_u32(u_input.c.x | (var_0.x & global2[_wgslsmith_index_u32(4294967295u, 30u)]), 0u), func_3(_wgslsmith_f_op_f32(floor(-1000f)))));
    return Struct_1(1i);
}

fn func_4(arg_0: Struct_1) -> i32 {
    global2 = array<u32, 30>();
    global2 = array<u32, 30>();
    var var_0 = firstTrailingBit(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 1i, u_input.d, 2147483647i), ~vec4<i32>(arg_0.a, arg_0.a, -14977i, 26911i))) | _wgslsmith_mult_i32(-(~64591i | ~arg_0.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(arg_0.a, 24243i, u_input.d)), -abs(vec3<i32>(u_input.d, u_input.d, u_input.d))));
    global0 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a, 2147483647i, 22270i, u_input.d), vec4<i32>(u_input.d, 10928i, -18033i, u_input.d)), 0i), ~(-2476i));
    var var_1 = func_1();
    return -2147483647i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1;
    global2 = array<u32, 30>();
    var var_1 = arg_1;
    global2 = array<u32, 30>();
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(select(_wgslsmith_add_i32(firstTrailingBit(2147483647i), 1i), _wgslsmith_add_i32(-49495i, arg_0.x), all(vec4<bool>(false, false, arg_2.x, false))), ~(-2147483647i), var_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-var_1.a, u_input.d), 1i, u_input.d), arg_0));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(vec3<i32>(~_wgslsmith_div_i32(-2147483647i, 9020i), func_4(func_1()), abs(u_input.d | -1i))), Struct_1(i32(-1i) * -2147483647i), vec4<bool>(true, select(true, true, true), select(any(vec3<bool>(true, true, true)), true, select(true, true, true)), func_2().x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1451f))), _wgslsmith_f_op_f32(407f - _wgslsmith_f_op_f32(step(-1466f, 1211f))), 1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * -436f)))));
    var var_1 = -201f;
    var var_2 = u_input.d < u_input.d;
    let var_3 = min(_wgslsmith_div_vec2_u32(vec2<u32>(func_3(-418f), max(u_input.e, ~1u)), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(~(~1u)), 30u)], 6u)]), ~vec2<u32>(firstTrailingBit(max(59411u, 31298u)), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]));
    global1 = array<vec2<u32>, 6>();
    global0 = 1i >> (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-4897i, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1513f)), 1048f, any(vec3<bool>(true, true, true))))))), max(vec4<i32>(1i, 1i, u_input.d, -24127i), abs(firstTrailingBit(vec4<i32>(8384i, u_input.d, 2147483647i, u_input.d)))));
}

