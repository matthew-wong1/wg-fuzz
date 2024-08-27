struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(34560u), Struct_2(0u), Struct_2(73419u), Struct_2(22489u), Struct_2(1u), Struct_2(0u), Struct_2(1u), Struct_2(0u), Struct_2(47021u), Struct_2(1u), Struct_2(44572u), Struct_2(50108u), Struct_2(2922u), Struct_2(1u), Struct_2(1u), Struct_2(25402u), Struct_2(88375u), Struct_2(134071u), Struct_2(4294967295u), Struct_2(0u), Struct_2(113257u), Struct_2(8964u), Struct_2(37939u), Struct_2(0u), Struct_2(1u));

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: vec4<f32> = vec4<f32>(995f, -967f, 531f, 658f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<i32> {
    global3 = vec4<f32>(global0.c.x, arg_1.x, -457f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -2483f)));
    var var_0 = 3724u;
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(global0.d.a), ~(~14186u), ~1u);
    var var_1 = global0.d.a;
    global0 = Struct_4(true, 246f, _wgslsmith_f_op_vec2_f32(arg_1.yz * vec2<f32>(arg_1.x, 334f)), global1[_wgslsmith_index_u32(global0.d.a, 25u)], global0.e);
    return vec4<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-8220i, reverseBits(_wgslsmith_mult_i32(0i, -1i))), ~(-19439i)), reverseBits(~(~(i32(-1i) * -2147483647i))), u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_1.e.a.yzx;
    var var_1 = arg_1.d;
    let var_2 = arg_1.d;
    var var_3 = min(vec4<i32>(-1i, -6051i, -77658i, abs(1i)), -reverseBits(u_input.a)) ^ (func_3(abs(select(vec3<u32>(var_2.a, var_2.a, var_2.a), vec3<u32>(var_1.a, var_1.a, var_1.a), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, -192f, arg_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, 649f, global0.b) * vec3<f32>(2563f, arg_1.b, -809f))))) ^ vec4<i32>(max(func_3(vec3<u32>(var_2.a, 15296u, arg_1.d.a), vec3<f32>(542f, arg_1.b, global0.c.x)).x, 2147483647i), -2147483647i, arg_2.x, _wgslsmith_mult_i32(2147483647i, ~global0.e.a.x)));
    var_3 = _wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 53301i, 18344i, -14798i) ^ u_input.a, vec4<i32>(-2147483647i, var_0.x, 36860i, var_3.x) << (global2[_wgslsmith_index_u32(global0.d.a, 25u)] % vec4<u32>(32u)), max(arg_1.e.a, vec4<i32>(arg_0.a.x, u_input.a.x, 4179i, arg_2.x))), _wgslsmith_sub_vec4_i32(reverseBits(arg_1.e.a), vec4<i32>(var_3.x, global0.e.c.x, var_3.x, arg_1.e.c.x))), u_input.a));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a & _wgslsmith_div_u32(var_1.a, 4294967295u), max(~arg_1.d.a, 0u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.a, global0.d.a, 32923u), vec3<u32>(global0.d.a, global0.d.a, var_2.a)))), vec3<u32>(1u, countOneBits(min(30102u, var_1.a)), _wgslsmith_mod_u32(1u, global0.d.a) & max(49217u, var_2.a))), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(~(0u ^ var_1.a), 15267u), global0.d.a));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global0.b;
    var_0 = -190f;
    let var_1 = arg_0.b >> (~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(19698u, 25u)] >> (vec4<u32>(29401u, 28748u, 4294967295u, arg_0.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(15522u, 0u, 18455u, 4294967295u), global2[_wgslsmith_index_u32(0u, 25u)])), ~func_2(Struct_1(u_input.a, global0.a, vec3<i32>(global0.e.c.x, u_input.a.x, u_input.a.x)), Struct_4(global0.e.b, 1521f, global3.wy, Struct_2(arg_0.a), Struct_1(vec4<i32>(global0.e.c.x, u_input.a.x, global0.e.a.x, global0.e.a.x), false, u_input.a.wyz)), u_input.a.zxy)) % 32u);
    var_0 = _wgslsmith_f_op_f32(floor(global0.b));
    let var_2 = vec3<f32>(183f, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.c.x, 116f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(173f)) * global3.x))));
    return Struct_1(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, 65425i, global0.e.a.x, -5022i), -global0.e.a << (global2[_wgslsmith_index_u32(global0.d.a, 25u)] % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, 0i, 1i, global0.e.a.x) << ((vec4<u32>(var_1, var_1, var_1, var_1) << (vec4<u32>(arg_0.a, 47509u, var_1, arg_0.b) % vec4<u32>(32u))) % vec4<u32>(32u))), true, select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, 2147483647i, u_input.a.x)), global0.e.c, false) ^ -select(vec3<i32>(u_input.a.x, -1i, global0.e.c.x), -vec3<i32>(global0.e.a.x, 34978i, 45578i), true));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = vec2<bool>(arg_2.b, !all(!vec4<bool>(global0.a, global0.a, global0.e.b, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0, false)))))) + -820f);
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, global0.b, 276f, global3.x), vec4<f32>(var_1, var_1, arg_3, 680f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1263f, -1358f, global0.b, -1000f)), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 1000f, -1235f, 542f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1909f + arg_3) - _wgslsmith_f_op_f32(global0.b - -580f)), _wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-263f)) + _wgslsmith_f_op_f32(step(global0.c.x, arg_0)))))));
    let var_2 = !vec3<bool>(true, global0.e.b, global0.d.a > global0.d.a);
    let var_3 = Struct_3(4294967295u, global0.d.a);
    return Struct_2(firstTrailingBit(~41656u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    global2 = array<vec4<u32>, 25>();
    var var_1 = ~global2[_wgslsmith_index_u32(var_0.a, 25u)];
    var var_2 = func_4(1009f, global0.e.c.x, func_1(Struct_3(var_1.x, var_1.x)), 743f);
    let var_3 = func_3(abs(firstTrailingBit(var_1.zyx)) >> (firstLeadingBit(abs(vec3<u32>(var_1.x, var_1.x, var_1.x))) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(global3.xww)))), global3.wzx)).x << (4294967295u % 32u);
    global2 = array<vec4<u32>, 25>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c.x, global3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-926f - 2424f) * _wgslsmith_f_op_f32(trunc(-1003f))), 192f)))), 627f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(180f, global0.c.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))) - _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1380f)) * _wgslsmith_f_op_f32(select(-1138f, global0.b, global0.a))))));
    var var_4 = !(!vec2<bool>(true, select(global0.e.b, any(vec2<bool>(true, global0.a)), var_1.x >= 506u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(min(~var_1.x, ~129222u), (global0.d.a & 1u) ^ 5461u)));
}

