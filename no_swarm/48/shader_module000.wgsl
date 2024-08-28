struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_4;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = -(~(-2147483647i) << (~abs(u_input.a.x) % 32u));
    let var_1 = Struct_4(global1.a);
    let var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~(~var_0), _wgslsmith_sub_i32(-1i, global1.a.x)), _wgslsmith_mod_i32(abs(countOneBits(global1.a.x)), var_1.a.x ^ (i32(-1i) * -37006i))), u_input.a.x);
    global1 = var_1;
    let var_3 = Struct_3(-447f);
    return var_2.b >> (u_input.a.x % 32u);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_div_i32(~max(abs(0i), _wgslsmith_mult_i32(-55887i, 0i)), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, -2147483647i, global1.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, -17596i, -2147483647i))))) << (_wgslsmith_sub_u32(4294967295u, 72489u) % 32u);
    var var_2 = func_3(1064f, true);
    global1 = Struct_4(-select(-_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x, 16074i), global1.a), -reverseBits(vec2<i32>(global1.a.x, 1768i)), any(select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))));
    global0 = arg_0.a.xxx;
    return select(!select(arg_0.a, arg_0.a, !arg_0.a), vec4<bool>(select(!(arg_0.c.x >= global2.a), true, any(arg_0.a)), true, !(-1i <= var_1), false), u_input.a.x >= ~reverseBits(0u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(global1.a);
    return Struct_3(-186f);
}

fn func_1() -> i32 {
    global1 = Struct_4(countOneBits(-vec2<i32>(firstTrailingBit(-2147483647i), global1.a.x | -13593i)));
    global2 = Struct_3(-848f);
    global0 = vec3<bool>(global0.x, !select(_wgslsmith_f_op_f32(floor(global2.a)) >= _wgslsmith_f_op_f32(global2.a * global2.a), true | all(global0.xy), global0.x), global0.x);
    global2 = func_4(!global0.x, Struct_1(select(select(vec4<bool>(true, true, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(global0.x, false, false, true), vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x))), func_2(Struct_1(vec4<bool>(global0.x, global0.x, global0.x, false), vec2<u32>(u_input.a.x, 4294967295u), vec3<f32>(global2.a, global2.a, global2.a), vec2<f32>(815f, global2.a), u_input.a.x)), global0.x), _wgslsmith_add_vec2_u32(~vec2<u32>(38360u, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.a.zy ^ u_input.a.xy, ~u_input.a.zz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 1000f, global2.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global2.a, global2.a), vec3<f32>(1572f, -231f, global2.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, global2.a, -278f) + vec3<f32>(-1539f, -572f, 1945f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -343f)), ~(~countOneBits(19682u))), vec4<bool>(global0.x, true, all(vec3<bool>(false & global0.x, global0.x, !global0.x)), true), Struct_2(max(global1.a.x, _wgslsmith_mod_i32(-2147483647i, global1.a.x)), u_input.a.x));
    global2 = Struct_3(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-global2.a)));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(6980i, global1.a.x, 26471i), vec3<i32>(45114i, -3945i, 1i)), vec3<i32>(global1.a.x, global1.a.x, 0i)), (vec3<i32>(-18929i, global1.a.x, 1i) ^ vec3<i32>(2147483647i, 1i, 0i)) >> (firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(global1.a.x, global1.a.x) & -global1.a.x, 115754i, global1.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global1.a.x, global1.a.x), ~vec3<i32>(1i, global1.a.x, 2147483647i)) & ((vec3<i32>(global1.a.x, 1i, 6768i) >> (u_input.a % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 7350i, global1.a.x), vec3<i32>(-2975i, global1.a.x, -6232i))), _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), vec3<i32>(-9587i, global1.a.x, global1.a.x)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 5961i, global1.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, 2147483647i), vec3<i32>(global1.a.x, -2147483647i, 35568i)), -vec3<i32>(1i, global1.a.x, -1i)))));
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> Struct_4 {
    global0 = func_2(Struct_1(!select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(arg_1.x, true, true, arg_1.x))), ~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) + _wgslsmith_f_op_f32(-arg_2)), global2.a, _wgslsmith_f_op_f32(sign(-259f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-617f, arg_2)))), u_input.a.x)).xyy;
    var var_0 = _wgslsmith_add_u32(36831u, ~56309u);
    var var_1 = !(_wgslsmith_add_u32(u_input.a.x ^ 1u, abs(min(1u, u_input.a.x))) <= max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~u_input.a.x % 32u), ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)));
    return Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31152i, -26525i, arg_0), -vec3<i32>(-1i, arg_0, -49636i)), -74606i), vec2<i32>(~arg_0, 6235i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(firstLeadingBit(2146i), !(!(!(!global0.yx))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), 456f)), -func_1());
    var var_0 = Struct_1(func_2(Struct_1(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), global0.x), reverseBits(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, -339f, global2.a), vec3<f32>(-986f, 696f, global2.a)) - vec3<f32>(-828f, -288f, global2.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, -966f) - vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.a, global2.a))), global0.x)), ~u_input.a.x)), vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -107f, -598f)))))), vec2<f32>(_wgslsmith_f_op_f32(global2.a * _wgslsmith_div_f32(120f, _wgslsmith_f_op_f32(2520f + global2.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(sign(global2.a)))))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(9048u ^ u_input.a.x, _wgslsmith_add_u32(0u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.c);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_div_f32(-715f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -402f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))) + 1951f));
    var var_3 = 0i;
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-290f, _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 264f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, var_0.c) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1323f, var_1.x, var_2), var_0.c))))))), false));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -497f))));
    let var_5 = vec2<u32>(~var_0.e, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(select(-1840f, _wgslsmith_f_op_f32(select(-397f, 1000f, true)), true))), var_0.c)), _wgslsmith_f_op_f32(select(var_2, 1184f, true)));
}

