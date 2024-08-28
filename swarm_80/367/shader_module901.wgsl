struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> bool {
    global0 = arg_0;
    global0 = Struct_1(max(-max(min(arg_0.a, arg_0.a), ~vec4<i32>(-2147483647i, 20417i, 10308i, 1i)), global0.a >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    global0 = arg_0;
    global0 = Struct_1(~vec4<i32>(~56350i, u_input.a.x, -abs(global0.a.x), -16674i));
    var var_0 = ~(-51892i);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = !(!select(vec3<bool>(arg_0, arg_1.x < 31320u, false), !(!vec3<bool>(true, true, arg_0)), vec3<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), false, arg_0)));
    let var_1 = Struct_2(Struct_1(-global0.a | global0.a));
    global0 = Struct_1(abs(~var_1.a.a));
    var var_2 = !select(true, !(!(!var_0.x)), arg_0);
    let var_3 = Struct_3(Struct_2(Struct_1(max(countOneBits(vec4<i32>(var_1.a.a.x, global0.a.x, -1834i, u_input.a.x)), ~vec4<i32>(u_input.a.x, global0.a.x, var_1.a.a.x, global0.a.x)))), Struct_2(var_1.a), select(vec3<bool>(all(vec3<bool>(arg_0, false, true)), func_3(Struct_1(vec4<i32>(global0.a.x, -19219i, var_1.a.a.x, -14862i)), vec4<f32>(arg_2, 248f, arg_2, arg_2), -701f) && true, var_0.x), var_0, select(false, any(var_0.xy), arg_0)));
    return Struct_1(vec4<i32>(-var_1.a.a.x, var_1.a.a.x, firstTrailingBit(u_input.a.x), -min(0i, _wgslsmith_mod_i32(var_1.a.a.x, global0.a.x))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_2(true, ~min(vec4<u32>(arg_0, 41997u, 35269u, arg_0), vec4<u32>(1u, arg_0, 3543u, arg_0)), 199f)), Struct_2(func_2(select(false, true, true), vec4<u32>(1u, 51598u, ~arg_0, arg_0), _wgslsmith_f_op_f32(-1933f * -416f))), select(vec3<bool>(true, false, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), any(vec2<bool>(true, true))));
    var var_1 = Struct_1(vec4<i32>(global0.a.x, -22204i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(-27120i, 1i, -36276i) ^ abs(-19589i)), global0.a.x));
    var var_2 = Struct_3(var_0.b, var_0.a, select(vec3<bool>(any(var_0.c), true || !var_0.c.x, any(!vec3<bool>(var_0.c.x, var_0.c.x, false))), !select(vec3<bool>(true, true, true), var_0.c, !var_0.c.x), !vec3<bool>(all(vec3<bool>(false, false, var_0.c.x)), var_0.c.x, var_0.c.x)));
    let var_3 = Struct_2(var_2.a.a);
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(step(-1718f, _wgslsmith_f_op_f32(-479f + -215f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f - -1000f) * _wgslsmith_div_f32(333f, 1212f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-300f, 456f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(636f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(151f, 1337f)), _wgslsmith_f_op_f32(f32(-1f) * -621f))), 1f), -340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1259f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1806f - 371f)))))));
    return func_2(true, countOneBits(abs(~(~vec4<u32>(arg_0, 71343u, 81090u, 16143u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_4.x)), _wgslsmith_f_op_f32(-var_4.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f - 562f) * -1277f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-878f * var_4.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    global0 = arg_2;
    global0 = Struct_1(global0.a);
    let var_0 = ~firstLeadingBit(~min(vec4<u32>(1u, 5930u, 21366u, 0u), vec4<u32>(1u, 36804u, 0u, 37121u)));
    global0 = arg_0;
    var var_1 = Struct_3(Struct_2(func_1(var_0.x)), Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(arg_0.a ^ vec4<i32>(u_input.a.x, u_input.a.x, -9740i, 2147483647i), _wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(arg_2.a.x, -1i, 2147483647i, u_input.a.x)), arg_0.a))), vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))) & true, false, false));
    return Struct_3(var_1.b, var_1.b, select(!var_1.c, var_1.c, var_1.c.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0.a.a;
    let var_1 = func_2(true, reverseBits(~(~(~vec4<u32>(4294967295u, 4294967295u, 15585u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f + -1431f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -687f, true)) + _wgslsmith_f_op_f32(max(518f, -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f * _wgslsmith_f_op_f32(max(855f, 1091f))))));
    let var_2 = select(select(vec4<bool>(arg_1, true, !select(arg_0.c.x, arg_0.c.x, arg_0.c.x), true), !vec4<bool>(any(arg_0.c.xx), all(vec4<bool>(false, true, arg_0.c.x, arg_0.c.x)), !arg_1, arg_1), vec4<bool>(arg_1, func_3(arg_0.b.a, vec4<f32>(2161f, -758f, 397f, 288f), 1182f) != func_3(var_1, vec4<f32>(-1268f, 392f, 1216f, 1000f), 1129f), true, all(arg_0.c))), select(select(vec4<bool>(arg_1, all(vec4<bool>(false, false, arg_1, arg_1)), true, !arg_0.c.x), vec4<bool>(true, any(arg_0.c), !arg_1, true), !vec4<bool>(true, false, arg_0.c.x, arg_1)), vec4<bool>(select(false, true, all(vec4<bool>(true, arg_0.c.x, true, false))), select(!arg_0.c.x, arg_0.c.x, arg_1), true, false), func_3(func_4(Struct_1(vec4<i32>(var_1.a.x, u_input.a.x, var_0.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(2291i, u_input.a.x, var_1.a.x), arg_0.a.a.a.zyx), func_1(27614u)).a.a, vec4<f32>(_wgslsmith_div_f32(-303f, 1615f), _wgslsmith_f_op_f32(-1000f - 368f), _wgslsmith_f_op_f32(-252f + -665f), _wgslsmith_f_op_f32(min(247f, 335f))), _wgslsmith_f_op_f32(f32(-1f) * -1331f))), true);
    global0 = func_4(Struct_1(_wgslsmith_clamp_vec4_i32(var_0.a & global0.a, firstTrailingBit(var_0.a), var_1.a) >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), -global0.a.wzx, func_1(~(~_wgslsmith_mod_u32(4294967295u, 11680u)))).a.a;
    var_0 = var_1;
    return func_4(var_1, _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(global0.a.xww, vec3<i32>(-9482i, u_input.a.x, 1i)), (vec3<i32>(arg_0.a.a.a.x, 0i, global0.a.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 48107u), vec3<u32>(1u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) | ~(-arg_0.b.a.a.wwx)), func_2(true, vec4<u32>(_wgslsmith_clamp_u32(~71987u, max(92712u, 4294967295u), ~24208u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 14956u, 4294967295u), ~vec3<u32>(104134u, 37608u, 4294967295u)), abs(18599u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-998f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -959f)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(func_4(func_1(abs(44127u)), global0.a.wwy, func_2(-23857i > global0.a.x, ~vec4<u32>(7959u, 54442u, 53678u, 46899u), -142f)), false), func_5(func_4(Struct_1(select(vec4<i32>(u_input.a.x, -3876i, -2147483647i, 37648i), global0.a, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, 1i), global0.a.yxz), Struct_1(-vec4<i32>(global0.a.x, global0.a.x, 7621i, u_input.a.x))), (any(vec3<bool>(false, true, true)) || true) || true), vec3<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), abs(u_input.a.x) <= -2147483647i, any(func_4(Struct_1(global0.a), global0.a.xzy, Struct_1(vec4<i32>(-2147483647i, global0.a.x, global0.a.x, -12380i))).c.zy) || !func_4(Struct_1(vec4<i32>(1i, u_input.a.x, global0.a.x, -2147483647i)), global0.a.zzx, Struct_1(global0.a)).c.x));
    global0 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_i32(func_5(Struct_3(Struct_2(Struct_1(global0.a)), var_0.a, var_0.c), true).a.a.x, 184i), firstLeadingBit(func_1(4294967295u).a.x)) << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(3675u, 1u, 25821u, 0u), vec4<u32>(1u, 9721u, 4294967295u, 1u)) >> (_wgslsmith_mod_u32(7038u, 4294967295u) % 32u)) % 32u), global0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(35678u, 33379u, 1u), vec3<u32>(4294967295u, 60767u, 1u)) & ~4294967295u, ~_wgslsmith_mod_u32(15903u, 19868u), 20024u, 1u), reverseBits(~vec4<u32>(4294967295u, 13189u, 47388u, 0u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(31341u, 0u, 35430u, 41127u), vec4<u32>(1u, 52266u, 0u, 4294967295u)), var_0.c.x), ~max(vec4<u32>(8084u, 0u, 5377u, 1u), vec4<u32>(4294967295u, 1u, 42214u, 5814u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f - -1001f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-693f, -792f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(358f + 287f)) - _wgslsmith_f_op_f32(select(867f, -1000f, true))), _wgslsmith_f_op_f32(-1f), -2478f));
}

