struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 15>;

var<private> global4: array<Struct_4, 2>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_sub_vec2_u32(select(u_input.a.xy, vec2<u32>(4294967295u, global2.b.x) | global2.b.xy, global2.a.xw), min(_wgslsmith_mod_vec2_u32(min(u_input.b.xy, global2.c.zz), global2.c.zy), _wgslsmith_add_vec2_u32(reverseBits(u_input.b.zx), select(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, u_input.b.x), vec2<bool>(global2.a.x, global2.a.x))))) >> (~(~firstTrailingBit(global2.b.ww)) % vec2<u32>(32u));
    let var_1 = Struct_3(Struct_1(global3[_wgslsmith_index_u32(54463u, 15u)], global2.b, u_input.b, global2.d, 4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.d * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-656f, -1284f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.d))))) - _wgslsmith_f_op_vec2_f32(-global2.d));
    global1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(22069u), 86423u) >> (vec2<u32>(var_1.a.c.x, u_input.b.x) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(select(global2.c.x, 25672u, true), 63611u), countOneBits(global2.b.ww))));
    var var_3 = vec2<i32>(~(~(-69039i)), 16790i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.d.x, _wgslsmith_div_f32(var_1.a.d.x, 400f)))))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = -(~vec3<i32>(15892i, _wgslsmith_sub_i32(global0.x, global0.x) | abs(global0.x), i32(-1i) * -global0.x));
    var var_1 = Struct_3(Struct_1(!vec4<bool>(false, !global2.a.x, global2.a.x, true), vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 22249u, firstTrailingBit(arg_0.x), 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 42540u), global2.b)), vec3<u32>(100753u << (0u % 32u), 2377u, _wgslsmith_clamp_u32(~u_input.b.x, 39257u, ~arg_0.x)), vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d.x * -537f), _wgslsmith_f_op_f32(-global2.d.x)))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 47595u, arg_0.x, u_input.a.x), ~vec4<u32>(global2.c.x, 35065u, 1u, global2.e)), 0u)));
    var_1 = Struct_3(var_1.a);
    var_1 = Struct_3(Struct_1(!vec4<bool>(global2.a.x, true, !global2.a.x, var_1.a.a.x || false), global2.b, ~(~(vec3<u32>(29068u, 1u, 1u) & u_input.a.ywx)), _wgslsmith_f_op_vec2_f32(func_3()), ~(~(~u_input.a.x))));
    let var_2 = global2.d.x;
    return (reverseBits(~(~var_1.a.c)) & vec3<u32>(~_wgslsmith_mod_u32(7241u, 15739u), var_1.a.e, _wgslsmith_mod_u32(arg_0.x, arg_0.x))) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(var_1.a.e, global2.e), arg_0.x), vec3<u32>(global2.e, 43231u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.c.x, 33438u), vec2<u32>(42431u, 21458u)))) & _wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a.x, global2.b.x, arg_0.x)), ~global2.c)) % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-189f, global2.d.x, 1733f)));
    global2 = Struct_1(!(!(!select(vec4<bool>(global2.a.x, true, global2.a.x, false), global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(978u, 15u)]))), ~(~(~_wgslsmith_div_vec4_u32(u_input.a, global2.b))), _wgslsmith_mod_vec3_u32(countOneBits(func_2(global2.b)), global2.c) | max(vec3<u32>(global2.c.x | 4294967295u, global2.c.x ^ arg_0.x, ~4294967295u), u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.d))), vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(trunc(-1097f)))), arg_0.x & ~arg_0.x);
    var var_1 = Struct_2(Struct_1(select(global3[_wgslsmith_index_u32(~u_input.b.x, 15u)], vec4<bool>(true, global2.a.x, false, arg_0.x == global2.b.x), vec4<bool>(true, true != global2.a.x, !global2.a.x, true)), _wgslsmith_add_vec4_u32(u_input.a, ~(vec4<u32>(91505u, 1u, u_input.b.x, 4294967295u) | vec4<u32>(1u, u_input.a.x, 103243u, 13328u))), ~vec3<u32>(select(4294967295u, u_input.b.x, global2.a.x), u_input.b.x, ~4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.yx, vec2<f32>(var_0.x, global2.d.x), global2.a.yz)) + var_0.yz) - global2.d), max(53309u, ~arg_0.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-21395i, _wgslsmith_mod_i32(global0.x, global0.x), -3505i), abs(global0.x)) > global0.x, ~global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f + -626f)) + _wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_mod_vec2_u32(u_input.a.wx, _wgslsmith_add_vec2_u32(global2.b.zy, arg_0) | vec2<u32>(arg_0.x, 1u)) >> (arg_0 % vec2<u32>(32u)));
    return vec2<f32>(-2056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d.x, _wgslsmith_f_op_f32(-1399f * -401f), global2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.d, global2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global2.d.x) * global2.d) + _wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(func_1(u_input.a.xy, global2.d.x))))));
    var var_1 = global0.x;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(-2888f * var_0.x));
    global2 = Struct_1(!vec4<bool>(true, global2.a.x, any(vec2<bool>(global2.a.x, global2.a.x)) | any(vec3<bool>(global2.a.x, false, global2.a.x)), true), select(~vec4<u32>(global2.b.x, 356u, global2.e, reverseBits(u_input.a.x)), firstTrailingBit(~vec4<u32>(0u, 0u, global2.b.x, u_input.b.x)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(19840u, u_input.b.x, 4294967295u, u_input.a.x), global2.b) % vec4<u32>(32u)), select(vec4<bool>(select(false, global2.a.x, false), var_0.x >= var_0.x, false, true), vec4<bool>(29153i > global0.x, true, true, all(vec2<bool>(global2.a.x, false))), vec4<bool>(true, false, select(false, global2.a.x, false), true))), vec3<u32>(func_2(_wgslsmith_div_vec4_u32(abs(global2.b), select(global2.b, global2.b, global2.a.x))).x, 59147u, ~(49580u >> (_wgslsmith_mult_u32(92265u, global2.c.x) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(699f, 641f), vec2<f32>(1341f, _wgslsmith_f_op_f32(round(global2.d.x)))))), ~select(1u, ~global2.e, true) << (global2.b.x % 32u));
    global1 = u_input.b.x;
    let var_2 = Struct_1(global2.a, countOneBits(global2.b), _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(u_input.a.x, 0u, global2.c.x)), select(_wgslsmith_sub_vec3_u32(~vec3<u32>(11319u, 0u, global2.e), max(vec3<u32>(1u, global2.c.x, global2.b.x), global2.c)), firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.b, global2.c)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)), ~_wgslsmith_clamp_u32(2066u, ~26870u, ~20613u) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.e, global2.e), global2.b.xy), ~u_input.a.yw) % 32u));
    var var_3 = vec2<bool>(true, !var_2.a.x);
    global0 = -(~(vec2<i32>(-1i) * -countOneBits(vec2<i32>(-2147483647i, global0.x))));
    let var_4 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_mod_i32(-_wgslsmith_add_i32(var_4, -1i), countOneBits(var_4)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1198f, global2.d.x, var_2.d.x, 124f), vec4<f32>(global2.d.x, var_2.d.x, -571f, global2.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -367f, var_2.d.x, -275f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1016f, var_0.x, global2.d.x, var_2.d.x), vec4<f32>(1415f, -367f, var_0.x, var_2.d.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(335f, global2.d.x, var_0.x, global2.d.x) * vec4<f32>(global2.d.x, var_0.x, -1044f, var_2.d.x)), select(vec4<bool>(var_3.x, true, false, true), vec4<bool>(var_2.a.x, var_3.x, global2.a.x, var_2.a.x), vec4<bool>(true, var_2.a.x, false, true))))))));
}

