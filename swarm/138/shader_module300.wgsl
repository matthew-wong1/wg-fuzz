struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 4294967295u, 1718u, 1u);

var<private> global1: array<vec4<bool>, 3>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = arg_1;
    global1 = array<vec4<bool>, 3>();
    global1 = array<vec4<bool>, 3>();
    global1 = array<vec4<bool>, 3>();
    return select(vec2<u32>(var_0.e, ~var_0.d.x), ~firstTrailingBit(max(arg_3.d, vec2<u32>(46163u, 5906u)) & ~arg_3.d), !(false || !arg_1.x));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = u_input.c;
    global1 = array<vec4<bool>, 3>();
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.a), select(vec4<u32>(7429u, u_input.b, 0u, 0u), vec4<u32>(global0.x, global0.x, u_input.b, 1u), false), true), ~vec4<u32>(global0.x, 4294967295u, global0.x, 20191u) << ((vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) << (vec4<u32>(19417u, global0.x, global0.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), !(!(arg_0.x >= u_input.c.x)), arg_0, reverseBits(select(func_3(vec2<bool>(false, true), vec2<bool>(true, true), -72091i, Struct_1(vec4<u32>(1u, global0.x, 11833u, 4294967295u), true, arg_0, vec2<u32>(global0.x, u_input.a), u_input.b)), vec2<u32>(_wgslsmith_add_u32(global0.x, 34051u), _wgslsmith_mod_u32(4294967295u, global0.x)), true)), ~(~(~1u)) | u_input.b);
    let var_2 = Struct_1(var_1.a, false, vec3<i32>(-2147483647i, 67417i, ~(-_wgslsmith_div_i32(9219i, arg_0.x))), ~(~abs(vec2<u32>(global0.x, global0.x))), var_1.a.x);
    global1 = array<vec4<bool>, 3>();
    return ~1u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, func_2(vec3<i32>(min(var_0.c.x, arg_0.c.x), abs(var_0.c.x), _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(arg_0.c.x, 1i, -1i)))), 16265u, ~38322u << ((_wgslsmith_add_u32(50414u, global0.x) << (~var_0.d.x % 32u)) % 32u)), var_0.a ^ _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_0.d.x, arg_0.e, u_input.b, 10912u)), var_0.a));
    var var_1 = _wgslsmith_f_op_f32(172f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-625f, -362f) - 274f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(round(-682f))))));
    var var_2 = Struct_1(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.zy, vec2<u32>(1u, 4137u)), _wgslsmith_mod_u32(4294967295u, 70559u), 1u, firstTrailingBit(var_0.a.x))), var_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-var_0.c.x & ~u_input.c.x, u_input.c.x, 56546i >> ((u_input.a ^ var_0.d.x) % 32u)), var_0.c), ~abs(~vec2<u32>(var_0.d.x, 1u)), ~(~11442u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(-666f + 1826f)))));
    return ~(~(85276u << (1u % 32u)) >> (1u % 32u)) & (abs(_wgslsmith_add_u32(_wgslsmith_div_u32(global0.x, global0.x), global0.x)) & _wgslsmith_add_u32(_wgslsmith_clamp_u32(198u, 1716u, _wgslsmith_div_u32(1u, global0.x)), _wgslsmith_add_u32(abs(u_input.a), var_0.e)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!(!vec3<bool>(true, true, any(vec4<bool>(arg_0.b, false, false, false)))));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(arg_0.e, 15661u), 1u) << (~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(41738u, 1u, 26404u) | global0.yxy), vec3<u32>(28742u | u_input.a, 1u, global0.x)) % 32u);
    global1 = array<vec4<bool>, 3>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(409f)))));
    var_1 = firstTrailingBit(global0.x) << (61357u % 32u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec4<u32>(u_input.a, 15504u, ~global0.x, _wgslsmith_mult_u32(u_input.b, 6609u)) & vec4<u32>(1u, func_1(Struct_1(vec4<u32>(0u, 1u, global0.x, u_input.a), true, vec3<i32>(u_input.c.x, -2432i, u_input.c.x), vec2<u32>(25005u, global0.x), global0.x)), global0.x & 34042u, ~4294967295u), false, firstTrailingBit(-vec3<i32>(33755i, 2147483647i, -1i) & -vec3<i32>(-2147483647i, u_input.c.x, 35003i)), min(_wgslsmith_add_vec2_u32(select(global0.ww, vec2<u32>(9661u, global0.x), vec2<bool>(false, false)), global0.zw), global0.zz), global0.x));
    global0 = _wgslsmith_sub_vec4_u32(~var_0.a, ~(~abs(vec4<u32>(var_0.a.x, u_input.b, var_0.d.x, global0.x))));
    let var_1 = select(!global1[_wgslsmith_index_u32(var_0.d.x, 3u)], !vec4<bool>(any(vec2<bool>(true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false))), var_0.b, var_0.b), vec4<bool>(true, true, !var_0.b, var_0.b));
    global0 = vec4<u32>(3498u, firstLeadingBit(~_wgslsmith_dot_vec2_u32(func_3(var_1.yx, var_1.zx, u_input.c.x, Struct_1(var_0.a, var_0.b, var_0.c, global0.xx, global0.x)), global0.wx >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))), u_input.b, 57071u);
    var var_2 = var_0.a.wz;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), _wgslsmith_f_op_f32(f32(-1f) * -1410f))));
}

