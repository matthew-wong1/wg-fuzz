struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4287u;

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> i32 {
    global2 = Struct_2(global2.a, Struct_1(abs(~global2.b.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c * vec2<f32>(111f, -1000f))))), vec2<f32>(-131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-209f))))), 696f, -668f);
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_mult_i32(~max(_wgslsmith_add_i32(-1i, global2.b.a), firstTrailingBit(arg_1.b)), max(1i, -1i & countOneBits(global2.b.a))) >> (~(reverseBits(min(38155u, arg_1.a.x)) << (~(~var_0) % 32u)) % 32u);
    var var_2 = !select(!vec4<bool>(arg_0.x, all(vec3<bool>(arg_0.x, true, false)), all(arg_0), true), select(!select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(select(true, false, arg_0.x), all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), any(vec4<bool>(false, false, arg_0.x, arg_0.x))), !vec4<bool>(true, arg_0.x, arg_0.x, false)), true);
    let var_3 = vec4<u32>(~arg_1.a.x, reverseBits(1u), arg_1.a.x, firstLeadingBit(arg_1.a.x));
    return ~1i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    global1 = select(arg_2.x, arg_2.x, _wgslsmith_add_u32(arg_0.x, 5136u) > 4294967295u);
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1088f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -408f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-global2.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-448f, 300f))))));
    var var_1 = _wgslsmith_mult_i32(-16316i, func_3(vec2<bool>(arg_2.x, true == !arg_2.x), Struct_3(vec3<u32>(_wgslsmith_sub_u32(71985u, arg_3.a.x), ~arg_0.x, abs(74862u)), 1i), global2.e));
    let var_2 = !arg_2.x;
    global1 = var_2;
    return Struct_1(-1i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_1(45588i);
    global2 = Struct_2(countOneBits(vec2<i32>(func_2(arg_0.yxy, vec3<f32>(global2.e, 235f, 1000f), vec4<bool>(false, false, arg_3.x, false), Struct_3(arg_0.xyw, global2.b.a)).a, ~(~u_input.c))), func_2(vec3<u32>(1u, 26996u, ~abs(arg_0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.e, -849f, global2.e)))))), vec4<bool>(false | arg_3.x, !any(arg_3.wwx), true, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -61855i), u_input.d) != firstLeadingBit(-37616i)), Struct_3(arg_0.yzz, min(-3793i, i32(-1i) * -439i))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d, arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.c))))), _wgslsmith_f_op_f32(global2.c.x * -599f), arg_1.c.x);
    var var_1 = arg_1;
    global0 = _wgslsmith_sub_u32(arg_0.x, ~reverseBits(1u)) >> (firstLeadingBit(_wgslsmith_mod_u32(arg_0.x << (1u % 32u), ~firstTrailingBit(arg_0.x))) % 32u);
    global1 = !all(vec4<bool>(0i > countOneBits(var_1.b.a), true, _wgslsmith_add_u32(arg_0.x, 0u) == _wgslsmith_add_u32(4294967295u, arg_0.x), true));
    return arg_3.zy;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = select(!func_4(arg_0, Struct_2(u_input.d & vec2<i32>(arg_1, 0i), func_2(arg_0.wyx, vec3<f32>(-1769f, global2.d, -513f), vec4<bool>(arg_2, arg_2, arg_2, arg_2), Struct_3(arg_0.yzy, arg_1)), global2.c, _wgslsmith_f_op_f32(global2.c.x * 1234f), 1000f), _wgslsmith_f_op_f32(min(403f, _wgslsmith_f_op_f32(max(global2.d, global2.e)))), !vec4<bool>(false, arg_2, arg_2, true)), func_4(arg_0, Struct_2(select(abs(global2.a), u_input.a.yy ^ vec2<i32>(u_input.b, u_input.b), !vec2<bool>(arg_2, true)), Struct_1(~global2.b.a), _wgslsmith_f_op_vec2_f32(max(global2.c, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -1939f), global2.e), global2.d, !select(!vec4<bool>(true, false, arg_2, true), select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(true, arg_2, true, false), false), vec4<bool>(false, true, arg_2, arg_2))), arg_2);
    global2 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 12303i), _wgslsmith_div_vec2_i32(u_input.a.yy ^ vec2<i32>(u_input.b, 0i), ~vec2<i32>(1i, global2.b.a))), ~_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.yz), ~global2.a)), Struct_1(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(-38398i, -19095i, 0i), vec3<i32>(u_input.b, -1i, global2.a.x)), u_input.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, -1671f) - vec2<f32>(global2.d, -1439f)))), global2.c)), _wgslsmith_div_f32(602f, global2.d), -195f);
    let var_1 = var_0;
    let var_2 = Struct_3(arg_0.yxz, -2147483647i);
    let var_3 = var_2;
    return ~_wgslsmith_clamp_vec3_u32(~arg_0.xxz, vec3<u32>(4294967295u, ~(~var_2.a.x), var_3.a.x), vec3<u32>(20328u, _wgslsmith_dot_vec3_u32(abs(var_2.a), var_3.a >> (vec3<u32>(0u, var_3.a.x, var_3.a.x) % vec3<u32>(32u))), 55414u));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: bool) -> vec3<bool> {
    let var_0 = vec3<bool>(false, false, false);
    var var_1 = Struct_3(vec3<u32>(arg_2.x, arg_0, ~(~firstTrailingBit(3182u))), -1i);
    var var_2 = Struct_2(-vec2<i32>(select(_wgslsmith_mult_i32(-1i, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.a, 1i, 1i), u_input.a), false), abs(-1662i)), func_2(~vec3<u32>(~arg_2.x, arg_2.x, _wgslsmith_mult_u32(16770u, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, -305f, 212f) - vec3<f32>(1000f, global2.d, -837f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.d, -2336f, global2.e))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(arg_3, arg_3, false), 1i <= u_input.b, all(vec2<bool>(false, arg_3))), !select(vec4<bool>(true, false, arg_3, false), vec4<bool>(true, false, true, false), var_0.x)), Struct_3(~vec3<u32>(arg_2.x, 80104u, arg_2.x), (u_input.a.x | 2147483647i) | -37423i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c * _wgslsmith_f_op_vec2_f32(global2.c + _wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(354f, global2.d))))), 588f, 837f);
    let var_3 = _wgslsmith_div_u32(firstTrailingBit(firstTrailingBit(~arg_0) ^ ~var_1.a.x), ~(~1u));
    let var_4 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, -52738i), var_1.b ^ ~2147483647i));
    return select(!(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, arg_3, var_0.x), vec3<bool>(true, false, var_0.x))), vec3<bool>(var_4.a >= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d, var_2.a), ~global2.a), all(var_0) || var_0.x, arg_1.x), select(!select(!vec3<bool>(true, true, arg_3), vec3<bool>(true, true, true), select(true, true, true)), select(!var_0, vec3<bool>(true, all(vec3<bool>(true, var_0.x, true)), arg_3), select(var_0, var_0, var_0)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let var_0 = all(func_5(~(~select(0u, 11021u, true)), vec2<bool>(true, true), func_1(~(~vec4<u32>(4294967295u, 18106u, 1u, 4294967295u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), global2.a) & global2.a.x, all(vec2<bool>(true, true)) == true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
    var var_1 = vec4<u32>(4294967295u, ~1u, 2779u, ~countOneBits(0u) & (func_1(vec4<u32>(1u, 1u, 1u, 1u), 51061i, !var_0).x << (~min(0u, 18056u) % 32u)));
    global2 = Struct_2(global2.a, func_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.xxz, vec3<u32>(5559u, var_1.x, var_1.x)), vec3<u32>(0u, var_1.x, var_1.x)), max(abs(var_1.xyw), vec3<u32>(0u, var_1.x, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), global2.e, -2017f), vec4<bool>(all(select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(var_0, true))), any(select(vec2<bool>(false, var_0), vec2<bool>(true, true), vec2<bool>(false, false))), var_0 & true, var_0), Struct_3(reverseBits(var_1.xxy), i32(-1i) * -51838i)), vec2<f32>(global2.e, _wgslsmith_f_op_f32(exp2(global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + -309f)), global2.d);
    global0 = (1u >> ((abs(~var_1.x) ^ var_1.x) % 32u)) ^ var_1.x;
    let var_2 = Struct_3(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x & 4294967295u, 69530u << (var_1.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 35321u, var_1.x), vec4<u32>(4294967295u, 1u, 45611u, var_1.x))), countOneBits(max(var_1.zxx, vec3<u32>(var_1.x, var_1.x, var_1.x))), vec3<u32>(var_1.x, var_1.x | 1u, 4294967295u))), 1718i);
    global0 = 4294967295u;
    global2 = Struct_2(u_input.d, Struct_1(1i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.c), global2.c)), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-1866f + 143f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, 1140f) * _wgslsmith_div_f32(-715f, global2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - 416f)), 1i <= func_2(vec3<u32>(var_1.x, var_2.a.x, var_2.a.x), vec3<f32>(1265f, global2.d, global2.d), vec4<bool>(false, var_0, true, var_0), var_2).a))), vec3<i32>(global2.a.x, _wgslsmith_mod_i32(var_2.b << (14968u % 32u), -1i) >> (~(~931u) % 32u), -2147483647i), _wgslsmith_div_u32(reverseBits(max(var_1.x, 1u) | 78660u), var_1.x), max(i32(-1i) * -12170i, u_input.c));
}

