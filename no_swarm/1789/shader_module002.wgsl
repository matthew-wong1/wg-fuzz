struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1256f, 1031f), true, 993f, vec4<u32>(42139u, 77596u, 0u, 1u), 1u);

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(548f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1112f))) - _wgslsmith_f_op_f32(f32(-1f) * -229f))), !global0.b, -1629f, global0.d << (global0.d % vec4<u32>(32u)), 1u);
    global0 = Struct_1(global0.a, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.c)), -198f))), -439f)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~39706u), _wgslsmith_dot_vec3_u32(global0.d.zyx, ~global0.d.xzy), ~0u & abs(global0.e), global0.e), ~_wgslsmith_mod_vec4_u32(global0.d << (vec4<u32>(66969u, 4294967295u, global0.e, global0.e) % vec4<u32>(32u)), max(vec4<u32>(1u, 12025u, global0.d.x, global0.e), vec4<u32>(global0.e, 4294967295u, 0u, global0.d.x)))), 4294967295u);
    global1 = select(vec3<bool>(global1.x, any(select(select(vec3<bool>(global1.x, global1.x, global0.b), vec3<bool>(global0.b, global1.x, global0.b), true), vec3<bool>(true, false, false), true)), global0.b), select(!select(!vec3<bool>(true, false, global1.x), vec3<bool>(true, false, global0.b), !vec3<bool>(global0.b, global0.b, global1.x)), select(!select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(true, true, false), true), vec3<bool>(true, any(vec3<bool>(global1.x, global0.b, true)), !global0.b), global0.c <= _wgslsmith_div_f32(global0.c, global0.a.x)), select(!vec3<bool>(global1.x, false, global0.b), select(select(vec3<bool>(true, true, global1.x), vec3<bool>(global0.b, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(true, true, global1.x), all(vec3<bool>(true, global1.x, true))), vec3<bool>(true, true, any(vec3<bool>(true, global0.b, global0.b))))), select(select(select(vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global0.b, global0.b, global1.x), true), vec3<bool>(false, true, global1.x)), !select(vec3<bool>(global0.b, true, global1.x), vec3<bool>(global0.b, true, global1.x), true), select(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, false, global0.b), vec3<bool>(false, true, global0.b)), select(vec3<bool>(global0.b, true, global1.x), vec3<bool>(true, false, global0.b), vec3<bool>(true, true, global1.x)), !global1.x)), vec3<bool>(global1.x, true, all(vec3<bool>(true, true, true))), global1.x | any(vec3<bool>(false, global0.b, false))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global0.a)), all(!global1.zx), _wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -171f), 521f)))), vec4<u32>(global0.d.x, 40402u, ~1u, global0.d.x | ~0u), global0.d.x);
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1722f, 564f, -427f, global0.c) - vec4<f32>(-344f, -180f, global0.c, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, -2240f, global0.c, global0.a.x), vec4<f32>(1033f, global0.c, 1000f, 1000f))))))), !(!vec3<bool>(-1i != u_input.a.x, !global1.x, true)), select(~(~vec3<u32>(28302u, global0.d.x, 0u)), _wgslsmith_clamp_vec3_u32(global0.d.wxw, reverseBits(~vec3<u32>(global0.e, global0.e, 1u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(10288u, global0.e, 4294967295u), global0.d.zww)), !global0.b), Struct_1(vec2<f32>(-460f, 1f), false, global0.a.x, _wgslsmith_sub_vec4_u32(~(global0.d << (global0.d % vec4<u32>(32u))), select(min(global0.d, global0.d), max(global0.d, vec4<u32>(global0.e, global0.d.x, global0.d.x, 4294967295u)), !vec4<bool>(false, global1.x, true, global1.x))), 23509u));
    return vec2<i32>(countOneBits(1i), -16938i) ^ vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32) -> u32 {
    var var_0 = 492f;
    let var_1 = arg_2;
    return global0.e;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = func_4(func_3(), Struct_4(false), _wgslsmith_f_op_f32(-arg_1.x));
    let var_1 = vec4<f32>(arg_0.c, global0.c, 617f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c)))));
    global0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.zx), _wgslsmith_mod_u32(~global0.e, firstTrailingBit(arg_0.e)) <= ~4294967295u, var_1.x, _wgslsmith_mult_vec4_u32(arg_0.d, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e, global0.d.x, 84918u, global0.d.x), arg_0.d) & select(global0.d, arg_0.d, vec4<bool>(arg_0.b, arg_0.b, global1.x, global1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, 0u, arg_0.e, 32398u), _wgslsmith_div_vec4_u32(global0.d, global0.d)))), (_wgslsmith_sub_u32(0u, select(54636u, 4294967295u, false)) | 4294967295u) & (_wgslsmith_dot_vec2_u32(vec2<u32>(52929u, arg_0.d.x) >> (global0.d.xy % vec2<u32>(32u)), abs(global0.d.wx)) | ((global0.e | arg_0.d.x) | _wgslsmith_dot_vec2_u32(arg_0.d.wy, vec2<u32>(1u, global0.e)))));
    var_0 = _wgslsmith_div_u32(arg_0.e, global0.d.x);
    return Struct_3(_wgslsmith_f_op_vec4_f32(var_1 - var_1), select(select(vec3<bool>(true, false, any(vec2<bool>(arg_0.b, false))), select(vec3<bool>(false, global0.b, false), !vec3<bool>(global1.x, arg_0.b, global1.x), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(arg_0.b, global1.x, global0.b), arg_0.b)), vec3<bool>(any(vec3<bool>(global0.b, false, arg_0.b)), all(vec4<bool>(global1.x, false, true, global0.b)), any(vec2<bool>(false, true)))), select(select(select(vec3<bool>(false, true, global1.x), vec3<bool>(arg_0.b, true, global1.x), global0.b), !vec3<bool>(arg_0.b, global0.b, true), true), vec3<bool>(false, true, any(vec2<bool>(true, false))), false), vec3<bool>(global0.b, arg_0.b, true)), ~(~(~reverseBits(arg_0.d.wzx))), Struct_1(global0.a, arg_0.b, global0.a.x, arg_0.d, global0.d.x ^ _wgslsmith_mod_u32(global0.d.x, _wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(arg_0.d.x, 26045u, 19429u, 31780u)))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> i32 {
    return ~(-u_input.a.x);
}

fn func_1(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) + _wgslsmith_f_op_f32(min(222f, global0.c))) + _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-global0.c))), false)), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, -974f) - global0.a), all(!vec4<bool>(global1.x, true, false, false)), global0.a.x, vec4<u32>(4294967295u, global0.e, arg_0.a, _wgslsmith_sub_u32(20158u, global0.e)), 3269u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(571f - -593f), 161f, global0.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1516f, global0.a.x, global0.a.x, 640f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -123f, global0.c, global0.a.x) + vec4<f32>(global0.a.x, -662f, 1195f, 551f))))));
    var var_1 = max(-(-2197i << (min(1167u, ~global0.e) % 32u)), u_input.a.x | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-40431i, u_input.a.x), select(u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(global1.x, true))), ~max(-9905i, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-global0.c)))));
    var_0 = u_input.a.x;
    let var_3 = Struct_4(global0.b);
    return func_2(func_2(func_2(func_2(func_2(Struct_1(vec2<f32>(global0.a.x, global0.a.x), global1.x, -1251f, global0.d, global0.e), vec4<f32>(-439f, 2127f, 1108f, global0.c)).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, var_2.x, -1281f, var_2.x))).d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -312f, 955f, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -409f, var_2.x, -1173f) + vec4<f32>(-216f, var_2.x, 1885f, var_2.x)))).d, vec4<f32>(-265f, global0.a.x, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1006f))).d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(func_2(Struct_1(vec2<f32>(-1000f, global0.a.x), global0.b, 1587f, vec4<u32>(0u, 44586u, 85633u, 0u), 1u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-110f, var_2.x, var_2.x, global0.c), vec4<f32>(global0.c, var_2.x, 1001f, 421f)))).a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, -188f)), 956f, global0.a.x, -529f)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(430f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, global0.c), 253f, false | all(vec2<bool>(false, false))))));
    global1 = func_1(Struct_5(_wgslsmith_add_u32(~0u, global0.e)));
    let var_1 = u_input.a.x;
    global0 = Struct_1(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(trunc(var_0))) * var_0)), !(u_input.a.x < _wgslsmith_mod_i32(u_input.a.x, countOneBits(-31350i))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f - global0.c)))), vec4<u32>(160u << (firstTrailingBit(~1u) % 32u), ~abs(global0.e), 0u, select(~38193u, global0.e, !global0.b) ^ ~10165u), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, i32(-1i) * -_wgslsmith_div_i32(-1i, abs(u_input.a.x)), -firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -102988i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 23561i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)))));
}

