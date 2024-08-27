struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 10>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_1;

var<private> global4: array<i32, 19> = array<i32, 19>(i32(-2147483648), -7823i, i32(-2147483648), 1i, -1i, 81255i, 2070i, -1i, i32(-2147483648), -22487i, 0i, i32(-2147483648), 2147483647i, 0i, 17592i, -1i, 58179i, -6002i, -1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec2<u32> {
    global4 = array<i32, 19>();
    let var_0 = -vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -2147483647i, -1i), vec3<i32>(0i, global2.x, 1139i)), u_input.a), 1i), min(global4[_wgslsmith_index_u32(countOneBits(global0.x), 19u)], 31112i), _wgslsmith_div_i32(global3.c ^ _wgslsmith_sub_i32(arg_1.x, 1828i), global4[_wgslsmith_index_u32(global0.x, 19u)]), ~(~u_input.b));
    global3 = Struct_1(select(!vec4<bool>(arg_2.x, !arg_2.x, false, all(arg_0.a)), !arg_0.a, global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(0u, 52717u)), 10u)]), arg_0.b, -16303i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4728u, _wgslsmith_mult_u32(23767u, 2774u)), reverseBits(~vec2<u32>(global0.x, 46183u))) % 32u));
    let var_1 = Struct_1(select(select(!arg_0.a, global3.a, !select(false, true, false)), !global3.a, !(!all(global3.a.xzy))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) + _wgslsmith_f_op_f32(global3.b * 938f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-490f)))))), (_wgslsmith_mod_i32(arg_1.x, _wgslsmith_clamp_i32(global3.c, var_0.x, 0i)) >> (firstLeadingBit(10234u) % 32u)) << (~(~1u) % 32u));
    var var_2 = Struct_1(!arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(414f))), 0i);
    return vec2<u32>(countOneBits(~reverseBits(global0.x) << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.x, 0u, global0.x), global0.x) % 32u)), global0.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 1u;
    global0 = abs((vec2<u32>(_wgslsmith_div_u32(65719u, 1u), 1231u) << (~abs(vec2<u32>(54458u, global0.x)) % vec2<u32>(32u))) | (func_3(Struct_1(vec4<bool>(global3.a.x, true, true, global1[_wgslsmith_index_u32(28057u, 10u)]), -2015f, global2.x), vec2<i32>(-2147483647i, global2.x) & vec2<i32>(0i, -23094i), vec2<bool>(true, false)) << (select(vec2<u32>(global0.x, 0u) ^ vec2<u32>(global0.x, 4294967295u), ~vec2<u32>(1u, 4294967295u), true) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 47300u), vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(global0.x, 14539u, 4294967295u, global0.x)))), max(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(40837u, global0.x, 4294967295u, global0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 9371u, global0.x, 37646u))), abs(vec4<u32>(54454u, ~2154u, ~6367u, 24289u))));
    var_0 = ~(_wgslsmith_div_u32(global0.x, min(global0.x | global0.x, ~145372u)) >> (global0.x % 32u));
    let var_2 = Struct_1(select(select(global3.a, select(select(global3.a, vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 10u)], global1[_wgslsmith_index_u32(global0.x, 10u)], false, true), global3.a.x), global3.a, select(global3.a, vec4<bool>(global3.a.x, false, false, global3.a.x), true)), !(!vec4<bool>(false, global3.a.x, true, global1[_wgslsmith_index_u32(1u, 10u)]))), select(!(!vec4<bool>(true, global3.a.x, false, true)), global3.a, global1[_wgslsmith_index_u32(~1u, 10u)]), -14101i >= _wgslsmith_sub_i32(-global3.c, global3.c ^ -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1018f, global3.b))), global2.x);
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(~95148u, firstTrailingBit(global0.x), global0.x >> (93968u % 32u)), vec3<u32>(max(1u, 0u), ~global0.x, 1u) & select(abs(vec3<u32>(1u, 1u, global0.x)), abs(vec3<u32>(global0.x, 1897u, 1u)), true), vec3<u32>(~(~global0.x), ~_wgslsmith_mult_u32(27262u, 1u), ~4294967295u));
    global1 = array<bool, 10>();
    let var_1 = func_2(_wgslsmith_f_op_f32(-arg_2.b)).a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-181f, -797f) + 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831f - -743f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.b)), -1616f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))) - _wgslsmith_f_op_f32(-arg_2.b)));
    var var_3 = vec4<i32>(~39303i, ~abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -20922i), _wgslsmith_sub_i32(-1i, arg_1.c))), _wgslsmith_sub_i32(~(~(-1i)) << (global0.x % 32u), u_input.c.x), _wgslsmith_div_i32(max(arg_1.c >> (global0.x % 32u), _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xy)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, u_input.a, u_input.c.x, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -14652i, 30176i, arg_1.c), vec4<i32>(2147483647i, -676i, arg_2.c, -1i))), global4[_wgslsmith_index_u32(global0.x, 19u)]));
    return 19414i << (var_0.x % 32u);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> vec3<bool> {
    let var_0 = ~abs(global4[_wgslsmith_index_u32(24810u, 19u)]);
    var var_1 = !global3.a;
    var var_2 = vec4<i32>(global4[_wgslsmith_index_u32(~global0.x, 19u)] & var_0, 51763i, ~2147483647i, 0i);
    var var_3 = vec4<i32>(u_input.b, u_input.c.x, global2.x, func_4(select(global3.a.x, global0.x > 1u, var_1.x), Struct_1(select(!global3.a, global3.a, global3.a), arg_0.x, -(arg_1 >> (1u % 32u))), func_2(1298f), func_2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    let var_4 = Struct_1(!global3.a, _wgslsmith_f_op_f32(-arg_0.x), ~3101i);
    return vec3<bool>(!all(global3.a), true, var_4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3.a.x, all(select(func_1(vec2<f32>(1f, 1f), global2.x, _wgslsmith_f_op_f32(910f * global3.b)), global3.a.xwz, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, global3.b)), abs(global3.c), _wgslsmith_div_f32(global3.b, global3.b)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(global3.b, global3.b), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b, global3.b), global3.b), _wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), global3.b))), 271f);
    global1 = array<bool, 10>();
    global3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1824f + 1786f)));
    global0 = ~(select(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 53930u)), ~select(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, global0.x), vec2<bool>(false, true)), true) << ((vec2<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), ~4294967295u) ^ ~(~vec2<u32>(global0.x, 6188u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(21715u, 5066u, 9154u), vec3<u32>(global0.x, global0.x, global0.x) | vec3<u32>(17431u, global0.x, global0.x)), ~max(vec3<u32>(70470u, global0.x, global0.x), vec3<u32>(1u, 0u, 1u))));
}

