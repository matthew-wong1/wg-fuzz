struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, true, true, false, true, false, true, false, true, false, false, false, true, false, false, false, true, false, true, false, false, true, false, true);

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global3: array<Struct_1, 7>;

var<private> global4: Struct_4 = Struct_4(4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = arg_1.a;
    global3 = array<Struct_1, 7>();
    global2 = array<vec4<bool>, 3>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1346f, 1136f, global1[_wgslsmith_index_u32(u_input.d.x, 25u)]))), _wgslsmith_f_op_f32(-var_0), false)), arg_1.a));
    global2 = array<vec4<bool>, 3>();
    return Struct_4(~28753u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global1 = array<bool, 25>();
    var var_0 = abs(~_wgslsmith_mult_vec2_u32(~max(u_input.d.xz, vec2<u32>(0u, global4.a)), max(vec2<u32>(0u, u_input.d.x) >> (vec2<u32>(110796u, 1u) % vec2<u32>(32u)), ~vec2<u32>(0u, 1u))));
    var var_1 = select(!vec2<bool>(arg_2.b.x < _wgslsmith_dot_vec4_i32(arg_1.b, vec4<i32>(u_input.c, 1i, arg_2.b.x, -25060i)), any(vec3<bool>(global1[_wgslsmith_index_u32(global4.a, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(global4.a, 25u)]))), vec2<bool>(!(!(global1[_wgslsmith_index_u32(u_input.d.x, 25u)] & false)), global1[_wgslsmith_index_u32(65713u << (var_0.x % 32u), 25u)]), !select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(44965u, 25u)]), vec2<bool>(false, false), false), vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]))), true));
    var_0 = u_input.d.xx;
    var var_2 = Struct_4(u_input.d.x);
    return all(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 25u)], var_1.x, global1[_wgslsmith_index_u32(u_input.d.x, 25u)]), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, true, false), vec3<bool>(true, false, var_1.x)), !global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, u_input.d.x == global4.a, any(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(43891u, 25u)]))), !(!var_1.x))) == false;
}

fn func_2(arg_0: bool) -> f32 {
    global1 = array<bool, 25>();
    let var_0 = !vec4<bool>(true, func_3(Struct_3(-34252i), Struct_2(vec3<f32>(-348f, 1429f, -936f), vec4<i32>(2147483647i, 1i, 10202i, 780i), 1927f), Struct_2(vec3<f32>(104f, -1000f, -662f), vec4<i32>(1i, global0.x, u_input.c, global0.x), 719f)) || false, global1[_wgslsmith_index_u32(~(~min(0u, u_input.d.x)), 25u)], func_3(Struct_3(1563i), Struct_2(vec3<f32>(-345f, -301f, 396f), u_input.b, -457f), Struct_2(vec3<f32>(815f, -767f, 996f), vec4<i32>(2147483647i, global0.x, global0.x, -1i), -594f)) == (1i > global0.x));
    global3 = array<Struct_1, 7>();
    global0 = vec2<i32>(19079i, i32(-1i) * -8434i);
    var var_1 = func_1(u_input.d, global3[_wgslsmith_index_u32(50611u, 7u)], u_input.d.wyw);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1066f)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    global2 = array<vec4<bool>, 3>();
    return -_wgslsmith_clamp_i32(-(~_wgslsmith_add_i32(arg_1.b.x, global0.x)), global0.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!global1[_wgslsmith_index_u32(0u, 25u)], true);
    let var_1 = ~(-53206i);
    let var_2 = func_1(~vec4<u32>(global4.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24408u, 51136u, 1u, u_input.d.x), u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, global4.a, global4.a, 59299u), vec4<u32>(u_input.d.x, 4310u, u_input.d.x, 36496u))), 0u, _wgslsmith_add_u32(global4.a, _wgslsmith_mult_u32(8902u, 8192u))), global3[_wgslsmith_index_u32(~4294967295u, 7u)], _wgslsmith_add_vec3_u32(u_input.d.zww, ~vec3<u32>(4294967295u, ~110233u, 4294967295u)));
    var var_3 = func_4(~select(u_input.d.wwz, firstTrailingBit(vec3<u32>(34665u, global4.a, 50503u)), vec3<bool>(var_0.x, true, true)) & ~_wgslsmith_sub_vec3_u32(~vec3<u32>(12267u, global4.a, global4.a), ~u_input.d.zxz), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_f32(372f, -758f), -1059f))), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_1, -2147483647i, var_1, u_input.a), u_input.b) & (-u_input.b ^ vec4<i32>(-15471i, 23949i, var_1, 49628i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-850f, -1000f))))), select(u_input.d.www, vec3<u32>(_wgslsmith_mult_u32(max(var_2.a, 0u), countOneBits(1u)), 1u, global4.a), vec3<bool>(global1[_wgslsmith_index_u32(abs(~27u), 25u)], false, func_3(Struct_3(-1165i), Struct_2(vec3<f32>(1198f, -1193f, -333f), u_input.b, -1000f), Struct_2(vec3<f32>(-623f, 1000f, -506f), u_input.b, 1000f)))), reverseBits(u_input.c));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -187f, -779f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, 1241f, -810f))))) - vec3<f32>(-1223f, _wgslsmith_f_op_f32(func_2(var_0.x)), 375f)), abs(vec4<i32>(countOneBits(_wgslsmith_mod_i32(2147483647i, var_1)), _wgslsmith_sub_i32(global0.x, _wgslsmith_div_i32(-1i, u_input.a)), (u_input.c | var_1) | -var_1, _wgslsmith_add_i32(var_1 >> (var_2.a % 32u), global0.x | global0.x))), 1287f);
    let var_5 = global0.x;
    var var_6 = 2147483647i;
    let var_7 = _wgslsmith_f_op_f32(step(var_4.a.x, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 25u)]))));
    var var_8 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_4.a))), var_4.b.x, _wgslsmith_f_op_f32(trunc(676f)));
}

