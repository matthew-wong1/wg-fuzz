struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 43594u), false, -1869f, -688f), Struct_1(vec4<u32>(988u, 75981u, 1u, 0u), false, 470f, -334f), Struct_1(vec4<u32>(8801u, 1u, 41876u, 1u), true, -700f, 798f), Struct_1(vec4<u32>(26357u, 0u, 3665u, 0u), false, -299f, 300f), Struct_1(vec4<u32>(26697u, 4294967295u, 4294967295u, 1u), true, 336f, -493f), Struct_1(vec4<u32>(0u, 28755u, 4294967295u, 0u), false, 1891f, 347f), Struct_1(vec4<u32>(4294967295u, 88007u, 42126u, 16560u), false, 577f, 634f), Struct_1(vec4<u32>(4294967295u, 7398u, 16202u, 6498u), true, -1733f, 1614f), Struct_1(vec4<u32>(4294967295u, 75748u, 815u, 1u), true, 102f, -1000f), Struct_1(vec4<u32>(1u, 66381u, 37514u, 4294967295u), false, -1372f, 541f), Struct_1(vec4<u32>(42765u, 1u, 13437u, 4294967295u), false, 426f, -513f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~0u), 11u)];
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(select(70400i, -1i ^ u_input.a, any(vec4<bool>(false, var_0.b, false, var_0.b))), ~(u_input.a & u_input.a), u_input.a), ~(-reverseBits(vec3<i32>(u_input.a, u_input.a, 0i)))) << (_wgslsmith_div_u32(max(~(~var_0.a.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), 1u)), 1u) % 32u);
    var var_2 = Struct_1(min(vec4<u32>(var_0.a.x, reverseBits(7402u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 64039u), var_0.a.x), reverseBits(var_0.a.x)), firstTrailingBit(~abs(var_0.a))), true, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(max(1429f, var_0.d)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))))))));
    let var_3 = select(select(!vec4<bool>(!var_2.b, var_2.b, false || var_2.b, !var_2.b), vec4<bool>(true, var_2.a.x != (var_2.a.x << (3504u % 32u)), false, true), !any(vec4<bool>(false, false, var_0.b, true))), !vec4<bool>(!var_2.b, select(any(vec4<bool>(var_2.b, var_2.b, var_0.b, var_2.b)), var_2.b, !var_2.b), !var_0.b, var_0.b), !(!vec4<bool>(true, true, false, 4294967295u != var_2.a.x)));
    return var_2.d;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = Struct_1(countOneBits(_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0, 28107u, arg_0, 44071u), vec4<u32>(arg_0, 3107u, 18888u, arg_0)), reverseBits(vec4<u32>(arg_0, 0u, 3294u, 0u) | vec4<u32>(arg_0, 53472u, 0u, 71983u)))), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), arg_2.x);
    var var_1 = vec3<u32>(56935u, max(arg_0, ~4582u), 4294967295u);
    let var_2 = _wgslsmith_mult_u32(79470u, var_1.x);
    global0 = array<Struct_1, 11>();
    let var_3 = any(select(vec2<bool>(arg_3, arg_3), select(!select(vec2<bool>(true, true), vec2<bool>(true, arg_3), true), !vec2<bool>(arg_3, arg_3), false), !select(!vec2<bool>(arg_3, arg_3), select(vec2<bool>(false, var_0.b), vec2<bool>(arg_3, var_0.b), var_0.b), !vec2<bool>(false, arg_3))));
    return all(select(!vec4<bool>(true, true, true, all(vec2<bool>(var_3, arg_3))), vec4<bool>(!(u_input.a <= u_input.a), false, all(!vec2<bool>(var_3, var_3)), true || all(vec2<bool>(var_3, var_0.b))), vec4<bool>(var_0.d <= _wgslsmith_f_op_f32(floor(1257f)), arg_3, any(vec4<bool>(true, var_0.b, true, arg_3)), !(u_input.a > -2147483647i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 - -432f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_2, arg_2))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(abs(1114f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1045f)))))));
    let var_1 = ~(~(28026u | arg_0.x));
    global0 = array<Struct_1, 11>();
    var var_2 = Struct_1(countOneBits(~arg_0), all(vec4<bool>(true, any(vec2<bool>(true, true)), func_2(1u >> (arg_0.x % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(509f, 802f, var_0), vec3<f32>(923f, arg_2, -1096f)), vec2<f32>(arg_2, -349f), var_1 < 1u), all(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2)))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(max(-231f, arg_2))));
    return Struct_1(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(~var_1, 1u, max(2177u, 53873u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(var_1, var_2.a.x))), firstTrailingBit(vec4<u32>(var_1, var_1, 48449u, arg_0.x)))), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~select(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 1u, 56166u), u_input.a >= u_input.a), true), min(2821i, ~u_input.a), 629f);
    var_0 = global0[_wgslsmith_index_u32(var_0.a.x, 11u)];
    var var_1 = false;
    let var_2 = func_1(~var_0.a, select(1i, u_input.a, func_2(~var_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 393f, var_0.c) + vec3<f32>(var_0.d, var_0.c, -1093f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-234f, -922f)))), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(452f))), var_0.b))));
    let var_3 = -903f;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a, 16749i, 2147483647i, -1i)), vec4<i32>(countOneBits(0i), firstTrailingBit(select(0i, u_input.a, false)), u_input.a, _wgslsmith_sub_i32(firstLeadingBit(u_input.a), u_input.a << (38623u % 32u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, var_2.d, var_3), vec3<f32>(1327f, 103f, var_2.c))))))), 11329i | (u_input.a & u_input.a), min(select(vec2<u32>(var_2.a.x, var_2.a.x), firstLeadingBit(vec2<u32>(20041u, var_2.a.x)), !var_0.b) << (~(~var_0.a.xw) % vec2<u32>(32u)), var_2.a.xy));
}

