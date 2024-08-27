struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(394u, 4294967295u, 1u), true);

var<private> global1: array<vec4<f32>, 1>;

var<private> global2: array<u32, 8> = array<u32, 8>(13828u, 3066u, 13664u, 1u, 1u, 18099u, 29286u, 0u);

var<private> global3: i32;

var<private> global4: array<i32, 10> = array<i32, 10>(-18889i, -48736i, 1i, -53078i, -44972i, -11388i, 2147483647i, 0i, 2147483647i, -49233i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global4 = array<i32, 10>();
    let var_0 = vec3<i32>(firstTrailingBit(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 12037i), vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 10u)], u_input.d, u_input.d)))), -u_input.d, abs(-_wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(global0.a.x, 10u)], -2147483647i, 1i), vec3<i32>(-25010i, -8124i, u_input.d)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-791f, _wgslsmith_f_op_f32(arg_0.x - 1088f)), arg_0.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-240f))), arg_0.xy), _wgslsmith_f_op_vec2_f32(-arg_0.zx)))));
    global0 = Struct_2(countOneBits(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(global0.a.x, 1628u), u_input.c.x), global0.a.x ^ _wgslsmith_add_u32(global2[_wgslsmith_index_u32(6114u, 8u)], 79649u), 39806u)), false);
    var var_2 = -5340i;
    return _wgslsmith_add_u32(~min(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global0.a.x & u_input.b, 8u)], 77471u), ~global0.a.x), _wgslsmith_dot_vec3_u32(~firstLeadingBit(global0.a), ~global0.a << (vec3<u32>(u_input.a, 81605u, 61472u) % vec3<u32>(32u))) | 0u);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_3(Struct_2(global0.a, true), 1u, Struct_2(abs(min(_wgslsmith_mult_vec3_u32(global0.a, global0.a), ~global0.a)), global0.b));
    var var_1 = Struct_3(Struct_2(~vec3<u32>(firstLeadingBit(27785u), 1u, _wgslsmith_clamp_u32(8931u, 1u, 22672u)), true), global0.a.x, Struct_2(_wgslsmith_mult_vec3_u32(countOneBits(global0.a), ~global0.a << (~global0.a % vec3<u32>(32u))), select(any(vec3<bool>(true, var_0.a.b, false)), true, any(vec4<bool>(true, true, false, global0.b)))));
    var var_2 = Struct_5(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -154f, -1437f) + vec3<f32>(arg_0, arg_0, arg_0))), ~u_input.a), 10u)]);
    global2 = array<u32, 8>();
    global1 = array<vec4<f32>, 1>();
    return !var_0.c.b;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = select(!vec4<bool>(arg_1.x, arg_1.x, any(select(arg_1.zx, arg_1.yx, arg_1.x)), !(arg_1.x && arg_1.x)), vec4<bool>(!func_2(994f) != all(arg_1.xx), all(!vec4<bool>(global0.b, true, arg_1.x, arg_1.x)) | false, true, all(!(!vec3<bool>(arg_1.x, global0.b, arg_1.x)))), true);
    global2 = array<u32, 8>();
    let var_1 = 74495u;
    global1 = array<vec4<f32>, 1>();
    var var_2 = ~_wgslsmith_mult_vec4_u32(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(25672u, 5376u, global0.a.x, var_1), vec4<u32>(4294967295u, arg_2.x, arg_2.x, 48833u))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(15379u, global0.a.x, 4294967295u, 20096u)), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], 22627u, 74154u, 0u) & vec4<u32>(4294967295u, 1u, 0u, global0.a.x)));
    return Struct_4(select(select(vec3<bool>(arg_1.x, func_2(arg_0), !var_0.x), vec3<bool>(!var_0.x, all(vec4<bool>(arg_1.x, arg_1.x, true, global0.b)), false), !(!vec3<bool>(arg_1.x, var_0.x, true))), !vec3<bool>(!global0.b, false, !arg_1.x), false), Struct_3(Struct_2(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(15544u, 8u)], var_2.x, var_1)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 50817u, var_1) | arg_2), any(select(vec4<bool>(arg_1.x, true, var_0.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), true))), var_2.x, Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u & global2[_wgslsmith_index_u32(87681u, 8u)]), true)), firstTrailingBit(vec2<u32>(~(~112826u), var_2.x)), Struct_3(Struct_2(~arg_2 & min(arg_2, global0.a), true), 130097u, Struct_2(global0.a, true)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_4) -> f32 {
    let var_0 = !select(select(arg_0.a, !select(arg_3.a, vec3<bool>(false, global0.b, global0.b), arg_0.a), vec3<bool>(!arg_3.d.c.b, true, func_1(1592f, vec3<bool>(global0.b, false, arg_3.d.a.b), arg_3.d.c.a).b.a.b)), arg_3.a, !arg_3.a);
    let var_1 = reverseBits(-(~select(-vec2<i32>(u_input.d, 2147483647i), reverseBits(vec2<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34929u, 8u)], 10u)], 42049i)), func_1(-186f, arg_0.a, global0.a).a.xx)));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(1u, 88092u), ~12610u) & ~(vec2<u32>(4294967295u, u_input.a) >> (~arg_3.c % vec2<u32>(32u))), vec3<f32>(-756f, 2207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2813f, 1222f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(614f))))), u_input.d, true);
    global2 = array<u32, 8>();
    let var_3 = ~select(var_1.x, _wgslsmith_div_i32(-12353i, ~3753i), true) | _wgslsmith_div_i32(_wgslsmith_mult_i32(~_wgslsmith_div_i32(global4[_wgslsmith_index_u32(arg_0.d.c.a.x, 10u)], var_2.d), _wgslsmith_mod_i32(abs(63981i), ~var_1.x)), ~(-92028i << (0u % 32u)) | _wgslsmith_add_i32(0i, var_1.x));
    return _wgslsmith_f_op_f32(sign(var_2.c));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_2 {
    global2 = array<u32, 8>();
    global0 = Struct_2(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(global2[_wgslsmith_index_u32(29781u, 8u)], global0.a.x, u_input.a)), 1u, global2[_wgslsmith_index_u32(~4602u, 8u)])), false);
    var var_0 = !vec2<bool>(arg_1, any(vec3<bool>(!arg_1, global4[_wgslsmith_index_u32(59114u, 10u)] <= global4[_wgslsmith_index_u32(1u, 10u)], true)));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 10u)] | -2147483647i, u_input.d, u_input.d) >> (min(reverseBits(global0.a), ~vec3<u32>(global0.a.x, u_input.a, u_input.a)) % vec3<u32>(32u)), -vec3<i32>(~2147483647i, global4[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_div_i32(u_input.d, 1i))), -_wgslsmith_mult_vec3_i32(-vec3<i32>(-10325i, 0i, global4[_wgslsmith_index_u32(51150u, 10u)]) ^ ~vec3<i32>(u_input.d, global4[_wgslsmith_index_u32(43822u, 10u)], -2147483647i), abs(firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(54069u, 10u)], -1i, 1i)))), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(~u_input.d, ~global4[_wgslsmith_index_u32(15667u, 10u)], global4[_wgslsmith_index_u32(1u, 10u)] >> (0u % 32u)), 2147483647i, -18551i)));
    global2 = array<u32, 8>();
    return Struct_2(~vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36197u, 1u, global0.a.x, global0.a.x), vec4<u32>(global0.a.x, u_input.a, 1u, global0.a.x)), 8u)], 8u)], ~u_input.c.x), any(!(!vec3<bool>(var_0.x, var_0.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(~select(-vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 8u)], 8u)], 10u)], u_input.d), vec3<i32>(u_input.d, u_input.d, -2147483647i), global0.b), vec3<i32>(-u_input.d, firstLeadingBit(global4[_wgslsmith_index_u32(global0.a.x, 10u)]), firstLeadingBit(1i))));
    global2 = array<u32, 8>();
    let var_1 = Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-184f, -608f)))), any(!vec3<bool>(global0.b, false, global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<bool>(global0.b, false, global0.b), Struct_3(Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(global0.a.x, 8u)], 26196u, 4294967295u), false), u_input.c.x, Struct_2(global0.a, global0.b)), vec2<u32>(global0.a.x, 4294967295u), Struct_3(Struct_2(global0.a, global0.b), global0.a.x, Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 54248u, 0u), global0.b))), vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), func_1(802f, vec3<bool>(global0.b, global0.b, true), global0.a))), 402f)), _wgslsmith_div_u32(u_input.b, ~firstTrailingBit(global0.a.x)), func_1(610f, select(vec3<bool>(global0.b, all(vec4<bool>(false, global0.b, false, false)), global0.b), vec3<bool>(global0.b, true, false), vec3<bool>(global0.b | true, true, true)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 8u)], 1u, global2[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(1u, global0.a.x, 28965u))).d.c);
    global0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(-1085f * -2439f), !vec3<bool>(true, var_1.c.b, var_1.a.b), vec3<u32>(u_input.c.x, global0.a.x, global0.a.x)), vec2<bool>(true, true), vec2<bool>(true, global0.b || false), Struct_4(vec3<bool>(false, false, global0.b), Struct_3(var_1.a, var_1.b, Struct_2(vec3<u32>(u_input.a, 55078u, 45623u), true)), var_1.a.a.xz, func_1(-879f, vec3<bool>(true, var_1.a.b, var_1.a.b), var_1.a.a).b)))), !select(vec3<bool>(all(vec2<bool>(var_1.a.b, true)), true, 30872u <= global0.a.x), vec3<bool>(var_1.a.b, global0.b, true), !vec3<bool>(true, global0.b, var_1.c.b)), vec3<u32>(firstLeadingBit(u_input.b), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.c.a.yx, vec2<u32>(global0.a.x, 4294967295u) >> (global0.a.xz % vec2<u32>(32u))), u_input.b), ~1u)).b.c;
    global3 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(4294967295u, func_5(-729f, !(global4[_wgslsmith_index_u32(var_1.a.a.x, 10u)] < var_0.x), _wgslsmith_f_op_f32(ceil(-645f))).a.x));
}

