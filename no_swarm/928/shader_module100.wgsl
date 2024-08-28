struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(true, vec2<u32>(1u, 55224u), Struct_1(vec3<u32>(1u, 1u, 13781u), vec3<f32>(1000f, 200f, 229f), vec3<i32>(-1i, i32(-2147483648), 4122i), vec4<u32>(4294967295u, 34041u, 4294967295u, 1u))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(global0.a);
    let var_1 = Struct_3(Struct_2(true, vec2<u32>(0u, _wgslsmith_clamp_u32(~var_0.a.c.d.x, 1u, 4294967295u)), var_0.a.c));
    global0 = Struct_3(global0.a);
    let var_2 = Struct_3(var_0.a);
    let var_3 = var_1.a;
    return var_0.a;
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = ~select(countOneBits(~firstTrailingBit(vec3<i32>(global0.a.c.c.x, global0.a.c.c.x, global0.a.c.c.x))), vec3<i32>(max(u_input.c.x, u_input.d), _wgslsmith_div_i32(global0.a.c.c.x, -1i) ^ -2147483647i, -global0.a.c.c.x), select(vec3<bool>(true, true, true), select(vec3<bool>(global0.a.a, false, true), select(vec3<bool>(true, global0.a.a, false), vec3<bool>(global0.a.a, true, false), vec3<bool>(global0.a.a, global0.a.a, false)), !vec3<bool>(true, global0.a.a, true)), abs(-2147483647i) < _wgslsmith_mod_i32(u_input.c.x, 2147483647i)));
    var_0 = global0.a.c.c;
    var_0 = u_input.b;
    var var_1 = !(!select(vec3<bool>(global0.a.a | global0.a.a, true, true), !(!vec3<bool>(global0.a.a, true, global0.a.a)), !(false && global0.a.a)));
    let var_2 = vec4<i32>(abs(_wgslsmith_div_i32(14971i ^ u_input.b.x, abs(-2537i)) >> (global0.a.c.a.x % 32u)), -1i, -56745i, var_0.x >> (~(~1u) % 32u));
    return var_1.x || (4294967295u < u_input.a.x);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = Struct_3(func_2(vec4<f32>(-1322f, global0.a.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.b.x) * 972f), 467f)));
    let var_0 = select(vec3<bool>(!(func_3(vec2<u32>(20209u, u_input.a.x)) | arg_0), any(vec3<bool>(func_3(u_input.a.xz), true, !global0.a.a)), true), !(!select(vec3<bool>(global0.a.a, global0.a.a, true), !vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, true, true))), vec3<bool>(!global0.a.a, true, true));
    var var_1 = Struct_4(i32(-1i) * -12357i, global0.a.c.c.x);
    var var_2 = vec4<u32>(39801u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(global0.a.c.d, vec4<u32>(31353u, global0.a.c.a.x, 16337u, global0.a.c.a.x)), u_input.a << (u_input.a % vec4<u32>(32u)), !vec4<bool>(var_0.x, arg_0, var_0.x, false)), u_input.a), ~abs(firstLeadingBit(0u)), u_input.a.x & ~(4294967295u >> (u_input.a.x % 32u))) >> (vec4<u32>(27426u, ~min(global0.a.c.d.x, global0.a.b.x) >> (countOneBits(4294967295u) % 32u), _wgslsmith_sub_u32(0u, global0.a.b.x), u_input.a.x) % vec4<u32>(32u));
    let var_3 = firstTrailingBit(select(_wgslsmith_mult_vec3_i32(u_input.b, global0.a.c.c), -global0.a.c.c, select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(-541f >= global0.a.c.b.x, false, !arg_0), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, global0.a.a), var_0.x), select(var_0, vec3<bool>(true, var_0.x, arg_0), var_0), !var_0))));
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = ~(~(~vec2<u32>(~0u, func_1(true))));
    let var_2 = max(~min(abs(vec4<i32>(0i, global0.a.c.c.x, global0.a.c.c.x, -28943i)) & vec4<i32>(u_input.c.x, var_0.x, 46435i, var_0.x), vec4<i32>(-2147483647i, var_0.x, u_input.d, 1i)), ~abs(vec4<i32>(7762i, -2147483647i, global0.a.c.c.x, global0.a.c.c.x)) << (max(select(vec4<u32>(var_1.x, global0.a.b.x, u_input.a.x, global0.a.c.a.x) & vec4<u32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, 658u), _wgslsmith_div_vec4_u32(u_input.a, u_input.a), func_3(vec2<u32>(var_1.x, 4294967295u))), global0.a.c.d) % vec4<u32>(32u)));
    var_1 = min(vec2<u32>(_wgslsmith_mod_u32(~(69818u & global0.a.b.x), 4294967295u), u_input.a.x), vec2<u32>(48664u, global0.a.b.x));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.c.b.x, global0.a.c.b.x, -1000f, -186f), vec4<f32>(global0.a.c.b.x, 1000f, global0.a.c.b.x, global0.a.c.b.x), true)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1627f, global0.a.c.b.x, -1187f, global0.a.c.b.x), vec4<f32>(1232f, global0.a.c.b.x, 1200f, global0.a.c.b.x), vec4<bool>(false, global0.a.a, true, false)))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c.b.x, global0.a.c.b.x, -655f, -1034f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.a.c.b.x, -588f, global0.a.c.b.x) - vec4<f32>(-439f, 987f, 804f, 1180f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c.b.x, global0.a.c.b.x, -287f, global0.a.c.b.x)))))));
    let var_4 = select(-20286i, var_2.x >> (1u % 32u), true);
    var var_5 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(3088f, 153f, global0.a.c.b.x, global0.a.c.b.x), vec4<f32>(var_3.x, global0.a.c.b.x, global0.a.c.b.x, var_3.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(3101f, var_3.x, 219f, 695f)))))))).c;
    global0 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, var_5.b.x, var_3.x, var_5.b.x) - vec4<f32>(-664f, -1187f, var_5.b.x, var_5.b.x))))));
    global0 = Struct_3(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.zx, var_0.x);
}

