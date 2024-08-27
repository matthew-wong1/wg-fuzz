struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(4294967295u, 78507u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 48715u, 1u)), Struct_1(vec4<u32>(4294967295u, 3884u, 46345u, 10641u), vec4<u32>(4294967295u, 94308u, 45686u, 4294967295u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> u32 {
    return arg_0;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = vec4<u32>(~1u, 26974u, ~1u, _wgslsmith_div_u32(min(~0u, ~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 13117u), vec2<u32>(4294967295u, 4294967295u))) << (~(~_wgslsmith_clamp_u32(0u, 41249u, 1u)) % 32u));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, 51025u, var_0.x, 0u) << (abs(vec4<u32>(var_0.x, 26724u, 0u, 41766u)) % vec4<u32>(32u))), ~vec4<u32>(0u, 4294967295u, 1u, 10119u) & vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, var_0.x)), 22951u, _wgslsmith_clamp_u32(var_0.x, var_0.x, 33564u), firstLeadingBit(4294967295u))), select(~(max(vec4<u32>(0u, var_0.x, 22481u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 14352u)) << (~vec4<u32>(4294967295u, 4294967295u, var_0.x, 66426u) % vec4<u32>(32u))), ~vec4<u32>(var_0.x, var_0.x, 6227u, 1u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, 103564u, 62598u), vec4<u32>(var_0.x, 1u, var_0.x, 1u) ^ vec4<u32>(3726u, 0u, 4294967295u, 58349u)), vec4<bool>(true, true, true, true)));
    var var_2 = var_1.a.yyx << (vec3<u32>(4294967295u, func_3(max(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 4294967295u), var_1.a.zy))), var_0.x) % vec3<u32>(32u));
    return var_2.x;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    let var_0 = -_wgslsmith_sub_vec3_i32(max(firstTrailingBit(arg_3), vec3<i32>(u_input.a, -2147483647i, arg_0)), vec3<i32>(~arg_3.x, u_input.a, -18252i | arg_3.x)) >> ((reverseBits(vec3<u32>(1u, ~1u, 1u)) & min(vec3<u32>(97278u, 1u, 0u), vec3<u32>(func_2(vec4<i32>(u_input.b, -77134i, -1i, arg_3.x)), ~1u, func_3(4294967295u)))) % vec3<u32>(32u));
    let var_1 = (firstLeadingBit(_wgslsmith_div_u32(~50656u, func_2(vec4<i32>(u_input.a, 1914i, arg_3.x, 20070i)))) >= 1u) | arg_2.x;
    var var_2 = var_0.x;
    var_2 = countOneBits(-1i) ^ _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(-4693i, arg_3.x)) >> (_wgslsmith_mult_u32(1u, ~25030u) % 32u), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(62489i, 7791i, 1i) & u_input.a, arg_0, var_0.x), i32(-1i) * -(arg_3.x | -1i));
    let var_3 = _wgslsmith_sub_vec4_i32(firstLeadingBit(reverseBits(countOneBits(vec4<i32>(arg_0, arg_3.x, var_0.x, -655i))) | min(vec4<i32>(1i, 7336i, var_0.x, -14957i), abs(vec4<i32>(arg_0, -1410i, u_input.a, -2147483647i)))), vec4<i32>(u_input.a, -countOneBits(~1i), abs(var_0.x), -1i));
    return ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~0u), 1u), ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_add_i32(32936i, min(-(u_input.a | 32330i), -(i32(-1i) * -32173i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2016f, _wgslsmith_f_op_f32(trunc(-614f))))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, false, true))), vec3<bool>(any(vec2<bool>(true, false)), true, true)), -_wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(u_input.a), _wgslsmith_clamp_i32(u_input.a, -18568i, 1i), 30355i), abs(vec3<i32>(u_input.a, -1i, u_input.a)))), 2u)];
    let var_1 = vec2<bool>(true, true);
    var var_2 = global0[_wgslsmith_index_u32(5866u, 2u)];
    let var_3 = Struct_1(~vec4<u32>(0u, _wgslsmith_mult_u32(countOneBits(var_0.a.x), max(24104u, 29839u)), var_0.a.x, ~max(var_0.a.x, var_2.a.x)), vec4<u32>(var_2.b.x, ~(~func_2(vec4<i32>(u_input.b, u_input.b, -29554i, u_input.a))), var_0.a.x, 84408u));
    let var_4 = reverseBits(var_0.b ^ ~(~select(vec4<u32>(var_3.b.x, 12436u, 737u, 25386u), vec4<u32>(var_0.b.x, 31037u, 18727u, var_0.a.x), var_1.x)));
    global0 = array<Struct_1, 2>();
    var_2 = Struct_1(select(~select(var_2.a, abs(vec4<u32>(var_0.b.x, 4294967295u, 17731u, var_0.a.x)), false), ~(~select(vec4<u32>(4294967295u, 116455u, var_2.a.x, 0u), vec4<u32>(1u, var_3.a.x, 66890u, var_2.b.x), var_1.x)), false), _wgslsmith_add_vec4_u32(vec4<u32>(var_4.x, 4294967295u, ~(var_3.a.x >> (var_2.a.x % 32u)), 24955u), var_0.a));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(vec2<u32>(var_0.b.x, var_4.x), vec2<u32>(57765u, var_4.x))));
}

