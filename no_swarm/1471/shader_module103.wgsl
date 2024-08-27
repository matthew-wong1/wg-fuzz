struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32 = 1000f;

var<private> global2: bool = true;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(304f)) + _wgslsmith_f_op_f32(f32(-1f) * -254f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1721f)) * _wgslsmith_f_op_f32(1095f + 2342f))))));
    global2 = (abs(0u) < u_input.b.x) && ((u_input.a <= _wgslsmith_dot_vec3_u32(abs(u_input.b.zxy), ~u_input.b.zzx)) | select(arg_0.a.x != arg_0.a.x, !any(vec2<bool>(false, false)), any(vec2<bool>(true, true))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -316f) * -297f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2054f)))))));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-739f)), 494f));
    var var_0 = arg_0;
    return _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(-20844i, var_0.a.x)), ~vec2<i32>(-25444i, -31959i)), 1i) >= select(arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a.x, -8051i), _wgslsmith_mod_i32(abs(-45974i), -50314i)), true);
}

fn func_4(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(~global0.xz, global0.yx), i32(-1i) * -27310i, _wgslsmith_mod_i32(arg_0, -min(1i, global0.x)), global0.x));
    global2 = !arg_1;
    let var_1 = Struct_1(var_0.a);
    let var_2 = Struct_1(~abs(-var_0.a) >> (vec4<u32>(~u_input.b.x, ~firstLeadingBit(u_input.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), 36367u << (0u % 32u)), 1u) % vec4<u32>(32u)));
    global0 = var_0.a.wyw;
    return vec4<bool>(arg_1, !arg_1, !(!(arg_1 || arg_1)), any(vec4<bool>(!arg_1, true, !arg_1, true & arg_1)) == false);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, false, true))), func_4(arg_1.a.x, !func_3(Struct_1(vec4<i32>(global0.x, arg_1.a.x, -2147483647i, 7541i))) && any(vec4<bool>(false, false, false, false))));
    global2 = any(vec4<bool>(false, !select(var_0.x && true, func_3(arg_1), true != var_0.x), true, false));
    var var_1 = Struct_1(-vec4<i32>(~(0i << (u_input.b.x % 32u)), -13341i, firstTrailingBit(global0.x), 2147483647i));
    let var_2 = u_input.a;
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.wx, arg_1.a.xw) & _wgslsmith_mod_i32(i32(-1i) * -arg_1.a.x, global0.x), _wgslsmith_clamp_i32(-2147483647i, -firstLeadingBit(var_1.a.x & arg_1.a.x), 0i), -4830i);
    return func_4(arg_1.a.x >> (4294967295u % 32u), var_0.x).zyy;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~u_input.a), abs(u_input.a)), vec2<u32>(32360u, 43984u)) & _wgslsmith_mod_u32(~(1u | ~u_input.a), u_input.a);
    let var_1 = vec3<bool>(false, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_2(u_input.a, Struct_1(vec4<i32>(1i, -15585i, -16558i, 89248i)), 770f))), true);
    global2 = true;
    var_0 = 4294967295u;
    var_0 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(378f * -652f))) * -2551f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1858f), _wgslsmith_f_op_f32(floor(-1050f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = global0.x;
    global0 = min(vec3<i32>(i32(-1i) * -4906i, -global0.x, -_wgslsmith_add_i32(-1i, firstLeadingBit(-2147483647i))), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, global0.x, 2995i, 68588i), arg_0.a), select(arg_0.a.x, global0.x, arg_2.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.a.xyz, vec3<i32>(arg_0.a.x, arg_0.a.x, 35476i)), arg_0.a.yzw)));
    var var_1 = !(!vec2<bool>(any(!vec4<bool>(true, true, true, arg_2.x)), !(!arg_2.x)));
    var var_2 = arg_2;
    global0 = vec3<i32>(arg_0.a.x, abs(-65404i), _wgslsmith_add_i32(global0.x, ~global0.x) ^ -1i);
    return Struct_1(-(countOneBits(abs(vec4<i32>(-1i, global0.x, global0.x, -12112i))) & vec4<i32>(-5409i, global0.x, -61664i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-963f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-526f)), _wgslsmith_div_f32(-243f, 823f)), _wgslsmith_f_op_f32(trunc(-171f))))) + 1000f);
    var var_2 = func_5(Struct_1(-vec4<i32>(global0.x, -9353i, global0.x, 11432i)), _wgslsmith_f_op_f32(func_1()), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, -25712i) ^ vec3<i32>(-4100i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x) >> (vec3<u32>(3926u, u_input.b.x, u_input.a) % vec3<u32>(32u))) >= global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(280f)) - _wgslsmith_f_op_f32(step(-1000f, var_1))) != 184f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 353f, var_1)) + vec3<f32>(-1948f, _wgslsmith_f_op_f32(-var_1), -183f)))));
    global2 = true;
    global1 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(1i, var_2.a.x, 29447i, global0.x), vec4<i32>(-13688i, var_2.a.x, -2147483647i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.a.x, var_2.a.x, -1i), var_2.a) >> ((vec4<u32>(22033u, 20245u, u_input.b.x, u_input.b.x) | u_input.b) % vec4<u32>(32u))) ^ 35909i, u_input.b.zxx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-322f, -857f, 572f, var_3), vec4<f32>(-804f, 1003f, -741f, var_1)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 172f, var_3, var_1) * vec4<f32>(var_1, var_1, -533f, 683f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, 276f), _wgslsmith_div_f32(var_3, var_3))), 759f, -163f))), vec2<i32>(-1i, min(_wgslsmith_mod_i32(20010i, 2147483647i), 41165i)), -select(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.a.x, global0.x), firstLeadingBit(global0.x)), min(global0.x >> (u_input.a % 32u), abs(-45346i)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
}

