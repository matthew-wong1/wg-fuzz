struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(-1000f, -541f), vec4<f32>(-683f, -166f, 1107f, -419f), vec4<f32>(-393f, -1239f, -1212f, -521f)));

var<private> global2: vec4<f32>;

var<private> global3: vec3<i32> = vec3<i32>(1i, -1i, -14000i);

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(632f, 513f), vec4<f32>(-1661f, 1476f, -807f, 673f), vec4<f32>(-764f, 651f, 480f, 757f)), Struct_1(vec2<f32>(-726f, 265f), vec4<f32>(1278f, -575f, 1880f, -894f), vec4<f32>(-1132f, -1000f, 2516f, 133f)), Struct_1(vec2<f32>(-563f, -120f), vec4<f32>(-276f, -825f, 2183f, -904f), vec4<f32>(-2573f, 439f, 959f, 525f)), Struct_1(vec2<f32>(764f, 1126f), vec4<f32>(177f, 467f, 745f, 356f), vec4<f32>(-997f, -1141f, -578f, -301f)), Struct_1(vec2<f32>(-653f, -1222f), vec4<f32>(-1000f, 1085f, -658f, 445f), vec4<f32>(2020f, -379f, -921f, 1696f)), Struct_1(vec2<f32>(619f, 242f), vec4<f32>(-193f, 626f, 965f, -566f), vec4<f32>(460f, -1016f, 1468f, -643f)), Struct_1(vec2<f32>(-517f, -173f), vec4<f32>(1229f, -641f, -1000f, -263f), vec4<f32>(-834f, 1297f, -2369f, -1287f)), Struct_1(vec2<f32>(-198f, 635f), vec4<f32>(-1058f, -1000f, 1000f, 1886f), vec4<f32>(-856f, -1000f, 2447f, -862f)), Struct_1(vec2<f32>(554f, -241f), vec4<f32>(190f, 342f, 1008f, 366f), vec4<f32>(698f, 1067f, -1000f, 181f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    global1 = array<Struct_1, 1>();
    global3 = -select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(global3.x, global3.x, 2147483647i)), -global3.x, 5301i) & vec3<i32>(i32(-1i) * -22849i, abs(-1i), global3.x), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, -1i), vec4<i32>(-8696i, global3.x, 34166i, -2147483647i)), min(42099i, 12871i), 1i), all(vec4<bool>(true, false, any(vec2<bool>(true, false)), true)));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(floor(global2.x)));
    let var_0 = global4[_wgslsmith_index_u32(1u, 9u)];
    global3 = _wgslsmith_mult_vec3_i32(-(~vec3<i32>(_wgslsmith_div_i32(global3.x, 2963i), 2147483647i, -global3.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(global3.x, -2147483647i), ~global3.x, -1i), select(vec3<i32>(-2477i, global3.x, 30161i), max(vec3<i32>(-2147483647i, 10495i, 31027i) ^ vec3<i32>(33026i, global3.x, -28587i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-23522i, 31789i, 2147483647i), vec3<i32>(0i, 56059i, -1956i), vec3<i32>(-1i, -1i, global3.x))), true), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, 6428i, -1i), vec3<i32>(global3.x, -2147483647i, -22186i)))));
    return _wgslsmith_add_u32(~arg_1.x, 51974u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 0u ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(12310u, 4294967295u)), ~(arg_1.x >> (~u_input.a.x % 32u))), 1u)];
    var var_1 = select(4294967295u, reverseBits(firstLeadingBit(u_input.a.x) << (max(arg_0.x, u_input.a.x) % 32u)) & ~_wgslsmith_add_u32(arg_1.x, arg_0.x), !(!any(vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(global2.wx, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(select(-954f, -367f, false)), _wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), var_0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, global2.x))), -391f, _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-global2.x)), true)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(495f)))), -678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-800f - -1093f))))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(1u >> (_wgslsmith_mult_u32(~27956u, u_input.a.x) % 32u)), arg_0.x), 1u)];
    var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.x, _wgslsmith_div_u32(firstLeadingBit(select(arg_1.x, arg_1.x, true)), 39707u)), ~min(abs(u_input.a.x), ~arg_1.x));
    return vec3<u32>(arg_1.x, ~(~(61946u | _wgslsmith_clamp_u32(47055u, 1u, u_input.a.x))), u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~(~(~(vec3<u32>(u_input.a.x, 0u, u_input.a.x) & vec3<u32>(27950u, u_input.a.x, u_input.a.x)))));
    var_0 = vec3<u32>(~4294967295u, ~35123u, ~1u);
    var_0 = vec3<u32>(var_0.x, u_input.a.x, ~(~_wgslsmith_add_u32(~u_input.a.x, 38034u)));
    let var_1 = func_4(vec4<u32>(49676u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, var_0.x), countOneBits(vec4<u32>(u_input.a.x, var_0.x, 0u, 1u))), ~(~vec4<u32>(var_0.x, u_input.a.x, var_0.x, 34380u))), 49322u, _wgslsmith_add_u32(var_0.x, func_3(vec4<f32>(-1560f, -831f, global2.x, 496f), u_input.a)) << (59655u % 32u)), ~vec2<u32>(29248u, ~min(u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(~1u, 1u)]);
    return -global3.x;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    global3 = ~countOneBits(vec3<i32>(_wgslsmith_sub_i32(global3.x, 1i) >> (u_input.a.x % 32u), global3.x, func_2(Struct_1(vec2<f32>(-939f, global2.x), vec4<f32>(global2.x, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -2110f, -1433f, -748f)))));
    global3 = abs((select(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -3616i, global3.x), vec3<i32>(global3.x, global3.x, -1i)), vec3<i32>(global3.x, global3.x, 21701i), !vec3<bool>(true, arg_0, arg_0)) | ~(vec3<i32>(0i, global3.x, 1i) << (vec3<u32>(750u, 0u, 45955u) % vec3<u32>(32u)))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a.x, 0u, 22648u), vec3<u32>(u_input.a.x, 0u, 46013u)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, 101640u) << (abs(vec3<u32>(0u, u_input.a.x, 13619u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_0 = select(!(!vec2<bool>(!arg_0, true)), !vec2<bool>(arg_0, !(!arg_0)), false);
    let var_1 = abs(vec2<u32>(32075u, 1u));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(global2.x - 256f), _wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(153f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global2.x - 451f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2061f * -1264f), -317f)))));
    return global4[_wgslsmith_index_u32(var_1.x, 9u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    var var_0 = func_1(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), 1255f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.zy))) - var_0.c.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(727f, 1251f))))));
    global0 = ~arg_0.x;
    var var_2 = -firstTrailingBit(arg_0.x);
    let var_3 = !select(vec3<bool>(true, any(vec2<bool>(false, true)), false), vec3<bool>(!select(false, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), (i32(-1i) * -13207i) >= arg_0.x), true);
    return func_1(false, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + var_1.x)), all(!vec2<bool>(var_3.x, var_3.x))))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.x, global2.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1733f, 1082f) - global2.x), _wgslsmith_f_op_f32(func_5(vec2<i32>(global3.x, global3.x), func_1(false, 190f), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_vec2_f32(-global2.wy))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_1(true, global2.x).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(global2.x, global2.x, 1000f, 678f), vec4<bool>(true, true, false, false))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global2.x, global2.x)))), vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(true, true, true, false)))))));
    global3 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(-5209i, -14163i, global3.x)), vec3<i32>(countOneBits(global3.x), global3.x, ~global3.x)), vec3<i32>(~(~global3.x), global3.x, firstLeadingBit(-12947i))), vec3<i32>(_wgslsmith_add_i32(12043i, 54225i), _wgslsmith_add_i32(-global3.x, ~global3.x), global3.x));
    global0 = 47791i;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-282f))), -1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f), var_0.x));
    global0 = min(_wgslsmith_mod_i32(global3.x, global3.x), ~(-select(11593i, 71076i, true)));
    let var_1 = select(select(select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), (var_0.x < -1607f) || any(vec3<bool>(false, true, true))), select(vec4<bool>(all(vec4<bool>(false, false, false, false)), true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), 1u == u_input.a.x), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, var_0.x > -428f)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), !vec4<bool>(false, !all(vec2<bool>(true, false)), select(true, 0u == u_input.a.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 2147483647i, -6865i, -1i), vec4<i32>(-15291i, -1640i, global3.x, 2147483647i)) != _wgslsmith_div_i32(84463i, -1i)), all(vec4<bool>(!select(true, false, true), _wgslsmith_f_op_f32(f32(-1f) * -2697f) <= _wgslsmith_f_op_f32(select(-366f, 2612f, false)), true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))));
    global3 = vec3<i32>(2147483647i, global3.x, ~27564i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_0.yz)), global3.zy, _wgslsmith_clamp_vec3_i32(~(vec3<i32>(global3.x, 21113i, global3.x) << ((vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 42968u, 4294967295u)) % vec3<u32>(32u))), -vec3<i32>(func_2(Struct_1(global2.wz, vec4<f32>(var_0.x, var_0.x, global2.x, -1208f), vec4<f32>(-619f, 1427f, 1000f, global2.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -4197i, global3.x), vec3<i32>(global3.x, 1i, global3.x)), 1i), vec3<i32>(-7285i, -10606i, _wgslsmith_mod_i32(-1i, -31181i))), ~vec4<u32>(~u_input.a.x, 3661u, u_input.a.x, _wgslsmith_div_u32(~4294967295u, max(4294967295u, u_input.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(func_1(true, 443f).a.x, _wgslsmith_f_op_f32(-1016f * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.x) + _wgslsmith_f_op_f32(func_5(vec2<i32>(global3.x, global3.x), Struct_1(vec2<f32>(-252f, global2.x), vec4<f32>(-728f, var_0.x, -233f, global2.x), vec4<f32>(1096f, var_0.x, var_0.x, var_0.x)), var_0.x, var_0.xx))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.xxz));
}

