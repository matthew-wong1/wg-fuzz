struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(55527u, i32(-2147483648)), Struct_1(32309u, i32(-2147483648)), Struct_1(10875u, 1i), Struct_1(1u, 30882i), Struct_1(4294967295u, -31679i), Struct_1(4294967295u, 1i), Struct_1(0u, 0i), Struct_1(100437u, i32(-2147483648)), Struct_1(54615u, 20632i), Struct_1(26581u, 2147483647i), Struct_1(1u, 59482i), Struct_1(18665u, 23179i), Struct_1(0u, 1i), Struct_1(32712u, i32(-2147483648)), Struct_1(1u, 27060i), Struct_1(29819u, 26041i), Struct_1(4294967295u, 64309i), Struct_1(13966u, 57122i), Struct_1(4294967295u, 58297i), Struct_1(0u, 49213i), Struct_1(4294967295u, -49483i), Struct_1(1u, 0i), Struct_1(130976u, -21504i), Struct_1(4294967295u, -21807i), Struct_1(1u, -14629i), Struct_1(0u, 2147483647i), Struct_1(0u, 37985i), Struct_1(18935u, i32(-2147483648)), Struct_1(1u, 1i), Struct_1(0u, 24796i), Struct_1(74417u, 2147483647i));

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<f32> {
    global0 = arg_3;
    var var_0 = Struct_2(~1u, arg_3.b, _wgslsmith_f_op_f32(step(-714f, _wgslsmith_f_op_f32(round(580f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), -194f, global0.d.x, -2121f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1020f, 392f, arg_3.c, -336f))))), -max(vec3<i32>(~1i, arg_3.b.b, 2147483647i), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(29414i, 2824i, global0.b.b), arg_3.e))));
    global2 = array<vec4<bool>, 22>();
    global0 = arg_3;
    var_0 = Struct_2(21726u, var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) * _wgslsmith_f_op_f32(-global0.d.x)), arg_3.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, 2307f, -1409f, 1000f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_0.c, global0.d.x, 665f), vec4<f32>(1321f, global0.d.x, 1165f, var_0.d.x), global2[_wgslsmith_index_u32(global0.b.a, 22u)])))))), arg_3.e);
    return vec4<f32>(1000f, _wgslsmith_f_op_f32(step(-1073f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))), arg_3.c)))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f - _wgslsmith_f_op_f32(1408f - var_0.c)) - _wgslsmith_f_op_f32(-arg_3.c))), -331f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_2(arg_0.x, arg_2, 760f, _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_add_vec3_u32(arg_1.zyy, vec3<u32>(global0.b.a, 0u, 1u)), _wgslsmith_clamp_u32(arg_0.x ^ _wgslsmith_clamp_u32(global0.b.a, arg_0.x, u_input.a), ~arg_1.x, min(1u, 1228u)), ~arg_0, Struct_2(~(~4294967295u), arg_2, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -1288f, global0.c, global0.d.x) - global0.d))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global0.b.b, u_input.c, global0.b.b), global0.e, vec3<bool>(true, true, true)), vec3<i32>(1i, -4404i, global0.b.b))))), vec3<i32>(~_wgslsmith_sub_i32(u_input.c & 2147483647i, _wgslsmith_add_i32(global0.e.x, -282i)), u_input.c, -1i));
    global0 = Struct_2(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(61675u, 33051u), ~vec2<u32>(arg_1.x, u_input.d))), ~_wgslsmith_sub_u32(~u_input.d, 4294967295u)), global0.b, global0.c, global0.d, select(global0.e, global0.e, true));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(~arg_0.xxx, global0.a, arg_0, Struct_2(0u, Struct_1(arg_2.a, arg_2.b), global0.c, vec4<f32>(-504f, global0.d.x, -1000f, 1735f), global0.e))).x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(arg_1.x, u_input.a, 28602u), 9300u, vec4<u32>(13802u, 0u, arg_2.a, arg_2.a), Struct_2(35540u, arg_2, 134f, global0.d, vec3<i32>(-1i, 1i, global0.b.b)))).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1181f)));
    global2 = array<vec4<bool>, 22>();
    let var_1 = _wgslsmith_f_op_f32(round(var_0.x));
    return Struct_2(~_wgslsmith_clamp_u32(1u, reverseBits(0u), ~global0.a), arg_2, 921f, _wgslsmith_div_vec4_f32(global0.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 1000f)), 801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) + var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))), _wgslsmith_add_vec3_i32(abs(global0.e), vec3<i32>(firstLeadingBit(1i), _wgslsmith_div_i32(arg_2.b, _wgslsmith_sub_i32(23073i, arg_2.b)), arg_2.b)));
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = vec4<i32>(-1i, 27185i, _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(~arg_0.b.b, firstTrailingBit(8778i))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.c, global0.e.x, global0.e.x, 2147483647i)), -vec4<i32>(u_input.c, arg_0.b.b, arg_0.b.b, 33688i)) & _wgslsmith_dot_vec2_i32(global0.e.yy & arg_0.e.xz, vec2<i32>(1i, -2147483647i))), arg_0.b.b);
    var var_1 = arg_0.d;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c)));
    let var_3 = -1214f;
    global0 = func_2(~((_wgslsmith_sub_vec4_u32(vec4<u32>(1769u, arg_0.b.a, 36158u, global0.a), vec4<u32>(0u, u_input.a, global0.a, global0.b.a)) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 63730u), vec4<u32>(global0.a, 0u, 0u, 0u))) >> ((~vec4<u32>(43850u, 1u, 4294967295u, 4294967295u) << (firstLeadingBit(vec4<u32>(19229u, global0.a, global0.a, arg_0.b.a)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a, 4316u, 0u, 8150u) >> (vec4<u32>(0u, 9650u, global0.b.a, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(72181u, 52996u, u_input.d, u_input.a), vec4<u32>(arg_0.b.a, 28769u, global0.a, 47156u))) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global0.a, 0u, arg_0.b.a) >> (vec4<u32>(arg_0.a, u_input.d, 4294967295u, 46334u) % vec4<u32>(32u)), vec4<u32>(arg_0.a, global0.b.a, global0.a, u_input.d)) % vec4<u32>(32u)), func_2(abs(~vec4<u32>(1u, 0u, 24615u, global0.a)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(28368u, global0.a, 36167u, 4294967295u), vec4<u32>(4294967295u, u_input.b, arg_0.b.a, 0u) & vec4<u32>(global0.b.a, 41511u, arg_0.b.a, u_input.a), ~vec4<u32>(u_input.b, arg_0.b.a, 0u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(17372u, u_input.a, global0.b.a, u_input.b), vec4<u32>(0u, global0.b.a, 19931u, 1u), vec4<bool>(true, false, false, false)), firstLeadingBit(vec4<u32>(1u, 0u, 1u, arg_0.b.a)), select(global2[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(false, true, true, false), false)), abs(vec4<u32>(16055u, 4294967295u, 7270u, 16855u) & vec4<u32>(65377u, arg_0.a, 93790u, arg_0.b.a))), arg_0.b).b);
    return global0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = global0.d;
    var var_1 = Struct_2(~global0.a, Struct_1(~global0.b.a, -u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(arg_0.a, global0.a, 94325u), u_input.b, vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b), Struct_2(u_input.d, arg_0, var_0.x, vec4<f32>(global0.c, -439f, -813f, global0.d.x), global0.e))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), all(!arg_1.zxw))), -674f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(min(vec3<u32>(global0.b.a, u_input.b, 1u), vec3<u32>(global0.b.a, 29779u, u_input.b)), 39047u, vec4<u32>(25685u, arg_0.a, global0.a, global0.b.a), func_2(vec4<u32>(108243u, arg_0.a, global0.a, global0.b.a), vec4<u32>(4873u, 0u, 80569u, u_input.d), Struct_1(1u, u_input.c)))))) * vec4<f32>(global0.c, _wgslsmith_f_op_f32(sign(1119f)), -343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1944f - -896f), _wgslsmith_f_op_f32(var_0.x * -737f)))), abs(vec3<i32>(min(1i, global0.b.b), -14016i, -59914i) >> (select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, 1u, 30844u), vec3<u32>(1u, arg_0.a, 55187u)), ~vec3<u32>(4294967295u, 6577u, global0.b.a), true) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_mod_vec2_i32(global0.e.yy, vec2<i32>(~(-1i), ~firstLeadingBit(1i)));
    let var_3 = reverseBits(33174u);
    var var_4 = func_2(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7039u, var_3, var_3, 0u), vec4<u32>(arg_0.a, var_3, var_1.a, global0.a)), reverseBits(select(vec4<u32>(u_input.d, 18563u, var_3, global0.a), vec4<u32>(12329u, 0u, 9681u, global0.b.a), arg_1.x))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~u_input.b, func_4(Struct_2(0u, var_1.b, var_1.c, global0.d, var_1.e))), ~max(var_3, var_3), global0.a, u_input.d), vec4<u32>(var_1.b.a ^ 1u, 1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.a, global0.b.a), arg_0.a), 38006u)), func_2(~vec4<u32>(~global0.b.a, reverseBits(4117u), ~1u, _wgslsmith_add_u32(4294967295u, var_3)), vec4<u32>(0u, var_3 << (4294967295u % 32u), var_3 & 1u, countOneBits(global0.b.a)) >> (vec4<u32>(_wgslsmith_mult_u32(global0.a, 1u), _wgslsmith_add_u32(0u, u_input.b), var_3 | global0.b.a, var_1.b.a) % vec4<u32>(32u)), Struct_1(min(1u, ~27023u), arg_0.b)).b).b;
    return -2228f;
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(firstTrailingBit(u_input.a), Struct_1(1u, 1i), _wgslsmith_f_op_f32(func_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(func_2(vec4<u32>(u_input.d, u_input.b, 0u, 4294967295u), vec4<u32>(global0.b.a, 725u, 1266u, 30441u), global0.b)), 1u), 31u)], select(vec4<bool>(true, true, true, true), !global2[_wgslsmith_index_u32(~48364u, 22u)], select(global0.e.x != -1i, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 537f, _wgslsmith_f_op_f32(-1000f - global0.d.x), func_2(countOneBits(vec4<u32>(global0.b.a, global0.a, global0.a, global0.b.a)), min(vec4<u32>(70522u, 12724u, u_input.a, 10418u), vec4<u32>(global0.a, global0.b.a, global0.a, 1u)), global0.b).c)), min(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.e.xz, ~global0.e.zx), global0.e.x, u_input.c), -(~global0.e)));
    global1 = array<Struct_1, 31>();
    let var_0 = global0.b;
    global0 = func_2(~(~vec4<u32>(var_0.a, global0.b.a, _wgslsmith_div_u32(46839u, u_input.b), var_0.a | 13273u)), ~max(abs(vec4<u32>(var_0.a, var_0.a, 1u, u_input.b)), ~vec4<u32>(global0.b.a, u_input.a, var_0.a, 59945u)) & ~vec4<u32>(select(8998u, 4294967295u, true), func_2(vec4<u32>(var_0.a, 0u, global0.b.a, 4011u), vec4<u32>(47340u, var_0.a, 77660u, 32405u), Struct_1(var_0.a, global0.b.b)).b.a, reverseBits(global0.a), ~global0.b.a), func_2(abs(_wgslsmith_div_vec4_u32(max(vec4<u32>(18216u, var_0.a, u_input.b, 4294967295u), vec4<u32>(u_input.b, global0.b.a, var_0.a, 0u)), vec4<u32>(22143u, u_input.d, 1u, u_input.d))), ~vec4<u32>(_wgslsmith_clamp_u32(1u, 67172u, 25191u), var_0.a & global0.b.a, 1u, 4294967295u), func_2(reverseBits(vec4<u32>(4294967295u, global0.b.a, u_input.a, 1182u)) | min(vec4<u32>(82563u, u_input.d, var_0.a, var_0.a), vec4<u32>(u_input.d, u_input.a, var_0.a, 49951u)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.d, 5419u, 1u, u_input.d), vec4<u32>(u_input.d, var_0.a, u_input.b, 3200u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 2430u, 76387u, 4294967295u), vec4<u32>(var_0.a, u_input.a, var_0.a, 0u)), abs(vec4<u32>(global0.b.a, var_0.a, 74826u, global0.a))), func_2(~vec4<u32>(41383u, global0.b.a, u_input.a, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, u_input.b, 54634u, 32520u), vec4<u32>(1u, var_0.a, var_0.a, var_0.a)), global0.b).b).b).b);
    let var_1 = countOneBits(1i);
    return Struct_1(u_input.a, _wgslsmith_div_i32(1i, 42781i) >> (0u % 32u));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    global1 = array<Struct_1, 31>();
    let var_0 = ~vec3<i32>(-70368i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.b, u_input.c, -53039i, global0.b.b), vec4<i32>(52290i, 30473i, arg_2.b, 35156i))), -1i);
    global0 = func_2(min(_wgslsmith_mod_vec4_u32(min(vec4<u32>(4527u, 1u, 34491u, arg_0.a), vec4<u32>(18165u, global0.a, arg_0.a, global0.a)), ~vec4<u32>(54201u, arg_1.x, arg_0.a, arg_0.a)) << (vec4<u32>(_wgslsmith_sub_u32(4294967295u, 5650u), _wgslsmith_mult_u32(arg_1.x, 21446u), _wgslsmith_clamp_u32(u_input.a, global0.a, 0u), arg_1.x) % vec4<u32>(32u)), ~vec4<u32>(31076u, 4294967295u, global0.b.a, u_input.a) << (select(select(vec4<u32>(u_input.a, global0.a, 39326u, 31034u), vec4<u32>(arg_0.a, 32258u, 0u, 0u), vec4<bool>(arg_3.x, true, true, arg_3.x)), ~vec4<u32>(4294967295u, 0u, arg_0.a, 33552u), arg_3.x | arg_3.x) % vec4<u32>(32u))), vec4<u32>(14910u, ~abs(_wgslsmith_mult_u32(27594u, arg_2.a)), arg_0.a, global0.b.a), func_2(vec4<u32>(reverseBits(~u_input.a), 0u, _wgslsmith_dot_vec2_u32(min(arg_1, arg_1), vec2<u32>(336u, 1u)), _wgslsmith_sub_u32(arg_1.x, global0.b.a) ^ arg_2.a), ~select(vec4<u32>(4294967295u, arg_2.a, u_input.a, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(13228u, arg_2.a, global0.a, 27577u), vec4<u32>(arg_1.x, 1u, 1u, global0.b.a)), true), func_1()).b);
    let var_1 = func_1();
    global1 = array<Struct_1, 31>();
    return func_2(~abs(select(vec4<u32>(global0.b.a, global0.a, 1u, var_1.a), vec4<u32>(arg_1.x, 37054u, 0u, 0u), true)), max(countOneBits(firstTrailingBit(vec4<u32>(4838u, arg_1.x, 45834u, arg_2.a))), countOneBits(vec4<u32>(abs(arg_0.a), arg_1.x & arg_1.x, 4294967295u, _wgslsmith_mult_u32(1u, 51720u)))), Struct_1(u_input.a, (firstLeadingBit(arg_2.b) ^ _wgslsmith_div_i32(var_0.x, 1i)) ^ arg_2.b));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_1, 31>();
    let var_0 = arg_0.b;
    global0 = func_6(func_2(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, u_input.a, 1u, u_input.d) >> (vec4<u32>(u_input.a, 4294967295u, 1u, arg_0.a) % vec4<u32>(32u)))), vec4<u32>(~(~28717u), _wgslsmith_div_u32(~35498u, u_input.d << (u_input.a % 32u)), 39581u | u_input.d, ~(~4294967295u)), var_0).b, ~_wgslsmith_sub_vec2_u32(min(~arg_2, ~arg_2), select(reverseBits(arg_2), firstTrailingBit(vec2<u32>(10721u, u_input.a)), vec2<bool>(arg_1, arg_1))), var_0, vec3<bool>(true, false, !arg_1));
    var var_1 = vec2<bool>(arg_1, arg_1);
    global0 = func_2(vec4<u32>(var_0.a, ~arg_0.b.a & (arg_2.x | ~global0.a), func_1().a, 1u), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(20557u) << (_wgslsmith_clamp_u32(global0.a, u_input.a, 0u) % 32u), arg_0.a | global0.b.a, _wgslsmith_sub_u32(firstTrailingBit(0u), _wgslsmith_div_u32(34613u, arg_0.a))), arg_0.b.a, 4294967295u, var_0.a), Struct_1(3561u, ~arg_0.b.b));
    return Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global0.b.a, var_0.a)), vec2<u32>(~1u, 84664u)), select(~arg_2 ^ vec2<u32>(1u, var_0.a), countOneBits(firstLeadingBit(arg_2)), vec2<bool>(var_1.x & true, arg_1 && false))), abs(arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(18756u, u_input.b, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(11462u, u_input.b, global0.a), vec3<u32>(78849u, global0.b.a, 1u))))), 31u)];
    var_0 = func_7(func_6(func_1(), vec2<u32>(func_2(vec4<u32>(var_0.a, global0.a, 1u, 1u) ^ vec4<u32>(4294967295u, 46672u, var_0.a, global0.b.a), abs(vec4<u32>(45838u, 14729u, var_0.a, 4272u)), func_2(vec4<u32>(global0.a, 4294967295u, 0u, global0.a), vec4<u32>(u_input.d, var_0.a, var_0.a, 0u), global1[_wgslsmith_index_u32(0u, 31u)]).b).b.a, firstTrailingBit(1u) ^ 1u), global0.b, vec3<bool>(true && (22317i <= var_0.b), true || all(global2[_wgslsmith_index_u32(global0.b.a, 22u)]), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))), true, vec2<u32>(~global0.a, 4294967295u), ~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.c, -2147483647i)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(0u, 5071u), vec2<u32>(global0.a, 0u)) % vec2<u32>(32u)), -min(vec2<i32>(u_input.c, -57007i), vec2<i32>(global0.b.b, 4151i))));
    let var_1 = firstTrailingBit(var_0.a);
    var_0 = Struct_1(~u_input.d, countOneBits(var_0.b));
    global2 = array<vec4<bool>, 22>();
    let var_2 = _wgslsmith_f_op_f32(ceil(-1034f));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2 * global0.c)))));
    global2 = array<vec4<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(u_input.c), func_2(vec4<u32>(1u, 4294967295u, 35140u, ~14273u), vec4<u32>(max(var_1, global0.a), 4294967295u, global0.a, 4294967295u), func_6(Struct_1(global0.a, var_0.b), vec2<u32>(0u, global0.b.a), Struct_1(16011u, 1i), vec3<bool>(false, true, false)).b).b.b), func_2(countOneBits(~firstTrailingBit(vec4<u32>(4294967295u, 4009u, 0u, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(71632u, 1954u, var_0.a, u_input.d), vec4<u32>(1u, var_0.a, u_input.b, 16734u)) | ~vec4<u32>(4294967295u, 12393u, u_input.d, 0u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(8883u, u_input.d, var_0.a, var_0.a)), abs(vec4<u32>(global0.b.a, var_1, u_input.a, 1666u)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u & ~u_input.b, func_2(~vec4<u32>(var_0.a, 4294967295u, var_1, 50766u), ~vec4<u32>(4294967295u, u_input.a, 1u, u_input.b), func_6(global0.b, vec2<u32>(global0.b.a, var_1), Struct_1(38643u, u_input.c), vec3<bool>(false, true, false)).b).a), 31u)]).a);
}

