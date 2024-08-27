struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 24> = array<f32, 24>(-1567f, 1084f, -950f, -382f, -1432f, 745f, 162f, -846f, 767f, 1372f, 2032f, -657f, 416f, 822f, -690f, -367f, 1313f, 189f, 1290f, -907f, -1178f, -214f, -131f, 143f);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 39373i, 1i);

var<private> global3: array<vec4<u32>, 4>;

var<private> global4: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> u32 {
    var var_0 = vec2<u32>(arg_0.a.x, firstTrailingBit(global4.a));
    var var_1 = Struct_4(u_input.b.x >> ((var_0.x | _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, 0u), max(4294967295u, 0u))) % 32u), 1u);
    global2 = ~(~(~abs(u_input.a) & select(abs(vec3<i32>(-25907i, 22298i, 2147483647i)), ~u_input.a, true)));
    let var_2 = arg_0.b.a;
    var var_3 = !select(!select(vec3<bool>(global4.c.b, true, global4.b.b), !vec3<bool>(true, global4.c.b, true), any(vec2<bool>(global4.b.a, true))), select(vec3<bool>(any(vec3<bool>(false, global4.b.b, global4.b.b)), any(vec3<bool>(global4.c.b, global4.b.b, global4.b.a)), true), !select(vec3<bool>(false, false, global4.c.a), vec3<bool>(global4.c.b, global4.b.b, global4.c.a), vec3<bool>(global4.b.b, global4.c.a, true)), !all(vec2<bool>(global4.c.a, false))), countOneBits(var_2.x) == firstLeadingBit(firstTrailingBit(var_1.a)));
    return 1u;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3((_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, -1i, global2.x, 12343i), vec4<i32>(32437i, u_input.e, global2.x, -2709i)), vec4<i32>(-62981i, 0i, global2.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 2147483647i, global2.x, 3313i), vec4<i32>(global2.x, u_input.a.x, global2.x, u_input.e))) >> (global3[_wgslsmith_index_u32(4294967295u, 4u)] % vec4<u32>(32u))) >> (~global3[_wgslsmith_index_u32(select(select(arg_0, u_input.c.x, global4.b.b), func_3(Struct_5(global3[_wgslsmith_index_u32(arg_0, 4u)], Struct_3(vec4<i32>(global2.x, global2.x, -1i, u_input.a.x), u_input.a), vec4<i32>(16905i, 2147483647i, 72656i, 14657i)), 259f), global4.a >= global4.b.d), 4u)] % vec4<u32>(32u)), ~firstTrailingBit(vec3<i32>(global2.x, _wgslsmith_add_i32(global2.x, -1i), global2.x)));
    let var_1 = Struct_5(~(abs(_wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(65369u, 4u)], vec4<u32>(0u, global4.a, u_input.c.x, u_input.c.x))) | max(global3[_wgslsmith_index_u32(global4.c.d, 4u)] & vec4<u32>(48150u, u_input.c.x, global4.a, arg_0), ~global3[_wgslsmith_index_u32(arg_0, 4u)])), Struct_3(firstTrailingBit(-(vec4<i32>(32784i, 3747i, var_0.b.x, 0i) >> (vec4<u32>(1u, arg_0, arg_0, global4.c.d) % vec4<u32>(32u)))), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_0.a.x, u_input.b.x))), firstTrailingBit(~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-27461i, global2.x, global2.x, global2.x)), vec4<i32>(1i, global2.x, -37533i, var_0.a.x))));
    global3 = array<vec4<u32>, 4>();
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(abs(30412u), 1u), select(~arg_0, var_1.a.x & var_1.a.x, true)), min(firstTrailingBit(global4.a), ~(~7568u))), global4.c, Struct_1(true, false, global4.b.c, countOneBits(12022u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_3 {
    global4 = func_2(firstTrailingBit(39219u));
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_3.x, 53551i, arg_2.x) | ~vec4<i32>(arg_3.x, arg_2.x, arg_3.x, -43085i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, global2.x, global2.x), vec4<i32>(0i, 35752i, u_input.d.x, u_input.d.x))) ^ -32463i, reverseBits(u_input.b.x), -_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-43870i, 0i, arg_3.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_3.x, arg_2.x))), -global2.x));
    var var_1 = Struct_5(max(select(global3[_wgslsmith_index_u32(~global4.a, 4u)] >> (vec4<u32>(32830u, global4.a, global4.c.d, global4.b.d) % vec4<u32>(32u)), min(_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(arg_0.d, 4u)], vec4<u32>(47291u, arg_0.d, u_input.c.x, 4294967295u)), vec4<u32>(19025u, 1u, 44850u, 71216u)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] * arg_0.c) < _wgslsmith_f_op_f32(f32(-1f) * -1247f)), ~global3[_wgslsmith_index_u32(~(~84955u), 4u)]), Struct_3(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, -27485i, var_0.x, -6247i), vec4<i32>(2147483647i, countOneBits(global2.x), _wgslsmith_mod_i32(arg_3.x, 1i), max(-27247i, -12981i))), -vec3<i32>(0i, arg_2.x, -43571i) | arg_2), vec4<i32>(0i, arg_3.x, reverseBits(-var_0.x) & select(arg_2.x, 1i, all(vec2<bool>(true, false))), _wgslsmith_mod_i32(arg_2.x, arg_2.x)));
    let var_2 = Struct_4(u_input.b.x, ~var_1.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-545f, -119f))) + 597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~0u, 24u)], -2060f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global4.c.c)))), func_2(_wgslsmith_mod_u32(arg_0.d, 53765u)).c.c), _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.c * -480f)))) - vec4<f32>(func_2(0u).b.c, _wgslsmith_f_op_f32(ceil(-254f)), _wgslsmith_f_op_f32(ceil(694f)), 1251f));
    return var_1.b;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    global3 = array<vec4<u32>, 4>();
    var var_0 = select(4294967295u, 1u, global4.b.a);
    global2 = vec3<i32>(~arg_2.a, ~_wgslsmith_mult_i32(1i, global2.x), -(~func_1(global4.c, ~4805u, arg_0.c.xwy, vec3<i32>(arg_3, -16382i, global2.x)).a.x));
    var var_1 = 354f;
    var var_2 = ~(~(~12468u));
    return Struct_2(arg_0.a.x, Struct_1(all(vec2<bool>(func_2(arg_2.b).b.b, false)), all(vec3<bool>(1u > arg_0.a.x, global4.b.b, global4.c.b)), 658f, reverseBits(arg_2.b)), func_2(~4294967295u).c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits(arg_1.a), vec4<u32>(global4.c.d, ~0u, ~16775u, ~4294967295u));
    var var_1 = func_4(Struct_5(arg_1.a, Struct_3(vec4<i32>(-arg_1.c.x, arg_1.b.b.x, u_input.d.x, -2147483647i), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -1i), i32(-1i) * -19679i, 21275i)), arg_1.b.a), Struct_4(20455i, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, abs(arg_1.a.x)), (global4.c.d | arg_2.b.d) | arg_1.a.x)), Struct_4(-2225i, arg_0.b.d), ((u_input.e << (func_2(global4.a).b.d % 32u)) ^ 1i) << (~(~132841u) % 32u)).b;
    global2 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-global2.x, global2.x, _wgslsmith_add_i32(-1i, ~4202i)), abs(arg_1.b.b));
    let var_2 = Struct_5(vec4<u32>(abs(~u_input.c.x), ~_wgslsmith_clamp_u32(~7233u, 47799u, arg_0.a), func_4(arg_1, Struct_4(arg_1.c.x, reverseBits(arg_0.b.d)), Struct_4(_wgslsmith_add_i32(global2.x, arg_1.c.x), ~var_0.x), abs(1i)).c.d, _wgslsmith_clamp_u32(var_1.d, ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 1u), ~u_input.c.zz))), arg_1.b, ~arg_1.b.a);
    global2 = vec3<i32>(firstLeadingBit(1i), arg_1.b.a.x, _wgslsmith_clamp_i32(-11659i, global2.x, 57610i));
    return StorageBuffer(-1i, ~vec4<i32>(var_2.c.x, firstTrailingBit(~global2.x), -_wgslsmith_div_i32(var_2.b.a.x, 1i), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 4>();
    let x = u_input.a;
    s_output = func_5(func_4(Struct_5(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, global4.b.d, u_input.c.x, u_input.c.x), ~vec4<u32>(0u, 18465u, u_input.c.x, 5633u)), func_1(Struct_1(false, false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global4.a), _wgslsmith_clamp_u32(18796u, u_input.c.x, 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -1708i, global2.x), vec3<i32>(u_input.e, u_input.d.x, 31189i)), _wgslsmith_div_vec3_i32(vec3<i32>(-28555i, -13489i, 0i), vec3<i32>(-2147483647i, 7101i, 40381i))), max(vec4<i32>(global2.x, 28672i, u_input.e, 1i), vec4<i32>(global2.x, global2.x, -12544i, 1i)) | vec4<i32>(u_input.b.x, -60374i, u_input.d.x, global2.x)), Struct_4(~0i, _wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_add_u32(37819u, global4.c.d))), Struct_4(-global2.x, 6820u), _wgslsmith_sub_i32(10664i, -(global2.x & 0i))), Struct_5(vec4<u32>(func_2(~59696u).a, 1u, ~abs(global4.c.d), u_input.c.x), func_1(global4.b, ~func_3(Struct_5(vec4<u32>(global4.c.d, 4294967295u, global4.a, global4.c.d), Struct_3(vec4<i32>(-13422i, -1i, -3721i, u_input.e), vec3<i32>(-2147483647i, -1i, u_input.a.x)), vec4<i32>(-1i, global2.x, -30677i, global2.x)), global4.b.c), u_input.a, u_input.a), firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 3921i, u_input.d.x, 0i), vec4<i32>(26468i, 11286i, -61038i, 17951i)), func_1(global4.c, u_input.c.x, u_input.a, u_input.a).a))), func_4(Struct_5(~global3[_wgslsmith_index_u32(~u_input.c.x, 4u)], Struct_3(-vec4<i32>(u_input.e, 1i, 28414i, global2.x), u_input.a), -_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, global2.x, u_input.b.x, global2.x), vec4<i32>(u_input.d.x, -2147483647i, 24687i, global2.x))), Struct_4(-1i, global4.a), Struct_4(-2147483647i, global4.a), global2.x), vec2<bool>(true, global4.c.a));
}

