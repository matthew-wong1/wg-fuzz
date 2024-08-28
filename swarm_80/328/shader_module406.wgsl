struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true));

var<private> global1: Struct_3;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = select(vec4<bool>(any(vec3<bool>(arg_1.x != u_input.a.x, all(vec4<bool>(global2.x, global1.a, false, false)), true | global1.a)), !(~0i >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i), arg_0)), global1.a, true), vec4<bool>(false, select(any(vec3<bool>(false, false, global1.a)), true, true), global2.x, false), false);
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(15340u, 63667u, 37889u, ~(~1u)), vec4<u32>(firstLeadingBit(countOneBits(~0u)), 55235u, ~(~(~0u)), ~firstLeadingBit(firstLeadingBit(15377u))));
    let var_2 = Struct_1(abs(u_input.a.x), vec2<bool>(true, global2.x), -arg_0, ~arg_0.zw, _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, i32(-1i) * -5489i), 20433i) >> (max(_wgslsmith_div_u32(1u, ~3089u), var_1) % 32u));
    global1 = global0[_wgslsmith_index_u32(var_1, 9u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_3.yww, arg_3.zzy, var_0.x)));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_2(true, select(!select(arg_3.a, 21042u != arg_0.d, arg_3.a), any(vec4<bool>(all(vec2<bool>(global1.a, true)), false, true, true)), select(true, false || global2.x, any(!vec4<bool>(global2.x, global1.a, true, arg_0.b)))), _wgslsmith_f_op_f32(-arg_0.c), ~_wgslsmith_mod_u32(~4294967295u, 4294967295u >> (arg_2.x % 32u)) << (min(~937u & arg_0.d, arg_2.x) % 32u));
    global1 = Struct_3(false);
    var var_1 = arg_0;
    let var_2 = 0u;
    var var_3 = ~abs(reverseBits(abs(_wgslsmith_mult_i32(arg_1.a, arg_1.c.x))));
    return vec2<bool>(false, false);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec4<bool> {
    global2 = func_4(Struct_2(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-861f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 2424f), _wgslsmith_f_op_f32(f32(-1f) * -164f))), abs(0u)), Struct_1(u_input.a.x, !arg_1, select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -33742i, u_input.a.x), vec4<i32>(-20267i, -29689i, -1i, 0i)) | select(vec4<i32>(26462i, -49625i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -38762i, -31814i, u_input.a.x), vec4<bool>(global2.x, arg_0, true, true)), _wgslsmith_div_vec4_i32(func_3(vec4<i32>(-2147483647i, 5598i, u_input.a.x, -1i), u_input.a.xx, 647f, vec4<f32>(250f, -625f, -1773f, 268f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 18574i, u_input.a.x, -36121i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<bool>(false, true, global1.a, arg_1.x), !vec4<bool>(true, false, true, arg_1.x), vec4<bool>(false, false, true, true))), u_input.a.xx, -1i), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 1u, 0u)), vec3<u32>(59974u, 1u, 0u)), select(~vec3<u32>(0u, 64716u, 4294967295u), vec3<u32>(0u, 3146u, 43208u), true)), vec3<u32>(1u, 1u, 1u), min(~(~vec3<u32>(2080u, 42127u, 0u)), vec3<u32>(1u, 1u, 1u))), Struct_3(true));
    global2 = arg_1;
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(1u), 1u), 9u)];
    var var_1 = Struct_2(var_0.a, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1046f, _wgslsmith_f_op_f32(min(2675f, -1198f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1330f), -1000f)), _wgslsmith_div_f32(-1379f, -530f))))), select(reverseBits(abs(abs(15831u))), ~_wgslsmith_mod_u32(countOneBits(32342u), 12144u), true));
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(u_input.a.x >> (var_1.d % 32u), firstTrailingBit(u_input.a.x)), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 2147483647i), min(2147483647i, u_input.a.x)))));
    return select(!select(!vec4<bool>(var_0.a, var_0.a, global1.a, true), select(vec4<bool>(true, global1.a, true, arg_0), select(vec4<bool>(global2.x, false, global1.a, global2.x), vec4<bool>(true, arg_0, true, false), false), !vec4<bool>(true, true, arg_1.x, true)), select(!vec4<bool>(true, true, false, global1.a), vec4<bool>(arg_0, global2.x, arg_1.x, false), vec4<bool>(false, arg_0, true, true))), select(select(select(vec4<bool>(global2.x, true, false, arg_0), !vec4<bool>(true, global1.a, true, arg_0), var_1.d <= 1u), vec4<bool>(var_1.b & var_1.b, true, true, arg_0), vec4<bool>(true, true, true, true)), !vec4<bool>(!global1.a, true, arg_0, true), var_0.a & true), !(!select(vec4<bool>(false, global2.x, false, false), vec4<bool>(true, arg_0, false, global1.a), var_1.b)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = u_input.a;
    global1 = Struct_3(false);
    let var_1 = 0i;
    let var_2 = any(!func_2(true, !vec2<bool>(global1.a, false)));
    global1 = Struct_3(global1.a);
    return _wgslsmith_f_op_f32(abs(-673f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(func_1(26798u, ~vec2<u32>(1u, 1u), vec2<f32>(_wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1658f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1457f), -1527f))))));
    var var_2 = Struct_3(global2.x);
    let var_3 = Struct_2(true, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -424f))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(55009u, 45766u), firstTrailingBit(30498u), 1u), firstLeadingBit(~vec3<u32>(0u, 70001u, 261u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, -646f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.c - -1164f), var_3.c))), -countOneBits(abs(u_input.a)), vec2<u32>(var_3.d, ~0u));
}

