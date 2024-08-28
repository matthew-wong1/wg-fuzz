struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, vec4<i32>(947i, 0i, 17382i, 0i), false, vec3<u32>(4294967295u, 0u, 18696u)), Struct_1(1u, vec4<i32>(2147483647i, -34649i, 20020i, i32(-2147483648)), false, vec3<u32>(0u, 21167u, 1u)), Struct_1(24038u, vec4<i32>(14417i, 31863i, 2147483647i, -31018i), false, vec3<u32>(1u, 45693u, 4294967295u)), Struct_1(0u, vec4<i32>(2147483647i, -29488i, 1i, 22238i), false, vec3<u32>(1u, 0u, 0u)));

var<private> global2: Struct_3 = Struct_3(-1473f);

var<private> global3: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-871f + _wgslsmith_f_op_f32(global0.a * -1518f)), -987f);
    var var_1 = Struct_4(abs(vec2<u32>(41799u, (u_input.b.x >> (0u % 32u)) & u_input.a)), _wgslsmith_div_vec3_u32(arg_0.b, vec3<u32>(1u, 31894u, ~firstLeadingBit(4294967295u))), false, arg_0.b.x, _wgslsmith_mod_vec3_i32(arg_1, ~countOneBits(arg_1 << (global1.b.d % vec3<u32>(32u)))));
    return global1.d.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    global3 = array<vec4<bool>, 32>();
    global1 = arg_1;
    return 33084u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, 4294967295u, _wgslsmith_add_u32(countOneBits(u_input.b.x >> (20868u % 32u)), _wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(global1.a.a, u_input.b.x)))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(global1.c.a), 63039u, 1u, _wgslsmith_add_u32(global1.a.d.x, 43413u)) >> (firstLeadingBit(vec4<u32>(global1.c.d.x, 36234u, u_input.b.x, global1.b.d.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(26083u, 1u, 1u, u_input.a), vec4<u32>(global1.a.d.x, 17334u, global1.a.a, 17384u)) ^ vec4<u32>(1u, u_input.b.x, ~75381u, global1.b.d.x));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f - global2.a)))));
    let var_1 = false;
    var_0 = vec4<u32>(var_0.x, func_4(_wgslsmith_f_op_vec3_f32(min(arg_0, arg_0)), Struct_2(global1.a, Struct_1(var_0.x, firstLeadingBit(global1.c.b), any(vec2<bool>(global1.c.c, global1.b.c)), ~var_0.zwx), Struct_1(firstLeadingBit(u_input.b.x), max(vec4<i32>(-2147483647i, -6298i, global1.d.b.x, 22721i), global1.a.b), true, ~global1.a.d), Struct_1(_wgslsmith_mult_u32(u_input.a, 1u), global1.a.b, func_3(Struct_4(var_0.xz, vec3<u32>(0u, 20995u, 4294967295u), global1.c.c, var_0.x, global1.a.b.wxz), vec3<i32>(0i, -2147483647i, global1.b.b.x)), vec3<u32>(global1.c.a, u_input.a, 18212u))), ~vec4<u32>(20796u | var_0.x, _wgslsmith_clamp_u32(u_input.b.x, 48773u, u_input.b.x), global1.d.a, _wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(79609u, 4294967295u))), ~1i << (countOneBits(_wgslsmith_add_u32(40567u, 82625u)) % 32u)), 4294967295u, 1u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), true)), 470f, false)));
    return Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.d.x, u_input.a), u_input.b) | ~var_0.x), vec4<i32>(-1i) * -global1.a.b, all(vec2<bool>(var_0.x < u_input.b.x, true)), firstTrailingBit(~(~global1.d.d))), global1.c, Struct_1(~(u_input.b.x >> (4294967295u % 32u)), _wgslsmith_mult_vec4_i32(countOneBits(global1.a.b), global1.b.b) << (vec4<u32>(~var_0.x, ~76357u, 50868u, _wgslsmith_mult_u32(1u, u_input.a)) % vec4<u32>(32u)), true, var_0.yzy), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14850u, u_input.b.x, var_0.x, global1.a.a), vec4<u32>(910u, u_input.a, 35384u, u_input.a)), vec4<u32>(var_0.x, 45592u, ~1u, ~u_input.b.x)), global1.d.b, global1.d.c, ~vec3<u32>(global1.c.a, 62920u, _wgslsmith_mult_u32(1u, 4294967295u))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = Struct_2(global1.a, arg_0.b, global1.a, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.a, 3300f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 195f, 992f))))).c);
    global3 = array<vec4<bool>, 32>();
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, 427f, global2.a))).a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -186f, global2.a) * vec3<f32>(1051f, 1241f, global0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(1320f, global0.a, -1915f), vec3<f32>(global2.a, 1682f, 499f)))))).b, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, 1094f, -764f), vec3<f32>(global2.a, -497f, global0.a), vec3<bool>(arg_0.c.c, var_0.a.c, var_0.d.c))), global1.a.a >= arg_2.a.x)))).d, func_2(vec3<f32>(global0.a, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(global0.a * 619f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a + global2.a), -904f)))).c);
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.d.d.x, global1.b.a), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(arg_1, arg_2.d), var_0.c.d.yz, arg_2.c), var_1.b.d.zz), vec2<u32>(func_2(vec3<f32>(global0.a, 1149f, global0.a)).c.d.x, arg_2.b.x)));
    var var_3 = global1.c.a;
    return arg_2.a;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_4(min(vec2<u32>(u_input.b.x, global1.d.d.x) | global1.b.d.zx, ~vec2<u32>(global1.c.d.x, 25655u)) & (func_5(func_2(vec3<f32>(-488f, global0.a, global0.a)), ~u_input.b.x, Struct_4(vec2<u32>(2969u, 1u), global1.b.d, true, 34100u, global1.d.b.yyw)) & u_input.b), _wgslsmith_add_vec3_u32(global1.c.d, vec3<u32>(~abs(u_input.b.x), ~_wgslsmith_div_u32(global1.d.a, global1.b.d.x), ~abs(u_input.b.x))), func_3(Struct_4(_wgslsmith_mod_vec2_u32(~vec2<u32>(23517u, 1u), ~vec2<u32>(global1.b.d.x, global1.c.a)), select(_wgslsmith_clamp_vec3_u32(global1.b.d, vec3<u32>(0u, u_input.a, global1.b.a), vec3<u32>(global1.d.d.x, 0u, global1.b.d.x)), global1.b.d, vec3<bool>(global1.b.c, true, true)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(183f, 213f, -1000f), vec3<f32>(global0.a, -520f, 1394f))).b.c, ~reverseBits(4294967295u), _wgslsmith_add_vec3_i32(global1.c.b.xxw, global1.c.b.zyw)), countOneBits(abs(global1.c.b.ywx)) << (~global1.a.d % vec3<u32>(32u))), 8047u, global1.d.b.zzy);
    let var_1 = 22391i;
    global3 = array<vec4<bool>, 32>();
    var var_2 = Struct_4(vec2<u32>(1u, 10800u), ~(~vec3<u32>(~global1.a.d.x, _wgslsmith_add_u32(global1.b.d.x, u_input.b.x), ~9425u)), global1.d.c, 1u, ~(~(-_wgslsmith_add_vec3_i32(global1.d.b.wyw, vec3<i32>(-1i, var_1, -44605i)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global0.a));
    return select(select(vec2<bool>(!(!var_0.c), true), vec2<bool>(!(!global1.a.c), false), var_2.c), vec2<bool>(true, true), all(vec3<bool>((var_2.e.x < 1i) & true, var_0.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(1562f * -1110f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_div_f32(global2.a, var_1.a)))) - _wgslsmith_f_op_f32(trunc(var_1.a)));
    var var_3 = -global1.a.b;
    var var_4 = var_3.x;
    var var_5 = select(select(vec2<bool>(global1.a.c, -331f == global0.a), select(vec2<bool>(false, global1.a.c), vec2<bool>(global1.c.c, any(vec2<bool>(global1.a.c, true))), vec2<bool>(select(global1.b.c, true, global1.a.c), global1.b.c)), u_input.a != _wgslsmith_sub_u32(min(41035u, u_input.b.x), ~u_input.a)), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, global1.a.c), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, !global1.c.c), true), !select(select(vec2<bool>(true, global1.c.c), vec2<bool>(global1.d.c, false), vec2<bool>(true, true)), select(vec2<bool>(global1.b.c, global1.b.c), vec2<bool>(true, global1.d.c), vec2<bool>(global1.b.c, global1.c.c)), true), global1.a.c), select(vec2<bool>(true, all(func_1())), vec2<bool>(func_1().x, _wgslsmith_f_op_f32(ceil(var_1.a)) >= 1163f), all(select(!vec3<bool>(global1.d.c, global1.b.c, global1.a.c), select(vec3<bool>(global1.a.c, true, global1.c.c), vec3<bool>(global1.c.c, global1.b.c, global1.b.c), global1.b.c), all(vec4<bool>(global1.a.c, global1.a.c, true, global1.b.c))))));
    var_3 = global1.c.b;
    var_1 = Struct_3(797f);
    global3 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-var_2)) * 807f)), ~(countOneBits(global1.a.d.zy) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(global1.d.d.x, u_input.a), ~u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(global1.b.a, 17703u), 13368u), ~u_input.a));
}

