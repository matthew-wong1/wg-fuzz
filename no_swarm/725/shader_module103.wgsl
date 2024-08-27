struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<f32, 22> = array<f32, 22>(-629f, -1729f, -1140f, 1487f, 1000f, 486f, 574f, -220f, -135f, -113f, 1151f, -526f, 174f, 1298f, -2451f, -1530f, 467f, 141f, -1242f, 1000f, 375f, -581f);

var<private> global1: Struct_4 = Struct_4(1113f, vec4<i32>(5350i, 38845i, 1i, 0i), -396f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    global0 = array<f32, 22>();
    var var_0 = Struct_3(!all(vec2<bool>(all(vec3<bool>(false, true, true)), false)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -243f), Struct_2(false, 364f), Struct_1(!vec3<bool>(all(vec2<bool>(false, true)), true, any(vec4<bool>(false, true, true, true))), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 39783u, 10433u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.b) >= 26451u), _wgslsmith_div_i32(6710i, _wgslsmith_mult_i32(18120i, _wgslsmith_div_i32(2147483647i, -35130i))));
    var var_1 = reverseBits(vec2<u32>(_wgslsmith_div_u32(reverseBits(u_input.a.x) & (u_input.b | u_input.a.x), u_input.a.x), max(59067u, 84752u) & u_input.a.x));
    global0 = array<f32, 22>();
    var var_2 = !select(select(vec4<bool>(all(var_0.d.a.xx), any(var_0.d.a), any(vec4<bool>(var_0.a, false, var_0.c.a, true)), false), select(select(vec4<bool>(var_0.a, var_0.d.b, var_0.a, false), vec4<bool>(true, var_0.c.a, var_0.a, false), vec4<bool>(var_0.c.a, true, var_0.d.b, var_0.c.a)), vec4<bool>(false, false, true, true), vec4<bool>(var_0.a, var_0.c.a, var_0.a, true)), !(!vec4<bool>(var_0.a, var_0.a, true, var_0.a))), vec4<bool>(any(vec4<bool>(false, var_0.d.b, false, true)) & all(vec4<bool>(var_0.a, var_0.d.a.x, var_0.c.a, var_0.d.a.x)), true, !(!var_0.c.a), true), !(!all(vec4<bool>(var_0.d.a.x, var_0.a, false, var_0.c.a))));
    return var_1.x;
}

fn func_2() -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_u32(4294967295u | ~_wgslsmith_mult_u32(u_input.b, u_input.a.x), func_3());
    global1 = Struct_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 22u)]), firstLeadingBit(select(-select(vec4<i32>(global1.b.x, -107i, global1.b.x, global1.b.x), vec4<i32>(2147483647i, global1.b.x, global1.b.x, global1.b.x), true), reverseBits(vec4<i32>(global1.b.x, global1.b.x, global1.b.x, 6635i)), true)), -1144f);
    global1 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 1u), 1u), 22u)], min(select(_wgslsmith_mult_vec4_i32(select(global1.b, vec4<i32>(-22225i, -2147483647i, global1.b.x, global1.b.x), vec4<bool>(false, true, false, false)), global1.b), vec4<i32>(i32(-1i) * -44362i, _wgslsmith_sub_i32(-1i, 16234i), ~(-2147483647i), reverseBits(1i)), any(vec4<bool>(false, true, false, false))), _wgslsmith_div_vec4_i32(global1.b, vec4<i32>(2074i, _wgslsmith_clamp_i32(global1.b.x, -30822i, 2147483647i), _wgslsmith_mod_i32(global1.b.x, -4715i), _wgslsmith_clamp_i32(global1.b.x, 25637i, global1.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a))))));
    let var_1 = Struct_5(Struct_2(any(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true)))), -1211f), Struct_3(!(!(global1.b.x < global1.b.x)), 379f, Struct_2(_wgslsmith_f_op_f32(-global1.c) < 405f, global1.a), Struct_1(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true))), -16467i), Struct_4(1000f, select(vec4<i32>(global1.b.x, global1.b.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, 1i, global1.b.x, -31130i), vec4<i32>(13330i, global1.b.x, 52179i, global1.b.x))), select(-vec4<i32>(global1.b.x, 2147483647i, 31941i, global1.b.x), global1.b, vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, select(false, false, false))), _wgslsmith_f_op_f32(min(800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 199f)), -410f)))));
    global0 = array<f32, 22>();
    return Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a * var_1.b.c.b))))) - _wgslsmith_f_op_f32(-var_1.a.b)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.a))))) + 1f), func_2(), Struct_1(!select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), arg_0.a), true), abs(global1.b.x) >> (22372u % 32u));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 1u) >> (~abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<u32>(~84101u, ~u_input.a.x, ~(~abs(2761u)), _wgslsmith_mult_u32(~(~u_input.a.x), (4294967295u >> (u_input.b % 32u)) << (14597u % 32u)))), 22u)];
    var var_2 = var_0.d;
    global0 = array<f32, 22>();
    global1 = Struct_4(_wgslsmith_f_op_f32(-var_0.c.b), select(global1.b, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-119966i, var_0.e, global1.b.x, -1i), vec4<i32>(36705i, -1i, var_0.e, global1.b.x) | vec4<i32>(var_0.e, var_0.e, 0i, global1.b.x), vec4<i32>(global1.b.x, var_0.e, 0i, var_0.e)), global1.b), !(18807u > (u_input.b ^ u_input.b))), 108f);
    return var_0.d;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global1.c))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a)))))), _wgslsmith_mod_vec4_i32(~(-(~vec4<i32>(global1.b.x, 2147483647i, global1.b.x, arg_0))), global1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.a, -592f)))))));
    let var_0 = select(!select(vec2<bool>(arg_2.a.x, arg_1), vec2<bool>(true, any(vec3<bool>(arg_2.a.x, false, true))), !vec2<bool>(arg_2.a.x, false)), !select(!(!arg_2.a.yz), vec2<bool>(true, true), arg_1), arg_2.a.xz);
    let var_1 = Struct_5(func_2(), Struct_3(!(arg_2.b & true), _wgslsmith_f_op_f32(select(-547f, global0[_wgslsmith_index_u32(~u_input.b, 22u)], (arg_0 >> (1u % 32u)) != ~arg_0)), func_2(), Struct_1(!vec3<bool>(var_0.x, false, false), !arg_1 | true), 38991i), Struct_4(_wgslsmith_f_op_f32(step(658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + -991f) - _wgslsmith_f_op_f32(-1000f - -570f)))), reverseBits(vec4<i32>(i32(-1i) * -2147483647i, 43656i, _wgslsmith_mult_i32(global1.b.x, 2147483647i), global1.b.x | arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(func_2().b))))));
    return func_1(func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    global1 = Struct_4(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.c) - _wgslsmith_f_op_f32(f32(-1f) * -183f)))), vec4<i32>(_wgslsmith_mult_i32(global1.b.x, _wgslsmith_dot_vec4_i32(arg_2.b, -arg_2.b)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17167i, arg_2.b.x, 2147483647i, -14097i), global1.b), countOneBits(arg_0.e)), ~1i, 23348i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a, global1.a, false)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(abs(-1975f)), arg_1.b <= -1604f)), arg_0.c.b)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1815f, global1.a, -666f) + vec3<f32>(arg_2.a, 1614f, 469f)))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 22u)], arg_0.c.b, arg_0.c.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2().b))))), 1000f);
    var var_1 = arg_1.c;
    global0 = array<f32, 22>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, ~global1.b.x), global1.b.x);
    global1 = Struct_4(global0[_wgslsmith_index_u32(~select(u_input.b, ~60702u, firstTrailingBit(global1.b.x) <= (var_0 ^ var_0)), 22u)], vec4<i32>(global1.b.x, -var_0, var_0, 1i), _wgslsmith_f_op_f32(global1.c - global0[_wgslsmith_index_u32(~u_input.a.x, 22u)]));
    let var_1 = Struct_3(any(vec4<bool>(11128u < u_input.a.x, any(vec3<bool>(true, true, true)), false, !all(vec4<bool>(false, true, false, true)))), 420f, func_5(Struct_3(true, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b, 22u)] + 157f), Struct_2(true, 1000f), func_4(~global1.b.x, 10520u != u_input.a.x, func_1(Struct_2(true, global0[_wgslsmith_index_u32(16109u, 22u)]))), 27110i), Struct_3(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), Struct_2(true, -589f), Struct_1(vec3<bool>(true, false, true), true), ~(-2147483647i)), Struct_4(-1678f, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1508f, global0[_wgslsmith_index_u32(u_input.b, 22u)])))), ~(u_input.a ^ _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), func_4(min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.b.x, 27495i), 0i), var_0), true, Struct_1(select(vec3<bool>(true, true, true), func_4(global1.b.x, false, Struct_1(vec3<bool>(true, false, false), true)).a, func_4(65414i, true, Struct_1(vec3<bool>(true, false, true), false)).a), any(vec4<bool>(true, false, false, true)) || any(vec2<bool>(false, false)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(~(-vec2<i32>(1i, 41234i))), -vec2<i32>(-2147483647i >> (u_input.a.x % 32u), global1.b.x >> (u_input.a.x % 32u))));
    global0 = array<f32, 22>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, global1.a, -421f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -515f, global0[_wgslsmith_index_u32(0u, 22u)], global1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global1.a, global1.c, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) * vec4<f32>(329f, 1145f, global0[_wgslsmith_index_u32(u_input.b, 22u)], 1308f)) * vec4<f32>(global0[_wgslsmith_index_u32(63591u, 22u)], global1.c, global1.c, global1.c)), !(!vec4<bool>(true, false, true, var_1.c.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(836f, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - global1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-487f * -1000f))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

