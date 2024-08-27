struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.d;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(u_input.a.x << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.a.x, arg_1.a.x, 23170u), vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), ~75405u), firstTrailingBit(_wgslsmith_clamp_u32(1u, arg_1.a.x, arg_1.a.x)) << (u_input.a.x % 32u)) >> (_wgslsmith_mult_u32(arg_1.a.x, select(max(max(u_input.a.x, arg_1.a.x), 41441u), ~(~4294967295u), firstTrailingBit(4294967295u) >= (arg_1.a.x << (4294967295u % 32u)))) % 32u);
    var var_2 = !(!all(select(vec4<bool>(true, arg_1.c, true, false), select(vec4<bool>(false, false, arg_1.c, false), vec4<bool>(false, arg_1.b.x, false, true), arg_1.c), select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.c, true), vec4<bool>(false, arg_1.c, arg_1.c, arg_1.c), arg_1.b.x))));
    var var_3 = 14550u;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), arg_1.d, arg_1.d);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = !vec3<bool>(any(vec3<bool>(arg_0.b.x != arg_0.c, true, arg_0.c & true)), !func_3(32530i, arg_0) == false, true);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1539f), arg_0.d, -1282f);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 533f, var_0.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-411f, var_0.x, arg_0.d)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, 1993f, -373f) * vec3<f32>(var_0.x, 1009f, -725f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -1000f, arg_0.d) * vec3<f32>(292f, 692f, arg_0.d)), abs(1u) < func_2(Struct_1(arg_0.a, vec2<bool>(false, arg_0.b.x), arg_0.c, -1000f), 1000f, var_0.x).a.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 533f, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-996f, 488f, var_0.x) * vec3<f32>(244f, 1626f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, arg_0.d, _wgslsmith_f_op_f32(min(var_0.x, arg_0.d)))))), !arg_0.b.x));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(422f, 372f, arg_0.d), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, arg_0.b.x, true))))))));
    let var_2 = Struct_2(false);
    return _wgslsmith_f_op_f32(-arg_0.d);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1242f))), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.a.zy, vec2<bool>(false, true), false, 1084f), -1136f, 562f)))), 1f, _wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(u_input.a.x, 7672u), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false)), -2020f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-310f + _wgslsmith_f_op_f32(-1152f + -1000f)), _wgslsmith_f_op_f32(-779f * _wgslsmith_f_op_f32(637f - 796f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-867f, 1187f, 350f, 631f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1169f, 1416f, 175f, 110f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1784f, 382f, 953f, -1676f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2636f, 457f, 771f, -1346f), vec4<f32>(982f, -860f, -112f, -1130f)))))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(-27822i), ~1i, _wgslsmith_mod_i32(arg_0 >> (12772u % 32u), ~(-2147483647i))) & ~u_input.c.xxz, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.yyy, vec3<i32>(-arg_0, min(-1i, u_input.c.x), _wgslsmith_div_i32(-2147483647i, -26793i))), vec3<i32>(u_input.b, u_input.c.x, ~u_input.b & arg_0)));
    var var_1 = 2147483647i;
    global0 = _wgslsmith_sub_i32(-19470i, i32(-1i) * -2742i);
    var_1 = arg_0;
    return func_2(Struct_1(u_input.a.yx, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1271f))), _wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -270f));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global0 = u_input.c.x;
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, ~select(u_input.b, u_input.c.x, arg_0), abs(-u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.c.wzz >> (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(37048i, u_input.d.x, u_input.d.x), u_input.c.yyx))), min(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, 0i), u_input.d.x, -7090i, _wgslsmith_clamp_i32(u_input.b, -1348i, 2147483647i)), vec4<i32>(0i, -u_input.d.x, -26102i, 1i))), u_input.d);
    let var_0 = select(select(max(u_input.c ^ vec4<i32>(u_input.d.x, u_input.c.x, -20525i, u_input.b), vec4<i32>(-1i, min(0i, u_input.c.x), -u_input.c.x, ~(-13649i))), vec4<i32>(u_input.c.x, u_input.c.x, max(0i, -33095i), 0i), vec4<bool>(all(!vec4<bool>(arg_2.c, arg_3.a, arg_2.b.x, arg_3.a)), true, ~4294967295u > _wgslsmith_add_u32(u_input.a.x, 4294967295u), (arg_2.a.x & u_input.a.x) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 14412u, 0u, 4294967295u), vec4<u32>(arg_2.a.x, 8563u, 61280u, 21454u)))), vec4<i32>(12993i, u_input.c.x, u_input.c.x, u_input.c.x), !all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.c, false), vec3<bool>(true, arg_0, true)), select(vec3<bool>(arg_2.c, arg_0, arg_2.c), vec3<bool>(arg_0, arg_0, arg_3.a), arg_0), true)));
    global0 = _wgslsmith_div_i32(-1101i, abs(u_input.c.x));
    let var_1 = Struct_1(vec2<u32>(min(~56899u, 57942u), 71138u), vec2<bool>(any(vec2<bool>(all(arg_2.b), false)), all(select(select(vec4<bool>(arg_2.c, arg_2.c, false, arg_0), vec4<bool>(false, false, true, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_0, true, true)), vec4<bool>(true, false, false, arg_3.a), select(vec4<bool>(arg_0, arg_0, arg_2.b.x, false), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_2.c, true, arg_3.a, arg_0))))), arg_3.a, _wgslsmith_f_op_f32(-1907f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-356f))) * arg_2.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~(_wgslsmith_add_u32(4197u, 8832u) & max(u_input.a.x, 44744u)), _wgslsmith_div_u32(0u, u_input.a.x)), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 1723u), 1u)));
    let var_1 = !vec4<bool>(false, all(vec3<bool>(var_0 >= 0u, any(vec3<bool>(false, true, true)), true)), select((u_input.a.x << (u_input.a.x % 32u)) >= _wgslsmith_mod_u32(u_input.a.x, 12083u), false, !(u_input.d.x >= u_input.b)), all(vec4<bool>(true, true, true, true)));
    global0 = ~abs(i32(-1i) * -25222i);
    global0 = abs(-2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -383f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(any(var_1.ww), vec4<f32>(1f, 1f, 1f, 1f), func_1(u_input.c.x), Struct_2(var_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-468f, 306f) * _wgslsmith_f_op_f32(step(-185f, 1257f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(454f, 751f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(215f - 385f) * _wgslsmith_f_op_f32(f32(-1f) * -179f))))));
    var var_3 = 358f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -305f), ~(var_0 & 1u), abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0 | u_input.a.x, var_0), var_0)));
}

