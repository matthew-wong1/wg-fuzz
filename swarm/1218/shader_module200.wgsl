struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = ~u_input.c.yy;
    global2 = array<vec4<f32>, 32>();
    let var_1 = -max(i32(-1i) * -firstLeadingBit(-1i), ~countOneBits(~u_input.a));
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    return global1[_wgslsmith_index_u32(arg_1, 6u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = reverseBits(~1u);
    var var_1 = countOneBits(abs(vec4<u32>(arg_1.b, 1u, arg_2.b, 4294967295u) ^ ~(~vec4<u32>(66153u, u_input.b, 0u, 1u))));
    var var_2 = global0.x;
    let var_3 = Struct_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(arg_1.d.x, 1i), 0i, ~arg_0.a.x, arg_1.a.a.x), firstTrailingBit(vec4<i32>(-12893i, 36870i, arg_1.e.a.x, 0i)), !all(vec3<bool>(global0.x, true, false))), arg_1.a.a), vec4<f32>(-2020f, arg_1.e.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), 1017f));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(~u_input.c.x != ~47046u, ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), !(1277f <= arg_0.b.x)).a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    return vec4<u32>(var_0, ~(~var_1.x), abs(0u), var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = global0.x;
    global0 = select(vec4<bool>(global0.x, true, true, true), !vec4<bool>(select(true, false, false) || global0.x, all(vec4<bool>(false, global0.x, true, false)), true, false), !select(vec4<bool>(global0.x, global0.x, global0.x && global0.x, global0.x || global0.x), select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(true, global0.x, true, global0.x)), select(!vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), true)));
    global2 = array<vec4<f32>, 32>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 32u)]))))));
    global2 = array<vec4<f32>, 32>();
    return vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(func_3(arg_0, Struct_2(Struct_1(arg_0.a, vec4<f32>(1038f, -1003f, -1542f, -1573f)), 25348u, vec2<f32>(var_1.x, arg_0.b.x), arg_0.a.zzx, arg_0), global1[_wgslsmith_index_u32(9907u, 6u)]), ~vec4<u32>(u_input.c.x, u_input.b, 76691u, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.b, u_input.b, 1993u)) >> (vec4<u32>(u_input.c.x, 64592u, ~u_input.b, func_3(Struct_1(arg_0.a, arg_0.b), global1[_wgslsmith_index_u32(27653u, 6u)], Struct_2(arg_0, 4294967295u, arg_0.b.xz, vec3<i32>(arg_0.a.x, arg_1.x, 26335i), arg_0)).x) % vec4<u32>(32u)), reverseBits(~func_3(Struct_1(vec4<i32>(u_input.a, arg_1.x, -43995i, u_input.a), vec4<f32>(var_1.x, arg_0.b.x, 213f, -376f)), Struct_2(Struct_1(arg_0.a, vec4<f32>(-159f, -450f, var_1.x, 1151f)), 1u, vec2<f32>(-2563f, var_1.x), arg_1.wyw, arg_0), global1[_wgslsmith_index_u32(4294967295u, 6u)]))), ~1u, 4294967295u, u_input.c.x);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    global1 = array<Struct_2, 6>();
    let var_0 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_1.e.a, arg_1.e.a) & select(u_input.a, u_input.a, global0.x), 2147483647i, _wgslsmith_clamp_i32(u_input.a, -1i, func_1(true, 55393u, true).a.a.x), max(abs(-12141i), _wgslsmith_dot_vec2_i32(arg_1.e.a.yy, arg_1.a.a.xw))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1682f, 1622f, -395f)) + arg_1.a.b), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), func_1(global0.x, arg_2.x, true).e.b.x, arg_1.e.b.x, 863f))), arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(690f * _wgslsmith_f_op_f32(arg_1.e.b.x * -429f)), arg_0)), 1f), firstTrailingBit(countOneBits(vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), 0i))), func_1(_wgslsmith_f_op_f32(floor(-1000f)) < 1000f, 50966u, firstTrailingBit(arg_2.x) < 0u).e);
    global2 = array<vec4<f32>, 32>();
    global2 = array<vec4<f32>, 32>();
    let var_1 = arg_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 55291u;
    let var_1 = global1[_wgslsmith_index_u32(9443u, 6u)];
    var var_2 = func_4(var_1.c.x, func_1(true, min(countOneBits(~7387u), u_input.b), true), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0, u_input.c.x, var_1.b), vec4<u32>(var_1.b, u_input.c.x, var_1.b, 58352u)), firstTrailingBit(func_2(var_1.a, var_1.e.a))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1663f, -2195f, -559f) * vec3<f32>(var_1.c.x, 1435f, var_2.a.b.x)) + _wgslsmith_f_op_vec3_f32(-var_2.a.b.zwx)))));
    let var_4 = Struct_1(vec4<i32>(var_2.d.x, var_2.e.a.x, _wgslsmith_add_i32(~reverseBits(var_1.a.a.x), u_input.a), 0i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(59895u, 32u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, var_2.c.x, var_2.c.x, -803f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -1327f, 405f)))))));
    let var_5 = Struct_1(-((vec4<i32>(-1i) * -var_4.a) ^ vec4<i32>(_wgslsmith_sub_i32(var_4.a.x, 1i), max(var_2.d.x, u_input.a), func_1(false, 4294967295u, true).e.a.x, -var_4.a.x)), var_1.a.b);
    let var_6 = -firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(-1997i, var_1.e.a.x, var_4.a.x, var_4.a.x) >> (vec4<u32>(34555u, var_0, 4294967295u, var_0) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d.x, -30031i, 1i, -29950i), vec4<i32>(-9747i, 0i, 1i, 0i)) & -vec4<i32>(var_4.a.x, 12975i, 2147483647i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_1.e.a.wz, vec2<i32>((i32(-1i) * -24373i) << (~u_input.b % 32u), -countOneBits(u_input.a)), vec2<i32>(-30885i, _wgslsmith_add_i32(1i, 56150i)) | ~_wgslsmith_add_vec2_i32(var_2.a.a.xx, vec2<i32>(var_1.d.x, -1i))), countOneBits(var_4.a.x), 2147483647i, var_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.a.a, vec4<i32>(var_6.x, var_4.a.x, var_1.d.x, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_6.x, -45531i, var_4.a.x), var_1.e.a)), u_input.a));
}

