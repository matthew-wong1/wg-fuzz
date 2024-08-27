struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: Struct_3 = Struct_3(Struct_2(-942f, vec2<bool>(true, true), 11637u), vec4<u32>(36183u, 47711u, 12261u, 1u), Struct_1(-12262i));

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, 30592i, ~global1.c.a << (_wgslsmith_sub_u32(4294967295u, global2.x) % 32u), -4014i) ^ select(-vec4<i32>(0i, 21454i, 1i, 0i), -firstTrailingBit(vec4<i32>(global1.c.a, global1.c.a, -4276i, -1i)), global1.a.b.x), _wgslsmith_clamp_vec4_i32(-reverseBits(vec4<i32>(2147483647i, -6032i, global1.c.a, -1i)), -min(vec4<i32>(global1.c.a, -37740i, 2147483647i, -81034i), vec4<i32>(global1.c.a, -38147i, global1.c.a, 69519i)), ~(-vec4<i32>(-11400i, 4018i, global1.c.a, 32871i) & _wgslsmith_add_vec4_i32(vec4<i32>(global1.c.a, -2147483647i, 8968i, -2147483647i), vec4<i32>(global1.c.a, global1.c.a, global1.c.a, -2147483647i)))));
    let var_1 = _wgslsmith_mult_i32(0i, -var_0.x);
    var var_2 = false;
    var var_3 = global1.c;
    var_2 = false;
    return !vec3<bool>(global1.a.b.x, true, all(!select(vec3<bool>(true, true, global1.a.b.x), vec3<bool>(false, true, global1.a.b.x), vec3<bool>(true, true, global1.a.b.x))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = !select(vec3<bool>(arg_0.b.x, (i32(-1i) * -12704i) == _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.a, 20839i, global1.c.a), vec3<i32>(global1.c.a, 0i, -27677i)), true), !select(!vec3<bool>(global1.a.b.x, false, arg_0.b.x), func_3(global0[_wgslsmith_index_u32(global2.x, 18u)]), global1.c.a > 1i), !(!(!vec3<bool>(true, arg_0.b.x, global1.a.b.x))));
    let var_1 = -434f;
    let var_2 = var_0;
    let var_3 = 1i;
    let var_4 = Struct_3(arg_0, vec4<u32>(~_wgslsmith_sub_u32(abs(140828u), _wgslsmith_add_u32(4294967295u, arg_1)), _wgslsmith_mult_u32(36489u, max(global1.a.c, global2.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, arg_1 >> (1u % 32u), 79623u), 0u), ~select(0u, 0u, global1.a.b.x) ^ u_input.a), global1.c);
    return var_4;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global1 = func_2(global1.a, _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a, ~(~global2.x)), _wgslsmith_mod_u32(~(~global1.b.x), u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1674f, _wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(1000f - -1318f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.a + 1508f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a - global1.a.a) * _wgslsmith_f_op_f32(-global1.a.a)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 429f, global1.a.a) * vec3<f32>(global1.a.a, 787f, global1.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a, global1.a.a, global1.a.a), vec3<f32>(1119f, global1.a.a, 843f)), arg_0.zww)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a, 1000f, 935f), vec3<f32>(global1.a.a, 1223f, -422f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.a, global1.a.a, global1.a.a)))))));
    let var_1 = min((~(~global1.c.a) ^ _wgslsmith_clamp_i32(firstLeadingBit(16582i), global1.c.a >> (1u % 32u), 42486i)) << (_wgslsmith_div_u32(161798u, _wgslsmith_clamp_u32(u_input.a << (u_input.a % 32u), global1.b.x, 75335u)) % 32u), reverseBits(~global1.c.a));
    global0 = array<vec4<f32>, 18>();
    let var_2 = vec2<i32>(global1.c.a, abs(~var_1));
    return func_2(func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 975f)), select(vec2<bool>(false, global1.a.b.x), arg_0.ww, select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), global1.a.b)), ~(~global1.a.c)), ~64633u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx - _wgslsmith_f_op_vec2_f32(-var_0.yz)))).a, 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.xy, var_0.yx)) + _wgslsmith_f_op_vec2_f32(-var_0.zx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) + _wgslsmith_f_op_vec2_f32(var_0.xz + vec2<f32>(-671f, -314f)))))).c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = global1.c;
    let var_1 = func_2(Struct_2(global1.a.a, select(vec2<bool>(arg_1.b.x, global1.a.c < 1u), select(!vec2<bool>(arg_1.b.x, false), func_2(Struct_2(arg_1.a, vec2<bool>(global1.a.b.x, true), global2.x), global2.x, vec2<f32>(arg_1.a, 1463f)).a.b, select(vec2<bool>(false, true), vec2<bool>(global1.a.b.x, false), false)), true), ~global1.b.x), ~49700u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(floor(arg_1.a))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, -1373f)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.a + -2112f), global1.a.a))));
    var var_2 = var_0.a;
    var var_3 = func_1(vec4<bool>(true, all(select(vec4<bool>(true, false, false, global1.a.b.x), !vec4<bool>(arg_1.b.x, global1.a.b.x, global1.a.b.x, false), !var_1.a.b.x)), true, any(!select(vec2<bool>(arg_1.b.x, true), var_1.a.b, vec2<bool>(global1.a.b.x, false)))));
    var_2 = _wgslsmith_mod_i32(-_wgslsmith_sub_i32(var_1.c.a, 28254i), func_2(Struct_2(_wgslsmith_f_op_f32(ceil(arg_1.a)), !vec2<bool>(global1.a.b.x, arg_1.b.x), 1u), ~_wgslsmith_mod_u32(4841u, 17252u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, 592f))))).c.a << (~(~global1.b.x) % 32u));
    return func_2(func_2(Struct_2(1f, vec2<bool>(arg_1.b.x, arg_1.a < arg_1.a), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), global1.b.wy))), 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1180f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, global1.a.a), vec2<f32>(-722f, global1.a.a))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(277f, -1162f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, arg_1.a))))).a, 24605u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(abs(arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(25614u, 63719u, global1.a.c, u_input.a) ^ global1.b)));
    global1 = func_4(func_1(select(!(!vec4<bool>(global1.a.b.x, true, global1.a.b.x, global1.a.b.x)), global3[_wgslsmith_index_u32(max(global2.x, global2.x) << (_wgslsmith_clamp_u32(u_input.a, global1.a.c, global1.b.x) % 32u), 6u)], ~(-7296i) > global1.c.a)), func_2(global1.a, global1.a.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-813f, global1.a.a), vec2<f32>(-2527f, global1.a.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1773f, -261f) + vec2<f32>(global1.a.a, global1.a.a))), !global1.a.b))).a);
    let var_1 = _wgslsmith_f_op_f32(-global1.a.a);
    let var_2 = global1.c.a;
    var var_3 = func_2(func_2(global1.a, _wgslsmith_div_u32(~_wgslsmith_mod_u32(79523u, 18353u), var_0.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(607f, 1531f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.a, 375f), vec2<f32>(var_1, global1.a.a)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-679f, 1533f)))))))).a, 51634u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a, var_1) - vec2<f32>(-1000f, 587f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -939f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-785f, var_1))))));
    var_3 = func_4(var_3.c, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.a * -602f), _wgslsmith_f_op_f32(f32(-1f) * -648f))), vec2<bool>(true, !(var_3.a.b.x | var_3.a.b.x)), _wgslsmith_dot_vec2_u32(var_3.b.xw, vec2<u32>(~u_input.a, 0u ^ var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec2<f32>(1155f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -718f))));
}

