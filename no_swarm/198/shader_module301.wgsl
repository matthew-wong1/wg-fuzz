struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(31826u, 40236u, 4294967295u, 4294967295u), vec4<u32>(644u, 65103u, 1u, 50831u), vec4<u32>(21716u, 1859u, 1u, 1u), vec4<u32>(1u, 1u, 40483u, 4294967295u), vec4<u32>(0u, 11508u, 48680u, 9353u), vec4<u32>(4294967295u, 4294967295u, 0u, 11063u), vec4<u32>(47044u, 13050u, 29607u, 81921u), vec4<u32>(4294967295u, 7151u, 1u, 53152u), vec4<u32>(23811u, 36570u, 0u, 17383u), vec4<u32>(12702u, 4294967295u, 5775u, 45996u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(16826u, 59021u, 1u, 3065u), vec4<u32>(4294967295u, 61518u, 54323u, 48137u), vec4<u32>(5467u, 49359u, 28660u, 9724u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(73491u, 1u, 0u, 111378u), vec4<u32>(0u, 4294967295u, 9044u, 0u), vec4<u32>(29449u, 4294967295u, 1u, 1u), vec4<u32>(12889u, 4294967295u, 40242u, 4294967295u), vec4<u32>(46277u, 0u, 39401u, 17652u), vec4<u32>(26135u, 10890u, 28314u, 0u), vec4<u32>(57009u, 21013u, 1u, 35495u), vec4<u32>(13965u, 1u, 30080u, 4294967295u), vec4<u32>(30432u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 106827u, 0u, 3049u));

var<private> global1: array<f32, 12>;

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: array<i32, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(countOneBits(vec2<i32>(_wgslsmith_mult_i32(0i, countOneBits(u_input.a)), _wgslsmith_sub_i32(u_input.a, global3[_wgslsmith_index_u32(84607u, 9u)]) ^ 0i)), all(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, select(true, false, true))), vec4<i32>(global3[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~global3[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_clamp_i32(5116i, global3[_wgslsmith_index_u32(48285u, 9u)], -7630i), i32(-1i) * -2147483647i), _wgslsmith_div_i32(-2147483647i, -1i)), -firstLeadingBit(-2147483647i), 0i), vec4<bool>(false, true, true, !all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var var_2 = vec3<f32>(global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(3560u, 4294967295u)) ^ reverseBits(0u)), 12u)], _wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(f32(-1f) * -759f));
    var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(~var_1.c.x, 0i), -u_input.a), var_1.b, vec4<i32>(0i, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(min(~76367u, _wgslsmith_clamp_u32(4294967295u, 9036u, 12013u)), 9u)], var_1.a.x, abs(~var_1.c.x)), global3[_wgslsmith_index_u32(1u, 9u)], ~select(-1i, abs(u_input.a), var_1.b)), vec4<bool>(var_1.d.x, true, any(vec2<bool>(!var_1.b, all(vec3<bool>(true, var_1.b, false)))), var_1.b));
    return 1u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(arg_0, 1389f)), 2047f, -301f))));
    let var_1 = Struct_4(false);
    let var_2 = Struct_5(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 0u), ~4294967295u), func_3()), min(4294967295u, firstLeadingBit(1984u))), 1u, Struct_4((_wgslsmith_f_op_f32(step(680f, global1[_wgslsmith_index_u32(51270u, 12u)])) <= _wgslsmith_f_op_f32(trunc(-219f))) | true));
    global0 = array<vec4<u32>, 27>();
    var var_3 = Struct_5(vec2<u32>(4294967295u, countOneBits(1u)), 1u, Struct_4(false));
    return Struct_2(_wgslsmith_f_op_vec4_f32(var_0 * var_0));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global2 = array<vec3<i32>, 31>();
    let var_0 = max(abs(vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~abs(46495u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 21147u, 1u) & global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 35147u, 1u), 27u)]), _wgslsmith_mod_u32(14650u, ~35398u)), reverseBits(reverseBits(firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u))))));
    global2 = array<vec3<i32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_0.x, 12u)] + global1[_wgslsmith_index_u32(var_0.x, 12u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 12u)] + global1[_wgslsmith_index_u32(58125u, 12u)]))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(21344u, 12u)]), global1[_wgslsmith_index_u32(1u, 12u)])))));
    global0 = array<vec4<u32>, 27>();
    return func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, ~1u), 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 27>();
    global3 = array<i32, 9>();
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(0u, ~28377u), 1u), 12u)], func_1(vec3<bool>(false, true, false)), vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true)), true, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), !(any(vec2<bool>(true, true)) == true)), firstTrailingBit(~(~34580u)) >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))) % 32u), func_1(vec3<bool>(true, (6754u >> (0u % 32u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 26220u, 1u), vec4<u32>(0u, 1u, 31632u, 0u)), all(vec3<bool>(true, true, true)))));
    let var_1 = Struct_4(all(var_0.c));
    global2 = array<vec3<i32>, 31>();
    var var_2 = _wgslsmith_div_f32(1052f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-951f)), _wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(f32(-1f) * -407f)))));
    let var_3 = ~(vec4<u32>(var_0.d, var_0.d, var_0.d, ~(1u << (var_0.d % 32u))) & vec4<u32>(4294967295u << (var_0.d % 32u), ~(~var_0.d), 13764u, var_0.d));
    var var_4 = var_3;
    global1 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~var_3.xz) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.d ^ var_4.x, 42223u), ~firstTrailingBit(vec2<u32>(var_0.d, 32585u))) % vec2<u32>(32u)), ~abs(vec2<i32>(-1i, -37881i)) >> (~(~reverseBits(vec2<u32>(46309u, var_3.x))) % vec2<u32>(32u)));
}

