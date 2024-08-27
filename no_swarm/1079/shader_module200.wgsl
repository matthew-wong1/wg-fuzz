struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(65788u, vec2<i32>(-1i, -806i), Struct_1(1i), Struct_1(2147483647i), vec3<i32>(-1i, 31238i, i32(-2147483648)));

var<private> global1: u32 = 1u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1729f + -2498f), 555f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-684f)), 214f))));
    var var_1 = select(vec4<bool>(true, true, true, true), !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, ~global0.a < u_input.a, all(vec2<bool>(true, true)), true)));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -137f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, 1000f, var_0.x)))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2398f))))));
    let var_3 = vec4<u32>(abs((select(global0.a, global0.a, false) | u_input.a) << (84297u % 32u)), _wgslsmith_mult_u32(12464u, global0.a), _wgslsmith_sub_u32(~(~(0u >> (global0.a % 32u))), u_input.a), ~(~u_input.a));
    var_1 = !(!vec4<bool>(!all(vec2<bool>(false, var_1.x)), true, true, true || (u_input.a == 49625u)));
    return var_3;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = ~vec2<u32>(1u, 74832u >> (_wgslsmith_add_u32(firstLeadingBit(global0.a), global0.a) % 32u));
    global1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, u_input.a, 1u, 1u) ^ vec4<u32>(u_input.a, var_0.x, global0.a, 45213u), _wgslsmith_sub_vec4_u32(max(vec4<u32>(global0.a, 1u, global0.a, 0u), vec4<u32>(u_input.a, 4294967295u, 40865u, u_input.a)), ~vec4<u32>(30334u, 4294967295u, u_input.a, 92758u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global0.a, 1u, 4768u, u_input.a)), ~vec4<u32>(1u, 1u, 4294967295u, global0.a))), func_3()));
    let var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(71254u, u_input.a, 48800u, 1u), abs(vec4<u32>(17714u, 9758u, 4294967295u, 0u))), abs((vec4<u32>(4294967295u, 69022u, 2340u, 0u) << (vec4<u32>(var_0.x, 36958u, 1u, 1u) % vec4<u32>(32u))) ^ ~vec4<u32>(global0.a, u_input.a, 1u, 873u))) ^ _wgslsmith_add_vec4_u32(firstTrailingBit(abs(vec4<u32>(var_0.x, u_input.a, global0.a, global0.a))), reverseBits(vec4<u32>(abs(var_0.x), var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(2591u, global0.a, var_0.x), vec3<u32>(54397u, 0u, global0.a)), 4294967295u)));
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.a, 83385u, global0.a), var_1 | var_1), _wgslsmith_add_u32(45520u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, var_1.x), ~vec2<u32>(var_1.x, var_1.x) >> (vec2<u32>(global0.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(global0.e.yx, vec2<i32>(global0.c.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(global0.d.a, -38440i), -14396i))), Struct_1(-1i), Struct_1(_wgslsmith_sub_i32(25281i, abs(_wgslsmith_clamp_i32(-16535i, 2147483647i, global0.b.x)))), vec3<i32>(0i, global0.c.a, _wgslsmith_mod_i32(-28863i, countOneBits(global0.c.a)) | ~(-53480i)));
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-151f, _wgslsmith_div_f32(-1870f, -301f)), _wgslsmith_div_f32(569f, -535f), -607f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(920f, 937f, 330f), vec3<f32>(1000f, -2114f, -469f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, -453f, 900f))), vec3<f32>(_wgslsmith_f_op_f32(-963f * 203f), _wgslsmith_f_op_f32(step(-272f, -885f)), -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-239f, 952f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-135f + _wgslsmith_div_f32(-1120f, -842f))))));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    global1 = _wgslsmith_div_u32(abs(14506u), reverseBits(4294967295u));
    var var_0 = arg_1.a.zz;
    global1 = ~(~max(113471u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36106u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 24495u, 0u, global0.a)))) >> (20371u % 32u);
    let var_1 = _wgslsmith_clamp_u32(u_input.a, 51922u, 1u);
    var var_2 = _wgslsmith_f_op_f32(-arg_1.b);
    return -22527i <= arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> vec2<bool> {
    return select(vec2<bool>(arg_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1134f, -326f, true))), true), vec2<bool>(func_4(-2147483647i, func_2(false), vec3<f32>(-293f, _wgslsmith_div_f32(950f, -490f), arg_1)), (18972u == (0u & u_input.a)) & true), !vec2<bool>(true, all(vec3<bool>(true, false, false)) | all(vec4<bool>(false, false, false, true))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32) -> StorageBuffer {
    global1 = ~9574u;
    var var_0 = select(vec3<bool>(false, !(!any(vec2<bool>(arg_0.x, false))), true), vec3<bool>(!(!(-2147483647i != arg_2)), any(vec2<bool>(arg_2 <= arg_2, !arg_0.x)), (~0u < global0.a) || (arg_0.x == arg_0.x)), select(select(vec3<bool>(true, true & arg_0.x, all(vec3<bool>(arg_0.x, false, true))), select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, false, true)), true == arg_0.x), all(func_1(Struct_2(vec3<f32>(2907f, -1218f, 193f), 3728f), -1030f, arg_1.xyw))), select(vec3<bool>(true, true, true), vec3<bool>(!arg_0.x, u_input.a <= arg_1.x, !arg_0.x), _wgslsmith_div_u32(global0.a, arg_1.x) >= abs(u_input.a)), vec3<bool>(any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x)), arg_0.x, arg_0.x)));
    let var_1 = _wgslsmith_mod_i32(min(-global0.b.x, global0.b.x), ~(-1i) << (_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, arg_1.x, u_input.a), vec4<u32>(global0.a, 4294967295u, 1u, u_input.a)), 8117u) % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, _wgslsmith_f_op_f32(-1010f + 1441f), -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, 1000f, -451f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2071f), -594f, -184f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1413f, 1000f)))))));
    var var_3 = Struct_1(firstTrailingBit(arg_2));
    return StorageBuffer(_wgslsmith_div_u32(min(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(u_input.a, 0u)), func_3().zw)), reverseBits(func_3().x)), vec3<u32>(~(~firstLeadingBit(global0.a)), ~firstLeadingBit(48070u << (arg_1.x % 32u)), ~(~_wgslsmith_div_u32(60651u, 10889u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global0.c.a, ~28961i, global0.e.x);
    global1 = ~1u;
    var var_1 = ~0u;
    var_1 = ~(~(~1u));
    global1 = global0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(816f)))))));
    global1 = abs(u_input.a);
    global1 = _wgslsmith_add_u32(global0.a & global0.a, 4294967295u);
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = func_5(select(!vec2<bool>(false, any(vec3<bool>(false, true, true))), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -171f, var_2) + vec3<f32>(var_2, var_2, 573f)), 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2)))), countOneBits(~vec3<u32>(global0.a, 21467u, 20548u))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) | all(vec2<bool>(true, true))), vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 6719u), ~vec2<u32>(u_input.a, 41090u))), 76619u, 4294967295u, global0.a), 0i);
}

