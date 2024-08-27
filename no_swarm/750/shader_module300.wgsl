struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<u32>, 31>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1769f))), 1414f, !any(vec2<bool>(false, false)))))), reverseBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(-1i, -36686i, -72268i), vec3<i32>(u_input.a, 35218i, -9551i)))), true);
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(var_0.a)), vec3<i32>(-1i, _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -1i, 0i, 0i), vec4<i32>(var_0.b.x, global0.x, var_0.b.x, 0i), vec4<i32>(global0.x, u_input.a, var_0.b.x, global0.x)) >> (~vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(global0.x, var_0.b.x, global0.x, -2147483647i))), any(select(!select(vec4<bool>(var_0.c, true, false, true), vec4<bool>(var_0.c, false, false, true), vec4<bool>(false, false, var_0.c, true)), vec4<bool>(false, var_0.c, false, true), select(vec4<bool>(false, var_0.c, false, var_0.c), select(vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(var_0.c, true, var_0.c, false)), var_0.c))));
    global1 = array<vec3<u32>, 31>();
    let var_1 = Struct_2(-1149f, var_0.b, all(vec3<bool>(var_0.c, true, (global0.x >= var_0.b.x) && select(true, var_0.c, false))));
    global0 = var_0.b.xx;
    return _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(trunc(-1000f)));
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    global1 = array<vec3<u32>, 31>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1782f, 1458f)) - _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(131f * -626f), _wgslsmith_f_op_f32(max(980f, 461f)), arg_0.x)), true | arg_0.x))), -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 16587i, global0.x), vec3<i32>(u_input.a, global0.x, global0.x)), vec3<i32>(9264i, u_input.a, -54080i) >> (vec3<u32>(u_input.b, 4294967295u, 29966u) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(0i, -2685i, u_input.a)), -firstTrailingBit(vec3<i32>(-17124i, 0i, 2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(0i, u_input.a)), abs(-1i), 1i)), arg_0.x);
    global1 = array<vec3<u32>, 31>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), abs(-(~abs(vec3<i32>(-1i, var_0.b.x, u_input.a)))), all(!select(!vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(var_0.c, arg_0.x, var_0.c, true), true)));
    let var_2 = -1i >> ((u_input.b >> ((~(~0u) | u_input.b) % 32u)) % 32u);
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b, ~(~u_input.b), ~_wgslsmith_mod_u32(4294967295u, 1u)), vec4<u32>(~7464u | _wgslsmith_mod_u32(0u, u_input.b), ~(~54708u), 109571u, ~u_input.b));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(select(0i, -58459i, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)))), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), (~1u >> ((47874u & (arg_1.x >> (arg_1.x % 32u))) % 32u)) <= _wgslsmith_mod_u32(u_input.b, u_input.b));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(f32(-1f) * -705f)) * -610f)), vec3<i32>(~(-u_input.a), abs(106i >> (arg_1.x % 32u)), countOneBits(_wgslsmith_div_i32(arg_0, u_input.a))) & min(-abs(vec3<i32>(-2147483647i, 1i, -33610i)), (vec3<i32>(u_input.a, var_0.a, 19436i) >> (arg_1.xxx % vec3<u32>(32u))) >> (vec3<u32>(arg_1.x, arg_1.x, u_input.b) % vec3<u32>(32u))), var_0.c);
    global1 = array<vec3<u32>, 31>();
    global1 = array<vec3<u32>, 31>();
    let var_2 = _wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec2_u32(arg_1.zw >> (arg_1.zy % vec2<u32>(32u)), max(arg_1.ww, arg_1.zx))) <= _wgslsmith_sub_u32(~(4294967295u & u_input.b), arg_1.x);
    return var_1;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = select(!vec4<bool>(all(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c)), arg_0.c, true, arg_0.c), !vec4<bool>(arg_0.c | false, all(!vec3<bool>(arg_0.c, true, arg_0.c)), true | !arg_0.c, arg_0.c), vec4<bool>(select(false && arg_0.c, all(select(vec2<bool>(arg_0.c, false), vec2<bool>(true, arg_0.c), vec2<bool>(false, arg_0.c))), all(!vec2<bool>(arg_0.c, arg_0.c))), !(!all(vec3<bool>(true, arg_0.c, false))), any(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), true));
    let var_1 = arg_0;
    var var_2 = abs(countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.b.x, min(var_1.b.x, var_1.b.x)), _wgslsmith_dot_vec2_i32(-var_1.b.yy, vec2<i32>(-22394i, arg_0.b.x)))));
    global1 = array<vec3<u32>, 31>();
    global1 = array<vec3<u32>, 31>();
    return 1i;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global1 = array<vec3<u32>, 31>();
    global0 = -_wgslsmith_add_vec2_i32(firstLeadingBit(~vec2<i32>(2147483647i, global0.x)) ^ vec2<i32>(1i, 1i), -_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 35905i), vec2<i32>(-5421i, -36368i)), vec2<i32>(global0.x, global0.x)));
    global1 = array<vec3<u32>, 31>();
    let var_0 = func_5(func_4(countOneBits(_wgslsmith_div_i32(global0.x, global0.x) << (_wgslsmith_mod_u32(4294967295u, u_input.b) % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(8461u, u_input.b, 63577u, 10772u) >> (func_2(vec2<bool>(false, false)) % vec4<u32>(32u)), max(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), ~vec4<u32>(43095u, u_input.b, 4294967295u, 6281u)))));
    let var_1 = _wgslsmith_add_i32(3610i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), -2147483647i), -(~1i))) != global0.x;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(var_0 & global0.x, vec4<u32>(14537u, u_input.b, 4294967295u, 48237u)).a, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(arg_0.x, -710f))), _wgslsmith_f_op_f32(floor(arg_0.x)))), 0u & ~u_input.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    return Struct_2(1561f, firstTrailingBit(-vec3<i32>(~(-1i), 52135i ^ u_input.a, global0.x ^ 0i)), all(select(!vec4<bool>(arg_2, false, true, true), !(!vec4<bool>(arg_2, arg_2, arg_2, true)), select(select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(false, true, true, arg_2), false), select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(true, false, arg_2, true), vec4<bool>(true, true, arg_2, true)), select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(false, true, false, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(vec4<f32>(116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-543f, 723f)), -1718f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(896f, 1723f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(331f, 683f, -1440f), vec3<f32>(1032f, -462f, -648f))))), vec3<f32>(380f, -128f, func_1(vec4<f32>(-324f, -1677f, -127f, -1100f)).a.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(241f)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(195f, 806f, -1067f, 474f) + vec4<f32>(1142f, -249f, 1410f, 389f))).a.x, _wgslsmith_f_op_f32(-788f * -815f)))), !(u_input.b >= max(u_input.b, u_input.b)));
    let var_1 = select(!(!vec3<bool>(all(vec4<bool>(var_0.c, true, var_0.c, true)), false, -1i < var_0.b.x)), vec3<bool>(false, false | any(vec2<bool>(false, false)), true), !(false & (var_0.c & all(vec3<bool>(var_0.c, false, true)))));
    let var_2 = _wgslsmith_add_u32(u_input.b, u_input.b);
    var var_3 = func_2(vec2<bool>(var_1.x, var_1.x)).x;
    global0 = vec2<i32>(2147483647i ^ ~global0.x, -2147483647i);
    let var_4 = countOneBits(~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(57783u, 31u)], vec3<u32>(u_input.b, var_2, var_4))));
}

