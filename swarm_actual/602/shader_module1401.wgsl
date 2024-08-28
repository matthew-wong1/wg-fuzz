struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    return global2.x & any(!vec2<bool>(global2.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(-539f)), _wgslsmith_f_op_f32(-arg_2.x), 626f);
    global1 = arg_1;
    global0 = Struct_1(global0.a);
    global2 = select(vec3<bool>(global2.x, select(global2.x, any(vec2<bool>(global2.x, global2.x)), _wgslsmith_f_op_f32(ceil(-1000f)) <= _wgslsmith_f_op_f32(min(1173f, var_0.x))), func_3()), vec3<bool>(global2.x, true, true), select(vec3<bool>(true, all(global2.xz) | global2.x, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(!vec3<bool>(global2.x, false, false), vec3<bool>(false, global2.x, global2.x), func_3()), false), true));
    let var_1 = arg_0;
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    global3 = min(~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(10174u, 24110u), vec2<u32>(42869u, global0.a)))), min(vec2<u32>(36156u, global3.x), ~(~vec2<u32>(arg_1.a, global3.x)) << (vec2<u32>(_wgslsmith_mult_u32(4294967295u, global0.a), func_2(arg_1, arg_1, vec3<f32>(818f, 1726f, 464f))) % vec2<u32>(32u))));
    let var_0 = vec2<bool>(true | select(!global2.x, 1i < _wgslsmith_clamp_i32(-1i, u_input.b, arg_0.x), true), (~firstLeadingBit(0u) <= (0u >> ((arg_1.a << (4294967295u % 32u)) % 32u))) || global2.x);
    var var_1 = !vec4<bool>(!(!any(vec3<bool>(global2.x, false, var_0.x))), !(34382i >= (u_input.b & arg_0.x)), true, !global2.x);
    global2 = select(select(var_1.xxz, var_1.xyy, var_1.xzy), vec3<bool>(select(all(select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, var_1.x, global2.x, global2.x), vec4<bool>(false, var_0.x, var_0.x, global2.x))), var_0.x, global2.x), true, select(true, any(var_1.yxw), all(select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(var_1.x, var_0.x, true, var_1.x), global2.x)))), select(var_1.xxz, !select(!var_1.yyy, var_1.xyy, vec3<bool>(false, var_1.x, var_0.x)), vec3<bool>(!(4294967295u <= global1.a), false, true)));
    let var_2 = Struct_1(73679u);
    return var_1.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec3<bool>(global2.x && true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, global2.x, true), false), vec3<bool>(true, global2.x, false), func_1(vec3<i32>(-383i, -44618i, u_input.b), Struct_1(global0.a), Struct_1(16439u), 65924u))), !global2.x);
    global2 = select(!vec3<bool>(true, global2.x, _wgslsmith_add_i32(u_input.b, u_input.b) <= _wgslsmith_mult_i32(5972i, u_input.b)), !func_1((vec3<i32>(1i, u_input.b, u_input.b) >> (vec3<u32>(35692u, 50174u, u_input.a) % vec3<u32>(32u))) & max(vec3<i32>(u_input.b, -2147483647i, 1i), vec3<i32>(1i, -3905i, u_input.b)), Struct_1(_wgslsmith_add_u32(global0.a, 5861u)), Struct_1(~global1.a), reverseBits(~global3.x)), u_input.a >= (max(10441u, global0.a | global0.a) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.a, global1.a, 4294967295u), vec4<u32>(84063u, 4294967295u, 23824u, u_input.c))));
    var var_0 = func_3() & all(select(!select(vec4<bool>(false, global2.x, true, true), vec4<bool>(false, global2.x, global2.x, false), true), select(vec4<bool>(global2.x, global2.x, false, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, false, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, true)), !select(vec4<bool>(true, false, global2.x, false), vec4<bool>(global2.x, false, false, false), vec4<bool>(false, global2.x, global2.x, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-533f, 1377f, -449f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, 1399f, 770f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, -2576f, -158f) * vec3<f32>(-1189f, 331f, -1000f)))))));
    let var_2 = Struct_1(~countOneBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(trunc(380f)), -721f)) - vec3<f32>(var_1.x, var_1.x, 291f)));
}

