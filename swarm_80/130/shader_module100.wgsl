struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: vec4<i32>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-933f, 234f, 1785f), 1687f, vec4<bool>(false, false, false, false), vec2<i32>(-37873i, 2147483647i)), Struct_1(vec3<f32>(461f, -523f, -532f), -1417f, vec4<bool>(true, true, false, true), vec2<i32>(-39595i, 0i)), Struct_1(vec3<f32>(672f, 874f, -121f), 257f, vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<f32>(2058f, -1373f, 1000f), -2034f, vec4<bool>(false, false, true, false), vec2<i32>(-9985i, -42013i)), Struct_1(vec3<f32>(-547f, -1742f, 923f), 817f, vec4<bool>(false, true, false, false), vec2<i32>(1i, -2868i)), Struct_1(vec3<f32>(-1171f, -258f, 192f), -831f, vec4<bool>(false, true, true, false), vec2<i32>(40855i, -9223i)), Struct_1(vec3<f32>(507f, 1984f, 864f), -2274f, vec4<bool>(true, false, false, false), vec2<i32>(0i, 0i)), Struct_1(vec3<f32>(1416f, -746f, -788f), 410f, vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec3<f32>(-663f, -406f, 755f), -1149f, vec4<bool>(true, false, true, false), vec2<i32>(-1i, 10048i)), Struct_1(vec3<f32>(1642f, 1646f, 408f), -882f, vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, -7096i)), Struct_1(vec3<f32>(-485f, -409f, -1086f), -1000f, vec4<bool>(true, false, true, false), vec2<i32>(-15127i, 2147483647i)), Struct_1(vec3<f32>(-1306f, 354f, -570f), -1621f, vec4<bool>(false, true, false, false), vec2<i32>(-29824i, -7478i)), Struct_1(vec3<f32>(1060f, -297f, 449f), 1096f, vec4<bool>(false, false, true, true), vec2<i32>(33569i, 1i)));

var<private> global4: vec3<i32> = vec3<i32>(-27155i, 4810i, 1i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    global2 = false;
    global0 = array<vec3<bool>, 23>();
    global3 = array<Struct_1, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-968f, 335f, 1000f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1374f)), -1443f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(979f))))))), vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(17959u, u_input.b, 4294967295u, 1u)) != ~u_input.b, !arg_0 | arg_0, arg_0, true), countOneBits(global1.xw));
    global2 = all(vec4<bool>(!arg_0, all(var_0.c), arg_0, (var_0.a.x < 1406f) | true)) || all(!vec3<bool>(!arg_0, var_0.c.x & arg_0, true));
    return 3760i;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(-max(vec4<i32>(1i, 49755i, global1.x, global1.x), vec4<i32>(0i, 46087i, global1.x, 2147483647i)), vec4<i32>(-5377i, global4.x, func_3(true), global1.x)), u_input.a.x);
    let var_1 = -countOneBits(_wgslsmith_mod_vec2_i32(global4.xx, -vec2<i32>(var_0, global1.x) ^ (u_input.a.yz << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    let var_2 = Struct_3(vec4<f32>(1604f, 1248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2269f) - _wgslsmith_f_op_f32(f32(-1f) * -112f))), -665f), Struct_2(-select(~global1.x, ~global1.x, true), Struct_1(vec3<f32>(693f, _wgslsmith_f_op_f32(1105f + 678f), _wgslsmith_f_op_f32(f32(-1f) * -260f)), 1599f, vec4<bool>(all(arg_0.zx), true, false, any(arg_0)), vec2<i32>(firstLeadingBit(-46421i), 1i)), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(25322u, u_input.b), vec2<u32>(28767u, 80167u)), ~vec2<u32>(u_input.b, 4294967295u))), 13u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(441f, -1554f, 887f)))), 1000f, vec4<bool>(true && arg_0.x, true, true, all(vec4<bool>(arg_0.x, arg_0.x, true, false))), vec2<i32>(u_input.a.x, abs(-1i))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -858f), _wgslsmith_f_op_f32(select(1000f, 265f, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1939f)))), global3[_wgslsmith_index_u32(464u, 13u)], arg_0.x);
    global4 = ~(~(~vec3<i32>(countOneBits(var_0), reverseBits(2763i), 1i)));
    global0 = array<vec3<bool>, 23>();
    return var_2.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    return !arg_1.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    return Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1166f, -1041f, 299f) * vec3<f32>(arg_2, arg_2, 480f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2, 1449f)))), vec4<bool>(true, false, func_4(vec2<bool>(true, false), func_2(vec4<bool>(true, true, true, false)), Struct_3(vec4<f32>(arg_2, arg_2, 610f, -1160f), Struct_2(u_input.a.x, global3[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(vec3<f32>(353f, 1021f, arg_2), 1000f, vec4<bool>(true, false, false, false), u_input.a.xx), global3[_wgslsmith_index_u32(52185u, 13u)], -1741f), Struct_1(vec3<f32>(972f, arg_2, arg_2), -1415f, vec4<bool>(true, false, true, false), global1.yw), false), vec2<f32>(-676f, arg_2)), true), (global4.zy << (select(arg_0.yz, arg_0.zz, vec2<bool>(false, false)) % vec2<u32>(32u))) & select(arg_1, select(vec2<i32>(39250i, global1.x), vec2<i32>(85692i, global1.x), vec2<bool>(false, true)), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 449f, arg_2)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_2 - 657f), _wgslsmith_f_op_f32(step(arg_2, arg_2)), arg_2)), arg_2, select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), true, all(global0[_wgslsmith_index_u32(u_input.b, 23u)]), true), false && func_2(vec4<bool>(false, false, true, true)).c.x), vec2<i32>(reverseBits(_wgslsmith_sub_i32(-1i, 33822i)), i32(-1i) * -2147483647i)), global3[_wgslsmith_index_u32(21070u | u_input.b, 13u)], 282f);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> vec3<u32> {
    global4 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(~(global1.zwz << (vec3<u32>(19628u, u_input.b, 21354u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(u_input.a, firstTrailingBit(firstTrailingBit(vec3<i32>(-71141i, global1.x, global4.x))), select(-vec3<i32>(u_input.a.x, 13970i, 2147483647i), vec3<i32>(global1.x, u_input.a.x, 0i), select(vec3<bool>(true, false, true), arg_1.c.c.yxz, arg_1.c.c.www)))), u_input.a);
    global4 = abs(u_input.a);
    global3 = array<Struct_1, 13>();
    var var_0 = arg_1.b;
    global3 = array<Struct_1, 13>();
    return vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(abs(u_input.b), _wgslsmith_div_u32(u_input.b, 12041u))), u_input.b, 3712u) | _wgslsmith_mod_vec3_u32(max(~max(vec3<u32>(11378u, 4294967295u, 4294967295u), vec3<u32>(28551u, 4294967295u, 27949u)), ~(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(0u, u_input.b, u_input.b))), ~abs(max(vec3<u32>(u_input.b, 65889u, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstTrailingBit(max(vec3<i32>(u_input.a.x, global4.x, global4.x), _wgslsmith_div_vec3_i32(u_input.a, global1.yzz)) << ((vec3<u32>(u_input.b, 4294967295u, 30825u) << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(15926u, 15075u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 90638u, 0u), vec3<u32>(1u, 1u, 4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global2 = true;
    var var_0 = vec2<i32>(0i, global4.x);
    let var_1 = global3[_wgslsmith_index_u32(1u, 13u)];
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(33206u, 29767u, 0u), func_5(vec4<bool>(var_1.c.x || true, !var_1.c.x, false, select(true, false, true)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1000f, 1000f, var_1.b) * vec4<f32>(1512f, var_1.a.x, var_1.b, -1792f)), func_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<i32>(var_0.x, -2147483647i), var_1.a.x), Struct_1(var_1.a, var_1.a.x, vec4<bool>(var_1.c.x, false, false, var_1.c.x), vec2<i32>(var_1.d.x, 31929i)), var_1.c.x), var_1.a.x)) & ~(~vec3<u32>(0u, 0u, u_input.b) << (((vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) & vec3<u32>(u_input.b, 69405u, 1u)) % vec3<u32>(32u)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.a.x, 867f, var_1.b) - vec4<f32>(var_1.b, var_1.b, var_1.a.x, -742f)) * vec4<f32>(113f, 384f, -791f, var_1.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, -341f, var_1.b, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, var_1.b, 329f, 725f))), all(func_1(vec3<u32>(var_2.x, 1u, u_input.b), global4.xx, -1000f).c.c.xz))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_div_f32(var_1.b, 319f), func_1(vec3<u32>(var_2.x, u_input.b, u_input.b), var_1.d, var_1.b).c.b, -105f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 998f, 1805f, -2485f)))))), func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_2.x, 2898u), func_5(var_1.c, Struct_3(vec4<f32>(-1583f, var_1.a.x, -749f, var_1.a.x), Struct_2(0i, Struct_1(vec3<f32>(var_1.a.x, var_1.b, var_1.a.x), -872f, vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), vec2<i32>(-2147483647i, var_0.x)), Struct_1(vec3<f32>(var_1.a.x, 321f, 1643f), var_1.b, var_1.c, global4.xz), Struct_1(vec3<f32>(var_1.b, 846f, 792f), var_1.a.x, vec4<bool>(false, false, true, var_1.c.x), vec2<i32>(51419i, var_1.d.x)), 207f), global3[_wgslsmith_index_u32(u_input.b, 13u)], var_1.c.x), 1409f)), countOneBits(select(vec3<u32>(var_2.x, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 14107u), var_1.c.zzz))), ~abs(var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(vec3<u32>(9997u, 0u, 1u), global1.xz, -1037f).c.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(vec3<f32>(func_2(var_1.c).a.x, var_1.a.x, var_1.a.x), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(var_1.b))), select(vec4<bool>(true, all(vec4<bool>(var_1.c.x, false, var_1.c.x, false)), true, func_2(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true)).c.x), !var_1.c, select(var_1.c, var_1.c, vec4<bool>(var_1.c.x, true, true, var_1.c.x))), _wgslsmith_mult_vec2_i32(firstTrailingBit(~vec2<i32>(-2147483647i, var_0.x)), global1.yy)), true);
    var var_4 = !func_1(max(vec3<u32>(~55096u, 55615u, ~16209u), ~func_5(var_3.c.c, Struct_3(var_3.a, var_3.b, global3[_wgslsmith_index_u32(44537u, 13u)], var_3.c.c.x), -238f)), ~(~(~vec2<i32>(1386i, var_0.x))), var_1.a.x).c.c.xzz;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

