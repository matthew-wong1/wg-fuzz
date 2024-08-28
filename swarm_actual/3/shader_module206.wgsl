struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec3<u32>;

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> i32 {
    global1 = _wgslsmith_add_u32(~(~(~arg_0.c)), 4294967295u);
    return ~_wgslsmith_div_i32(u_input.a, 34111i);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2.a;
    let var_1 = u_input.a;
    global0 = ~vec3<u32>(~arg_2.c, ~arg_2.c, 29201u);
    var var_2 = Struct_3(Struct_1(~func_3(Struct_3(arg_2.a, arg_0, 0u), ~arg_2.c, false)), !(!arg_0), 1u);
    let var_3 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(ceil(739f))))), _wgslsmith_f_op_f32(f32(-1f) * -1026f), !(!var_2.b.x)))));
    return Struct_3(var_2.a, select(vec2<bool>(~var_2.c < ~global0.x, false), vec2<bool>(!(!var_2.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-20453i, var_1), vec2<i32>(arg_2.a.a, 2147483647i)) <= -20374i), vec2<bool>(true, false)), global0.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(-_wgslsmith_div_i32(arg_0.a.a & arg_0.a.a, _wgslsmith_mod_i32(arg_0.a.a, u_input.a))), func_2(vec2<bool>(!(38857u >= arg_0.c), !arg_0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 68015u, 3476u), vec3<u32>(4294967295u, 0u, 22516u), vec3<u32>(global0.x, 49429u, 33753u)), firstLeadingBit(vec3<u32>(arg_0.c, arg_0.c, arg_0.c))) != _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.x, 39200u), vec4<u32>(4294967295u, global0.x, 28927u, global0.x)), arg_0).a, Struct_1(_wgslsmith_mod_i32(arg_0.a.a, ~(-2076i) | ~u_input.a)), arg_0.b.x);
    global0 = vec3<u32>(1u, max(firstLeadingBit(global0.x), ~97266u), ~func_2(vec2<bool>(true, false), all(vec3<bool>(true, arg_0.b.x, arg_0.b.x)), func_2(select(arg_0.b, vec2<bool>(true, false), vec2<bool>(true, true)), arg_0.b.x, Struct_3(Struct_1(52255i), arg_0.b, global0.x))).c);
    var var_1 = 1u;
    var_1 = arg_0.c;
    var var_2 = Struct_1(var_0.c.a);
    return -var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_div_i32(~_wgslsmith_mod_i32(u_input.a, u_input.a), func_4(func_2(vec2<bool>(true, true), true, Struct_3(Struct_1(u_input.a), vec2<bool>(false, true), global0.x)), -550f)));
    var var_1 = vec4<u32>(reverseBits(max(global0.x, func_2(vec2<bool>(true, true), any(vec2<bool>(true, true)), func_2(vec2<bool>(false, false), false, Struct_3(Struct_1(var_0.a), vec2<bool>(false, false), global0.x))).c)), min(global0.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4211u, global0.x, 0u, 0u), vec4<u32>(0u, global0.x, 4294967295u, 15977u)), ~vec4<u32>(1742u, 4294967295u, global0.x, global0.x)))), global0.x, 33528u);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f * _wgslsmith_f_op_f32(step(185f, -816f)))), 1228f, true)), 157f));
    let var_3 = Struct_3(func_2(vec2<bool>(false, all(vec3<bool>(true, true, true))), all(vec2<bool>(true, any(vec2<bool>(true, true)))), func_2(vec2<bool>(true, true), true, Struct_3(func_2(vec2<bool>(true, true), true, Struct_3(Struct_1(-16559i), vec2<bool>(true, true), var_1.x)).a, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), 0u))).a, select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_2(vec2<bool>(true, true), true, Struct_3(var_0, vec2<bool>(true, true), 2331u)).b, vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), ~1u);
    var var_4 = var_3;
    return var_4.a;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    global1 = firstLeadingBit(~min(global0.x << (global0.x % 32u), global0.x & global0.x) >> ((abs(4294967295u) | global0.x) % 32u));
    var var_0 = func_2(!vec2<bool>(global0.x <= ~global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(select(-1678f, -352f, true))), func_2(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false && (846u == global0.x)), all(select(vec2<bool>(true, true), func_2(vec2<bool>(false, false), true, Struct_3(arg_1, vec2<bool>(false, true), global0.x)).b, false)), func_2(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_2(vec2<bool>(false, false), true, Struct_3(arg_1, vec2<bool>(false, true), 84571u)).b), true, func_2(vec2<bool>(false, false), true, Struct_3(Struct_1(-18874i), vec2<bool>(false, false), global0.x)))).b.x, Struct_3(func_2(vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)), func_2(vec2<bool>(false, true), all(vec4<bool>(false, false, true, true)), Struct_3(Struct_1(arg_0), vec2<bool>(false, false), global0.x))).a, vec2<bool>(true, true), global0.x)).a;
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a ^ -25886i, arg_0, -1i), vec3<i32>(~var_0.a, abs(var_0.a), u_input.a | u_input.a))), vec2<bool>(true, true), 68855u);
    global0 = ~_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(0u, 38922u, global0.x), vec3<u32>(var_1.c, 4294967295u, var_1.c) << ((vec3<u32>(var_1.c, 1u, 61264u) | vec3<u32>(global0.x, global0.x, 17469u)) % vec3<u32>(32u)), !(!vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(19214u, 4294967295u, global0.x)), (vec3<u32>(global0.x, global0.x, 9236u) & vec3<u32>(45969u, var_1.c, 0u)) << (select(vec3<u32>(var_1.c, global0.x, 1u), vec3<u32>(global0.x, var_1.c, 43916u), vec3<bool>(false, false, true)) % vec3<u32>(32u))), countOneBits(reverseBits(vec3<u32>(4294967295u, global0.x, var_1.c) | vec3<u32>(1u, global0.x, 11951u))));
    let var_2 = 0i;
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(33014i, func_1());
}

