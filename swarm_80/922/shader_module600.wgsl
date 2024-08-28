struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 23>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, u_input.a.x, -16978i, global0.a.x), vec4<i32>(global0.a.x, 2147483647i, 1i, -20162i)), i32(-1i) * -24118i) & 0i, -6479i ^ ~(~global0.a.x), -_wgslsmith_dot_vec2_i32(-u_input.a.yy, select(vec2<i32>(u_input.a.x, u_input.a.x), global0.a.yz, vec2<bool>(false, true)))), global0.b);
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(~global1[_wgslsmith_index_u32(0u, 23u)]), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(10772u, 2475u), vec2<u32>(0u, 0u)))), 4294967295u, ~1u) | vec3<u32>(13364u, ~3898u & _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(36121u, 62991u, 31377u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_u32(select(458u, 1u, global0.b), abs(69048u), 1u));
    global0 = Struct_1(global0.a, any(vec4<bool>(true & (-2147483647i >= global0.a.x), global0.b, 0u >= var_0.x, true)));
    let var_1 = Struct_1(u_input.a, !global0.b);
    var var_2 = Struct_2(min(vec3<u32>(~_wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(var_0.x, var_0.x))), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 42721u, 0u)), select(var_0, var_0, vec3<bool>(true, global0.b, global0.b)))), ~min(var_0, var_0 | vec3<u32>(var_0.x, var_0.x, var_0.x))));
    return !vec4<bool>(true, true, global0.b, var_1.b);
}

fn func_2(arg_0: bool) -> i32 {
    global1 = array<vec2<u32>, 23>();
    global1 = array<vec2<u32>, 23>();
    var var_0 = func_3();
    global1 = array<vec2<u32>, 23>();
    var var_1 = vec2<bool>(true, true);
    return global0.a.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(func_2(false), 1i, _wgslsmith_sub_i32((global0.a.x & global0.a.x) << (0u % 32u), ~(_wgslsmith_mult_i32(58081i, global0.a.x) >> (_wgslsmith_clamp_u32(8766u, 12590u, 0u) % 32u))));
    var var_1 = 2316f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-452f)));
    global0 = Struct_1(vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -u_input.a.x, -global0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-global0.a.x, _wgslsmith_sub_i32(global0.a.x, 2147483647i)), vec2<i32>(-global0.a.x, firstTrailingBit(-2147483647i))), reverseBits(global0.a.x)), !arg_0);
    global0 = Struct_1(select(global0.a, -u_input.a >> (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(15906u, 4294967295u, 4294967295u)), firstTrailingBit(vec3<u32>(4294967295u, 22137u, 66088u))) % vec3<u32>(32u)), !func_3().x), false | !arg_0);
    return Struct_1(select(~vec3<i32>(-23535i, _wgslsmith_mult_i32(-73370i, -20192i), -1i), vec3<i32>(_wgslsmith_dot_vec3_i32(~global0.a, ~u_input.a), _wgslsmith_mod_i32(global0.a.x, global0.a.x) & 0i, -16906i), true), all(!(!select(vec4<bool>(true, global0.b, arg_0, arg_0), vec4<bool>(true, arg_0, false, global0.b), vec4<bool>(false, false, arg_0, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(arg_1.x, arg_1.x, _wgslsmith_dot_vec4_u32(arg_1, ~arg_1 & vec4<u32>(5863u, 1u, arg_1.x, 0u))));
    var var_1 = any(!vec4<bool>(_wgslsmith_f_op_f32(floor(-718f)) <= _wgslsmith_f_op_f32(ceil(-1458f)), any(vec2<bool>(true, true)), arg_2.b, arg_0.b | true));
    var var_2 = vec3<i32>(~u_input.a.x << (arg_1.x % 32u), ~countOneBits(arg_0.a.x), -2147483647i);
    let var_3 = vec4<bool>(true, arg_0.b, all(select(vec3<bool>(false, true, true), select(select(vec3<bool>(global0.b, false, arg_0.b), vec3<bool>(true, arg_0.b, global0.b), vec3<bool>(false, arg_0.b, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), !vec3<bool>(true, true, arg_2.b)), arg_2.b)), false);
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1336f, -1000f, -1458f, -832f), _wgslsmith_f_op_vec4_f32(vec4<f32>(325f, 184f, 1128f, 400f) - vec4<f32>(-602f, -1000f, -1000f, -489f)), !vec4<bool>(arg_2.b, true, arg_0.b, false)))))));
    return func_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 23>();
    global0 = func_4(Struct_1(~reverseBits(vec3<i32>(-2147483647i, 13769i, 7158i)), all(!vec3<bool>(global0.b, false, global0.b))), ~vec4<u32>(1u, 1u, 1u, 1u), func_1(global0.b));
    global1 = array<vec2<u32>, 23>();
    global0 = Struct_1(func_4(Struct_1(global0.a | (vec3<i32>(global0.a.x, 2147483647i, u_input.a.x) & vec3<i32>(0i, 2147483647i, 76519i)), false), ~vec4<u32>(countOneBits(1u), firstTrailingBit(39915u), min(1u, 14762u), ~1u), func_4(Struct_1(~global0.a, true), vec4<u32>(min(28089u, 1u), ~0u, abs(1u), 15894u), Struct_1(u_input.a & u_input.a, select(global0.b, global0.b, global0.b)))).a, global0.b);
    let var_0 = func_4(func_1(!(!global0.b)), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global0.a.x, 10178i), global0.a), _wgslsmith_clamp_i32(2147483647i, 54239i, 2147483647i), global0.a.x), -(vec3<i32>(-28854i, 1i, 1i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), ~(global1[_wgslsmith_index_u32(1u, 23u)] >> (firstTrailingBit(global1[_wgslsmith_index_u32(0u, 23u)] >> (global1[_wgslsmith_index_u32(4294967295u, 23u)] % vec2<u32>(32u))) % vec2<u32>(32u))), ~(~global0.a.x >> (1u % 32u)) | -29662i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1445f, 1235f), 1f) + _wgslsmith_div_f32(-1171f, -995f)), -1384f, -1856f));
}

