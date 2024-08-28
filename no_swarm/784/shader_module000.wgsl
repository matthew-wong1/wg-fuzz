struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32;

var<private> global2: array<u32, 3> = array<u32, 3>(106686u, 3429u, 70295u);

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 21>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(-1i);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(583f)))))));
    var var_3 = ~var_1.a;
    global2 = array<u32, 3>();
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    var var_1 = u_input.c.x;
    global2 = array<u32, 3>();
    var var_2 = !all(select(select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, true, true, true), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), !select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), true)));
    global1 = -59164i;
    return Struct_1(countOneBits(-30314i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = max(vec4<i32>(arg_0.a, -reverseBits(arg_1.a), 935i, -_wgslsmith_div_i32(2147483647i, -46927i)) << (u_input.c % vec4<u32>(32u)), ~max(firstLeadingBit(~vec4<i32>(arg_1.a, arg_1.a, arg_0.a, arg_0.a)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 7261i, 1i, -2147483647i), vec4<i32>(arg_0.a, 19561i, arg_1.a, arg_0.a), vec4<i32>(arg_1.a, arg_1.a, arg_0.a, 36733i)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 17934u, 15897u, 31002u), vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 3u)], 0u) >> (vec4<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], 3u)], 3u)], u_input.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.c.x, 0u, u_input.a)), firstLeadingBit(~u_input.c))));
    global4 = array<vec2<f32>, 21>();
    var var_2 = select(var_0.yzx, var_0.xyz, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(false, func_3().x, arg_1.a < var_0.x), vec3<bool>(true, true, func_3().x), false), any(vec4<bool>(true, true, true, true))));
    var var_3 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global2 = array<u32, 3>();
    var var_0 = firstTrailingBit(arg_2.x);
    global3 = _wgslsmith_f_op_f32(-396f * 439f);
    var var_1 = 1470f;
    global4 = array<vec2<f32>, 21>();
    return 128f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(func_2(), func_2()), u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, select(select(vec4<u32>(1u, u_input.c.x, 64370u, u_input.b), u_input.c, true), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(93552u, 3u)], 0u, u_input.c.x)), vec4<bool>(true, true, true, true))), Struct_1(min(1i, arg_0)))), 1346f, 1391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2532f), -864f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1028f + 430f), _wgslsmith_div_f32(1787f, 1285f))), _wgslsmith_f_op_f32(f32(-1f) * -1737f)))));
    let var_1 = -abs(-vec4<i32>(~0i, -28258i, firstLeadingBit(-56192i), -10954i));
    global2 = array<u32, 3>();
    let var_2 = var_0.x;
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), 738f, 820f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(40795i);
    global2 = array<u32, 3>();
    global3 = -814f;
    var var_1 = ~reverseBits(vec4<u32>(reverseBits(0u), abs(~51997u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 0u), u_input.c.xy ^ vec2<u32>(global2[_wgslsmith_index_u32(24486u, 3u)], 1u))));
    var_0 = func_2();
    global1 = -1i;
    var var_2 = min(-vec3<i32>(var_0.a, firstLeadingBit(var_0.a & 57666i), 1i), -_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.a, var_0.a, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(-12262i, var_0.a, var_0.a), vec3<i32>(var_0.a, -2147483647i, -55872i))) & vec3<i32>(_wgslsmith_mod_i32(1i, ~(-2147483647i)), ~countOneBits(-14285i), ~(-25124i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.wzw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1266f, -163f, 1460f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-898f, -582f, -1000f) * vec3<f32>(323f, -1000f, 312f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, -415f, -2156f))) * vec3<f32>(1f, 1f, 1f)), vec3<bool>(true, true, true))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), ~1u, var_1.x), vec3<u32>(70045u, 53688u, 1u)) | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43553u, 3u)], 3u)], 21u)], _wgslsmith_mod_vec2_u32(var_1.xz, ~var_1.yw), u_input.a);
}

