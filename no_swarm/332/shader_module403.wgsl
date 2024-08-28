struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(1015f, 672f, 375f, 928f);

var<private> global3: array<f32, 27> = array<f32, 27>(1730f, -1439f, 406f, 853f, 376f, 712f, 755f, 106f, -1000f, -111f, 712f, -539f, -545f, -342f, 812f, -1000f, -1572f, -2024f, -617f, -113f, 678f, 596f, -1865f, 351f, -856f, -178f, 689f);

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, global0.a.a.x, arg_0.c.c.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, global3[_wgslsmith_index_u32(arg_1, 27u)], global0.a.a.x, 188f)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-513f, 1131f, 596f, global3[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(global0.a.a.x, global3[_wgslsmith_index_u32(1u, 27u)], -1750f, 225f), true)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, 1049f, global3[_wgslsmith_index_u32(0u, 27u)], global0.a.a.x), vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 27u)], global2.x, global0.a.a.x, global0.a.a.x), vec4<bool>(true, true, false, false))))))));
    var var_0 = vec3<u32>(arg_1, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 5723u, 1u, u_input.c), countOneBits(vec4<u32>(4686u, 24791u, u_input.b, arg_0.c.a))), arg_1), abs(~arg_1));
    var var_1 = global0.a;
    global1 = true;
    var var_2 = global0.a;
    return 17027u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    return ~(~1u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_1(func_4((~1u == func_3(Struct_2(vec3<f32>(global3[_wgslsmith_index_u32(34606u, 27u)], global0.a.a.x, global0.a.a.x), global2.xx, Struct_1(55365u, 2147483647i, global0.a.a.zy), vec3<f32>(global3[_wgslsmith_index_u32(1u, 27u)], -1015f, 442f)), arg_2.x)) && true, Struct_1(43816u, -65773i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.xz, vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 27u)], -694f))))), -global0.c >> (((arg_0 | vec2<u32>(arg_2.x, 1u)) ^ arg_0) % vec2<u32>(32u)), 17360u), -38641i, vec2<f32>(-1680f, global0.a.a.x));
    var var_1 = Struct_4(global0.a, max(0i, firstTrailingBit(1i)), global0.c, u_input.a >> (_wgslsmith_clamp_u32(max(~u_input.b, u_input.c), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, var_0.a, arg_2.x), var_0.a), abs(~u_input.a)) % 32u));
    let var_2 = firstTrailingBit(arg_0.x);
    var var_3 = reverseBits(vec2<i32>(~(-2684i), -30097i));
    var var_4 = max(~vec2<i32>(var_1.b, _wgslsmith_mod_i32(-2147483647i, 33764i)) ^ _wgslsmith_sub_vec2_i32(~global0.c << (_wgslsmith_clamp_vec2_u32(arg_0, arg_0, vec2<u32>(global0.d, global0.d)) % vec2<u32>(32u)), select(global0.c, vec2<i32>(4079i, arg_1.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.b, 2147483647i, -arg_1.x), min(25726i, var_3.x) | 13211i, _wgslsmith_dot_vec3_i32(arg_1, ~vec3<i32>(-1i, arg_1.x, 1i))), 25943i));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.a.x, -274f), 973f, all(vec2<bool>(false, true)))) * var_0.c.x), _wgslsmith_f_op_f32(select(-2033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(599f))), _wgslsmith_f_op_f32(global2.x - var_0.c.x) >= _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_1.d, 27u)], 1120f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1441f, var_0.c.x) * var_0.c.x)), vec3<f32>(var_1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a.a.x)), 1182f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.x, 27u)] - -430f) - -983f)))), !(!any(vec4<bool>(true, true, true, true)))));
}

fn func_1(arg_0: Struct_5) -> vec2<u32> {
    global3 = array<f32, 27>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-224f, _wgslsmith_f_op_f32(480f * global3[_wgslsmith_index_u32(4294967295u, 27u)]), global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.a, vec3<f32>(224f, 1000f, 381f)) - _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.a))))) - global2.yzz), global0.a.a.zx, Struct_1(u_input.a, -max(reverseBits(1i), _wgslsmith_div_i32(0i, 20728i)), _wgslsmith_f_op_vec2_f32(-global2.ww)), _wgslsmith_f_op_vec3_f32(func_2(~reverseBits(~vec2<u32>(global0.d, u_input.b)), abs(~vec3<i32>(-2147483647i, global0.b, 26503i)), vec2<u32>(firstTrailingBit(u_input.c ^ 0u), 26778u))));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.a, 0u), vec2<u32>(u_input.c, 70597u)), vec3<i32>(var_0.c.b, -2147483647i, -25846i), vec2<u32>(var_0.c.a, 4294967295u))))), global0.c.x, -vec2<i32>(-global0.c.x, firstTrailingBit(-global0.b)), func_4(any(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x), !vec4<bool>(arg_0.c.x, arg_0.c.x, true, true))), Struct_1(abs(0u), 30296i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(930f, global0.a.a.x))))), -min(-vec2<i32>(var_0.c.b, global0.c.x), -vec2<i32>(-49274i, 2147483647i)), (u_input.c << ((8085u << (u_input.b % 32u)) % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, u_input.a) & vec2<u32>(22399u, var_0.c.a), vec2<u32>(u_input.c, var_0.c.a) ^ vec2<u32>(0u, global0.d))));
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(var_0.c.a, 27841u)), 27u)];
    var var_3 = vec4<bool>(arg_0.c.x, 4294967295u >= func_4(global0.b >= var_1.c.x, var_0.c, vec2<i32>(var_1.c.x, ~1806i), 1u), !(!(!(var_1.c.x <= var_1.c.x))), select(arg_0.c.x, true, true));
    return (vec2<u32>(var_0.c.a, ~(~var_1.d)) << (vec2<u32>(1u, reverseBits(_wgslsmith_sub_u32(0u, var_0.c.a))) % vec2<u32>(32u))) & min(_wgslsmith_div_vec2_u32(~select(vec2<u32>(var_1.d, var_0.c.a), vec2<u32>(0u, var_0.c.a), false), ~abs(vec2<u32>(6546u, global0.d))), ~vec2<u32>(4294967295u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 27>();
    global4 = _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(func_1(Struct_5(Struct_3(vec3<f32>(1040f, global3[_wgslsmith_index_u32(66u, 27u)], -260f)), Struct_3(vec3<f32>(global3[_wgslsmith_index_u32(52428u, 27u)], global0.a.a.x, global2.x)), vec2<bool>(false, false))), max(vec2<u32>(65262u, global0.d), vec2<u32>(53039u, 22428u))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(78337u, global0.d), vec2<u32>(u_input.a, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 7074u), vec2<u32>(u_input.c, 25491u))))), reverseBits(vec2<u32>(abs(global0.d), func_3(Struct_2(vec3<f32>(global0.a.a.x, 1000f, global3[_wgslsmith_index_u32(48893u, 27u)]), global0.a.a.xy, Struct_1(u_input.c, global0.b, vec2<f32>(global2.x, -1295f)), global0.a.a), ~17828u))));
    global4 = 4294967295u;
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_2(~(~vec2<u32>(global0.d, u_input.c)), (abs(vec3<i32>(-25445i, 0i, 16264i)) ^ vec3<i32>(-1i, -2147483647i, global0.b)) ^ select(vec3<i32>(global0.c.x, global0.b, -25083i), select(vec3<i32>(global0.b, global0.b, global0.b), vec3<i32>(global0.b, -48158i, global0.b), vec3<bool>(true, false, true)), vec3<bool>(false, true, false)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(62766u, global0.d), ~vec2<u32>(52229u, 0u), vec2<u32>(countOneBits(u_input.c), ~u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(0i, min(-2147483647i, global0.b), _wgslsmith_mod_u32(32941u, u_input.a) == ~77414u), vec4<i32>(-1i) * -(-vec4<i32>(global0.c.x, global0.c.x, 50823i, 1i) & vec4<i32>(global0.c.x, 37597i, global0.c.x, global0.c.x)));
}

