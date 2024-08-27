struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec3<bool> {
    var var_0 = arg_0.d;
    let var_1 = select(!vec4<bool>(false, arg_0.a, true, true), !select(!vec4<bool>(arg_2, arg_0.a, arg_2, arg_2), select(select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(false, true, arg_2, arg_0.a), false), vec4<bool>(arg_2, arg_0.a, true, false), false), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.c.x))))) != arg_0.c.x);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.b, _wgslsmith_clamp_u32(var_2.e.x, 18180u, 0u), max(arg_0.b, 18304u))), vec3<u32>(arg_0.e.x, firstLeadingBit(7315u), arg_1));
    let var_4 = vec2<i32>(-1i >> (var_3 % 32u), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-14658i, -1i, u_input.a), vec3<i32>(2147483647i, 29273i, u_input.b), true), vec3<i32>(u_input.a << (var_3 % 32u), u_input.c.x, u_input.a | -16786i))) >> (reverseBits(_wgslsmith_clamp_vec2_u32(select(~arg_0.e.xy, ~arg_0.e.xz, var_1.xw), arg_0.e.wy, vec2<u32>(4294967295u << (var_3 % 32u), var_3 ^ 31993u))) % vec2<u32>(32u));
    return var_1.wzy;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = 37104i;
    let var_1 = func_3(arg_2, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1614f, -754f) - 1539f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.c.x), arg_2.d)), arg_2.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(trunc(arg_2.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.yw) - vec2<f32>(arg_2.c.x, arg_2.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.d, _wgslsmith_f_op_f32(round(arg_2.d)), all(vec4<bool>(var_1.x, arg_2.a, var_1.x, arg_1)))), _wgslsmith_f_op_f32(abs(arg_2.d)))));
    var var_3 = var_1;
    let var_4 = -vec2<i32>(var_0, 2147483647i);
    return select(vec3<bool>(true, all(vec3<bool>(arg_2.b < 27109u, any(var_1), !arg_2.a)), any(select(select(vec4<bool>(true, false, arg_1, var_3.x), vec4<bool>(var_3.x, false, false, false), true), vec4<bool>(true, false, true, false), var_1.x | var_1.x))), !vec3<bool>(var_1.x, var_3.x & var_1.x, var_0 < _wgslsmith_add_i32(4210i, 0i)), func_3(arg_2, 4294967295u << ((arg_2.e.x >> (firstTrailingBit(arg_2.b) % 32u)) % 32u), all(func_3(Struct_1(false, arg_2.e.x, vec4<f32>(var_2.x, arg_2.c.x, 2199f, arg_2.c.x), -1356f, arg_2.e), arg_2.e.x, true).yz)));
}

fn func_1() -> Struct_1 {
    var var_0 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), func_2(-2147483647i, false, Struct_1(true, 10893u, vec4<f32>(1477f, 1323f, 261f, 1462f), 219f, vec4<u32>(9937u, 0u, 29011u, 33552u))), true), select(func_3(Struct_1(false, 0u, vec4<f32>(-371f, -1400f, 1363f, 540f), 2666f, vec4<u32>(20020u, 5510u, 33206u, 4294967295u)), 4294967295u, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    let var_1 = true;
    var_0 = vec3<bool>(var_0.x, var_1, func_3(Struct_1(false, ~_wgslsmith_dot_vec3_u32(vec3<u32>(77484u, 28384u, 1216u), vec3<u32>(102378u, 24352u, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -514f, -1136f, 804f))), 1690f, vec4<u32>(0u, ~57341u, _wgslsmith_mod_u32(0u, 1336u), abs(67846u))), ~0u, !(reverseBits(0u) <= firstTrailingBit(4294967295u))).x);
    var var_2 = Struct_1(var_1, ~0u, vec4<f32>(-1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1385f + -890f) * _wgslsmith_f_op_f32(f32(-1f) * -245f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) - 1f)), _wgslsmith_f_op_f32(floor(-244f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-603f, -1240f)))))) + 872f), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(41682u, 22545u), vec2<u32>(0u, 1u))), _wgslsmith_mod_u32(max(23305u, _wgslsmith_dot_vec4_u32(vec4<u32>(44064u, 1u, 34275u, 4294967295u), vec4<u32>(0u, 105398u, 4294967295u, 34601u))), ~_wgslsmith_mod_u32(31184u, 4294967295u)), _wgslsmith_div_u32(~(~1u), ~(~1u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(54613u, 60104u, 1u), vec3<u32>(44306u, 23863u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(2636u, 0u, 1u, 4294967295u), vec4<u32>(6637u, 40764u, 0u, 26922u)) & 77447u)));
    let var_3 = Struct_1(all(vec4<bool>(false, 48721i <= u_input.a, true, var_2.d >= var_2.c.x)) && var_2.a, firstLeadingBit(var_2.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.c, vec4<f32>(2600f, var_2.d, -302f, 1656f))) + vec4<f32>(727f, var_2.d, -1101f, -698f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), var_2.d, 1504f, _wgslsmith_div_f32(523f, 1241f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.c.x + -826f))))), vec4<u32>(~var_2.e.x, firstTrailingBit(340u), ~0u, 1u));
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = Struct_1(var_0.a || true, firstLeadingBit(var_0.b) << (17818u % 32u), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) * _wgslsmith_f_op_f32(1329f + 1395f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.c.x, arg_0.x)), _wgslsmith_f_op_f32(ceil(var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-823f)), 1474f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1784f, _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1265f)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~arg_3.e, firstLeadingBit(vec4<u32>(var_0.b, arg_2, arg_3.b, 3089u))), func_1().e));
    var var_2 = select(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.c.x, u_input.b & -33206i, u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.b)), u_input.c | -vec4<i32>(u_input.b, u_input.c.x, 47223i, u_input.a)), var_1.a) & _wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.c.x, u_input.c.x, 2147483647i, -1i), _wgslsmith_sub_vec4_i32(~(u_input.c >> (vec4<u32>(56526u, 5257u, 64782u, var_1.e.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(-vec4<i32>(9797i, u_input.a, u_input.a, -838i), _wgslsmith_add_vec4_i32(u_input.c, u_input.c))));
    var var_3 = func_1();
    let var_4 = countOneBits(var_2.x);
    return !any(select(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_4, var_4), vec3<i32>(4004i, var_2.x, var_4)), true, func_1()).yy, select(vec2<bool>(var_1.a, true), func_3(arg_3, 0u, var_0.a).zz, vec2<bool>(false, true)), var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(vec3<bool>(true, (u_input.b & u_input.a) == countOneBits(u_input.c.x), true)), select(_wgslsmith_add_u32(22703u, ~4294967295u) << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(102727u, 1u, 87112u), vec3<u32>(42726u, 32013u, 56736u), vec3<bool>(false, true, false)), ~vec3<u32>(7348u, 23360u, 11674u)) % 32u), ~max(4294967295u, ~65510u), true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), any(vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-439f)) - -545f), _wgslsmith_f_op_f32(f32(-1f) * -1587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1852f)) * -1655f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 752f, countOneBits(~vec4<u32>(~4294967295u, 0u << (1u % 32u), max(4294967295u, 4294967295u), 67454u)));
    var var_1 = _wgslsmith_mult_u32(var_0.b & _wgslsmith_sub_u32(8371u, var_0.b & var_0.e.x), countOneBits(84686u | var_0.e.x));
    let var_2 = select(vec3<bool>(true, true, var_0.a), select(!vec3<bool>(true, true, var_0.a), select(vec3<bool>(var_0.a, var_0.a, false), !vec3<bool>(false, var_0.a, false), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -786f, 2309f, var_0.d) - var_0.c), -889f, 1u, func_1())), !func_2(i32(-1i) * -63399i, var_0.a, var_0)), !func_2(~1i, true, var_0));
    let var_3 = countOneBits(~var_0.e << ((var_0.e | ~(~vec4<u32>(0u, 4294967295u, var_0.e.x, var_0.e.x))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_3.yz, vec2<u32>(_wgslsmith_add_u32(~10517u, _wgslsmith_clamp_u32(var_0.e.x, 4294967295u, 52806u)), firstTrailingBit(var_0.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, var_3.x), var_3.yz, _wgslsmith_clamp_vec2_u32(var_3.wz, ~var_3.xz, ~vec2<u32>(var_3.x, var_3.x))), var_0.e.zy));
    let var_4 = func_1();
    let var_5 = u_input.c;
    var var_6 = var_0;
    var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(~(~(-2147483647i)), max(countOneBits(41507i), 1i), _wgslsmith_sub_i32(~(-1i), var_5.x))));
}

