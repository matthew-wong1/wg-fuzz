struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: array<u32, 5>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, -2747i, 2147483647i, i32(-2147483648));

var<private> global3: i32 = 22360i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(0u), abs(arg_0), ~1u), vec3<u32>(1u, countOneBits(7862u), max(u_input.c, u_input.b))), select(_wgslsmith_mult_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(67936u, 5u)], arg_0, 21152u), vec3<u32>(0u, 35993u, 73630u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.c, u_input.b, global1[_wgslsmith_index_u32(1u, 5u)]))), ~vec3<u32>(global1[_wgslsmith_index_u32(13377u, 5u)], 51235u, global1[_wgslsmith_index_u32(7144u, 5u)]) & vec3<u32>(4294967295u, 0u, u_input.b), global2.x < -1i));
    var var_1 = Struct_1(countOneBits(reverseBits(vec4<u32>(1u, ~u_input.c, abs(3428u), ~u_input.c))), false, true, _wgslsmith_div_vec2_u32(((vec2<u32>(arg_0, global1[_wgslsmith_index_u32(14797u, 5u)]) >> (vec2<u32>(u_input.b, arg_0) % vec2<u32>(32u))) | countOneBits(vec2<u32>(arg_0, 18834u))) ^ ~min(vec2<u32>(u_input.c, u_input.b), vec2<u32>(arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 5u)], 5u)])), vec2<u32>(arg_0 | ~arg_0, min(670u, arg_0) >> (12211u % 32u))), firstLeadingBit(_wgslsmith_sub_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(46997u, arg_0, arg_0, 0u), vec4<u32>(66211u, u_input.c, 49430u, u_input.b)), ~vec4<u32>(u_input.c, u_input.b, arg_0, arg_0)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 23746u, u_input.b), vec4<u32>(u_input.b, 0u, u_input.c, arg_0)))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(651f - 1f), _wgslsmith_f_op_f32(trunc(-1000f)), 396f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1189f, 588f, -1427f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(150f, 2259f, -1464f) * vec3<f32>(976f, -880f, 682f)), false)), true)), Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(var_1.d.x, 30u)] - global0[_wgslsmith_index_u32(24358u, 30u)])), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1968u, arg_0), vec3<u32>(1u, 18503u, global1[_wgslsmith_index_u32(61648u, 5u)]))), 30u)], vec2<bool>(select(var_1.c, true, true), !var_1.c))), ~var_1.a.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-304f, -967f, 522f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, 245f, 299f) + vec3<f32>(-1842f, 163f, -576f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-432f, 1095f, 529f), vec3<f32>(-1060f, -1586f, 736f))))), !select(select(vec3<bool>(var_1.b, true, true), vec3<bool>(true, true, false), vec3<bool>(var_1.b, false, var_1.c)), select(vec3<bool>(var_1.b, true, false), vec3<bool>(false, var_1.b, var_1.b), var_1.c), var_1.c)));
    var var_3 = -2147483647i;
    var_1 = Struct_1(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(min(u_input.c, arg_0), 5u)] & var_2.b.b.x, ~(~var_1.a.x), ~(~var_2.b.b.x), min(1u, 1u))), false, !all(select(select(vec4<bool>(true, true, true, var_1.c), vec4<bool>(var_1.b, var_2.b.d.x, false, true), false), vec4<bool>(true, true, true, var_2.b.d.x), global2.x <= 2147483647i)), var_1.d, vec4<u32>(arg_0 ^ (select(1u, 65408u, false) << (arg_0 % 32u)), min(~_wgslsmith_mod_u32(var_1.e.x, u_input.c), global1[_wgslsmith_index_u32(~(var_2.b.b.x ^ var_1.d.x), 5u)]), 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(arg_0, 0u, 14205u)), ~_wgslsmith_dot_vec3_u32(var_1.e.zwx, vec3<u32>(arg_0, 0u, var_1.a.x))), 5u)]));
    return ~global1[_wgslsmith_index_u32(var_1.e.x, 5u)];
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_1 = (vec3<i32>(18068i, u_input.a, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 20589i, global2.x), vec3<i32>(-8034i, global2.x, u_input.a)))) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], ~_wgslsmith_mod_u32(u_input.c, 4118u), global1[_wgslsmith_index_u32(func_3(6593u << (1u % 32u)), 5u)]) % vec3<u32>(32u))) >> (firstTrailingBit(abs(vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)], u_input.c), 4294967295u, firstTrailingBit(1635u)))) % vec3<u32>(32u));
    var_0 = vec2<f32>(-522f, 1387f);
    let var_2 = false;
    var var_3 = -_wgslsmith_mult_vec2_i32(global2.xy, _wgslsmith_sub_vec2_i32(var_1.xx, global2.yy));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-613f, arg_0.x)))), 1000f));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(select(~vec3<u32>(4294967295u, u_input.b, 43160u), ~(vec3<u32>(1856u, global1[_wgslsmith_index_u32(u_input.c, 5u)], 16779u) >> (vec3<u32>(global1[_wgslsmith_index_u32(71486u, 5u)], u_input.c, 0u) % vec3<u32>(32u))), !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, false), arg_0)), vec3<u32>(~global1[_wgslsmith_index_u32(22657u, 5u)] ^ global1[_wgslsmith_index_u32(max(0u, 73594u), 5u)], global1[_wgslsmith_index_u32(0u << (countOneBits(global1[_wgslsmith_index_u32(u_input.c, 5u)]) % 32u), 5u)], ~1u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-611f, 299f, true))))), _wgslsmith_f_op_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(264f * 1000f), _wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(178f + 420f)))), arg_0)), _wgslsmith_mod_vec4_i32(firstTrailingBit(~(vec4<i32>(0i, 2147483647i, -34351i, 6842i) ^ vec4<i32>(global2.x, 39274i, u_input.a, 0i))), -vec4<i32>(1i ^ global2.x, ~global2.x, ~(-2147483647i), _wgslsmith_div_i32(-58996i, 8937i))));
    global3 = -1i;
    global2 = vec4<i32>(-(~select(abs(35342i), var_1.b.x, -4089i != global2.x)), _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(var_1.b.x, var_1.b.x, u_input.a, 2147483647i)), -select(var_1.b, vec4<i32>(var_1.b.x, 56756i, 1i, u_input.a), vec4<bool>(false, false, false, arg_0)), vec4<bool>(true, !arg_0, true, false)), select(vec4<i32>(1i, -5297i, 2147483647i, -var_1.b.x), min(vec4<i32>(var_1.b.x, -1i, 0i, var_1.b.x) << (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_0.x, global1[_wgslsmith_index_u32(var_0.x, 5u)], 4294967295u) % vec4<u32>(32u)), ~var_1.b), arg_0 | true)), var_1.b.x, u_input.a);
    global3 = -1i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a + 404f)))), _wgslsmith_f_op_f32(sign(var_1.a))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> StorageBuffer {
    global3 = min(21755i, _wgslsmith_mod_i32(~(-1i) << (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(48341u, 1u), vec2<u32>(0u, u_input.c))) % 32u), _wgslsmith_mod_i32(global2.x, -9551i)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22953u, 5u)], 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - global0[_wgslsmith_index_u32(~1u, 30u)]))), vec2<u32>(4294967295u, 1u) << (firstLeadingBit(~abs(vec2<u32>(26301u, 52693u))) % vec2<u32>(32u)), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)), select(select(!(!vec3<bool>(false, arg_1.x, true)), select(!vec3<bool>(arg_1.x, true, false), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), all(vec4<bool>(arg_1.x, false, arg_1.x, true))), vec3<bool>(!any(vec3<bool>(arg_1.x, true, arg_1.x)), all(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(true, arg_1.x, false, true), true)), (false && arg_1.x) | all(arg_1)), select(!vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, true, true), any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)))));
    var var_1 = ~(~countOneBits(vec3<u32>(27377u ^ var_0.b.x, u_input.b, ~global1[_wgslsmith_index_u32(u_input.b, 5u)])));
    let var_2 = Struct_4(var_0.c.x, _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<i32>(-global2.x, max(global2.x, -963i), 59989i, -2147483647i), vec4<i32>(u_input.a | global2.x, -global2.x, -26702i, i32(-1i) * -2147483647i), arg_1.x)));
    var var_3 = ~(~(~u_input.c));
    return StorageBuffer(select(select(~vec4<u32>(var_0.b.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 5u)], var_1.x), ~(vec4<u32>(1u, 63170u, var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101823u, 5u)], 5u)]) << (vec4<u32>(var_1.x, var_0.b.x, 45093u, var_0.b.x) % vec4<u32>(32u))), vec4<bool>(var_0.d.x, arg_1.x, all(arg_1), var_0.d.x || true)), reverseBits(~(vec4<u32>(6897u, 29485u, 4294967295u, global1[_wgslsmith_index_u32(75502u, 5u)]) | vec4<u32>(52544u, var_0.b.x, 4294967295u, var_0.b.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global2.x ^ _wgslsmith_sub_i32(u_input.a, max(1i, global2.x)), 9786i, ~global2.x, -28605i) & max(_wgslsmith_mod_vec4_i32((vec4<i32>(global2.x, 0i, -2147483647i, u_input.a) ^ vec4<i32>(u_input.a, global2.x, u_input.a, u_input.a)) | select(vec4<i32>(global2.x, global2.x, u_input.a, -84099i), vec4<i32>(u_input.a, u_input.a, global2.x, u_input.a), vec4<bool>(false, true, false, false)), max(min(vec4<i32>(u_input.a, 1i, global2.x, global2.x), vec4<i32>(global2.x, u_input.a, global2.x, global2.x)), -vec4<i32>(u_input.a, 2147483647i, global2.x, u_input.a))), -(~vec4<i32>(global2.x, 1i, u_input.a, u_input.a)));
    var var_1 = -1281f;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(879f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(184f - 1617f), _wgslsmith_f_op_f32(187f + -1561f), true)))), countOneBits(vec4<i32>(0i, -41257i, var_0.x, u_input.a) ^ ~vec4<i32>(-1i, var_0.x, 6999i, -33154i)) ^ -(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, global2.x, 9321i), vec4<i32>(-25937i, var_0.x, 56627i, -27578i)) << (vec4<u32>(18912u, 29571u, u_input.c, global1[_wgslsmith_index_u32(0u, 5u)]) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a, var_2.a, -903f, var_2.a), vec4<f32>(549f, -169f, -1756f, -535f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, -1223f, var_2.a, var_2.a)))))));
    var_1 = 629f;
    var_1 = var_2.a;
    global1 = array<u32, 5>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) - 204f)), !select(vec2<bool>(select(false, true, true), false), vec2<bool>(false, true), vec2<bool>(true, true)));
}

