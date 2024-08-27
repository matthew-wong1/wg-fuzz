struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(39796i, 59965i, -8315i), vec3<i32>(0i, 1i, 16342i), vec3<i32>(-39301i, -4910i, i32(-2147483648)), vec3<i32>(0i, 43586i, -17274i), vec3<i32>(-42701i, -1624i, i32(-2147483648)), vec3<i32>(0i, 0i, 38857i), vec3<i32>(-1i, 41499i, 12878i), vec3<i32>(1i, -48083i, 15540i), vec3<i32>(-18493i, 16887i, -44081i), vec3<i32>(2147483647i, 1i, -24397i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -6466i), vec3<i32>(1i, i32(-2147483648), 33312i), vec3<i32>(-1i, i32(-2147483648), -46305i), vec3<i32>(-2478i, -6179i, 2259i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(42515i, 0i, 2147483647i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-75025i, 68808i, -9614i), vec3<i32>(68339i, 40821i, -20160i), vec3<i32>(-1726i, 6987i, 2147483647i), vec3<i32>(2147483647i, -27448i, -57538i), vec3<i32>(i32(-2147483648), 21569i, 11846i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(0i, -1i, 1i), vec3<i32>(i32(-2147483648), 1i, 5550i), vec3<i32>(2509i, 0i, 48899i), vec3<i32>(-1i, i32(-2147483648), -28183i), vec3<i32>(1i, 37051i, 0i));

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(55235u, 0u, 25710u), vec3<u32>(44242u, 0u, 4294967295u), vec3<u32>(39452u, 17469u, 45570u), vec3<u32>(12308u, 18861u, 10010u), vec3<u32>(22588u, 4294967295u, 1u), vec3<u32>(3763u, 8474u, 1u), vec3<u32>(73997u, 31882u, 44700u), vec3<u32>(4294967295u, 36186u, 44378u), vec3<u32>(20560u, 4294967295u, 1u), vec3<u32>(2388u, 12948u, 41366u), vec3<u32>(4294967295u, 4294967295u, 12096u), vec3<u32>(50647u, 26883u, 4075u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(62222u, 4294967295u, 30319u), vec3<u32>(45718u, 1u, 42040u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 27061u, 40050u), vec3<u32>(1u, 4294967295u, 1722u), vec3<u32>(4294967295u, 4294967295u, 38649u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(74065u, 82824u, 0u), vec3<u32>(4294967295u, 4294967295u, 73659u), vec3<u32>(0u, 15627u, 4294967295u), vec3<u32>(28081u, 4294967295u, 51769u), vec3<u32>(59325u, 16337u, 45434u), vec3<u32>(48405u, 0u, 21331u), vec3<u32>(4294967295u, 67072u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 30>();
    var var_0 = Struct_1(-firstLeadingBit(i32(-1i) * -32587i), ~u_input.c.x, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_sub_u32(firstTrailingBit(0u), ~u_input.b));
    var var_1 = abs(1u);
    var var_2 = Struct_4(-global1[_wgslsmith_index_u32(var_0.d, 30u)]);
    global2 = array<vec3<u32>, 28>();
    return Struct_1(-2147483647i, -_wgslsmith_mod_i32(-8692i, _wgslsmith_dot_vec2_i32(var_2.a.yx, vec2<i32>(u_input.c.x, -1154i))) & -57359i, var_0.c, var_0.d & 32196u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    global2 = array<vec3<u32>, 28>();
    global1 = array<vec3<i32>, 30>();
    let var_1 = true;
    var_0 = arg_0;
    return func_2();
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: i32) -> vec2<bool> {
    let var_0 = ~69794u;
    var var_1 = Struct_4(vec3<i32>(arg_3, firstTrailingBit(-2147483647i), ~_wgslsmith_mod_i32(-1i, 1i)));
    global1 = array<vec3<i32>, 30>();
    var var_2 = ~var_0;
    let var_3 = 43425i;
    return select(select(vec2<bool>(false, all(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), !vec2<bool>(true, any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global1 = array<vec3<i32>, 30>();
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(654i, -u_input.c.x, 1i), select(max(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(u_input.b, 30u)], vec3<i32>(-1i, u_input.c.x, u_input.c.x)), global1[_wgslsmith_index_u32(0u, 30u)] << (vec3<u32>(u_input.d, u_input.d, u_input.b) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -25162i, u_input.c.x), global1[_wgslsmith_index_u32(1u, 30u)]), arg_0.x != true)) & -global1[_wgslsmith_index_u32(11196u, 30u)];
    global2 = array<vec3<u32>, 28>();
    var var_1 = Struct_2(func_1(func_2()), u_input.a.x);
    global2 = array<vec3<u32>, 28>();
    return Struct_3(arg_1, vec2<f32>(_wgslsmith_div_f32(1000f, -1238f), arg_2.b.x), func_3(Struct_1(1i, reverseBits(var_1.a.a << (1u % 32u)), _wgslsmith_f_op_f32(170f * _wgslsmith_f_op_f32(trunc(-1000f))), min(var_1.a.d, u_input.d)), var_1.a.c, arg_2.b.x, _wgslsmith_dot_vec2_i32(u_input.c, var_0.yx)).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_4(select(vec2<bool>(true, true), !func_3(func_1(Struct_1(-10665i, u_input.c.x, -1183f, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1000f * 578f), 1i), select(!vec2<bool>(var_0, var_0), vec2<bool>(true, false), vec2<bool>(u_input.c.x != -2147483647i, var_0))), func_3(Struct_1(_wgslsmith_sub_i32(-1i, u_input.c.x), u_input.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-201f * -1169f))), _wgslsmith_mult_u32(~4294967295u, 22347u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_1(Struct_1(u_input.c.x, u_input.c.x, -618f, 17957u)).c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2138f - 1433f), _wgslsmith_f_op_f32(f32(-1f) * -1021f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-103f, 429f))), 1i).x, Struct_3(true & any(select(vec4<bool>(true, false, false, var_0), vec4<bool>(false, var_0, var_0, var_0), true)), vec2<f32>(498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(843f)))), all(vec2<bool>(var_0, u_input.b >= 54167u))));
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 1u)), 30u)]);
    var var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, u_input.c.x, -980i, -7005i), vec4<i32>(var_2.a.x, -1i, u_input.c.x, 2147483647i) << (vec4<u32>(u_input.d, 45734u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.c.x, -2147483647i, var_2.a.x, u_input.c.x), vec4<i32>(u_input.c.x, var_2.a.x, u_input.c.x, -1i)), select(vec4<i32>(40019i, 4807i, 27603i, var_2.a.x), vec4<i32>(var_2.a.x, u_input.c.x, 17800i, var_2.a.x), var_0))), 21631i, -509f, ~(~u_input.a.x) << (u_input.b % 32u)), _wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(0u, 0u, u_input.d, u_input.d)), vec4<u32>(_wgslsmith_clamp_u32(min(u_input.b, 1u), u_input.d ^ u_input.a.x, 1u & u_input.a.x), 20125u, 28032u, u_input.b)));
    var var_4 = vec2<bool>(var_0, (-747f <= var_3.a.c) || !func_4(vec2<bool>(true, true), true, func_4(vec2<bool>(true, true), false, Struct_3(var_1.a, var_1.b, false))).a);
    var var_5 = firstTrailingBit(~vec2<u32>(4294967295u, var_3.a.d));
    global2 = array<vec3<u32>, 28>();
    let var_6 = ~(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_3.b, u_input.d, 4294967295u) >> ((vec4<u32>(var_3.a.d, var_5.x, u_input.a.x, 4294967295u) & vec4<u32>(30913u, 4294967295u, u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<u32>(var_5.x, var_3.b, u_input.a.x, 21963u)) & vec4<u32>(1u, 8620u, u_input.d, abs(_wgslsmith_add_u32(var_5.x, 4294967295u))));
    var_5 = _wgslsmith_div_vec2_u32(~vec2<u32>(~var_3.a.d, 19184u), countOneBits(~_wgslsmith_sub_vec2_u32(u_input.a, firstLeadingBit(vec2<u32>(48432u, var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b.x, var_3.a.c)))), func_2().c, _wgslsmith_f_op_f32(func_2().c + _wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(sign(var_1.b.x)), !var_0)))), firstLeadingBit(~vec2<u32>(var_5.x, var_5.x)) | vec2<u32>(firstLeadingBit(1u), ~var_3.b));
}

