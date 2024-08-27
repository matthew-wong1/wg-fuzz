struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(49159u, 4294967295u, 23250u);

var<private> global1: array<i32, 30> = array<i32, 30>(-6534i, 1i, -36716i, 19555i, -13799i, -35914i, 2147483647i, -17513i, -15328i, -44117i, 1i, -43216i, 49485i, 25588i, -3588i, 2147483647i, 15782i, 1i, -2621i, 2147483647i, -6723i, 1i, -1i, i32(-2147483648), 9184i, 2147483647i, 0i, 3394i, 2147483647i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> i32 {
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(max(~18546u, (global0.x & 4294967295u) << (firstLeadingBit(0u) % 32u)), ~global0.x, ~u_input.b.x), vec3<u32>(select(u_input.b.x, global0.x, true || (43350u != u_input.b.x)), ~u_input.b.x, u_input.b.x));
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(global0.yy, _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, ~0u), ~(~vec2<u32>(u_input.b.x, u_input.b.x)))), u_input.b.x, 12206u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1821f, 945f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(612f, 391f))))))));
    var var_1 = reverseBits(select(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1.x, -40142i, u_input.a) >> (select(u_input.b.wyy, u_input.b.wwy, false) % vec3<u32>(32u)), ~vec3<i32>(arg_0, arg_1.x, arg_1.x)), max(~vec3<i32>(arg_0, -6313i, 0i), abs(arg_1.xxx)), true));
    var_0 = vec2<f32>(-500f, -390f);
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = ~global1[_wgslsmith_index_u32(max(26970u, _wgslsmith_mod_u32(2378u << (u_input.b.x % 32u), ~global0.x)) ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, global0.x), ~(~77706u)), 30u)];
    let var_1 = vec4<i32>(~_wgslsmith_mult_i32(-(~var_0), arg_0), -arg_2.x, min(-(~2147483647i), u_input.a), 1i | arg_0);
    var var_2 = Struct_2(arg_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-141f)))));
    global0 = max(u_input.b.yww, abs(u_input.b.xxz));
    var var_3 = Struct_1(!(!select(!vec2<bool>(true, arg_3.a.x), vec2<bool>(true, true), arg_3.a)));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = u_input.b.zww;
    return Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), func_4(reverseBits(func_3(u_input.a, vec4<i32>(global1[_wgslsmith_index_u32(1u, 30u)], -2147483647i, 1550i, global1[_wgslsmith_index_u32(global0.x, 30u)]))), vec3<bool>(false, false, true), (vec2<i32>(1i, 40844i) << (global0.xx % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, -15489i)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    return -461f;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_3 {
    global1 = array<i32, 30>();
    let var_0 = global0.x;
    let var_1 = !(!select(vec4<bool>(true, arg_1.c.x || arg_1.d.a, !arg_1.d.a, -323f < arg_0.x), select(!vec4<bool>(arg_1.d.a, true, arg_1.c.x, arg_1.d.a), vec4<bool>(false, true, arg_1.a, false), !vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)), ~global0.x >= (u_input.b.x ^ u_input.b.x)));
    var var_2 = func_2(abs(select(~u_input.b.xxy, reverseBits(~vec3<u32>(18406u, u_input.b.x, 1u)), true)));
    let var_3 = vec3<bool>(all(!select(select(var_1, vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, false, false), true && arg_1.a)), all(!select(vec4<bool>(var_2.a.x, arg_1.d.a, false, true), vec4<bool>(var_1.x, arg_1.c.x, false, false), select(var_1, var_1, false))), _wgslsmith_sub_u32(arg_2.x, firstLeadingBit(1u)) < (~4294967295u | global0.x));
    return Struct_3(any(vec4<bool>(true, false, true, _wgslsmith_dot_vec2_u32(arg_2, u_input.b.yw) >= arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(1837f * arg_0.x), true)), arg_0.x, !any(var_1)))), !select(!select(vec3<bool>(false, var_1.x, var_3.x), var_3, vec3<bool>(var_3.x, false, true)), arg_1.c, arg_1.c), Struct_2(any(!vec4<bool>(var_3.x, true, var_2.a.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1825f + arg_0.x)) - _wgslsmith_f_op_f32(sign(arg_0.x)))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1089f)), -857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f + -562f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(arg_0.x, ~u_input.b.x, Struct_1(vec2<bool>(false, true)), func_2(vec3<u32>(1u, u_input.b.x, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f - -1388f) * -193f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1875f))))), Struct_3(true, -200f, vec3<bool>(true, func_4(1i, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec2<i32>(41614i, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), Struct_1(vec2<bool>(false, false))), true), Struct_2(true, _wgslsmith_f_op_f32(func_5(~global0.x, min(arg_0.x, global0.x), func_2(vec3<u32>(global0.x, 1u, u_input.b.x)), Struct_1(vec2<bool>(false, false)))))), vec2<u32>(1u, ~_wgslsmith_clamp_u32(29903u << (arg_0.x % 32u), ~11393u, ~global0.x)));
    global0 = u_input.b.wxw;
    var var_1 = ~(select((u_input.b.x | u_input.b.x) & ~global0.x, ~(~25259u), any(vec3<bool>(false, true, false))) << (~(reverseBits(4294967295u) << (firstTrailingBit(u_input.b.x) % 32u)) % 32u));
    let var_2 = true;
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1268f, var_0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -662f)) + var_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), global1[_wgslsmith_index_u32(select(global0.x, 1u, true), 30u)])));
    let var_1 = Struct_3(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b.x, 23152u, u_input.b.x, 1u))) + 1511f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1597f))), _wgslsmith_f_op_f32(506f * -1566f)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 301f, 126f, -189f)))), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1387f, -992f, 1000f, -1823f) - vec4<f32>(2297f, 830f, 403f, 1762f)) * vec4<f32>(-355f, -750f, -903f, -139f)), func_6(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 527f, -1720f, -1338f), vec4<f32>(-1667f, -599f, 1382f, -470f)), func_6(vec4<f32>(1022f, -1400f, 174f, -735f), Struct_3(false, 2029f, vec3<bool>(true, false, false), Struct_2(true, 1436f)), vec2<u32>(100915u, 19852u)), _wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(global0.x, u_input.b.x))), vec2<u32>(global0.x, 8706u & u_input.b.x)), ~(~(~global0.zx))).d);
    let var_2 = _wgslsmith_f_op_f32(max(var_1.d.b, var_1.d.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1891f, _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.b, 727f), vec2<f32>(-574f, var_1.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, 1000f) + vec2<f32>(var_1.b, var_1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_1.d.b)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(770f, var_2)))), var_1.c.zx))));
    var var_4 = Struct_3(any(vec3<bool>(all(vec4<bool>(var_1.d.a, false, var_1.d.a, var_1.a)), true, var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_3.x, var_2)), _wgslsmith_f_op_f32(func_1(u_input.b))))) - -370f), select(!vec3<bool>(var_1.c.x && var_1.c.x, func_4(24806i, vec3<bool>(var_1.d.a, var_1.a, false), vec2<i32>(var_0.x, -2147483647i), Struct_1(var_1.c.xx)), true), !select(!vec3<bool>(true, var_1.d.a, true), vec3<bool>(false, var_1.d.a, var_1.a), -1i > var_0.x), !select(select(var_1.c, vec3<bool>(false, var_1.c.x, false), var_1.c), vec3<bool>(var_1.d.a, false, false), true)), Struct_2(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, -1639f))), _wgslsmith_f_op_f32(func_1(u_input.b))))));
    var var_5 = !var_4.c.x;
    var var_6 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -30141i, 2147483647i, 6201i), vec4<i32>(u_input.a, u_input.a, var_0.x, 0i)), firstTrailingBit(vec4<i32>(-21569i, 0i, 1i, u_input.a))), abs(~vec4<i32>(12405i, var_0.x, global1[_wgslsmith_index_u32(global0.x, 30u)], -2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(101632u, 30u)], -2147483647i | var_0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, -26884i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 30u)], var_0.x)))), vec3<f32>(-1519f, _wgslsmith_f_op_f32(1234f - -1685f), 119f), 481f, _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(countOneBits(u_input.b), vec4<u32>(u_input.b.x, 802u, u_input.b.x, 1u)), ~(~select(vec4<u32>(4294967295u, global0.x, 4294967295u, u_input.b.x), u_input.b, var_1.a))));
}

