struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 18>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(220f, -1157f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 18u)] + 2260f))), u_input.b.xy);
    var var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-4674i, var_0.b.x, var_0.b.x, 20183i), vec4<i32>(u_input.b.x, u_input.b.x, var_0.b.x, 15097i)), u_input.c), u_input.b) ^ var_0.b.x;
    var_1 = var_0.b.x;
    var var_2 = Struct_5(true, 4294967295u, _wgslsmith_sub_i32(var_0.b.x, u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, var_0.b.x), u_input.b), vec3<i32>(u_input.b.x, ~44903i, 27850i)), 1i));
    var var_3 = Struct_2(636f, _wgslsmith_div_vec2_i32(~vec2<i32>(var_2.d, var_2.d) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(var_2.b, 4294967295u), u_input.a.zy, var_2.a), ~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), countOneBits(~u_input.b.yy) >> (((vec2<u32>(var_2.b, u_input.d) & u_input.a.zy) >> (~u_input.a.zx % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_5(true, min(103137u, var_2.b), u_input.b.x, u_input.c);
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = !(!select(!select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), arg_0.a), vec4<bool>(true, arg_0.a, 1u <= u_input.d, false != arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), select(vec4<bool>(false, false, arg_0.a, arg_0.a), vec4<bool>(false, true, arg_0.a, false), vec4<bool>(false, true, arg_0.a, arg_0.a)), func_2(297f, 967f, vec2<f32>(arg_2, arg_1)).a)));
    let var_1 = arg_0;
    var var_2 = vec4<bool>(false, any(!(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0.a), var_0.x))), all(!var_0.www), false);
    var var_3 = _wgslsmith_f_op_f32(round(arg_1));
    let var_4 = select(!var_2.zz, var_2.xx, select(vec2<bool>(true, true), !var_0.wy, var_1.a));
    return Struct_4(-_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(var_1.c), 1i), vec2<i32>(2147483647i, -2147483647i)), countOneBits(vec2<u32>(u_input.a.x, 26127u) ^ u_input.a.xz), _wgslsmith_f_op_f32(exp2(1f)), u_input.b);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(34586u, 4294967295u, 45294u, 4294967295u), vec4<u32>(1u, arg_1.x, arg_0.b.x, 0u), vec4<u32>(983u, u_input.d, arg_0.b.x, arg_0.b.x)), vec4<u32>(59714u, arg_0.b.x, u_input.d, 4294967295u), abs(vec4<u32>(1u, 47969u, arg_1.x, 3890u)))), ~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 10062u), vec4<u32>(arg_1.x, arg_1.x, 123878u, arg_1.x)), countOneBits(vec4<u32>(u_input.a.x, u_input.d, arg_0.b.x, 1u)), vec4<bool>(true, true, true, true))));
    let var_1 = vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(false, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), u_input.c == -1i))), !(!(select(true, true, false) & any(vec4<bool>(true, false, true, true)))), all(vec2<bool>(true, func_2(global1[_wgslsmith_index_u32(u_input.d, 18u)], arg_0.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c, arg_0.c)))).a)));
    global0 = all(select(var_1, var_1, var_1.x));
    let var_2 = !(!any(vec3<bool>(func_2(969f, 667f, vec2<f32>(828f, global1[_wgslsmith_index_u32(17118u, 18u)])).a, !var_1.x, arg_0.b.x >= 13422u)));
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(2089f - global1[_wgslsmith_index_u32(1u, 18u)]))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_3 {
    let var_0 = 865f == _wgslsmith_f_op_f32(func_4(func_3(func_2(global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(37536u, 18u)], -904f) + vec2<f32>(986f, 1424f))), 1438f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 18u)] + -1222f), arg_1)), u_input.a.xy));
    let var_1 = select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, 55962u), u_input.a.x), ~1u) >> (u_input.d % 32u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(max(~4294967295u, func_2(255f, global1[_wgslsmith_index_u32(4294967295u, 18u)], vec2<f32>(-1211f, -2258f)).b), ~u_input.d << (_wgslsmith_sub_u32(47139u, 0u) % 32u), min(u_input.a.x, u_input.d) & ~u_input.a.x)), false);
    global1 = array<f32, 18>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(ceil(arg_1)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 434f)))))));
    let var_3 = Struct_2(arg_1, vec2<i32>(1i, 1i));
    return Struct_3(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    let var_0 = func_1(_wgslsmith_sub_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, 2846i, 1i), vec4<i32>(1i, -52775i, u_input.c, 17293i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.b.x, u_input.c), vec4<i32>(-47834i, 18126i, 1i, u_input.c))) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(29378u, u_input.d, 1u, u_input.a.x), vec4<u32>(33142u, u_input.a.x, 37021u, 41423u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(max(min(vec4<i32>(2147483647i, 2427i, -8979i, 2147483647i), vec4<i32>(10824i, u_input.b.x, u_input.c, -202i)), vec4<i32>(-11007i, 25715i, 1i, 2147483647i)), reverseBits(vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.c)))), -215f);
    global1 = array<f32, 18>();
    var var_1 = -2147483647i;
    var var_2 = ~(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.a.b.x, u_input.b.x, u_input.b.x), reverseBits(vec3<i32>(u_input.b.x, var_0.a.b.x, u_input.b.x)), func_3(Struct_5(true, 4294967295u, u_input.c, -18105i), _wgslsmith_f_op_f32(step(var_0.a.a, -1279f)), _wgslsmith_f_op_f32(f32(-1f) * -407f)).d));
    var var_3 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true)));
    global0 = all(vec4<bool>(var_3.a.x, !var_3.a.x, true, -(u_input.b.x ^ 1i) <= (func_3(Struct_5(var_3.a.x, 4294967295u, u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(0u, 18u)], var_0.a.a).d.x >> (reverseBits(1u) % 32u))));
    global1 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

