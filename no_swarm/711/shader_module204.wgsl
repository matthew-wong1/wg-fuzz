struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(24612u, 54404u, 4294967295u, 195049u), vec4<u32>(138845u, 16603u, 4294967295u, 76701u), vec4<u32>(0u, 31748u, 1u, 54123u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(18052u, 1u, 1u, 0u), vec4<u32>(47661u, 8063u, 63403u, 4294967295u), vec4<u32>(1u, 37376u, 0u, 50074u), vec4<u32>(58999u, 46618u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 40812u, 57753u), vec4<u32>(3874u, 29162u, 95016u, 1u), vec4<u32>(1u, 2839u, 20461u, 116893u), vec4<u32>(1u, 57916u, 1u, 85939u), vec4<u32>(28820u, 4294967295u, 1u, 0u), vec4<u32>(24395u, 71721u, 4294967295u, 4294967295u), vec4<u32>(80411u, 13868u, 4294967295u, 16878u), vec4<u32>(0u, 3754u, 29406u, 0u), vec4<u32>(82398u, 1u, 1u, 29534u), vec4<u32>(5573u, 76171u, 25784u, 43221u), vec4<u32>(4294967295u, 97181u, 71885u, 1u), vec4<u32>(16995u, 4294967295u, 21059u, 30032u), vec4<u32>(1u, 0u, 0u, 87279u), vec4<u32>(1u, 26503u, 0u, 56467u), vec4<u32>(51917u, 4294967295u, 4294967295u, 16100u), vec4<u32>(1u, 61497u, 57955u, 28041u), vec4<u32>(49763u, 0u, 1u, 4294967295u), vec4<u32>(38982u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 1002u, 41619u), vec4<u32>(2248u, 0u, 79094u, 4294967295u), vec4<u32>(22710u, 80103u, 35243u, 58294u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(u_input.b.x, abs(-abs(0i)), _wgslsmith_add_vec4_u32(select(vec4<u32>(arg_1, arg_0.c.x, _wgslsmith_mult_u32(4294967295u, arg_1), 4294967295u), reverseBits(arg_0.c), arg_0.d), vec4<u32>(1u, 1u, 1u, 1u)), true, -729f);
    var var_1 = 1200u;
    let var_2 = Struct_4(true, arg_0, -u_input.b.wz, vec4<u32>(~(~_wgslsmith_mod_u32(arg_0.c.x, 4294967295u)), 8512u, var_0.c.x, ~_wgslsmith_mult_u32(arg_0.c.x ^ var_0.c.x, arg_0.c.x)), arg_0);
    let var_3 = ~select(var_2.b.c.x, var_2.d.x, true);
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(select(var_2.b.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.e), var_0.e)), true));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = arg_0;
    let var_2 = Struct_3(true, -(~2147483647i), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-14974i, var_1.b.a, 1i, arg_0.b.a), u_input.b)), -vec2<i32>(arg_0.a.x, arg_0.a.x) | -var_1.a.zz), ~u_input.a.x, vec4<u32>(5003u, ~max(57u, var_1.b.c.x), 0u, ~var_1.b.c.x), false, _wgslsmith_f_op_f32(sign(arg_1))), arg_0.b, arg_0);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.d.e * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a.x, u_input.b.x, global0[_wgslsmith_index_u32(16160u, 29u)], var_1.b.d, -1101f), ~arg_0.b.c.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-802f, _wgslsmith_div_f32(1289f, -167f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1251f)) - var_2.c.e)));
    let var_3 = _wgslsmith_sub_u32(~1u, max(var_1.b.c.x, ~54u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, 662f) - _wgslsmith_f_op_f32(-var_2.c.e));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(abs(_wgslsmith_add_vec3_i32(u_input.a.yyy, vec3<i32>(2147483647i, u_input.a.x, u_input.b.x))), Struct_1(-5658i, u_input.b.x ^ u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 29u)] ^ global0[_wgslsmith_index_u32(0u, 29u)], false, _wgslsmith_f_op_f32(f32(-1f) * -2315f)), arg_0), _wgslsmith_f_op_f32(func_3(Struct_1(-2147483647i, -u_input.b.x, max(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), arg_0, -380f), abs(~47739u))))), -1000f, -1000f);
    var var_1 = _wgslsmith_mult_u32(71925u, 45424u);
    var var_2 = Struct_2(~select(vec3<i32>(-28954i, 1i, -1i), countOneBits(~vec3<i32>(-3932i, -63991i, u_input.a.x)), vec3<bool>(arg_0 != false, true, true)), Struct_1(-2147483647i, u_input.b.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(10465u, 0u, 88922u, 105310u), max(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<u32>(3000u, 0u, 0u, 26677u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_0);
    var var_3 = var_2.b;
    let var_4 = Struct_4(true, var_2.b, vec2<i32>(reverseBits(var_2.a.x), _wgslsmith_mult_i32(~1i, -1i)), reverseBits(firstTrailingBit(abs(vec4<u32>(1u, var_2.b.c.x, var_2.b.c.x, 1u)) >> ((vec4<u32>(var_3.c.x, 87723u, 4294967295u, 4294967295u) | vec4<u32>(55582u, 65356u, var_3.c.x, 1u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_sub_i32(var_3.a, u_input.a.x) >> (0u % 32u), firstTrailingBit(u_input.a.x), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(50324u, 3056u, var_3.c.x, 48612u), global0[_wgslsmith_index_u32(0u, 29u)]), var_2.b.c >> (var_2.b.c % vec4<u32>(32u))) ^ vec4<u32>(var_2.b.c.x << (0u % 32u), ~0u, 31786u | var_2.b.c.x, var_2.b.c.x), var_2.b.d, _wgslsmith_f_op_f32(-var_3.e)));
    return Struct_3(all(vec2<bool>(var_2.b.c.x == var_4.d.x, false)), ~reverseBits(var_4.c.x), var_2.b, var_2.b, Struct_2(var_2.a, var_2.b, var_3.d));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    var var_0 = ~countOneBits(firstLeadingBit(arg_1.e.c.x));
    var var_1 = arg_0.e.a.xy;
    var var_2 = -countOneBits(select(arg_0.e.a, u_input.b.xyx >> (vec3<u32>(arg_0.d.c.x, 34513u, arg_1.e.c.x) % vec3<u32>(32u)), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_1.e.d, arg_1.a), vec3<bool>(arg_0.d.d, false, false)))) << (vec3<u32>(arg_1.e.c.x, ~arg_0.e.b.c.x, 59162u) % vec3<u32>(32u));
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32((~vec4<u32>(arg_1.b.c.x, 1u, 4294967295u, arg_0.d.c.x) ^ abs(arg_1.b.c)) << (global0[_wgslsmith_index_u32(abs(~arg_1.b.c.x), 29u)] % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.d.x, arg_1.b.c.x, reverseBits(0u)), vec3<u32>(1u, _wgslsmith_clamp_u32(19370u, arg_1.d.x, arg_0.e.b.c.x), 1u)), 29u)]), arg_0.d.c);
    let var_3 = arg_1.b.d;
    return arg_0.e;
}

fn func_1() -> Struct_2 {
    return func_5(func_2(any(vec2<bool>(true, true))), Struct_4(true, Struct_1(1i, ~u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u << (0u % 32u), ~1u), 29u)], true, 574f), vec2<i32>(u_input.b.x, u_input.a.x), ~(~(~global0[_wgslsmith_index_u32(4294967295u, 29u)])), Struct_1(reverseBits(-u_input.a.x), ~firstLeadingBit(u_input.b.x), vec4<u32>(select(50289u, 1u, false), ~4294967295u, _wgslsmith_clamp_u32(4294967295u, 29808u, 4294967295u), ~63820u), _wgslsmith_dot_vec3_u32(vec3<u32>(38408u, 0u, 4294967295u), vec3<u32>(54909u, 99007u, 0u)) >= ~15450u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-126f + 1175f), _wgslsmith_f_op_f32(f32(-1f) * -331f)))));
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = !(!(!select(select(vec3<bool>(arg_2.b.d, arg_2.b.d, arg_2.b.d), vec3<bool>(arg_2.b.d, false, false), arg_2.b.d), vec3<bool>(true, arg_2.c, arg_2.c), !vec3<bool>(arg_2.c, true, arg_2.c))));
    var var_1 = 43881u;
    let var_2 = Struct_2(-func_5(Struct_3(var_0.x, _wgslsmith_clamp_i32(-1i, 22285i, arg_0), func_2(arg_2.c).c, Struct_1(72308i, arg_0, arg_2.b.c, var_0.x, 162f), arg_2), Struct_4(var_0.x, func_2(var_0.x).e.b, vec2<i32>(65823i, -35888i), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.c.x, arg_2.b.c.x, 358u, arg_2.b.c.x), vec4<u32>(1u, arg_2.b.c.x, 4294967295u, 1u)), Struct_1(71792i, 13383i, arg_2.b.c, true, arg_1))).a, Struct_1(select(u_input.b.x, ~arg_2.b.b, (var_0.x & var_0.x) & var_0.x), _wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), vec4<u32>(arg_2.b.c.x, arg_2.b.c.x, max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.c.x, arg_2.b.c.x), arg_2.b.c.zy), arg_2.b.c.x), 36835u), func_1().b.d, arg_2.b.e), 13650u >= arg_2.b.c.x);
    var var_3 = arg_2.b.c.x;
    var_1 = ~firstTrailingBit(62773u);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    let var_0 = Struct_4(true, Struct_1(func_6((0i << (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 56570u, 31801u), vec3<u32>(68161u, 26402u, 0u)) % 32u), _wgslsmith_f_op_f32(581f + -293f), func_1()), abs(~u_input.a.x >> (4294967295u % 32u)), global0[_wgslsmith_index_u32(reverseBits(1u), 29u)], select(true, false | func_2(false).e.c, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-561f, _wgslsmith_f_op_f32(max(342f, -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(14470i, u_input.b.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x) >> (vec3<u32>(26166u, 43803u, 46836u) % vec3<u32>(32u))), 1i), vec4<u32>(0u, ~32574u & firstTrailingBit(~1u), ~_wgslsmith_sub_u32(func_2(false).d.c.x, ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(24622u, 0u), func_1().b.c.yy)), func_1().b);
    global0 = array<vec4<u32>, 29>();
    let var_1 = 25837u;
    let var_2 = Struct_3(var_0.b.d, ~_wgslsmith_dot_vec2_i32(reverseBits(func_2(var_0.b.d).e.a.yz), vec2<i32>(max(-1i, var_0.c.x), 1i << (var_0.b.c.x % 32u))), var_0.b, func_2(any(!(!vec3<bool>(true, true, var_0.b.d)))).d, Struct_2(func_5(func_2(all(vec3<bool>(true, var_0.b.d, false))), Struct_4(func_1().b.d, Struct_1(var_0.c.x, u_input.b.x, vec4<u32>(var_0.e.c.x, var_1, var_1, 1u), var_0.a, var_0.e.e), var_0.c, global0[_wgslsmith_index_u32(var_0.e.c.x >> (var_0.b.c.x % 32u), 29u)], var_0.b)).a, var_0.e, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.e, var_0.b.e, -1000f, -1000f), vec4<f32>(-691f, var_0.b.e, 952f, var_2.d.e))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e, _wgslsmith_f_op_f32(step(var_0.e.e, 1440f)), -1000f, func_5(Struct_3(false, var_0.c.x, var_0.e, Struct_1(var_2.b, var_0.c.x, vec4<u32>(22078u, 34736u, 4294967295u, var_0.b.c.x), true, var_2.c.e), var_2.e), var_0).b.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().b.e)), ~var_0.c ^ _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.ww, vec2<i32>(1i, -2147483647i)), vec2<i32>(min(u_input.b.x, var_0.b.b), ~var_2.d.b)), _wgslsmith_f_op_f32(select(-269f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)));
}

