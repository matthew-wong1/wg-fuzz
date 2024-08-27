struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: Struct_1;

var<private> global3: vec2<i32> = vec2<i32>(-1i, 0i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = Struct_2(arg_1, !vec3<bool>(!arg_1.a, !(global1.a && false), !arg_1.a), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(22415u, u_input.a, u_input.a))));
    let var_1 = Struct_2(arg_1, var_0.b, vec3<u32>(90742u, var_0.c.x, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(64842u, 0u, 13594u, 1u), vec4<u32>(var_0.c.x, 29104u, 15470u, 15846u)), vec4<u32>(9767u, global0.x, 1u, global0.x), vec4<bool>(false, false, arg_1.a, arg_1.a)), ~max(vec4<u32>(u_input.a, 1u, 4294967295u, 1u), vec4<u32>(u_input.a, 0u, global0.x, 0u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1509f));
    global0 = countOneBits(firstTrailingBit(var_0.c) >> (min(countOneBits(var_0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(var_1.c.x, 4294967295u, 6850u))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(var_0.c, ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.c, var_1.c), var_0.c & var_1.c));
    global2 = Struct_1(var_1.b.x);
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global2 = arg_2;
    global0 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(~4294967295u), func_3(arg_2, arg_2, global3.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 65719u)), _wgslsmith_div_vec2_u32(global0.xz, global0.yy))), vec3<u32>(global0.x, u_input.a, firstLeadingBit(u_input.a))), ~(firstLeadingBit(abs(vec3<u32>(global0.x, global0.x, 28563u))) << (~(~vec3<u32>(27852u, u_input.a, global0.x)) % vec3<u32>(32u))), vec3<bool>(true, any(arg_0.wy) & true, !any(select(vec2<bool>(arg_0.x, arg_2.a), vec2<bool>(false, false), global1.a))));
    global1 = Struct_1(!(false != arg_0.x));
    let var_0 = _wgslsmith_clamp_i32(-global3.x, -(-65788i | global3.x), global3.x);
    let var_1 = arg_2;
    return Struct_2(Struct_1(select(!any(vec4<bool>(false, false, true, global1.a)), arg_2.a, ~global0.x == (global0.x & 0u))), !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(any(arg_0.zw), !global2.a, all(arg_0)), select(false, global2.a, var_1.a) | !arg_0.x), vec3<u32>(firstLeadingBit(countOneBits(u_input.a)), ~4294967295u, 4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_2(vec4<bool>(all(select(vec4<bool>(false, global1.a, true, global2.a), !vec4<bool>(false, true, arg_3.a.a, true), global1.a || true)), global3.x >= arg_1, false, global1.a), _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), func_2(!vec4<bool>(any(arg_3.b), 4294967295u > arg_0.c.x, arg_3.b.x, any(arg_3.b.xx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1200f)) * -1823f), Struct_1(!(!arg_3.b.x))).a).a;
    let var_1 = !select(vec3<bool>(all(vec2<bool>(global1.a, false)), !global2.a, func_2(!vec4<bool>(global1.a, var_0.a, global1.a, global1.a), _wgslsmith_f_op_f32(f32(-1f) * -650f), func_2(vec4<bool>(global1.a, false, true, arg_0.b.x), arg_2.x, arg_0.a).a).a.a), !(!(!vec3<bool>(true, global2.a, global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= arg_2.x);
    return Struct_1(!(false & var_0.a));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global1 = func_4(func_2(vec4<bool>(true, true, true, !arg_0), -288f, Struct_1(33157u < _wgslsmith_mult_u32(1u, arg_1.x))), global3.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-882f)) * _wgslsmith_f_op_f32(round(275f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 555f, -1851f, -667f), func_2(vec4<bool>(true, true, func_2(vec4<bool>(arg_0, true, global2.a, false), -1330f, Struct_1(global1.a)).b.x | any(vec2<bool>(false, true)), !global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1497f)) - -632f), func_2(!select(vec4<bool>(false, arg_0, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f * 577f) - -1000f), Struct_1(any(vec3<bool>(arg_0, global2.a, arg_0)))).a));
    var var_0 = func_2(select(select(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true)), vec4<bool>(arg_0, global1.a, select(true, true, true), arg_0), _wgslsmith_f_op_f32(sign(208f)) <= -339f), vec4<bool>(arg_0, global2.a, false, false), global1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1052f, _wgslsmith_f_op_f32(f32(-1f) * -320f))))), Struct_1(true));
    var var_1 = var_0.c.x;
    var var_2 = -36344i;
    var var_3 = func_4(Struct_2(func_2(select(select(vec4<bool>(true, false, true, var_0.a.a), vec4<bool>(true, var_0.b.x, global1.a, var_0.b.x), vec4<bool>(false, global1.a, false, var_0.a.a)), !vec4<bool>(false, false, false, arg_0), all(vec4<bool>(false, true, true, false))), 1055f, var_0.a).a, !vec3<bool>(true, any(vec4<bool>(true, false, var_0.b.x, global1.a)), true), min(~select(vec3<u32>(global0.x, u_input.a, 4294967295u), vec3<u32>(40599u, 1u, 21896u), vec3<bool>(true, global2.a, false)), ~var_0.c)), -29034i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, -148f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-384f, -1000f)), _wgslsmith_f_op_f32(max(-1685f, 859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f - -1013f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1389f, _wgslsmith_f_op_f32(-196f - -1174f), _wgslsmith_f_op_f32(abs(-528f)), _wgslsmith_f_op_f32(f32(-1f) * -355f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), select(vec4<bool>(false, global1.a, global1.a, arg_0), vec4<bool>(global2.a, global1.a, var_0.b.x, arg_0), !vec4<bool>(arg_0, true, true, false))))), func_2(vec4<bool>(true, all(var_0.b), true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1336f)), _wgslsmith_f_op_f32(f32(-1f) * -137f)))), func_2(!vec4<bool>(false, arg_0, false, global1.a), _wgslsmith_f_op_f32(trunc(-344f)), var_0.a).a)).a;
    return abs(~_wgslsmith_mult_u32(arg_1.x, var_0.c.x << (arg_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(17736u, _wgslsmith_add_u32(~78174u, ~(global0.x >> (~18160u % 32u))), u_input.a, ~(~func_1(all(vec2<bool>(false, global2.a)), vec3<u32>(0u, 1u, u_input.a) ^ vec3<u32>(global0.x, 0u, u_input.a))));
    let var_1 = Struct_1(all(!(!(!vec3<bool>(true, global2.a, global1.a)))));
    let var_2 = _wgslsmith_div_vec2_i32(-min(max(vec2<i32>(global3.x, global3.x), vec2<i32>(0i, global3.x)) << (_wgslsmith_sub_vec2_u32(var_0.xw, var_0.yz) % vec2<u32>(32u)), reverseBits(-vec2<i32>(-2147483647i, -18027i))), vec2<i32>(global3.x, global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-847f, 778f)) + 375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1045f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-950f, 381f)))))), -34264i << (_wgslsmith_dot_vec4_u32(var_0, countOneBits(var_0)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1207f, -170f, 831f), vec3<f32>(1778f, 1557f, -735f), all(vec3<bool>(global1.a, global2.a, global2.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, 199f, 1072f)))));
}

