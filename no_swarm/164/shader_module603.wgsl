struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, false), true);

var<private> global1: u32 = 98282u;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(false, true), true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = vec3<i32>(countOneBits(u_input.b.x), (min(u_input.a, u_input.a) | 0i) >> (4294967295u % 32u), -20627i);
    global0 = Struct_3(global2.a, !any(select(vec2<bool>(true, true), vec2<bool>(global0.a.x, global0.b), vec2<bool>(global0.a.x, global0.b))));
    var var_1 = Struct_3(select(vec2<bool>(true || (false & global2.b), !(u_input.b.x == var_0.x)), vec2<bool>(any(select(vec2<bool>(global2.b, true), vec2<bool>(global2.a.x, global2.a.x), true)), any(select(vec4<bool>(global0.b, false, global2.a.x, global0.b), vec4<bool>(false, true, global2.a.x, global2.a.x), global2.a.x))), select(select(select(vec2<bool>(global0.a.x, global2.b), global0.a, global0.b), vec2<bool>(false, true), global0.a), vec2<bool>(!global0.b, global0.b && true), global2.a.x)), all(global0.a));
    var var_2 = u_input.b;
    var_1 = Struct_3(global2.a, false);
    return !(!select(vec3<bool>(true, true, global0.b), select(select(vec3<bool>(false, var_1.a.x, false), vec3<bool>(var_1.b, global2.a.x, false), vec3<bool>(global2.a.x, false, global2.b)), !vec3<bool>(var_1.a.x, global0.b, global2.a.x), true), !(!vec3<bool>(true, true, global0.b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = select(select(select(func_3(-1255f), !select(vec3<bool>(true, arg_1.x, arg_2.a.b), vec3<bool>(false, false, true), global0.a.x), !(arg_1.x | global2.a.x)), vec3<bool>(false, !func_3(2311f).x, false), select(vec3<bool>(true, true, select(true, global0.a.x, false)), vec3<bool>(global0.a.x, -1i == arg_2.a.a, true || global0.b), select(vec3<bool>(true, true, true), func_3(-1291f), select(vec3<bool>(global0.a.x, true, true), vec3<bool>(global2.b, global2.b, true), true)))), !vec3<bool>(any(!vec3<bool>(false, global2.a.x, true)), all(select(vec3<bool>(arg_1.x, arg_2.a.b, global2.a.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(global0.a.x, false, global2.a.x))), !(global2.b | false)), arg_1.x);
    let var_1 = Struct_2(Struct_1(u_input.a, func_3(770f).x));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(abs(max(~0u, 1u)), _wgslsmith_clamp_u32(1u, ~1u, abs(11214u)), ~1u), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(min(1u, 62044u), min(1u, 1u), 4294967295u), vec3<u32>(1u, 1u, 1u) & firstTrailingBit(vec3<u32>(25637u, 6166u, 12178u))), vec3<u32>(1u, 1u, 1u)));
    global1 = ~var_2.x;
    var var_3 = var_1.a;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    let var_0 = func_2(u_input.b.wz, vec2<bool>(true, ~max(arg_0, arg_0) <= 0u), Struct_2(Struct_1(~18514i, true)));
    global0 = Struct_3(global0.a, false);
    let var_1 = Struct_4(8197u, select(global2.a, global2.a, vec2<bool>(var_0.a.b || true, var_0.a.b)), select(u_input.b.x, -46376i, true), arg_1.x, arg_0);
    global0 = Struct_3(select(select(!global0.a, select(!vec2<bool>(false, var_1.b.x), func_3(var_1.d).yy, select(global0.a, vec2<bool>(var_1.b.x, false), false)), global0.a.x), !(!(!var_1.b)), vec2<bool>(arg_0 != ~arg_0, (false || global0.a.x) || false)), !all(vec4<bool>(var_1.b.x, any(vec3<bool>(global0.a.x, true, var_1.b.x)), true, func_2(vec2<i32>(-2147483647i, -8160i), vec2<bool>(true, false), var_0).a.b)));
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(trunc(-332f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_i32(u_input.b.x, u_input.b.x);
    let var_1 = Struct_3(global0.a, true);
    var var_2 = !all(!vec4<bool>(false, var_1.b, global0.b == global0.a.x, global0.b));
    var var_3 = Struct_4(~_wgslsmith_div_u32(1u, 1u), select(global0.a, select(vec2<bool>(false, u_input.b.x < u_input.a), vec2<bool>(var_1.a.x, true), var_1.a.x), _wgslsmith_f_op_f32(-1667f - _wgslsmith_f_op_f32(func_1(5556u, vec4<f32>(-590f, 1000f, 1459f, -1373f)))) <= -415f), i32(-1i) * -24104i, _wgslsmith_f_op_f32(-1436f * -667f), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(~18179u), 96612u), 1u >> (firstLeadingBit(~1u) % 32u), ~0u));
    var_3 = Struct_4(select(0u, ~var_3.e, false), !select(!func_3(var_3.d).zz, global0.a, global0.a), var_3.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(672f, var_3.d, var_1.a.x)), 346f)))), ~var_3.e ^ ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e, var_3.a, 4294967295u, var_3.a), vec4<u32>(var_3.e, var_3.a, 3014u, var_3.e)), _wgslsmith_mod_u32(var_3.a, var_3.e)));
    var var_4 = Struct_4(63538u, !global2.a, -var_3.c, var_3.d, var_3.e | (4294967295u | _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_3.e, var_3.a, var_3.e), 6590u)));
    var_3 = Struct_4(var_4.a, vec2<bool>(true, true), var_4.c, var_4.d, ~var_4.e);
    let var_5 = Struct_3(select(vec2<bool>(true, global2.b), vec2<bool>(false, false), vec2<bool>(any(var_1.a) != false, false)), var_4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.c);
}

