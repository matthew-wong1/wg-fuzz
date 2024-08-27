struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = Struct_1(abs(global0.a) & vec4<u32>(4294967295u, 4294967295u, (16359u << (global0.a.x % 32u)) | ~u_input.a.x, 4294967295u), false, firstLeadingBit(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(arg_0.c, arg_0.c, 0i), vec3<i32>(global0.c, 2147483647i, -12285i), arg_0.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_0.c, -16983i) ^ vec3<i32>(30193i, global0.c, -1i), min(vec3<i32>(global0.c, arg_0.c, arg_0.c), vec3<i32>(global0.c, global0.c, global0.c)), -vec3<i32>(1i, 2147483647i, global0.c)))));
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, global0.a.x, global0.a.x)), arg_0.a.ywy), 1u, global0.a.x, ~(~4294967295u))), all(select(!vec4<bool>(false, arg_0.b, false, global0.b), select(vec4<bool>(arg_0.b, true, arg_0.b, global0.b), vec4<bool>(arg_0.b, global0.b, global0.b, true), vec4<bool>(global0.b, true, true, arg_0.b)), select(vec4<bool>(global0.b, true, true, true), vec4<bool>(global0.b, arg_0.b, true, arg_0.b), vec4<bool>(global0.b, false, arg_0.b, true)))) == global0.b, max(max(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 29874i), vec2<i32>(-31592i, -1i)), global0.c | arg_0.c, all(vec3<bool>(true, false, false))), _wgslsmith_sub_i32(global0.c, 2147483647i) & -1i), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-40576i, -1i), global0.c, global0.c)));
    global0 = arg_0;
    global0 = Struct_1(arg_0.a, false, 6708i);
    global0 = arg_0;
    return _wgslsmith_dot_vec4_u32(global0.a, select(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, 22789u, 33349u, u_input.a.x), abs(vec4<u32>(50438u, 71111u, u_input.a.x, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, arg_0.a.x, global0.a.x, global0.a.x) >> (vec4<u32>(u_input.a.x, 4294967295u, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(31263u, 10550u, 0u, 1u), arg_0.a), _wgslsmith_div_vec4_u32(arg_0.a, vec4<u32>(1u, 21603u, 8120u, 12024u))), vec4<bool>(all(vec4<bool>(global0.b, global0.b, true, global0.b)), global0.b, u_input.a.x <= arg_0.a.x, arg_0.b))) >> (select(max(~(~4294967295u), ~(~0u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.a.ww, global0.a.wx), _wgslsmith_div_u32(30450u, arg_0.a.x)), global0.b) % 32u);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec4<u32>(78973u, 4294967295u << ((~1u >> (_wgslsmith_sub_u32(20362u, u_input.a.x) % 32u)) % 32u), 1u, select(u_input.a.x, 82812u, _wgslsmith_f_op_f32(floor(-491f)) <= -839f)), global0.b, global0.c);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f + -328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 658f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, -369f, 568f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, -308f, 770f)))))));
    let var_1 = 1u;
    var var_2 = Struct_1(global0.a, all(!vec3<bool>(true, select(global0.b, true, global0.b), global0.b)), -1i);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(1103f * -1359f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(305f, var_0.x)))))));
    return Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(1u), func_3(Struct_1(vec4<u32>(u_input.a.x, var_2.a.x, 1u, global0.a.x), true, var_2.c), var_0.x), 31567u, 1u), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, 1u, 0u, 4294967295u), vec4<u32>(30756u, 23342u, var_1, 6842u)))), global0.b, (var_2.c & ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, 2147483647i, 46201i), vec3<i32>(global0.c, 2147483647i, var_2.c))) | -var_2.c);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    global0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(73810u, arg_2.x)), global0.a.wy), 23964u, firstLeadingBit(arg_2.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 3556u, 0u)), vec3<u32>(39672u, u_input.a.x, arg_2.x)), u_input.a.xyw)), !(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(global0.a, u_input.a)) < arg_2.x), ~(-2147483647i));
    global0 = func_2();
    let var_0 = ~global0.a;
    var var_1 = vec2<u32>(arg_2.x, global0.a.x);
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(var_1.x, var_1.x, arg_2.x, 18182u))), vec4<u32>(u_input.a.x, var_0.x, ~u_input.a.x, _wgslsmith_add_u32(0u, global0.a.x)), global0.a) >> (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(68922u, 104276u, 4294967295u, global0.a.x), u_input.a)) % vec4<u32>(32u)), all(vec3<bool>(true, all(!vec4<bool>(false, global0.b, global0.b, true)), false)), abs(0i));
    return -1985i;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> vec4<u32> {
    let var_0 = Struct_1(firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(2322u, 90565u), ~global0.a.x, 0u)), (select(arg_2 << (0u % 32u), arg_1 << (1u % 32u), true) | 0i) == func_2().c, global0.c);
    let var_1 = Struct_1(global0.a, all(vec2<bool>(!var_0.b, !(!global0.b))), ~(~(-var_0.c << (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u))));
    var var_2 = !var_0.b;
    var var_3 = var_0.a.x;
    var_2 = false;
    return ~abs(vec4<u32>(var_0.a.x, ~_wgslsmith_dot_vec2_u32(var_1.a.wx, vec2<u32>(13318u, 16274u)), var_1.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 57624u, 1u), var_1.a.zww) % 32u), 0u));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global0 = func_2();
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~global0.c, (~0i | global0.c) & _wgslsmith_mod_i32(arg_3.c, -global0.c)), -global0.c, 1i);
    global0 = arg_3;
    let var_1 = -657f;
    var var_2 = true;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-390f, -119f)) + -533f);
    let var_1 = Struct_1(global0.a, false, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1810f, 525f, 2147f, var_0) - vec4<f32>(var_0, -1231f, var_0, 579f)))), u_input.a, false, Struct_1(func_4(vec3<u32>(61570u, 4294967295u, 4294967295u), global0.c, func_1(948f, global0.c, vec2<u32>(24721u, 22552u))), true, reverseBits(reverseBits(global0.c)))));
    global0 = var_1;
    var var_2 = var_1.a;
    global0 = var_1;
    let var_3 = 2209f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-global0.c & ~global0.c, global0.c) & 2147483647i, var_1.a.x, 1u);
}

