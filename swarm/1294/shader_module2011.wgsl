struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 569f, 1361f, -1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 40243i), vec2<i32>(-1i, -1i)), select(_wgslsmith_div_i32(-10928i, -59750i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, -14118i), vec4<i32>(9868i, 2147483647i, 4971i, -6770i)), arg_0.b.x))) >> (vec3<u32>(0u, arg_1.b.x, ~arg_0.a.x & _wgslsmith_sub_u32(select(u_input.a.x, 38200u, arg_2.x), _wgslsmith_add_u32(arg_1.b.x, 19325u))) % vec3<u32>(32u));
    var var_1 = -_wgslsmith_div_i32(firstTrailingBit(-countOneBits(-1i)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -2147483647i, 0i, var_0.x), vec4<i32>(26543i, var_0.x, 2147483647i, var_0.x)), vec4<i32>(2147483647i, 63118i, var_0.x, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, var_0.x, 32981i)) & ~1i);
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.wx, max(vec2<u32>(0u, ~0u), ~vec2<u32>(arg_1.b.x, 1u))), arg_1.b, (_wgslsmith_clamp_i32(var_0.x, min(0i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(22697i, var_0.x, var_0.x, var_0.x), vec4<i32>(4007i, var_0.x, var_0.x, -9394i))) & _wgslsmith_sub_i32(-1i, 39969i)) == var_0.x);
    var var_3 = ~(-1i);
    var var_4 = arg_0;
    return -43531i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(arg_0.x, func_3(Struct_2(u_input.a, vec3<bool>(arg_2, false, false)), Struct_1(vec2<u32>(1u, u_input.a.x), u_input.a, arg_2), !vec3<bool>(true, arg_2, true)) >> (firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 29382u)) % 32u)) & min((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, 0i, 0i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) | -47924i) | -2147483647i, arg_0.x);
    var var_1 = vec4<i32>(arg_0.x, var_0, -13886i, -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, global0.x), _wgslsmith_f_op_f32(-global0.x)), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_2)), _wgslsmith_f_op_f32(f32(-1f) * -1083f), var_2));
    global0 = vec4<f32>(-1000f, 1591f, global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))))));
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), vec2<bool>(true, arg_2)), vec2<bool>(arg_0.x != -40771i, true), 1258f >= _wgslsmith_f_op_f32(abs(global0.x))), select(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), arg_2)), !(!vec2<bool>(arg_2, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), false), select(select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_2), vec2<bool>(true, true)), vec2<bool>(false, arg_2), vec2<bool>(false, arg_2)))), vec2<bool>(all(!vec2<bool>(arg_2, arg_2)) | arg_2, arg_2));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 18740u);
    var_0 = arg_0;
    var_0 = select(reverseBits(arg_0), vec2<i32>(-1i) * -arg_0, !vec2<bool>(any(vec3<bool>(true, true, true)), true));
    var var_2 = select(select(vec4<bool>(true, _wgslsmith_add_u32(22918u, 1u) >= ~u_input.a.x, ~1830u != u_input.a.x, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, arg_0.x <= arg_0.x, true, false), vec4<bool>(true, true, true, true), false)), !(true == any(vec4<bool>(true, true, true, true))));
    return !(var_2.x == any(func_2(vec2<i32>(1i, 0i) & vec2<i32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(310f, global0.x, global0.x, global0.x))), var_2.x, ~35574u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(_wgslsmith_div_i32(max(4604i, 1i), 18217i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-27777i, 2147483647i), -vec2<i32>(2147483647i, 24844i)))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>((u_input.a.x & u_input.a.x) << (~20546u % 32u), ~u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.zwy, u_input.a.xwy >> (u_input.a.wwx % vec3<u32>(32u)))), ~vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zw), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zyw))) % 32u);
    let var_1 = vec3<bool>(any(vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, false)))), !(u_input.a.x == u_input.a.x) || (u_input.a.x >= _wgslsmith_mult_u32(0u, 51110u & u_input.a.x)), !all(vec3<bool>(func_1(vec2<i32>(-7197i, 2147483647i)), any(vec2<bool>(false, false)), any(vec2<bool>(true, true)))));
    let var_2 = vec3<bool>(true, !(_wgslsmith_add_u32(select(1u, u_input.a.x, var_1.x), 4294967295u >> (u_input.a.x % 32u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), min(u_input.a.wx, vec2<u32>(u_input.a.x, 16183u)))), (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1091f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.x))))) && true);
    global0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x));
    var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -1i, -11990i, -16147i)), ~vec4<i32>(1i, 2147483647i, -1i, -1i)), abs(-3229i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7255i, -2576i, 73659i), vec4<i32>(-2147483647i, 22974i, -9545i, -1i)))), max(2147483647i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, 1i, 7372u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(global0.zwy))))), 33410u);
}

