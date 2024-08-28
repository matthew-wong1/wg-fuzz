struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1271f, -1513f, -1705f);

var<private> global1: u32;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<u32>, 31>;

var<private> global4: vec2<i32> = vec2<i32>(1i, -42763i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<i32>(1i, max(~u_input.b, ~1i), global4.x, u_input.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.x)))), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 320f, global0.x), vec3<f32>(global0.x, global0.x, global0.x)) - vec3<f32>(-487f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x)))));
    let var_1 = vec3<i32>(u_input.b, -1i, _wgslsmith_sub_i32(-select(_wgslsmith_mod_i32(var_0.x, var_0.x), -u_input.a.x, arg_0.a.x), i32(-1i) * -62004i));
    let var_2 = select(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(29465i, u_input.b, var_0.x), vec3<i32>(global4.x, var_1.x, 24335i)), ~var_0.x), abs(-vec2<i32>(u_input.a.x, global4.x) ^ vec2<i32>(var_1.x, -2147483647i)), false) & _wgslsmith_div_vec2_i32(var_1.zy, -var_0.wy);
    let var_3 = _wgslsmith_add_vec3_i32(var_1, firstTrailingBit(~min(vec3<i32>(2147483647i, u_input.a.x, 0i), var_0.xzw & var_0.www)));
    return 1380u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global4 = vec2<i32>(_wgslsmith_mult_i32(20500i, 1i), 27172i);
    let var_0 = true;
    global2 = min(~(~vec4<u32>(func_3(Struct_1(arg_1.a)), 4294967295u, ~66570u, global2.x)), ~countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 71090u, 4294967295u, 1u), vec4<u32>(global2.x, global2.x, global2.x, global2.x))));
    global4 = vec2<i32>(-3752i, u_input.c.x);
    global2 = abs(~select(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 68653u, global2.x, global2.x), vec4<u32>(1u, global2.x, 0u, 4294967295u)), true && (global2.x >= 0u)));
    return Struct_1(vec3<bool>(arg_0.x, !all(!vec4<bool>(false, false, arg_0.x, false)), !(_wgslsmith_dot_vec3_i32(u_input.a.xxy, u_input.a.zww) >= 1i)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~global2.x;
    var var_1 = vec4<i32>(select(u_input.b, _wgslsmith_mod_i32(u_input.a.x, 1i), true & (reverseBits(74952u) <= _wgslsmith_div_u32(global2.x, 1u))), global4.x, u_input.b, -(~(-(~0i))));
    let var_2 = func_2(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, -13213i <= global4.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(-global0.x) != 294f), !select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false)))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, false)), true), true)));
    var var_3 = select(vec4<bool>(func_2(var_2.a.yz, var_2).a.x, var_2.a.x, all(!(!var_2.a.zy)), true), select(vec4<bool>(select(!var_2.a.x, !var_2.a.x, false), !var_2.a.x || var_2.a.x, true, false), vec4<bool>(!any(vec4<bool>(false, var_2.a.x, false, true)), !all(vec4<bool>(var_2.a.x, false, true, false)), !(!var_2.a.x), all(!var_2.a.yz)), vec4<bool>(all(vec2<bool>(var_2.a.x, var_2.a.x)) && var_2.a.x, true, !var_2.a.x, false)), all(!vec4<bool>(true, !var_2.a.x, var_2.a.x, var_2.a.x)));
    global1 = 0u;
    return Struct_1(vec3<bool>(var_3.x, false, any(vec4<bool>(!var_2.a.x, !var_3.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = ~firstLeadingBit(abs(vec4<u32>(4294967295u, ~global2.x, ~55233u, 0u)));
    var var_1 = select(select(vec4<bool>(true, 502f > _wgslsmith_f_op_f32(exp2(global0.x)), global2.x > ~1u, true), select(vec4<bool>(true, var_0.a.x, false, true), select(vec4<bool>(false, var_0.a.x, false, false), select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(false, var_0.a.x, true, false), var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), !select(vec4<bool>(true, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), vec4<bool>(false, true, (u_input.b > 1i) || var_0.a.x, false)), vec4<bool>(any(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), any(vec2<bool>(var_0.a.x, true)))), all(vec2<bool>(false, global4.x >= global4.x)), select(true, any(var_0.a), var_0.a.x), _wgslsmith_sub_u32(global2.x, _wgslsmith_div_u32(4294967295u, 75931u)) < _wgslsmith_div_u32(~4294967295u, ~global2.x)), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), var_0.a.x));
    global0 = vec3<f32>(1564f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -373f), -381f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f + global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1809f), 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) - 440f)));
    var_1 = select(vec4<bool>(false, !(global2.x >= global2.x), var_1.x, var_0.a.x), !vec4<bool>(true, var_0.a.x, !any(vec4<bool>(var_0.a.x, var_0.a.x, var_1.x, var_1.x)), func_2(vec2<bool>(var_1.x, true), Struct_1(vec3<bool>(false, var_0.a.x, true))).a.x), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(723f)), global0.x, global0.x) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-761f)), global0.x)))), vec4<u32>(22331u, 17538u, 1u, 6633u) & vec4<u32>(~1u, ~global2.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global2.x), ~global2.x), 0u), _wgslsmith_div_u32(global2.x, 1u), global2.yx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(613f * -1852f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(-1541f, global0.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(677f, 748f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, _wgslsmith_f_op_f32(trunc(global0.x)), global0.x, -248f)), select(!select(vec4<bool>(var_0.a.x, true, var_1.x, false), vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, true, false, false)), !vec4<bool>(var_0.a.x, var_1.x, false, var_1.x), vec4<bool>(-1351f < global0.x, all(var_0.a.yz), true, select(var_0.a.x, var_1.x, false))))));
}

