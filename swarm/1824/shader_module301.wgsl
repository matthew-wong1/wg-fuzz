struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(~1u, 4294967295u), arg_1.b);
    return select(vec3<u32>(min(35640u, min(global1.a.a, 4294967295u) ^ (arg_1.a | arg_1.a)), 10170u, arg_1.a), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(11180u, 23276u), arg_1.a, ~arg_1.a), _wgslsmith_sub_u32(14642u, global1.a.a & var_0.a), 22342u), abs(reverseBits(select(vec3<u32>(arg_1.a, global1.a.a, arg_2.a), vec3<u32>(0u, 4294967295u, var_0.a), true)))), !select(select(select(vec3<bool>(arg_1.b, arg_2.b, false), vec3<bool>(arg_1.b, var_0.b, false), vec3<bool>(arg_1.b, global1.a.b, true)), vec3<bool>(global1.a.b, arg_1.b, arg_2.b), !vec3<bool>(true, false, arg_1.b)), vec3<bool>(all(vec3<bool>(arg_1.b, false, true)), any(vec2<bool>(false, arg_2.b)), arg_2.b), !any(vec2<bool>(false, false))));
}

fn func_2() -> Struct_2 {
    let var_0 = any(vec4<bool>(true, !(true | !global1.a.b), true, any(vec2<bool>(select(false, global1.a.b, global1.a.b), u_input.a == u_input.a))));
    global0 = -1i;
    let var_1 = vec3<i32>(-(~(~u_input.a)), ~abs(-1i), u_input.a) << ((_wgslsmith_sub_vec3_u32(~func_3(25119u, global1.a, global1.a), max(vec3<u32>(15809u, u_input.c, 0u), vec3<u32>(global1.a.a, global1.a.a, u_input.b.x))) ^ ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 29891u, 5359u), vec3<u32>(1u, global1.a.a, 1u))) % vec3<u32>(32u));
    global1 = Struct_2(Struct_1(global1.a.a, ((var_0 & global1.a.b) & true) & all(select(vec2<bool>(global1.a.b, global1.a.b), vec2<bool>(global1.a.b, false), var_0))));
    global0 = ~u_input.a;
    return Struct_2(global1.a);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = func_2();
    global0 = -(~(u_input.a | u_input.a));
    global1 = Struct_2(func_2().a);
    let var_0 = _wgslsmith_mult_u32(~(~global1.a.a), 1u);
    let var_1 = vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))) - -894f), -422f), -1010f, 298f);
    return Struct_1(u_input.c, global1.a.b);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = 0i;
    let var_0 = vec2<bool>(arg_2.x | global1.a.b, true);
    let var_1 = vec2<i32>(~(u_input.a ^ _wgslsmith_mod_i32(u_input.a | 20977i, u_input.a)), u_input.a);
    global1 = func_2();
    let var_2 = global1.a.a;
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -232f), func_1(1359f), !vec2<bool>(true, all(!vec3<bool>(global1.a.b, false, global1.a.b))));
    let var_1 = Struct_1(46180u, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-125f, -834f, true))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) - _wgslsmith_f_op_f32(-1684f + 1347f))) || all(select(!vec4<bool>(var_0.b, var_0.b, false, global1.a.b), vec4<bool>(false, true, global1.a.b, false), !vec4<bool>(global1.a.b, false, var_0.b, var_0.b))));
    var var_2 = vec2<i32>(-_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-28760i, u_input.a, -1i, 1i)), -firstLeadingBit(vec4<i32>(-82700i, u_input.a, u_input.a, 0i))), -1i);
    var var_3 = Struct_2(global1.a);
    let var_4 = -1000f;
    let var_5 = ~(~(select(func_3(global1.a.a, Struct_1(var_0.a, true), var_3.a).xy, _wgslsmith_mod_vec2_u32(u_input.b, u_input.b), true) >> (u_input.b % vec2<u32>(32u))));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, 702f, var_4) + vec4<f32>(1322f, 821f, -571f, -1313f)) * vec4<f32>(var_4, var_4, var_4, 268f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-2129f)), -589f, _wgslsmith_f_op_f32(sign(-127f)), -198f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4, var_4, 858f, 2207f))))), all(vec2<bool>(var_0.b, func_1(var_4).b)))));
}

