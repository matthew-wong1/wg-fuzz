struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-3912i, 0i, -60712i), vec3<i32>(50378i, 16332i, -11780i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-4553i, 0i, i32(-2147483648)), vec3<i32>(-16152i, i32(-2147483648), -13256i), vec3<i32>(15886i, i32(-2147483648), 2161i), vec3<i32>(2147483647i, 30005i, i32(-2147483648)), vec3<i32>(1i, -74348i, 10696i), vec3<i32>(1i, 0i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(24160i, -10960i, 56635i), vec3<i32>(-33202i, 0i, 17020i), vec3<i32>(0i, -17613i, -66546i), vec3<i32>(2147483647i, i32(-2147483648), -7311i), vec3<i32>(63780i, 47089i, 69641i), vec3<i32>(-15443i, 11031i, 0i), vec3<i32>(1i, 0i, -28234i));

var<private> global1: f32;

var<private> global2: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(-596f, vec3<u32>(0u, 0u, 77582u)), Struct_5(590f, vec3<u32>(0u, 1u, 5007u)), Struct_5(1020f, vec3<u32>(0u, 0u, 1u)), Struct_5(-909f, vec3<u32>(4294967295u, 1u, 34286u)), Struct_5(1183f, vec3<u32>(0u, 1422u, 9837u)), Struct_5(-171f, vec3<u32>(4294967295u, 1u, 1u)), Struct_5(-312f, vec3<u32>(1u, 32291u, 4294967295u)), Struct_5(-148f, vec3<u32>(32622u, 48092u, 28519u)), Struct_5(1613f, vec3<u32>(33866u, 21300u, 4294967295u)), Struct_5(666f, vec3<u32>(46169u, 4294967295u, 1u)), Struct_5(401f, vec3<u32>(23092u, 7217u, 1u)), Struct_5(-150f, vec3<u32>(1u, 44543u, 0u)), Struct_5(1000f, vec3<u32>(18055u, 15950u, 73866u)), Struct_5(385f, vec3<u32>(1u, 1u, 39174u)), Struct_5(-2290f, vec3<u32>(1u, 68669u, 1u)), Struct_5(2295f, vec3<u32>(1u, 80594u, 27644u)), Struct_5(1378f, vec3<u32>(1u, 1u, 29079u)), Struct_5(1000f, vec3<u32>(19551u, 33721u, 4294967295u)), Struct_5(1000f, vec3<u32>(4294967295u, 1u, 6193u)), Struct_5(-465f, vec3<u32>(0u, 9097u, 41578u)));

var<private> global3: array<vec4<f32>, 15>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = arg_0;
    global3 = array<vec4<f32>, 15>();
    global1 = arg_0.a.b.x;
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(!(!any(vec3<bool>(true, true, true))), arg_0.a.e > u_input.b.x), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))) | false);
    var var_2 = _wgslsmith_f_op_f32(-928f - arg_0.a.b.x);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, arg_0.c.x, 0u), min(vec3<u32>(28951u, 4294967295u, 1u), var_0.c), var_0.c), vec3<u32>(1u, select(0u, 0u, var_1.x), u_input.a ^ 43719u)) >> (vec3<u32>(var_0.c.x, var_0.a.a, arg_0.c.x) % vec3<u32>(32u)), ~(~max(var_0.c, ~arg_0.c)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = 0i << (_wgslsmith_clamp_u32(~(~1u), 30465u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4723u, u_input.a), func_3(Struct_3(Struct_1(arg_0, vec3<f32>(-1023f, 911f, -365f), vec2<u32>(u_input.a, 114392u), -590f, 22225i), global3[_wgslsmith_index_u32(arg_0, 15u)], vec3<u32>(arg_0, u_input.a, 11137u)))), ~abs(u_input.a), select(arg_0 != 150u, true, false))) % 32u);
    var var_1 = ~(-(~abs(-5156i)) ^ firstLeadingBit(-(var_0 << (108785u % 32u))));
    global0 = array<vec3<i32>, 18>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-516f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) + _wgslsmith_f_op_f32(f32(-1f) * -264f)))), reverseBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(31371u, 50382u, arg_0, 9019u), vec4<u32>(22598u, 62623u, 1u, 21412u)), ~arg_0) >> ((vec3<u32>(arg_0, 49878u, arg_0) | vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var var_3 = Struct_2(0i);
    return Struct_1(~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.a + -740f), -483f, _wgslsmith_f_op_f32(sign(var_2.a))))), vec2<u32>(1u, _wgslsmith_mult_u32(u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(34928u, 17112u)), _wgslsmith_mod_u32(~0u, 4294967295u | u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -472f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_dot_vec3_i32(u_input.b.wyw | _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2899i, 1i, 1i), u_input.b.xwy), global0[_wgslsmith_index_u32(var_2.b.x, 18u)] | global0[_wgslsmith_index_u32(arg_0, 18u)]), vec3<i32>(29804i, ~var_3.a, -1i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(vec3<u32>(abs(arg_0.a ^ reverseBits(4294967295u)), _wgslsmith_mult_u32(~arg_0.a, abs(arg_1.c.x)) ^ _wgslsmith_div_u32(~8151u, arg_0.a), _wgslsmith_clamp_u32((1u >> (u_input.a % 32u)) << (u_input.a % 32u), reverseBits(4294967295u), max(1u, _wgslsmith_add_u32(arg_1.c.x, 1u)))), ~(arg_0.a & ~(~86683u)), Struct_2(_wgslsmith_div_i32(-reverseBits(0i), i32(-1i) * -u_input.b.x)), arg_1.e, vec3<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), false));
    global2 = array<Struct_5, 20>();
    global1 = -446f;
    return Struct_1(arg_1.c.x >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_0.d, arg_0.d) - vec3<f32>(-718f, 632f, 362f)))) - vec3<f32>(arg_1.b.x, arg_1.d, arg_1.b.x))), vec2<u32>(arg_0.a, ~(467u >> (19u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1616f + _wgslsmith_f_op_f32(1144f - arg_1.b.x))), _wgslsmith_clamp_i32(-arg_0.e, -(_wgslsmith_clamp_i32(39561i, 28027i, -48564i) >> (25344u % 32u)), ~min(_wgslsmith_div_i32(u_input.b.x, arg_1.e), arg_1.e)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = func_4(func_2(u_input.a), func_2(firstTrailingBit(58366u)));
    let var_1 = Struct_2(func_4(Struct_1(_wgslsmith_mult_u32(abs(u_input.a), 4294967295u), var_0.b, select(~vec2<u32>(var_0.a, var_0.a), ~var_0.c, vec2<bool>(true, true)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)] >> (vec3<u32>(var_0.c.x, 4294967295u, u_input.a) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(var_0.a | 4294967295u, 18u)])), Struct_1(62690u, func_4(func_4(Struct_1(u_input.a, vec3<f32>(-776f, 179f, -940f), var_0.c, var_0.b.x, var_0.e), Struct_1(1u, vec3<f32>(var_0.d, var_0.b.x, -1000f), var_0.c, var_0.b.x, arg_0.x)), Struct_1(0u, var_0.b, var_0.c, var_0.b.x, arg_0.x)).b, var_0.c, _wgslsmith_f_op_f32(abs(-242f)), u_input.b.x)).e);
    global1 = var_0.b.x;
    global3 = array<vec4<f32>, 15>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, u_input.a, 12826u, _wgslsmith_div_u32(var_0.a, var_0.a)), vec4<u32>(17618u, 55415u, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1400f, -678f, var_0.d))) - _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, var_0.d, var_0.b.x))), any(vec3<bool>(true, true, true))))), vec2<u32>(_wgslsmith_mod_u32(min(var_0.c.x, ~var_0.c.x), ~var_0.a), func_4(func_2(29421u), func_4(Struct_1(var_0.c.x, vec3<f32>(var_0.d, var_0.d, -1864f), var_0.c, var_0.b.x, var_0.e), Struct_1(0u, vec3<f32>(var_0.d, 1769f, -808f), var_0.c, -212f, u_input.b.x))).a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(abs(func_2(u_input.a).d)))), _wgslsmith_clamp_i32(arg_0.x, -(~(~var_1.a)), ~(~var_0.e) | -47857i));
    return Struct_4(vec3<u32>(u_input.a, func_2(var_2.a).a, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(56775u, 4294967295u, u_input.a), vec3<u32>(37589u, 0u, 4294967295u)), 1u), 1u)), _wgslsmith_mult_u32(24252u, _wgslsmith_add_u32(u_input.a << (var_0.c.x % 32u), _wgslsmith_clamp_u32(0u, var_0.a, 7667u))), Struct_2(var_1.a), func_4(func_4(var_2, var_2), var_2).e, vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 18>();
    let var_0 = func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.ww, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(u_input.b.x, 1i)), u_input.b.x), -u_input.b.yy));
    let var_1 = var_0.e.x;
    global3 = array<vec4<f32>, 15>();
    global3 = array<vec4<f32>, 15>();
    let var_2 = select(all(!var_0.e.yz), true, var_0.e.x) || !(all(func_1(vec2<i32>(u_input.b.x, 2147483647i)).e) || func_1(max(u_input.b.yy, u_input.b.xz)).e.x);
    let var_3 = var_0.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(abs(var_3.x) << (u_input.a % 32u)), 59893u), ~_wgslsmith_mult_vec3_u32(var_0.a, _wgslsmith_sub_vec3_u32(~var_0.a, var_0.a)), max(vec4<u32>(var_0.b & (1u | var_3.x), ~0u, ~4294967295u, ~u_input.a), min(min(vec4<u32>(var_0.a.x, 4294967295u, var_0.b, 35929u) | vec4<u32>(84044u, 0u, 4294967295u, 0u), ~vec4<u32>(0u, 0u, var_3.x, u_input.a)), ~(~vec4<u32>(u_input.a, 53268u, 0u, 34693u)))));
}

