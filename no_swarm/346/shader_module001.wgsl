struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

var<private> global2: array<u32, 9>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mod_vec4_i32(abs(((vec4<i32>(63088i, 58200i, u_input.c, -8075i) ^ vec4<i32>(-21711i, global0.x, 12111i, global0.x)) >> (~vec4<u32>(4294967295u, u_input.d, global2[_wgslsmith_index_u32(u_input.d, 9u)], u_input.a) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, 1u), vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.d, 9u)], 1u, global2[_wgslsmith_index_u32(u_input.d, 9u)])), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3231u, 9u)], 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], 0u, global2[_wgslsmith_index_u32(0u, 9u)])) % vec4<u32>(32u))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(11384i, -1i, -1i, u_input.b.x) & -vec4<i32>(global0.x, global0.x, 27531i, -50068i), ~vec4<i32>(49937i, global0.x, global0.x, -48814i) ^ min(vec4<i32>(u_input.b.x, -10774i, -18369i, 7971i), vec4<i32>(-2147483647i, -4363i, u_input.c, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, u_input.b.x, global0.x, global0.x) & vec4<i32>(u_input.b.x, global0.x, 6743i, 56663i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, -43026i, u_input.b.x), vec4<i32>(-22802i, -15290i, global0.x, global0.x))))));
    global1 = _wgslsmith_clamp_i32(firstTrailingBit(u_input.c), 50000i, global0.x);
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    var var_0 = Struct_3(max(u_input.a, ~0u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * 1097f), -368f)), min(vec3<i32>(global0.x, -1i, -u_input.c >> (_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(1937u, 9u)]) % 32u)), select(countOneBits(global0.xzx), firstLeadingBit(u_input.b), vec3<bool>(any(vec4<bool>(false, true, false, true)), true, all(vec3<bool>(true, false, false))))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(13675u, abs(u_input.a), u_input.d, 1u)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 32758u) & vec4<u32>(1u, 0u, 29451u, 0u)), ~(~vec4<u32>(u_input.d, 822u, 46929u, 4294967295u)), ~vec4<u32>(49408u, global2[_wgslsmith_index_u32(u_input.d, 9u)], 77535u, 27282u))));
    return ~u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> bool {
    global2 = array<u32, 9>();
    let var_0 = vec2<u32>(70467u, func_3() ^ 1u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1459f, -1084f, 1556f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(105f, 473f, -1010f, 1000f), vec4<f32>(541f, 1666f, 696f, -551f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1301f, -744f, 239f, -1917f)))), ~(~(~8647u)), -1000f, max(arg_2, -(global0.x & arg_2))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, 831f, 1599f, 320f) + vec4<f32>(923f, 1120f, -1276f, -1449f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(472f, 656f, 1009f, 419f)))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-348f)))), ~abs(arg_2) << (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), 9u)] % 32u)), vec4<i32>(arg_2, countOneBits(countOneBits(_wgslsmith_clamp_i32(1i, u_input.c, 0i))), min(countOneBits(-u_input.b.x), -2147483647i), arg_2), var_0, u_input.a | firstLeadingBit(arg_0 >> (abs(1u) % 32u)));
    var var_2 = 40u;
    global2 = array<u32, 9>();
    return !select(false, true, true);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    global2 = array<u32, 9>();
    let var_0 = ~u_input.d;
    global2 = array<u32, 9>();
    let var_1 = _wgslsmith_div_f32(-1376f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1506f + -681f), -1000f) * _wgslsmith_f_op_f32(trunc(-579f))))));
    let var_2 = select(arg_2.zy, arg_2.xx, false);
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1)), var_1), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u << (~global2[_wgslsmith_index_u32(u_input.d, 9u)] % 32u), 9u)], u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1)), _wgslsmith_f_op_f32(-127f * -1051f))), 0i), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -433f, -1458f, var_1)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, var_1, 1166f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -2667f, var_1))), ~u_input.a, var_1, 0i), select(vec4<i32>(firstTrailingBit(0i) | select(-2147483647i, -2147483647i, arg_2.x), 14571i, -1i & (-1i | global0.x), 1i), -_wgslsmith_div_vec4_i32(-vec4<i32>(0i, arg_1.x, 0i, u_input.b.x), -vec4<i32>(-35549i, global0.x, arg_1.x, u_input.b.x)), select(!vec4<bool>(arg_3, var_2.x, arg_3, false), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, arg_3, arg_0, var_2.x), vec4<bool>(arg_2.x, false, true, false)), vec4<bool>(var_2.x, func_2(4294967295u, vec2<bool>(false, true), u_input.b.x), any(vec3<bool>(arg_2.x, var_2.x, true)), !arg_2.x))), ~_wgslsmith_add_vec2_u32(vec2<u32>(22194u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], var_0)), max(~vec2<u32>(120162u, 0u), ~vec2<u32>(global2[_wgslsmith_index_u32(var_0, 9u)], u_input.d))), select(abs(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 9u)], 9u)]), 9u)], abs(0u))), 14190u, func_2(1u, arg_2.xy, ~(~u_input.b.x))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b.a + vec4<f32>(arg_0, -454f, arg_2.a.a.x, arg_2.a.c)))))), 17605u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), arg_2.a.d);
    var var_1 = countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -30811i, 33145i ^ _wgslsmith_mod_i32(arg_2.a.d, arg_2.c.x)), ~(-select(-1i, -1i, true))));
    var var_2 = global0.x;
    let var_3 = !select(select(vec2<bool>(any(vec2<bool>(true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), true), vec2<bool>(select(any(vec4<bool>(true, false, false, false)), true, false), select(true, false, func_2(var_0.b, vec2<bool>(false, true), arg_2.c.x))), vec2<bool>(true, all(vec3<bool>(true, true, true))));
    global2 = array<u32, 9>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a.a + vec4<f32>(1751f, _wgslsmith_div_f32(-480f, _wgslsmith_div_f32(481f, arg_2.b.c)), 741f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.c))))), var_0.b, 1859f, select(32746i, abs(~u_input.c), var_3.x));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3.c.zwx;
    var var_1 = true || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-843f * -952f), -700f)) * arg_1.a.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - 1112f));
    var var_2 = select(select(vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), true), select(vec4<bool>(false, 30469i <= var_0.x, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), func_2(arg_2.x | 4294967295u, vec2<bool>(true, true), i32(-1i) * -27249i)), vec4<bool>(true, var_0.x != var_0.x, false, true)), select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(true, true)), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), arg_3.a.a.x < arg_3.b.c), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), arg_1.c > -431f)), !(_wgslsmith_f_op_f32(-arg_3.b.a.x) > _wgslsmith_f_op_f32(sign(arg_3.b.a.x)))), vec4<bool>(arg_1.c < arg_1.c, all(vec4<bool>(select(false, false, true), false, true, true)), true, all(vec4<bool>(true, true, true, true))));
    var var_3 = func_5(1f, (vec4<u32>(_wgslsmith_mod_u32(0u, arg_2.x), 1u, min(30915u, 0u), ~arg_0) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2.x, 1u, 23996u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, 4294967295u), vec4<u32>(arg_1.b, arg_3.b.b, 4294967295u, 0u), vec4<u32>(arg_3.d.x, arg_1.b, 4294967295u, 15082u)), vec4<u32>(4294967295u, arg_0, 0u, 1u) << (vec4<u32>(1u, 4294967295u, arg_2.x, u_input.d) % vec4<u32>(32u)))) ^ ~firstLeadingBit(abs(vec4<u32>(arg_0, arg_1.b, arg_3.a.b, 37386u))), arg_3).a.zw;
    let var_4 = var_2.x;
    return firstTrailingBit((_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.b.d, u_input.c, arg_3.b.d, -17287i), arg_3.c), arg_3.c) ^ (vec4<i32>(0i, var_0.x, -1i, arg_1.d) & _wgslsmith_sub_vec4_i32(arg_3.c, vec4<i32>(arg_3.c.x, -1i, -29924i, 19718i)))) ^ arg_3.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = 1i;
    global0 = func_6(_wgslsmith_dot_vec3_u32(~firstTrailingBit(max(arg_0, vec3<u32>(34583u, arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 9u)]))), vec3<u32>(~(~12785u), countOneBits(_wgslsmith_add_u32(arg_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33974u, 9u)], 9u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, u_input.a), abs(vec2<u32>(0u, u_input.a))), 9u)])), func_5(_wgslsmith_f_op_f32(f32(-1f) * -1650f), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(global2[_wgslsmith_index_u32(45049u, 9u)], 0u, 0u)), global2[_wgslsmith_index_u32(~arg_0.x, 9u)], arg_0.x, ~1u)), func_4(func_2(~arg_0.x, vec2<bool>(true, true), 2147483647i >> (arg_0.x % 32u)), vec2<i32>(global0.x, ~1i), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), var_0 > _wgslsmith_clamp_i32(0i, var_0, 31754i))), vec3<u32>(0u, 60184u, 101719u), func_4(true, min(global0.zx, -global0.zz), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false));
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(u_input.c, u_input.c, 26565i, 22154i) >> (vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(1u, 9u)], 31775u) % vec4<u32>(32u))), (_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -1i, u_input.c, 0i), vec4<i32>(u_input.c, var_0, var_0, 2147483647i)) >> (countOneBits(vec4<u32>(u_input.a, 2326u, u_input.a, arg_0.x)) % vec4<u32>(32u))) | abs(-vec4<i32>(global0.x, 0i, var_0, var_0))), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, 0i, _wgslsmith_sub_i32(31620i, var_0), -1i), abs(vec4<i32>(-2147483647i, -8592i, 21864i, _wgslsmith_sub_i32(-55226i, 3825i)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, arg_1.x, 683f, arg_1.x)), vec4<f32>(arg_1.x, arg_1.x, 460f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -830f, 784f, 1112f) * vec4<f32>(arg_1.x, -1854f, -265f, -2087f))))), _wgslsmith_f_op_vec4_f32(-func_5(_wgslsmith_f_op_f32(-arg_1.x), ~vec4<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(arg_0.x, 9u)], 1u), func_4(false, u_input.b.yx, vec3<bool>(true, true, true), false)).a))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(_wgslsmith_mod_u32(func_3(), func_5(1000f, vec4<u32>(61638u, 0u, global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), Struct_2(Struct_1(vec4<f32>(-395f, arg_1.x, arg_1.x, arg_1.x), arg_0.x, arg_1.x, -58552i), Struct_1(vec4<f32>(-930f, 616f, -678f, 1000f), u_input.a, -519f, 47282i), vec4<i32>(1i, 0i, var_0, u_input.b.x), vec2<u32>(arg_0.x, u_input.a), 0u)).b), u_input.d, true), select(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4799u, 9u)], 9u)], 9u)], 9u)]), 1u, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)))), 9u)], -923f, global0.x << ((~select(arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 9u)], false) ^ ~(0u << (arg_0.x % 32u))) % 32u));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_3 {
    var var_0 = select(vec4<i32>(~abs(arg_1.d), select(-6356i, _wgslsmith_dot_vec2_i32(vec2<i32>(34056i, arg_1.d), ~vec2<i32>(arg_0.c.x, u_input.b.x)), true), arg_0.c.x, 20863i), vec4<i32>(global0.x, u_input.b.x, 2147483647i, arg_1.d), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(sign(1000f))), arg_1.a.x, 421f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b + arg_1.c), _wgslsmith_f_op_f32(-arg_0.b), -1169f, _wgslsmith_f_op_f32(-677f + arg_0.b)) * vec4<f32>(-781f, _wgslsmith_f_op_f32(arg_0.b + arg_1.c), _wgslsmith_div_f32(-1146f, -933f), 1f)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, select(false, false, false), all(vec3<bool>(false, true, true)), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false)))), arg_2, -695f, ~global0.x);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c)));
    let var_4 = func_4(!(_wgslsmith_div_u32(84208u, _wgslsmith_add_u32(var_1.b, 4294967295u)) != ~1u), func_4(var_2 | false, vec2<i32>(-1i, -arg_1.d), select(!vec3<bool>(var_2, var_2, true), select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, true, false), vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, false)), select(select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, false, var_2), var_2), !vec3<bool>(var_2, true, var_2), false)), !(any(vec2<bool>(var_2, false)) & !var_2)).c.yx, select(!(!(!vec3<bool>(var_2, var_2, var_2))), vec3<bool>(false, var_2, true), !var_2), ~82i > var_1.d);
    return arg_0;
}

fn func_8(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    global0 = vec4<i32>(min(i32(-1i) * -2147483647i, select(func_7(arg_0, func_5(-309f, arg_0.d, Struct_2(Struct_1(vec4<f32>(arg_0.b, 2144f, arg_0.b, 637f), u_input.a, -407f, u_input.b.x), Struct_1(vec4<f32>(-758f, arg_0.b, 541f, arg_0.b), 4294967295u, arg_0.b, -32315i), vec4<i32>(arg_0.c.x, u_input.c, 0i, 39120i), vec2<u32>(10000u, u_input.d), 1u)), _wgslsmith_add_u32(96684u, u_input.a), 4066i).c.x, abs(_wgslsmith_mult_i32(-13305i, arg_0.c.x)), true)), 34139i, ~_wgslsmith_sub_i32(~abs(19964i), 0i), -2147483647i ^ firstTrailingBit((949i << (arg_0.d.x % 32u)) ^ ~2147483647i));
    global1 = _wgslsmith_dot_vec3_i32(~(-_wgslsmith_add_vec3_i32(global0.wzy, _wgslsmith_mod_vec3_i32(global0.xzy, u_input.b))), reverseBits(countOneBits(-arg_0.c)));
    global2 = array<u32, 9>();
    global0 = vec4<i32>(u_input.c, u_input.c | -1i, -(max(2147483647i, -2147483647i) >> (arg_0.a % 32u)), ~_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, arg_0.c.x) ^ _wgslsmith_mod_i32(arg_0.c.x, -4176i), func_7(Struct_3(u_input.d, arg_0.b, vec3<i32>(global0.x, global0.x, arg_0.c.x), arg_0.d), func_1(vec3<u32>(11637u, 1u, global2[_wgslsmith_index_u32(arg_0.a, 9u)]), vec2<f32>(566f, arg_0.b)), arg_1.x << (arg_1.x % 32u), ~(-29364i)).c.x));
    let var_0 = func_7(func_7(Struct_3(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(arg_0.b - 891f)), arg_0.c, _wgslsmith_mult_vec4_u32(arg_0.d, arg_0.d)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -521f, arg_0.b, 476f) * vec4<f32>(-494f, arg_0.b, -905f, 229f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, -2315f, 488f) - vec4<f32>(arg_0.b, 595f, 1232f, arg_0.b))), _wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(arg_1.x, 9u)]) >> (arg_1.x % 32u), func_4(true, vec2<i32>(u_input.c, global0.x), vec3<bool>(false, true, false), all(vec4<bool>(false, true, false, true))).b.c, 12403i), _wgslsmith_sub_u32(~arg_1.x, 15967u), 0i), func_4(true, global0.xy, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec3<bool>(true, false, true)), true)), true).b, arg_0.a, select(countOneBits(~countOneBits(arg_0.c.x)), -6834i, !all(vec3<bool>(true, false, false))));
    return Struct_3(1u, -174f, _wgslsmith_div_vec3_i32(func_7(Struct_3(countOneBits(21862u), -1082f, ~vec3<i32>(1i, arg_0.c.x, -2147483647i), abs(arg_0.d)), func_5(_wgslsmith_f_op_f32(step(1000f, var_0.b)), vec4<u32>(45028u, 3653u, 25007u, global2[_wgslsmith_index_u32(19816u, 9u)]) & arg_0.d, func_4(true, vec2<i32>(44338i, global0.x), vec3<bool>(true, false, false), false)), 1u, -reverseBits(global0.x)).c, ~(_wgslsmith_div_vec3_i32(arg_0.c, u_input.b) >> (~vec3<u32>(arg_1.x, 52342u, 10140u) % vec3<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.a), ~1u, global2[_wgslsmith_index_u32(func_7(Struct_3(15743u, arg_0.b, u_input.b, vec4<u32>(1544u, 4294967295u, 4294967295u, 66474u)), Struct_1(vec4<f32>(arg_0.b, -750f, var_0.b, -1350f), 15353u, arg_0.b, global0.x), 89602u, 29138i).d.x, 9u)], countOneBits(arg_1.x)), firstTrailingBit(func_7(arg_0, func_5(var_0.b, var_0.d, Struct_2(Struct_1(vec4<f32>(-395f, 1477f, -1100f, 399f), 4294967295u, var_0.b, var_0.c.x), Struct_1(vec4<f32>(arg_0.b, 1076f, var_0.b, 171f), 60654u, arg_0.b, 2147483647i), vec4<i32>(3833i, arg_0.c.x, global0.x, u_input.b.x), var_0.d.zy, u_input.d)), 7364u & arg_1.x, i32(-1i) * -56196i).d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-402f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1000f, var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * 435f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -361f, var_0, -1088f) * vec4<f32>(1000f, var_0, -325f, var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, -1388f, -376f)))), 4294967295u, var_0, -2147483647i);
    global0 = vec4<i32>(var_1.d, ~global0.x, -58369i, _wgslsmith_mult_i32(1i, -8633i));
    var var_2 = func_8(func_7(Struct_3(~23692u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))), u_input.b, vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9611u), global2[_wgslsmith_index_u32(var_1.b, 9u)], 11769u, global2[_wgslsmith_index_u32(0u << (u_input.a % 32u), 9u)])), func_1(~(vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(global2[_wgslsmith_index_u32(19429u, 9u)], var_1.b, global2[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_vec2_f32(var_1.a.zx + vec2<f32>(var_1.c, var_1.a.x))), ~firstLeadingBit(1708u), 1i), vec3<u32>(~global2[_wgslsmith_index_u32(~6859u, 9u)] << (4294967295u % 32u), func_7(Struct_3(0u, var_0, vec3<i32>(global0.x, -1i, var_1.d), _wgslsmith_sub_vec4_u32(vec4<u32>(3823u, 1u, 0u, var_1.b), vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], 18914u))), func_5(_wgslsmith_f_op_f32(292f - var_1.a.x), ~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(1589u, 9u)], 1u, 4294967295u), func_4(false, vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(false, false, true), true)), global2[_wgslsmith_index_u32(1u, 9u)], -(u_input.c >> (14025u % 32u))).a, 1u));
    let var_3 = func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(63085u << (var_2.a % 32u)), var_2.d.x, 4294967295u), reverseBits(_wgslsmith_sub_vec3_u32(var_2.d.wyz, var_2.d.xyy)), var_2.d.xxz), vec2<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(step(-642f, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, 1274f)) + _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(var_2.b)))))).d;
    let var_4 = true & (global2[_wgslsmith_index_u32(func_7(func_8(func_7(Struct_3(var_1.b, 494f, vec3<i32>(1i, var_3, var_1.d), var_2.d), Struct_1(vec4<f32>(var_2.b, var_1.c, 353f, var_2.b), 4294967295u, -555f, -1i), 84183u, -41544i), vec3<u32>(0u, u_input.d, var_1.b)), func_4(any(vec4<bool>(false, false, false, false)), vec2<i32>(1i, -1i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), false).b, ~127590u, -42579i).a, 9u)] < u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(84937u, countOneBits(vec3<u32>(_wgslsmith_mult_u32(max(global2[_wgslsmith_index_u32(4294967295u, 9u)], 15968u), 4294967295u), 55205u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(56347u, 10703u), firstTrailingBit(global2[_wgslsmith_index_u32(69438u, 9u)])), 9u)])), _wgslsmith_f_op_f32(-1628f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(-1000f - -1002f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c, -1429f, false)), _wgslsmith_f_op_f32(-573f * var_0), func_5(var_1.c, vec4<u32>(var_2.a, 24213u, u_input.d, 4294967295u), Struct_2(Struct_1(vec4<f32>(var_2.b, var_0, var_2.b, -1283f), var_2.d.x, 563f, -29411i), Struct_1(var_1.a, 4294967295u, var_2.b, -2147483647i), vec4<i32>(1289i, global0.x, var_1.d, var_1.d), vec2<u32>(var_2.a, 4294967295u), 7514u)).a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1588f, var_1.c, 1000f), var_1.a.wyz)))), _wgslsmith_f_op_f32(-func_7(Struct_3(_wgslsmith_mult_u32(86889u, u_input.a), _wgslsmith_f_op_f32(sign(525f)), global0.zxy & vec3<i32>(2147483647i, var_3, var_1.d), ~var_2.d), Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.b, -2399f, global0.x), ~(~7393u), -(~var_2.c.x)).b));
}

