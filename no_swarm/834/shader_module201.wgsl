struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_3;
    var_0 = arg_0;
    var var_1 = arg_2;
    let var_2 = arg_0;
    global0 = arg_2;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), _wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1324f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_1.x;
    let var_1 = ~u_input.c.wyy;
    var var_2 = arg_0.c.x;
    var_2 = _wgslsmith_f_op_f32(round(arg_2.a.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_2.c.wwy, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(arg_0, arg_1.x, Struct_1(arg_2.a, u_input.b, arg_0.c, arg_0.d, u_input.c.zz), arg_2)))), false)), arg_0.b, global0.c, vec3<u32>(min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, u_input.b, 1u), vec3<u32>(4294967295u, arg_2.b, arg_2.b))), min(arg_0.d.x >> (global0.d.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, 10129u, u_input.a), arg_2.d)), _wgslsmith_dot_vec2_u32(~vec2<u32>(65033u, 33525u), global0.d.xy)) >> (arg_0.d % vec3<u32>(32u)), ~global0.e);
    return ~u_input.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-915f * global0.c.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(561f, -156f), _wgslsmith_f_op_f32(select(-705f, global0.a.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_div_u32(global0.d.x, ~(~29429u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(1433f)), global0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x * -645f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(select(171f, 562f, arg_1.x))))))), vec3<u32>(~_wgslsmith_sub_u32(1u, u_input.a), 4294967295u, 1u), -func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(340f, global0.c.x, -3240f), global0.c.zwy, arg_1.x)), _wgslsmith_mult_u32(63879u, global0.b), _wgslsmith_f_op_vec4_f32(-global0.c), ~global0.d, u_input.c.ww | global0.e), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false)), all(vec2<bool>(false, arg_1.x))), Struct_1(vec3<f32>(-688f, global0.c.x, -461f), u_input.b, global0.c, ~vec3<u32>(0u, 68704u, 41351u), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -55137i), vec2<i32>(global0.e.x, 0i)))).wz);
    let var_0 = Struct_1(global0.c.zyy, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, vec4<f32>(_wgslsmith_div_f32(1023f, global0.c.x), _wgslsmith_f_op_f32(global0.c.x - -1000f), _wgslsmith_f_op_f32(floor(-117f)), global0.c.x))), min(~_wgslsmith_mult_vec3_u32(global0.d, firstTrailingBit(vec3<u32>(4294967295u, u_input.a, u_input.a))), ~(~(global0.d ^ vec3<u32>(global0.d.x, 4294967295u, u_input.a)))), u_input.d);
    let var_1 = Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_vec3_f32(func_3(var_0, arg_1.x, var_0, Struct_1(var_0.c.xyx, 4294967295u, global0.c, global0.d, arg_0.wy))).x)), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1119f)) + _wgslsmith_f_op_f32(global0.a.x - -442f))), ~(_wgslsmith_add_u32(var_0.b | 7822u, var_0.b) << (abs(~1u) % 32u)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(825f)), global0.c.x, 926f), ~countOneBits(~firstLeadingBit(var_0.d)), vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, 2147483647i), select(2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.e.x, global0.e.x, global0.e.x, -3118i)), vec4<i32>(20114i, u_input.d.x, var_0.e.x, var_0.e.x)), all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0, !arg_1.x | all(vec3<bool>(true, arg_1.x, arg_1.x)), var_1, var_1)).x), var_0.c.x);
    var var_3 = var_0;
    return Struct_1(var_1.a, 8909u | _wgslsmith_mod_u32(firstTrailingBit(1u), 4294967295u), _wgslsmith_div_vec4_f32(var_1.c, global0.c), (~global0.d | var_0.d) ^ vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, var_3.d.x), reverseBits(vec4<u32>(29982u, 379u, 59080u, var_3.b))), u_input.a), vec2<i32>(-arg_0.x, max(31993i, var_0.e.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~(~global0.b);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.c.yyy))), ~abs(~(~u_input.a)), _wgslsmith_f_op_vec4_f32(max(global0.c, arg_1.c)), ~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(34653u, 2251u, arg_0.d.x), vec3<u32>(1u, arg_1.b, arg_0.b), arg_1.d) >> (~arg_0.d % vec3<u32>(32u)))), arg_1.e);
    var var_2 = arg_1.e.x ^ _wgslsmith_mod_i32(max(var_1.e.x, u_input.c.x), ~_wgslsmith_add_i32(-2147483647i, -global0.e.x));
    var_2 = _wgslsmith_sub_i32(-firstLeadingBit(_wgslsmith_mult_i32(2147483647i, -1i)), global0.e.x);
    let var_3 = _wgslsmith_mult_vec3_i32(~(u_input.c.yzz << (arg_1.d % vec3<u32>(32u))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~var_1.e.x, ~var_1.e.x, 15191i), i32(-1i) * -2147483647i, ~arg_0.e.x << (var_1.d.x % 32u)), -2147483647i, -(2147483647i | (arg_0.e.x ^ var_1.e.x))));
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec3<i32> {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-191f, 383f, global0.c.x)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(192f, _wgslsmith_f_op_f32(select(global0.a.x, global0.c.x, arg_0)), _wgslsmith_div_f32(1489f, 246f))))), func_5(func_4(~func_2(Struct_1(vec3<f32>(859f, global0.a.x, 577f), global0.b, global0.c, vec3<u32>(u_input.a, 15304u, global0.b), arg_2.wy), vec3<bool>(false, arg_0, arg_0), Struct_1(vec3<f32>(305f, global0.a.x, -645f), u_input.b, global0.c, vec3<u32>(1u, 15340u, 4294967295u), vec2<i32>(global0.e.x, u_input.c.x))), vec2<bool>(!arg_0, arg_0), vec3<i32>(-1i) * -arg_1.yzz), func_4(_wgslsmith_sub_vec4_i32(arg_1, abs(arg_2)), !(!vec2<bool>(arg_0, arg_0)), firstLeadingBit(arg_1.yxx))), _wgslsmith_f_op_vec4_f32(step(global0.c, global0.c)), firstTrailingBit(reverseBits(vec3<u32>(~u_input.a, _wgslsmith_mult_u32(global0.b, 57644u), abs(0u)))), global0.e);
    global0 = Struct_1(global0.a, u_input.a, global0.c, vec3<u32>(~_wgslsmith_add_u32(~32774u, global0.b & 9119u), 44596u, ~(~1u)), arg_2.yx);
    let var_0 = func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, 0i, -1i), vec4<i32>(global0.e.x, 0i, -1i, -1i)), _wgslsmith_add_vec4_i32(~arg_1, vec4<i32>(u_input.d.x, 2147483647i, -79384i, 7707i))), countOneBits(0i), arg_2.x, _wgslsmith_sub_i32(arg_1.x, i32(-1i) * -73108i)), select(vec2<bool>(any(vec2<bool>(arg_0, true)), all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), vec2<bool>(arg_0, any(vec4<bool>(true, arg_0, false, arg_0))), select(vec2<bool>(!arg_0, arg_0), !(!vec2<bool>(arg_0, true)), !select(vec2<bool>(false, true), vec2<bool>(true, arg_0), arg_0))), vec3<i32>(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.e.x, arg_2.x, u_input.c.x, arg_2.x), vec4<i32>(arg_2.x, global0.e.x, 0i, arg_2.x) >> (vec4<u32>(u_input.b, 25052u, global0.d.x, u_input.b) % vec4<u32>(32u)))), global0.e.x, ~global0.e.x));
    return vec3<i32>(~arg_2.x, -4093i, i32(-1i) * -39704i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(func_1(true, u_input.c, u_input.c), vec3<i32>(_wgslsmith_sub_i32(~21794i, -1i), u_input.c.x, ~(-37320i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(458f * -1278f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)) + _wgslsmith_f_op_f32(135f * global0.a.x)));
    var var_1 = -2147483647i;
    let var_2 = (!all(vec3<bool>(true, true, true)) && !all(vec2<bool>(true, false))) | false;
    var var_3 = -1i;
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), -1000f), _wgslsmith_f_op_f32(771f * 2212f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(360f, -1000f)))) - global0.a.x)), ~u_input.a, _wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, 439f, global0.c.x, -774f)))))), var_2)), vec3<u32>(_wgslsmith_div_u32(global0.d.x, ~global0.d.x), 1u, u_input.b), vec2<i32>(_wgslsmith_add_i32(41767i, ~0i), ~46989i));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 402f, -2246f) - var_4.a))) + vec3<f32>(-286f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c.x), 694f), -1003f)), select(u_input.a, u_input.b, true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-266f)), var_4.a.x) + _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(2281f + 1000f)))), func_4(vec4<i32>(-2147483647i, global0.e.x, 1i, 2147483647i), select(vec2<bool>(true, false), !vec2<bool>(false, var_2), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), vec2<bool>(true, var_2))), vec3<i32>(-1i, -2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global0.e.x, 20727i, var_4.e.x, -4044i)))).a.x, var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), global0.d, vec2<i32>(~(~(-40088i)), 46951i));
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(var_4.c.x + var_5.c.x), _wgslsmith_f_op_f32(exp2(global0.a.x))) * vec3<f32>(var_5.c.x, _wgslsmith_div_f32(-602f, -107f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(var_5.c.x, -717f, -1338f), 4353u, vec4<f32>(-205f, -672f, 144f, 641f), vec3<u32>(1u, 43839u, var_4.b), var_4.e), var_2, Struct_1(var_4.c.ywz, global0.d.x, vec4<f32>(-2192f, -1089f, -1461f, var_5.c.x), var_5.d, global0.e), Struct_1(vec3<f32>(var_5.a.x, global0.c.x, var_5.a.x), 2907u, vec4<f32>(-1585f, var_4.a.x, var_4.a.x, -315f), var_4.d, vec2<i32>(var_0.x, -60677i)))).x)) * var_4.c.wzx), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(63694u, var_5.b), ~var_4.d.xx) | min(firstTrailingBit(16773u), ~22274u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(-456f * -1286f))), _wgslsmith_f_op_f32(f32(-1f) * -916f)) - vec4<f32>(var_4.c.x, -1000f, _wgslsmith_f_op_f32(var_5.a.x + _wgslsmith_f_op_f32(-var_4.c.x)), -617f)), ~vec3<u32>(func_5(func_4(u_input.c, vec2<bool>(true, true), vec3<i32>(global0.e.x, var_0.x, var_0.x)), func_4(vec4<i32>(7906i, 1i, -1i, -1i), vec2<bool>(var_2, true), vec3<i32>(global0.e.x, -41359i, -5302i))), 23456u << (~u_input.b % 32u), 0u), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~9742i, var_0.x), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 25417i), vec2<i32>(2147483647i, var_0.x)), -global0.e.x)), abs(var_0.yx << (vec2<u32>(1u, var_4.d.x) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, var_6.b, var_5.b), vec3<u32>(4294967295u, 53622u, 10236u), !vec3<bool>(true, true, var_2)), vec3<u32>(71282u, _wgslsmith_dot_vec2_u32(global0.d.zz, var_6.d.xx), ~7833u)) >> (var_6.d % vec3<u32>(32u)), vec4<f32>(1543f, _wgslsmith_f_op_f32(trunc(174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) * var_5.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_6.a.x, -692f, var_2)))))), abs(vec2<i32>(0i, -var_6.e.x)), global0.b);
}

