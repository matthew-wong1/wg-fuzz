struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -818f))))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_3(~vec4<u32>(global1.x, 40943u, global1.x, global0.b.a.x), u_input.a.zzz), Struct_1(global0.b.b.x, vec2<i32>(arg_1.b.x, arg_1.b.x)), Struct_5(_wgslsmith_mod_i32(1i, -41263i), Struct_3(global0.b.a, vec3<i32>(arg_1.a, -60622i, arg_1.b.x)), countOneBits(global0.b.a), max(11062u, 1u)))), arg_0.x))));
    let var_1 = arg_1;
    global0 = Struct_5(arg_1.a, Struct_3(vec4<u32>(~global1.x, 1u, ~global0.d, ~12209u), vec3<i32>(global0.a, max(-2147483647i, _wgslsmith_mult_i32(17248i, global0.b.b.x)), select(-1i, _wgslsmith_clamp_i32(10107i, -60593i, u_input.a.x), all(vec3<bool>(true, false, true))))), global0.c, 1u);
    global0 = Struct_5(~(-9933i), Struct_3(max(~vec4<u32>(44176u, global0.b.a.x, 19311u, 1u) ^ vec4<u32>(1u, global1.x, global1.x, 4294967295u), global0.c), global0.b.b << (vec3<u32>(~global0.b.a.x, countOneBits(0u), min(1u, global1.x)) % vec3<u32>(32u))), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(global0.b.a.x, global1.x, 120014u, 4359u) ^ vec4<u32>(1u, 35424u, global1.x, global0.b.a.x))), global0.b.a), global1.x);
    let var_2 = ~vec4<i32>(-14359i, firstLeadingBit(_wgslsmith_add_i32(var_1.a, ~global0.a)), select(0i, -2147483647i, !any(vec2<bool>(false, true))), 0i);
    return global0.b.a.x;
}

fn func_1() -> vec3<bool> {
    global1 = global0.c;
    let var_0 = 1i;
    global0 = Struct_5(2147483647i, global0.b, vec4<u32>(21286u, global1.x, global1.x, _wgslsmith_mult_u32(global0.c.x, _wgslsmith_mult_u32(global0.d, 14296u))), 4294967295u);
    global1 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~func_2(vec3<f32>(2049f, 1047f, 546f), Struct_1(-9129i, global0.b.b.zx)), _wgslsmith_mult_u32(1u, 1u), countOneBits(1u)), select(global0.c, vec4<u32>(4294967295u, 42782u, global1.x, 1u), false)), global0.b.a, false);
    global1 = vec4<u32>(_wgslsmith_dot_vec4_u32(global0.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 20669u, global1.x, 4294967295u), vec4<u32>(global0.d, 91739u, global1.x, global1.x), vec4<bool>(false, false, true, true)), ~global0.b.a), vec4<u32>(~36384u, abs(18251u), ~1u, func_2(vec3<f32>(-343f, 578f, -1082f), Struct_1(u_input.a.x, vec2<i32>(global0.b.b.x, 0i)))), max(select(vec4<u32>(global1.x, 1u, global0.c.x, global1.x), global0.b.a, true), global0.c))), 48419u, 52409u, 1u);
    return !select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, u_input.a.x >= var_0, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(select(true, true, false), true, select(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4935u, ~(~global1.x), global1.x, 73795u), reverseBits(~(~global0.c)));
    var var_0 = _wgslsmith_sub_i32(22910i, -7171i);
    var var_1 = ~(~u_input.a.xxx);
    let var_2 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_1(), vec3<bool>(false, false, false)), true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false || (-2079i == global0.a)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -852f))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) + -713f)), _wgslsmith_f_op_f32(f32(-1f) * -711f));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -1i, max(global0.b.a.x, 7618u), var_1.xy);
}

