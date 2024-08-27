struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    global0 = arg_0;
    global0 = Struct_1(~abs(min(arg_0.a, vec3<u32>(0u, 0u, u_input.b)) & global0.a));
    var var_0 = ~(~abs(vec2<u32>(0u, arg_0.a.x) << (~arg_0.a.xx % vec2<u32>(32u))));
    global0 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, ~var_0.x, 4294967295u), ~(~vec3<u32>(u_input.a, 28813u, arg_1))));
    var var_1 = Struct_1(abs(arg_0.a));
    return ~(~arg_0.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_2.a);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.a.x, 71243u, 18794u), var_0.a), vec3<u32>(var_0.a.x | _wgslsmith_div_u32(7374u, 55556u), _wgslsmith_mod_u32(arg_2.a.x, _wgslsmith_add_u32(arg_2.a.x, 56222u)), func_3(arg_1, 1u, select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false))))));
    var var_2 = 0i;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(56288u, 19753u, var_0.a.x, arg_1.a.x), vec4<u32>(4294967295u, var_1.a.x, arg_1.a.x, u_input.a)) ^ ~(~vec4<u32>(25347u, 4294967295u, arg_1.a.x, arg_2.a.x)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, var_1.a.x, u_input.a, var_0.a.x) << (vec4<u32>(u_input.b, 3413u, 27144u, arg_1.a.x) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.a, global0.a.x, 1970u, global0.a.x)), ~vec4<u32>(19264u, var_1.a.x, 1u, u_input.a)), max(_wgslsmith_add_vec4_u32(max(vec4<u32>(arg_2.a.x, global0.a.x, u_input.a, 8719u), vec4<u32>(4294967295u, 10129u, 21847u, u_input.b)), min(vec4<u32>(0u, 4294967295u, 11114u, u_input.b), vec4<u32>(4294967295u, 0u, 4294967295u, 21447u))), max(vec4<u32>(arg_1.a.x, var_0.a.x, arg_2.a.x, global0.a.x), vec4<u32>(var_1.a.x, 50758u, 52068u, 40650u)))), ~vec4<u32>(1u, 67684u, u_input.b | global0.a.x, ~arg_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, ~4814u, reverseBits(u_input.b), func_2(vec4<bool>(true, true, true, false), Struct_1(vec3<u32>(3608u, arg_0.a.x, 1u)), Struct_1(vec3<u32>(u_input.b, 12561u, arg_1.a.x)))), abs(vec4<u32>(var_0.a.x, var_0.a.x, 1u, arg_1.a.x)) >> (vec4<u32>(4294967295u, u_input.a, var_0.a.x, arg_3.a.x) % vec4<u32>(32u))), u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(39927u, var_0.a.x), _wgslsmith_mod_vec2_u32(var_0.a.zz, arg_3.a.yy)), ~6679u));
    var var_2 = var_0.a.xz;
    let var_3 = ~arg_1.a.x;
    var var_4 = firstLeadingBit(u_input.c);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(reverseBits(29546u), ~arg_1.a.x, var_3), arg_3.a), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~var_3, ~var_0.a.x), _wgslsmith_sub_vec3_u32(max(vec3<u32>(21287u, 0u, 26609u), global0.a), vec3<u32>(2540u, 4294967295u, var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(global0.a, firstTrailingBit(~global0.a)) >> (vec3<u32>(~func_1(Struct_1(global0.a), Struct_1(vec3<u32>(global0.a.x, 25775u, 4294967295u)), -204f, Struct_1(global0.a)), _wgslsmith_dot_vec2_u32(global0.a.zx, global0.a.yx) ^ _wgslsmith_dot_vec3_u32(global0.a, global0.a), u_input.b) % vec3<u32>(32u)));
    global0 = Struct_1(_wgslsmith_mult_vec3_u32(global0.a | var_0.a, global0.a));
    global0 = var_0;
    let var_1 = -(~vec2<i32>(~firstTrailingBit(0i), u_input.c));
    global0 = Struct_1(vec3<u32>(global0.a.x, _wgslsmith_mult_u32(~global0.a.x, _wgslsmith_mult_u32(u_input.b, ~0u)), ~func_3(var_0, u_input.b, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false))));
    var var_2 = ~(~(~select(vec4<u32>(u_input.a, u_input.b, global0.a.x, 1u), vec4<u32>(u_input.a, 0u, 4294967295u, 5577u) << (vec4<u32>(1547u, 9623u, 0u, 1u) % vec4<u32>(32u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false))));
    var var_3 = var_0;
    var_2 = select(abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, 1u, 1u, 91373u), vec4<u32>(4294967295u, var_2.x, var_0.a.x, 0u)), vec4<u32>(max(var_0.a.x, u_input.a), var_0.a.x ^ var_3.a.x, _wgslsmith_mult_u32(18826u, 76867u), ~var_2.x))), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, 1u, 4294967295u, 15339u), vec4<u32>(1u, global0.a.x, u_input.a, global0.a.x), vec4<u32>(var_2.x, 61354u, 0u, 63391u)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)), true, true));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(785f, _wgslsmith_f_op_f32(min(-755f, -156f)))), _wgslsmith_f_op_f32(f32(-1f) * -2692f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1562f))))));
}

