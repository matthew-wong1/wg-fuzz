struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-2032f, -485f, -667f), vec4<u32>(11636u, 18303u, 10553u, 32500u), vec3<bool>(false, false, false), vec4<u32>(0u, 1u, 4294967295u, 18072u), vec4<f32>(-241f, 2350f, 164f, 1000f));

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, false, true, true, true, false, false, true, false, true, false, true, false, true, true, false, true, true, true, true, true, false);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-1732f, 198f, -983f), vec4<u32>(77458u, 62564u, 0u, 41809u), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<f32>(-1068f, 1452f, 508f, -715f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * global3.a) * _wgslsmith_f_op_vec3_f32(max(arg_0.e.zzy, vec3<f32>(-508f, var_0.e.x, arg_0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 215f, global0.e.x)), arg_0.a))), true)), global0.d, var_0.c, vec4<u32>(global0.d.x, ~32151u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~977u, _wgslsmith_add_u32(var_0.b.x, global3.d.x)), ~_wgslsmith_clamp_u32(var_0.d.x, 38940u, 0u)), ~u_input.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)))))));
    let var_1 = global3.c;
    var var_2 = !select(select(select(select(global0.c.zy, vec2<bool>(var_0.c.x, true), global1.c.yz), vec2<bool>(true, var_1.x), select(vec2<bool>(global0.c.x, false), vec2<bool>(global3.c.x, false), global3.c.x)), select(select(var_1.zy, vec2<bool>(true, var_0.c.x), var_1.x), global0.c.yz, !global0.c.zz), global1.c.x), vec2<bool>(true && (global1.c.x & var_0.c.x), !all(vec4<bool>(global1.c.x, false, false, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-415f, global3.e.x) * _wgslsmith_f_op_f32(-3311f * 267f)) < _wgslsmith_f_op_f32(f32(-1f) * -904f));
    return ~_wgslsmith_div_u32(u_input.c.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, global0.d.x, global1.b.x, var_0.b.x) << (arg_0.d % vec4<u32>(32u)), countOneBits(vec4<u32>(4294967295u, 34361u, u_input.a.x, arg_0.b.x))), _wgslsmith_sub_u32(global3.d.x, global3.b.x)));
}

fn func_2() -> i32 {
    global0 = Struct_1(global3.a, countOneBits(~(~(~global1.d))), select(global3.c, global0.c, !global1.c), vec4<u32>(12017u & _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.d.x, global0.d.x, 55670u), global3.b.xxz), ~_wgslsmith_mult_u32(89329u, u_input.c.x) << (func_3(Struct_1(global0.a, global0.d, vec3<bool>(global1.c.x, true, global1.c.x), global1.d, vec4<f32>(global1.e.x, global3.e.x, 1000f, global3.e.x))) % 32u), 1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(min(global0.b, vec4<u32>(8008u, 1u, global0.b.x, u_input.a.x)), ~vec4<u32>(global1.d.x, 4294967295u, global3.d.x, 1u)))), global0.e);
    var var_0 = 1000f;
    var var_1 = select(!vec3<bool>(false, global3.c.x, _wgslsmith_f_op_f32(-global3.a.x) >= _wgslsmith_f_op_f32(ceil(-1940f))), select(global0.c, !vec3<bool>(true, !global3.c.x, true), vec3<bool>(!select(global1.c.x, true, global3.c.x), !global3.c.x, true)), all(global3.c.yz));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_u32(~(~global0.d.x) | 98175u, ~_wgslsmith_sub_u32(64213u, func_3(Struct_1(global3.a, vec4<u32>(global3.b.x, u_input.a.x, 37565u, 41531u), vec3<bool>(global1.c.x, global0.c.x, global0.c.x), vec4<u32>(2329u, 27934u, 1u, global1.d.x), vec4<f32>(global1.e.x, 459f, global1.e.x, 644f)))), 0u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(702f, global1.e.x, global1.a.x) * global3.e.wxx))), abs(firstTrailingBit(~global0.d ^ firstTrailingBit(global0.d))), global3.c, ~(_wgslsmith_div_vec4_u32(~global1.d, ~global1.d) | vec4<u32>(~global1.b.x, u_input.c.x, abs(var_2), u_input.c.x << (39734u % 32u))), global3.e);
    return u_input.b;
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global0.e.x, 509f)), _wgslsmith_f_op_f32(global3.a.x * global1.e.x), _wgslsmith_f_op_f32(min(-672f, global3.e.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.e.wxx), vec3<f32>(global3.e.x, -2124f, -876f)))), select(firstTrailingBit(~select(global0.d, global1.b, vec4<bool>(global3.c.x, false, global2[_wgslsmith_index_u32(1u, 23u)], true))), vec4<u32>(u_input.a.x, global1.d.x, ~_wgslsmith_sub_u32(54364u, 24285u), countOneBits(global1.d.x << (42235u % 32u))), select(!vec4<bool>(false, global0.c.x, true, false), vec4<bool>(42174u < global0.b.x, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(select(u_input.a.x, u_input.c.x, true), 23u)], false), !select(vec4<bool>(false, true, global3.c.x, global3.c.x), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], true, false), false))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.d, ~reverseBits(vec4<u32>(0u, 7955u, 72282u, 4294967295u))), 23u)], true, false), global0.d, _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(-global0.e)));
    let var_1 = _wgslsmith_mult_u32(global1.d.x, 6050u);
    let var_2 = true | global2[_wgslsmith_index_u32(~0u, 23u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.e.ywy, vec3<f32>(_wgslsmith_f_op_f32(floor(global3.e.x)), var_0.e.x, -212f), !(!(!global0.c.x)))), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 30966u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(11114u, global1.b.x, 1u, global1.d.x), vec4<u32>(1u, 1u, global0.d.x, 0u), vec4<u32>(36918u, global1.b.x, var_1, 25489u)))), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.d.x, 42943u), vec3<u32>(global0.d.x, 38076u, global1.d.x)), global0.b.x)), global0.d.x, u_input.a.x), !select(global0.c, !select(global1.c, vec3<bool>(false, true, false), false), false), vec4<u32>(var_1, 0u, countOneBits(countOneBits(~78777u)), ~var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-796f, global1.a.x) - _wgslsmith_f_op_f32(floor(-741f))), global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-768f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-631f, -1675f, false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global0.a.x, -724f, global1.e.x) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.e.x, 458f, global0.e.x, global0.e.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.a.x, -1130f, var_0.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, global3.e.x, 1025f, 376f) - vec4<f32>(var_0.a.x, global0.a.x, global3.a.x, 763f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global3.e.wyw), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.x, 36204u, 4294967295u, var_1), global0.d | var_3.d), ~global3.d.x), var_0.d.x, ~global3.b.x, 4294967295u), !var_0.c, ~(global0.d | (vec4<u32>(u_input.a.x, 1u, 29853u, var_0.d.x) << (global0.d % vec4<u32>(32u)))) ^ vec4<u32>(~var_3.d.x ^ 55955u, var_0.d.x, reverseBits(~1526u), ~(~4294967295u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, global3.e.x, -297f, 350f) - global3.e))), vec4<f32>(global3.a.x, 250f, _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(ceil(var_3.a.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(646f - -211f) * _wgslsmith_f_op_f32(1000f - global0.e.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.e.x, var_0.e.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = all(vec2<bool>(!all(vec2<bool>(true, global0.c.x)) | any(vec2<bool>(arg_0.c.x, global1.c.x)), true));
    var var_2 = _wgslsmith_f_op_f32(func_4(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(func_2(), u_input.b), _wgslsmith_div_i32(u_input.b ^ -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(4879i, -16645i, 0i, u_input.b), vec4<i32>(-27197i, u_input.b, u_input.b, 36018i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, 2147483647i)), ~(~(-1i))))));
    var var_3 = arg_0.b.xw;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.e.xyx))), reverseBits(~(~(global1.d & arg_0.b))), select(select(select(arg_0.c, !vec3<bool>(false, global3.c.x, true), global2[_wgslsmith_index_u32(4899u, 23u)]), !vec3<bool>(true, global1.c.x, arg_0.c.x), select(vec3<bool>(true, true, true), !global3.c, arg_0.c.x & arg_0.c.x)), global1.c, vec3<bool>(!(1i == u_input.b), global2[_wgslsmith_index_u32(select(0u, firstLeadingBit(var_0.d.x), false), 23u)], true)), global3.d ^ vec4<u32>(_wgslsmith_div_u32(83983u, var_3.x) << (global0.b.x % 32u), arg_0.b.x, ~0u & ~global1.b.x, func_3(Struct_1(var_0.a, vec4<u32>(var_3.x, var_0.d.x, 12083u, 41168u), arg_0.c, vec4<u32>(var_0.b.x, 24388u, 4294967295u, 47005u), vec4<f32>(arg_1.x, arg_2, global0.e.x, var_0.a.x))) | func_3(Struct_1(global1.a, vec4<u32>(global1.b.x, 44801u, u_input.a.x, var_3.x), vec3<bool>(true, false, global1.c.x), vec4<u32>(15399u, 1u, var_3.x, 94493u), vec4<f32>(2817f, global3.a.x, global0.a.x, -216f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.e, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, arg_2, global3.a.x, global0.a.x) - arg_0.e)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.e)))))));
    return vec3<bool>(true, all(select(!(!vec4<bool>(var_1, global0.c.x, true, var_1)), vec4<bool>(any(global3.c.zx), -816f < global1.a.x, var_0.c.x | global0.c.x, u_input.a.x > arg_0.b.x), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-1136f)), -306f, -432f), vec4<u32>(_wgslsmith_mod_u32(global3.b.x, 0u), global0.b.x, 4294967295u & global1.d.x, 48333u), !vec3<bool>(true, false, global0.c.x), ~(~vec4<u32>(u_input.a.x, global3.b.x, 62132u, 39883u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.e.yz + vec2<f32>(global1.e.x, 1000f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(global3.e.x, global0.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.x, -543f), vec2<f32>(global1.e.x, global3.a.x)))), -113f), select(select(global1.c, global3.c, (21421i | u_input.b) > -46379i), global0.c, select(global1.c.x, func_2() == 1i, false)), vec3<bool>(~10634u > _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.b.x, 47221u), global1.d.x), all(vec3<bool>(true, true, true)) || !(false || global1.c.x), !select(global1.c.x, false, true)));
    var var_1 = _wgslsmith_clamp_i32(-u_input.b, _wgslsmith_add_i32(_wgslsmith_div_i32(-(~40383i), ~u_input.b | 0i), max(u_input.b, firstLeadingBit(u_input.b))), firstLeadingBit(~abs(1i)));
    let var_2 = global3.b.yyw;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, 2531f, -776f)) * _wgslsmith_f_op_vec3_f32(-global3.e.xwz))))), ~vec4<u32>(~_wgslsmith_mult_u32(13023u, global0.b.x), 39246u, 0u, _wgslsmith_clamp_u32(~70598u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(65042u, global0.d.x)), 103281u | var_2.x)), global0.c, global0.d, _wgslsmith_f_op_vec4_f32(-global3.e));
    let var_4 = var_3;
    var var_5 = select(vec4<bool>(any(global0.c), select(!select(global1.c.x, global3.c.x, var_0.x), true, u_input.b < u_input.b), select(_wgslsmith_div_u32(var_2.x, global1.b.x) >= global3.d.x, global1.c.x, select(!global3.c.x, global1.c.x, var_3.c.x)), true), select(vec4<bool>(true, false, all(!vec4<bool>(global0.c.x, true, false, global1.c.x)), var_0.x), !(!vec4<bool>(true, global3.c.x, false, false)), true), vec4<bool>((!global2[_wgslsmith_index_u32(1u, 23u)] & any(vec4<bool>(false, false, true, false))) | true, true, !(!any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false, false))), u_input.b <= max(_wgslsmith_add_i32(-35285i, u_input.b), reverseBits(0i))));
    let var_6 = var_3;
    global2 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(-vec4<i32>(1i, -98876i, min(u_input.b, u_input.b), 26101i))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~firstTrailingBit(u_input.c.xy), vec2<u32>(20507u, 4294967295u)), vec2<u32>(max(323u, 0u), ~global3.d.x) & u_input.c.xz), ~vec3<i32>(~(i32(-1i) * -2147483647i), ~countOneBits(-46453i), u_input.b), ~(~(~global0.d.yy)));
}

