struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(31374u, 0u, 1u), vec3<u32>(0u, 4294967295u, 45781u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(56146u, 26030u, 53268u), vec3<u32>(2972u, 24194u, 59619u), vec3<u32>(103231u, 3461u, 0u), vec3<u32>(76059u, 18337u, 0u), vec3<u32>(4294967295u, 56513u, 50048u), vec3<u32>(35844u, 38411u, 1707u), vec3<u32>(4294967295u, 4294967295u, 20875u), vec3<u32>(87250u, 4294967295u, 1u), vec3<u32>(58184u, 4294967295u, 33524u), vec3<u32>(68841u, 1u, 32486u), vec3<u32>(60996u, 12367u, 1u), vec3<u32>(6040u, 16097u, 51557u), vec3<u32>(1u, 10404u, 1u), vec3<u32>(4294967295u, 24757u, 0u), vec3<u32>(61370u, 0u, 1u), vec3<u32>(34909u, 4294967295u, 0u), vec3<u32>(42307u, 36365u, 2950u), vec3<u32>(0u, 9021u, 1u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> vec3<bool> {
    global0 = array<vec3<u32>, 22>();
    let var_0 = arg_0.x;
    let var_1 = Struct_1(firstTrailingBit(u_input.b.x), vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -56431i, -1i), vec4<i32>(73279i, -25032i, 23580i, 0i)), u_input.c.x), 39029i, firstTrailingBit(u_input.a), u_input.a << ((_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yz) & arg_1) % 32u)));
    var var_2 = var_1;
    var_2 = var_1;
    return select(vec3<bool>((false | (var_0 || true)) != true, arg_0.x, all(!select(vec3<bool>(true, arg_0.x, var_0), vec3<bool>(var_0, true, arg_0.x), vec3<bool>(var_0, false, var_0)))), !vec3<bool>(true, !arg_0.x, var_0), vec3<bool>(var_0, any(vec4<bool>(u_input.b.x < var_1.a, var_0, arg_0.x || arg_0.x, true)), var_0));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = ~abs(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-29999i, 9708i, -2147483647i, u_input.c.x), vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x)), -u_input.a)));
    global0 = array<vec3<u32>, 22>();
    let var_1 = Struct_1(u_input.b.x, vec4<i32>(var_0, ~u_input.a, -u_input.a, u_input.a));
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    return -(_wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, var_0, 2147483647i), vec4<i32>(-5006i, -1i, u_input.c.x, var_1.b.x)), -5396i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(25460i, 1i, 1i, var_1.b.x), vec4<i32>(21219i, -25302i, -1i, var_1.b.x)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_1.a, 0u, 1u), u_input.b) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<f32> {
    let var_0 = vec2<u32>(u_input.b.x, abs(~arg_3));
    global0 = array<vec3<u32>, 22>();
    var var_1 = ~arg_0;
    var var_2 = Struct_1(min(4294967295u, 1u) ^ ~(~_wgslsmith_div_u32(arg_3, 1u)), arg_0);
    var var_3 = -31134i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-194f * 509f), _wgslsmith_f_op_f32(step(-915f, -475f)), _wgslsmith_div_f32(-826f, -826f), _wgslsmith_div_f32(1169f, -375f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, 739f, 1000f, -224f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, 1046f, -1000f, -1283f)) - vec4<f32>(-308f, -1031f, -1324f, 1333f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-383f, 601f, 1362f, 2029f), vec4<f32>(-617f, 441f, 351f, 1000f), vec4<bool>(arg_2, true, false, arg_2))), vec4<f32>(1120f, 111f, -242f, 847f)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1202f)), _wgslsmith_f_op_f32(-379f + -161f), _wgslsmith_f_op_f32(round(218f)), _wgslsmith_f_op_f32(1454f - 2151f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = select(func_2(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), arg_0.a), vec3<bool>(false, true && !all(vec2<bool>(false, true)), false), u_input.b.x == ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 0u, 0u, u_input.b.x), vec4<u32>(1u, arg_0.a, arg_1.a, 9660u)), _wgslsmith_clamp_u32(arg_0.a, 1u, 1u)));
    global0 = array<vec3<u32>, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_3(var_0.x), all(vec3<bool>(true, true, true)), false, ~(~45109u))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1663f, -1327f, -1475f, 398f)))))), vec4<f32>(-159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_2, all(vec4<bool>(false, true, false, var_0.x)), var_0.x, arg_0.a)).x), 719f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(594f))))), !(!vec4<bool>(true, any(var_0), true, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1251f, var_1.x, -571f), vec4<f32>(-844f, 1785f, var_1.x, 900f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, var_1.x, -1104f))))))));
    let var_2 = arg_0;
    return var_2;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, _wgslsmith_f_op_f32(select(-1211f, 262f, true))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(3189f, -329f)), _wgslsmith_f_op_f32(1201f * 244f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(875f, -1642f)), false))));
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(select(u_input.b.xy, u_input.b.xw, vec2<bool>(true, false))), u_input.b.zw), _wgslsmith_div_u32(arg_0.a, 4294967295u));
    var_1 = u_input.b.yx >> (~u_input.b.zw % vec2<u32>(32u));
    let var_2 = true;
    var_1 = min(select(~(~(~u_input.b.yw)), u_input.b.xx, select(var_0.x >= _wgslsmith_f_op_f32(-var_0.x), true, false)), ~u_input.b.yz);
    return _wgslsmith_sub_u32(arg_0.a, 10827u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(~max(~u_input.b.x, _wgslsmith_div_u32(4294967295u, 4294967295u)), 1u), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c.x, -13610i, u_input.a >> (u_input.b.x % 32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.a, -27893i, -22297i, u_input.c.x)))));
    var var_1 = u_input.b.xyy;
    global0 = array<vec3<u32>, 22>();
    var_1 = max(global0[_wgslsmith_index_u32(func_5(func_1(var_0, Struct_1(107578u, var_0.b), abs(vec4<i32>(-2147483647i, u_input.a, -19379i, u_input.c.x)), var_0.b)), 22u)], global0[_wgslsmith_index_u32(var_0.a, 22u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(abs(var_1.x) << (u_input.b.x % 32u), min(91448u, func_5(var_0))), _wgslsmith_add_u32(var_1.x, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, 0u), ~var_1.x)), reverseBits(var_0.b.x));
}

