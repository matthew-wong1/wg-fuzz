struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(2772i), Struct_1(-34199i), Struct_1(2147483647i), Struct_1(0i), Struct_1(30401i), Struct_1(-449i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(12146i), Struct_1(2147483647i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(15378i), Struct_1(-1308i), Struct_1(-6157i), Struct_1(0i), Struct_1(25846i), Struct_1(690i), Struct_1(2147483647i), Struct_1(1i), Struct_1(111840i), Struct_1(-26745i), Struct_1(0i), Struct_1(1i), Struct_1(2147483647i), Struct_1(8722i), Struct_1(i32(-2147483648)), Struct_1(-5000i), Struct_1(1i), Struct_1(1i), Struct_1(0i), Struct_1(-18371i));

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(8183u, 1u), vec2<u32>(1u, 27123u), vec2<u32>(58717u, 23951u), vec2<u32>(52022u, 8739u));

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = global3.x;
    var var_1 = false;
    var var_2 = any(!(!vec3<bool>(-482f > arg_0.x, true, all(vec4<bool>(false, true, false, true)))));
    var var_3 = -u_input.b;
    let var_4 = global1[_wgslsmith_index_u32(~86023u, 32u)];
    return global4[_wgslsmith_index_u32(4435u, 21u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = Struct_1(-1i);
    var var_1 = _wgslsmith_sub_vec3_i32(select(-_wgslsmith_div_vec3_i32(min(vec3<i32>(53499i, var_0.a, 1i), vec3<i32>(var_0.a, 43179i, var_0.a)), countOneBits(vec3<i32>(0i, 37333i, 2765i))), _wgslsmith_add_vec3_i32(-(~vec3<i32>(-2220i, 37621i, -2147483647i)), firstLeadingBit(-vec3<i32>(-2147483647i, u_input.b, -1i))), true), vec3<i32>(((-2147483647i | var_0.a) & u_input.b) >> (~firstTrailingBit(4432u) % 32u), ~2147483647i, var_0.a));
    global1 = array<Struct_1, 32>();
    var_1 = ~(~vec3<i32>(8784i, ~_wgslsmith_mod_i32(12293i, var_0.a), min(u_input.b, _wgslsmith_mult_i32(var_0.a, var_1.x))));
    global4 = array<Struct_2, 21>();
    return abs(_wgslsmith_mod_i32(var_0.a, 1i));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<bool>(false, true);
    let var_1 = Struct_2(min(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(494f, 884f), vec2<f32>(173f, -538f))))), 18513u).a, max(~4125u, 23262u)));
    let var_2 = _wgslsmith_add_vec2_u32(u_input.d, global3.yy);
    let var_3 = true;
    global0 = -(~(-_wgslsmith_add_i32(arg_1, u_input.b) << (~(~1u) % 32u)));
    return global1[_wgslsmith_index_u32(12731u ^ min(4294967295u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(47895u, 0u, var_1.a), vec3<u32>(global3.x, 4294967295u, 5536u)) << (1u % 32u))), 32u)];
}

fn func_1() -> Struct_3 {
    var var_0 = -1573f;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, max(0u, u_input.c)) ^ global3.yz), vec2<u32>((_wgslsmith_div_u32(u_input.d.x, 4294967295u) >> ((u_input.a | u_input.d.x) % 32u)) & 16789u, 0u)), 32u)];
    global2 = array<vec2<u32>, 4>();
    let var_2 = func_4(func_3(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1158f, 452f), vec2<f32>(486f, 409f))), vec2<f32>(687f, -1000f), true)), global3.x), vec4<f32>(1f, 1f, 1f, 1f), 0u, true), var_1.a, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))));
    var var_3 = ~vec4<u32>(abs(min(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.a)), min(u_input.d.x, ~1u), ~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(33510u, u_input.a, global3.x, 31939u), vec4<u32>(55405u ^ u_input.d.x, firstLeadingBit(1u), select(4294967295u, 25325u, false), global3.x)));
    return Struct_3(u_input.c, ~61860u, Struct_1(~(-u_input.b >> (_wgslsmith_clamp_u32(var_3.x, u_input.d.x, global3.x) % 32u))), 1i, vec4<u32>(84291u, global3.x, _wgslsmith_sub_u32(~var_3.x, _wgslsmith_mult_u32(u_input.a, ~u_input.c)), 0u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = all(!vec4<bool>(any(vec2<bool>(true, false)), false, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false))));
    var var_1 = u_input.b;
    global3 = vec3<u32>(u_input.a, ~1u, ~4294967295u) & vec3<u32>(~1u, 4294967295u << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, global3.x, 0u), vec4<u32>(45590u, arg_0.d.a, 1u, 4294967295u)), ~arg_0.d.e) % 32u), 4294967295u);
    var_1 = 0i;
    let var_2 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(645f, 1090f)), arg_0.b))), ~(~min(1u, arg_1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-952f - -1000f))))))), _wgslsmith_mod_u32(0u, ~20785u), arg_0.d);
    return ~(select(vec3<u32>(0u, 4294967295u, 64286u) | ~vec3<u32>(u_input.d.x, 130236u, 25967u), abs(vec3<u32>(global3.x, 1u, 9600u)), any(vec4<bool>(var_0, var_0, false, false)) && any(vec4<bool>(var_0, false, true, false))) & ~(countOneBits(var_2.d.e.zxz) >> (arg_1.e.zzw % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = reverseBits(_wgslsmith_add_vec3_u32(min((vec3<u32>(u_input.c, 0u, u_input.a) >> (vec3<u32>(33052u, u_input.d.x, 1u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.d.x, global3.x, 2312u) % vec3<u32>(32u)), func_5(Struct_4(global4[_wgslsmith_index_u32(1u, 21u)], -1273f, 0u, Struct_3(1u, u_input.c, global1[_wgslsmith_index_u32(global3.x, 32u)], 13614i, vec4<u32>(u_input.c, u_input.a, 20611u, global3.x))), func_1())), ~_wgslsmith_div_vec3_u32(vec3<u32>(18463u, 1u, u_input.a), vec3<u32>(u_input.c, global3.x, 0u))));
    let var_0 = _wgslsmith_add_vec3_i32(min(select(-(vec3<i32>(u_input.b, -2147483647i, u_input.b) << (vec3<u32>(1u, u_input.d.x, global3.x) % vec3<u32>(32u))), abs(min(vec3<i32>(u_input.b, -42816i, u_input.b), vec3<i32>(21018i, -6986i, u_input.b))), true), vec3<i32>(~max(-193i, 4253i), -u_input.b, min(u_input.b << (7021u % 32u), _wgslsmith_mod_i32(0i, u_input.b)))), ~countOneBits(vec3<i32>(1i, 19035i, countOneBits(u_input.b))));
    let var_1 = Struct_5(vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), vec4<i32>(-14732i, u_input.b, var_0.x | countOneBits(-16361i), var_0.x), !any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), Struct_4(global4[_wgslsmith_index_u32(global3.x, 21u)], _wgslsmith_f_op_f32(floor(1f)), select(func_1().b, global3.x, false), Struct_3(4294967295u, 1u, global1[_wgslsmith_index_u32(u_input.a, 32u)], ~13879i, select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.x, 4294967295u, u_input.a), vec4<u32>(global3.x, u_input.a, u_input.d.x, global3.x)), ~vec4<u32>(23446u, 10733u, 4294967295u, 4294967295u), true))));
    let var_2 = ~func_5(var_1.d, var_1.d.d).x;
    global0 = func_4(~_wgslsmith_mod_i32(-5188i, firstTrailingBit(1i)), -var_0.x, !(!vec4<bool>(true, var_1.c, !var_1.c, any(var_1.a)))).a;
    let var_3 = Struct_4(Struct_2(9110u), _wgslsmith_div_f32(-162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -318f) * _wgslsmith_f_op_f32(step(-1003f, -1507f))))), _wgslsmith_div_u32(global3.x, abs(~1u)), var_1.d.d);
    global1 = array<Struct_1, 32>();
    var var_4 = _wgslsmith_sub_u32(u_input.a, ((func_2(vec2<f32>(var_1.d.b, -614f), 4294967295u).a >> (func_5(var_1.d, Struct_3(4109u, 21996u, global1[_wgslsmith_index_u32(global3.x, 32u)], -1i, var_1.d.d.e)).x % 32u)) ^ var_3.c) << (_wgslsmith_clamp_u32(func_5(var_1.d, Struct_3(u_input.c, 28102u, var_1.d.d.c, 0i, vec4<u32>(30362u, var_3.d.a, global3.x, var_3.d.e.x))).x, min(~var_2, 1u << (var_1.d.c % 32u)), 0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b, var_3.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(500f, 1659f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1071f, var_1.d.b) * vec2<f32>(var_1.d.b, 246f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(274f, var_1.d.b), vec2<f32>(-344f, -330f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(119f, -2235f), vec2<f32>(147f, -793f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -200f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, var_1.d.b)), vec2<f32>(-1117f, -119f)))), !select(vec2<bool>(true, true), select(var_1.a, var_1.a, false), !var_1.c))));
}

