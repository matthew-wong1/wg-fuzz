struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<f32>, 19>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    var var_0 = vec3<bool>(all(vec2<bool>(all(vec2<bool>(true, true)), select(true, all(vec2<bool>(true, true)), true))), !(arg_0 == _wgslsmith_f_op_f32(sign(-127f))), all(vec4<bool>(select(false, false, true), true, false, true)) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.x >= global1.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(871f, -707f)), arg_0), _wgslsmith_f_op_f32(step(arg_0, arg_0)))) + arg_0)));
    let var_3 = Struct_2(true, Struct_1(arg_1.a.a), Struct_1(vec2<i32>(u_input.a, _wgslsmith_mod_i32(abs(0i), u_input.a))));
    var var_4 = -2147483647i;
    return !(!(!any(!var_0.zz)));
}

fn func_2() -> f32 {
    let var_0 = ~global1.x | ~global1.x;
    let var_1 = Struct_2(!select(func_3(-536f, Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.b.x)))) && true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -2147483647i), -firstTrailingBit(0i))), Struct_1(select(u_input.b.xx, (u_input.b.xx & vec2<i32>(u_input.a, u_input.b.x)) >> (vec2<u32>(28005u, var_0) % vec2<u32>(32u)), u_input.b.x > u_input.b.x)));
    let var_2 = u_input.b.yx >> (global1.xz % vec2<u32>(32u));
    var var_3 = vec4<bool>(var_1.a || !(!(var_0 < var_0)), true, var_1.a == !(!all(vec2<bool>(var_1.a, var_1.a))), !(u_input.a > ~(u_input.a >> (62083u % 32u))));
    var var_4 = -36480i == ((-var_1.b.a.x & 1i) ^ ~u_input.b.x);
    return -1000f;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1005f)), arg_3.x, 628f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.x, arg_3.x, 1242f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, arg_3.x, -1221f) * vec3<f32>(-283f, -490f, -864f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(1179f + _wgslsmith_f_op_f32(func_2())))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1459f, var_2.x) + vec2<f32>(-1674f, var_2.x));
    global0 = array<vec2<f32>, 21>();
    return Struct_2(false, Struct_1(~_wgslsmith_add_vec2_i32(arg_1.zz, _wgslsmith_mult_vec2_i32(arg_1.xw, vec2<i32>(56209i, arg_1.x)))), Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.zy, vec2<i32>(arg_1.x, -1i), arg_1.wy), ~arg_1.wz)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = func_1(global1.x, min(vec4<i32>(1i, func_1(4294967295u, vec4<i32>(-2147483647i, -45756i, -2147483647i, u_input.b.x), arg_0.a, vec3<f32>(1855f, -885f, -1146f)).b.a.x, 35007i << ((50335u & global1.x) % 32u), i32(-1i) * -arg_1.x), arg_1), any(select(vec2<bool>(false, true && arg_0.a), vec2<bool>(true, true), !(!vec2<bool>(arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, -1707f, -826f)) + _wgslsmith_div_vec3_f32(vec3<f32>(404f, -157f, -1497f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1930f, 103f, -745f))))))).c;
    var var_1 = max(~(-(~(vec4<i32>(var_0.a.x, u_input.a, arg_1.x, 2147483647i) & vec4<i32>(arg_1.x, 2147483647i, arg_0.c.a.x, 1i)))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_0.c.a.x, -19780i), select(arg_1, arg_1, arg_0.a)));
    var var_2 = 149070u;
    global2 = array<vec2<f32>, 19>();
    var var_3 = var_0;
    return Struct_3(i32(-1i) * -1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-851f, -1072f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -655f)))), func_1(30137u, ~(arg_1 ^ _wgslsmith_add_vec4_i32(arg_1, arg_1)), true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-632f + 959f), _wgslsmith_f_op_f32(min(-1730f, -594f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(695f - -762f), _wgslsmith_f_op_f32(trunc(308f))))).b, Struct_2(!arg_0.a, func_1(min(_wgslsmith_add_u32(global1.x, global1.x), _wgslsmith_clamp_u32(global1.x, global1.x, 84752u)), vec4<i32>(u_input.a, 29539i, -1i, u_input.a) | arg_1, false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1162f, 1000f, 1366f) * vec3<f32>(-272f, 1000f, -1000f))))).b, func_1(_wgslsmith_mult_u32(global1.x, 0u), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.a.x, u_input.b.x, var_1.x, var_0.a.x), vec4<i32>(-2147483647i, var_3.a.x, var_0.a.x, var_0.a.x) | vec4<i32>(var_1.x, arg_0.c.a.x, var_3.a.x, -1i)), -6635i >= _wgslsmith_mod_i32(arg_1.x, -2147483647i), vec3<f32>(1f, 1f, 1f)).b));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = 47451u;
    global0 = array<vec2<f32>, 21>();
    let var_1 = any(!select(vec3<bool>(arg_1.a, any(vec4<bool>(arg_0.d.a, false, arg_0.d.a, arg_1.a)), true), !vec3<bool>(true, true, arg_0.d.a), vec3<bool>(false, true, true)));
    global3 = func_4(arg_1, _wgslsmith_mod_vec4_i32(~(~(~vec4<i32>(-1i, u_input.b.x, -1i, -63042i))), vec4<i32>(arg_1.b.a.x, min(1i, abs(-52127i)), -u_input.a, u_input.b.x))).d.a;
    let var_2 = !vec4<bool>(_wgslsmith_div_u32(global1.x, ~0u) > ~firstLeadingBit(arg_2), arg_0.d.a, true, !(!(-383f <= arg_0.b.x)));
    return -u_input.b.x;
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = vec2<bool>(true, any(vec4<bool>(false, arg_1.d.a, !arg_1.d.a, arg_1.d.a)));
    global1 = ~min(~vec4<u32>(~70745u, global1.x | 16479u, _wgslsmith_clamp_u32(global1.x, 0u, global1.x), global1.x & global1.x), vec4<u32>(global1.x, ~_wgslsmith_mult_u32(29967u, 53763u), 4294967295u, ~global1.x | ~global1.x));
    global1 = ~select(vec4<u32>(_wgslsmith_clamp_u32(~24397u, 1u, 1u), reverseBits(4294967295u ^ global1.x), 24295u, countOneBits(global1.x << (39064u % 32u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 14204u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 62453u, global1.x, 0u), vec4<u32>(global1.x, global1.x, 0u, global1.x))), true);
    let var_1 = !all(!(!(!vec4<bool>(false, true, var_0.x, false))));
    let var_2 = Struct_4(Struct_1(u_input.b.xz));
    return -1283f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 21>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_6(func_5(func_4(func_1(global1.x, vec4<i32>(u_input.a, 2147483647i, 45087i, 2898i), false, vec3<f32>(-157f, -627f, -1155f)), abs(vec4<i32>(u_input.b.x, -2691i, -45043i, u_input.a))), Struct_2(true, func_4(Struct_2(true, Struct_1(vec2<i32>(u_input.a, -5634i)), Struct_1(vec2<i32>(0i, u_input.b.x))), vec4<i32>(u_input.b.x, 0i, -1i, 2147483647i)).c, func_1(56459u, vec4<i32>(-2147483647i, u_input.b.x, u_input.a, 1i), true, vec3<f32>(553f, -212f, 1524f)).c), _wgslsmith_add_u32(~45835u, firstTrailingBit(9348u)), max(34410u, 4294967295u) >> ((72490u | global1.x) % 32u)), Struct_3(43816i, global0[_wgslsmith_index_u32(global1.x, 21u)], func_4(Struct_2(true, Struct_1(u_input.b.xy), Struct_1(vec2<i32>(-2147483647i, -21988i))), vec4<i32>(u_input.b.x, -43113i, u_input.a, u_input.a) << (vec4<u32>(128237u, 1u, 36069u, 22092u) % vec4<u32>(32u))).c, func_1(0u, vec4<i32>(0i, 1i, u_input.a, u_input.a), false, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1140f, -1533f, 289f)))))))));
    let var_1 = func_1(countOneBits(abs(global1.x)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a, -14184i, 1i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.a)))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, 301f, -1391f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, -504f, -132f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, 1700f, 268f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1157f, 710f, -1317f), vec3<f32>(549f, -848f, -1483f))), vec3<f32>(-2003f, -831f, _wgslsmith_f_op_f32(ceil(159f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1289f, _wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(123f + 1139f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-915f, -1198f, -1806f) * vec3<f32>(-1803f, 463f, -705f)), vec3<f32>(234f, 1528f, -298f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1158f, 101f, 473f) * vec3<f32>(611f, -452f, -1517f)))))));
    let var_3 = vec4<i32>(abs(_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.a)), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(~0i, var_1.b.a.x)), 1i, 1i >> (global1.x % 32u));
    let var_4 = Struct_4(var_1.c);
    var var_5 = select(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(global1.yz, _wgslsmith_mult_vec2_u32(~vec2<u32>(34018u, global1.x), ~global1.xx)), global1.x), vec3<u32>(_wgslsmith_mod_u32(1u, 4294967295u), reverseBits(_wgslsmith_dot_vec3_u32(global1.wxy, global1.zzw) & _wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(52653u, 0u, global1.x, 4294967295u), vec4<u32>(30616u, global1.x, 22279u, 1u)), select(vec4<u32>(global1.x, 1u, 4294967295u, 112394u), vec4<u32>(global1.x, 0u, 40993u, 66737u), vec4<bool>(true, var_1.a, false, var_1.a)))), !all(vec4<bool>(true, true, true, true)));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.x, var_2.x))))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_div_f32(586f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1601f, _wgslsmith_f_op_f32(var_2.x - var_2.x)), var_2.x)));
    var var_7 = ~_wgslsmith_div_vec4_u32(~(abs(vec4<u32>(61580u, var_5.x, 40998u, var_5.x)) & reverseBits(vec4<u32>(global1.x, global1.x, global1.x, global1.x))), select(abs(firstLeadingBit(vec4<u32>(var_5.x, 0u, global1.x, 0u))), (vec4<u32>(var_5.x, 0u, 72427u, var_5.x) >> (vec4<u32>(4294967295u, global1.x, global1.x, 1u) % vec4<u32>(32u))) | vec4<u32>(4294967295u, 21816u, 7341u, 0u), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(890f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_6.x))))), vec4<u32>(1u, var_7.x, 0u, global1.x), var_6);
}

