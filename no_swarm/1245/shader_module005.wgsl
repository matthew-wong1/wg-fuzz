struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(931f, 1216f, 1257f);

var<private> global1: i32;

var<private> global2: vec3<i32>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, true), 50969u, false, vec4<bool>(false, true, false, false), 1i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec2<u32>(u_input.a & ~global4.b, 23025u);
    let var_1 = arg_0.a;
    let var_2 = select(arg_0.a.x, all(!(!(!vec3<bool>(global4.d.x, false, false)))), !(-(arg_0.e << (4294967295u % 32u)) >= global4.e));
    var var_3 = abs(vec3<i32>(~(~global2.x), ~(-arg_0.e), ~countOneBits(i32(-1i) * -2147483647i)));
    var var_4 = arg_0.e;
    return !global3.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global4 = Struct_2(!vec2<bool>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) < _wgslsmith_f_op_f32(step(173f, -718f)), global4.c), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(11879u, global4.b, global4.b, 4294967295u)), min(vec4<u32>(76591u, global4.b, u_input.c, 44601u), vec4<u32>(global4.b, 1u, 1u, u_input.b.x))), ~(vec4<u32>(u_input.c, u_input.c, 51326u, 1u) ^ vec4<u32>(u_input.c, 17387u, 0u, 39454u))), global3.x, global4.d, countOneBits(~firstLeadingBit(global2.x)) & select(1i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, 1i, -1i)), vec3<i32>(-14480i, 287i, 0i)), false));
    let var_0 = Struct_2(vec2<bool>(!(func_3(Struct_2(vec2<bool>(false, global4.a.x), u_input.c, global4.c, global4.d, global4.e)) | (global3.x | global4.c)), true), countOneBits(~global4.b), true, global4.d, global2.x);
    var var_1 = global2.xy;
    var var_2 = global4.b;
    let var_3 = vec3<f32>(arg_0.x, -311f, 1000f);
    return Struct_1(vec3<bool>(true, any(select(vec4<bool>(true, global3.x, false, global3.x), !vec4<bool>(false, global4.a.x, false, true), vec4<bool>(true, var_0.c, global3.x, true))), global3.x), _wgslsmith_f_op_f32(f32(-1f) * -432f), global4.d, !select(select(select(vec4<bool>(global4.a.x, true, false, false), global4.d, vec4<bool>(global3.x, global3.x, false, global4.a.x)), var_0.d, !global4.d), vec4<bool>(global4.c && var_0.c, var_0.a.x || false, true, global3.x), !var_0.c | false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = !select(select(!vec3<bool>(arg_0.a.x, arg_0.d.x, false), vec3<bool>(false, true, global4.a.x), any(global4.d.zzy)), vec3<bool>(!arg_1.c.x, any(vec2<bool>(true, false)), false || arg_1.d.x), global4.d.yxy);
    let var_1 = -firstLeadingBit(vec4<i32>(0i, min(~(-13659i), 58210i), global4.e << (~global4.b % 32u), (-1i ^ global2.x) | global4.e));
    let var_2 = ~(~(~(~max(vec4<u32>(89419u, u_input.b.x, 25701u, global4.b), vec4<u32>(37337u, global4.b, 0u, 0u)))));
    global4 = Struct_2(!select(vec2<bool>(arg_0.a.x & global3.x, true), func_2(vec3<f32>(global0.x, arg_1.b, global0.x)).c.yz, !vec2<bool>(false, arg_0.c.x)), 28656u, !(!(arg_1.d.x & false) == (false & global4.c)), !(!vec4<bool>(all(vec4<bool>(false, arg_1.d.x, var_0.x, false)), true, all(vec3<bool>(global3.x, var_0.x, arg_0.c.x)), func_2(vec3<f32>(181f, global0.x, -566f)).d.x)), -29699i << (_wgslsmith_mod_u32(global4.b, u_input.b.x) % 32u));
    let var_3 = func_2(vec3<f32>(1550f, _wgslsmith_f_op_f32(ceil(-2272f)), _wgslsmith_f_op_f32(f32(-1f) * -232f)));
    return !select(!select(!var_3.d, select(var_3.c, vec4<bool>(true, false, var_3.d.x, arg_1.d.x), vec4<bool>(true, true, false, false)), var_3.d), select(vec4<bool>(false, arg_1.c.x & global4.c, true, arg_0.a.x), var_3.c, vec4<bool>(true, true, select(false, arg_0.c.x, arg_0.c.x), all(vec4<bool>(false, var_3.d.x, false, false)))), vec4<bool>(true || all(arg_1.c.xx), true, false, func_2(vec3<f32>(arg_1.b, arg_1.b, 374f)).d.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> bool {
    global1 = 32983i;
    let var_0 = vec2<f32>(-577f, _wgslsmith_f_op_f32(ceil(global0.x)));
    let var_1 = select(arg_1, select(select(vec4<bool>(true, all(arg_1.wz), global4.a.x, global4.e <= global4.e), global4.d, select(vec4<bool>(false, true, global4.a.x, global3.x), global4.d, arg_1)), func_4(Struct_1(!vec3<bool>(global4.c, true, true), _wgslsmith_f_op_f32(min(var_0.x, arg_0.x)), global4.d, select(global4.d, vec4<bool>(global3.x, global3.x, global3.x, false), global4.a.x)), func_2(arg_0.yyy)), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.zwy * vec3<f32>(global0.x, -313f, var_0.x)), arg_0.yyy)).c.x), arg_1.x);
    global2 = -select(vec3<i32>(global2.x, _wgslsmith_mult_i32(~40874i, 35252i), _wgslsmith_sub_i32(~global2.x, _wgslsmith_div_i32(global4.e, global4.e))), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(52499i, global2.x, 7079i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-2147483647i, 1i)), 37715i, _wgslsmith_add_i32(global4.e, global4.e))), var_1.xzy);
    global3 = global4.d.wxx;
    return arg_1.x;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_3.d.wy, _wgslsmith_div_u32(~u_input.b.x, 1u) ^ global4.b, true, select(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.wxz + vec3<f32>(global0.x, global0.x, arg_1.x))))).c, !arg_3.d, vec4<bool>(arg_3.a.x, func_1(arg_1, global4.d), arg_2.c.x, func_3(Struct_2(arg_3.a.yx, 42571u, arg_2.d.x, arg_2.c, -12010i)))), global2.x);
    let var_1 = Struct_2(!vec2<bool>(false, func_1(_wgslsmith_f_op_vec4_f32(round(arg_1)), vec4<bool>(arg_3.c.x, arg_2.d.x, global4.a.x, global4.c))), u_input.c, true, func_4(arg_3, func_2(arg_1.yww)), global2.x);
    global0 = arg_1.wyy;
    let var_2 = -(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.e, -50121i, 10807i), vec3<i32>(global4.e, -2147483647i, -46174i)), vec3<i32>(global2.x, arg_0, 13909i) >> (vec3<u32>(u_input.c, 1u, 4294967295u) % vec3<u32>(32u))) >> (max(abs(firstLeadingBit(vec3<u32>(global4.b, global4.b, 34260u))), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(8360u, var_1.b, var_1.b)), select(vec3<u32>(790u, 830u, 25320u), vec3<u32>(0u, 1u, global4.b), var_1.c))) % vec3<u32>(32u)));
    let var_3 = select(global2.zx, firstLeadingBit(abs(vec2<i32>(-4338i, 2147483647i)) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(global4.b, var_0.b), vec2<u32>(var_0.b, 1u)) & u_input.b) % vec2<u32>(32u))), vec2<bool>(all(!select(arg_3.d, var_0.d, false)), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, -1014f)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-252f - arg_2.b)))));
    return Struct_1(!func_2(vec3<f32>(_wgslsmith_f_op_f32(global0.x - -393f), _wgslsmith_f_op_f32(-arg_3.b), -869f)).c.wzw, 1186f, select(global4.d, select(var_0.d, vec4<bool>(global3.x | false, true, any(var_0.a), arg_3.c.x), arg_2.d), 544f != arg_2.b), !(!vec4<bool>(true, true, func_1(vec4<f32>(arg_1.x, 684f, 1666f, -496f), vec4<bool>(global3.x, global4.d.x, false, global4.d.x)), arg_3.d.x)));
}

fn func_6(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    let var_0 = abs(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i >> (global4.b % 32u), select(global4.e, 2147483647i, arg_2.a.x)), _wgslsmith_sub_i32(countOneBits(global2.x), _wgslsmith_mult_i32(2147483647i, global4.e)))) != global2.x;
    global3 = vec3<bool>(all(global4.d.wy), true, arg_0.x);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, global0.x, 1749f) * vec3<f32>(global0.x, 835f, 419f))))) * vec3<f32>(global0.x, -892f, 172f)));
    var var_3 = Struct_2(vec2<bool>((15275u ^ global4.b) == 12210u, func_4(Struct_1(select(global4.d.xyz, vec3<bool>(false, var_1, true), global4.d.zwy), arg_2.b, vec4<bool>(global4.a.x, true, arg_0.x, arg_1), !vec4<bool>(true, false, var_0, arg_2.c.x)), Struct_1(func_5(global2.x, vec4<f32>(107f, arg_2.b, 139f, global0.x), Struct_1(vec3<bool>(arg_1, arg_2.d.x, arg_1), global0.x, global4.d, global4.d), Struct_1(global4.d.zxz, -900f, arg_2.c, vec4<bool>(true, var_0, false, arg_2.c.x))).c.yyw, _wgslsmith_div_f32(-325f, global0.x), !vec4<bool>(false, true, var_0, arg_0.x), vec4<bool>(false, true, var_1, false))).x), ~min(u_input.b.x, ~(global4.b << (global4.b % 32u))), reverseBits(global4.e | 1i) < (i32(-1i) * -13798i), !func_4(arg_2, func_2(vec3<f32>(697f, -1000f, 1174f))), 0i);
    return Struct_2(!(!select(arg_2.c.zw, vec2<bool>(false, true), func_5(var_3.e, vec4<f32>(-1792f, 1108f, var_2.x, var_2.x), Struct_1(vec3<bool>(global4.a.x, global4.a.x, true), 1980f, vec4<bool>(true, arg_1, var_3.d.x, global3.x), var_3.d), arg_2).c.wz)), u_input.a, false, !vec4<bool>(global4.d.x, ~(-2147483647i) != global2.x, global4.c, global3.x), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<bool>(false, true), global3.x, func_5(global4.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -1469f, 184f, 414f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-632f, global0.x, -1383f, 161f), vec4<f32>(global0.x, global0.x, -1000f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1458f, -1774f, -722f, -1353f))))), Struct_1(select(global4.d.yxx, global4.d.xyx, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1516f)), global0.x, !global3.x)), select(!vec4<bool>(global3.x, true, false, global4.a.x), !global4.d, select(global3.x, global4.c, global4.c)), !select(global4.d, vec4<bool>(global4.c, global4.a.x, true, true), global4.d)), Struct_1(vec3<bool>(any(vec3<bool>(global3.x, global4.c, false)), true, 1i > global2.x), global0.x, vec4<bool>(func_1(vec4<f32>(global0.x, -927f, -2047f, global0.x), vec4<bool>(global3.x, global4.a.x, true, false)), global3.x, all(vec4<bool>(false, true, global3.x, global4.c)), true), vec4<bool>(true, true, global3.x, global4.d.x))));
    let var_1 = vec2<u32>(1u, global4.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -730f, -1654f)))))));
    global1 = ~func_6(vec2<bool>(global4.e > 24934i, global4.a.x), func_3(Struct_2(var_0.d.wx, u_input.a, global4.c, vec4<bool>(false, global4.c, var_0.c, true), 55702i)) || true, func_5(global4.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(460f, 480f, 1480f, 1000f) * vec4<f32>(-988f, -700f, -827f, var_2.x)), func_5(-2147483647i, vec4<f32>(-2424f, global0.x, 1004f, var_2.x), Struct_1(vec3<bool>(true, false, global4.d.x), global0.x, var_0.d, vec4<bool>(false, true, true, var_0.a.x)), Struct_1(var_0.d.zxy, global0.x, vec4<bool>(global3.x, true, false, var_0.a.x), vec4<bool>(true, true, var_0.c, true))), Struct_1(var_0.d.wxw, global0.x, vec4<bool>(global4.d.x, global3.x, false, false), vec4<bool>(false, true, false, false)))).e << (~(~firstLeadingBit(0u)) % 32u);
    global2 = min(vec3<i32>(18491i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(21204i, global4.e, var_0.e), vec3<i32>(-1i, -1i, global2.x)), vec3<i32>(var_0.e, var_0.e, global2.x) ^ vec3<i32>(-1i, global2.x, global4.e)), var_0.e), ~select(abs(vec3<i32>(var_0.e, global4.e, global2.x)), vec3<i32>(-2147483647i, global4.e, -63875i) | vec3<i32>(global4.e, -1880i, var_0.e), func_6(vec2<bool>(true, false), global4.c, Struct_1(vec3<bool>(true, false, false), var_2.x, global4.d, global4.d)).d.wxz)) & _wgslsmith_clamp_vec3_i32(max(min(vec3<i32>(-8765i, global2.x, 14206i), vec3<i32>(global2.x, -74765i, 2147483647i)), vec3<i32>(var_0.e, var_0.e, var_0.e) >> (vec3<u32>(var_0.b, 4294967295u, 74880u) % vec3<u32>(32u))) << (vec3<u32>(var_0.b, firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.a), vec4<u32>(1u, 0u, global4.b, 8u))) % vec3<u32>(32u)), select(select(abs(vec3<i32>(global2.x, 36716i, 14705i)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, var_0.e, -10201i), vec3<i32>(global2.x, -44944i, 56311i)), !global4.d.xwx), ~vec3<i32>(var_0.e, -2147483647i, global2.x) | -vec3<i32>(var_0.e, -11347i, var_0.e), global3.x), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global2.x, 23009i), vec3<i32>(-3662i, var_0.e, -6642i)), firstTrailingBit(vec3<i32>(2147483647i, var_0.e, -1i))) | _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e, -63562i, global2.x), ~vec3<i32>(30376i, global4.e, global4.e)));
    let var_3 = Struct_2(func_5(global4.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_2.x, var_2.x, global0.x), vec4<f32>(-328f, 2324f, global0.x, -1133f)), vec4<f32>(-1767f, global0.x, 770f, 143f)) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -213f))), func_2(var_2), Struct_1(!func_5(global4.e, vec4<f32>(var_2.x, global0.x, var_2.x, -217f), Struct_1(vec3<bool>(global4.d.x, global3.x, var_0.c), var_2.x, vec4<bool>(var_0.d.x, global4.d.x, false, true), vec4<bool>(global4.c, false, true, true)), Struct_1(var_0.d.zxx, -1538f, vec4<bool>(global4.d.x, true, global3.x, false), vec4<bool>(global4.d.x, global3.x, global4.c, global4.d.x))).c.zzw, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(exp2(global0.x)))), vec4<bool>(true, !global3.x, true, true), vec4<bool>(select(false, global4.a.x, var_0.c), true, true, true))).a.yz, max(u_input.c, 66869u), var_0.a.x, vec4<bool>(!(!func_2(vec3<f32>(global0.x, 135f, global0.x)).d.x), -_wgslsmith_mod_i32(var_0.e, var_0.e) != 0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(abs(global0.x))) >= _wgslsmith_f_op_f32(-107f * -236f), global3.x), ~_wgslsmith_dot_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(global2.x, 26273i, 0i, global2.x))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(29344i, 27676i, global2.x, -1310i), vec4<i32>(-37152i, -33311i, 21655i, 0i))));
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u ^ var_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, 0u, 23237u), vec4<u32>(u_input.a, 46512u, 0u, 8986u))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(22247u, var_3.b), vec2<u32>(73876u, 16479u), vec2<u32>(4294967295u, var_1.x)), vec2<u32>(29385u, u_input.c) << (var_1 % vec2<u32>(32u))))) >> (_wgslsmith_clamp_vec2_u32(~var_1, firstTrailingBit(u_input.b), ~u_input.b) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_2, var_2, false)), vec3<f32>(var_2.x, global0.x, var_2.x))))))), var_0.d.wwz));
    let x = u_input.a;
    s_output = StorageBuffer(-257f, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x - 874f), var_2.x, _wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 599f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, -968f, var_2.x, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, global0.x, -1000f, var_2.x), vec4<f32>(-1014f, global0.x, global0.x, 672f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(345f, var_2.x, global0.x, -1070f) * vec4<f32>(373f, -1000f, 1204f, global0.x)))))), -vec3<i32>(select(~var_0.e, 2147483647i & var_0.e, global3.x), _wgslsmith_mult_i32(~global2.x, -1i), _wgslsmith_div_i32(global2.x, global2.x)), -919f, var_2.x);
}

