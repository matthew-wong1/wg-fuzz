struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = ~vec4<u32>(~4294967295u, ~arg_0, u_input.a.x, global0.c.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1374f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1559f + -1150f), _wgslsmith_f_op_f32(-391f - 567f))))) - -275f));
    global0 = Struct_2(u_input.a.x, Struct_1(select(!select(global0.c.a, global0.b.a, vec3<bool>(arg_1, false, true)), vec3<bool>(true, false, arg_1 && false), vec3<bool>(arg_1, global0.c.a.x != global0.c.a.x, global0.c.a.x)), ~4294967295u), Struct_1(vec3<bool>(true, arg_1, all(select(global0.b.a, vec3<bool>(false, global0.b.a.x, true), vec3<bool>(true, true, true)))), 4294967295u));
    return global0.b.a;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global0.b;
    var var_1 = u_input.a.x;
    var var_2 = global0.b;
    var var_3 = Struct_1(select(select(arg_0, !select(var_2.a, vec3<bool>(var_0.a.x, var_0.a.x, true), true), func_3(global0.a << (36407u % 32u), true, vec4<i32>(1i, 1i, 1i, 1i))), arg_0, var_2.a), 13481u);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(407f - 541f), -436f));
    return Struct_1(!select(vec3<bool>(false, any(var_0.a.zx), any(vec4<bool>(true, false, var_0.a.x, false))), var_2.a, true), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, max(2607u, var_0.b), ~4294967295u), ~(~vec3<u32>(1u, var_2.b, 1415u))), ~vec3<u32>(u_input.a.x, _wgslsmith_div_u32(var_0.b, 4294967295u), firstTrailingBit(u_input.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    global0 = Struct_2(max(global0.b.b, max(~u_input.a.x, 0u)), arg_0, arg_1.b);
    var var_0 = func_2(func_2(!vec3<bool>(global0.b.a.x, true, true)).a);
    global0 = arg_1;
    let var_1 = Struct_1(vec3<bool>(true, global0.b.a.x, true), countOneBits(u_input.a.x & ~(arg_1.b.b | u_input.a.x)));
    var var_2 = countOneBits(abs(max(firstLeadingBit(arg_0.b), arg_1.a)) | (1u ^ arg_0.b));
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global0 = Struct_2(arg_0.c.b, Struct_1(vec3<bool>(true, false, all(!arg_0.c.a.xx)), u_input.a.x), Struct_1(global0.c.a, abs(_wgslsmith_div_u32(0u, 1u))));
    var var_0 = 1f;
    let var_1 = false;
    let var_2 = -(~1i);
    let var_3 = func_4(func_2(arg_0.c.a), arg_0);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(4294967295u, global0.b, global0.b), global0.b.b << (~1u % 32u));
    var var_0 = select(vec4<u32>(_wgslsmith_mod_u32(1u, abs(37543u)), ~8071u, 9507u, 30443u) ^ vec4<u32>(55258u >> (_wgslsmith_add_u32(4294967295u, u_input.a.x) % 32u), _wgslsmith_mod_u32(~u_input.a.x, global0.a), ~_wgslsmith_add_u32(global0.a, 20893u), 1u), max(~min(vec4<u32>(global0.a, global0.c.b, 0u, 13314u), vec4<u32>(u_input.a.x, 14248u, 0u, global0.c.b)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 25341u), ~u_input.a.x, min(global0.c.b, 132310u), 0u), select(~vec4<u32>(1u, 4294967295u, global0.a, u_input.a.x), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), global0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-544f)))) == _wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f * -261f))));
    let var_1 = 1494f;
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.xy, vec2<u32>(4219u, 2984u)) ^ vec2<u32>(select(global0.a, global0.b.b, global0.b.a.x), var_0.x), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, global0.b.b), vec2<u32>(1u, 98893u)), abs(vec2<u32>(4294967295u, u_input.a.x))), u_input.a) << (vec2<u32>(u_input.a.x, ~func_1(func_1(Struct_2(global0.a, Struct_1(global0.b.a, 1u), global0.c), u_input.a.x), ~var_0.x).c.b) % vec2<u32>(32u));
    var_0 = max(~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, var_2.x, global0.b.b, var_2.x)))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44156u, 4294967295u, var_0.x, var_0.x) ^ vec4<u32>(var_2.x, var_2.x, u_input.a.x, var_0.x), select(vec4<u32>(1176u, 4294967295u, 4294967295u, 0u), vec4<u32>(var_0.x, 64521u, 4294967295u, global0.b.b), vec4<bool>(true, global0.b.a.x, true, global0.c.a.x))), 1u), select(max(0u, var_0.x), 59206u | var_0.x, func_3(~100981u, true, -vec4<i32>(1i, -1i, -4348i, 36646i)).x), var_2.x, 0u));
    let var_3 = Struct_1(global0.b.a, _wgslsmith_mult_u32(func_1(Struct_2(~global0.b.b, global0.c, Struct_1(global0.b.a, 14185u)), 66716u).c.b, var_2.x));
    let var_4 = 0u & firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(func_2(vec3<bool>(true, global0.c.a.x, var_3.a.x)).b, func_1(Struct_2(20275u, var_3, Struct_1(global0.b.a, var_3.b)), 22421u).a), ~select(var_0.x, u_input.a.x, true)));
    var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~52380u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.b, 78663u, var_0.x, var_4), vec4<u32>(var_4, global0.b.b, var_3.b, 40914u) << (vec4<u32>(98765u, 50362u, var_3.b, 4294967295u) % vec4<u32>(32u))), (1u << (var_4 % 32u)) | _wgslsmith_mod_u32(var_0.x, 29768u), func_2(vec3<bool>(false, true, true)).b), reverseBits(~firstTrailingBit(vec4<u32>(u_input.a.x, var_3.b, 3946u, u_input.a.x)))), ~53133u, _wgslsmith_add_u32(var_2.x, _wgslsmith_mod_u32(func_2(func_2(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x)).a).b, ~countOneBits(var_0.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mult_i32(~1i, -14333i), var_2.x);
}

