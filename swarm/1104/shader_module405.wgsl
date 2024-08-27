struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-1551f, -1647f, -309f, -998f), 54824i, -2245f), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-388f, -513f, 1223f, 101f), 1i, -1000f), vec2<i32>(i32(-2147483648), -7010i), vec4<u32>(25588u, 43614u, 43895u, 3975u), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(575f, 480f, 1000f, -3577f), 0i, 133f), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(1334f, 745f, -852f, -308f), 44274i, -1000f), vec2<i32>(11623i, -10500i), vec4<u32>(48635u, 102367u, 12015u, 1u), 4294967295u), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(418f, -1755f, -410f, -1503f), 44188i, -1000f), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(2118f, 1709f, 351f, 578f), 34399i, 2250f), vec2<i32>(18225i, -1i), vec4<u32>(30040u, 9380u, 40455u, 0u), 6256u), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(1386f, -981f, -504f, -735f), -2383i, -1171f), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(1160f, 295f, 368f, -745f), -55483i, -1370f), vec2<i32>(-32204i, i32(-2147483648)), vec4<u32>(57076u, 4294967295u, 5877u, 13306u), 1u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1280f, 1040f, 1000f, 288f), 0i, 728f), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(736f, 1533f, -1000f, 268f), 52367i, -1563f), vec2<i32>(13463i, -1i), vec4<u32>(13868u, 1u, 1u, 38125u), 0u), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(1000f, 157f, -425f, -638f), 66256i, 948f), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(282f, -361f, 149f, 580f), 30138i, 324f), vec2<i32>(41872i, i32(-2147483648)), vec4<u32>(4294967295u, 19628u, 4294967295u, 43562u), 4294967295u), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(908f, 191f, -172f, -348f), 37521i, -1620f), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(357f, 1514f, -1298f, 283f), 41668i, 298f), vec2<i32>(2147483647i, -39738i), vec4<u32>(50937u, 754u, 4294967295u, 4294967295u), 34371u));

var<private> global1: Struct_1;

var<private> global2: array<u32, 14>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = 0i;
    let var_1 = !select(arg_1.b.a.wy, select(select(vec2<bool>(true, false), select(arg_0.a.a.yy, global1.a.zy, vec2<bool>(false, global1.a.x)), arg_0.b.a.xz), arg_0.b.a.yw, select(!arg_0.a.a.zz, arg_1.b.a.xw, global1.a.xx)), select(vec2<bool>(true, true), select(global1.a.wz, !arg_0.b.a.yy, true), select(!arg_1.b.a.x, arg_0.b.a.x, true)));
    global0 = array<Struct_2, 7>();
    let var_2 = 1u;
    var var_3 = arg_1.b;
    return vec4<bool>(!var_1.x, arg_0.b.a.x, false, any(!(!select(arg_1.b.a, var_3.a, arg_1.b.a))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = max(~4294967295u, 1u);
    global1 = Struct_1(func_3(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, global1.d, global1.b.x, global1.d)), global1.b, arg_1.x & true)), Struct_1(select(arg_1, vec4<bool>(false, global1.a.x, false, false), arg_1.x), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(global1.d, global1.d, global1.d, -297f)), ~(-2147483647i), _wgslsmith_div_f32(global1.b.x, 1000f))), firstLeadingBit(-13330i), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -2797i, 32312i), abs(vec3<i32>(global1.c, u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.b.x, -728f, -161f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, global1.b.x, global1.d, 1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global1.b)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.b, global1.b))))), -17399i, _wgslsmith_f_op_f32(-global1.d));
    let var_1 = false;
    let var_2 = ~select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global1.c, -54436i), vec4<i32>(u_input.b, global1.c, -41166i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(global1.c, u_input.b))), vec2<i32>(-17228i, (i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(u_input.c.yzw, vec3<u32>(1u, 2078u, var_0)) % 32u)), abs(abs(global2[_wgslsmith_index_u32(u_input.d, 14u)])) < ~firstLeadingBit(4294967295u));
    global1 = Struct_1(vec4<bool>(false, !(!arg_1.x), all(global1.a.yww), arg_0), global1.b, 0i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-363f - global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, -1099f))))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, min(0u, 26445u)), 7u)];
}

fn func_4(arg_0: Struct_3) -> f32 {
    global1 = func_2(true | any(vec2<bool>(all(vec4<bool>(false, false, global1.a.x, false)), arg_0.a)), !vec4<bool>(global1.a.x, countOneBits(u_input.b) > (arg_0.b.x | -78015i), !arg_0.a, func_2(false, vec4<bool>(false, true, false, arg_0.a)).b.a.x)).b;
    var var_0 = any(select(arg_0.c.a.a.zw, !vec2<bool>(!global1.a.x, true), true));
    var var_1 = vec2<bool>(all(!select(vec2<bool>(false, arg_0.c.b.a.x), func_2(arg_0.a, vec4<bool>(false, true, global1.a.x, global1.a.x)).b.a.yw, !vec2<bool>(false, arg_0.d.b.a.x))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, global2[_wgslsmith_index_u32(1u, 14u)], 12550u), arg_0.c.d), 29368u), ~(37771u ^ arg_0.d.e)) >= _wgslsmith_add_u32(~4294967295u, abs(global2[_wgslsmith_index_u32(56721u, 14u)]) << (firstTrailingBit(0u) % 32u)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(-640f + _wgslsmith_f_op_f32(-583f * global1.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.d.a.d))))), arg_0.d.a);
    var var_3 = -415f;
    return _wgslsmith_f_op_f32(floor(-470f));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_5 {
    global0 = array<Struct_2, 7>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1066f)))) * -1513f), _wgslsmith_f_op_f32(func_4(Struct_3(true, vec4<i32>(u_input.b, 73357i, -2147483647i, 33964i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, u_input.d, 1u), 7u)], func_2(arg_0.x, global1.a), !arg_0.yz)))), 666f);
    var var_1 = vec4<u32>(~u_input.d, 16976u, firstLeadingBit(1u), 28785u);
    global1 = Struct_1(vec4<bool>(true, select(true, func_2(true, vec4<bool>(arg_0.x, global1.a.x, true, global1.a.x)).b.a.x, global1.c == -u_input.b), global1.d < -633f, arg_1.x > (~4294967295u >> (1u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.d, var_0.x, 975f, 168f), global1.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, -973f, 1644f, -1000f), arg_2))), arg_0)), arg_2), 48206i, _wgslsmith_f_op_f32(abs(-835f)));
    global2 = array<u32, 14>();
    return Struct_5(global1.a.x, Struct_3(all(!(!global1.a.xy)), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(u_input.b, u_input.b, global1.c)), ~u_input.b, abs(-2147483647i), u_input.b), Struct_2(Struct_1(func_3(global0[_wgslsmith_index_u32(4294967295u, 7u)], Struct_4(vec4<f32>(var_0.x, var_0.x, -1345f, arg_3), Struct_1(arg_0, arg_2, 1i, arg_3)), 1837i, vec3<i32>(global1.c, 2147483647i, -46056i)), vec4<f32>(arg_2.x, 590f, arg_2.x, arg_3), ~u_input.b, var_0.x), func_2(0i < global1.c, !global1.a).b, -countOneBits(vec2<i32>(u_input.b, -2147483647i)), u_input.c, reverseBits(0u >> (u_input.d % 32u))), global0[_wgslsmith_index_u32(428u, 7u)], select(select(select(arg_0.yw, arg_0.yx, false), vec2<bool>(false, false), true), arg_0.wy, true)), 1u, arg_2.x, all(!vec2<bool>(true, global1.a.x || true)));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    let var_0 = arg_0.b.b.x;
    let var_1 = ~arg_0.b.d.c;
    var var_2 = arg_0.b.c.a;
    global1 = func_1(vec4<bool>(!(false | global1.a.x) != global1.a.x, false, select(_wgslsmith_f_op_f32(arg_0.d + arg_0.b.d.b.b.x) <= _wgslsmith_f_op_f32(abs(1344f)), !(arg_1.x == arg_0.b.c.b.a.x), all(select(arg_0.b.e, arg_0.b.e, arg_0.a))), !arg_1.x), u_input.c, _wgslsmith_div_vec4_f32(vec4<f32>(-537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2120f))), _wgslsmith_f_op_f32(min(global1.d, _wgslsmith_f_op_f32(-arg_0.d))), 1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, 577f, -1107f, global1.d)), global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, 147f, -2043f, arg_0.d)), false))), _wgslsmith_f_op_f32(global1.d + var_2.b.x)).b.d.b;
    return arg_0.b.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(~(-2147483647i), ~global1.c) >> ((~1u >> (~(~global2[_wgslsmith_index_u32(1u, 14u)] ^ u_input.a) % 32u)) % 32u);
    global1 = func_5(func_1(vec4<bool>(_wgslsmith_mult_i32(global1.c, global1.c) == u_input.b, global1.a.x, true, !(global2[_wgslsmith_index_u32(u_input.c.x, 14u)] <= 10374u)), _wgslsmith_mod_vec4_u32(countOneBits(u_input.c), ~(u_input.c | vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(4294967295u, 14u)], 1u, 1u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-389f + -192f), _wgslsmith_f_op_f32(global1.d + global1.b.x), _wgslsmith_f_op_f32(ceil(1285f)), -452f) * global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), global1.b.x)), func_2(global1.a.x, !global1.a).b.a);
    global2 = array<u32, 14>();
    var var_1 = -select(~((vec3<i32>(global1.c, 34699i, u_input.b) ^ vec3<i32>(u_input.b, var_0, -19921i)) | _wgslsmith_div_vec3_i32(vec3<i32>(global1.c, -63100i, u_input.b), vec3<i32>(global1.c, -1i, -2147483647i))), _wgslsmith_mod_vec3_i32(~max(vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(var_0, -2858i, -1i)), func_1(global1.a, u_input.c, vec4<f32>(global1.b.x, 107f, -1000f, -220f), _wgslsmith_f_op_f32(-global1.b.x)).b.b.wzy), func_1(vec4<bool>(global1.a.x, global1.a.x | global1.a.x, true, global1.a.x), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(962f, 268f, global1.b.x, -1154f) + vec4<f32>(global1.d, 1000f, global1.d, global1.d)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.x, 1177f, 854f, 352f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) + func_2(global1.a.x, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)).b.d)).e);
    global0 = array<Struct_2, 7>();
    let var_2 = !global1.a.x || (true != (true & all(global1.a.xzx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(1u, u_input.c.x)), max(66310u, u_input.d)), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 14u)]) >> (3101u % 32u), 14u)], ~20795u), (u_input.b << (_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(22088u, 14u)], 34570u) % 32u)) & var_1.x, global1.c);
}

