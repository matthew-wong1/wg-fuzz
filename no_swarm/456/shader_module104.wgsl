struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1193f, 270f, 260f), vec3<f32>(341f, 309f, -850f), vec3<f32>(627f, 153f, 1062f), vec3<f32>(173f, -347f, 806f), vec3<f32>(-1146f, 1856f, 1000f), vec3<f32>(726f, -269f, -392f), vec3<f32>(-1293f, -382f, 304f), vec3<f32>(-1396f, -400f, -942f), vec3<f32>(1947f, -380f, -608f), vec3<f32>(-1000f, -246f, -351f), vec3<f32>(-507f, 331f, -425f), vec3<f32>(901f, -1401f, 1000f), vec3<f32>(-1417f, -134f, 154f), vec3<f32>(1206f, 807f, -1943f), vec3<f32>(-1929f, 841f, -1000f), vec3<f32>(1041f, 1270f, -1592f), vec3<f32>(-242f, -1000f, -329f), vec3<f32>(1725f, 1096f, 207f), vec3<f32>(1004f, 1153f, 514f), vec3<f32>(1027f, 378f, 1804f), vec3<f32>(-1000f, -1496f, 1000f), vec3<f32>(752f, 675f, 2176f), vec3<f32>(768f, 890f, 506f), vec3<f32>(-1171f, -222f, 605f), vec3<f32>(-1114f, 392f, -1187f), vec3<f32>(-215f, -435f, -793f), vec3<f32>(690f, -928f, 2071f), vec3<f32>(-1429f, -477f, 267f), vec3<f32>(1024f, -2059f, -111f), vec3<f32>(-415f, -615f, 636f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(arg_1.c.x, arg_1.b || arg_0.b, _wgslsmith_f_op_vec3_f32(select(arg_0.c, _wgslsmith_f_op_vec3_f32(arg_1.c - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(0u, 30u)] - global2[_wgslsmith_index_u32(0u, 30u)])), select(vec3<bool>(arg_0.b && false, false, false), select(!vec3<bool>(arg_0.b, global1.x, arg_1.b), vec3<bool>(true, global1.x, arg_1.b), true), select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(false, arg_0.b, global1.x), arg_0.b)))), vec2<i32>(abs(u_input.a.x), arg_0.d.x));
    var var_1 = Struct_1(arg_1.a, arg_1.b == (var_0.a >= arg_0.c.x), _wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1173f, var_0.a, arg_1.a)))))))), vec2<i32>(-52389i, 0i));
    var var_2 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c.x, 625f, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(0u, 30u)])), vec3<bool>(var_0.b, false, any(vec4<bool>(arg_1.b, false, false, global1.x)))))), vec2<i32>(-(~firstTrailingBit(0i)), var_1.d.x));
    return vec3<i32>(firstTrailingBit(u_input.a.x << (1u % 32u)), 57472i << (0u % 32u), max(~var_1.d.x, ~u_input.a.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = -34357i;
    let var_0 = u_input.a.x;
    let var_1 = true;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(countOneBits(vec3<i32>(19046i, -8211i, var_0))), func_3(Struct_1(-1011f, var_1, arg_0.xyz, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a)), Struct_1(-1075f, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(1140f, arg_0.x, arg_0.x) + vec3<f32>(525f, arg_0.x, arg_0.x)), vec2<i32>(var_0, -1079i) | vec2<i32>(var_0, var_0)))), firstLeadingBit(vec3<i32>(-u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, u_input.a.x), vec2<i32>(u_input.a.x, 16643i)), u_input.a))));
    let var_2 = _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 65587u), true) ^ vec3<u32>(1u, 1u, 1u), !any(global1.xy)), select(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 37961u, 74357u), vec3<u32>(4086u, 1u, 61237u)), vec3<u32>(1u, 1u << (0u % 32u), 0u), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, true), vec3<bool>(var_1, true, true)))), _wgslsmith_mult_u32(reverseBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
    return Struct_1(_wgslsmith_f_op_f32(sign(arg_0.x)), true, global2[_wgslsmith_index_u32(min(50292u, ~_wgslsmith_clamp_u32(firstLeadingBit(49761u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 38121u, var_2, var_2), vec4<u32>(36147u, 4294967295u, 1u, 4294967295u)), select(1u, 16573u, global1.x))), 30u)], (vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_0, u_input.a.x)), var_0) << (vec2<u32>(var_2, _wgslsmith_sub_u32(var_2, 58720u)) % vec2<u32>(32u))) & vec2<i32>(i32(-1i) * -39892i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(var_0, var_0)), u_input.a)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(520f)), _wgslsmith_f_op_f32(max(-485f, 2075f)))), -249f, _wgslsmith_f_op_f32(floor(-1000f)), 1485f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-841f, -286f, 1000f, 515f)))))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), -2540f, true))));
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(min(498f, _wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_f32(814f * 1f)), true, global2[_wgslsmith_index_u32(abs(~min(~1u, 122177u)), 30u)], ~vec2<i32>(-28330i, -var_2.d.x));
    var var_4 = 1u;
    return -vec2<i32>(_wgslsmith_clamp_i32(~u_input.a.x, -(-4229i & var_2.d.x), _wgslsmith_mult_i32(0i, firstLeadingBit(14881i))), 1i);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(select(~countOneBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 83249u)), ~max(vec4<u32>(4294967295u, 45735u, 51417u, 4294967295u), vec4<u32>(0u, 29373u, 0u, 4294967295u)), true), vec4<u32>(abs(~29234u), ~1u, select(abs(0u), _wgslsmith_clamp_u32(0u, 8596u, 4452u), true), _wgslsmith_mult_u32(~21547u, _wgslsmith_dot_vec2_u32(vec2<u32>(10659u, 1u), vec2<u32>(14804u, 10531u))))));
    let var_1 = -u_input.a.x;
    var var_2 = arg_2;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, arg_2.c.x, arg_2.c.x, arg_2.c.x)), vec4<f32>(var_2.c.x, var_2.c.x, arg_2.c.x, var_2.a), vec4<bool>(true, true, false, var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, 2382f, var_2.a) - vec4<f32>(arg_2.a, var_2.a, -347f, 1000f))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -621f))), _wgslsmith_f_op_f32(floor(-1771f)), arg_2.c.x)));
    global2 = array<vec3<f32>, 30>();
    return StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, func_2(vec4<f32>(arg_2.c.x, arg_2.a, 940f, var_3.a)).d.x)), var_3.a, var_3.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global1 = vec3<bool>(!all(vec3<bool>(true, any(vec4<bool>(true, false, true, global1.x)), false | global1.x)), select(true, u_input.a.x >= ~(i32(-1i) * -30872i), true), false);
    var var_1 = 0i;
    global2 = array<vec3<f32>, 30>();
    var var_2 = true;
    let x = u_input.a;
    s_output = func_4(global1.zz, select(vec3<bool>(global1.x, true, all(vec4<bool>(true, global1.x, global1.x, false)) && !global1.x), vec3<bool>(true, any(!vec3<bool>(true, false, global1.x)), global1.x), !(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false), global1.x))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1351f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(2339f, 566f)))))), global1.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 140f, 393f)))), func_1(i32(-1i) * -11657i)));
}

