struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 4> = array<i32, 4>(6843i, -1i, -20888i, -22257i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(reverseBits(~min(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, 289u, global0[_wgslsmith_index_u32(10820u, 21u)])), vec4<u32>(69874u, 0u, u_input.b.x, 4294967295u))), vec4<u32>(firstLeadingBit(u_input.d), ~(~(u_input.b.x << (4294967295u % 32u))), 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(16570u, 21u)]) >> (0u % 32u), 21u)], 21u)], 21u)], 21u)]), ~vec4<u32>(1u, abs(u_input.d), countOneBits(0u), ~0u) ^ ~(~(~vec4<u32>(4294967295u, 54599u, 91827u, u_input.d))));
    var_0 = vec4<u32>(~0u, 0u, u_input.d >> ((_wgslsmith_mod_u32(u_input.b.x >> (global0[_wgslsmith_index_u32(1359u, 21u)] % 32u), 1u | u_input.b.x) | ~abs(0u)) % 32u), reverseBits(var_0.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, 280f) - vec2<f32>(411f, 1958f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1304f))))), vec2<bool>(select(arg_0 && arg_0, all(vec4<bool>(arg_0, true, arg_0, arg_0)), true), _wgslsmith_dot_vec2_i32(global1.a.zz, vec2<i32>(0i, -1i)) < 2147483647i))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-32475i, global1.a.x), firstLeadingBit(global1.a.xy)), 6539i), !all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), false)), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-21506i, 14820i, u_input.a.x) | global1.a, global1.a), -1i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(vec3<i32>(-2147483647i, 6340i, 1i), global1.a.x)))), !vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)] > -1i))));
    let var_1 = vec3<bool>(true, false, true);
    var var_2 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5143u, 21u)], 4u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 21u)], 4u)])), min(vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(arg_0, 4u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 21u)], 4u)]), vec3<i32>(2147483647i, 1i, 15451i))), var_0.c.a.a.x, -2147483647i), global2[_wgslsmith_index_u32(~u_input.d, 4u)]));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.d.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1068f, var_0.d.x, -1618f), vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1091f, var_0.d.x, -1819f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(308f, 2253f, 619f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, var_0.d.x, var_0.d.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.d.x, 1154f), vec3<f32>(-1168f, var_0.d.x, var_0.d.x), var_0.b)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, 525f)))))))));
    var_2 = var_0.c;
    return var_0.c.a;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.a;
    var var_1 = arg_2;
    global2 = array<i32, 4>();
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.a.a.x & -14398i, 12893i, firstLeadingBit(arg_1.x)), _wgslsmith_div_vec3_i32(var_1.a.a, var_1.a.a)), -43840i);
    var var_3 = vec3<u32>(~(~(~0u)), _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(~countOneBits(global0[_wgslsmith_index_u32(14570u, 21u)]), u_input.b.x)), 1u);
    return Struct_2(var_2);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = abs(vec2<i32>(global1.b, -37603i));
    var var_1 = ~countOneBits(_wgslsmith_sub_u32(firstLeadingBit(19248u), _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], ~89223u)));
    return Struct_3(1i, arg_1.x, func_5(-143f, arg_2.a.a, Struct_2(arg_2.a)), _wgslsmith_f_op_vec2_f32(-arg_3.zz));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(Struct_1(min(_wgslsmith_add_vec3_i32(~global1.a, firstLeadingBit(global1.a)), vec3<i32>(global1.a.x, global1.b | global2[_wgslsmith_index_u32(u_input.b.x, 4u)], abs(global2[_wgslsmith_index_u32(58189u, 4u)]))), 1i), vec2<bool>(false, true), func_5(1595f, func_4(0i, global1.a, func_2(63308u)), Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(u_input.c.xyz, u_input.c.xxx, u_input.c.yww), -598i & u_input.e))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(277f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-762f, -480f, true)), _wgslsmith_f_op_f32(442f - 212f)), _wgslsmith_f_op_f32(f32(-1f) * -650f)))));
    var var_1 = Struct_4(func_5(_wgslsmith_f_op_f32(-var_0.d.x), vec3<i32>(_wgslsmith_add_i32(-5431i, ~global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), -21071i, _wgslsmith_add_i32(var_0.c.a.a.x, 58246i)), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(global1.a, u_input.c.zxz), firstLeadingBit(global1.a.x)))).a, select(select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d) | u_input.b.xy, ~vec2<u32>(60798u, u_input.b.x)), vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)]) | vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d, 21u)]), false), vec2<u32>(u_input.d, 1u), !(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, false), var_0.b))));
    let var_2 = _wgslsmith_add_vec4_i32(-u_input.c, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.b.x, u_input.b.x), 4u)], -vec3<i32>(5915i, -34264i, 1471i), func_2(1u)).x << (_wgslsmith_add_u32(0u, var_1.b.x) % 32u), 0i, _wgslsmith_clamp_i32(select(var_0.c.a.a.x, global2[_wgslsmith_index_u32(u_input.d, 4u)], any(vec4<bool>(true, false, false, var_0.b))), -1030i, i32(-1i) * -75094i)));
    var var_3 = Struct_2(func_2(1u));
    var_1 = Struct_4(Struct_1(firstLeadingBit(-abs(vec3<i32>(26537i, var_0.c.a.b, -4092i))), global1.a.x), u_input.b.zx);
    return func_6(func_2(~(~u_input.b.x)), !(!(!(!vec2<bool>(true, var_0.b)))), var_0.c, vec3<f32>(1213f, var_0.d.x, -1000f)).c.a;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(countOneBits(~vec3<i32>(-778i, -57859i, arg_0.a.b)) >> (select(firstTrailingBit(u_input.b), u_input.b | vec3<u32>(13510u, 33174u, 77844u), !vec3<bool>(arg_3, arg_3, false)) % vec3<u32>(32u)), 0i));
    global0 = array<u32, 21>();
    global1 = func_6(Struct_1(func_5(_wgslsmith_f_op_f32(1324f - _wgslsmith_f_op_f32(-547f - 1008f)), max(-u_input.c.zwx, _wgslsmith_mod_vec3_i32(global1.a, u_input.c.yyx)), Struct_2(func_2(36879u))).a.a, reverseBits(arg_2.a.b)), vec2<bool>(all(vec4<bool>(false, arg_3, any(vec4<bool>(arg_3, false, false, false)), true)), !(u_input.b.x != arg_2.b.x) & (arg_3 != all(vec3<bool>(false, false, arg_3)))), func_6(func_1(), vec2<bool>(arg_3, !arg_3), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(431f, 971f, 916f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1287f, 1000f, -2243f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1357f, -286f, 356f), vec3<f32>(-2334f, 162f, -1000f), true)))).c, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1985f, -114f, 768f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(341f, -1109f, 231f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1042f, -220f, 1279f) * vec3<f32>(-947f, 2793f, -397f)), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(true, false, false), vec3<bool>(arg_3, false, true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1407f, -528f, 1437f))))).c.a;
    var var_1 = !arg_3;
    global0 = array<u32, 21>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(Struct_4(func_1(), reverseBits(~select(u_input.b.xx, u_input.b.xy, vec2<bool>(true, true)))), Struct_2(func_6(Struct_1(~global1.a, ~(-7982i)), vec2<bool>(true, true), Struct_2(func_2(u_input.d)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1294f, 282f, -240f))))).c.a), Struct_4(func_2(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)])), _wgslsmith_mod_vec2_u32(min(min(u_input.b.yz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)])), vec2<u32>(112930u, 30382u)), vec2<u32>(~u_input.b.x, ~76110u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(14431u, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), global2[_wgslsmith_index_u32(4294967295u, 4u)]))).x) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -988f), 1896f, true))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1225f, _wgslsmith_f_op_f32(f32(-1f) * -476f))))));
    var var_0 = func_5(-1542f, ~_wgslsmith_add_vec3_i32(global1.a, -_wgslsmith_sub_vec3_i32(u_input.c.wyy, u_input.c.xww)), Struct_2(func_2(u_input.b.x))).a;
    let var_1 = !(!select(vec3<bool>(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, false)))));
    var var_2 = true && var_1.x;
    var var_3 = !(!var_1);
    var_3 = select(vec3<bool>(var_3.x, true, true), !select(var_1, !var_1, !(!vec3<bool>(false, var_3.x, false))), select(select(!select(var_1, vec3<bool>(var_1.x, true, true), vec3<bool>(false, true, var_3.x)), vec3<bool>(true && var_3.x, true, global0[_wgslsmith_index_u32(0u, 21u)] != 0u), select(vec3<bool>(true, var_1.x, true), var_1, !var_3.x)), vec3<bool>(false, all(!var_1.yx), var_1.x), false));
    let var_4 = func_6(func_7(Struct_4(Struct_1(_wgslsmith_sub_vec3_i32(u_input.c.wwy, vec3<i32>(2147483647i, 2147483647i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 4u)]), u_input.c.wy)), u_input.b.zy), Struct_2(Struct_1(-vec3<i32>(2147483647i, 1i, 1i), ~u_input.e)), Struct_4(Struct_1(vec3<i32>(1i, 1i, -2147483647i), global1.b), u_input.b.xy), true), vec2<bool>(true, true), Struct_2(func_6(func_5(_wgslsmith_f_op_f32(-1118f + 208f), var_0.a | u_input.c.wyy, Struct_2(Struct_1(var_0.a, u_input.c.x))).a, var_3.yy, Struct_2(func_5(-663f, var_0.a, Struct_2(Struct_1(u_input.c.wyz, global1.a.x))).a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1683f, 123f, -1226f))))).c.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 851f)) - 665f)), 332f, -130f)).c.a;
    let var_5 = Struct_4(func_2(~u_input.b.x), u_input.b.zx);
    let var_6 = 15715u;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 21u)]), 21u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(226f)))));
}

