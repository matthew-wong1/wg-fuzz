struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_2(vec2<f32>(-255f, -257f)), Struct_3(Struct_2(vec2<f32>(1012f, -137f)), Struct_2(vec2<f32>(1553f, -303f)), 425f, true)), Struct_4(Struct_2(vec2<f32>(-291f, -544f)), Struct_3(Struct_2(vec2<f32>(506f, -408f)), Struct_2(vec2<f32>(201f, 1706f)), 1182f, true)), Struct_4(Struct_2(vec2<f32>(-990f, -1201f)), Struct_3(Struct_2(vec2<f32>(1099f, -410f)), Struct_2(vec2<f32>(1000f, -149f)), 320f, false)), Struct_4(Struct_2(vec2<f32>(1095f, 474f)), Struct_3(Struct_2(vec2<f32>(551f, 560f)), Struct_2(vec2<f32>(710f, -506f)), -1934f, true)), Struct_4(Struct_2(vec2<f32>(720f, -1000f)), Struct_3(Struct_2(vec2<f32>(-653f, 914f)), Struct_2(vec2<f32>(1000f, 486f)), 1685f, false)), Struct_4(Struct_2(vec2<f32>(-218f, -1000f)), Struct_3(Struct_2(vec2<f32>(200f, 1431f)), Struct_2(vec2<f32>(-521f, 912f)), 307f, true)), Struct_4(Struct_2(vec2<f32>(296f, -1284f)), Struct_3(Struct_2(vec2<f32>(1007f, -673f)), Struct_2(vec2<f32>(515f, 1000f)), -604f, true)), Struct_4(Struct_2(vec2<f32>(-1000f, 1550f)), Struct_3(Struct_2(vec2<f32>(-1021f, -452f)), Struct_2(vec2<f32>(1260f, -1000f)), -1034f, true)), Struct_4(Struct_2(vec2<f32>(-1408f, 1114f)), Struct_3(Struct_2(vec2<f32>(-257f, -1632f)), Struct_2(vec2<f32>(2388f, 452f)), 400f, false)), Struct_4(Struct_2(vec2<f32>(816f, 611f)), Struct_3(Struct_2(vec2<f32>(1112f, -1494f)), Struct_2(vec2<f32>(1529f, 1066f)), 313f, false)), Struct_4(Struct_2(vec2<f32>(903f, -1328f)), Struct_3(Struct_2(vec2<f32>(1711f, 1338f)), Struct_2(vec2<f32>(673f, -1209f)), 677f, true)), Struct_4(Struct_2(vec2<f32>(1556f, 975f)), Struct_3(Struct_2(vec2<f32>(-905f, -527f)), Struct_2(vec2<f32>(-137f, 699f)), -1843f, true)), Struct_4(Struct_2(vec2<f32>(-142f, -722f)), Struct_3(Struct_2(vec2<f32>(2016f, -1406f)), Struct_2(vec2<f32>(-929f, -243f)), -523f, true)), Struct_4(Struct_2(vec2<f32>(2084f, -1271f)), Struct_3(Struct_2(vec2<f32>(-1000f, -408f)), Struct_2(vec2<f32>(542f, 1613f)), -1069f, true)), Struct_4(Struct_2(vec2<f32>(649f, 1000f)), Struct_3(Struct_2(vec2<f32>(1085f, 1700f)), Struct_2(vec2<f32>(-1200f, -656f)), 513f, false)), Struct_4(Struct_2(vec2<f32>(-179f, -1801f)), Struct_3(Struct_2(vec2<f32>(221f, -375f)), Struct_2(vec2<f32>(1145f, 1000f)), -1606f, false)), Struct_4(Struct_2(vec2<f32>(-657f, 2076f)), Struct_3(Struct_2(vec2<f32>(-1823f, -1673f)), Struct_2(vec2<f32>(-564f, -700f)), -605f, true)), Struct_4(Struct_2(vec2<f32>(-1326f, -1799f)), Struct_3(Struct_2(vec2<f32>(181f, 1765f)), Struct_2(vec2<f32>(414f, -712f)), 317f, false)));

var<private> global2: array<bool, 1>;

var<private> global3: array<vec3<i32>, 8>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = any(!(!vec3<bool>(658f > arg_1.a.x, arg_0.x | false, true)));
    global1 = array<Struct_4, 18>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 18u)];
    var var_2 = _wgslsmith_f_op_f32(199f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(844f, _wgslsmith_div_f32(-816f, 1736f), true))));
    var var_3 = var_1.a;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<bool>) -> i32 {
    global2 = array<bool, 1>();
    var var_0 = vec3<u32>(u_input.b, u_input.b, u_input.b);
    global2 = array<bool, 1>();
    var_0 = select(vec3<u32>(~_wgslsmith_div_u32(u_input.b, 1u), ~(~4294967295u), 18415u) ^ ~arg_0.d, vec3<u32>(~select(abs(4294967295u), var_0.x, any(arg_3.wyx)), max(59021u, 0u & u_input.b), arg_0.d.x | ~var_0.x), arg_0.a.x);
    let var_1 = Struct_1(func_2(func_2(select(func_2(arg_3, global0.a), func_2(arg_3, global0.a), select(arg_0.a, vec4<bool>(arg_3.x, arg_1, arg_2.x, true), vec4<bool>(true, global0.b.d, arg_3.x, true))), Struct_2(global0.b.b.a)), Struct_2(vec2<f32>(global0.a.a.x, global0.a.a.x))), max(vec4<i32>(arg_0.b.x, ~(~(-12742i)), _wgslsmith_dot_vec4_i32(reverseBits(arg_0.b), arg_0.b), ~max(-14324i, 1i)), vec4<i32>(-9068i, _wgslsmith_add_i32(min(-24079i, u_input.c.x), select(arg_0.b.x, 1307i, arg_3.x)), _wgslsmith_div_i32(-arg_0.b.x, -36168i), arg_0.b.x)), arg_0.c, _wgslsmith_div_vec3_u32(~select(countOneBits(vec3<u32>(8558u, u_input.b, var_0.x)), vec3<u32>(u_input.b, var_0.x, u_input.b) | arg_0.d, arg_0.b.x >= arg_0.b.x), arg_0.d));
    return countOneBits(var_1.b.x);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_2(arg_0.a, global0.a);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var_2 = _wgslsmith_f_op_f32(ceil(global0.a.a.x));
    global0 = global1[_wgslsmith_index_u32(arg_0.d.x, 18u)];
    return vec3<bool>(true, true, global0.b.a.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(global0.a.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1603f, 1037f) + global0.b.a.a))), Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(233f, -348f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 428f)))), global0.a, 1915f, any(vec3<bool>(arg_0.x, arg_1.x, global0.b.d)) && any(!vec3<bool>(true, global0.b.d, arg_0.x))));
    let var_1 = !(!vec3<bool>(false, true, abs(-1i) <= (u_input.a.x & 12729i)));
    global2 = array<bool, 1>();
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.a.a, var_0.a.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(240f, -1238f) + var_0.a.a))), global0.a.a))), Struct_3(global0.a, var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.a.a.x)))))), all(func_2(!arg_0, Struct_2(var_0.a.a)).xy)));
    let var_2 = -990f < _wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.a.x))));
    return 1u ^ ~(~(~(~u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec4<bool> {
    let var_0 = func_5(!vec4<bool>(select(true, global2[_wgslsmith_index_u32(56808u, 1u)], true), all(func_2(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 1u)], true, true, global0.b.d), Struct_2(arg_1.xw))), true, !global2[_wgslsmith_index_u32(arg_0, 1u)]), func_4(Struct_1(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(87594u, 1u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 1u)], false, true, global0.b.d), vec4<bool>(true, global0.b.d, global0.b.d, true)), vec4<i32>(u_input.d >> (18466u % 32u), arg_2, -13743i, func_3(Struct_1(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(arg_0, 1u)]), vec4<i32>(25215i, arg_2, 1i, u_input.a.x), arg_1.wy, vec3<u32>(1u, u_input.b, 39062u)), true, vec2<bool>(global0.b.d, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 1u)], true, true, global2[_wgslsmith_index_u32(u_input.b, 1u)]))), arg_1.yy, _wgslsmith_clamp_vec3_u32(select(vec3<u32>(47923u, u_input.b, 4294967295u), vec3<u32>(arg_0, 0u, arg_0), global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<u32>(0u, u_input.b, 293u), vec3<u32>(u_input.b, arg_0, 4294967295u) & vec3<u32>(arg_0, 52217u, arg_0)))));
    var var_1 = global0.b;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(step(var_1.a.a.x, -678f))) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) - -787f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(arg_1.xxy)))));
    let var_3 = ~arg_0;
    var_1 = global0.b;
    return vec4<bool>(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - global0.b.a.a.x)) < -1402f, all(vec3<bool>(var_1.d, true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)], global0.b.d, true)))), !all(!vec4<bool>(var_1.d, false, false, global2[_wgslsmith_index_u32(4294967295u, 1u)]))), !(!all(select(vec2<bool>(true, global0.b.d), vec2<bool>(var_1.d, false), false))), any(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(var_3, 1u)], global0.b.d, global2[_wgslsmith_index_u32(arg_0, 1u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(~82161u, 1u)], global2[_wgslsmith_index_u32(arg_0, 1u)], func_2(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(28701u, 1u)]), Struct_2(var_2.zy)).x, global0.b.d), !(!vec4<bool>(true, false, var_1.d, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(370f, -1430f)), _wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1242f, global0.b.c) - _wgslsmith_div_vec2_f32(global0.b.b.a, global0.b.a.a)), true))));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.x, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f), 622f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-201f, var_0.x)), _wgslsmith_f_op_f32(-2060f + -1114f), any(vec4<bool>(global2[_wgslsmith_index_u32(18392u, 1u)], false, true, global0.b.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * 2071f), _wgslsmith_f_op_f32(round(global0.b.a.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-799f, -343f)))), !(!vec2<bool>(global0.b.d, true)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -775f);
    let var_5 = any(select(vec4<bool>(global2[_wgslsmith_index_u32(countOneBits(u_input.b), 1u)], global0.b.d, true, global2[_wgslsmith_index_u32(u_input.b, 1u)]), func_1(abs(~4294967295u), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_2 - -1112f), _wgslsmith_f_op_f32(ceil(242f))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c, u_input.a), u_input.a.x), var_2), true));
    var var_6 = !(!select(vec2<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(36023u, 1u)])), global2[_wgslsmith_index_u32(~4294967295u, 1u)]), vec2<bool>(true, true), false || !global2[_wgslsmith_index_u32(36002u, 1u)]));
    let var_7 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(~1u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(36229u, u_input.b, u_input.b)), _wgslsmith_clamp_u32(4294967295u, 1u, 1u), all(vec3<bool>(var_5, false, false))))), max(_wgslsmith_mod_i32(-abs(u_input.a.x), countOneBits(-u_input.d)), ~u_input.d), var_2, (_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.b, 1u)), vec2<u32>(24576u, 19457u) >> (vec2<u32>(u_input.b, 108184u) % vec2<u32>(32u))) << (select(vec2<u32>(4294967295u, 18572u), vec2<u32>(u_input.b, u_input.b), !vec2<bool>(var_6.x, true)) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 14603u | u_input.b), firstTrailingBit(~vec2<u32>(u_input.b, 15936u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 32554u), ~vec2<u32>(0u, u_input.b))) % vec2<u32>(32u)));
}

