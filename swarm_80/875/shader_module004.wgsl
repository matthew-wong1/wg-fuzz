struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(57717u, Struct_1(-598f, vec2<i32>(0i, 48700i), vec2<f32>(385f, 1000f), vec2<f32>(-880f, 1000f)), 1i, Struct_1(346f, vec2<i32>(-1i, -1i), vec2<f32>(1035f, -599f), vec2<f32>(385f, -1407f)), 29425u);

var<private> global1: f32 = 230f;

var<private> global2: vec3<f32> = vec3<f32>(479f, 305f, -906f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = vec2<u32>(0u, global0.a);
    var_0 = select(false, !select(all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(814f * -1466f), _wgslsmith_f_op_f32(sign(363f))) > 492f);
    var var_2 = _wgslsmith_add_u32(var_1.x ^ (85775u << (~u_input.b % 32u)), _wgslsmith_add_u32(23819u, 9917u >> (u_input.b % 32u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - 243f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -897f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-656f, arg_0.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1382f)), 1699f)))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(12024u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2045f, global2.x)))), min(vec2<i32>(50428i & arg_2.x, arg_1.x), _wgslsmith_mod_vec2_i32(-u_input.a.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, global0.b.b.x), vec2<i32>(0i, arg_1.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.b.d))), global2.yx), i32(-1i) * -11598i, global0.b, 4294967295u);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) * -1867f))) + vec3<f32>(696f, 747f, global0.d.a));
    global1 = _wgslsmith_f_op_f32(global0.b.c.x - -1000f);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.b, var_0.b)), _wgslsmith_f_op_f32(func_3(Struct_1(-915f, arg_1.xy, vec2<f32>(var_0.b.d.x, _wgslsmith_f_op_f32(exp2(global0.d.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.c, global2.zx, true)))), var_0.b)), global2.x);
    let var_1 = !vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.d.x)) < global2.x, true == all(vec3<bool>(true, false, false)));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(func_2(26113u, u_input.a, vec2<i32>(u_input.a.x, 0i)).d.x, 530f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-646f)) + _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f), _wgslsmith_f_op_f32(func_3(arg_0, global0.b))))));
    global0 = Struct_2(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(global0.e, 13232u, 70098u)), ~(~vec3<u32>(global0.e, 55455u, arg_1))) ^ ~(~(global0.a >> (27816u % 32u))), func_2(u_input.b, vec4<i32>(_wgslsmith_mod_i32(~global0.d.b.x, _wgslsmith_mod_i32(2147483647i, u_input.a.x)), countOneBits(_wgslsmith_div_i32(arg_0.b.x, 0i)), 2147483647i, global0.b.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_0.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(global0.c, -14111i), arg_0.b)) & _wgslsmith_mult_vec2_i32(arg_0.b, min(u_input.a.yw, global0.b.b))), arg_0.b.x, Struct_1(_wgslsmith_f_op_f32(-585f - 297f), ~vec2<i32>(8104i, u_input.a.x << (u_input.b % 32u)), arg_0.d, arg_0.d), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1), vec2<u32>(global0.a, 4294967295u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1, 0u, 0u), vec4<u32>(44559u, 26034u, 13856u, 4294967295u)) % 32u)) << (~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, u_input.b, arg_1), vec3<u32>(4294967295u, u_input.b, arg_1)), vec3<u32>(4294967295u, global0.e, 105820u)) % 32u));
    var var_0 = vec2<u32>(reverseBits(_wgslsmith_div_u32(85431u, 4294967295u)), global0.a) | ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 44236u), ~vec2<u32>(global0.e, arg_1)));
    let var_1 = select(!(!vec2<bool>(any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, true)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), (true | all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))) | true);
    let var_2 = vec4<bool>(all(vec2<bool>(var_1.x, any(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)))), select(var_1.x, all(vec4<bool>(var_1.x, true, true, true)), all(vec2<bool>(true & var_1.x, var_1.x & var_1.x))), !var_1.x, var_1.x == var_1.x);
    return Struct_1(-1674f, arg_0.b & -_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.d.b.x, global0.d.b.x), vec2<i32>(38362i, 9120i)), global0.d.b, -vec2<i32>(-2147483647i, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-787f + arg_0.a), _wgslsmith_div_f32(global2.x, -509f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d * global0.b.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zy + vec2<f32>(global2.x, -296f))))), global2.zz);
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = global2.yx;
    let var_1 = global0.a;
    var var_2 = 1631f;
    let var_3 = Struct_2(24861u, global0.d, -23409i, func_4(func_2(~1u, ~(~u_input.a), vec2<i32>(i32(-1i) * -2147483647i, -arg_1)), ~(~u_input.b)), global0.e);
    var var_4 = (select(select(global0.d.b.x == var_3.c, any(vec4<bool>(true, false, false, false)), true), !(1u < var_3.e), true) && false) || true;
    return all(vec3<bool>(any(vec4<bool>(true, true, true, true)) || !all(vec3<bool>(false, true, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), var_3.a > ~_wgslsmith_clamp_u32(1u, 36218u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>((global2.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(492f)), global0.b.c.x)) | func_1(global0.d.d.x, _wgslsmith_mult_i32(global0.d.b.x, global0.d.b.x << (global0.a % 32u))), any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_2(~0u, ~vec4<i32>(global0.c, u_input.a.x, global0.b.b.x, global0.b.b.x) >> (vec4<u32>(global0.e, 56623u, 0u, 339u) % vec4<u32>(32u)), vec2<i32>(1i, global0.b.b.x)).b.x, _wgslsmith_dot_vec3_i32(max(~u_input.a.wxz, abs(vec3<i32>(global0.c, -21756i, global0.c))), u_input.a.www)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(338f, global2.x, global2.x) - vec3<f32>(-1326f, global0.b.d.x, global2.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global0.d.d.x, global2.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1151f) + vec3<f32>(-216f, 539f, -2285f)))))));
}

