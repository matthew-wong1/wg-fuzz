struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = 552f;

var<private> global2: bool;

var<private> global3: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(980f)))), global3.e.b));
    var var_0 = global3.b;
    let var_1 = arg_2;
    return select(!vec4<bool>(true, global3.c.x, false, true), !vec4<bool>(false, 1u != firstLeadingBit(u_input.c), false, all(vec4<bool>(var_1.b, arg_2.b, arg_1.c.b, false))), select(!select(select(vec4<bool>(arg_1.c.b, true, global3.e.c.b, var_1.b), vec4<bool>(true, true, arg_1.c.b, global3.c.x), global3.e.c.b), !vec4<bool>(true, global3.c.x, true, global3.e.c.b), vec4<bool>(global3.e.c.b, arg_1.c.b, false, true)), select(!(!vec4<bool>(var_1.b, true, arg_2.b, arg_1.c.b)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, arg_1.c.b, false, false), !vec4<bool>(true, var_1.b, true, arg_1.c.b)), vec4<bool>(true, true, all(vec4<bool>(true, true, arg_1.c.b, global3.e.c.b)), true)), vec4<bool>(var_1.b, select(true, true, false), false, !(false || global3.c.x))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(reverseBits(~(~(~24545u))), u_input.a);
    global2 = !all(!select(select(vec4<bool>(false, global3.e.c.b, true, arg_2), vec4<bool>(global3.c.x, true, false, true), true), func_3(850f, Struct_3(vec2<u32>(36143u, 4294967295u), global3.e.c.a.x, Struct_1(vec4<f32>(1966f, global3.e.c.a.x, global3.a, global3.e.c.a.x), arg_2), vec3<f32>(global3.e.c.a.x, 597f, 682f)), Struct_1(global3.e.c.a, false)), !vec4<bool>(arg_2, true, true, false)));
    let var_1 = arg_1;
    let var_2 = Struct_3(global3.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), global3.e.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.e.c.a.ywy, global3.e.d) + global3.e.d) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(global3.e.d))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3.e.d * global3.e.d)))))));
    let var_3 = global3.c.x;
    return global3.e;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global2 = true;
    global2 = u_input.d.x > ~(-(~u_input.d.x));
    global3 = Struct_4(-1336f, u_input.b, global3.c, global3.d, func_2(global3.d.x, select(~(~global3.d.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10528u, arg_1, arg_1, 0u), vec4<u32>(global3.e.a.x, u_input.a, arg_0.a.x, 1u)), ~4294967295u), false), select(func_2(select(4763u, global3.e.a.x, arg_0.c.b), _wgslsmith_add_u32(arg_1, u_input.a), true).c.b, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !global3.c.x)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.d.x) - _wgslsmith_f_op_f32(1000f + arg_0.d.x));
    let var_0 = func_2(firstLeadingBit(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.c)), 4294967295u, firstLeadingBit(firstLeadingBit(global3.e.a.x)), ~_wgslsmith_add_u32(1u, 42009u)), vec4<u32>(~(1u << (arg_1 % 32u)), ~(~global3.d.x), 27135u, _wgslsmith_div_u32(26751u, countOneBits(14272u)))), true).c;
    return Struct_2(arg_0.c, global3.e.c, func_2(0u, _wgslsmith_mult_u32(51416u, ~abs(arg_1)), arg_0.c.b).c, _wgslsmith_mod_u32(35616u, _wgslsmith_add_u32(~arg_1, _wgslsmith_sub_u32(arg_0.a.x, 1u))), vec3<f32>(global3.e.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = vec3<f32>(-1061f, 447f, arg_0.b.a.x);
    let var_1 = select(vec4<bool>(arg_0.a.b, true, global3.c.x, true | (_wgslsmith_f_op_f32(-arg_0.e.x) == _wgslsmith_f_op_f32(-191f * arg_0.a.a.x))), vec4<bool>(true, true, !(!func_2(arg_0.d, 74332u, false).c.b), global3.c.x), global3.c.x);
    let var_2 = vec3<bool>(!(u_input.b != u_input.d.x), true, global3.c.x);
    let var_3 = ~(~global3.d);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-func_4(Struct_3(var_3.yx, 596f, arg_0.b, vec3<f32>(1356f, var_0.x, 647f)), _wgslsmith_clamp_u32(var_3.x, global3.e.a.x, arg_0.d) >> (~global3.d.x % 32u)).e.x), -688i, !select(!(!vec2<bool>(arg_0.b.b, false)), vec2<bool>(any(vec3<bool>(false, false, true)), 0u < global3.d.x), select(!vec2<bool>(false, arg_0.c.b), vec2<bool>(true, var_1.x), arg_0.a.b)), vec3<u32>(1u, var_3.x, func_4(func_2(~arg_0.d, arg_1, arg_0.b.b), var_3.x).d), global3.e);
    return func_2(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, 1u, u_input.c, u_input.c)), reverseBits(vec4<u32>(8996u, var_3.x, global3.e.a.x, arg_0.d)))), ~vec4<u32>(~arg_0.d, 0u, var_3.x, u_input.a)), 21978u, var_2.x).c;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    var var_0 = u_input.d;
    let var_1 = func_5(func_4(func_2(min(u_input.c << (global3.d.x % 32u), u_input.a), 0u, false), u_input.c), _wgslsmith_mult_u32(global3.e.a.x, ~(~u_input.a)), firstLeadingBit(arg_2.zzw), global3.e.c.a.yy);
    var var_2 = select(vec4<u32>(~0u, 4294967295u, firstLeadingBit(16276u), ~global3.e.a.x), vec4<u32>(global3.d.x, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.c)), global3.d.xy | vec2<u32>(32725u, 0u)), ~(_wgslsmith_clamp_u32(18186u, 1u, 107383u) >> ((u_input.c >> (u_input.a % 32u)) % 32u)), u_input.a), vec4<bool>(arg_1.x, all(select(vec3<bool>(true, var_1.b, var_1.b), select(vec3<bool>(true, var_1.b, arg_1.x), vec3<bool>(global3.e.c.b, var_1.b, arg_1.x), global3.c.x), var_1.b)), global3.e.c.b, false));
    let var_3 = _wgslsmith_add_u32(var_2.x, global3.d.x);
    global3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e.d.x * global3.a) + _wgslsmith_f_op_f32(-var_1.a.x))), arg_3), countOneBits(max(firstLeadingBit(-24405i << (var_2.x % 32u)), 2147483647i)), vec2<bool>(arg_1.x | !(!arg_1.x), true), ~vec3<u32>(76022u, u_input.a, var_3), global3.e);
    return vec3<bool>(false, arg_1.x, any(vec3<bool>(true, !var_1.b, var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.e.c.a, all(select(vec3<bool>(true, false, !global3.c.x), func_1(-1831f, !global3.c, vec4<i32>(global3.b, 0i, -42925i, 25983i) | u_input.d, -1614f), func_3(global3.e.c.a.x, func_2(4294967295u, u_input.a, false), Struct_1(global3.e.c.a, global3.e.c.b)).yzw)));
    let x = u_input.a;
    s_output = StorageBuffer(315f, vec2<i32>(min(u_input.b ^ global3.b, 24600i), -(~(-6592i)) ^ _wgslsmith_mult_i32(2147483647i, global3.b)));
}

