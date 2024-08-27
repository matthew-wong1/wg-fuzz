struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1000f, -125f, 176f), vec3<f32>(-1581f, 1000f, 128f), vec3<f32>(-457f, 234f, -855f), vec3<f32>(2400f, -512f, -474f), vec3<f32>(-1000f, -957f, -548f), vec3<f32>(2044f, -1979f, 1000f), vec3<f32>(307f, 1518f, 1271f), vec3<f32>(1838f, 1910f, 887f), vec3<f32>(1432f, -334f, 2010f), vec3<f32>(-796f, -344f, -698f), vec3<f32>(-417f, 175f, -512f), vec3<f32>(-105f, 144f, 1346f), vec3<f32>(-429f, 294f, 944f), vec3<f32>(2114f, -1453f, 1573f), vec3<f32>(-2080f, 630f, 407f), vec3<f32>(-1000f, -161f, 516f), vec3<f32>(102f, -1000f, 2642f), vec3<f32>(-203f, -494f, 1000f), vec3<f32>(1818f, 428f, 642f), vec3<f32>(-1119f, -1498f, 732f), vec3<f32>(-852f, -748f, -248f), vec3<f32>(-694f, -1366f, -676f));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: vec3<f32> = vec3<f32>(1121f, 234f, 787f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = !vec3<bool>(arg_0, global1.x, u_input.a == u_input.b);
    let var_1 = select(arg_0, global1.x, var_0.x);
    global1 = !var_0.yz;
    global1 = vec2<bool>(arg_0, global1.x);
    var var_2 = vec3<bool>(arg_0, true, !(!var_1));
    return global2.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(func_3(arg_2.b.x)));
    let var_1 = Struct_2(vec2<bool>(true, any(select(vec4<bool>(true, arg_1.b.b.x, arg_1.b.b.x, arg_2.b.x), vec4<bool>(false, global1.x, global1.x, true), arg_0.x <= arg_0.x))), vec3<u32>(abs(arg_0.x), ~17993u, arg_0.x), vec2<bool>(global1.x | arg_2.b.x, arg_1.b.b.x));
    let var_2 = Struct_4(arg_1.b);
    global1 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -1495f) * _wgslsmith_f_op_f32(-global2.x))))));
    return !select(!select(select(vec2<bool>(arg_1.b.b.x, arg_2.b.x), vec2<bool>(global1.x, false), vec2<bool>(arg_2.b.x, var_2.a.b.x)), var_1.c, true), arg_2.b, vec2<bool>(false, true));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = select(select(select(!(!vec2<bool>(global1.x, global1.x)), select(func_2(arg_0, Struct_3(vec4<f32>(895f, -1939f, -1033f, global2.x), Struct_1(vec4<i32>(u_input.b, 1i, 48326i, -34679i), vec2<bool>(false, true))), Struct_1(vec4<i32>(38639i, u_input.b, 2147483647i, u_input.b), vec2<bool>(false, true)), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), vec2<bool>(global1.x, global1.x), false), !(!vec2<bool>(true, global1.x))), vec2<bool>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, 30572u, 82728u)) >= arg_0.x, true), vec2<bool>(!global1.x, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)))), vec2<bool>(((u_input.b & 0i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(-32230i, u_input.a, -57266i, -29728i), vec4<i32>(0i, -36908i, 1i, -67345i))) && global1.x, select(!any(vec2<bool>(true, false)), !(global1.x && global1.x), global1.x)), func_2(abs(arg_0), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-950f, global2.x, 1000f, global2.x)))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, -50285i, 2147483647i), vec4<i32>(-1i, -24160i, 12944i, 1i)), vec2<bool>(global1.x, global1.x))), Struct_1(vec4<i32>(-28449i, 41053i, countOneBits(54076i), u_input.b), func_2(~vec3<u32>(72307u, arg_0.x, 4294967295u), Struct_3(vec4<f32>(global2.x, global2.x, global2.x, -1087f), Struct_1(vec4<i32>(0i, u_input.a, -1i, -7406i), vec2<bool>(true, global1.x))), Struct_1(vec4<i32>(u_input.b, u_input.a, 0i, u_input.a), vec2<bool>(true, true)), vec3<u32>(arg_0.x, arg_0.x, 21501u))), vec3<u32>(~arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(8735u, 58321u, 49453u, 1u), ~vec4<u32>(arg_0.x, 1u, 27977u, arg_0.x)), _wgslsmith_mult_u32(arg_0.x, 4294967295u))));
    let var_1 = all(!(!vec3<bool>(select(global1.x, var_0.x, var_0.x), false, true)));
    var var_2 = vec2<i32>(2147483647i << ((~_wgslsmith_add_u32(arg_0.x, arg_0.x) & 30756u) % 32u), ~1i);
    let var_3 = vec3<f32>(970f, _wgslsmith_f_op_f32(trunc(global2.x)), global2.x);
    let var_4 = Struct_4(Struct_1(vec4<i32>((u_input.b & var_2.x) ^ _wgslsmith_div_i32(1i, -7461i), _wgslsmith_mult_i32(countOneBits(-62991i), 11757i), var_2.x, abs(min(var_2.x, var_2.x))), vec2<bool>(!global1.x, !var_0.x)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(false, global1.x), vec3<u32>(_wgslsmith_mod_u32(0u, ~46431u) ^ (33437u >> (func_1(vec3<u32>(47270u, 6248u, 8480u)) % 32u)), _wgslsmith_mult_u32(select(7979u >> (1u % 32u), 1u, global1.x), _wgslsmith_sub_u32(select(0u, 1u, false), min(0u, 1u))), 54036u), !vec2<bool>(true, func_2(vec3<u32>(6792u, 4294967295u, 0u), Struct_3(vec4<f32>(global2.x, -680f, 853f, global2.x), Struct_1(vec4<i32>(2147483647i, 23962i, u_input.a, u_input.b), vec2<bool>(false, global1.x))), Struct_1(vec4<i32>(u_input.b, -27081i, -13582i, u_input.b), vec2<bool>(false, true)), vec3<u32>(10915u, 13634u, 5460u)).x));
    var var_1 = (global2.x >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(336f, global2.x)))) | !(true != (true && select(global1.x, false, global1.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.x, -484f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f)) - 138f)));
    var_1 = var_0.a.x || select(true & (1u > var_0.b.x), !global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) > _wgslsmith_f_op_f32(340f - _wgslsmith_f_op_f32(-global2.x)));
    global0 = array<vec3<f32>, 22>();
    var var_3 = (!(!any(vec4<bool>(var_0.a.x, false, true, false))) | any(select(vec4<bool>(var_0.c.x, true, true, global1.x), vec4<bool>(false, var_0.c.x, true, true), global1.x && false))) & !all(!(!vec4<bool>(true, true, var_0.c.x, global1.x)));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, 36511u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(0u, var_0.b.x, 34006u, var_0.b.x), vec4<u32>(1u, 49144u, var_0.b.x, var_0.b.x)), var_0.c.x) | countOneBits(~firstTrailingBit(vec4<u32>(16898u, 81681u, 1u, var_0.b.x))));
}

