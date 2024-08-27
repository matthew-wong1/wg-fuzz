struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<bool, 7>;

var<private> global2: array<vec4<bool>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 28>();
    global2 = array<vec4<bool>, 28>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(~1u)), 28u)];
    global1 = array<bool, 7>();
    var var_1 = ~(~vec3<u32>(_wgslsmith_add_u32(arg_1.a.x, arg_1.b), abs(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_2.b, var_0.b), vec4<u32>(arg_2.b, 1u, 121735u, 4294967295u))));
    return _wgslsmith_mod_u32(arg_2.b, ~select(firstTrailingBit(33787u), _wgslsmith_sub_u32(51852u, 22575u), any(vec2<bool>(global1[_wgslsmith_index_u32(33990u, 7u)], false)))) ^ abs(var_0.b);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> u32 {
    global2 = array<vec4<bool>, 28>();
    global2 = array<vec4<bool>, 28>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(~func_3(u_input.a, global0[_wgslsmith_index_u32(47104u, 28u)], Struct_1(vec2<u32>(1u, 36456u), 1u, u_input.b, -1i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41086u, 4294967295u), vec3<u32>(96230u, 4294967295u, 35714u)))), 28u)];
    var var_1 = max(select(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.b, 73386u, 84730u, 4294967295u), vec4<u32>(1u, 53638u, 0u, var_0.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 1u, 4294967295u, 0u) & vec4<u32>(48995u, 4294967295u, 0u, var_0.b), select(vec4<u32>(17446u, var_0.a.x, var_0.b, 4214u), vec4<u32>(var_0.a.x, 36817u, 4294967295u, var_0.b), true))), select(~max(vec4<u32>(var_0.a.x, var_0.b, 0u, 72047u), vec4<u32>(0u, var_0.b, var_0.a.x, var_0.b)), reverseBits(vec4<u32>(4294967295u, 0u, 1u, 0u)), vec4<bool>(var_0.b <= 4294967295u, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(~6339u, 7u)], global1[_wgslsmith_index_u32(abs(var_0.a.x), 7u)])), global2[_wgslsmith_index_u32(var_0.b, 28u)]), min(~vec4<u32>(~var_0.a.x, 4294967295u, _wgslsmith_mult_u32(5435u, 11170u), var_0.a.x), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(10208u, 4294967295u, var_0.a.x, var_0.b)), ~(~vec4<u32>(var_0.a.x, 11780u, var_0.a.x, 3589u)))));
    var var_2 = -2147483647i;
    return select(1u, ~(var_1.x >> (~var_1.x % 32u)), !all(select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 7u)], false), false), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 7u)], global1[_wgslsmith_index_u32(var_0.b, 7u)]))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = true;
    var var_1 = arg_3 << (~(~_wgslsmith_mod_u32(49859u, _wgslsmith_div_u32(4294967295u, arg_1.b))) % 32u);
    global1 = array<bool, 7>();
    global0 = array<Struct_1, 28>();
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.a, ~arg_0.wx & arg_1.a), ~arg_0.wy), reverseBits(6641u), arg_1.c, -1i);
    return !(!(!global2[_wgslsmith_index_u32(0u, 28u)]));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global2 = array<vec4<bool>, 28>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f + -958f))))) * -1239f);
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0.b, arg_1.b, 28232u)), ~vec3<u32>(1u, var_0.a.x, var_0.a.x)), ~(vec3<u32>(34827u, 0u, var_0.b) << (vec3<u32>(16683u, var_0.b, var_0.a.x) % vec3<u32>(32u)))), arg_3.b), ~(~7866u) << (_wgslsmith_sub_u32(~func_2(var_0.c.xxx, vec2<f32>(-520f, -1675f)), 1u) % 32u), min(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-1i, 2147483647i, 4344i, arg_1.c.x)), vec4<i32>(21006i >> (firstLeadingBit(55830u) % 32u), ~1i, ~(-arg_3.c.x), abs(var_0.d))), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.c.x, _wgslsmith_clamp_i32(u_input.b.x, arg_3.d, var_0.d), ~11276i), _wgslsmith_mod_vec3_i32(-select(u_input.b.xwz, u_input.b.xyw, arg_0.yzx), vec3<i32>(_wgslsmith_mod_i32(2147483647i, -18442i), _wgslsmith_dot_vec2_i32(arg_3.c.yz, vec2<i32>(2147483647i, -21071i)), _wgslsmith_sub_i32(arg_1.d, -2147483647i)))));
    var var_3 = arg_0;
    return Struct_1(~(~(arg_1.a << (vec2<u32>(var_2.a.x, 0u) % vec2<u32>(32u)))), ~0u, abs(arg_3.c), u_input.c.x);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f));
    var var_1 = -1259f;
    let var_2 = func_5(func_4(vec4<u32>(7818u, max(0u, 8355u), 4294967295u, func_2(u_input.b.yxx, vec2<f32>(-1187f, 1466f))) & firstTrailingBit(reverseBits(vec4<u32>(0u, 23329u, 4294967295u, 21178u))), Struct_1(countOneBits(~vec2<u32>(1u, 26884u)), _wgslsmith_mod_u32(39028u, 4294967295u) | func_3(vec2<i32>(u_input.b.x, -138i), global0[_wgslsmith_index_u32(0u, 28u)], Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, u_input.b, 495i)), -vec4<i32>(37425i, 0i, u_input.b.x, u_input.a.x) & vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.b.yy)), reverseBits(_wgslsmith_clamp_u32(65566u, 24785u, 0u)) & ~0u, 22216u), global0[_wgslsmith_index_u32(~(~(~(~4294967295u))), 28u)], 0i, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, 0u)), ~abs(vec2<u32>(4294967295u, 5834u)), abs(~vec2<u32>(33835u, 1u))), ~(~0u), u_input.b, -(~min(u_input.c.x, 0i))));
    global0 = array<Struct_1, 28>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1711f, -1140f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1117f, -1000f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2148f, 627f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))) * vec2<f32>(-731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-616f)) + _wgslsmith_div_f32(312f, _wgslsmith_f_op_f32(790f - -762f)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = vec3<u32>(func_1(), 4294967295u, ~68237u);
    global1 = array<bool, 7>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_2 = 15420u;
    let var_3 = func_5(select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 40324u, var_1.a.x), vec3<u32>(var_1.a.x, 26064u, var_1.a.x)), firstTrailingBit(63488u)), _wgslsmith_dot_vec2_u32(~var_1.a, vec2<u32>(4294967295u, var_0.x))), 28u)], !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, false, global1[_wgslsmith_index_u32(var_1.a.x, 7u)])), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 16840i, -32700i), vec3<i32>(-1i, var_1.c.x, var_1.d)) >= ~(i32(-1i) * -36668i)), global0[_wgslsmith_index_u32(1u, 28u)], i32(-1i) * -(~(-var_1.d)), global0[_wgslsmith_index_u32(~(~var_0.x), 28u)]);
    global2 = array<vec4<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-334f, _wgslsmith_f_op_f32(-2304f - -1839f))))), -713f, 242f), ~(~(~max(vec3<u32>(89168u, var_3.a.x, 4294967295u), vec3<u32>(1u, 0u, var_1.a.x)))), -_wgslsmith_mod_i32(~(-1561i), u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-673f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(479f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f * -530f)))), _wgslsmith_sub_vec4_i32(~(~func_5(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(1u, 7u)]), Struct_1(var_0.yy, 1u, var_3.c, 0i), -1i, global0[_wgslsmith_index_u32(var_1.b, 28u)]).c), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-37240i, var_1.d, var_3.d, 1i), u_input.b)));
}

