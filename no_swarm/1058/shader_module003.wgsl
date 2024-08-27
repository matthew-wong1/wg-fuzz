struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), 19570i, vec2<bool>(false, false), vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 18711u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(vec3<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.d.x, global0.c.x, false), select(vec4<bool>(global0.a.x, global0.c.x, global0.d.x, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.d.x), vec4<bool>(global0.c.x, true, global0.a.x, global0.d.x)))), true | (global0.a.x & false)), global0.b, vec2<bool>(_wgslsmith_f_op_f32(select(-1552f, _wgslsmith_f_op_f32(-703f + -1000f), any(vec4<bool>(false, true, false, false)))) > 759f, all(!(!global0.a))), select(global0.a.zx, global0.d, vec2<bool>(true, true)), u_input.a);
    let var_0 = u_input.d.x;
    global0 = Struct_1(global0.a, max(-2147483647i, 1i), !select(!(!global0.a.zx), global0.a.yy, true), vec2<bool>(var_0 > u_input.d.x, true), reverseBits(global0.e));
    let var_1 = u_input.b.x;
    global0 = Struct_1(!select(vec3<bool>(true, false, global0.d.x), !select(vec3<bool>(global0.d.x, true, global0.c.x), global0.a, global0.c.x), !global0.c.x && all(vec4<bool>(global0.d.x, true, false, true))), var_0, vec2<bool>(any(!vec4<bool>(false, false, global0.d.x, global0.c.x)), global0.a.x), vec2<bool>(true, global0.a.x), global0.e);
    return !vec2<bool>(all(vec2<bool>(true, global0.d.x)), !global0.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    global0 = Struct_1(select(vec3<bool>(any(global0.a), all(vec4<bool>(global0.a.x, arg_0.d.x, arg_0.a.x, true)), global0.d.x || func_3().x), select(select(select(arg_0.a, arg_0.a, arg_0.d.x), !global0.a, true), select(vec3<bool>(true, true, false), !vec3<bool>(global0.d.x, true, false), arg_0.a.x), all(!vec3<bool>(false, arg_0.c.x, true))), true), -31910i, arg_0.c, select(vec2<bool>(any(!global0.a), true), arg_0.a.xz, global0.d.x), vec3<u32>(100643u, u_input.c, global0.e.x | 122028u));
    let var_0 = all(select(vec4<bool>(arg_0.a.x & any(vec4<bool>(arg_0.c.x, false, arg_0.d.x, global0.c.x)), any(select(vec2<bool>(false, false), global0.a.zz, global0.d.x)), true || (global0.e.x < 1u), any(!vec4<bool>(global0.d.x, arg_0.d.x, arg_0.a.x, true))), vec4<bool>(1u != firstTrailingBit(0u), global0.d.x, select(false | arg_0.c.x, select(false, arg_0.c.x, true), arg_0.c.x), arg_0.a.x), !all(select(global0.a, vec3<bool>(true, false, arg_0.d.x), global0.c.x))));
    let var_1 = max(-1i, -2147483647i);
    global0 = Struct_1(vec3<bool>(all(select(global0.a, vec3<bool>(arg_0.d.x, arg_0.a.x, false), func_3().x)), var_0, global0.d.x), 15851i, vec2<bool>(func_3().x, all(arg_0.a)), select(select(select(arg_0.a.xz, !global0.a.xz, arg_1.x > 1i), arg_0.a.xy, vec2<bool>(true, false)), !(!arg_0.c), func_3().x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e.x << (u_input.a.x % 32u), reverseBits(global0.e.x), 84789u), (vec3<u32>(u_input.a.x, u_input.c, global0.e.x) | global0.e) >> (arg_0.e % vec3<u32>(32u))) ^ vec3<u32>(reverseBits(global0.e.x) ^ ~0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29704u, 13598u), vec2<u32>(1u, 51810u)), ~1u), min(min(global0.e.x, 58904u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.e.x), u_input.a.zy))));
    global0 = arg_0;
    return select(vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1, 95643i), 2055i) <= global0.b, all(vec3<bool>(var_0 == arg_0.c.x, global0.a.x, func_3().x))), vec2<bool>(false, var_0), vec2<bool>(true, (-var_1 & _wgslsmith_mod_i32(29615i, arg_1.x)) > var_1));
}

fn func_2() -> vec2<f32> {
    global0 = Struct_1(vec3<bool>(true, select(~global0.b, -13855i, !global0.a.x) == global0.b, true), _wgslsmith_mod_i32(u_input.d.x, -_wgslsmith_dot_vec2_i32(min(u_input.d, vec2<i32>(-2147483647i, global0.b)), ~vec2<i32>(-1i, -59098i))), select(select(!(!global0.c), select(vec2<bool>(true, false), global0.a.zy, true), global0.c.x), select(select(global0.d, select(global0.c, vec2<bool>(false, false), true), global0.c), global0.d, select(vec2<bool>(global0.a.x, global0.c.x), select(global0.d, global0.a.zz, vec2<bool>(false, global0.d.x)), false)), global0.d.x), !func_4(Struct_1(!global0.a, ~(-2147483647i), vec2<bool>(true, global0.d.x), func_3(), ~vec3<u32>(1u, u_input.b.x, global0.e.x)), -(~vec4<i32>(u_input.d.x, 2147483647i, global0.b, u_input.d.x))), vec3<u32>(global0.e.x, ~(~1u), firstTrailingBit(~global0.e.x << (select(23751u, u_input.c, true) % 32u))));
    let var_0 = Struct_1(global0.a, u_input.d.x, select(vec2<bool>(false && select(true, global0.d.x, false), false), global0.a.xy, global0.c.x), func_4(Struct_1(!global0.a, abs(19582i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-13209i, global0.b, global0.b, global0.b), vec4<i32>(56222i, u_input.d.x, 0i, 20004i)), global0.a.zx, func_3(), vec3<u32>(u_input.c ^ 0u, ~global0.e.x, select(8275u, u_input.b.x, false))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-39056i, u_input.d.x, -50962i, global0.b), vec4<i32>(-9276i, u_input.d.x, -1i, global0.b)))), ~global0.e);
    var var_1 = var_0;
    let var_2 = var_1.d.x;
    var var_3 = 28337u;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(251f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-327f)) * 1000f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(321f, -370f))))))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<u32>(global0.e.x, _wgslsmith_mod_u32(min(~u_input.b.x, 4294967295u), global0.e.x) >> (~_wgslsmith_add_u32(global0.e.x, ~global0.e.x) % 32u));
    let var_1 = vec3<u32>(~(~0u), 4294967295u, ~reverseBits(~(var_0.x << (4294967295u % 32u))));
    return Struct_1(vec3<bool>(false, true, !(-8593i >= ~u_input.d.x)), 13420i, func_4(Struct_1(!vec3<bool>(global0.a.x, global0.d.x, true), i32(-1i) * -u_input.d.x, global0.d, vec2<bool>(true, true), vec3<u32>(global0.e.x, u_input.a.x, 0u) ^ (vec3<u32>(u_input.c, u_input.c, var_0.x) & vec3<u32>(u_input.b.x, 4294967295u, var_0.x))), ~(-vec4<i32>(-42191i, u_input.d.x, u_input.d.x, global0.b)) | min(-vec4<i32>(u_input.d.x, u_input.d.x, global0.b, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d.x, global0.b, -2147483647i), vec4<i32>(-50020i, u_input.d.x, u_input.d.x, 2921i)))), !func_3(), _wgslsmith_add_vec3_u32(max(var_1, u_input.a), ~vec3<u32>(global0.e.x, 1u, 50372u)) >> (abs(global0.e) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, -356f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, -472f))) + _wgslsmith_f_op_vec2_f32(func_2()))));
    let var_1 = Struct_1(!(!(!func_5(vec2<f32>(1181f, -368f)).a)), global0.b, func_4(Struct_1(!global0.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(-43790i, 48288i), u_input.d.x), !vec2<bool>(var_0.c.x, true), vec2<bool>(select(false, false, var_0.c.x), false), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(70817u, global0.e.x, u_input.c), vec3<u32>(19814u, 1u, 1u)), vec3<u32>(65940u, var_0.e.x, global0.e.x), abs(var_0.e))), min(~abs(vec4<i32>(global0.b, global0.b, -89248i, u_input.d.x)), firstTrailingBit(vec4<i32>(var_0.b, global0.b, 1i, u_input.d.x) | vec4<i32>(24119i, u_input.d.x, 33376i, -2067i)))), global0.c, vec3<u32>(_wgslsmith_sub_u32(19144u, arg_0.x), 27907u, 0u));
    let var_2 = !all(!vec2<bool>(u_input.d.x == -745i, var_0.a.x & false));
    var var_3 = -select(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, var_1.b, -2147483647i, var_0.b), vec4<i32>(-11216i, var_1.b, 1917i, 0i), vec4<bool>(global0.d.x, var_1.a.x, true, true)) << (vec4<u32>(75638u, 64812u, 0u, u_input.b.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.d.x, 1i, -2147483647i, var_0.b))), ~abs(vec4<i32>(u_input.d.x, 1i, var_1.b, 0i)) ^ vec4<i32>(var_1.b, _wgslsmith_div_i32(18528i, 76094i), var_0.b, -u_input.d.x), vec4<bool>(var_0.d.x, var_2, true, all(vec2<bool>(var_2, false))));
    global0 = var_1;
    return Struct_2(-8779i, Struct_1(global0.a, -2147483647i, var_0.c, !vec2<bool>(true, false && var_2), vec3<u32>(_wgslsmith_mult_u32(var_0.e.x, firstTrailingBit(6102u)), ~_wgslsmith_add_u32(34783u, var_1.e.x), 4294967295u)), abs(_wgslsmith_div_u32(var_1.e.x, ~(3138u & arg_0.x))), var_1);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1255f + _wgslsmith_f_op_f32(abs(-1257f))));
    var var_1 = arg_3;
    var var_2 = var_1.b;
    var var_3 = Struct_1(arg_3.d.a, firstTrailingBit(-55807i), global0.a.zy, select(vec2<bool>(_wgslsmith_f_op_f32(arg_0 + arg_2.x) <= 1436f, !func_5(arg_2.yz).a.x), !func_1(vec4<u32>(global0.e.x, var_2.e.x, var_1.b.e.x, var_1.b.e.x) & vec4<u32>(arg_3.d.e.x, global0.e.x, var_2.e.x, 27487u)).b.a.zz, vec2<bool>((i32(-1i) * -26490i) <= arg_3.a, ~u_input.a.x == func_1(vec4<u32>(76430u, 34386u, var_2.e.x, 70392u)).c)), vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_3.d.e, vec3<u32>(16198u, u_input.c, arg_3.b.e.x)), ~global0.e), global0.e.x, var_2.e.x));
    let var_4 = true;
    return Struct_1(!vec3<bool>(arg_1, var_4, !arg_1), 42615i, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1370f, -1306f) - _wgslsmith_f_op_f32(arg_2.x - 1000f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-547f - -1065f), _wgslsmith_f_op_f32(arg_2.x + 1462f), false)), var_3.c.x), global0.a.xx, var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 651f;
    let var_1 = Struct_2(countOneBits(countOneBits(~u_input.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.x, 1u), global0.e.zz) % 32u))), func_6(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-244f, 201f, 223f, 2699f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1069f, -413f, 355f, -172f), vec4<f32>(1209f, 182f, 191f, -204f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1021f, -615f, 693f, -471f) - vec4<f32>(997f, -1000f, -948f, -454f)))), func_1(select(_wgslsmith_mod_vec4_u32(vec4<u32>(34335u, 74448u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, global0.e.x, global0.e.x, u_input.c)), vec4<u32>(u_input.b.x, global0.e.x, global0.e.x, 9375u) | vec4<u32>(u_input.c, 9150u, 0u, 4294967295u), vec4<bool>(true, false, false, false)))), _wgslsmith_sub_u32(u_input.c, ~30636u), func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-669f, -1005f))), vec2<f32>(549f, 1809f), false && global0.c.x))))));
    let var_2 = var_1.b;
    var var_3 = max(_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(global0.e.x, 48651u, var_1.c)) & var_2.e, ~var_2.e), vec3<u32>(1u, ~(~(~global0.e.x)), 3819u));
    var var_4 = var_1.d;
    var var_5 = ~0u;
    var_5 = 0u;
    var var_6 = var_1.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(~vec4<u32>(global0.e.x, 62852u, u_input.b.x, 4294967295u)).b.b);
}

