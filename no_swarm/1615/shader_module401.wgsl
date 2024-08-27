struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1000f, 617f, -1028f, 487f, 219f, 910f, -706f, 1564f, -654f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_0 = vec2<u32>(7744u, ~4294967295u);
    global0 = array<f32, 9>();
    let var_1 = _wgslsmith_clamp_u32(abs(reverseBits(25049u & var_0.x)), 4210u, _wgslsmith_sub_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, 34748u)));
    return select(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(20096u, 57624u), vec2<u32>(1u, 32158u), true), min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_1) ^ vec2<u32>(var_0.x, 8380u)), vec2<u32>(~4294967295u, 68014u >> (1u % 32u))), _wgslsmith_sub_vec2_u32(~select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_1, 4294967295u), vec2<bool>(false, false)), ~(vec2<u32>(4294967295u, var_1) >> (vec2<u32>(var_1, var_0.x) % vec2<u32>(32u)))), abs(var_1) <= ~_wgslsmith_sub_u32(var_0.x, 1u)) ^ (countOneBits(firstTrailingBit(~vec2<u32>(var_1, 1u))) & (~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_1), vec2<u32>(var_0.x, var_1)) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, var_0.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, var_1)) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = u_input.a.xx << ((func_3(_wgslsmith_f_op_f32(990f * -632f)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(40924u, 42587u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = Struct_1((func_3(_wgslsmith_f_op_f32(floor(1216f))) & vec2<u32>(1u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(1u, 9u)], vec3<u32>(0u, 4294967295u, 367u));
    let var_2 = vec3<u32>(~14930u, ~(~firstLeadingBit(~var_1.c.x)), ~(~0u));
    let var_3 = _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(-4643i, _wgslsmith_dot_vec4_i32(arg_1, min(vec4<i32>(u_input.a.x, 36560i, -2147483647i, arg_0), arg_1)), 1i), vec3<i32>(_wgslsmith_mult_i32(arg_0, _wgslsmith_div_i32(1635i, 6187i)) >> (var_1.a.x % 32u), max(~var_0.x, reverseBits(-50236i)) >> (var_2.x % 32u), _wgslsmith_mod_i32(4607i, _wgslsmith_mult_i32(countOneBits(var_0.x), arg_0))));
    var var_4 = Struct_1(~var_1.c.xy, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(var_2), reverseBits(var_1.c), ~select(abs(var_2), select(var_2, var_2, true), vec3<bool>(false, false, true))));
    return ~var_4.a.x;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = select(!vec2<bool>(1u == func_2(arg_2, vec4<i32>(arg_2, -34112i, -13831i, u_input.b.x)), arg_0), !(!vec2<bool>(false, any(vec4<bool>(false, false, true, true)))), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0), vec4<bool>(false, false, arg_0, false))));
    let var_1 = reverseBits(~1u);
    var var_2 = Struct_1(select(~max(max(vec2<u32>(var_1, 27499u), vec2<u32>(var_1, var_1)), vec2<u32>(4211u, 72039u)), ~(~vec2<u32>(1u, 85554u)), !select(vec2<bool>(var_0.x, arg_0), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false))), global0[_wgslsmith_index_u32(4294967295u, 9u)], ~countOneBits(max(vec3<u32>(29482u, 0u, var_1), vec3<u32>(var_1, 4294967295u, 46169u)) ^ min(vec3<u32>(var_1, 1u, var_1), vec3<u32>(var_1, var_1, var_1))));
    var var_3 = Struct_1((select(~var_2.c.zx, _wgslsmith_div_vec2_u32(var_2.c.xy, vec2<u32>(1u, 36410u)), select(vec2<bool>(var_0.x, true), vec2<bool>(arg_0, var_0.x), vec2<bool>(arg_0, var_0.x))) ^ var_2.a) & ~(~(~var_2.c.yx)), global0[_wgslsmith_index_u32(select(min(var_1, var_1), countOneBits(1u), arg_0), 9u)], _wgslsmith_mult_vec3_u32(firstLeadingBit(var_2.c >> (vec3<u32>(var_2.c.x, 85603u, var_1) % vec3<u32>(32u))), select(var_2.c, var_2.c, false)));
    let var_4 = Struct_1(~(~(~min(vec2<u32>(31517u, var_1), vec2<u32>(var_2.a.x, var_1)))), global0[_wgslsmith_index_u32(func_3(var_3.b).x, 9u)], var_2.c);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(min(~(~11766u), ~_wgslsmith_clamp_u32(0u, 4294967295u, 13571u)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_1(false, vec3<f32>(-885f, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(var_0, 9u)]), -2147483647i), 30736u), ~(~vec2<u32>(var_0, 40562u))), _wgslsmith_add_vec2_u32(vec2<u32>(26332u, 30352u), select(vec2<u32>(42485u, var_0), vec2<u32>(0u, 32868u), vec2<bool>(true, false))) | ~(~vec2<u32>(1u, var_0))), 1u, ~40603u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(71996u, 43340u)), firstTrailingBit(vec2<u32>(1u, var_0) << (vec2<u32>(1u, 49702u) % vec2<u32>(32u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 1u), ~vec2<u32>(var_0, var_0))));
    let var_2 = !(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), true)));
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    var var_3 = 39506u;
    var var_4 = ~select(_wgslsmith_add_vec2_u32(vec2<u32>(59080u, 14476u), var_1.xy), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(34311u, 1925u))), ~u_input.a.x <= (u_input.a.x | _wgslsmith_div_i32(-1i, -35083i)));
    var_4 = ~var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(-877f, ~(~(~select(53291u, var_1.x, var_2.x))));
}

