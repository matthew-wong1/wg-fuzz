struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> vec4<i32> {
    return max(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.e.x, arg_2.e.x, 40517i, -65527i)) >> (~vec4<u32>(27490u, arg_0.x, 22710u, 33681u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.e.x, -9176i, arg_2.e.x, arg_2.e.x), reverseBits(vec4<i32>(arg_2.e.x, arg_2.e.x, arg_2.e.x, 2147483647i)))), vec4<i32>(-1i, arg_2.e.x, arg_2.e.x, arg_2.e.x)), abs(-(~abs(vec4<i32>(arg_2.e.x, arg_2.e.x, -2147483647i, arg_2.e.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = max(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(7661u, 1u), vec2<u32>(u_input.a, 0u))), vec2<u32>(~max(0u, 0u), ~u_input.a), ~(firstTrailingBit(vec2<u32>(1u, 1672u)) | firstTrailingBit(vec2<u32>(27992u, 13366u)))), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)));
    global0 = arg_0;
    let var_1 = true;
    var var_2 = vec4<bool>(select(4294967295u < ((var_0.x ^ u_input.a) & 27174u), false, false), true, true, global0.a);
    var var_3 = !all(select(select(select(vec4<bool>(var_1, var_1, true, arg_0.c), vec4<bool>(false, arg_0.c, var_1, true), vec4<bool>(var_2.x, global0.c, var_2.x, false)), !vec4<bool>(var_1, false, var_1, false), vec4<bool>(true, true, var_2.x, var_1)), !(!vec4<bool>(false, true, false, global0.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, 39199i)) > -8949i));
    return var_0.x;
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = min(func_3(Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - global0.b) + global0.b), all(!vec3<bool>(global0.a, true, false))), _wgslsmith_f_op_f32(-101f - -987f), global0.b.zx), u_input.a);
    global1 = array<vec2<bool>, 18>();
    global0 = Struct_1(!any(global1[_wgslsmith_index_u32(~7866u, 18u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(1351f, global0.b.x, 1217f))) + global0.b)), all(vec3<bool>(any(vec4<bool>(global0.c, global0.c, false, true)), -1000f <= global0.b.x, any(vec4<bool>(true, global0.a, true, false)))) || (countOneBits(arg_0 & 2147483647i) < (arg_0 & -1i)));
    var_0 = u_input.a;
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 7328i, 21840i, -30111i) ^ vec4<i32>(arg_0, -2147483647i, -959i, -2147483647i), select(vec4<i32>(1i, 0i, arg_0, -96695i), vec4<i32>(23899i, 1i, arg_0, -31137i), vec4<bool>(false, global0.c, global0.c, global0.c))), min(vec4<i32>(1i, -7106i, arg_0, arg_0), countOneBits(vec4<i32>(arg_0, 22682i, -33174i, arg_0)))) & arg_0, max(~(-(~arg_0)), ~_wgslsmith_clamp_i32(arg_0, ~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, arg_0, -4598i), vec4<i32>(24952i, arg_0, arg_0, 2147483647i)))), arg_0, max(arg_0, _wgslsmith_mod_i32(1i, arg_0)));
    return vec4<i32>(37694i, arg_0 >> (~(~u_input.a) % 32u), 2597i, arg_0 >> (~45836u % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_1(!arg_1.c.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)) + _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))) * -1726f), _wgslsmith_f_op_f32(min(-2658f, global0.b.x))), all(!select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 18u)], vec2<bool>(false, false), global0.c)));
    let var_0 = Struct_3(Struct_2(-751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) - global0.b.x), Struct_1(global0.c, vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-1000f - global0.b.x)), firstTrailingBit(71i) <= ~(-37221i))), arg_1, Struct_1(any(global1[_wgslsmith_index_u32(~u_input.a | ~u_input.a, 18u)]), vec3<f32>(_wgslsmith_f_op_f32(-209f - arg_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2192f, global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), -501f), false), select(vec3<bool>(!(arg_0 > arg_0), all(global1[_wgslsmith_index_u32(u_input.a, 18u)]) && true, false), select(!vec3<bool>(global0.c, arg_1.c.c, false), select(vec3<bool>(false, false, global0.a), !vec3<bool>(global0.a, false, global0.a), !vec3<bool>(true, arg_1.c.a, false)), arg_1.c.b.x == -652f), true && arg_1.c.a), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, 4145i, arg_0), -vec3<i32>(1i, arg_0, arg_0)), abs(-vec3<i32>(arg_0, arg_0, -36182i))) >> (vec3<u32>(83473u, ~u_input.a, firstLeadingBit(max(u_input.a, u_input.a))) % vec3<u32>(32u)));
    global1 = array<vec2<bool>, 18>();
    var var_1 = arg_1.c.b.x;
    var_1 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-1163f + _wgslsmith_f_op_f32(sign(385f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(min(firstTrailingBit(-13645i), (-1i << (~u_input.a % 32u)) << (4294967295u % 32u)), 2147483647i);
    var var_1 = func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_1(vec2<u32>(u_input.a, 1u), global0.b.x, Struct_3(Struct_2(global0.b.x, -1368f, Struct_1(global0.c, vec3<f32>(-174f, 1392f, global0.b.x), global0.a)), Struct_2(global0.b.x, -540f, Struct_1(true, vec3<f32>(-109f, global0.b.x, 822f), global0.a)), Struct_1(global0.a, global0.b, false), vec3<bool>(true, global0.a, true), vec3<i32>(var_0.x, -39689i, var_0.x)), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 246f)), vec4<i32>(-36386i, 2147483647i, -1i, var_0.x) & vec4<i32>(var_0.x, 0i, var_0.x, var_0.x)) ^ (-vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x) | func_2(var_0.x)), -_wgslsmith_add_vec4_i32(max(vec4<i32>(-7285i, 40782i, var_0.x, var_0.x), vec4<i32>(0i, var_0.x, -70222i, var_0.x)), ~vec4<i32>(-10494i, -4441i, -15700i, -1i))), Struct_2(global0.b.x, 1616f, Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -110f, global0.b.x) * global0.b), !global0.a)));
    global1 = array<vec2<bool>, 18>();
    let var_2 = ~u_input.a;
    let var_3 = Struct_5(Struct_2(var_1.c.b.x, _wgslsmith_f_op_f32(floor(168f)), var_1.c), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-func_4(1i, Struct_2(var_1.b, 412f, Struct_1(var_1.c.a, global0.b, false))).c.b)))), var_1.c);
    var_1 = func_4(min(min(-var_3.b, -func_1(vec2<u32>(35093u, var_2), var_3.d.b.x, Struct_3(Struct_2(var_1.c.b.x, 2370f, Struct_1(true, vec3<f32>(var_3.d.b.x, -701f, var_1.a), global0.c)), var_3.a, var_1.c, vec3<bool>(var_3.a.c.c, true, global0.a), vec3<i32>(var_3.b, 2147483647i, var_3.b)), vec4<f32>(834f, 157f, var_3.c.x, 518f)).x), var_3.b), func_4(~(1i | _wgslsmith_add_i32(var_0.x, 0i)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.b.x, vec3<f32>(var_1.b, var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * global0.b.x) - _wgslsmith_f_op_f32(floor(-1020f))) * 195f)), vec2<u32>(28997u, countOneBits(u_input.a)), ~var_3.b >> (100901u % 32u), 1i);
}

