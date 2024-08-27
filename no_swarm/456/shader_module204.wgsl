struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: vec2<u32> = vec2<u32>(47553u, 10814u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = Struct_1(select(vec4<i32>(abs(i32(-1i) * -22109i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.b), abs(global1.a.xy)), abs(firstLeadingBit(1i)), u_input.d.x), -select(vec4<i32>(-13012i, -2147483647i, u_input.a, 39751i), _wgslsmith_add_vec4_i32(global1.a, vec4<i32>(-32098i, 49934i, u_input.b, global1.a.x)), select(vec4<bool>(false, false, global1.c.x, global1.c.x), global1.b, vec4<bool>(false, true, global0.x, false))), select(select(!vec4<bool>(true, false, false, global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, true), false), vec4<bool>(global1.c.x, global1.c.x, false, false)), global1.b, vec4<bool>(global1.b.x, any(vec4<bool>(false, global1.c.x, true, global0.x)), false, true | global0.x))), !select(vec4<bool>(all(vec2<bool>(true, global0.x)), all(vec2<bool>(true, true)), global0.x, true), !global1.b, global1.a.x <= global1.a.x), !vec2<bool>(true & (global1.b.x || global1.b.x), select(global0.x, false, false) & true));
    global3 = vec2<u32>(global3.x, ~global3.x);
    var var_0 = vec4<u32>((21515u | abs(global3.x)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 4172u, 45219u) >> (vec3<u32>(79572u, global3.x, u_input.c.x) % vec3<u32>(32u)), ~vec3<u32>(27187u, u_input.c.x, 1u)) % 32u), 1u, select(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 68769u), vec3<u32>(54881u, global3.x, global3.x)), firstTrailingBit(min(vec3<u32>(global3.x, global3.x, u_input.c.x), vec3<u32>(global3.x, global3.x, u_input.c.x)))), 1u, false), u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f - _wgslsmith_f_op_f32(f32(-1f) * -2532f))))));
    var_0 = ~reverseBits(vec4<u32>(global3.x, _wgslsmith_add_u32(1u, 20058u), 37654u, firstLeadingBit(1u)));
    return ~u_input.c.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, global3.x, 1u), func_3()), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 27258u), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x & u_input.c.x))), abs(_wgslsmith_mult_vec2_u32(~(u_input.c | vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, u_input.c.x) << (u_input.c % vec2<u32>(32u)))), min(u_input.c, vec2<u32>(u_input.c.x ^ global3.x, u_input.c.x)));
    global1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.a.x, global1.a.x), vec4<i32>(global1.a.x, global1.a.x, -14118i, 1i)), max(abs(0i), firstLeadingBit(-5438i))), abs(global1.a.x), _wgslsmith_add_i32(global1.a.x, ~(u_input.b | 2337i)), ~83276i), vec4<bool>(true, !global1.b.x, ~u_input.c.x > _wgslsmith_sub_u32(33100u ^ global3.x, 56079u), _wgslsmith_mod_u32(1u, global3.x) > (~var_0.x ^ global3.x)), !global0.wy);
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -u_input.d.x | -1i, 1i)), vec3<i32>(-2147483647i, select(_wgslsmith_sub_i32(-23143i ^ u_input.b, global1.a.x | 20832i), ~abs(u_input.d.x), all(select(vec2<bool>(true, global1.c.x), vec2<bool>(global1.b.x, global0.x), global1.b.zy))), ~u_input.b));
    var_0 = u_input.c;
    var var_2 = !global1.c;
    return _wgslsmith_add_u32(global3.x, 60727u);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global3 = ~vec2<u32>(u_input.c.x, 0u);
    let var_0 = 13485u;
    global0 = global1.b;
    var var_1 = _wgslsmith_add_u32(u_input.c.x, var_0);
    global2 = func_2();
    return select(!global0.wx, arg_0.b.zw, select(arg_0.c, vec2<bool>(any(arg_0.b.yy) || (global0.x | true), global1.b.x), select(true, !any(vec2<bool>(arg_0.c.x, arg_0.c.x)), global0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(!(global1.b.x && any(select(vec2<bool>(global0.x, true), vec2<bool>(true, arg_0.b.x), global1.c))), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2198f - _wgslsmith_f_op_f32(-1f)) * arg_3.x));
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1.a.x, arg_0.a.x, -13181i)), arg_0.a.xwz), u_input.d.x, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.a.x, -18410i, u_input.b), min(-1i, -4491i))), _wgslsmith_dot_vec2_i32(firstLeadingBit(-arg_2.a.zy), vec2<i32>(24237i & u_input.a, 48596i))), !(!(!select(vec4<bool>(global1.b.x, arg_2.b.x, global0.x, true), global1.b, vec4<bool>(global0.x, false, true, true)))), var_0);
    var var_3 = u_input.d.x;
    var var_4 = Struct_1(vec4<i32>(u_input.a, global1.a.x, -2147483647i, u_input.b), !vec4<bool>(any(!vec4<bool>(var_0.x, global1.b.x, false, true)), true, select(!var_2.b.x, global1.c.x, arg_0.c.x || global0.x), false), !(!global0.wy));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(any(global1.b.zzx), !global1.c.x, true));
    let var_1 = Struct_1(global1.a, global1.b, !select(global1.b.wz, !global0.zx, true));
    global1 = func_4(Struct_1(var_1.a, select(vec4<bool>(global0.x, !global1.b.x, !global1.b.x, true), var_1.b, !var_1.b), func_1(Struct_1(global1.a, !vec4<bool>(global0.x, global1.b.x, var_1.b.x, global1.b.x), vec2<bool>(global0.x, global1.c.x)))), ~1u, Struct_1(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, u_input.d.x, 8914i, -27941i), vec4<i32>(-33731i, var_1.a.x, global1.a.x, global1.a.x))), vec4<i32>(max(-35226i, var_1.a.x), firstTrailingBit(u_input.d.x), 39143i, ~(-2147483647i))), !(!var_1.b), global0.ww), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1425f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -520f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(-1004f - 267f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(925f, 403f, 120f, -1000f) * vec4<f32>(1619f, 1407f, 256f, -188f))))))));
    var var_2 = _wgslsmith_clamp_i32(-25416i, -55292i, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-30434i, var_1.a.x)), firstLeadingBit(firstTrailingBit(vec2<i32>(-16952i, var_1.a.x) ^ vec2<i32>(global1.a.x, -54315i)))));
    var var_3 = ~(~(~(vec4<u32>(u_input.c.x, global3.x, 5032u, u_input.c.x) << (vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u) % vec4<u32>(32u))))) | ~vec4<u32>(4294967295u, 62432u, 75730u, 15679u);
    let var_4 = func_4(Struct_1(-vec4<i32>(var_1.a.x, -1i, 1i, -14744i), !func_4(var_1, ~4294967295u, Struct_1(var_1.a, vec4<bool>(var_1.b.x, false, true, var_0), vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(365f, 1013f, -1878f, -1405f) * vec4<f32>(-473f, -938f, 733f, 1129f))).b, global1.c), ~var_3.x, func_4(func_4(Struct_1(vec4<i32>(1i, u_input.d.x, u_input.a, u_input.d.x), var_1.b, !global1.b.wy), 47881u, var_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, 148f, -1143f, 791f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(177f, 605f, -502f, -641f) - vec4<f32>(-1000f, -711f, -233f, 336f))))), 4294967295u, func_4(Struct_1(var_1.a, select(vec4<bool>(true, var_0, false, false), vec4<bool>(var_1.c.x, var_1.c.x, true, false), global1.b.x), !vec2<bool>(global1.b.x, var_1.c.x)), var_3.x, func_4(var_1, _wgslsmith_sub_u32(u_input.c.x, 1u), Struct_1(global1.a, var_1.b, global0.yy), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1192f, -497f, 368f, 148f), vec4<f32>(-482f, 1000f, 862f, -1336f), false))), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1032f - 1515f) * _wgslsmith_f_op_f32(sign(1047f))), 1405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1694f * 880f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(710f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1480f, 447f)), _wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(f32(-1f) * -1573f), -685f)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1166f - 1301f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f) - _wgslsmith_f_op_f32(floor(-116f))), _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(select(-299f, 611f, true))), 651f)))).b;
    global0 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.b));
}

