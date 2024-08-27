struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-12353i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-36820i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 17543i), vec2<i32>(0i, 30320i), vec2<i32>(-45201i, 22565i), vec2<i32>(-1i, 4344i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(7119i, -7789i), vec2<i32>(1i, 0i), vec2<i32>(26072i, 7863i), vec2<i32>(-21824i, 4873i), vec2<i32>(2147483647i, 1i), vec2<i32>(-24344i, 176i), vec2<i32>(2147483647i, 7706i), vec2<i32>(2147483647i, -35790i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), -33390i), vec2<i32>(14335i, 0i), vec2<i32>(1i, 1i));

var<private> global2: array<Struct_2, 28>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.e.x))) + arg_1.a);
    var var_1 = vec3<bool>(all(select(vec3<bool>(true, global3.a.x && false, -559f >= arg_1.a), !vec3<bool>(false, arg_1.d.a.x, false), vec3<bool>(false, arg_1.d.a.x || global3.a.x, false))), global3.a.x, arg_1.d.a.x);
    return vec3<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-73277i, global3.b.x), 33868i), ~(~_wgslsmith_div_i32(_wgslsmith_add_i32(0i, global3.c), arg_1.d.b.x)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -704f)))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.x)))), Struct_1(select(!select(global0[_wgslsmith_index_u32(global3.d, 20u)], vec2<bool>(global3.a.x, global3.a.x), vec2<bool>(false, global3.a.x)), vec2<bool>(global3.a.x || false, false), select(!global0[_wgslsmith_index_u32(31325u, 20u)], vec2<bool>(true, true), true)), _wgslsmith_mult_vec3_i32(func_3(vec4<u32>(global3.d, 4294967295u, u_input.a, 123346u) >> (vec4<u32>(u_input.a, 38984u, 0u, u_input.a) % vec4<u32>(32u)), Struct_2(var_0.x, global3.d, vec3<u32>(53098u, global3.d, 13125u), Struct_1(vec2<bool>(global3.a.x, true), global3.b, 2147483647i, global3.d), vec2<f32>(var_0.x, -822f)), global3.d), (global3.b | global3.b) & global3.b), abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, global3.b.x), arg_0 | global3.c)), max(u_input.a, ~4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, _wgslsmith_f_op_f32(854f * 1390f), 1304f, var_0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -525f, 626f, var_0.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(705f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 611f, var_0.x, -388f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(274f))), 421f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - 377f))));
    let var_2 = any(select(!vec4<bool>(true, true & arg_1, true, var_1.b.a.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), false), !vec4<bool>(false, !var_1.b.a.x, any(vec4<bool>(global3.a.x, arg_1, global3.a.x, global3.a.x)), !var_1.b.a.x)));
    let var_3 = 1i;
    let var_4 = vec3<u32>(~global3.d >> (0u % 32u), ~max(_wgslsmith_sub_u32(var_1.b.d, 4294967295u), 63397u) >> (0u % 32u), 10767u);
    return Struct_4(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1373f)))), Struct_1(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~95918u, ~4294967295u), 20u)], var_1.b.a, select(vec2<bool>(true, var_1.b.a.x), !var_1.b.a, var_1.b.a.x)), ~(~(~vec3<i32>(arg_0, var_3, global3.c))), abs(~global3.b.x) & -arg_0, select(22110u, _wgslsmith_sub_u32(51260u, 1u), var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -124f, var_0.x, -134f) * var_1.c))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.d, 0u << (select(arg_2.b & u_input.a, min(0u, u_input.a), !arg_2.d.a.x) % 32u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~arg_2.c.yy, arg_2.c.zz), select(_wgslsmith_clamp_vec2_u32(arg_2.c.yz, arg_2.c.zy, vec2<u32>(arg_0.b.d, 1u)), ~arg_2.c.xz, !arg_1.b.a.x), vec2<u32>(~global3.d, _wgslsmith_sub_u32(arg_1.b.d, arg_2.d.d))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_0.b.d, arg_2.b)), vec2<u32>(~arg_2.b, 128062u))));
    let var_1 = Struct_3(_wgslsmith_mod_vec2_i32(-global3.b.zz | _wgslsmith_sub_vec2_i32(global3.b.yz | arg_0.b.b.xy, min(global1[_wgslsmith_index_u32(1u, 21u)], global3.b.zx)), global1[_wgslsmith_index_u32(arg_1.b.d, 21u)]), func_2(global3.b.x, true || !(global3.d == 1u)).b, arg_2, -368f);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(max(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1945f)))), arg_1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, 354f, var_1.c.e.x, var_1.d)), arg_1.c), arg_0.c)));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(~arg_1.b.b.x | (abs(var_1.c.d.b.x) ^ _wgslsmith_dot_vec3_i32(var_1.c.d.b, vec3<i32>(2147483647i, arg_0.b.c, global3.c))), var_2.b.b.x), func_3(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) & var_0, vec2<u32>(global3.d, 4294967295u)), ~1u, ~global3.d, 11793u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(100670u), firstLeadingBit(var_1.c.b)), 28u)], arg_1.b.d).x);
    global0 = array<vec2<bool>, 20>();
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> Struct_4 {
    global2 = array<Struct_2, 28>();
    let var_0 = func_2(global3.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(~0u, global3.d), max(1u, _wgslsmith_clamp_u32(u_input.a, global3.d, 1u))) == global3.d).b;
    var var_1 = Struct_3(-(~((var_0.b.xx ^ vec2<i32>(global3.c, 2147483647i)) ^ vec2<i32>(var_0.c, var_0.b.x))), func_2(_wgslsmith_sub_i32(-var_0.b.x, min(select(global3.c, 0i, true), _wgslsmith_mult_i32(35616i, global3.b.x))), global3.a.x).b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -119f))), var_0.d ^ firstTrailingBit(abs(u_input.a)), countOneBits(vec3<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(global3.d, var_0.d, 7101u))), var_0, _wgslsmith_f_op_vec2_f32(arg_1.yz - vec2<f32>(-243f, arg_1.x))), -526f);
    global0 = array<vec2<bool>, 20>();
    global3 = var_1.c.d;
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d * 1176f), _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(select(vec2<bool>(global3.a.x, true), vec2<bool>(arg_0, true), !arg_2), vec3<i32>(54372i, firstTrailingBit(min(global3.b.x, var_0.c)), -2147483647i), global3.c, ~var_1.b.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -652f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, var_1.d) * -793f), func_2(-1642i, global3.a.x).a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_4(func_2(global3.c, !global3.a.x), func_2(-1i << (select(27654u, 4294967295u, global3.a.x) % 32u), select(true, !global3.a.x, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(global3.d, global3.d, global3.a.x), reverseBits(u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, global3.d), vec2<u32>(4294967295u, global3.d)) >> (~vec2<u32>(u_input.a, 13619u) % vec2<u32>(32u))), 28u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(774f, 1000f, -1000f)), vec3<f32>(-154f, 1211f, 1312f), func_4(Struct_4(106f, Struct_1(vec2<bool>(global3.a.x, false), vec3<i32>(global3.b.x, 22857i, global3.b.x), -3034i, u_input.a), vec4<f32>(554f, 609f, -438f, -554f)), Struct_4(-1623f, Struct_1(vec2<bool>(true, false), vec3<i32>(15925i, 1i, 2147483647i), -34098i, u_input.a), vec4<f32>(847f, -856f, 1890f, -1372f)), Struct_2(-393f, global3.d, vec3<u32>(global3.d, u_input.a, 25712u), Struct_1(vec2<bool>(true, global3.a.x), global3.b, -37237i, u_input.a), vec2<f32>(1859f, -725f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-385f, -1491f)), _wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-326f)) * _wgslsmith_div_f32(-739f, -814f)))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(398f, _wgslsmith_f_op_f32(trunc(1199f)))))));
    var var_1 = Struct_1(global3.a, abs(global3.b), ~firstLeadingBit(-1i), ~(~abs(u_input.a & 78258u)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global3.d, 28u)];
    global3 = func_1();
    global0 = array<vec2<bool>, 20>();
    let var_1 = func_5(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2467f, -706f, _wgslsmith_div_f32(2203f, var_0.e.x)))), false).b;
    let var_2 = Struct_3(func_3(countOneBits(~(vec4<u32>(var_1.d, 9090u, var_0.b, u_input.a) | vec4<u32>(21417u, 4294967295u, global3.d, 14174u))), Struct_2(_wgslsmith_f_op_f32(var_0.a + func_2(-17322i, true).a), var_1.d, ~(~var_0.c), Struct_1(func_1().a, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global3.b.x, 43726i), vec3<i32>(var_0.d.c, -1i, global3.c), global3.b), firstLeadingBit(2147483647i), _wgslsmith_div_u32(1u, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-var_0.e.x))), min(u_input.a, ~(~global3.d))).zz, Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(4294967295u, global3.d, true), global3.d), 20u)], var_0.d.b, var_1.b.x, abs(func_1().d)), global2[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(var_0.c, firstLeadingBit(var_0.c)) & func_1().d) ^ var_0.d.d, 28u)], _wgslsmith_f_op_f32(trunc(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.a, -130f, var_0.a, var_2.c.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d, var_0.a, 1976f, var_2.c.a), vec4<f32>(var_0.e.x, var_0.e.x, var_2.c.a, 854f), vec4<bool>(var_0.d.a.x, false, global3.a.x, var_0.d.a.x)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, -811f, var_0.e.x, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -374f), 968f, var_2.d), select(vec4<bool>(var_0.d.a.x, true, var_2.b.a.x, true), !vec4<bool>(true, false, var_2.b.a.x, false), select(vec4<bool>(var_1.a.x, false, false, var_1.a.x), vec4<bool>(true, var_2.c.d.a.x, false, true), vec4<bool>(var_2.c.d.a.x, false, var_1.a.x, var_0.d.a.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(835f, 590f), var_0.e, var_0.d.a)) - _wgslsmith_f_op_vec2_f32(-func_5(true, vec3<f32>(var_2.d, -1393f, -132f), true).c.wy))), var_0.d.b.yx);
}

