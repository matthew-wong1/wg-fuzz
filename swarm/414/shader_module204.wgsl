struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 1u, u_input.b.x, 4294967295u)), firstTrailingBit(~(~vec4<u32>(1u, 0u, 76828u, 4294967295u))));
    let var_1 = arg_0.e.b;
    var var_2 = abs(max(~vec4<u32>(_wgslsmith_clamp_u32(0u, 1u, 0u), min(4294967295u, 39571u), 1u, 1u), ~select(vec4<u32>(4294967295u, u_input.a, 1u, 25271u), vec4<u32>(u_input.b.x, 0u, 17718u, 1u), vec4<bool>(false, arg_0.b.x, arg_0.c.a.x, arg_0.d)) << (vec4<u32>(49067u & arg_0.a, u_input.c, _wgslsmith_mult_u32(60114u, 26558u), u_input.b.x) % vec4<u32>(32u))));
    var var_3 = 61035u;
    return vec2<bool>(all(vec4<bool>(arg_0.b.x, ~u_input.c <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 36112u, arg_0.a), vec4<u32>(7981u, 1u, u_input.b.x, 4614u)), any(select(vec3<bool>(true, arg_0.d, false), vec3<bool>(true, arg_0.c.a.x, false), vec3<bool>(true, arg_0.b.x, arg_0.b.x))), true)), true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<bool>(true, all(select(!(!arg_0.b), arg_0.e.a, select(func_3(arg_0), !arg_0.b, func_3(arg_0)))), any(select(select(vec4<bool>(false, true, arg_0.c.a.x, false), !vec4<bool>(arg_0.b.x, false, true, arg_0.d), false), vec4<bool>(arg_0.e.a.x, !arg_0.d, arg_0.d & arg_0.d, true), arg_0.c.a.x)));
    var var_1 = Struct_1(!arg_0.e.a, -(~arg_0.c.b));
    var_0 = !select(vec3<bool>(any(!vec3<bool>(var_0.x, false, false)), 4294967295u <= _wgslsmith_clamp_u32(arg_0.a, u_input.b.x, 67627u), any(vec4<bool>(var_0.x, var_1.a.x, false, var_0.x))), vec3<bool>(select(all(vec2<bool>(true, false)), true, all(vec3<bool>(false, true, true))), !any(var_0.zy), true), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_1.a.x, true, arg_0.d), all(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_0.x))), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_1.a.x, false, false), vec3<bool>(false, arg_0.d, false), vec3<bool>(false, arg_0.e.a.x, var_0.x)), select(vec3<bool>(true, arg_0.c.a.x, var_1.a.x), vec3<bool>(false, false, arg_0.b.x), vec3<bool>(false, var_0.x, true))), arg_0.c.a.x));
    let var_2 = all(!vec2<bool>(var_1.a.x, 1i < -arg_0.c.b));
    let var_3 = !(var_2 && func_3(Struct_2(~u_input.a, var_0.yz, arg_0.e, arg_0.d, Struct_1(vec2<bool>(true, false), -2147483647i))).x);
    return select(!vec2<bool>(!var_3 && true, (2974i >= var_1.b) != func_3(arg_0).x), !vec2<bool>(var_3, var_3), false);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = select(u_input.a ^ ~_wgslsmith_clamp_u32(min(u_input.a, u_input.c), 15110u, 4398u), u_input.b.x, true);
    var var_1 = -1573f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1534f - 719f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(202f, 1037f) - -760f)))) + -881f);
    let var_2 = Struct_2(1u, vec2<bool>(true, true), Struct_1(select(func_3(Struct_2(u_input.c, arg_1, Struct_1(vec2<bool>(true, false), -1i), false, Struct_1(vec2<bool>(arg_1.x, false), arg_0))), !arg_1, vec2<bool>(true, arg_1.x)), _wgslsmith_sub_i32(-33931i, -arg_0)), any(!vec2<bool>(arg_1.x, any(vec4<bool>(false, true, arg_1.x, arg_1.x)))), Struct_1(vec2<bool>(any(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(true, false, false, arg_1.x), arg_1.x)), all(vec3<bool>(arg_1.x, true, false)) || false), -arg_0));
    var var_3 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~u_input.a, 0u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, 1u, 1u), var_2.a)), ~(~u_input.b.xx & select(vec2<u32>(68836u, 0u), vec2<u32>(u_input.a, u_input.c), var_2.e.a))), select(~u_input.b.yz << (vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(69210u, 20681u, 0u, 1164u), vec4<u32>(0u, 1166u, var_2.a, 1u))) % vec2<u32>(32u)), reverseBits(countOneBits(abs(u_input.b.zx))), !(!vec2<bool>(true, arg_1.x))));
    return var_2.e.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_u32(arg_2.x, _wgslsmith_mod_u32(arg_0.x, abs(reverseBits(1u)))), select(func_4(_wgslsmith_add_i32(0i, -2147483647i), func_2(Struct_2(arg_0.x, vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), 2147483647i), true, Struct_1(vec2<bool>(false, false), 12228i)), _wgslsmith_add_vec3_i32(vec3<i32>(-43979i, 18288i, 0i), vec3<i32>(14907i, 38956i, -8279i)))), func_4(select(-68630i, ~(-38862i), true), func_3(Struct_2(0u, vec2<bool>(false, true), Struct_1(vec2<bool>(false, false), 1i), true, Struct_1(vec2<bool>(false, true), 17416i)))), vec2<bool>(false, true)), Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(false, true), func_2(Struct_2(52909u, vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), -3245i), true, Struct_1(vec2<bool>(false, false), 33777i)), vec3<i32>(6881i, -2147483647i, -31018i))), func_2(Struct_2(u_input.b.x, vec2<bool>(true, false), Struct_1(vec2<bool>(true, false), -14398i), true, Struct_1(vec2<bool>(false, false), 0i)), vec3<i32>(47413i, -1i, -1i)), func_3(Struct_2(arg_2.x, vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), 1i), true, Struct_1(vec2<bool>(true, false), 26424i)))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-10985i, -1i, -2147483647i, 23444i)), abs(vec4<i32>(-27919i, -2147483647i, 8550i, -2147483647i)))), !(!all(vec4<bool>(false, false, false, false))) != true, Struct_1(vec2<bool>(true, true), firstLeadingBit(1i)));
    let var_1 = ~(~_wgslsmith_mult_i32(var_0.c.b & -5660i, ~_wgslsmith_add_i32(var_0.c.b, var_0.e.b)));
    var var_2 = ~max(u_input.c, _wgslsmith_dot_vec2_u32(~(~u_input.b.zy), vec2<u32>(select(53892u, 1u, true), ~u_input.a)));
    return Struct_2(~0u, var_0.b, var_0.c, select(var_0.d, any(vec4<bool>(true, var_0.c.a.x, var_0.d, !var_0.b.x)), var_0.c.a.x), var_0.c);
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(130023u, reverseBits(countOneBits(u_input.b.x))), firstTrailingBit(arg_0.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, u_input.c, arg_0.a), countOneBits(vec4<u32>(u_input.b.x, arg_0.a, arg_0.a, arg_0.a))) % 32u)), 1u);
    var_0 = arg_0.a << (_wgslsmith_mod_u32(~firstTrailingBit(~u_input.a), 0u) % 32u);
    var var_1 = func_1(vec4<u32>(305u, 35435u, 1u, select(arg_0.a, _wgslsmith_div_u32(35278u, arg_0.a), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f + -149f) * 1f)), 293f), _wgslsmith_clamp_vec2_u32(u_input.b.xy, ~u_input.b.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(9999u, ~1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(33421u, 4294967295u))))));
    var var_2 = arg_0.e.b;
    var var_3 = select(vec4<bool>(func_1(select(reverseBits(vec4<u32>(4294967295u, arg_0.a, 4294967295u, var_1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, arg_0.a, u_input.a, 47760u), vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x)), select(vec4<bool>(false, false, true, arg_0.d), vec4<bool>(true, true, arg_0.b.x, var_1.e.a.x), var_1.e.a.x)), _wgslsmith_f_op_f32(-1661f * -1304f), ~vec2<u32>(4294967295u, u_input.a)).c.a.x, true, true, all(!vec2<bool>(arg_0.c.a.x, true))), !vec4<bool>(true, true, arg_0.c.a.x || !arg_0.c.a.x, func_3(arg_0).x), !(!(!(!var_1.e.a.x))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, -396f, -658f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * _wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_div_f32(-1000f, -1073f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(vec4<u32>(u_input.a, 27195u, 0u, u_input.b.x), -1503f, vec2<u32>(u_input.c, u_input.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(490f, -172f, 747f), vec3<f32>(-817f, -355f, 791f))), vec3<f32>(-1037f, -361f, -563f), vec3<bool>(false, false, false)))), func_3(Struct_2(_wgslsmith_div_u32(u_input.b.x, 17334u), vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), 2147483647i), true, Struct_1(vec2<bool>(true, true), -20397i))).x)));
    var var_1 = Struct_2(~80952u ^ u_input.a, func_2(Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), u_input.b | u_input.b), vec2<bool>(true, true), Struct_1(func_1(vec4<u32>(6926u, u_input.c, u_input.c, u_input.b.x), -886f, vec2<u32>(1u, u_input.a)).b, 36885i), true, Struct_1(vec2<bool>(false, false), 1i)), firstTrailingBit(abs(vec3<i32>(2718i, 0i, 1i)))), func_1(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(33519u, u_input.c, u_input.b.x, u_input.b.x), vec4<u32>(0u, 22944u, 1u, u_input.b.x), vec4<u32>(41330u, u_input.b.x, u_input.a, 0u))), -438f, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 42871u, 0u), countOneBits(vec4<u32>(39091u, 1885u, 23455u, u_input.c))), _wgslsmith_mult_u32(90797u, u_input.b.x | 9624u))).c, true, func_1(vec4<u32>(_wgslsmith_mult_u32(14079u << (u_input.c % 32u), func_1(vec4<u32>(u_input.c, 65143u, u_input.a, u_input.c), 1309f, vec2<u32>(u_input.c, 1u)).a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 10066u), vec3<u32>(u_input.c, u_input.c, 3692u)) << (u_input.a % 32u), firstLeadingBit(u_input.a), countOneBits(u_input.c) >> (func_1(vec4<u32>(u_input.a, 25888u, 4294967295u, 1u), var_0.x, u_input.b.yx).a % 32u)), -1134f, vec2<u32>(~4294967295u, _wgslsmith_add_u32(~u_input.c, ~u_input.b.x))).c);
    let var_2 = func_1(select(abs(vec4<u32>(~var_1.a, 1u, abs(0u), ~26020u)), vec4<u32>(~(~u_input.b.x), 38231u, u_input.c, ~0u), true), var_0.x, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.zx), u_input.c));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), -690f, _wgslsmith_f_op_f32(390f - var_0.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 1250f, 969f), vec3<f32>(var_0.x, 122f, var_0.x)))))))));
    let var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), vec4<f32>(var_0.x, -1441f, var_0.x, 137f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(942f, var_0.x, var_0.x, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1488f, var_0.x, var_0.x, 193f), vec4<f32>(-1000f, var_0.x, var_0.x, 1464f)))))));
}

