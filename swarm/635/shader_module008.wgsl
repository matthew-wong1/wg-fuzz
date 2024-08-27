struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32 = 613f;

var<private> global2: array<vec4<f32>, 32>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3;
    let var_1 = vec4<bool>(arg_3.b, _wgslsmith_f_op_f32(ceil(514f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(-var_0.a.a)))), u_input.b == u_input.b, true);
    var var_2 = vec4<bool>(all(select(select(var_1.wx, !var_1.yw, all(var_1)), var_1.wz, all(var_1.zzz))), !all(select(!var_1.zxw, var_1.xzz, global0.x < global3.x)), all(select(var_1.zy, select(select(vec2<bool>(var_1.x, false), var_1.xw, var_1.x), vec2<bool>(var_0.b, var_1.x), true), _wgslsmith_f_op_f32(trunc(1436f)) <= _wgslsmith_f_op_f32(arg_1.b.a * 269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.a, _wgslsmith_f_op_f32(var_0.a.a - arg_3.a.a)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-872f, _wgslsmith_f_op_f32(ceil(-1188f)))) * _wgslsmith_f_op_f32(min(135f, 932f))));
    let var_3 = ~arg_3.a.b | select(var_0.a.b, firstTrailingBit(9733i), all(select(var_1, !var_1, vec4<bool>(arg_3.b, true, false, var_1.x))));
    var var_4 = all(var_1);
    return vec4<u32>(1u | firstLeadingBit(select(_wgslsmith_div_u32(0u, u_input.b), reverseBits(global3.x), any(var_1))), ~(~abs(54548u)), ~_wgslsmith_sub_u32(8313u, ~_wgslsmith_mult_u32(global3.x, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global3.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), global0.zz)), firstLeadingBit(global0.yw | vec2<u32>(0u, 0u))), ~countOneBits(global3.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = ~_wgslsmith_sub_vec4_u32(abs(func_3(vec3<i32>(-68889i, -5896i, u_input.a.x), Struct_3(arg_1.b, arg_1), _wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(global0.x, 32u)])), Struct_2(Struct_1(arg_0.x, -13526i), true))), func_3(firstLeadingBit(vec3<i32>(global4.x, arg_1.b, u_input.a.x)), Struct_3(min(u_input.a.x, -25192i), Struct_1(arg_0.x, -45826i)), global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 32u)], Struct_2(arg_1, true)));
    let var_1 = !vec2<bool>(false, var_0.x > ~(~34800u));
    var var_2 = u_input.a;
    var var_3 = any(!(!(!vec2<bool>(true, var_1.x))));
    var var_4 = vec4<u32>(1u, ~firstTrailingBit(global0.x), _wgslsmith_sub_u32(func_3(u_input.a, Struct_3(var_2.x, Struct_1(576f, arg_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1337f, arg_1.a, -519f, arg_0.x)), Struct_2(Struct_1(arg_1.a, -27926i), var_1.x)).x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_2, arg_2), 82933u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_2.x, arg_2.x, global3.x), vec4<u32>(u_input.b, 12399u, 75682u, 79980u)) % 32u)), (global0.x << (17400u % 32u)) >> (~(~var_0.x) % 32u));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-18335i, _wgslsmith_clamp_i32(19106i, -31148i, var_2.x), global4.x, i32(-1i) * -2147483647i), -(vec4<i32>(u_input.a.x, global4.x, u_input.a.x, u_input.a.x) | vec4<i32>(-2147483647i, u_input.a.x, -13468i, -17979i))), u_input.a.x, ~(-19432i), -5342i) >> (countOneBits(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(40831u, u_input.b, 4294967295u, 33980u), vec4<u32>(var_4.x, 4294967295u, 57917u, 45923u)))) % vec4<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> bool {
    var var_0 = global3.x;
    var var_1 = Struct_3(~27302i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(733f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-837f)), _wgslsmith_f_op_f32(1904f * -1000f))), reverseBits(-firstLeadingBit(11686i))));
    var var_2 = Struct_2(var_1.b, any(select(!(!vec3<bool>(arg_0, false, true)), vec3<bool>(arg_0, true, true), !(var_1.b.a >= var_1.b.a))));
    var_0 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.a.a));
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> vec2<f32> {
    var var_0 = select(select(select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), all(vec3<bool>(false, true, true)))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_2.x - arg_2.x) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-812f, arg_2.x))))), vec3<bool>(!func_4(global0.x == 16203u, func_2(vec4<f32>(arg_2.x, arg_2.x, -189f, arg_2.x), Struct_1(arg_2.x, -25587i), vec3<u32>(0u, global3.x, global0.x))), true, true), false || !any(vec2<bool>(true, true)));
    global3 = countOneBits(~(~(global0.xw >> (vec2<u32>(global0.x, 1u) % vec2<u32>(32u))))) >> (firstTrailingBit(vec2<u32>(4294967295u, max(55191u, arg_0.x) & ~global0.x)) % vec2<u32>(32u));
    let var_1 = Struct_2(Struct_1(arg_2.x, arg_1), var_0.x);
    let var_2 = global3.x ^ 1u;
    global2 = array<vec4<f32>, 32>();
    return arg_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 69367u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-165f, -1841f)), vec2<f32>(-253f, _wgslsmith_f_op_f32(f32(-1f) * -1068f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0.zyy, ~2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-776f, -2286f, -989f)))))));
    global0 = vec4<u32>(9992u & u_input.b, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(0u, 51142u, global3.x)), 4294967295u), 62017u, u_input.b & u_input.b);
    var var_2 = Struct_4(global0.wz, Struct_3(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))), -_wgslsmith_add_i32(global4.x, -2147483647i))), select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false))), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(108669u, 1u, 85917u, 1u) >> (vec4<u32>(global3.x, ~22047u, firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(66830u, 0u, 4294967295u, global0.x), vec4<u32>(0u, var_2.a.x, var_2.a.x, global0.x))) % vec4<u32>(32u))), ~vec4<u32>(var_2.a.x, 71998u, _wgslsmith_clamp_u32(~11205u, _wgslsmith_dot_vec2_u32(vec2<u32>(33032u, 39296u), vec2<u32>(0u, 1306u)), _wgslsmith_mult_u32(4294967295u, global0.x)), 3444u));
    let var_4 = vec4<i32>(_wgslsmith_add_i32(var_2.b.b.b, firstLeadingBit(~var_2.b.b.b)), max(~(-reverseBits(u_input.a.x)), global4.x), u_input.a.x, ~(~(~34001i)));
    var var_5 = var_4.x;
    global4 = u_input.a.zy;
    let var_6 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(82434u);
}

