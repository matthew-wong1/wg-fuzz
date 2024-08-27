struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-22009i, -53302i, -1i, -28471i), Struct_1(37064u, true, vec2<f32>(875f, -1175f), -4557i, vec2<f32>(2312f, 249f)), Struct_1(1u, true, vec2<f32>(1636f, -925f), -16493i, vec2<f32>(-731f, 2746f)), Struct_1(0u, false, vec2<f32>(-1498f, -692f), 1711i, vec2<f32>(-132f, -967f)));

var<private> global2: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(99664u, 29335u), vec2<u32>(1u, 21756u), vec2<u32>(0u, 1u), vec2<u32>(68884u, 8607u), vec2<u32>(28208u, 0u), vec2<u32>(4294967295u, 61219u), vec2<u32>(92957u, 54770u), vec2<u32>(43336u, 65605u), vec2<u32>(0u, 1u), vec2<u32>(48415u, 58429u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 22326u), vec2<u32>(35130u, 5684u), vec2<u32>(41950u, 70473u), vec2<u32>(0u, 102394u), vec2<u32>(43356u, 4294967295u), vec2<u32>(1u, 13443u), vec2<u32>(5108u, 70427u), vec2<u32>(97640u, 19543u), vec2<u32>(22304u, 97256u), vec2<u32>(4294967295u, 17019u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(global0.xwz));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(~global1.a, global1.a), global1.c, global1.d, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(51175u, u_input.b, u_input.a, u_input.a), arg_3 ^ vec4<u32>(u_input.b, 46599u, 4294967295u, 1u)), select(any(vec3<bool>(false, false, arg_1)) || global1.b.b, select(all(vec2<bool>(true, false)), false, !global1.d.b), any(select(vec4<bool>(global1.b.b, true, false, global1.c.b), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(true, arg_1, true, false)))), vec2<f32>(1501f, arg_2.x), -2147483647i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.x - global1.c.e.x), _wgslsmith_f_op_f32(round(448f)))))));
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, ~(-28446i), 1i, -1i), var_1.a << (arg_3 % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(-64284i, global1.b.d, -1i, arg_0.x)), var_1.a), vec4<i32>(var_1.c.d, reverseBits(_wgslsmith_dot_vec2_i32(global1.a.zz, vec2<i32>(arg_0.x, var_1.d.d))), arg_0.x, -(i32(-1i) * -2147483647i))));
    global1 = Struct_2(-_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(22177i, -2147483647i), vec2<i32>(1i, -2147483647i)), -831i, 0i, 16588i)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, global1.d.a), ~vec2<u32>(var_1.d.a, global1.c.a)) ^ firstTrailingBit(u_input.a), !any(vec3<bool>(true, var_1.d.b, var_1.c.b)), var_1.c.c, -1i, var_1.c.e), Struct_1(global1.b.a, arg_1, _wgslsmith_f_op_vec2_f32(-var_1.c.c), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.d, -1i, 8069i, 2147483647i), global1.a), u_input.c.x), _wgslsmith_mult_i32(abs(3475i), global1.c.d)), _wgslsmith_div_vec2_f32(global1.c.e, arg_2)), global1.d);
    global2 = array<vec2<u32>, 22>();
    return vec4<i32>(-min(1i, _wgslsmith_clamp_i32(arg_0.x, -68616i, i32(-1i) * -54437i)), min(~var_2, abs(max(global1.d.d, global1.d.d & var_2))), ~_wgslsmith_mult_i32(i32(-1i) * -6948i, abs(u_input.c.x ^ arg_0.x)), min(-abs(-2147483647i), global1.b.d));
}

fn func_2() -> Struct_2 {
    global2 = array<vec2<u32>, 22>();
    global1 = Struct_2(_wgslsmith_add_vec4_i32(func_3(u_input.c, global1.d.b, _wgslsmith_f_op_vec2_f32(min(global1.c.c, global1.c.c)), vec4<u32>(56742u, u_input.a, 38045u, global1.b.a) ^ vec4<u32>(68642u, 7738u, u_input.a, 29074u)) & vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(33953i, u_input.c.x), global1.c.d | -20002i, u_input.c.x), global1.a), Struct_1(u_input.a, global1.d.b, global1.c.c, countOneBits(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(384f, global1.c.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(770f)), global0.x, true)))), Struct_1(1u, !(!(!global1.d.b)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * global0.x), 284f))), countOneBits(global1.c.d), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.e.x, global1.c.c.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(891f, global1.b.c.x))))))), global1.d);
    return Struct_2(vec4<i32>(2147483647i, max(~global1.c.d, 2147483647i), _wgslsmith_div_i32(_wgslsmith_add_i32(67331i, _wgslsmith_mod_i32(u_input.c.x, global1.c.d)), 1i), firstLeadingBit(_wgslsmith_clamp_i32(0i, firstTrailingBit(2147483647i), u_input.c.x))), global1.d, Struct_1(u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -255f))) <= 1178f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.c + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.c.x, -580f), global1.b.c)))), select(u_input.c.x, -15965i, global1.c.b), global0.yx), Struct_1(~max(1u, _wgslsmith_add_u32(u_input.b, 4294967295u)), !(firstTrailingBit(u_input.c.x) != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, global1.a.x), vec4<i32>(global1.b.d, 0i, u_input.c.x, global1.b.d))), vec2<f32>(1186f, _wgslsmith_f_op_f32(-global1.c.c.x)), 1i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.xw))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.e.x, -454f))))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-112f, global1.c.e.x, global0.x, 773f), vec4<f32>(1694f, -849f, 779f, 243f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, arg_2.x, global1.c.c.x, -1000f), vec4<f32>(-1243f, 771f, -280f, global1.d.e.x))), !vec4<bool>(false, arg_0, true, global1.b.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -243f, 911f, global1.d.c.x)))))));
    global2 = array<vec2<u32>, 22>();
    global2 = array<vec2<u32>, 22>();
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    global2 = array<vec2<u32>, 22>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_mult_u32(86053u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.a, 0u), select(global2[_wgslsmith_index_u32(arg_1.d.a, 22u)], vec2<u32>(0u, var_0.c.a), vec2<bool>(global1.c.b, var_0.b.b))))) << (var_0.b.a % 32u);
    var var_2 = func_2();
    var var_3 = var_0;
    return var_0.c;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = global1.b.b;
    global1 = Struct_2(countOneBits(~_wgslsmith_mult_vec4_i32(~global1.a, -vec4<i32>(1i, arg_0, -67939i, 5234i))), func_1(!(!(arg_1.d.b != false)), -12254i, _wgslsmith_f_op_vec2_f32(-global1.d.c), min(u_input.a, arg_1.d.a)).c, global1.b, global1.c);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(max(global0.zzw, _wgslsmith_f_op_vec3_f32(-global0.zyy))), Struct_2(global1.a, func_2().b, global1.b, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.wzx + vec3<f32>(arg_1.d.e.x, -106f, arg_1.d.c.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-121f, arg_1.b.c.x, global0.x)))), arg_1, select(select(vec2<bool>(arg_1.c.b, true), vec2<bool>(arg_1.d.b, global1.b.b), vec2<bool>(false, global1.c.b)), select(vec2<bool>(global1.d.b, true), vec2<bool>(global1.c.b, arg_1.b.b), vec2<bool>(false, false)), vec2<bool>(true, false)))), !select(select(vec2<bool>(arg_1.b.b, false), select(vec2<bool>(arg_1.d.b, global1.b.b), vec2<bool>(global1.c.b, false), arg_1.d.b), func_2().d.b), select(vec2<bool>(false, true), vec2<bool>(true, global1.c.b), true), select(vec2<bool>(false, global1.b.b), !vec2<bool>(global1.c.b, false), vec2<bool>(false, arg_1.d.b))));
    global1 = func_1(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c.x, global0.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -683f))), 6706i, func_2().c.c, ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(arg_1.b.a, 0u)) | _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(var_1.a, 53624u, true), arg_2), 22u)], ~vec2<u32>(var_1.a, global1.b.a) >> (~vec2<u32>(25077u, arg_1.c.a) % vec2<u32>(32u))));
    var var_2 = vec2<u32>(~arg_1.b.a, 0u);
    return Struct_3(func_1(false, arg_3.x ^ 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, func_1(true, 38574i, var_1.e, var_2.x).d.c.x)), reverseBits(~firstTrailingBit(77522u))).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(~7308i));
    let var_1 = func_5(global1.c.d, Struct_2(vec4<i32>(67234i, ~(-30051i >> (global1.b.a % 32u)), 56900i, ~u_input.c.x), global1.d, func_4(_wgslsmith_f_op_vec3_f32(trunc(global0.xzz)), func_1(false, var_0 & u_input.c.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))), min(0u, global1.b.a)), vec2<bool>(415f > global1.d.e.x, true)), func_2().d), u_input.b, global1.a.xy);
    global1 = Struct_2(-_wgslsmith_mult_vec4_i32(select(global1.a, global1.a, vec4<bool>(var_1.a.b, global1.b.b, global1.d.b, true)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, global1.b.d, var_0), ~vec4<i32>(u_input.c.x, var_1.a.d, global1.b.d, 2147483647i))), func_1(select(!var_1.a.b, !(!var_1.a.b), 0i <= (8853i << (global1.d.a % 32u))), _wgslsmith_dot_vec3_i32(select(~global1.a.xzw, ~vec3<i32>(-2147483647i, u_input.c.x, -48881i), !vec3<bool>(global1.c.b, var_1.a.b, true)), -(global1.a.wwz << (vec3<u32>(global1.d.a, var_1.a.a, var_1.a.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1101f)), _wgslsmith_f_op_f32(478f - -143f)) * vec2<f32>(var_1.a.c.x, _wgslsmith_div_f32(var_1.a.c.x, global1.c.c.x))), var_1.a.a).b, Struct_1(28314u, !(!(var_1.a.b && var_1.a.b)), global1.c.c, _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), 2147483647i) & u_input.c.x, _wgslsmith_f_op_vec2_f32(var_1.a.e + var_1.a.e)), func_5(var_1.a.d, Struct_2(~global1.a, func_4(_wgslsmith_f_op_vec3_f32(global0.xxx + global0.wwy), func_1(false, u_input.c.x, vec2<f32>(var_1.a.e.x, var_1.a.c.x), 1u), vec2<bool>(global1.d.b, false)), func_1(true, -42808i, _wgslsmith_div_vec2_f32(vec2<f32>(-1517f, var_1.a.c.x), var_1.a.e), ~var_1.a.a).b, Struct_1(35206u, !var_1.a.b, func_2().c.e, _wgslsmith_dot_vec3_i32(global1.a.yxw, vec3<i32>(var_1.a.d, var_0, global1.d.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.c.x, -1515f), global1.d.e, vec2<bool>(var_1.a.b, global1.d.b))))), 0u, ~func_3(global1.a.yw, var_0 > 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1021f, global1.d.e.x) + global0.zx), select(vec4<u32>(var_1.a.a, var_1.a.a, 4294967295u, 43558u), vec4<u32>(u_input.a, var_1.a.a, 9694u, u_input.a), vec4<bool>(false, global1.c.b, true, true))).wx).a);
    let var_2 = Struct_3(var_1.a);
    let var_3 = countOneBits(~_wgslsmith_sub_i32(-func_2().b.d, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~firstLeadingBit(~(vec3<u32>(var_2.a.a, global1.c.a, var_2.a.a) | vec3<u32>(0u, global1.c.a, var_2.a.a))), -669f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.c.x * var_1.a.c.x))))));
}

