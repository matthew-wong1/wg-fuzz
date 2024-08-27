struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(-vec2<i32>(u_input.a, u_input.c)) & ~max(vec2<i32>(-16557i, arg_0) & vec2<i32>(-1i, u_input.b), vec2<i32>(1i, u_input.b)));
    var var_1 = vec4<bool>(false, !(!(var_0.a.x > var_0.a.x) || true), true, false);
    var var_2 = false;
    var var_3 = Struct_1(min(min(vec2<i32>(u_input.b & 2147483647i, _wgslsmith_clamp_i32(43934i, u_input.b, u_input.c)), var_0.a), firstTrailingBit(reverseBits(-var_0.a))));
    var var_4 = Struct_1(vec2<i32>(var_3.a.x, arg_0) ^ firstLeadingBit(vec2<i32>(-1i) * -var_3.a));
    return 1u;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(vec2<i32>(u_input.a, -2147483647i));
    return _wgslsmith_mult_u32(func_3(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-630f, -913f, -396f, 653f))))) << (~1u % 32u), 125359u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(all(vec3<bool>(true, true, false))), _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(10583u, 27477u, 17045u, 38775u))), vec4<u32>(63711u, _wgslsmith_dot_vec3_u32(vec3<u32>(21542u, 19218u, 25140u), vec3<u32>(1u, 4142u, 1u)), _wgslsmith_clamp_u32(1u, 14214u, 4294967295u), 4294967295u))), select(vec2<u32>(47912u, 21147u >> (1u % 32u)), vec2<u32>(7195u, 1u), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = ~(~1u);
    var_0 = select(max(43352u, 1u) | _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(0u, 0u), ~_wgslsmith_mult_u32(20560u, 1u), 0u), 4294967295u & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 42949u, 0u, 4294967295u), reverseBits(vec4<u32>(4294967295u, 1u, 41149u, 4294967295u))), vec4<u32>(4294967295u, ~4294967295u, ~19863u, 0u)), select(true, select(true, true, false), true));
    var var_3 = 1682f;
    return !vec2<bool>(all(vec4<bool>(true, true, true, true)), !(!select(true, true, false)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = 1u;
    let var_1 = ~_wgslsmith_mod_i32(arg_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_2.a.x, 0i, 14970i), 1i, 58054i >> (1u % 32u), firstLeadingBit(arg_2.a.x)), -vec4<i32>(u_input.c, u_input.b, -76288i, arg_2.a.x)));
    return ~firstTrailingBit(vec2<i32>(var_1 << (0u % 32u), -1i) & firstTrailingBit(vec2<i32>(u_input.a, 8037i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(19743u, 1u, 8982u, 1665u), vec4<u32>(41765u, 3413u, 0u, 64651u)) ^ 1u, vec4<bool>(true, true, true, true), Struct_1(select(vec2<i32>(1i, 1i), vec2<i32>(u_input.c, u_input.c), func_1(Struct_1(vec2<i32>(19764i, 1i)), vec2<i32>(-2147483647i, -2147483647i), Struct_1(vec2<i32>(8139i, 0i)), Struct_1(vec2<i32>(7799i, u_input.a)))))));
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, u_input.b), vec2<i32>(20500i, var_0.a.x)) & reverseBits(var_0.a), var_0.a, countOneBits(var_0.a)), max(vec2<i32>(-1i, u_input.c), var_0.a)));
    let var_1 = Struct_1(abs(vec2<i32>(-u_input.c, var_0.a.x)));
    var_0 = var_1;
    var_0 = Struct_1(var_0.a);
    var var_2 = var_1;
    var_2 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1192f, 525f), vec2<f32>(-1146f, 196f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, -934f)))))), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 6971u, 1632u), vec3<u32>(1u, 1u, 1u), any(vec3<bool>(true, false, true))))));
}

