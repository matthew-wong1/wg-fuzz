struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, 2147483647i, 38430i, -61595i, -1i, -1i, -14693i, 2147483647i, i32(-2147483648), -1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    global0 = array<i32, 11>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1457f + 1294f), 1i, -u_input.a == max(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(8870u, 11u)], 11532i, global0[_wgslsmith_index_u32(0u, 11u)], -255i), vec4<i32>(global0[_wgslsmith_index_u32(64687u, 11u)], 0i, 0i, u_input.a)), -5731i), min(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 35704u, 1u), ~vec3<u32>(3867u, 4294967295u, 4294967295u)), ~_wgslsmith_mod_u32(20063u, 1u), 1u)), true);
    global0 = array<i32, 11>();
    var var_1 = all(vec2<bool>(all(vec4<bool>(all(vec4<bool>(false, var_0.e, false, var_0.e)), all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), var_0.c)), false));
    var_1 = var_0.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + -147f) * var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(vec4<i32>(0i >> (arg_2.d.x % 32u), 23490i, reverseBits(countOneBits(1i)), arg_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(arg_3.x - 1f);
    global0 = array<i32, 11>();
    var_1 = _wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(select(1260f, arg_2.a, all(vec3<bool>(1i <= arg_0.a.x, false, true || arg_2.e))))));
    global0 = array<i32, 11>();
    return arg_0.a.x;
}

fn func_1() -> Struct_2 {
    var var_0 = 1u;
    let var_1 = any(vec2<bool>(!all(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))) && (_wgslsmith_f_op_f32(func_2()) <= -1102f)));
    var var_2 = Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 19110u), vec2<u32>(1u, 4294967295u)), 11u)], u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 59873u, 1u, 53367u)) % 32u), 1i, global0[_wgslsmith_index_u32(abs(0u), 11u)]));
    var var_3 = all(vec3<bool>(true, true, var_1));
    let var_4 = vec3<i32>(-(~(~func_3(Struct_1(var_2.a), u_input.a, Struct_2(554f, 1i, var_1, vec4<u32>(6294u, 4279u, 0u, 0u), var_1), vec4<f32>(1120f, -1000f, 858f, -1000f)))), func_3(Struct_1(var_2.a), 0i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1850f)), ~(24972i ^ global0[_wgslsmith_index_u32(1u, 11u)]), any(vec2<bool>(true, true)), ~vec4<u32>(1u, 1u, 1u, 1u), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, -1297f, 480f, 558f) - vec4<f32>(640f, 536f, -850f, 1071f))))))), ~(-13957i));
    return Struct_2(543f, -2147483647i, false, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, 21921u, _wgslsmith_mult_u32(1u, 22758u), _wgslsmith_mod_u32(23927u, 1u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), abs(vec4<u32>(1u, 1u, 1u, 1u))), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, any(select(select(vec2<bool>(arg_0.e, arg_0.c), vec2<bool>(arg_0.e, true), vec2<bool>(true, true)), select(vec2<bool>(arg_0.e, arg_0.c), vec2<bool>(false, arg_0.c), false), vec2<bool>(arg_0.e, true))) || arg_0.c, arg_0.e, arg_0.c);
    global0 = array<i32, 11>();
    var_0 = !vec4<bool>(var_0.x, true, true, true);
    let var_1 = vec4<i32>(arg_2, -func_3(Struct_1(vec4<i32>(arg_2, 1i, 7530i, global0[_wgslsmith_index_u32(12000u, 11u)])), ~1i, Struct_2(arg_0.a, u_input.a >> (arg_0.d.x % 32u), !var_0.x, countOneBits(arg_0.d), !var_0.x), vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_div_f32(arg_0.a, -1837f), 1000f)), -17243i, arg_2);
    let var_2 = arg_0;
    return vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(1i, -2147483647i)) >> (4294967295u % 32u), arg_0.b >> (~0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_2.d.x, 11u)], -47668i, var_1.x, -7405i), vec4<i32>(u_input.a, 0i, var_1.x, 4678i)), arg_2);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<i32, 11>();
    let var_0 = Struct_2(arg_3.x, firstLeadingBit(countOneBits(11107i)), (arg_3.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) + arg_3.x)) && arg_1, vec4<u32>(1u, 1u, 1u, 1u), false);
    global0 = array<i32, 11>();
    let var_1 = var_0.d.x;
    var var_2 = var_0;
    return Struct_1(vec4<i32>(-1i, var_0.b, ~firstLeadingBit(-9807i & arg_2.a.x), ~_wgslsmith_mod_i32(-var_0.b, ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_0 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-315f, 1115f))) * _wgslsmith_f_op_f32(f32(-1f) * -344f)))), true, Struct_1(func_4(func_1(), ~1u, u_input.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1486f, 1225f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(466f, -711f, 147f))), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1770f, 176f, -1000f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-832f, -1000f, -202f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-757f, 1000f, -320f) + vec3<f32>(860f, -984f, 528f)))), true)));
    global0 = array<i32, 11>();
    var_0 = func_5(174f, false, func_5(-365f, all(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true)), func_5(_wgslsmith_f_op_f32(ceil(1913f)), true, Struct_1(~var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(890f, -586f, 1269f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(max(-1099f, 1126f)), _wgslsmith_f_op_f32(ceil(628f))) * vec3<f32>(1f, 1f, 1f))), vec3<f32>(117f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1140f)), _wgslsmith_f_op_f32(ceil(-362f))))));
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(92871u, 23898u), 23114u, 0u), ~vec3<u32>(_wgslsmith_add_u32(0u, 32346u), 5816u, ~17639u)) << ((_wgslsmith_dot_vec4_u32(abs(vec4<u32>(60236u, 0u, 0u, 54720u)), ~vec4<u32>(1u, 83519u, 60589u, 0u)) ^ countOneBits(~abs(51054u))) % 32u);
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = select(vec3<bool>(true | any(!vec4<bool>(var_2.x, var_2.x, false, var_2.x)), var_2.x, var_2.x), !(!select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), false))), any(!select(vec4<bool>(false, false, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), true), vec4<bool>(false, var_2.x, false, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-451f, _wgslsmith_f_op_f32(-119f + _wgslsmith_f_op_f32(f32(-1f) * -599f)), -1439f))), ~(~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_1, var_1)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, 67189u)))));
}

