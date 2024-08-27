struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(29163i, i32(-2147483648), 2147483647i, -1i, 2147483647i, -1i, -41853i, 11913i, 13581i, 16412i, 2147483647i, 1i, i32(-2147483648), -1i, 0i, 17941i, 2147483647i, i32(-2147483648), 2147483647i, 8174i, 6600i, 2147483647i, 2147483647i);

var<private> global1: array<u32, 19>;

var<private> global2: Struct_1 = Struct_1(false, vec4<f32>(119f, -880f, 221f, -205f), vec2<i32>(30630i, 2147483647i));

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global2 = Struct_1(true, arg_1.b, vec2<i32>(~reverseBits(i32(-1i) * -1i), ~_wgslsmith_mult_i32(global2.c.x, i32(-1i) * -61302i)));
    global1 = array<u32, 19>();
    var var_0 = 1u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(global2.b.x, 1964f)))), _wgslsmith_f_op_f32(select(-118f, -1296f, true)), global2.b.x);
    var var_2 = _wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(-vec3<i32>(9473i, global0[_wgslsmith_index_u32(44100u, 23u)], -2147483647i), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i) ^ vec3<i32>(-1i, global2.c.x, global0[_wgslsmith_index_u32(0u, 23u)])) ^ abs(reverseBits(vec3<i32>(global2.c.x, global2.c.x, 2147483647i))), vec3<i32>(2855i, 0i, _wgslsmith_dot_vec2_i32(-global2.c, abs(-global2.c))));
    return Struct_2(global2.a, arg_1.b);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = ~global2.c.x;
    let var_1 = vec4<f32>(1615f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(1201f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f)));
    var var_2 = Struct_2(global2.a, global2.b);
    var var_3 = Struct_1(any(vec2<bool>(true, true)) | true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 2258f))), _wgslsmith_div_f32(-149f, var_1.x), -643f, _wgslsmith_f_op_f32(ceil(-1000f))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.c.x, 1i), ~vec3<i32>(global2.c.x, global0[_wgslsmith_index_u32(global3.x, 23u)], 53731i)) >> (~5885u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~72229u, _wgslsmith_clamp_u32(45375u >> (global1[_wgslsmith_index_u32(1u, 19u)] % 32u), ~u_input.a.x, global3.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global1[_wgslsmith_index_u32(54340u, 19u)]), vec2<u32>(16908u, 0u))), 23u)]));
    var_0 = reverseBits(global2.c.x >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31836u, 19u)], 19u)])), ~0u) % 32u));
    return !select(!vec2<bool>(false || var_2.a, select(false, global2.a, false)), select(!select(vec2<bool>(true, true), vec2<bool>(global2.a, true), vec2<bool>(var_2.a, true)), vec2<bool>(all(vec3<bool>(var_2.a, global2.a, var_2.a)), true), vec2<bool>(select(false, true, true), false)), var_2.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = func_2(!(arg_1.a | (-1i > arg_0.x)), Struct_2(all(!vec4<bool>(global2.a, false, global2.a, global2.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + -1387f)), arg_1.b.x, _wgslsmith_f_op_f32(-global2.b.x), -2457f)), arg_1.b.x);
    var var_1 = ~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x);
    var var_2 = Struct_1((~global1[_wgslsmith_index_u32(1u, 19u)] == 14837u) | global2.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-580f - 845f), arg_1.b.x, arg_1.b.x, 1563f))), arg_1.c);
    var_1 = 109962u;
    let var_3 = func_3(arg_1.b.x);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(29782u, 0u, global3.x), vec3<u32>(0u, global3.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37180u, 19u)], 19u)])), u_input.a.x) << (u_input.a.ywy % vec3<u32>(32u)), ~u_input.a.yzx), ~func_1(firstTrailingBit(global2.c), Struct_1(global2.a, global2.b, vec2<i32>(global2.c.x, global0[_wgslsmith_index_u32(1u, 23u)]))) >> (global1[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(abs(1u), ~u_input.a.x), global1[_wgslsmith_index_u32(global3.x, 19u)], func_2(all(vec4<bool>(global2.a, global2.a, false, true)), Struct_2(global2.a, vec4<f32>(global2.b.x, -1286f, global2.b.x, -1512f)), _wgslsmith_f_op_f32(-global2.b.x)).a), 19u)] % 32u), global3.x);
    var var_0 = Struct_1(global2.b.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + 374f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b + global2.b)))), _wgslsmith_f_op_vec4_f32(func_2(all(vec4<bool>(false, global2.a, global2.a, global2.a)), Struct_2(global2.a, global2.b), _wgslsmith_f_op_f32(global2.b.x * global2.b.x)).b + vec4<f32>(-519f, global2.b.x, -1246f, -703f))), global2.c);
    var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(var_0.c, Struct_1(true, vec4<f32>(-222f, global2.b.x, global2.b.x, -672f), vec2<i32>(-1i, global0[_wgslsmith_index_u32(10371u, 23u)]))), _wgslsmith_add_u32(61255u, 0u), _wgslsmith_sub_u32(4294967295u, firstTrailingBit(global3.x))), 23u)] == var_0.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1051f * global2.b.x), _wgslsmith_f_op_f32(step(global2.b.x, -1633f)), var_0.b.x, _wgslsmith_f_op_f32(trunc(-1215f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1660f, 114f, -843f, global2.b.x)))))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -13171i) ^ -vec2<i32>(global2.c.x, 54364i), -vec2<i32>(1i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 23u)]) << (min(global3.yz, vec2<u32>(51155u, 0u)) % vec2<u32>(32u)))));
    let var_1 = Struct_1(true, var_0.b, -(vec2<i32>(global2.c.x, var_0.c.x) >> (vec2<u32>(u_input.a.x, ~1u) % vec2<u32>(32u))));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~31688u, 0u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -380f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(552f, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1233f, -100f, global2.b.x), var_0.b.zxx))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, var_0.b.x, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(-var_0.b.zxz), vec3<bool>(1u < global1[_wgslsmith_index_u32(0u, 19u)], !func_3(-430f).x, func_2(var_1.a, func_2(true, Struct_2(var_1.a, vec4<f32>(var_1.b.x, 186f, var_0.b.x, 793f)), global2.b.x), var_0.b.x).a))), vec3<i32>(var_0.c.x, -(var_1.c.x & -2147483647i), _wgslsmith_div_i32(-40187i, global2.c.x) & global2.c.x), _wgslsmith_f_op_f32(exp2(var_0.b.x)));
}

