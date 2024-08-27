struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-369f, -351f);

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec2<f32> = vec2<f32>(162f, 629f);

var<private> global3: array<vec2<u32>, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = select(arg_2.c.zy, arg_2.c.zz, !vec2<bool>(true, arg_2.c.x));
    global1 = array<Struct_1, 23>();
    let var_1 = i32(-1i) * -u_input.c.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), arg_0.a.zw) * _wgslsmith_f_op_vec2_f32(abs(arg_0.a.zx)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1716f, arg_0.a.x) - arg_2.a.ywx))))));
    return all(arg_0.c);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_1.d;
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_add_vec4_i32(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 32181i, -28518i, arg_0), vec4<i32>(1i, 6027i, 32929i, 44277i))), vec4<i32>(-13032i, arg_0, arg_1.b << (_wgslsmith_mult_u32(arg_3.x, arg_3.x) % 32u), -var_0)) ^ _wgslsmith_add_vec4_i32(abs(abs(abs(vec4<i32>(0i, 0i, arg_1.b, arg_0)))), min(vec4<i32>(var_0, -1i, -43012i, arg_1.d), abs(vec4<i32>(u_input.c.x, -1i, u_input.c.x, 0i))) >> ((vec4<u32>(29560u, 1u, 0u, 63117u) & (u_input.b | vec4<u32>(arg_3.x, 59058u, 6401u, arg_3.x))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(293f, 633f, -755f, -1606f) + arg_1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, 110f, 504f, 871f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -894f, -650f, -1009f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a) * _wgslsmith_f_op_vec4_f32(floor(arg_1.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 184f, global0.x, -327f))))));
    return arg_2.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), arg_0.a.x)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.yy) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.x, global0.x)))), _wgslsmith_f_op_vec2_f32(sign(arg_0.a.xy)))))));
    let var_0 = ~(-20415i);
    var var_1 = Struct_1(arg_0.a, _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.xy), select(arg_0.c, select(arg_0.c, select(!arg_0.c, arg_0.c, global2.x >= global0.x), false), arg_0.c), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(u_input.c.x, 40612i >> (u_input.a.x % 32u)), ~_wgslsmith_dot_vec2_i32(u_input.c.yz ^ u_input.c.zx, arg_1.zw)));
    var var_2 = Struct_1(vec4<f32>(arg_0.a.x, -240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-213f))), 156f), var_0, select(vec4<bool>(!(!arg_2), !var_1.c.x, arg_0.c.x, func_4(1277i, global1[_wgslsmith_index_u32(~0u, 23u)], vec2<bool>(true, var_1.c.x), firstLeadingBit(vec2<u32>(0u, 0u)))), arg_0.c, ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u) <= 4294967295u), -1i);
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 23u)];
    return select(var_2.c.xy, !vec2<bool>(select(var_2.c.x, false, global0.x > global2.x), _wgslsmith_clamp_i32(0i, -2147483647i, var_3.b) != arg_1.x), true && !func_3(arg_0, _wgslsmith_f_op_vec2_f32(-arg_0.a.yw), Struct_1(arg_0.a, -1i, vec4<bool>(var_3.c.x, var_3.c.x, arg_2, arg_0.c.x), var_3.b)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = func_5(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 0i, u_input.c.x), vec4<i32>(-15989i, u_input.c.x, -11054i, 1i))), vec4<i32>(u_input.c.x, u_input.c.x << (13456u % 32u), ~u_input.c.x, _wgslsmith_div_i32(16856i, u_input.c.x)), vec4<i32>(-1i, -2147483647i, u_input.c.x, reverseBits(57711i))), select(vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x) | vec4<i32>(1i, 2147483647i, -9328i, u_input.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -10872i, 1943i, -9809i), vec4<i32>(u_input.c.x, u_input.c.x, -61396i, u_input.c.x)), vec4<bool>(true, true, true, true)) << (select(abs(vec4<u32>(u_input.b.x, 32873u, u_input.b.x, 66107u)), u_input.b, true) % vec4<u32>(32u))), func_4(_wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.c.x, _wgslsmith_mult_i32(46807i, u_input.c.x)), 37763i), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, global2.x, 808f), vec4<f32>(-384f, global0.x, -226f, arg_0), vec4<bool>(true, true, false, false))))), u_input.c.x, vec4<bool>(false, arg_0 > arg_0, func_3(Struct_1(vec4<f32>(-2092f, arg_0, global2.x, 636f), u_input.c.x, vec4<bool>(true, true, false, true), 1i), vec2<f32>(global0.x, global0.x), Struct_1(vec4<f32>(global0.x, -883f, global2.x, global2.x), 16032i, vec4<bool>(true, true, true, true), u_input.c.x)), true), ~u_input.c.x), vec2<bool>(true, true), u_input.b.xz));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.b, ~reverseBits(~(u_input.b >> (vec4<u32>(u_input.a.x, 46774u, 135553u, 5375u) % vec4<u32>(32u))))), 23u)];
    global3 = array<vec2<u32>, 18>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.xw);
    let var_3 = global1[_wgslsmith_index_u32(~(~103608u), 23u)];
    return 9107i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = arg_1.c.ww;
    let var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1637f));
    let var_2 = _wgslsmith_f_op_f32(global2.x + 1188f);
    var var_3 = ~arg_0;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), 655f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(-3402f, global2.x)))), -32910i, !vec4<bool>(true, 14680i >= _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, var_1, -9085i, 44580i), vec4<i32>(164i, arg_2.b, u_input.c.x, -33188i)), true, var_0.x), arg_1.b >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, arg_0)), ~u_input.b.zz), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), ~arg_0)) % 32u));
    return true || func_3(arg_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.a.wz))), func_5(Struct_1(vec4<f32>(global0.x, global0.x, var_2, 1303f), 5853i, arg_2.c, 0i), vec4<i32>(33045i, -2147483647i, u_input.c.x, arg_1.b), func_4(u_input.c.x, arg_1, vec2<bool>(false, false), vec2<u32>(1u, 30978u))))), arg_2);
}

fn func_6(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, -1000f)), -1000f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    global3 = array<vec2<u32>, 18>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 23u)];
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.a.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1777f, global2.x) + vec2<f32>(-1000f, global2.x)), vec2<f32>(global2.x, global2.x), vec2<bool>(var_2.c.x, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.a.zy, _wgslsmith_div_vec2_f32(var_2.a.ww, _wgslsmith_f_op_vec2_f32(floor(var_2.a.yw)))))));
    return 603f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1221f, global2.x), vec2<f32>(-528f, 311f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(525f, global2.x))))))));
    let var_0 = _wgslsmith_f_op_f32(func_6(!any(vec4<bool>(true, true, true, true)), vec4<bool>(false, func_1(_wgslsmith_add_u32(u_input.b.x, 50329u) & 23160u, Struct_1(vec4<f32>(global2.x, 516f, global0.x, global2.x), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 39210i), vec4<bool>(true, true, true, true), firstTrailingBit(17409i)), Struct_1(vec4<f32>(global2.x, 220f, global2.x, global0.x), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true), _wgslsmith_div_i32(-1i, u_input.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.xz)), false, all(vec2<bool>(true, true)) && (1311f != _wgslsmith_f_op_f32(floor(-1466f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1125f, 650f)) * _wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-357f)) - _wgslsmith_f_op_f32(abs(-1351f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(652f)) - _wgslsmith_f_op_f32(global2.x - -307f)), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -720f, var_0, -959f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global2.x, var_0, 873f), vec4<f32>(global0.x, global2.x, 181f, global0.x)))))), -1i, vec4<bool>(true, !(_wgslsmith_add_u32(u_input.a.x, u_input.b.x) <= u_input.b.x), func_4(u_input.c.x << (u_input.a.x % 32u), Struct_1(vec4<f32>(global0.x, -471f, global0.x, -452f), u_input.c.x, vec4<bool>(true, false, true, true), u_input.c.x), vec2<bool>(true, true), u_input.a) || true, _wgslsmith_f_op_f32(672f - global0.x) < _wgslsmith_div_f32(var_0, var_0)), ~u_input.c.x);
    var var_2 = var_1.a.x;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~vec3<u32>(1610u, firstTrailingBit(1u), _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), ~u_input.b.yyy), var_3.a, var_1.a, countOneBits(1i), _wgslsmith_f_op_vec2_f32(-var_3.a.xy));
}

