struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), arg_2, -855f, -480f);
    global0 = Struct_1(-428f > _wgslsmith_f_op_f32(ceil(arg_2)));
    global0 = Struct_1(true);
    var var_1 = 723f;
    global0 = Struct_1(false);
    return Struct_1(select(_wgslsmith_mult_u32(u_input.a.x & 81473u, u_input.a.x) == 0u, global0.a, !select(true, arg_1.x < -1i, global0.a)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~(u_input.a.x & u_input.a.x));
    global0 = Struct_1(true | arg_0.a);
    global0 = func_2(35131u, firstTrailingBit(select(vec2<i32>(-11348i, _wgslsmith_mod_i32(2147483647i, -2147483647i)), vec2<i32>(1i, _wgslsmith_clamp_i32(59158i, -1i, 2147483647i)), select(vec2<bool>(true, arg_0.a), arg_1.xy, u_input.a.x == var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-132f)), _wgslsmith_f_op_f32(select(2064f, -557f, true))))))));
    global0 = func_2((~firstTrailingBit(var_0) & u_input.a.x) >> (0u % 32u), _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, firstLeadingBit(-1i)), firstLeadingBit(~(~vec2<i32>(0i, 0i)))), 1061f);
    var var_1 = select(arg_1.yx, !select(!arg_1.yx, arg_1.xx, true), arg_1.x);
    return false;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = select(vec4<bool>(true, false, all(!vec2<bool>(true, arg_0.a)), false), select(select(vec4<bool>(true | global0.a, true | global0.a, false, u_input.a.x != 85897u), vec4<bool>(true, arg_0.a, true, arg_0.a), func_3(func_2(62300u, vec2<i32>(11904i, -1976i), 276f), vec3<bool>(global0.a, false, true), Struct_1(false))), select(!select(vec4<bool>(true, true, false, global0.a), vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.a, arg_0.a, false, arg_0.a)), select(select(vec4<bool>(true, global0.a, false, true), vec4<bool>(true, false, arg_0.a, true), vec4<bool>(global0.a, true, true, global0.a)), !vec4<bool>(true, global0.a, true, arg_0.a), true), global0.a), vec4<bool>(select(true, !arg_0.a, true), func_2(4332u, vec2<i32>(-24184i, 1129i), _wgslsmith_div_f32(797f, -1000f)).a, (2348u | u_input.a.x) >= ~24235u, !(global0.a && true))), func_3(Struct_1(false), select(!select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a, arg_0.a, true), false), select(!vec3<bool>(global0.a, true, false), select(vec3<bool>(arg_0.a, false, true), vec3<bool>(true, false, global0.a), vec3<bool>(false, arg_0.a, arg_0.a)), all(vec4<bool>(arg_0.a, arg_0.a, global0.a, arg_0.a))), all(select(vec4<bool>(global0.a, global0.a, true, arg_0.a), vec4<bool>(true, false, global0.a, global0.a), vec4<bool>(global0.a, arg_0.a, true, false)))), func_2(4294967295u, vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(abs(1427f)))));
    global0 = arg_0;
    var var_1 = !var_0.yx;
    let var_2 = arg_0;
    var var_3 = u_input.a.x;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(0i, 37613i, 29304i, 20444i)), _wgslsmith_add_vec4_i32(reverseBits(-vec4<i32>(-43966i, -7156i, -2147483647i, 28988i)), vec4<i32>(-32901i, _wgslsmith_dot_vec2_i32(vec2<i32>(15148i, -2147483647i), vec2<i32>(2147483647i, 1i)), 1i, _wgslsmith_sub_i32(47313i, 2147483647i)))), countOneBits(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-37320i, -2147483647i, 101998i, 57913i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, ~62298i ^ func_1(Struct_1(global0.a))) >> (select(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.wzw, u_input.a.yzz) << (_wgslsmith_div_u32(u_input.a.x, 7750u) % 32u), all(vec2<bool>(true, true))) % 32u), min(~reverseBits(_wgslsmith_mod_i32(1i, 44083i)), 0i));
    let var_1 = Struct_1(func_3(func_2(u_input.a.x, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -45513i), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f))), !select(select(vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, false, global0.a), global0.a), !vec3<bool>(global0.a, true, global0.a), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, true, global0.a), false)), Struct_1(!global0.a | any(vec3<bool>(global0.a, global0.a, global0.a)))));
    var_0 = -(~(~(-71784i)));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-815f, 1707f)))) - -309f)));
    var var_3 = abs(~u_input.a.yw);
    let var_4 = Struct_1(select(false, !(!(var_3.x <= 63844u)), true));
    let var_5 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), -51374i);
    var_3 = u_input.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_5, ~var_5), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_5), vec2<i32>(-1i, 0i)), i32(-1i) * -1i, ~var_5)), countOneBits(-2147483647i)), var_3.x, -2147483647i, ~abs(u_input.a.xy));
}

