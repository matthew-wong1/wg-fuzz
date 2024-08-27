struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, true, 39431u), Struct_1(false, false, 0u), Struct_1(true, false, 0u), Struct_1(true, true, 54000u), Struct_1(false, true, 155938u), Struct_1(false, false, 7128u), Struct_1(true, true, 81215u));

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_1 = Struct_1(false, false, 5189u);

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global3 = global4[_wgslsmith_index_u32(global3.c, 19u)];
    global3 = global4[_wgslsmith_index_u32(u_input.b, 19u)];
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(4294967295u, ~1u)), u_input.e);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_sub_u32(func_3(), u_input.e);
    let var_1 = _wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-843f * global2.x), global2.x)));
    let var_2 = _wgslsmith_sub_u32(abs(~_wgslsmith_clamp_u32(5485u, global3.c, u_input.e)) ^ 56127u, _wgslsmith_clamp_u32(1u << (u_input.b % 32u), _wgslsmith_add_u32(global3.c, u_input.a.x), 2302u));
    let var_3 = Struct_1(any(!select(vec4<bool>(global3.a, global3.b, false, global3.a), vec4<bool>(false, true, global3.a, true), !global3.b)), all(select(!(!vec4<bool>(true, true, true, global3.a)), vec4<bool>(all(vec3<bool>(global3.b, true, global3.a)), true, !global3.a, false), all(vec3<bool>(global3.a, global3.a, false)))), ~(~u_input.b));
    global0 = array<Struct_1, 7>();
    return countOneBits(_wgslsmith_add_i32(~firstTrailingBit(2147483647i), u_input.d));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_div_i32(~func_2(u_input.c.x), ~u_input.d));
    let var_2 = max(~(-_wgslsmith_mod_vec4_i32(abs(arg_0), vec4<i32>(9849i, u_input.c.x, u_input.d, 2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 2147483647i, arg_0.x, 7346i) >> (vec4<u32>(4294967295u, abs(arg_1.c), ~0u, 11792u) % vec4<u32>(32u)), arg_0));
    global4 = array<Struct_1, 19>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)) + -609f)));
    return Struct_1(arg_1.a, true, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(5805u, 42077u)), 42398u, global3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), u_input.a.wzx) | ~global3.c), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, ~global3.c, abs(53428u), countOneBits(global3.c)), vec4<u32>(global3.c, 0u, 1u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(10886i, 1i, 0i, -17142i), firstLeadingBit(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.d))), select(-vec4<i32>(28780i, 0i, u_input.d, 18822i), abs(vec4<i32>(u_input.c.x, -30194i, -2147483647i, u_input.d)), vec4<bool>(true, global3.a, global3.a, true))) & ~vec4<i32>(min(2147483647i, 0i), u_input.c.x, u_input.d, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.d, u_input.c.x))), global0[_wgslsmith_index_u32(7635u, 7u)]);
    global3 = global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global3.c)), 7u)];
    var var_0 = func_1(_wgslsmith_clamp_vec4_i32(min(~(~vec4<i32>(2147483647i, 14752i, -22560i, 40572i)), _wgslsmith_div_vec4_i32(~vec4<i32>(30310i, 39942i, 0i, 0i), -vec4<i32>(u_input.c.x, -24662i, u_input.d, u_input.c.x))), vec4<i32>(u_input.d, 18420i, select(u_input.d, u_input.d, global3.b), ~1i) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(-2245i, u_input.d, u_input.c.x, u_input.c.x), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), ~select(abs(vec4<i32>(u_input.c.x, u_input.d, 2147483647i, -35420i)), vec4<i32>(-22466i, u_input.d, u_input.d, 2147483647i), !vec4<bool>(false, global3.b, global3.b, true))), global0[_wgslsmith_index_u32(~0u & ~(~(~u_input.b)), 7u)]);
    var_0 = func_1(_wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)), select(vec4<i32>(-4344i, u_input.d, u_input.d, u_input.d), ~vec4<i32>(1809i, u_input.d, u_input.d, -1i), true)) >> (u_input.a % vec4<u32>(32u)), global0[_wgslsmith_index_u32(6343u, 7u)]);
    var_0 = func_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i >> (global3.c % 32u), _wgslsmith_mod_i32(u_input.d, u_input.d), -u_input.d, u_input.d << (1u % 32u)), vec4<i32>(u_input.d >> (u_input.b % 32u), 1i, 1i ^ u_input.c.x, i32(-1i) * -27840i) ^ _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.d, 35478i, u_input.d, -2147483647i), vec4<i32>(2147483647i, u_input.d, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(69074i, -15222i, u_input.d, 2147483647i), select(vec4<i32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, u_input.d, 2147483647i), vec4<bool>(var_0.a, global3.a, var_0.b, var_0.a))))), global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(var_0.c, _wgslsmith_clamp_u32(var_0.c, 35625u, 0u))), 19u)]);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c, ~(~4828u), _wgslsmith_clamp_u32((_wgslsmith_div_u32(9801u, var_0.c) ^ _wgslsmith_div_u32(u_input.a.x, global3.c)) >> (u_input.b % 32u), max(global3.c, var_0.c), ~(var_0.c << (var_0.c % 32u)))), 7u)];
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -1287f) * _wgslsmith_div_f32(1418f, global2.x)))), 1333f, ~18525u, _wgslsmith_add_vec2_u32(~vec2<u32>(~var_0.c, countOneBits(global3.c)), ~select(u_input.a.yw, min(vec2<u32>(4294967295u, global3.c), vec2<u32>(1u, var_0.c)), select(vec2<bool>(var_1.b, false), vec2<bool>(true, true), var_0.a))));
}

