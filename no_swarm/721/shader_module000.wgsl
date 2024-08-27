struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 943f;

var<private> global1: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(32731u, 23115u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 43440u), vec2<u32>(0u, 1u), vec2<u32>(3561u, 14619u), vec2<u32>(16996u, 12315u), vec2<u32>(41916u, 4294967295u), vec2<u32>(7750u, 4259u), vec2<u32>(76960u, 6909u), vec2<u32>(17939u, 38615u), vec2<u32>(2856u, 45447u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(73101u, 0u), vec2<u32>(20377u, 0u), vec2<u32>(1u, 80494u), vec2<u32>(93329u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 22963u), vec2<u32>(1u, 4294967295u), vec2<u32>(26549u, 41025u), vec2<u32>(4294967295u, 43700u), vec2<u32>(107582u, 73283u), vec2<u32>(40828u, 0u), vec2<u32>(75482u, 0u), vec2<u32>(32828u, 66069u));

var<private> global2: array<bool, 7>;

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1531f))) - _wgslsmith_f_op_f32(abs(-250f)))));
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1605f, -254f, -835f, -2336f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-368f, -349f, _wgslsmith_f_op_f32(sign(-726f)), -327f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-243f, -748f, -1219f, -947f), vec4<f32>(-1178f, -282f, -249f, 727f))))), vec4<bool>(true, true, true, true)))));
    global2 = array<bool, 7>();
    let var_1 = u_input.e;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + _wgslsmith_f_op_f32(-var_0.a.x))), true, 4294967295u, Struct_2(Struct_1(firstTrailingBit(~vec2<u32>(u_input.c.x, 1u)), ~var_1, firstTrailingBit(vec2<i32>(u_input.d, -10787i)), ~(~vec3<u32>(22736u, 36763u, 46023u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), -1995f)));
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = -(i32(-1i) * -13116i);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(trunc(1101f))), _wgslsmith_f_op_f32(min(-265f, arg_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.d.b, 948f, false)) + -690f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_3.a.x, arg_0.b, -232f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(720f, arg_0.b, -403f, arg_3.a.x) * arg_3.a)))));
    let var_3 = _wgslsmith_mult_u32(~select(~var_0.a.x, 10149u, arg_2.b), func_3(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a.b, 7u)], arg_2.b), vec2<bool>(arg_2.b, arg_2.b), true), true) >> (u_input.b % 32u)) >= ~_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.a.a.x, ~arg_0.a.a.x), ~(~var_0.a.x));
    var var_4 = 57831u;
    return select(u_input.b ^ 0u, ~(select(reverseBits(arg_0.a.b), 1u, true) & 1u), true);
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.a;
    return select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(15308u, 7u)], true, global2[_wgslsmith_index_u32(u_input.a, 7u)] & false), vec4<bool>(true, global2[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), u_input.e, vec2<i32>(2147483647i, u_input.d), vec3<u32>(1u, 0u, 4294967295u)), -1696f), vec2<i32>(72345i, u_input.d), Struct_3(1470f, false, u_input.c.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a, vec2<i32>(2147483647i, u_input.d), vec3<u32>(1u, u_input.c.x, 44340u)), -2563f)), Struct_4(vec4<f32>(360f, -327f, 422f, 499f))), 7u)], global2[_wgslsmith_index_u32(65461u, 7u)] && true, global2[_wgslsmith_index_u32(1u, 7u)]), true), select(!vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(25544u, 7u)]), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c.x, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.d >= u_input.d, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(20993u, 9741u), 7u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 7u)], true, false)), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], false, false, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.c.x, 7u)], true, all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, global2[_wgslsmith_index_u32(7188u, 7u)], true))), all(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 7u)]))), global2[_wgslsmith_index_u32(u_input.b, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 462f;
    global0 = 722f;
    var var_0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, ~(-49493i) >> (1u % 32u)), reverseBits(_wgslsmith_add_vec2_i32(-vec2<i32>(-4135i, 4034i), vec2<i32>(22240i, u_input.d) << (vec2<u32>(u_input.e, u_input.c.x) % vec2<u32>(32u)))));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-210f, 154f)), _wgslsmith_f_op_f32(round(-1407f)))), vec2<f32>(_wgslsmith_f_op_f32(step(804f, _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(select(911f, _wgslsmith_div_f32(1482f, 1127f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(50250u, u_input.e), 7u)])))))));
    global0 = 2407f;
    var var_3 = Struct_3(223f, true, ~abs(_wgslsmith_add_u32(~u_input.e, u_input.c.x)), Struct_2(Struct_1(~countOneBits(global1[_wgslsmith_index_u32(u_input.e, 27u)]), select(34600u, u_input.e, func_1().x), ~vec2<i32>(var_0.x, 2147483647i), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 2391u, 4294967295u), vec3<u32>(u_input.e, 0u, 62194u)), _wgslsmith_div_vec3_u32(vec3<u32>(24392u, 82438u, u_input.b), vec3<u32>(4294967295u, 0u, u_input.b)))), 264f));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.x)))))));
    global3 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(771f)), _wgslsmith_f_op_f32(max(var_4.x, var_3.d.b)), var_4.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 471f, 1511f))), var_3.c, vec4<i32>(0i, -var_0.x, u_input.d, -50360i), firstLeadingBit(select(vec4<i32>(var_0.x, ~var_0.x, 0i << (var_3.d.a.a.x % 32u), max(-25413i, u_input.d)), vec4<i32>(var_0.x, var_0.x, -1i, 2147483647i) | firstLeadingBit(vec4<i32>(-3774i, var_0.x, var_3.d.a.c.x, -2147483647i)), func_1().x)), -13021i);
}

