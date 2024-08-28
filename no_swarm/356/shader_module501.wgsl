struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = !(!vec4<bool>(true, true | (global0.a.x > global0.a.x), true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global0.a.x) + _wgslsmith_f_op_f32(global0.b + global0.b)))) - _wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(f32(-1f) * -364f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - global0.b) * global0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -302f));
}

fn func_2() -> vec3<f32> {
    var var_0 = all(vec2<bool>(func_3(), abs(59963u) < u_input.a));
    let var_1 = (_wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(28514i, 2147483647i), vec2<i32>(0i, 0i)), vec2<i32>(1i, 1i)) | vec2<i32>(firstLeadingBit(firstTrailingBit(-1i)), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(42183i, -27915i, 18803i), vec3<i32>(-1i, 2147483647i, 1i))))) ^ -(_wgslsmith_div_vec2_i32(select(vec2<i32>(-22193i, 18862i), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, false)), vec2<i32>(-47487i, 1i)) & firstTrailingBit(abs(vec2<i32>(-1i, 2147483647i))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    var var_2 = _wgslsmith_sub_u32(41011u, u_input.a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_u32(reverseBits(0u | _wgslsmith_clamp_u32(6295u, u_input.a, global0.c)), 3430u));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.a))))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> u32 {
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1163f * global0.b) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), -123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1325f * 368f))), arg_1.x) * 1200f), global0.c);
    let var_0 = select(vec4<bool>(true & (global0.a.x == _wgslsmith_f_op_vec3_f32(func_2()).x), true, !func_3(), (-2147483647i >> (u_input.a % 32u)) != arg_0.x), select(vec4<bool>(false, any(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), !any(vec2<bool>(arg_2.x, true)), false), vec4<bool>(-600f == arg_1.x, arg_2.x, func_3(), false | any(vec3<bool>(arg_2.x, arg_2.x, true))), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), select(select(vec4<bool>(all(arg_2), arg_2.x, true, all(vec2<bool>(false, arg_2.x))), vec4<bool>(true, !arg_2.x, false, false), arg_2.x), vec4<bool>(arg_2.x, all(vec4<bool>(false, false, arg_2.x, arg_2.x)), select(arg_2.x, false, arg_2.x), arg_2.x && arg_2.x), any(!(!vec4<bool>(true, arg_2.x, false, false)))));
    var var_1 = vec2<u32>(firstLeadingBit(firstLeadingBit(4294967295u) << (max(0u, global0.c) % 32u)), min(0u, _wgslsmith_div_u32(firstLeadingBit(4294967295u), ~firstTrailingBit(u_input.a))));
    let var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)), -604f)))), var_1.x);
    var var_3 = var_2;
    return ~(~_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(21382u, ~var_2.c)));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0.c, arg_0.c, 20635u, 1u)), reverseBits(vec4<u32>(43022u, 4294967295u, global0.c, 21295u))) | (u_input.a ^ ~_wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_clamp_u32(firstLeadingBit(~2051u), 1u, ~u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-273f, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), -1116f))))));
    var_0 = firstTrailingBit(~1u | u_input.a);
    var var_2 = ~_wgslsmith_mult_vec4_u32(~(~max(vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(4294967295u, 0u, global0.c, global0.c))), vec4<u32>(min(4294967295u, 0u) >> (1u % 32u), func_4(vec2<i32>(-52748i, -40867i) << (vec2<u32>(43414u, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_2()), vec2<bool>(true, true)), 7698u, select(4954u, 0u, true)));
    let var_3 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true == all(vec3<bool>(true, false, false)))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), 1i <= _wgslsmith_mult_i32(-24675i ^ (-1i >> (global0.c % 32u)), -2147483647i), true);
    return vec3<i32>(~_wgslsmith_mult_i32(-max(900i, 59764i), 25430i), firstTrailingBit(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, 17933i)), vec2<i32>(1i, 1i))), 1i);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(global0.a, global0.b, ~_wgslsmith_mod_u32(countOneBits(u_input.a), global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_mod_vec3_i32(-(vec3<i32>(-2147483647i, -6194i, 2147483647i) & func_1(Struct_1(vec3<f32>(-1014f, 1635f, global0.a.x), global0.a.x, 4294967295u))), vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(2147483647i, -1i, -2147483647i))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - -936f))))) * global0.b);
    let var_1 = firstTrailingBit(vec3<u32>(global0.c, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(39923u, u_input.a, 53678u, 49772u)), ~(~vec4<u32>(var_0.c, var_0.c, 41546u, 1u))), 54462u));
    let var_2 = -44056i;
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(1429u >> (u_input.a % 32u), ~global0.c, ~1u)));
    global1 = func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1149f, 910f)), _wgslsmith_div_f32(-195f, -172f)), _wgslsmith_f_op_f32(round(var_3.b))), -392f, max(vec3<i32>((var_2 >> (1u % 32u)) & ~var_2, _wgslsmith_add_i32(var_2, -var_2), var_2), vec3<i32>(firstTrailingBit(var_2), min(2147483647i, var_2), select(26982i, var_2, true)) << (vec3<u32>(abs(global0.c), global0.c, 0u) % vec3<u32>(32u)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~1i), ~reverseBits(func_1(Struct_1(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x), -1588f, var_1.x)).x), select(_wgslsmith_sub_i32(var_2, var_2), 12518i, true), -_wgslsmith_div_i32(_wgslsmith_add_i32(var_2, var_2), select(-44916i, var_2, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1883f + var_0.b), _wgslsmith_f_op_f32(-global0.b))), global0.a.x)), ~(vec3<u32>(var_0.c, u_input.a, ~0u) ^ abs(var_1 << (vec3<u32>(45985u, global0.c, var_0.c) % vec3<u32>(32u)))), ~firstLeadingBit(~(~vec2<u32>(u_input.a, var_3.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1709f, var_0.b), -1145f))))));
}

