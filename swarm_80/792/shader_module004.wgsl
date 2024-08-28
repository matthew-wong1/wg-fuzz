struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32;

var<private> global2: array<f32, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = Struct_2(vec4<u32>(min(~arg_2.c, arg_0.c.x | arg_2.c), 11138u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.c, 17237u, 47874u), 1u), arg_2.c | (arg_2.c << (arg_0.a.x % 32u))) & reverseBits(max(vec4<u32>(0u, arg_0.a.x, arg_0.c.x, 2234u), ~arg_0.c)), Struct_1(false, !arg_0.b.b), _wgslsmith_clamp_vec4_u32(arg_0.c, ~abs(vec4<u32>(4294967295u, 102260u, 1u, arg_2.c)), vec4<u32>(~(~56228u), ~0u, ~(~arg_2.c), 49766u)));
    let var_1 = Struct_2(~vec4<u32>(var_0.a.x, ~(var_0.c.x ^ arg_0.a.x), ~countOneBits(0u), arg_2.c), Struct_1(false, true), var_0.a);
    global1 = arg_2.c;
    var_0 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~countOneBits(arg_2.c), var_0.c.x, abs(var_1.c.x), _wgslsmith_mult_u32(27125u, 32883u)), firstTrailingBit(vec4<u32>(arg_0.c.x, _wgslsmith_div_u32(var_0.a.x, arg_0.a.x), var_0.c.x, countOneBits(arg_0.c.x)))), arg_2.a, _wgslsmith_sub_vec4_u32(max(min(abs(vec4<u32>(var_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x)), ~var_1.a), var_0.c), var_1.c));
    global2 = array<f32, 24>();
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(1u, 85718u, countOneBits(var_0.c.x) >> (0u % 32u), ~4294967295u)), firstLeadingBit(~select(var_1.a, _wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(var_1.a.x, arg_0.c.x, 0u, 1u)), false)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    global2 = array<f32, 24>();
    let var_0 = _wgslsmith_div_u32(min(45655u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 1u, 0u, arg_2), func_3(Struct_2(vec4<u32>(11047u, 4294967295u, 4294967295u, 123462u), arg_1.a, vec4<u32>(0u, 4294967295u, arg_1.c, 1u)), 1000f, arg_1)), _wgslsmith_mult_vec4_u32(arg_0.a, arg_0.a) & arg_0.a)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_mod_u32(10542u, arg_0.c.x)), arg_1.c, max(abs(arg_1.c), 35496u << (arg_0.a.x % 32u))), ~(~arg_0.a.x >> (~arg_0.c.x % 32u))));
    var var_1 = !arg_3;
    var var_2 = Struct_4(Struct_1(true, var_1.x), arg_1.b, var_0 & ~56488u, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-309f))) + var_2.b), _wgslsmith_f_op_f32(floor(-122f)), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b)), var_2.b) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - arg_1.b), _wgslsmith_f_op_f32(ceil(var_2.b)))))));
    return Struct_1(true, true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = all(select(vec4<bool>(arg_2 < _wgslsmith_clamp_u32(70038u, 1u, 1u), true, true == arg_3.a, false & arg_1), select(vec4<bool>(true, arg_3.b, any(global0.yxw), true), vec4<bool>(!arg_1, arg_3.b && true, all(vec3<bool>(arg_3.b, arg_3.a, arg_3.b)), arg_1 | false), arg_0.b), !vec4<bool>(arg_3.b, -1438f < global2[_wgslsmith_index_u32(arg_2, 24u)], true, any(vec4<bool>(arg_1, arg_3.b, true, false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-510f)), global2[_wgslsmith_index_u32(~(~arg_2), 24u)]);
    global2 = array<f32, 24>();
    var var_2 = true;
    global0 = select(vec4<bool>(arg_3.a, -29742i >= _wgslsmith_mod_i32(~u_input.a.x, ~2147483647i), true, true), !(!select(vec4<bool>(false, true, false, true), !vec4<bool>(false, arg_0.b, arg_1, arg_3.a), !arg_0.b)), vec4<bool>(!arg_1, global0.x, arg_0.b, arg_3.b));
    return firstLeadingBit(_wgslsmith_sub_u32(abs(23990u) ^ _wgslsmith_mod_u32(9179u, max(arg_2, 29653u)), 1u));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = ~firstTrailingBit(abs(min(select(21046u, 1666u, true), 4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(-373f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 24u)]) * _wgslsmith_f_op_f32(-2080f * 639f)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(Struct_1(true, global0.x), true, _wgslsmith_mult_u32(0u, 0u), func_2(Struct_2(vec4<u32>(62018u, 75378u, 6252u, 1u), Struct_1(true, global0.x), vec4<u32>(4294967295u, 7051u, 32206u, 0u)), Struct_4(Struct_1(false, global0.x), 789f, 71870u, true), 4294967295u, vec4<bool>(false, true, global0.x, false))), _wgslsmith_sub_u32(55279u, 1u)), 24u)] * 1358f), vec2<f32>(956f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1433f + global2[_wgslsmith_index_u32(0u, 24u)]))))));
    var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(5287u, _wgslsmith_div_u32(45447u, 30106u), abs(1u), 0u)), vec4<u32>(1u, 1u, 1u, 1u)) >> (~0u % 32u);
    var var_3 = true;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -999f;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(countOneBits(u_input.a)), firstTrailingBit(~u_input.a)), u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -1i), u_input.a.ww));
    let var_2 = Struct_4(Struct_1(global0.x, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 24u)] * 1000f)))) * _wgslsmith_f_op_f32(round(515f))), 74133u, true == !func_1(var_1.x ^ -2278i));
    global2 = array<f32, 24>();
    let var_3 = Struct_2(~firstTrailingBit(~vec4<u32>(var_2.c, 6000u, 21412u, 0u)) >> (_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c)), vec4<u32>(~var_2.c, var_2.c, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_2.c, 118417u)))) % vec4<u32>(32u)), func_2(Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c), min(vec4<u32>(4294967295u, var_2.c, 0u, 1u), vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c))), var_2.a, vec4<u32>(~1759u, ~var_2.c, ~var_2.c, _wgslsmith_mult_u32(var_2.c, var_2.c))), var_2, ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8426u, var_2.c), vec3<u32>(86761u, var_2.c, 6649u)), ~17518u), select(vec4<bool>(!global0.x, global0.x, false, global0.x), vec4<bool>(true, true, true, true), false)), abs(vec4<u32>(firstTrailingBit(min(33174u, var_2.c)), ~(~var_2.c), ~var_2.c, 63870u)));
    var_1 = u_input.a.yz;
    global0 = vec4<bool>(!all(vec3<bool>(false, true, func_2(var_3, var_2, var_3.c.x, vec4<bool>(false, false, var_2.d, global0.x)).b)), false, global0.x, global0.x);
    let var_4 = -98787i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2[_wgslsmith_index_u32(12539u, 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.c, 24u)]))), global2[_wgslsmith_index_u32(~27636u, 24u)])), 11017u);
}

