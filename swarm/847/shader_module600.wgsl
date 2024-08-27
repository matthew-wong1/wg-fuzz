struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<i32>(-1i, -33713i, 0i), -1000f, vec3<u32>(22794u, 67141u, 16301u));

var<private> global3: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(countOneBits(0u), abs(arg_1.a)), arg_1.b, 266f, arg_2.d);
    let var_1 = Struct_1(min(abs(max(var_0.d.x, global2.d.x)) | global2.d.x, _wgslsmith_div_u32(arg_1.a, 0u)), vec3<i32>(arg_3.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b.x, var_0.b.x, 27866i) << (vec3<u32>(arg_2.d.x, arg_0.a, 26537u) % vec3<u32>(32u))), (arg_0.b & global2.b) ^ ~arg_0.b), arg_0.b.x | ((i32(-1i) * -2147483647i) << (global2.d.x % 32u))), -1000f, arg_0.d);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-(~9488i), arg_0.b.x, var_1.b.x), vec3<i32>(-1i, -16160i, -u_input.a) | countOneBits(_wgslsmith_clamp_vec3_i32(arg_0.b, vec3<i32>(arg_3.x, -2147483647i, 1i), global2.b))), vec3<i32>(~(~(-20601i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 5346i, -2147483647i) | vec3<i32>(-1i, arg_3.x, -32854i), vec3<i32>(0i, var_0.b.x, arg_1.b.x)), -17914i));
    let var_3 = Struct_1(_wgslsmith_div_u32(var_1.d.x, ~18468u), ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, arg_0.b.x, u_input.c), vec3<i32>(var_1.b.x, arg_2.b.x, 0i)), arg_1.b.x ^ arg_1.b.x, -48803i), var_1.b), -489f, ~arg_2.d);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + -1842f), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.c, var_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f - global2.c))))), _wgslsmith_f_op_f32(f32(-1f) * -959f));
    return var_3.a;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    let var_0 = global2.b;
    let var_1 = Struct_1(min(arg_1.x << (func_3(Struct_1(28564u, vec3<i32>(-2147483647i, u_input.a, global2.b.x), 1405f, vec3<u32>(0u, global2.a, arg_1.x)), Struct_1(arg_1.x, global2.b, global2.c, global2.d), Struct_1(arg_1.x, vec3<i32>(-16961i, -1i, global2.b.x), global2.c, vec3<u32>(4294967295u, arg_1.x, global2.a)), abs(global2.b)) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(26883u, 11277u), func_3(Struct_1(9421u, vec3<i32>(global2.b.x, var_0.x, u_input.a), global2.c, global2.d), Struct_1(arg_1.x, global2.b, global2.c, vec3<u32>(109653u, arg_1.x, arg_1.x)), Struct_1(arg_1.x, vec3<i32>(1i, 20579i, -15740i), global2.c, vec3<u32>(115309u, arg_1.x, 37000u)), global2.b)) << (min(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 0u, arg_1.x), vec4<u32>(62u, global2.a, 36192u, 91008u))) % 32u)), vec3<i32>(global2.b.x, countOneBits(min(0i, var_0.x)) >> (9788u % 32u), 9344i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(713f + 1091f))), ~firstTrailingBit(~global2.d) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, global2.d.x) & countOneBits(global2.d), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 57026u), vec3<u32>(arg_1.x, 7449u, 36402u)))) % vec3<u32>(32u)));
    let var_2 = arg_0;
    global1 = array<vec3<f32>, 22>();
    var var_3 = -32158i;
    return _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-927f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.c)))) - _wgslsmith_f_op_f32(f32(-1f) * -1261f))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> u32 {
    global3 = array<vec3<bool>, 17>();
    return 47428u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<f32> {
    global1 = array<vec3<f32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_0 = func_4(arg_3, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(952f + _wgslsmith_f_op_f32(func_2(false, arg_0.yw))))))));
    var var_1 = arg_3;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(func_4(Struct_1(arg_2.x, ~arg_3.b, _wgslsmith_f_op_f32(-global2.c), global2.d), !(585f != arg_3.c), _wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(sign(1813f)))), arg_0.x), ~(~(~(~var_0))), 10783u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.c, arg_3.c), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(244f * 906f))), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, 198f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(694f, _wgslsmith_f_op_f32(max(global2.c, global2.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(4294967295u, global2.d.x, 21203u, global2.a), vec4<f32>(-1122f, 358f, 1000f, 742f), vec3<u32>(global2.a, 59857u, global2.a), Struct_1(5266u, vec3<i32>(u_input.d, global2.b.x, 0i), 542f, vec3<u32>(global2.d.x, 1u, 1u)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.c) * vec2<f32>(-663f, global2.c))), true))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.c)), vec2<bool>(true, true))))));
    let var_1 = false;
    global2 = Struct_1(_wgslsmith_sub_u32(~1u, ~(_wgslsmith_add_u32(global2.d.x, 0u) & 0u)), reverseBits(vec3<i32>(-_wgslsmith_dot_vec2_i32(global2.b.zx, global2.b.zx), firstLeadingBit(~u_input.c), 29039i << (_wgslsmith_dot_vec4_u32(vec4<u32>(58476u, 4294967295u, 62146u, global2.d.x), vec4<u32>(0u, 1u, 1u, global2.a)) % 32u))), _wgslsmith_f_op_f32(-global2.c), countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.d.x, global2.a, 27247u) << (global2.d % vec3<u32>(32u)), countOneBits(global2.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, global2.d.x, global2.a), vec3<u32>(global2.d.x, 22299u, 156167u)))));
    global2 = Struct_1(~(~19419u), global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(535f)))))), firstTrailingBit(global2.d));
    global3 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1711f, global2.c, var_0.x, -355f) * vec4<f32>(global2.c, 734f, 832f, global2.c)), vec4<f32>(var_0.x, 1000f, var_0.x, 579f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, var_0.x, 541f, 1326f)))), false))), abs(-2147483647i), select(~global2.d.yy, global2.d.yz, !select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1))) | _wgslsmith_mult_vec2_u32(~(~global2.d.zz), global2.d.xz), 568f);
}

