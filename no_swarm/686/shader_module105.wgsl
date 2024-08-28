struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-238f, global0.b)), global0.b), global0.b);
    global0 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(848f * _wgslsmith_f_op_f32(min(734f, -580f))))), !global0.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 967f));
    var_0 = global0.b;
    var var_1 = min(1i, -1i >> (u_input.b % 32u)) >> (firstLeadingBit(abs(38031u)) % 32u);
    return global0.b;
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = Struct_2(!((!global0.c || select(global0.a, true, true)) & (false | (60097u > u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0)), select(any(!vec4<bool>(global0.a, global0.c, false, global0.c)), global0.a, true));
    let var_1 = select(vec3<bool>(!global0.a, true, !all(!vec2<bool>(global0.c, false))), vec3<bool>(true & all(!vec3<bool>(global0.c, var_0.c, false)), var_0.c, true), select(select(vec3<bool>(any(vec3<bool>(global0.c, true, false)), false, true), vec3<bool>(true, true, true), vec3<bool>(global0.a, var_0.a, !global0.a)), !vec3<bool>(any(vec4<bool>(var_0.c, var_0.a, false, var_0.c)), !var_0.c, true), !select(select(vec3<bool>(var_0.c, global0.c, true), vec3<bool>(true, false, true), var_0.a), select(vec3<bool>(true, var_0.a, var_0.c), vec3<bool>(true, true, global0.c), vec3<bool>(var_0.c, global0.c, var_0.a)), true)));
    global0 = Struct_2(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(-741f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - 176f) * _wgslsmith_f_op_f32(min(arg_0, -247f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), arg_0)), _wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(abs(-1095f))))))), global0.a);
    var var_2 = vec3<f32>(-1439f, _wgslsmith_f_op_f32(-705f - _wgslsmith_f_op_f32(step(507f, global0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))));
    let var_3 = ~(-select(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(41403i, 1i, -29741i, 1i)), vec4<i32>(2147483647i, -65893i, 15146i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-1i) * -vec4<i32>(1i, 12469i, 1i, 8274i), !(!vec4<bool>(false, global0.a, global0.c, var_0.a))));
    return false;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<u32>(0u, arg_0, 31145u);
    return Struct_2(true | (true & func_4(_wgslsmith_f_op_f32(func_3()))), global0.b, global0.c);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = global0.c | global0.c;
    return func_2(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~4294967295u, 4294967295u), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(select(~(i32(-1i) * -2147483647i), ~(i32(-1i) * -9929i), global0.c));
    var var_0 = func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(u_input.b, 0u), ~55436u), max(u_input.a, select(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.b), global0.a))));
    var var_1 = u_input.a;
    let var_2 = Struct_2(global0.a != !func_1(2147483647i).a, func_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(47781i, -45882i), 1i >> (u_input.a.x % 32u)), countOneBits(_wgslsmith_mult_i32(41422i, -37665i)))).b, any(select(!(!vec4<bool>(false, global0.c, var_0.c, var_0.a)), select(select(vec4<bool>(false, var_0.a, global0.c, var_0.c), vec4<bool>(true, false, global0.a, var_0.c), vec4<bool>(var_0.c, var_0.c, global0.c, false)), select(vec4<bool>(false, global0.a, true, var_0.c), vec4<bool>(true, false, global0.c, true), global0.c), func_4(global0.b)), vec4<bool>(true, func_1(2147483647i).a, false, any(vec3<bool>(true, true, global0.c))))));
    var var_3 = 359f;
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(min(u_input.b | 20037u, _wgslsmith_mult_u32(u_input.b, 0u))), firstTrailingBit(~var_1.x) | ~(~4294967295u), u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.a.x), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(30748u, var_1.x, u_input.a.x) & vec3<u32>(0u, u_input.a.x, 66076u), ~vec3<u32>(1u, 24510u, 47468u)))));
    global0 = var_2;
    var_1 = firstLeadingBit(vec3<u32>(var_1.x, max(u_input.a.x, 9775u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(max(19879i << (var_1.x % 32u), countOneBits(2147483647i)), 17326i, ~(~0i), -15366i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-582f)), var_0.b, global0.a)) != var_2.b), u_input.a.xz, var_2.b, 2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b, 1897f), vec2<f32>(var_2.b, var_2.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, -1323f), vec2<f32>(global0.b, -1750f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, global0.b), vec2<f32>(261f, var_2.b), vec2<bool>(false, false))), !vec2<bool>(var_0.c, var_2.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1000f)) + vec2<f32>(var_0.b, var_2.b)))));
}

