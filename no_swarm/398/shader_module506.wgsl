struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = any(arg_0.zz);
    let var_1 = Struct_3(arg_0.wyz, vec3<u32>(_wgslsmith_mod_u32(global0.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(44881u, 0u), vec2<u32>(arg_1.c.x, 36437u)))), arg_1.a, global0.x), arg_1.a);
    var_0 = !any(vec2<bool>(arg_0.x, false));
    let var_2 = Struct_3(!select(select(select(vec3<bool>(var_1.a.x, false, true), arg_0.zyy, vec3<bool>(var_1.a.x, var_1.a.x, true)), select(var_1.a, var_1.a, var_1.a.x), arg_0.x), select(arg_0.ywx, vec3<bool>(true, var_1.a.x, var_1.a.x), all(arg_0.xyw)), all(arg_0)), ~abs(global0.yww), 4294967295u);
    let var_3 = arg_3;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(24546u, ~global0.x, 15701u)), ~_wgslsmith_dot_vec2_u32(abs(arg_1.c ^ global0.wy), _wgslsmith_add_vec2_u32(u_input.b | vec2<u32>(u_input.b.x, 4294967295u), abs(vec2<u32>(0u, 61795u)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = vec2<u32>(u_input.b.x, select(global0.x, u_input.a & global0.x, 32821u > ~(1u >> (global0.x % 32u))));
    var var_1 = Struct_2(_wgslsmith_div_u32(1u, 1u) & _wgslsmith_mod_u32(func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), Struct_2(1u, vec2<i32>(u_input.e.x, 1i), global0.zy, u_input.e.x), 1i, Struct_1(u_input.e)), _wgslsmith_div_u32(4294967295u, 37653u)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(global2.x, u_input.e.x)) << (~countOneBits(global0.zx) % vec2<u32>(32u)), firstTrailingBit(u_input.e.yx)), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(1u, 1u), ~(~u_input.b)), _wgslsmith_mult_i32(global2.x, 36065i));
    var var_2 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), true), vec2<bool>(true, 16173i <= global2.x)), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), vec2<bool>(true, true));
    global2 = ~(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.e & u_input.e, vec3<i32>(u_input.e.x, arg_0, var_1.d)), ~(~2147483647i), 2147483647i, _wgslsmith_sub_i32(u_input.e.x, firstLeadingBit(0i))) << (~(~(~vec4<u32>(u_input.c, u_input.a, 88027u, 4294967295u))) % vec4<u32>(32u)));
    global2 = vec4<i32>(9331i, var_1.b.x, ~abs(-arg_0), ~(i32(-1i) * -_wgslsmith_mod_i32(global2.x, global2.x)));
    return vec2<bool>(false, (global2.x == abs(_wgslsmith_dot_vec3_i32(u_input.e, global2.wxy))) & (var_0.x < var_0.x));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global2 = _wgslsmith_add_vec4_i32(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, global2.x, 7103i, 1i) >> (vec4<u32>(37015u, 0u, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, global2.x, 1i, global2.x), vec4<i32>(1i, 0i, u_input.e.x, 45495i), vec4<i32>(global2.x, 11469i, -23297i, u_input.e.x)))), -(~vec4<i32>(~(-1i), abs(-2147483647i), u_input.e.x, _wgslsmith_mult_i32(global2.x, 1i))));
    var var_0 = !(!any(vec2<bool>(!arg_0, arg_0)));
    let var_1 = Struct_1(vec3<i32>(global2.x, _wgslsmith_div_i32(1i, 1i), reverseBits(-2147483647i) & countOneBits(global2.x)));
    global2 = vec4<i32>(_wgslsmith_mod_i32(~u_input.e.x, ~(-countOneBits(2976i))), global2.x, ~1i, -_wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -2147483647i), -2147483647i));
    global1 = var_1.a.x;
    return func_2(0i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-617f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1389f, 1517f) * 1000f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(441f + -311f) + -459f), _wgslsmith_f_op_f32(f32(-1f) * -845f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.zxw);
    let var_1 = select(true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(false)), vec2<bool>(true, true))), true);
    var var_2 = all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1, var_1, true, var_1), var_1), !(var_1 & true)), select(!(!vec4<bool>(var_1, false, false, true)), select(!vec4<bool>(true, var_1, var_1, true), !vec4<bool>(false, var_1, true, var_1), vec4<bool>(true, var_1, false, var_1)), !(!vec4<bool>(true, true, false, var_1))), vec4<bool>(var_1 != (var_1 | true), var_1, _wgslsmith_clamp_u32(3507u, global0.x, u_input.c) != u_input.a, func_2(u_input.d, vec2<f32>(519f, -160f)).x | true)));
    var var_3 = vec4<u32>(~select(u_input.b.x, 1u, all(!vec2<bool>(false, var_1))), _wgslsmith_mod_u32(~firstLeadingBit(~0u), 1u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, u_input.a), u_input.b.x), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, u_input.b.x, global0.x, 4294967295u), vec4<u32>(global0.x, global0.x, 4294967295u, u_input.b.x) ^ vec4<u32>(6072u, u_input.b.x, u_input.b.x, u_input.b.x), any(vec3<bool>(var_1, false, var_1))) ^ reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 0u), vec4<u32>(1u, 31724u, u_input.a, 4294967295u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, global0.x), vec4<u32>(global0.x, u_input.c, 1u, u_input.a))) | vec4<u32>(~u_input.b.x, 26290u, global0.x | global0.x, _wgslsmith_clamp_u32(u_input.b.x, 1u, 0u))));
    var_3 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.x, 4294967295u, 23688u), vec4<u32>(4294967295u, u_input.a, u_input.a, global0.x)))), vec4<u32>(abs(var_3.x), ~abs(~global0.x), 4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 56154u), var_3.xw)));
    var var_4 = true;
    let var_5 = !(!vec4<bool>(~1u < firstLeadingBit(u_input.a), var_1, var_1, var_1));
    var_4 = !all(select(vec4<bool>(true, u_input.b.x >= global0.x, !var_1, all(vec2<bool>(true, false))), !vec4<bool>(var_1, false, var_5.x, false), any(!var_5.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-867f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1853f)) * _wgslsmith_f_op_f32(1000f * -601f))))), ~min(-1i, abs(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(779f, _wgslsmith_f_op_f32(min(2101f, 424f)))) + 1000f));
}

