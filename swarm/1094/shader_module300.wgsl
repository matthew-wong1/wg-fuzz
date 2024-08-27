struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 43235u, 68868u);

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(125f, -305f), vec2<f32>(645f, 1000f), vec2<f32>(1995f, 339f), vec2<f32>(-1423f, 819f), vec2<f32>(-1046f, 802f), vec2<f32>(691f, 1235f), vec2<f32>(-707f, -1000f), vec2<f32>(-1417f, -380f), vec2<f32>(-885f, 440f), vec2<f32>(-950f, -1183f), vec2<f32>(-1507f, 743f), vec2<f32>(1492f, -984f), vec2<f32>(1101f, 403f), vec2<f32>(-1039f, -1340f), vec2<f32>(-507f, 1399f), vec2<f32>(487f, 1203f), vec2<f32>(-1400f, 1309f), vec2<f32>(618f, 105f), vec2<f32>(-867f, 447f), vec2<f32>(-989f, -480f), vec2<f32>(-599f, 977f), vec2<f32>(1628f, 230f), vec2<f32>(-121f, 465f), vec2<f32>(2003f, -1125f), vec2<f32>(499f, -140f), vec2<f32>(-390f, 550f), vec2<f32>(-711f, 1518f), vec2<f32>(986f, 861f), vec2<f32>(1075f, -817f), vec2<f32>(-354f, 390f), vec2<f32>(527f, 600f), vec2<f32>(1101f, 379f));

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<f32>(-1661f, -254f, 383f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<u32> {
    let var_0 = !vec3<bool>(true, all(vec4<bool>(true, false, global2.a >= 25819u, any(vec4<bool>(arg_2, arg_2, arg_2, false)))), !arg_2);
    var var_1 = vec4<bool>(all(!vec2<bool>(global2.a <= 24356u, var_0.x)), any(var_0), false, false);
    let var_2 = ~(~(~(~(~vec3<u32>(19751u, 0u, global0.x)))));
    var var_3 = var_1.xyw;
    var_1 = vec4<bool>(true, (!(var_3.x == var_1.x) || false) & true, true, !(u_input.b <= -1i));
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(55030u, global0.x, 92427u))), ~(~vec3<u32>(6137u, global2.a, 4294967295u)), select(_wgslsmith_clamp_vec3_u32(func_3(vec4<i32>(arg_1, arg_1, 0i, u_input.b), Struct_1(0u, vec3<f32>(global2.b.x, arg_0.b.x, -478f)), true, -31615i), _wgslsmith_mod_vec3_u32(vec3<u32>(28353u, global2.a, 0u), vec3<u32>(global0.x, 97840u, 65803u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 63688u, global0.x), vec3<u32>(4294967295u, 1u, 20205u))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0.a, arg_0.a, 22620u)), vec3<u32>(global2.a, 40974u, 40u) >> (vec3<u32>(arg_0.a, global2.a, global0.x) % vec3<u32>(32u)), countOneBits(vec3<u32>(4294967295u, 0u, 22844u))), _wgslsmith_mult_u32(global2.a, arg_0.a) <= firstTrailingBit(global2.a))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(35824u, arg_0.a), ~50642u, ~arg_0.a), vec3<u32>(firstTrailingBit(0u), 0u, select(arg_0.a, 54307u, false)), vec3<u32>(firstTrailingBit(4294967295u), 1u, ~arg_0.a))));
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    global2 = arg_0;
    let var_0 = arg_1;
    return all(select(select(vec4<bool>(1i < var_0, true, any(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(global2.b.x, arg_0.b.x)) != _wgslsmith_f_op_f32(1167f - -1497f)), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)), true), false)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = arg_1.b.x;
    let var_1 = select(vec2<bool>(arg_0, true), !vec2<bool>(false, func_2(Struct_1(global0.x, vec3<f32>(-128f, -790f, -397f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-48248i, u_input.b, u_input.b), vec3<i32>(arg_3, arg_3, u_input.b)))), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, arg_0), true)), !(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), true)), !select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0))));
    global0 = _wgslsmith_clamp_vec3_u32((_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, 1u, arg_2), firstLeadingBit(vec3<u32>(arg_2, 118414u, 0u))) >> ((~vec3<u32>(4294967295u, 4294967295u, 4294967295u) ^ vec3<u32>(1u, 78381u, arg_1.a)) % vec3<u32>(32u))) | vec3<u32>(0u, arg_1.a, global0.x), _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(47028u, global2.a, 57992u))), vec3<u32>(~1u, global0.x, 26440u), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(42214u, arg_2, 14815u) << (vec3<u32>(52607u, arg_2, arg_1.a) % vec3<u32>(32u)), vec3<u32>(arg_1.a, arg_2, 71736u), ~vec3<u32>(0u, 32964u, global2.a)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2, 11082u, arg_1.a), vec3<u32>(4294967295u, global2.a, arg_2)))), vec3<u32>(~(~(4294967295u >> (global0.x % 32u))), 0u, 73321u));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.b.x * -1156f), global2.b.x), arg_1.b.xy);
    var var_3 = Struct_1(global0.x, vec3<f32>(-2321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * 1000f) + arg_1.b.x), _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(min(var_2.x, var_2.x)))));
    return _wgslsmith_f_op_f32(1000f * var_3.b.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> StorageBuffer {
    global2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(max(25137u, global2.a), reverseBits(28288u)) & ~max(arg_1, global0.x), abs(0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(-global2.b))));
    global1 = array<vec2<f32>, 32>();
    var var_0 = Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(global2.b)))));
    var var_1 = Struct_1(~global0.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global2.b.x, global2.b.x)), var_0.b.x, global2.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, -1296f, -1036f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, global2.b.x) - vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)), select(!vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(arg_0.x, arg_0.x, false), false))))));
    var var_2 = ~select(u_input.a.x, ~u_input.b, select(global0.x, var_1.a, select(true, true, false)) >= (abs(global0.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_1), vec3<u32>(1u, var_1.a, 79495u))));
    return StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f - 394f) - 228f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + -1539f)) * 1000f)), ~_wgslsmith_clamp_u32(~1u, 1u, func_3(vec4<i32>(2147483647i, -59101i, u_input.b, u_input.a.x), Struct_1(0u, vec3<f32>(109f, 1274f, global2.b.x)), false, 1i).x), _wgslsmith_f_op_vec2_f32(select(var_0.b.xz, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1087f, var_0.b.x))), select(!(!arg_0), select(select(arg_0, arg_0, arg_0), select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), arg_0.x), 0u != (var_1.a ^ arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((i32(-1i) * -8865i) & u_input.b) << (global0.x % 32u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(283f, global2.b.x)), global2.b.x, -588f, global2.b.x);
    var var_2 = global0.xy;
    let x = u_input.a;
    s_output = func_4(vec2<bool>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_1(true, Struct_1(global2.a, vec3<f32>(global2.b.x, global2.b.x, 393f)), global2.a, u_input.b))) == var_1.x, true), 0u);
}

