struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 23>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    var var_0 = vec2<i32>(global0.a, global0.a) >> (~(~(~reverseBits(vec2<u32>(u_input.a, 22549u)))) % vec2<u32>(32u));
    let var_1 = global0.b.a;
    var var_2 = Struct_4(global0.b.a, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 29669u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 6077u, u_input.a), vec4<u32>(41319u, u_input.a, u_input.a, u_input.a)))), -456f);
    return -815f;
}

fn func_3() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.a, reverseBits(u_input.a)), min(vec3<u32>(0u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) << (~(~vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u)), !global2.x), abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(select(vec3<u32>(52351u, 49453u, u_input.a), vec3<u32>(42328u, 1u, 1u), vec3<bool>(global2.x, true, global2.x)))))), 23u)];
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -8666i, 1i), vec3<i32>(global0.a, global0.a, 8353i)), vec3<i32>(1i, -28262i, global0.a), all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 23u)]))), reverseBits(vec3<i32>(2147483647i, 1i, 8760i) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a & 4156i, 1i, 0i), reverseBits(~vec3<i32>(global0.a, global0.a, global0.a)))), global0.a);
    let var_2 = vec3<f32>(-276f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(632f)))), _wgslsmith_f_op_f32(-global0.b.a));
    var var_3 = !vec3<bool>(!any(vec3<bool>(false, global2.x, true)), all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], true, global2.x, global2.x)), true);
    global1 = array<bool, 23>();
    return var_3.x;
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = true;
    global0 = Struct_3(i32(-1i) * -abs(global0.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(max(arg_0.a, arg_0.c))) * 805f)));
    let var_1 = -(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(global0.a, global0.a, global0.a)), vec3<i32>(global0.a, global0.a, global0.a) | vec3<i32>(-35596i, global0.a, global0.a)));
    let var_2 = vec3<bool>(true, func_3(), true);
    let var_3 = global0.b;
    return vec4<bool>(false, (global2.x | !(!global1[_wgslsmith_index_u32(u_input.a, 23u)])) && global1[_wgslsmith_index_u32(44991u, 23u)], ~_wgslsmith_mult_u32(u_input.a << (arg_0.b % 32u), 4294967295u >> (u_input.a % 32u)) > abs(arg_0.b), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = 28848u;
    let var_1 = _wgslsmith_clamp_u32(~(~select(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 18686u, u_input.a), vec3<u32>(22231u, 4294967295u, u_input.a)), global1[_wgslsmith_index_u32(~u_input.a, 23u)])), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(27009u, 11328u)), max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(21880u, 0u)), vec2<u32>(1u, u_input.a))), ~min(vec2<u32>(21506u, 0u), vec2<u32>(u_input.a, 26682u)) ^ vec2<u32>(54265u, 25269u)), 81033u);
    global1 = array<bool, 23>();
    global0 = Struct_3(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(0i, global0.a, 37425i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, global0.a, global0.a), vec3<i32>(30798i, global0.a, -1i)), arg_0.x), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-15i, global0.a, global0.a)), -(vec3<i32>(global0.a, global0.a, -2147483647i) ^ vec3<i32>(0i, global0.a, global0.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, global0.a, global0.a) >> (vec3<u32>(u_input.a, 25181u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.a, -3711i), vec3<i32>(global0.a, 1i, 28552i)), -vec3<i32>(global0.a, global0.a, global0.a)))), arg_1);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))) * arg_1.a));
    return Struct_4(-1952f, u_input.a, -1607f);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    var var_0 = select(func_2(func_4(select(vec4<bool>(false, true, false, global2.x), func_2(Struct_4(-1000f, u_input.a, arg_0.a)), false), Struct_2(_wgslsmith_div_f32(1428f, -557f)))).zzx, vec3<bool>(all(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_2.b, 23u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 23u)], true, global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2.b, 23u)], false)), true)), all(global2.xz), all(!vec2<bool>(global2.x, false))), true);
    global2 = !func_2(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - -279f)), arg_2.b, _wgslsmith_f_op_f32(-647f - -357f))).zww;
    global1 = array<bool, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)), _wgslsmith_div_f32(1254f, arg_2.c), _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(func_1()))))));
    global2 = vec3<bool>(true, true, false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_1()), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1094f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1189f)))), _wgslsmith_f_op_f32(-global0.b.a)));
    var_0 = func_5(func_4(func_2(Struct_4(global0.b.a, abs(u_input.a), _wgslsmith_f_op_f32(global0.b.a - global0.b.a))), Struct_2(_wgslsmith_f_op_f32(trunc(-1176f)))), global0.b, Struct_4(_wgslsmith_f_op_f32(select(1280f, _wgslsmith_f_op_f32(-var_0.a), select(global1[_wgslsmith_index_u32(var_0.b, 23u)], false, true))), 0u, _wgslsmith_f_op_f32(max(-742f, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(265f, var_0.a))), 789f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1067f))))), _wgslsmith_f_op_f32(func_1())));
}

