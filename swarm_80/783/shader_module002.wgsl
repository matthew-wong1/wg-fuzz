struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    global1 = -1102i;
    var var_0 = vec2<u32>(u_input.d, 0u);
    let var_1 = arg_1;
    let var_2 = Struct_1(firstTrailingBit(global2.a.a), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(97i, -13465i)), _wgslsmith_add_i32(1i, 1i)), ~max(~global2.a.e, u_input.e.x >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global2.a.d.x, -140f)), arg_0, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_vec3_f32(ceil(global2.b.xxx)))), -2147483647i);
    global1 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.c.wxw;
    var var_1 = Struct_2(Struct_1(global2.a.a, _wgslsmith_add_i32(u_input.e.x, u_input.b.x), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.b.wzw))), -(~(-1i))), vec4<f32>(-639f, _wgslsmith_f_op_f32(func_3(global2.b.x, true, global2.b.x)), global2.a.d.x, 790f));
    global1 = 2147483647i;
    let var_2 = vec4<bool>(select(global0.x, !(u_input.e.x >= ~var_1.a.e), all(vec2<bool>(true, any(vec4<bool>(global0.x, global0.x, true, false))))), false, !global0.x, all(!(!(!vec4<bool>(global0.x, global0.x, false, false)))));
    var var_3 = 1u;
    return Struct_1(min(vec2<u32>(min(7723u & var_1.a.a.x, u_input.c.x), 1u), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_0.x, 15814u)), _wgslsmith_mod_vec2_u32(vec2<u32>(17445u, 88097u), vec2<u32>(u_input.d, 4294967295u)) ^ (var_0.yz ^ vec2<u32>(var_1.a.a.x, 0u)))), reverseBits(_wgslsmith_sub_i32(1i, abs(_wgslsmith_mult_i32(-12579i, global2.a.c)))), ~global2.a.e, var_1.a.d, global2.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global2 = Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1413f, true, global2.b.x)) * -224f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global2.b.x, false, global2.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b.x)))))));
    global2 = Struct_2(Struct_1(arg_0.a, abs(global2.a.b), -27871i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 1565f, -1324f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-392f, arg_0.d.x, -582f))))), _wgslsmith_sub_i32(-1i, 29219i & u_input.b.x)), global2.b);
    global1 = 56638i;
    let var_0 = false;
    global2 = Struct_2(Struct_1(arg_1, 1i, ~arg_0.b >> (firstLeadingBit(arg_0.a.x) % 32u), vec3<f32>(global2.a.d.x, arg_0.d.x, _wgslsmith_f_op_f32(-1f)), 1i), vec4<f32>(210f, -761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(491f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))));
    return Struct_2(Struct_1(vec2<u32>(arg_1.x, 0u), 41773i, 506i, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1977f, 1011f)), _wgslsmith_f_op_f32(sign(-261f)))), -1658f, arg_0.d.x), arg_0.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.x, global2.a.d.x, _wgslsmith_f_op_f32(arg_0.d.x * global2.b.x), 1197f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.b, global2.b) * vec4<f32>(arg_0.d.x, 861f, arg_0.d.x, -468f)))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1278f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1703f, arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.d.x, false))), _wgslsmith_f_op_f32(-236f - 353f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, 705f, 518f, -965f) + global2.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.b - global2.b)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-2048f, global2.b.x, -602f, 1000f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-886f, global2.b.x, arg_1.d.x, 1160f)))))))));
    var var_1 = func_4(func_2(), global2.a.a);
    let var_2 = func_4(Struct_1(vec2<u32>(~(~arg_0), _wgslsmith_mult_u32(~var_1.a.a.x, ~4294967295u)), 1i, ~(~var_1.a.e), func_2().d, ~_wgslsmith_div_i32(1i, func_4(Struct_1(vec2<u32>(var_1.a.a.x, 24974u), -119i, var_1.a.e, var_1.a.d, 19945i), vec2<u32>(global2.a.a.x, global2.a.a.x)).a.c)), global2.a.a).a;
    global2 = func_4(func_4(Struct_1(select(_wgslsmith_add_vec2_u32(var_2.a, var_2.a), reverseBits(global2.a.a), true), abs(countOneBits(arg_1.c)), abs(var_2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d + vec3<f32>(171f, var_2.d.x, var_2.d.x))), ~var_1.a.e), vec2<u32>(func_2().a.x, ~_wgslsmith_mult_u32(var_1.a.a.x, u_input.d))).a, ((arg_1.a & func_4(var_1.a, vec2<u32>(var_2.a.x, 4294967295u)).a.a) & var_2.a) << (vec2<u32>(u_input.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 1688u), u_input.c.zyy), 1u)) % vec2<u32>(32u)));
    let var_3 = Struct_1(global2.a.a, _wgslsmith_mod_i32(-15021i & _wgslsmith_dot_vec2_i32(select(u_input.b.xx, u_input.a.xx, global0.x), u_input.e.xy), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, select(u_input.b, u_input.a, vec3<bool>(true, false, false))), vec3<i32>(-1i) * -vec3<i32>(var_1.a.b, 2147483647i, 0i))), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(arg_1.c, -14594i)), var_2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d))), _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(global2.a.c, u_input.e.x, 2147483647i)));
    return select(select(!(!vec3<bool>(global0.x, false, true)), vec3<bool>(any(global0.zy), all(vec2<bool>(global0.x, false)), global0.x), all(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, false, true), var_1.a.c < -1i))), vec3<bool>(false, global0.x, select(_wgslsmith_f_op_f32(var_1.b.x + var_3.d.x) > 281f, !global0.x, global0.x)), !(!vec3<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), select(global0.x, global0.x, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a, global2.b);
    global2 = var_0;
    let var_1 = true;
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.e, var_0.a.c), u_input.a.yz), u_input.a.x)), ~(~u_input.a.x)), max(1i, 21907i), u_input.b.x);
    let var_3 = 2147483647i;
    global0 = vec3<bool>(!(false & !all(vec3<bool>(var_1, global0.x, false))), true | !all(func_1(4294967295u, Struct_1(global2.a.a, u_input.b.x, -2147483647i, global2.b.wxz, u_input.a.x))), any(!(!(!vec3<bool>(var_1, global0.x, true)))));
    var var_4 = countOneBits(countOneBits(~vec2<i32>(_wgslsmith_mod_i32(var_3, global2.a.c), _wgslsmith_clamp_i32(u_input.a.x, 0i, -8646i))));
    global2 = func_4(Struct_1(~global2.a.a, var_2.x, -2147483647i, vec3<f32>(global2.a.d.x, var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.d.x)) * _wgslsmith_f_op_f32(634f - global2.b.x))), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, var_3, 46450i, 1i) ^ u_input.e, select(vec4<i32>(var_2.x, -10732i, global2.a.b, -1i), vec4<i32>(global2.a.b, var_0.a.b, -1388i, var_0.a.c), vec4<bool>(false, global0.x, true, true)))), _wgslsmith_add_vec2_u32(u_input.c.ww, vec2<u32>(~global2.a.a.x, _wgslsmith_sub_u32(0u & global2.a.a.x, 67156u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.d.x, 1622f, -307f, global2.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))) - vec4<f32>(func_4(Struct_1(vec2<u32>(0u, var_0.a.a.x), -1i, var_3, global2.b.ywy, u_input.a.x), firstLeadingBit(vec2<u32>(var_0.a.a.x, 28900u))).a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x + -594f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x + global2.b.x) * _wgslsmith_f_op_f32(func_3(global2.b.x, true, var_0.a.d.x))), func_2().d.x)), ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(19375u, u_input.d, 0u), u_input.c.yww & u_input.c.yxy) >> (vec3<u32>(func_4(Struct_1(u_input.c.wy, 2147483647i, var_2.x, var_0.a.d, 0i), vec2<u32>(global2.a.a.x, 4294967295u)).a.a.x, 0u, ~u_input.d) % vec3<u32>(32u))), _wgslsmith_sub_u32(~(~9543u), _wgslsmith_div_u32(~4294967295u, 40232u)));
}

