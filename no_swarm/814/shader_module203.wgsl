struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1i, -1i, 0i), Struct_1(1i, i32(-2147483648), -1275i), Struct_1(i32(-2147483648), -1i, 0i), Struct_1(1i, -19010i, 1i), Struct_1(-1i, 2147483647i, 41542i), Struct_1(i32(-2147483648), 3138i, -11021i), Struct_1(-29623i, 0i, -51257i), Struct_1(2147483647i, 0i, 0i), Struct_1(-1i, -17567i, 2147483647i), Struct_1(-1340i, i32(-2147483648), -1i), Struct_1(-52355i, -19101i, 2147483647i), Struct_1(5964i, -19205i, -53742i), Struct_1(15997i, 21533i, -1i), Struct_1(1i, 14567i, 19143i), Struct_1(2147483647i, 0i, -1i), Struct_1(1i, -52952i, -74516i), Struct_1(-1i, 0i, i32(-2147483648)), Struct_1(-46329i, 0i, -1i), Struct_1(-1i, -689i, 1i), Struct_1(-1i, 0i, -1291i), Struct_1(2147483647i, -16240i, 0i), Struct_1(-1i, 1i, 1i), Struct_1(-9520i, 1i, 0i), Struct_1(-27132i, 0i, 22593i), Struct_1(-13637i, 2147483647i, -16704i), Struct_1(2661i, -37125i, 84482i), Struct_1(0i, 1i, 2147483647i), Struct_1(-1i, -1i, 1453i), Struct_1(-3459i, 0i, 44085i));

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(2055f, 1000f, 769f);

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    return vec4<i32>(arg_2.a, global1.c, _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(arg_0.b, arg_2.c, global1.a)) & (-vec3<i32>(17121i, global1.b, arg_0.c) >> ((vec3<u32>(u_input.d, u_input.a, 0u) | vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), countOneBits(vec3<i32>(~arg_0.b, arg_2.c, i32(-1i) * -3442i))), arg_2.b);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(~u_input.a, 4294967295u << (u_input.a % 32u)), ~_wgslsmith_div_u32(~28681u, 12155u), u_input.d >> (12978u % 32u), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(6461u, 74878u), _wgslsmith_clamp_u32(~u_input.d, ~u_input.a, ~u_input.d), max(_wgslsmith_mult_u32(4294967295u, 0u), u_input.d))), ~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, firstTrailingBit(4294967295u), _wgslsmith_sub_u32(u_input.d, 0u)), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), max(vec2<u32>(4294967295u, 83115u), vec2<u32>(u_input.a, 52852u))))), 29u)];
    let var_1 = select(~vec3<u32>(~(~31326u), 1u, 1u), ~min(abs(vec3<u32>(64116u, u_input.d, 82095u)) ^ max(vec3<u32>(89416u, 0u, 49274u), vec3<u32>(u_input.d, u_input.a, u_input.d)), select(vec3<u32>(u_input.a, 1u, u_input.d), vec3<u32>(1709u, 1u, 42271u), false) << ((vec3<u32>(u_input.d, 18394u, 25996u) << (vec3<u32>(u_input.a, 6392u, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u))), global3.x);
    var var_2 = -vec3<i32>(-2147483647i, arg_3.b, _wgslsmith_sub_i32(global1.b, u_input.b));
    var var_3 = vec4<i32>(var_2.x, _wgslsmith_div_i32(arg_1, 17224i), firstLeadingBit(abs(1i)), ~countOneBits(2928i));
    var var_4 = !global3.zz;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -736f, -1208f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, -211f, global2.x))), arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(207f, global2.x, global2.x) - vec3<f32>(global2.x, 619f, -1438f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, 1092f, global2.x), true)))))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1;
    global2 = _wgslsmith_f_op_vec3_f32(func_3(-func_2(Struct_1(var_0.b, _wgslsmith_div_i32(u_input.e.x, -2147483647i), countOneBits(var_0.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 + arg_3.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1788f, arg_3.x) + arg_2), u_input.d != 0u)), Struct_1(_wgslsmith_clamp_i32(-1i, global1.c, global1.b), i32(-1i) * -24449i, 19404i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, -1000f, arg_2.x, global2.x) + vec4<f32>(361f, arg_3.x, -2107f, 654f)))), var_0.a, !select(!(!vec3<bool>(false, global3.x, false)), select(select(vec3<bool>(true, global3.x, arg_0.x), vec3<bool>(arg_0.x, false, global3.x), vec3<bool>(true, arg_0.x, true)), vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, global3.x, true))), true), Struct_1(global1.b, var_0.a, arg_1.a)));
    global3 = select(vec3<bool>(true, true, arg_0.x), select(select(vec3<bool>(true, true, true), select(!vec3<bool>(false, global3.x, false), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(global3.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, global3.x, arg_0.x)), global3.x), false), !vec3<bool>(2147483647i > global1.c, true, global3.x), select(vec3<bool>(!arg_0.x, !global3.x, any(vec3<bool>(global3.x, true, arg_0.x))), !vec3<bool>(global3.x, true, arg_0.x), any(vec2<bool>(false, global3.x)) & true)), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(all(select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(true, false, false, true), true)), global3.x, arg_0.x), true));
    var_0 = Struct_1(u_input.c, 1i, _wgslsmith_dot_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, 29381i, var_0.c, 24289i), vec4<i32>(-17038i, 2643i, global1.a, var_0.c))), func_2(arg_1, global2.zx, Struct_1(0i, arg_1.a, 0i ^ var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, -3351f, arg_2.x, -662f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, arg_3.x) * vec4<f32>(arg_2.x, arg_3.x, arg_3.x, -1240f))))));
    global0 = array<Struct_1, 29>();
    return Struct_1(-2147483647i, -1i, -17947i);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = ~vec4<u32>(u_input.d, _wgslsmith_clamp_u32(u_input.a, 22492u, ~u_input.d) | _wgslsmith_dot_vec3_u32(vec3<u32>(19500u, 18633u, u_input.d), ~vec3<u32>(u_input.a, 0u, u_input.d)), _wgslsmith_div_u32(u_input.d, abs(u_input.a)), firstLeadingBit(~0u));
    var var_1 = min(~(~max(vec4<i32>(-41399i, -33632i, 2147483647i, -3599i) << (vec4<u32>(4294967295u, var_0.x, u_input.d, u_input.d) % vec4<u32>(32u)), vec4<i32>(global1.b, arg_2.a, 18739i, u_input.c))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-1276i, 1i, u_input.e.x, arg_2.c)), select(vec4<i32>(arg_2.c, -34055i, arg_2.c, 1i), abs(vec4<i32>(u_input.c, 0i, global1.a, -1i)), select(vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, global3.x, true, arg_0), false)), vec4<i32>(global1.b, _wgslsmith_mult_i32(7290i, global1.a), 2147483647i, arg_2.b)), vec4<i32>(-1i) * -(~vec4<i32>(global1.c, global1.a, 49689i, arg_2.a))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~1u), var_0.x), var_0.yx);
    let var_3 = vec3<bool>(false, (false | global3.x) & false, any(vec2<bool>(arg_0, !(!global3.x))));
    let var_4 = all(vec3<bool>(global3.x, !(!any(vec4<bool>(var_3.x, var_3.x, var_3.x, global3.x))), arg_0));
    return -752f;
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    global2 = arg_0;
    var var_0 = func_1(select(select(global3.yx, vec2<bool>(global3.x, global3.x), true), vec2<bool>(true | global3.x, !global3.x & all(vec3<bool>(global3.x, global3.x, true))), any(!vec4<bool>(false, false, true, global3.x))), global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(97796u, ~u_input.a) | 1u, ~min(u_input.d, u_input.d)), 29u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(699f, _wgslsmith_f_op_f32(f32(-1f) * -768f))), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-arg_0), all(select(!vec3<bool>(global3.x, true, true), select(vec3<bool>(true, true, true), vec3<bool>(global3.x, true, true), false), false)))));
    let var_1 = vec3<bool>(any(vec2<bool>(false, !any(vec3<bool>(true, global3.x, true)))), !global3.x, !any(global3.yx));
    global1 = func_1(vec2<bool>(var_1.x, var_1.x), Struct_1(2147483647i, (var_0.c ^ ~2147483647i) >> ((36357u >> (_wgslsmith_add_u32(u_input.d, u_input.a) % 32u)) % 32u), ~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_0.b)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -601f))));
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, 17002u), u_input.d, u_input.d ^ 1u, ~reverseBits(_wgslsmith_sub_u32(1u, u_input.a)));
    return func_1(select(select(!select(vec2<bool>(true, var_1.x), vec2<bool>(global3.x, var_1.x), var_1.x), select(select(vec2<bool>(false, global3.x), var_1.xz, global3.zz), vec2<bool>(false, true), vec2<bool>(true, true)), false), vec2<bool>(true, true), select(select(select(var_1.yy, var_1.yz, vec2<bool>(var_1.x, global3.x)), !vec2<bool>(var_1.x, var_1.x), !global3.yy), global3.yx, !vec2<bool>(var_1.x, true))), global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(35471u, u_input.a) & var_2.x), var_2.x), 29u)], vec2<f32>(global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 858f, arg_0.x) * vec3<f32>(global2.x, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(arg_0 * arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global2.x, -424f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, 1486f, 1919f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -881f, global2.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(392f, 278f, 1422f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1003f, global2.x)), _wgslsmith_div_f32(-940f, global2.x), _wgslsmith_f_op_f32(func_4(any(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), vec3<f32>(-305f, global2.x, global2.x), func_1(global3.yx, Struct_1(2147483647i, -2147483647i, u_input.b), global2.yx, vec3<f32>(-982f, global2.x, 1222f)))))));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(943f, _wgslsmith_f_op_f32(541f - -1268f)), global2.x));
    var var_0 = Struct_1(~u_input.e.x, min(u_input.b, -2147483647i), countOneBits(1i));
    var var_1 = 0i;
    let var_2 = 536f;
    let var_3 = u_input.a;
    global2 = _wgslsmith_f_op_vec3_f32(func_3(select(select(vec4<i32>(func_2(global0[_wgslsmith_index_u32(17268u, 29u)], global2.yy, global0[_wgslsmith_index_u32(46957u, 29u)], vec4<f32>(723f, global2.x, -412f, -162f)).x, u_input.c >> (31535u % 32u), 0i, 1i), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, var_0.a, -43961i, var_0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, 52671i, 17601i, -2147483647i), vec4<i32>(2147483647i, var_0.b, var_0.c, u_input.e.x))), !(!vec4<bool>(global3.x, true, global3.x, false))), vec4<i32>(_wgslsmith_div_i32(max(global1.c, u_input.b), -1i), -1i, 33066i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.a, -2147483647i, u_input.b), vec3<i32>(var_0.b, var_0.a, 0i)), vec3<i32>(1i, 2147483647i, 2147483647i))), vec4<bool>(true & global3.x, global3.x, any(vec2<bool>(global3.x, global3.x)), false)), ~(~((global1.c ^ u_input.e.x) | func_1(global3.yx, global0[_wgslsmith_index_u32(u_input.a, 29u)], vec2<f32>(219f, var_2), vec3<f32>(-1407f, 256f, -667f)).a)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(global3.x, true, true), vec3<bool>(true, true, global3.x), global3.x), 25824u != u_input.d), true), vec3<bool>(all(vec3<bool>(true, true, true)), false, !global3.x), vec3<bool>(false, all(!vec4<bool>(global3.x, global3.x, true, true)), all(global3.zx))), Struct_1(u_input.c, firstTrailingBit(global1.b), global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), ~1i, reverseBits(_wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(1i, var_0.b, global1.a, -1i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, u_input.e.x, 0i, 2147483647i), vec4<i32>(2147483647i, -2147483647i, 21479i, global1.a)), -vec4<i32>(u_input.b, var_0.b, 0i, -65048i), ~vec4<i32>(-7633i, -2147483647i, -1i, u_input.e.x)))), vec3<u32>(var_3, countOneBits(0u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, 1u), min(u_input.a ^ u_input.d, ~u_input.a))));
}

