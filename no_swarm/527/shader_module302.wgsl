struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(firstTrailingBit(vec4<i32>(2147483647i, abs(-u_input.b), u_input.b, ~_wgslsmith_add_i32(u_input.b, 21756i))), u_input.b >> (1u % 32u));
    global0 = array<Struct_2, 6>();
    let var_1 = var_0;
    var var_2 = reverseBits(~(~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 69298u)))));
    var_2 = select((vec4<u32>(_wgslsmith_sub_u32(0u, var_2.x), 107500u, _wgslsmith_dot_vec2_u32(vec2<u32>(5714u, var_2.x), var_2.xw), 47798u) & _wgslsmith_mod_vec4_u32(vec4<u32>(22220u, u_input.a, 21841u, u_input.a), vec4<u32>(4294967295u, 1u, 0u, var_2.x))) << (~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, u_input.a, 108255u, u_input.a), vec4<u32>(21260u, u_input.a, 4294967295u, var_2.x))) % vec4<u32>(32u)), min(select(firstTrailingBit(vec4<u32>(u_input.a, var_2.x, 1u, 0u)), vec4<u32>(u_input.a, var_2.x, var_2.x, 4294967295u) >> (vec4<u32>(4294967295u, 1u, var_2.x, u_input.a) % vec4<u32>(32u)), true) ^ select(vec4<u32>(0u, u_input.a, var_2.x, 1u), countOneBits(vec4<u32>(1u, 111447u, var_2.x, 11319u)), all(vec2<bool>(false, false))), firstLeadingBit(~(~vec4<u32>(u_input.a, 0u, 84u, u_input.a)))), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    return u_input.b >> (var_2.x % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_mult_vec2_i32(arg_2.a.wx, vec2<i32>(-2147483647i, func_3()));
    let var_1 = reverseBits(~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(25097i, arg_2.b, arg_2.a.x, arg_2.a.x), arg_2.a), -2147483647i), var_0.x));
    let var_2 = select(arg_0.a, select(1u, arg_0.b.x, false), any(!select(!vec2<bool>(true, arg_0.c), !vec2<bool>(arg_0.c, arg_0.c), all(vec3<bool>(arg_0.c, arg_0.c, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)))));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = arg_0.b.xz;
    global0 = array<Struct_2, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(u_input.a, vec4<u32>(arg_0.b.x, arg_0.a, arg_0.b.x, 4294967295u), arg_0.c), _wgslsmith_div_f32(555f, -2050f), Struct_1(vec4<i32>(0i, 571i, u_input.b, 1i), 8107i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-572f))), -477f)));
    let var_2 = Struct_2(4294967295u, min(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, var_0.x, arg_0.b.x), ~vec3<u32>(4294967295u, 14062u, 38289u)), u_input.a, 84765u), arg_0.b), !(-287f >= var_1.x));
    global0 = array<Struct_2, 6>();
    return vec3<bool>(true, false, arg_0.c | var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, true), select(func_1(global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(true, false, func_1(global0[_wgslsmith_index_u32(u_input.a, 6u)]).x), true), select(vec3<bool>(false, all(vec3<bool>(true, true, true)), true), !vec3<bool>(select(false, true, false), any(vec4<bool>(false, false, true, true)), true), !vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true)));
    var var_1 = _wgslsmith_f_op_f32(927f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f * 1037f) + _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 6u)], 751f, Struct_1(vec4<i32>(u_input.b, 46139i, u_input.b, 39959i), u_input.b)))))));
    let var_2 = true;
    let var_3 = vec2<i32>(-u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b, -9006i << (u_input.a % 32u), max(0i, u_input.b)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(1i, -4953i, -2239i)), vec3<i32>(31009i, u_input.b, -1i)))) & select(vec2<i32>(54200i, max(-1i, u_input.b) << (_wgslsmith_add_u32(17414u, u_input.a) % 32u)), -max(min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(13581i, 0i)), ~vec2<i32>(u_input.b, 0i)), true);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-348f, _wgslsmith_f_op_f32(788f + 817f))) * _wgslsmith_f_op_f32(f32(-1f) * -889f))))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_u32(u_input.a, u_input.a) >> ((firstLeadingBit(u_input.a) ^ firstTrailingBit(u_input.a)) % 32u)) ^ u_input.a);
}

