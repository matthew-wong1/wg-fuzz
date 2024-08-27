struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(29070i, 46837i, i32(-2147483648), 9999i), vec4<i32>(-24311i, 1i, 1i, i32(-2147483648)), vec4<i32>(38747i, 7437i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -26435i, i32(-2147483648), 1i), vec4<i32>(1i, -1i, i32(-2147483648), -1i), vec4<i32>(-14136i, 0i, 9149i, 11887i), vec4<i32>(-18800i, 0i, 44882i, -1i), vec4<i32>(-1i, 9219i, -16384i, -1i), vec4<i32>(i32(-2147483648), 14312i, 3627i, 2147483647i), vec4<i32>(-1i, 4419i, -4446i, 28797i), vec4<i32>(32693i, 41570i, -16248i, 0i), vec4<i32>(2147483647i, 2147483647i, -1i, -26119i), vec4<i32>(-37865i, 1i, -13730i, i32(-2147483648)), vec4<i32>(24930i, -44010i, -6609i, -16796i), vec4<i32>(8005i, -34023i, 26096i, -199i), vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i), vec4<i32>(-96654i, -1i, 15666i, i32(-2147483648)), vec4<i32>(13075i, 53225i, 1i, -32118i), vec4<i32>(2147483647i, -1022i, -8814i, 12731i), vec4<i32>(-30490i, -1i, 11664i, -43369i), vec4<i32>(i32(-2147483648), -15395i, -1i, 1i), vec4<i32>(i32(-2147483648), -34945i, -42174i, -1i), vec4<i32>(45825i, -43541i, 2851i, 2147483647i), vec4<i32>(-18499i, 3517i, 0i, i32(-2147483648)), vec4<i32>(49878i, 61060i, -6376i, -3032i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_mod_u32(~(~(~35873u)), u_input.a), global0.a.c, !(select(_wgslsmith_add_i32(1i, -19403i), u_input.c.x, true) > -(-1i >> (global1.a.b % 32u))));
    global2 = array<vec4<i32>, 25>();
    var var_1 = ~vec4<i32>(global0.b, -11129i, u_input.b, u_input.c.x | (_wgslsmith_mod_i32(global1.b, -2147483647i) >> (global1.d.b % 32u)));
    return -1336f;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_add_u32(abs(_wgslsmith_add_u32(278u, 36627u)), u_input.a), select(!global0.d.c, !select(arg_0.a.c, vec3<bool>(global0.c, global1.c, true), true), arg_0.a.c), false), reverseBits(u_input.b), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<f32>(arg_0.a.a, global0.d.a, _wgslsmith_div_f32(global1.a.a, arg_0.a.a)))) <= -1735f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a, -868f)), u_input.a, !(!vec3<bool>(global0.c, true, arg_0.d)), arg_0.d));
    global0 = Struct_2(global0.a, u_input.c.x, false, arg_0.a);
    global1 = Struct_2(global1.d, global0.b, false && ((any(global0.d.c.xz) || !arg_0.a.d) | (any(vec4<bool>(true, global1.a.c.x, arg_0.b, global1.d.c.x)) != false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1333f + global0.a.a) * _wgslsmith_f_op_f32(838f + global0.a.a))), 8497u, vec3<bool>(global0.c, true, global1.a.c.x), any(vec3<bool>(global0.d.d, false, true))));
    let var_0 = global1.a.c;
    let var_1 = ~(-(~vec3<i32>(~global0.b, global0.b, _wgslsmith_clamp_i32(1i, u_input.b, u_input.c.x))));
    return Struct_3(vec2<f32>(_wgslsmith_div_f32(-1313f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.a)))), arg_0.a.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    global1 = Struct_2(global1.a, global1.b, arg_1.a.x, global1.a);
    var var_0 = global0.a;
    let var_1 = true;
    global2 = array<vec4<i32>, 25>();
    var var_2 = Struct_4(global1.a, all(vec3<bool>(true, true, true)), min(abs(~vec2<u32>(4686u, 1u)), arg_1.b.yy ^ (vec2<u32>(0u, u_input.a) >> (_wgslsmith_sub_vec2_u32(arg_2.b.xx, arg_1.b.zz) % vec2<u32>(32u)))), var_0.c.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1094f, _wgslsmith_f_op_f32(1000f - -1192f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_0.a.x))), (_wgslsmith_sub_u32(arg_1.b.x, 5400u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.b, 4294967295u, global0.d.b, 40023u), vec4<u32>(4294967295u, global1.d.b, arg_1.b.x, 1u))) << ((~global0.d.b << (28046u % 32u)) % 32u), var_2.a.c, true), 2147483647i, var_1, global0.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    global1 = arg_0;
    var var_0 = arg_0.a.b;
    global2 = array<vec4<i32>, 25>();
    var var_1 = false;
    let var_2 = global0.a.a;
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, 481f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, 860f)))), vec2<f32>(_wgslsmith_f_op_f32(-874f - 1343f), _wgslsmith_f_op_f32(924f * arg_0.d.a))), vec2<f32>(arg_0.a.a, -212f)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2(Struct_4(Struct_1(global0.d.a, 5421u, vec3<bool>(global0.c, global1.d.c.x, global0.c), global1.c), global0.d.c.x, ~vec2<u32>(42522u, 1u), all(vec2<bool>(true, false)))), Struct_5(!(!vec4<bool>(global0.c, true, global1.a.d, false)), min(~vec3<u32>(global1.d.b, global0.d.b, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(global1.d.b, u_input.a, global0.d.b))), global1.a.c), Struct_5(select(vec4<bool>(global0.d.d, global0.a.d, global0.c, global0.c), !vec4<bool>(global0.d.c.x, true, global1.a.c.x, global1.a.c.x), global0.a.d | global1.a.d), vec3<u32>(45436u, 73024u, 1u) >> (~vec3<u32>(global1.a.b, 0u, 15967u) % vec3<u32>(32u)), !global0.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.d.a)), _wgslsmith_f_op_f32(max(-1556f, 1184f)))), _wgslsmith_f_op_f32(func_3(global1.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.a, 1154f, global0.d.a) * vec3<f32>(global0.a.a, 597f, global0.a.a)))))), global0.a.c);
    global0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a)), Struct_5(!select(!vec4<bool>(false, global1.c, true, false), !vec4<bool>(global0.a.c.x, global1.a.d, global1.a.c.x, false), true), vec3<u32>(_wgslsmith_div_u32(31554u, _wgslsmith_add_u32(51979u, 0u)), 4564u, ~_wgslsmith_sub_u32(0u, u_input.a)), func_4(func_2(Struct_4(Struct_1(global1.a.a, u_input.a, vec3<bool>(true, global0.d.d, global1.a.c.x), false), global1.c, vec2<u32>(27644u, 65520u), global1.d.c.x)), Struct_5(vec4<bool>(global0.c, true, global0.d.d, global0.c), firstTrailingBit(vec3<u32>(global1.a.b, global1.d.b, 0u)), !vec3<bool>(true, true, global1.a.d)), Struct_5(!vec4<bool>(global0.d.c.x, true, false, true), firstLeadingBit(vec3<u32>(global1.a.b, global0.d.b, 4969u)), global1.d.c), -693f).a.c), Struct_5(select(vec4<bool>(!global0.d.d, any(vec2<bool>(global0.d.d, global0.a.c.x)), global1.a.d, true), vec4<bool>(global0.d.c.x, !global0.d.d, !global0.a.d, any(vec4<bool>(false, global1.c, global1.a.c.x, false))), select(select(vec4<bool>(global1.c, false, false, global0.c), vec4<bool>(false, global1.a.d, false, true), global1.a.c.x), !vec4<bool>(true, false, global1.c, global1.c), global0.d.d & global1.a.c.x)), ~(~(~vec3<u32>(1u, u_input.a, u_input.a))), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, false))), Struct_5(select(vec4<bool>(false, true, false, global0.c), vec4<bool>(true, global1.a.d, true, global0.a.c.x), vec4<bool>(false, false, global0.d.d, global1.c)), vec3<u32>(global1.a.b, global1.d.b, u_input.a), global0.d.c), Struct_5(select(vec4<bool>(false, true, false, true), vec4<bool>(true, global1.a.c.x, false, global1.c), vec4<bool>(true, global1.a.c.x, true, global1.a.c.x)), ~vec3<u32>(89825u, u_input.a, 1u), global0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(267f)) - _wgslsmith_f_op_f32(-global1.d.a))).a.c), -1196f);
    global2 = array<vec4<i32>, 25>();
    global0 = func_4(func_5(Struct_2(func_4(Struct_3(vec2<f32>(global1.d.a, global1.d.a)), Struct_5(vec4<bool>(true, global0.d.d, global0.a.c.x, false), vec3<u32>(global1.a.b, 10606u, u_input.a), vec3<bool>(true, true, true)), Struct_5(vec4<bool>(global0.a.c.x, true, global0.d.c.x, false), vec3<u32>(4874u, global0.a.b, u_input.a), vec3<bool>(global0.a.d, false, false)), 137f).d, -3283i, true, global1.a), !vec3<bool>(true, any(global1.a.c), select(false, true, true))), Struct_5(!(!(!vec4<bool>(global1.c, false, global0.d.d, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(max(1u, global1.a.b), 65101u, reverseBits(0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.b, global1.d.b, global1.a.b), vec3<u32>(global1.d.b, global0.a.b, global0.d.b)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 78983u, 0u), vec3<u32>(u_input.a, 29878u, 0u)))), vec3<bool>(select(true, any(vec4<bool>(global1.a.c.x, global0.c, true, global0.a.d)), all(vec4<bool>(global0.c, true, false, false))), any(select(vec4<bool>(global1.a.c.x, false, global0.c, global0.c), vec4<bool>(global0.a.d, false, true, global1.c), vec4<bool>(global0.d.d, false, false, true))), func_4(func_5(Struct_2(Struct_1(global1.d.a, 99115u, global1.a.c, true), 2147483647i, global0.d.d, Struct_1(var_0.a.x, 92166u, global1.d.c, false)), vec3<bool>(global0.a.d, global0.c, false)), Struct_5(vec4<bool>(true, true, global1.d.c.x, global0.a.d), vec3<u32>(global0.d.b, 57512u, global1.a.b), global0.d.c), Struct_5(vec4<bool>(global0.d.d, false, global1.c, global0.a.c.x), vec3<u32>(global1.a.b, 33963u, global1.a.b), global0.a.c), _wgslsmith_f_op_f32(floor(369f))).d.d)), Struct_5(select(vec4<bool>(global1.d.d, 43643u == global1.d.b, global0.d.c.x, true), !select(vec4<bool>(true, global0.c, global0.d.d, true), vec4<bool>(true, global0.d.c.x, true, global1.d.c.x), global1.c), vec4<bool>(true, false, true, global1.d.d)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 457u, 4294967295u), vec3<u32>(0u, global1.d.b, u_input.a)) ^ ~(vec3<u32>(96992u, 21341u, 1u) & vec3<u32>(u_input.a, u_input.a, 97254u)), func_4(func_5(Struct_2(global1.a, global1.b, global1.a.d, global1.a), !global1.d.c), Struct_5(!vec4<bool>(false, global0.c, false, global1.a.c.x), ~vec3<u32>(u_input.a, 1u, global1.d.b), !global0.a.c), Struct_5(vec4<bool>(false, false, global0.d.d, global1.d.d), ~vec3<u32>(u_input.a, 4754u, 1u), vec3<bool>(global1.c, global1.d.d, global1.a.d)), _wgslsmith_f_op_f32(exp2(global0.a.a))).d.c), -1000f);
    global0 = func_4(func_5(func_4(var_0, Struct_5(select(vec4<bool>(global1.d.d, global1.d.d, false, global0.a.d), vec4<bool>(global0.d.c.x, true, false, false), global1.d.d), vec3<u32>(global0.d.b, global0.a.b, u_input.a) ^ vec3<u32>(0u, 0u, 0u), vec3<bool>(true, global0.c, false)), Struct_5(select(vec4<bool>(true, global1.d.d, false, false), vec4<bool>(global1.d.c.x, false, global0.c, true), vec4<bool>(false, global0.c, true, false)), vec3<u32>(global1.a.b, global1.a.b, global1.d.b), vec3<bool>(true, global1.a.d, true)), _wgslsmith_f_op_f32(global1.d.a * _wgslsmith_div_f32(-803f, 440f))), global0.d.c), Struct_5(!(!select(vec4<bool>(global1.c, global0.a.d, global1.a.d, false), vec4<bool>(global1.c, global0.c, global1.a.d, global1.a.c.x), vec4<bool>(false, global0.c, global0.c, global0.c))), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.d.b, 22510u, u_input.a), vec3<u32>(~global0.a.b, max(0u, global1.a.b), 61835u & global0.a.b)), vec3<bool>(global0.a.d || global0.c, global1.c, !all(vec4<bool>(false, true, true, false)))), Struct_5(select(select(!vec4<bool>(true, global0.d.c.x, false, true), select(vec4<bool>(false, true, global1.d.d, global1.c), vec4<bool>(global1.d.d, global0.d.c.x, global0.c, false), global0.d.c.x), vec4<bool>(global0.c, global1.d.c.x, global0.d.c.x, false)), !vec4<bool>(true, false, false, global1.d.c.x), (global1.b > 39334i) && false), ~_wgslsmith_div_vec3_u32(~vec3<u32>(9329u, 0u, global1.d.b), vec3<u32>(23697u, 0u, 4294967295u)), vec3<bool>(~global0.d.b != ~1u, _wgslsmith_f_op_f32(-global0.a.a) > _wgslsmith_f_op_f32(min(-832f, global0.a.a)), (global0.d.c.x | false) || true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.a)) * global0.a.a)) * _wgslsmith_f_op_f32(-global0.a.a)));
    return func_4(Struct_3(vec2<f32>(_wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(-2313f + 739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.d.c, vec3<f32>(-756f, -1100f, -671f)))))), Struct_5(!(!(!vec4<bool>(false, global1.a.d, global1.a.d, global1.d.c.x))), ~(~vec3<u32>(global0.d.b, u_input.a, u_input.a)), vec3<bool>(!(!global0.c), global0.d.d, !(global0.c | global0.a.d))), Struct_5(select(vec4<bool>(global0.a.b >= u_input.a, global0.a.a < 1000f, !global1.a.c.x, false), !(!vec4<bool>(false, true, global0.a.c.x, global1.c)), select(global1.a.c.x && false, any(vec4<bool>(global1.c, false, true, global1.d.c.x)), true)), ~select(reverseBits(vec3<u32>(22368u, u_input.a, 4294967295u)), vec3<u32>(u_input.a, u_input.a, 4294967295u), global1.a.c), !vec3<bool>(!global0.a.d, true, global1.a.b == global0.a.b)), global1.a.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(-860f, 1u, global1.d.c, ((u_input.c.x | -45297i) <= (global1.b << (38028u % 32u))) | global0.a.c.x), 1i, true, func_1());
    global2 = array<vec4<i32>, 25>();
    let var_0 = Struct_5(!vec4<bool>(global0.c, func_1().d, !global1.a.d, global1.d.d), vec3<u32>(u_input.a, select(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 1u, 110094u), 0u), _wgslsmith_mod_u32(abs(global1.d.b), global0.d.b << (global0.a.b % 32u)), true), _wgslsmith_mult_u32(global1.d.b, global0.a.b)), !vec3<bool>(355f <= global0.d.a, true, true));
    global0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.a, -885f) * vec2<f32>(-1394f, -516f)))))), var_0, var_0, global0.d.a);
    var var_1 = Struct_2(global1.a, 1i, all(!var_0.a), Struct_1(_wgslsmith_f_op_f32(-global1.d.a), 0u, select(var_0.c, vec3<bool>(!global1.a.d, true, true), _wgslsmith_f_op_f32(floor(1733f)) != global0.d.a), true));
    global2 = array<vec4<i32>, 25>();
    let var_2 = vec2<i32>(global1.b, global0.b);
    global0 = Struct_2(func_1(), -_wgslsmith_sub_i32((-2147483647i >> (var_0.b.x % 32u)) >> (29959u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, var_2.x), var_2 << (var_0.b.zz % vec2<u32>(32u)))), global1.c != true, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(global1.b, 0i), (var_0.b ^ firstTrailingBit(~vec3<u32>(var_1.d.b, global1.d.b, 32425u))) & vec3<u32>(u_input.a, ~(~0u), abs(u_input.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1121f, -382f, global1.c)), var_1.a.a, 632f, _wgslsmith_f_op_f32(abs(global0.a.a)))))), u_input.a);
}

