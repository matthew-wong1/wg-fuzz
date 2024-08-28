struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1250f, 776f, 1438f, 773f), -516f, vec4<u32>(4294967295u, 4294967295u, 429u, 4294967295u), 1i, -83784i);

var<private> global3: array<Struct_3, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    global3 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.a.yyy, global2.a.xzx, vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a.x, -477f, 1538f), global2.a.xyz)))), global2.a.wzy)), _wgslsmith_f_op_vec3_f32(step(global2.a.wwy, vec3<f32>(-1668f, global2.b, _wgslsmith_f_op_f32(f32(-1f) * -2240f)))));
    return Struct_2(vec4<bool>(true, select(all(vec3<bool>(false, false, true)), !(global2.a.x <= global2.a.x), true), !(-2640f < _wgslsmith_f_op_f32(-1000f + var_0.x)), true), u_input.a);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b)))))), 794f));
    var_0 = -1000f;
    let var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(min(0i, global2.e >> (global2.c.x % 32u)), global2.e), 19211i | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -1i, arg_3.x, u_input.a), abs(arg_0)), ~_wgslsmith_dot_vec2_i32(arg_3.xy, arg_0.yw | vec2<i32>(arg_0.x, u_input.a)), arg_3.x));
    var var_2 = func_2(~(~global2.c.x), u_input.b, _wgslsmith_add_i32(global2.e, -u_input.a)).a;
    return arg_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<bool>(!(arg_0.a.x & arg_0.a.x), arg_0.a.x, (false && all(vec4<bool>(true, false, arg_0.a.x, arg_0.a.x))) | (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-755f)))), false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global2.a, global2.a, arg_0.a)), vec4<f32>(-1000f, global2.b, -113f, -459f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(159f + 1434f), _wgslsmith_f_op_f32(max(812f, global2.b)), _wgslsmith_f_op_f32(trunc(-382f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.a.x, 1024f, 733f) * global2.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(520f, global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.b))))), vec4<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, 1u, global2.c.x, 1u), u_input.b)) | 4294967295u, 15345u, 42128u >> (u_input.b.x % 32u), 11071u), _wgslsmith_mult_i32(-min(36396i, -arg_0.b), _wgslsmith_clamp_i32(arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, -50309i, global2.d), vec4<i32>(-1i, 1i, -2147483647i, -2147483647i)) >> (~10542u % 32u), -34986i)), _wgslsmith_mod_i32(6576i, -(-36194i ^ u_input.a)) << (48931u % 32u));
    var var_2 = global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~var_1.c, vec4<u32>(82729u, var_1.c.x, var_1.c.x, u_input.b.x)) << (_wgslsmith_add_vec4_u32(var_1.c, _wgslsmith_div_vec4_u32(var_1.c, vec4<u32>(33719u, 23578u, var_1.c.x, 0u))) % vec4<u32>(32u)), vec4<u32>(~4294967295u, global2.c.x, global2.c.x, var_1.c.x)), _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(countOneBits(0u), 0u)), 1u)), 18u)];
    var var_3 = arg_0;
    let var_4 = global3[_wgslsmith_index_u32(abs(abs(var_1.c.x)) | _wgslsmith_add_u32(select(~4294967295u, countOneBits(firstTrailingBit(6370u)), false), global2.c.x), 18u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), global2.b, _wgslsmith_f_op_f32(499f - var_1.a.x), _wgslsmith_f_op_f32(max(global2.a.x, 1000f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.a))) * vec4<f32>(_wgslsmith_div_f32(-906f, 618f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -533f), global2.b)), 214f, _wgslsmith_f_op_f32(floor(-920f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-663f, var_1.a.x, true)) * _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)) * 829f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(var_1.b * global2.a.x))))), abs(_wgslsmith_clamp_vec4_u32(global2.c, reverseBits(var_1.c), vec4<u32>(4294967295u, 1u, 1u, 11061u)) ^ _wgslsmith_mod_vec4_u32(u_input.b ^ var_1.c, var_1.c)), var_4.a.b, arg_0.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = vec3<i32>(select(-51004i, arg_0.a.b, arg_2.a.a.x), -1i, _wgslsmith_clamp_i32(-(global2.e >> (4294967295u % 32u)), arg_3.d, _wgslsmith_sub_i32(-arg_1.e, ~_wgslsmith_mod_i32(global2.e, 2147483647i))));
    var var_1 = ~abs(abs(-2147483647i));
    var var_2 = ~(-2147483647i) ^ -_wgslsmith_mult_i32(2147483647i, var_0.x);
    global0 = array<vec2<bool>, 7>();
    global1 = global2.c.x < ~(~func_4(Struct_2(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_2.a.a.x), arg_2.a.b)).c.x);
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> u32 {
    global0 = array<vec2<bool>, 7>();
    var var_0 = arg_2;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_add_u32(arg_2.c.x, ~arg_2.c.x);
    var var_3 = func_5(global3[_wgslsmith_index_u32(arg_0.x, 18u)], func_4(func_3(vec4<i32>(arg_1, 16320i, var_0.d, -2147483647i) ^ vec4<i32>(7875i, u_input.a, global2.e, global2.d), select(vec4<bool>(true, arg_3, false, arg_3), vec4<bool>(false, true, arg_3, arg_3), arg_3), func_2(var_0.c.x, global2.c, arg_2.d), max(vec3<i32>(-47102i, 41431i, 0i), vec3<i32>(global2.d, global2.d, var_0.d)))), Struct_3(func_2(28866u, select(vec4<u32>(4294967295u, u_input.b.x, 0u, var_0.c.x), vec4<u32>(var_0.c.x, u_input.b.x, global2.c.x, u_input.b.x), vec4<bool>(arg_3, true, true, true)), _wgslsmith_mod_i32(global2.e, arg_2.e))), func_4(func_2(reverseBits(4294967295u), firstTrailingBit(vec4<u32>(5542u, arg_0.x, arg_2.c.x, global2.c.x)), func_2(4294967295u, global2.c, 1i).b))) && false;
    return 7377u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-1039f)), 1306f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(-global2.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))), global2.c, 0i, global2.e);
    let var_1 = select(_wgslsmith_div_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(var_0.d, 1i, -15604i), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.d, global2.e, -37947i), vec3<i32>(2147483647i, 7863i, global2.d)) >> (vec3<u32>(var_0.c.x, 4294967295u, 0u) % vec3<u32>(32u)), false), vec3<i32>(2147483647i, global2.e, (i32(-1i) * -8924i) >> (func_1(vec3<u32>(1u, 0u, 3403u), -2147483647i, Struct_1(global2.a, var_0.b, u_input.b, -16905i, global2.e), true) % 32u))), ~(~vec3<i32>(_wgslsmith_clamp_i32(var_0.d, global2.d, global2.e), 1i >> (0u % 32u), func_4(Struct_2(vec4<bool>(true, true, true, true), 2147483647i)).d)), !(!func_2(4294967295u, global2.c, 0i).a.x | all(vec4<bool>(true, false, false, false))));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1120f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + global2.a.x))), func_4(func_2(~(var_0.c.x & 4294967295u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(global2.c, var_0.c), abs(global2.c), abs(var_0.c)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(68193i, global2.e), var_0.d, 2147483647i))).c, i32(-1i) * -1i, var_1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2.a.ywz);
    global2 = func_4(Struct_2(!func_3(vec4<i32>(-32901i, global2.d, -41727i, -22954i), vec4<bool>(false, false, false, true), Struct_2(vec4<bool>(true, false, false, true), 1i), vec3<i32>(427i, global2.d, 1i)).a, func_3(select(vec4<i32>(var_1.x, 11974i, 2147483647i, -3433i) ^ vec4<i32>(12690i, u_input.a, 1i, var_0.e), -vec4<i32>(1i, -1i, var_0.d, global2.e), any(vec4<bool>(false, true, false, false))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(vec4<i32>(-1i, global2.e, u_input.a, 2147483647i), vec4<bool>(true, true, true, true), func_2(0u, vec4<u32>(2517u, 4294967295u, 28857u, global2.c.x), 0i), var_1 >> (var_0.c.xyz % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(var_1, var_1) & vec3<i32>(u_input.a, 2147483647i, global2.e)).b));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(22013u, (var_0.c.x << (27175u % 32u)) >> (1u % 32u)), u_input.b.x, func_4(func_2(22231u, var_0.c, ~var_1.x)).c.x), abs(~select(1u ^ global2.c.x, 45024u, true)), _wgslsmith_mod_u32(u_input.b.x, 1u | ~global2.c.x) | _wgslsmith_dot_vec2_u32(~(~var_0.c.ww), u_input.b.xz));
    var var_4 = abs(countOneBits(var_1.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(1422f, global2.a.x, -283f, var_2.x)))) * var_0.a)));
}

