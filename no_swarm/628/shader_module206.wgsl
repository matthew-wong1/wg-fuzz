struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1152f, 941f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, 1044f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, 151f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, 966f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, 635f)))))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-351f)), var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(573f, var_0.x) + var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), -802f, ~4294967295u);
    global0 = vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 1u, u_input.b, var_1.c)))), vec4<u32>(abs(6936u), _wgslsmith_mod_u32(~12880u, 24241u), max(arg_0.x, u_input.a.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 18506u, global0.x), vec3<u32>(4294967295u, 19194u, 14173u)), _wgslsmith_clamp_u32(var_1.c, global0.x, global2.x) & ~36541u)));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-457f)), var_0.x), var_1.a.xy);
    var var_2 = select(!vec3<bool>(all(!vec2<bool>(global1.x, false)), all(vec3<bool>(global1.x, false, true)) || global1.x, true), !select(select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, false, global1.x)), select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, false, global1.x), global1.x), true), vec3<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, true)), all(vec3<bool>(false, global1.x, true)), false), !(arg_0.x <= arg_0.x)), !select(select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x)), vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(false, global1.x, global1.x), !vec3<bool>(false, global1.x, true)));
    return select(-select(~u_input.c, -(~u_input.c), global1.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.d, _wgslsmith_add_i32(u_input.c, u_input.c), -20113i), max(vec3<i32>(u_input.c, -1i, -27383i), ~vec3<i32>(-22327i, 1i, -26781i))), max(u_input.d & -1i, _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), u_input.c)), 1i), u_input.c != u_input.c);
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = -reverseBits(vec2<i32>(func_3(u_input.a), u_input.c)) & -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, 3437i), u_input.c), _wgslsmith_mod_i32(39885i, 51264i));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    var var_2 = var_0.x;
    var var_3 = var_0;
    global1 = vec3<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, 1i), var_0), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(35149i, u_input.c, -17829i), vec3<i32>(u_input.c, u_input.d, -24969i)))) >= -var_3.x, global0.x >= ~max(abs(u_input.a.x), 1u), !(!any(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, global1.x, false, true)))));
    return _wgslsmith_add_vec2_u32(vec2<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global0.x, u_input.a.x, 40080u), u_input.a) << (1u % 32u)) >> (min(global0.x >> (global2.x % 32u), ~global2.x) % 32u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(global2.x, u_input.b), ~(~global0.x))), select(u_input.a.wx, ~u_input.a.yx, select(global1.x, any(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, false, true, global1.x), global1.x)), true)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    global2 = max(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec2<u32>(12536u, global0.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(456f, -397f, 250f, -924f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1527f, -289f, -674f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, -1628f, 1756f, -396f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f + _wgslsmith_f_op_f32(-1095f - -1189f))))), u_input.b);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.b, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.c, 1u) | ~1u, _wgslsmith_div_u32(countOneBits(global0.x), abs(u_input.a.x))) << (4294967295u % 32u));
    let var_1 = Struct_2(vec3<bool>(false, true, !any(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(false, global1.x, arg_1.x, global1.x), vec4<bool>(global1.x, arg_1.x, arg_0, global1.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -391f), ~(~0u)), max(arg_2, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_2, u_input.c, 1i), vec4<i32>(arg_2, arg_2, 8389i, u_input.d)), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_2, u_input.d, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, arg_2, u_input.d), vec4<i32>(arg_2, -41816i, 1i, 3126i))))));
    let var_2 = select(_wgslsmith_mod_vec4_u32(max(u_input.a, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, var_0.c, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 42822u, 29944u)), vec4<u32>(1u, 35738u, global2.x, u_input.a.x))), u_input.a | vec4<u32>(abs(u_input.a.x), ~22532u, ~14114u, ~0u)), vec4<u32>(u_input.a.x, u_input.b, var_0.c, _wgslsmith_add_u32(firstTrailingBit(global0.x), global0.x)), !(!any(!vec4<bool>(global1.x, arg_0, false, true))));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(select(vec3<bool>(all(select(arg_1.a, arg_1.a, true)), arg_0.a.x > _wgslsmith_f_op_f32(trunc(456f)), all(select(vec3<bool>(false, false, arg_1.a.x), arg_1.a, true))), !arg_1.a, false), func_1(!(!global1.x), arg_1.a.yy, arg_1.c), i32(-1i) * -55121i);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.x), -1000f, !(global1.x & false)));
    var_1 = -1098f;
    var var_2 = func_1(firstLeadingBit(select(_wgslsmith_sub_u32(2389u, u_input.b), 31545u, false)) > 0u, select(arg_1.a.xy, select(var_0.a.yx, !(!vec2<bool>(arg_1.a.x, global1.x)), !select(global1.xx, vec2<bool>(true, arg_1.a.x), vec2<bool>(false, true))), global1.yy), 2147483647i);
    global0 = u_input.a.wz;
    return Struct_1(var_0.b.a, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(466f, _wgslsmith_f_op_f32(-157f * _wgslsmith_f_op_f32(-var_0.b.a.x)))), ~(~80415u));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * arg_1.b.a))), func_1(any(arg_1.a.xz) && true, vec2<bool>(true, false), -17475i >> (0u % 32u)).b, ~global2.x);
    var var_1 = arg_1;
    var var_2 = ~(~91502u);
    var var_3 = arg_1;
    var_0 = func_1(true, vec2<bool>(true, global1.x), -var_1.c);
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-140f)) * _wgslsmith_f_op_f32(arg_2.x * arg_0)) + _wgslsmith_f_op_f32(floor(arg_0))))), vec2<i32>(-1i, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1436f)), Struct_2(!select(!vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, false), !vec3<bool>(global1.x, global1.x, global1.x)), func_4(func_1(false, select(vec2<bool>(true, true), global1.xz, global1.x), u_input.d), Struct_2(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.x), Struct_1(vec4<f32>(613f, -139f, -630f, -259f), 302f, 28490u), _wgslsmith_clamp_i32(9305i, 0i, u_input.c)), func_1(true, !vec2<bool>(global1.x, false), u_input.d)), 2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-740f, 1006f)), -237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-874f))), 752f, 232f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f - 773f)), _wgslsmith_f_op_f32(sign(-489f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_div_f32(-110f, 1025f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)))));
}

