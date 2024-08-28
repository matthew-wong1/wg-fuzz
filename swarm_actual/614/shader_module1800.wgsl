struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f) + -922f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)), arg_2, arg_2))));
    return !(!arg_1.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = select(select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), select(vec4<bool>(any(vec4<bool>(true, false, false, false)), -1095i <= u_input.c.x, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, func_3(vec3<i32>(-71836i, u_input.c.x, arg_1.x), vec4<bool>(false, false, true, false), 675f, true), any(vec2<bool>(false, false)), arg_1.x == -2147483647i), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))), select(vec4<bool>(select(u_input.b == arg_0.a.x, true, any(vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true)), true, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, func_3(vec3<i32>(u_input.c.x, 22288i, u_input.c.x), vec4<bool>(true, false, false, false), 1072f, true), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), ~min(4294967295u, arg_0.a.x) != 1u), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), !select(true, true, true)));
    var var_1 = ~_wgslsmith_add_i32(reverseBits(firstTrailingBit(-u_input.c.x)), countOneBits(countOneBits(~0i)));
    var var_2 = Struct_3(var_0.xzx, max(~_wgslsmith_mod_vec3_u32(arg_0.a.zwx, vec3<u32>(arg_0.a.x, u_input.b, 4294967295u)), firstTrailingBit(vec3<u32>(1u, ~u_input.b, 1u))));
    var var_3 = Struct_1(var_2.a.xx, select(var_2.a, select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_2.a.x, false, var_2.a.x), true), select(var_2.a, !var_2.a, vec3<bool>(var_2.a.x, var_0.x, var_0.x)), !var_2.a), !vec3<bool>(all(var_2.a), false, true)), var_0);
    global0 = false;
    return Struct_2(firstTrailingBit(_wgslsmith_add_vec2_u32(~var_2.b.zz, abs(select(vec2<u32>(var_2.b.x, arg_0.a.x), arg_0.a.wz, true)))), !var_0.xwz, 2147483647i, !any(vec2<bool>(true, !var_0.x)), Struct_1(select(!var_3.a, select(var_3.a, vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(var_2.a.x, true), true)), select(!var_3.c.x, var_3.c.x, var_0.x)), !vec3<bool>(false, arg_0.a.x >= 0u, any(var_3.b)), !(!select(var_3.c, var_0, false))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = false;
    let var_0 = Struct_3(vec3<bool>(!arg_1.d, !(~u_input.a <= 22876u), !(!func_2(Struct_4(arg_0.a, arg_0.b, 905f), vec2<i32>(arg_1.c, u_input.c.x)).d)), arg_0.a.zxy);
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.x + -350f);
    let var_2 = !var_0.a;
    var var_3 = true;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2808f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(sign(var_1)))) + arg_0.c)));
}

fn func_1() -> vec2<u32> {
    global0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(120f)))) > _wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(43075u, 0u, 56862u, u_input.a), vec4<u32>(u_input.b, 13502u, 0u, u_input.b)), vec2<f32>(-1000f, -3709f), -1000f), func_2(Struct_4(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec2<f32>(-339f, 595f), -964f), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-15926i, u_input.c.x), u_input.c)), u_input.c.x))) && select(true, false, u_input.c.x >= u_input.c.x);
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(-946f)) < -381f), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, -714f, -818f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -373f, 1168f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, -160f, -2961f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, -124f, -1000f)) - vec3<f32>(1f, 1f, 1f)))))));
    var var_2 = var_1.x;
    let var_3 = ~1u;
    return vec2<u32>(1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 600f;
    let var_1 = 55854i;
    var var_2 = Struct_2(min(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(func_1(), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.b)), ~vec2<u32>(24864u, u_input.a)), vec3<bool>(u_input.c.x < 0i, select(true & func_2(Struct_4(vec4<u32>(45689u, 11544u, 7563u, 0u), vec2<f32>(-177f, var_0), var_0), vec2<i32>(-45171i, 14820i)).d, false, !(u_input.b == 156u)), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), func_2(Struct_4(vec4<u32>(u_input.a, 40966u, 0u, u_input.b), vec2<f32>(var_0, 1931f), 1558f), u_input.c).e.c, vec4<bool>(true, true, true, true)))), 0i, true, func_2(Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, u_input.a), countOneBits(vec4<u32>(u_input.a, u_input.b, 0u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - vec2<f32>(var_0, -406f)), -991f), ~(~reverseBits(u_input.c))).e);
    var var_3 = Struct_3(!var_2.e.b, _wgslsmith_mod_vec3_u32(~min(abs(vec3<u32>(1u, var_2.a.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(25143u, var_2.a.x, u_input.b), vec3<u32>(u_input.a, 26092u, var_2.a.x))), ~abs(~vec3<u32>(21910u, u_input.a, u_input.a))));
    var var_4 = _wgslsmith_div_u32(var_2.a.x, min(1u, u_input.b));
    var_3 = Struct_3(select(var_3.a, vec3<bool>(!(u_input.c.x <= var_1), all(vec3<bool>(false, var_2.e.c.x, false)), !(var_2.e.b.x | var_3.a.x)), func_2(Struct_4(vec4<u32>(u_input.a, var_2.a.x, var_3.b.x, var_2.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))), _wgslsmith_div_f32(-1538f, -1015f)), abs(_wgslsmith_div_vec2_i32(u_input.c, u_input.c))).b.x), ~(~vec3<u32>(~50968u, _wgslsmith_add_u32(var_2.a.x, 0u), ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(1484f, _wgslsmith_f_op_f32(func_4(Struct_4(vec4<u32>(1u, 4294967295u, 50035u, 6236u), vec2<f32>(var_0, var_0), var_0), Struct_2(vec2<u32>(39422u, 4294967295u), vec3<bool>(var_2.b.x, true, true), -64715i, var_2.d, var_2.e), ~var_1)), var_2.e.c.x)), var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1004f, -512f) - var_0)));
}

