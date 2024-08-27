struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(582f, -2059f, 1715f), vec3<i32>(i32(-2147483648), i32(-2147483648), 12181i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(-323f, -859f, -570f), vec3<i32>(19927i, -1i, 2147483647i), vec2<u32>(4717u, 1u)), Struct_1(vec3<f32>(-162f, -299f, 1984f), vec3<i32>(2147483647i, -26339i, 23289i), vec2<u32>(82123u, 4294967295u)), Struct_1(vec3<f32>(1732f, 1413f, -1000f), vec3<i32>(-12132i, 15166i, 1i), vec2<u32>(60785u, 65538u)), Struct_1(vec3<f32>(879f, -1740f, -638f), vec3<i32>(-20003i, 0i, -30305i), vec2<u32>(4294967295u, 18885u)), Struct_1(vec3<f32>(866f, 301f, 1973f), vec3<i32>(3068i, 2147483647i, i32(-2147483648)), vec2<u32>(45686u, 4294967295u)), Struct_1(vec3<f32>(-150f, -881f, 407f), vec3<i32>(11897i, 2309i, i32(-2147483648)), vec2<u32>(26572u, 36831u)), Struct_1(vec3<f32>(597f, -347f, 1000f), vec3<i32>(-43961i, 0i, 40424i), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(-188f, -191f, -702f), vec3<i32>(-1i, -34541i, 1i), vec2<u32>(1u, 56729u)));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true));

var<private> global3: vec2<bool>;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<bool> {
    global0 = vec3<bool>(!(false && all(select(vec4<bool>(global2.a.x, global2.a.x, true, true), vec4<bool>(false, global3.x, global2.a.x, true), global2.a.x))), false, global3.x);
    global3 = select(!(!select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), global0.x), global0.yx, vec2<bool>(true, true))), global0.yy, select(!global2.a.yz, select(!select(global2.a.yz, global0.xz, global0.xy), global0.yx, any(vec2<bool>(global3.x, false)) & true), vec2<bool>(false, global3.x)));
    var var_0 = global2.a.x;
    global2 = Struct_2(select(vec3<bool>(true, select(!global3.x, global0.x & false, global0.x && global0.x), false), !global2.a, global3.x));
    return select(!(!(!select(vec3<bool>(false, global0.x, true), global2.a, false))), select(!select(global2.a, vec3<bool>(global2.a.x, true, false), vec3<bool>(global3.x, global0.x, global3.x)), global2.a, vec3<bool>(any(!global2.a.zx), global2.a.x, _wgslsmith_f_op_f32(sign(483f)) > _wgslsmith_f_op_f32(f32(-1f) * -1828f))), vec3<bool>(any(!vec3<bool>(true, global0.x, global2.a.x)), global3.x, !(17856i == u_input.a.x) | true));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = !(!vec2<bool>(false, global0.x));
    var var_2 = Struct_2(select(global2.a, global2.a, !global2.a.x));
    let var_3 = ~vec2<u32>(16608u ^ _wgslsmith_clamp_u32(reverseBits(1u), 0u, abs(4294967295u)), firstLeadingBit(_wgslsmith_mod_u32(1u, 1u)));
    var_2 = Struct_2(select(select(vec3<bool>(true, true, true), var_2.a, var_2.a), vec3<bool>(var_1.x, global3.x & true, any(select(vec4<bool>(global2.a.x, true, false, global3.x), vec4<bool>(global2.a.x, false, var_1.x, true), vec4<bool>(var_2.a.x, true, var_2.a.x, true)))), !select(func_3(), vec3<bool>(global2.a.x, global0.x, var_2.a.x), select(global2.a, global2.a, vec3<bool>(global3.x, global2.a.x, true)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(select(1852f, -622f, true)), select(false, global2.a.x, true))), -1097f, _wgslsmith_f_op_f32(floor(822f)) >= _wgslsmith_f_op_f32(-1000f + -659f))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-850f, arg_0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(145f, -316f)), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), 2307f), ~vec3<i32>(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), u_input.a.x, ~1i), ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 3697u), vec2<u32>(10359u, 33221u)))));
    global3 = !select(global2.a.yy, select(vec2<bool>(all(vec2<bool>(true, true)), true), !global2.a.xz, true), global2.a.xy);
    var var_1 = Struct_1(vec3<f32>(405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.a.x)), arg_0.x))), 1f), var_0.b, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c.x & var_0.c.x, var_0.c.x), var_0.c.x), var_0.c.x & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 1u, var_0.c.x), vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)))));
    global1 = array<Struct_1, 9>();
    global0 = global2.a;
    return Struct_2(select(vec3<bool>(true, all(select(vec4<bool>(true, global3.x, global3.x, global0.x), vec4<bool>(global0.x, global0.x, global3.x, global2.a.x), false)), any(!vec3<bool>(true, global2.a.x, global3.x))), !global2.a, select(~var_1.c.x, var_0.c.x, global0.x & false) > 1u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-990f + 894f), _wgslsmith_div_f32(307f, arg_0.a.x))), 1935f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - 370f), _wgslsmith_f_op_f32(f32(-1f) * -997f))))));
    global0 = !global2.a;
    var var_1 = vec4<bool>(!any(!global2.a), var_0.a.x || (!(!var_0.a.x) || !var_0.a.x), var_0.a.x, global2.a.x);
    global0 = select(vec3<bool>(func_3().x, any(global0.xz), true), vec3<bool>(!(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) != arg_0.a.x), arg_1.a.x, !all(func_4(arg_0.a).a.yx)), !(!(!var_1.xzz)));
    global1 = array<Struct_1, 9>();
    return Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-331f))), !func_4(vec3<f32>(-743f, -2447f, arg_0.a.x)).a.x | ((var_0.a.x && true) & (arg_1.a.x | global2.a.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(~(~(-vec4<i32>(-14930i, u_input.a.x, 1087i, -71771i))), _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3954i, -9198i, 0i, 0i), vec4<i32>(u_input.a.x, -28099i, u_input.a.x, 13736i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)), vec4<i32>(-24706i, u_input.a.x, 49317i, u_input.a.x)), select(~(vec4<i32>(-22731i, -17051i, -55770i, 62144i) | vec4<i32>(u_input.a.x, -1i, 1i, 1i)), ~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(any(vec4<bool>(true, global0.x, true, global2.a.x)), !global3.x, false, any(global2.a)))));
    let var_1 = Struct_2(!global2.a);
    let var_2 = _wgslsmith_sub_u32(~21869u, ~(~9460u));
    let var_3 = u_input.a.x;
    global2 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2394f, 802f, 1727f), vec3<f32>(550f, -2614f, -1000f))))), var_0.xxy, ~abs(vec2<u32>(0u, var_2) >> (vec2<u32>(var_2, 59958u) % vec2<u32>(32u)))), var_1, -11270i, abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_2, var_2) & vec3<u32>(87542u, 0u, var_2), vec3<u32>(0u, 71608u, 97151u) << (vec3<u32>(0u, var_2, 0u) % vec3<u32>(32u)))));
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.a.x, -min(var_0.x, 2147483647i)), u_input.a.x, 1i) << (_wgslsmith_sub_u32(~abs(var_2), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, var_2)), countOneBits(vec2<u32>(1u, var_2)) | max(vec2<u32>(1u, 35402u), vec2<u32>(var_2, 18252u)))) % 32u);
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_2 | ~_wgslsmith_div_u32(var_2, var_2), (firstTrailingBit(30572u) | ~var_2) ^ var_2), 0u | abs(var_2)), 9u)];
    let var_6 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_5.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.c.x, var_2, 1u), vec3<u32>(22577u, var_5.c.x, 35155u), vec3<u32>(18298u, var_2, var_5.c.x))) & vec3<u32>(firstTrailingBit(var_2) >> (var_2 % 32u), reverseBits(1u), _wgslsmith_add_u32(abs(0u), var_2 >> (13002u % 32u))));
}

