struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: f32 = 1274f;

var<private> global3: u32 = 0u;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = !(global4.x != 29892u);
    let var_0 = arg_0.d;
    let var_1 = arg_0;
    var var_2 = var_1.d;
    let var_3 = arg_0.a.x;
    return var_1.d.a;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> bool {
    global1 = !(reverseBits(-u_input.c >> (~arg_1.x % 32u)) >= ~(-4099i));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1576f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1612f, 1122f)))))), -772f);
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(41566i, u_input.d), vec2<i32>(2147483647i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-10543i, -55807i)), Struct_1(global0.a, false), Struct_2(654f, 847f)))), -1000f, 989f, _wgslsmith_f_op_f32(f32(-1f) * -362f)));
    global2 = _wgslsmith_f_op_f32(abs(1456f));
    return all(!(!select(vec4<bool>(var_0, arg_0, var_0, arg_0), vec4<bool>(arg_0, global0.b, arg_0, arg_0), vec4<bool>(var_0, global0.a.x, global0.b, arg_0)))) | true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1363f, _wgslsmith_f_op_f32(430f - 485f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(285f * var_0.a))))));
    var var_2 = _wgslsmith_div_vec3_u32(max(~arg_3.wwy, reverseBits(_wgslsmith_div_vec3_u32(~arg_3.xxx, select(arg_3.yyw, vec3<u32>(global4.x, 105139u, global4.x), arg_0)))), arg_3.xyy);
    var_0 = arg_1;
    global4 = vec2<u32>(abs(arg_3.x), 1u);
    return _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.d, 7335i)), vec2<i32>(u_input.c, 40916i)), abs(vec2<i32>(u_input.c, 17595i) ^ vec2<i32>(u_input.d, u_input.d))), _wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), -(~vec2<i32>(u_input.d, u_input.c))), Struct_1(select(select(vec2<bool>(true, global0.a.x), vec2<bool>(false, global0.a.x), true), !global0.a, !global0.a), (true | arg_2) || (51743i >= u_input.d)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(-826f - -1000f))))));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = !global0.b;
    var var_1 = _wgslsmith_f_op_f32(func_4(vec3<bool>(all(!vec3<bool>(false, true, arg_0.c.b)), abs(25485u << (global4.x % 32u)) < 99998u, true), Struct_2(205f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(363f - arg_0.d.b), _wgslsmith_f_op_f32(-arg_0.d.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1111f, -1339f, var_0))))), !global0.a.x && (true | func_2(false, _wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 0u, 0u), vec3<u32>(u_input.b, global4.x, u_input.a)))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(global4.x, u_input.a, 16245u, 4294967295u) ^ vec4<u32>(u_input.b, global4.x, u_input.a, global4.x)), vec4<u32>(global4.x, 59742u, _wgslsmith_add_u32(0u, 2143u), u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(110841u, 0u, 24362u, 0u), ~(vec4<u32>(u_input.b, global4.x, u_input.b, global4.x) ^ vec4<u32>(global4.x, 43823u, 0u, 1u)), vec4<u32>(_wgslsmith_add_u32(u_input.a, 86807u), _wgslsmith_div_u32(39483u, u_input.b), ~global4.x, ~global4.x)))));
    var var_2 = arg_0.c;
    var var_3 = true || all(arg_0.c.a);
    var var_4 = arg_0.d.a;
    return -42432i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(func_1(Struct_3(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(25579i, -22263i), Struct_1(vec2<bool>(global0.a.x, false), global0.a.x), Struct_2(-1070f, -572f))) | u_input.c, -u_input.d), func_1(Struct_3(vec2<i32>(-37977i, -2147483647i), select(vec2<i32>(9985i, u_input.c), vec2<i32>(-1i, 37942i), false), Struct_1(vec2<bool>(true, true), global0.a.x), Struct_2(-1908f, -1000f))));
    global0 = Struct_1(select(!(!select(vec2<bool>(global0.b, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(any(!vec3<bool>(global0.b, false, false)), true), !global0.a), global0.a.x);
    global1 = global0.a.x;
    global3 = global4.x;
    global3 = u_input.a & u_input.a;
    var var_1 = Struct_2(1272f, _wgslsmith_f_op_f32(step(-2078f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -229f))))));
    var_1 = Struct_2(var_1.b, var_1.b);
    var var_2 = Struct_2(455f, 366f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(_wgslsmith_clamp_i32(u_input.d, u_input.c, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.c, reverseBits(-2147483647i)), u_input.d | _wgslsmith_mult_i32(firstLeadingBit(1i), firstLeadingBit(0i)), u_input.c, _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.d, u_input.d), 1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.c, -7469i), vec4<i32>(u_input.d, 1i, u_input.d, -28463i))), select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(26651i, u_input.d), true) | ~vec2<i32>(u_input.c, u_input.d)), vec2<i32>(firstLeadingBit(1i), max(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-10228i, -1i, u_input.d), -1i, 35644i), -min(1i, u_input.d))));
}

