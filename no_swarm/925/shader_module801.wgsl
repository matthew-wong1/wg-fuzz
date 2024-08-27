struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 13828i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 39444i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 0i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), -70716i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), 19640i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -20875i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0i)));

var<private> global1: array<vec4<f32>, 31>;

var<private> global2: bool = false;

var<private> global3: array<i32, 15>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(arg_0.a.a, 1i);
    var var_1 = Struct_3(select(~reverseBits(vec3<u32>(31227u, u_input.a, u_input.d) >> (vec3<u32>(u_input.d, u_input.a, u_input.a) % vec3<u32>(32u))), ~vec3<u32>(u_input.d >> (u_input.c.x % 32u), ~4294967295u, 120871u), var_0.a.x), !select(var_0.a.zw, !(!vec2<bool>(var_0.a.x, true)), var_0.a.wx), -987f);
    var var_2 = u_input.b.xzy;
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.d, var_1.a.x, (u_input.a | 1u) & u_input.c.x), ~(~(~vec4<u32>(1u, u_input.c.x, 204u, 51966u))));
    global4 = (8666u >> (~(~(~var_3)) % 32u)) >> (abs(~(~var_1.a.x)) % 32u);
    return global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_3, ~abs(_wgslsmith_div_u32(var_1.a.x, u_input.c.x))), 15u)];
}

fn func_2(arg_0: u32) -> Struct_2 {
    global3 = array<i32, 15>();
    global1 = array<vec4<f32>, 31>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(810f - -438f), _wgslsmith_f_op_f32(select(1116f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-507f))))), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.yz) < select(u_input.b.x, u_input.b.x, false))), ((~arg_0 << (arg_0 % 32u)) >= max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, arg_0)))) || true));
    let var_1 = firstLeadingBit(0u);
    let var_2 = vec4<i32>(func_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(8744u, 15u)]))), u_input.e ^ _wgslsmith_clamp_i32(u_input.e, abs(~0i), ~countOneBits(-2147483647i)), abs(select(-1i, i32(-1i) * -49748i, true) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 5303u, 4294967295u), vec3<u32>(arg_0, u_input.a, 4294967295u) << (vec3<u32>(var_1, var_1, arg_0) % vec3<u32>(32u))) % 32u)), u_input.e);
    return global0[_wgslsmith_index_u32(~u_input.a ^ ~(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.d, 87131u), vec3<u32>(41002u, 4294967295u, arg_0)), ~vec3<u32>(0u, var_1, 0u))), 9u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(-select(~u_input.e, ~arg_1.a.b & -1093i, !arg_1.a.a.x), _wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_1.a.b), u_input.b.zzw), _wgslsmith_sub_i32(-6096i, arg_1.a.b))), -28401i), ~_wgslsmith_div_i32(arg_1.a.b, ~0i));
    global0 = array<Struct_2, 9>();
    global4 = arg_0.x;
    let var_1 = arg_0;
    var var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(259f))) == _wgslsmith_f_op_f32(min(1334f, _wgslsmith_f_op_f32(round(-1036f)))), !select(true, true, arg_1.a.a.x | false), arg_1.a.a.x, arg_1.a.a.x), !vec4<bool>(arg_1.a.a.x, ~var_0.x != min(var_0.x, arg_1.a.b), arg_1.a.a.x, arg_1.a.a.x), !any(func_2(~u_input.a).a.a));
    return Struct_3(~(~var_1), vec2<bool>(arg_1.a.a.x, false), _wgslsmith_div_f32(-896f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) * 838f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-133f + -532f), _wgslsmith_f_op_f32(503f + 541f), all(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, false, true))))))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    var var_0 = func_2(~0u).a.b;
    let var_1 = global1[_wgslsmith_index_u32(select(~(~50431u), ~arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(-832f, 181f))))), 31u)];
    let var_2 = Struct_1(select(select(!select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, false, true), arg_0.b.x), vec4<bool>(arg_0.b.x, func_4(arg_0.a, Struct_2(Struct_1(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), u_input.b.x))).b.x, !arg_0.b.x, !arg_0.b.x), arg_0.b.x), vec4<bool>(arg_0.b.x, any(!vec2<bool>(true, arg_0.b.x)), true, !arg_0.b.x), select(!vec4<bool>(true, arg_0.b.x, false, false), select(!vec4<bool>(arg_0.b.x, true, true, false), !vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x), func_4(vec3<u32>(0u, 5625u, u_input.c.x), Struct_2(Struct_1(vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), -1i))).b.x), vec4<bool>(true, !arg_0.b.x, true, arg_0.b.x))), arg_1);
    let var_3 = arg_0.a.yy;
    let var_4 = abs(~vec2<u32>(min(firstTrailingBit(9044u), 5221u), countOneBits(_wgslsmith_mult_u32(0u, 12281u))));
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 65627u, 4294967295u, arg_0.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.a.x, arg_0.a.x, 1u), vec4<u32>(u_input.d, 34026u, arg_0.a.x, 32618u)), abs(~vec4<u32>(35078u, u_input.a, 41566u, arg_2.a.x)))), select(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, 1u, 52260u)), vec4<u32>(1u, u_input.d, arg_0.a.x, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(38877u, u_input.c.x), ~u_input.c.x), _wgslsmith_clamp_u32(func_4(arg_0.a, global0[_wgslsmith_index_u32(0u, 9u)]).a.x, u_input.a, 61358u)), _wgslsmith_mult_vec4_u32((vec4<u32>(14511u, 68871u, 4294967295u, 52162u) | vec4<u32>(0u, 1u, arg_0.a.x, 1u)) << (~vec4<u32>(arg_2.a.x, arg_2.a.x, 13084u, arg_0.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 21261u, 163717u, 12709u) >> (vec4<u32>(arg_0.a.x, 4294967295u, 24433u, 0u) % vec4<u32>(32u)), ~vec4<u32>(1u, arg_2.a.x, 10304u, 39673u))), func_2(0u).a.a), firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2.a.x, arg_0.a.x, arg_0.a.x), ~vec4<u32>(32109u, 4294967295u, arg_0.a.x, u_input.a)))));
    global4 = var_0.x;
    let var_1 = all(select(!vec4<bool>(any(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), !arg_2.b.x, false, select(arg_2.b.x, arg_2.b.x, false)), !(!vec4<bool>(true, arg_0.b.x, arg_2.b.x, arg_0.b.x)), arg_0.b.x & true));
    let var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_f_op_f32(step(arg_2.c, arg_2.c));
    return Struct_3(arg_2.a, !(!arg_2.b), _wgslsmith_f_op_f32(abs(arg_2.c)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global4 = u_input.a;
    global3 = array<i32, 15>();
    var var_0 = func_6(func_5(func_4(vec3<u32>(u_input.a, u_input.d, 69273u) ^ abs(vec3<u32>(4294967295u, u_input.d, u_input.d)), func_2(u_input.d)), -global3[_wgslsmith_index_u32(func_4(vec3<u32>(0u, u_input.c.x, u_input.a) | vec3<u32>(38388u, u_input.a, 1u), Struct_2(Struct_1(vec4<bool>(true, true, arg_0, arg_0), 24148i))).a.x, 15u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(169f + -310f), _wgslsmith_f_op_f32(f32(-1f) * -1663f), _wgslsmith_f_op_f32(-412f - -232f), 2036f)))), Struct_3(vec3<u32>(u_input.d, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(15233u, 1u)), max(~u_input.d, 1u | u_input.d)), func_5(func_5(func_5(Struct_3(vec3<u32>(u_input.d, 40333u, 38845u), vec2<bool>(false, arg_0), -341f), -31447i), 33588i ^ u_input.b.x), -1i).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2092f + -197f)), _wgslsmith_f_op_f32(346f + _wgslsmith_f_op_f32(max(-654f, 376f))))), -(firstLeadingBit(vec2<i32>(-1i, -16879i)) ^ -vec2<i32>(global3[_wgslsmith_index_u32(56788u, 15u)], -2045i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))));
    var var_2 = arg_0;
    return func_5(func_6(Struct_3(vec3<u32>(~u_input.d, u_input.c.x, 4294967295u), var_0.b, _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(12170u, 31u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1608f, var_1, var_0.c)))))), func_6(Struct_3(vec3<u32>(var_0.a.x, var_0.a.x, u_input.a), !vec2<bool>(false, arg_0), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.c, 1218f, -624f) - global1[_wgslsmith_index_u32(77781u, 31u)]) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_3(~var_0.a, select(vec2<bool>(false, false), var_0.b, var_0.b.x), _wgslsmith_f_op_f32(-1129f - 178f)), _wgslsmith_add_vec2_i32(u_input.b.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(68062u, 15u)], global3[_wgslsmith_index_u32(6470u, 15u)]), u_input.b.xx, u_input.b.yz))), _wgslsmith_sub_vec2_i32(u_input.b.wz, -select(vec2<i32>(-62502i, 43876i), u_input.b.yx, var_0.b))), global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(17404u, 1u, u_input.c.x), vec3<u32>(var_0.a.x, 4294967295u, u_input.d)), vec3<u32>(0u, var_0.a.x, u_input.c.x))), 15u)]);
}

fn func_7(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = func_2(~arg_3.a.x).a;
    let var_1 = func_1(true).c;
    global1 = array<vec4<f32>, 31>();
    var_0 = Struct_1(!(!vec4<bool>(arg_1.x, arg_0, arg_2.x, 1i < global3[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.b.xx) ^ countOneBits(vec2<i32>(var_0.b, 53156i))), -vec2<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.e, 63697i))));
    var_0 = Struct_1(!vec4<bool>(all(vec4<bool>(false, false, false, false)), all(var_0.a), false, select(arg_3.b.x, false, true) || any(var_0.a.www)), _wgslsmith_div_i32(select(18660i, countOneBits(u_input.e & u_input.b.x), true), -u_input.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_5(arg_3, var_0.b ^ var_0.b).c), arg_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yxz;
    global1 = array<vec4<f32>, 31>();
    global0 = array<Struct_2, 9>();
    var var_1 = _wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f - 1f) - _wgslsmith_f_op_f32(func_7(-1i == u_input.e, vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), func_1(false))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_3(func_6(Struct_3(vec3<u32>(0u, u_input.d, u_input.a), vec2<bool>(false, true), -520f), global1[_wgslsmith_index_u32(u_input.c.x, 31u)], Struct_3(vec3<u32>(u_input.d, 83296u, u_input.c.x), vec2<bool>(false, true), 846f), vec2<i32>(var_0.x, 48780i)).a, func_1(false).b, _wgslsmith_f_op_f32(678f * -1000f)), ~(-var_0.x)).c - 1f));
    var_0 = -vec3<i32>(2147483647i, var_0.x, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer((func_2(func_4(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 2147483647i))).a.x).a.b | var_0.x) | firstTrailingBit(38513i), vec4<i32>(func_3(global0[_wgslsmith_index_u32(~func_6(Struct_3(vec3<u32>(u_input.d, u_input.d, 1u), vec2<bool>(true, false), 339f), vec4<f32>(-487f, -690f, -448f, 1403f), Struct_3(vec3<u32>(4294967295u, 0u, u_input.c.x), vec2<bool>(false, false), -862f), u_input.b.ww).a.x, 9u)]), -func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20683u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.c.x, 1u, u_input.a, 21722u)), 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~u_input.d), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(73519u, 31603u), vec2<u32>(4294967295u, u_input.d)), vec2<u32>(u_input.c.x, 4294967295u))), 15u)], 2147483647i), reverseBits(u_input.b.x), _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 76301u, u_input.c.x)), ~vec3<u32>(u_input.a, 0u, u_input.d)) & vec3<u32>(7292u, ~u_input.a, ~(u_input.d >> (0u % 32u))), (69002u ^ countOneBits(u_input.c.x)) & ~(~_wgslsmith_mod_u32(u_input.a, 0u)));
}

