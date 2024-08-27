struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: f32) -> bool {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(93206u, global1.b.a) ^ (0u | ~abs(arg_1.x)), 43953u, global1.d);
    var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, ~36760u, var_0.x), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(51192u, 4294967295u, 22974u), global1.b.a), arg_1.x, arg_1.x)), ~vec3<u32>((arg_1.x | global1.d) ^ arg_1.x, ~arg_1.x, max(global1.b.a, global1.d & 25173u)));
    var var_1 = vec4<bool>(any(global1.a), var_0.x == 4294967295u, all(!global1.a.wzw), any(global1.a));
    var var_2 = global1.b;
    let var_3 = global0[_wgslsmith_index_u32(global1.b.a, 18u)];
    return global1.a.x | any(select(select(vec4<bool>(arg_0, true, false, global1.a.x), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, false, var_1.x, true), global1.a), !vec4<bool>(false, false, true, arg_0)), !(!global1.a), false));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_div_i32(-(~1i), -arg_1.a);
    global1 = Struct_2(vec4<bool>(true, arg_3, false, false | func_3(!global1.a.x, ~vec2<u32>(global1.b.a, 1u), _wgslsmith_f_op_f32(-arg_0))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)), 4294967295u);
    var var_1 = ~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global1.b.a >> (4294967295u % 32u), ~global1.d)), ~(~vec2<u32>(56310u, 11563u)) >> (_wgslsmith_div_vec2_u32(min(vec2<u32>(global1.d, global1.d), vec2<u32>(50511u, 0u)), ~vec2<u32>(global1.d, 0u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c)))), arg_1.b, !(reverseBits(var_1.x) >= 38830u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -743f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b)) - arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(arg_1.b, 839f))) * 544f)));
    return reverseBits(vec4<i32>(~u_input.b.x, 8575i, u_input.a, countOneBits(19278i)));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global1 = Struct_2(select(select(global1.a, vec4<bool>(!global1.a.x, all(global1.a.wwz), !global1.a.x, true), any(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x))), !vec4<bool>(all(global1.a), false, true, global1.a.x), !global1.a.x), global1.b, global1.c, 0u);
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, -(arg_0.e.x & 1i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-17543i, arg_0.d), arg_0.e)), firstTrailingBit(arg_0.d ^ u_input.b.x)) >> (arg_0.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(func_2(_wgslsmith_div_f32(global1.c, global1.c), Struct_3(u_input.a | arg_0.e.x, _wgslsmith_f_op_f32(global1.c * global1.c)), !(!vec4<bool>(false, global1.a.x, false, true)), global1.a.x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, -2147483647i, 2147483647i, 16565i), -vec4<i32>(-2147483647i, -36691i, u_input.b.x, arg_0.d)), vec4<i32>(0i | arg_0.e.x, firstLeadingBit(u_input.b.x), max(21217i, u_input.a), arg_0.d)), max(vec4<i32>(7396i, -6055i, 35644i, _wgslsmith_add_i32(1i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 42559i, u_input.a, 15257i), func_2(global1.c, Struct_3(25022i, -2173f), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-677f + global1.c)))))));
    let var_2 = Struct_3(-13785i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 300f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    let var_3 = var_2;
    return var_2;
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, arg_0.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.b)))));
    global1 = Struct_2(!select(!vec4<bool>(false, true, global1.a.x, true), !(!vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x)), select(vec4<bool>(global1.a.x, true, global1.a.x, false), global1.a, false)), global1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(f32(-1f) * -526f))))), ~(~(~global1.b.a) ^ min(global1.b.a, ~41564u)));
    global0 = array<vec3<f32>, 18>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - -917f);
    var var_2 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(~4294967295u, firstTrailingBit(global1.d), global1.b.a), vec3<u32>(~4294967295u >> (_wgslsmith_add_u32(1u, global1.b.a) % 32u), global1.d, select(~0u, 8537u, true)));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(min(4294967295u, global1.b.a ^ 14104u), firstLeadingBit(17986u), global1.d), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(~var_2.zz, var_2.yz | var_2.yz), var_2.xy)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global1.c - global1.c), -1147f, global1.c), _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_4(global1.d, vec4<u32>(global1.b.a, global1.b.a, global1.b.a, 9u), vec3<u32>(global1.b.a, global1.d, 1u), u_input.a, u_input.b)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, 306f) - _wgslsmith_f_op_f32(-1029f - 597f)), _wgslsmith_f_op_f32(step(-357f, global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1894f - -578f)) - 883f), 561f, global1.c));
    let var_1 = _wgslsmith_sub_i32(max(~(i32(-1i) * -35095i), select(u_input.b.x, u_input.a, select(all(global1.a), global1.a.x, global1.a.x || true))), i32(-1i) * -1i);
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(global1.d), 18u)];
    global0 = array<vec3<f32>, 18>();
    let var_3 = global1.a;
    let var_4 = ~(-vec3<i32>(var_1, ~(-51333i), u_input.b.x));
    var_2 = _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a, 4294967295u, global1.d, ~global1.b.a), vec4<u32>(~global1.b.a, _wgslsmith_sub_u32(12208u, global1.b.a), global1.b.a, global1.b.a)), 18u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(~1u, 18u)])) - vec3<f32>(_wgslsmith_f_op_f32(1000f * 1809f), var_0.x, -710f)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_4(reverseBits(_wgslsmith_mult_u32(29669u, global1.d)), firstLeadingBit(abs(vec4<u32>(0u, 1u, global1.b.a, global1.d))), vec3<u32>(select(9880u, 1u, global1.a.x), global1.b.a | global1.b.a, _wgslsmith_div_u32(global1.b.a, global1.d)), _wgslsmith_clamp_i32(u_input.a >> (global1.b.a % 32u), u_input.b.x ^ u_input.b.x, -var_1), firstTrailingBit(u_input.b) ^ -vec2<i32>(1i, var_1))).b, ~(~vec2<u32>(_wgslsmith_mult_u32(global1.b.a, 47826u), _wgslsmith_mod_u32(41716u, 10323u))), 1f);
}

