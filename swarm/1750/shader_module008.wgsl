struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = countOneBits(arg_3) | (((arg_3 & firstTrailingBit(vec3<i32>(29214i, 1i, arg_3.x))) & firstTrailingBit(-vec3<i32>(54283i, 44603i, -1i))) | arg_3);
    let var_1 = Struct_1(_wgslsmith_sub_u32(arg_2, ~((arg_2 & arg_2) ^ 10000u)), u_input.a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -685f)) + -774f));
    return _wgslsmith_sub_vec4_u32(~select(vec4<u32>(4294967295u, 40777u, _wgslsmith_mod_u32(var_1.a, var_1.a), 12634u), ~(~vec4<u32>(1533u, arg_2, var_1.a, var_1.a)), !select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(true, true, arg_1, arg_1), arg_1)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 10164u, 4294967295u, 23530u), vec4<u32>(4294967295u, arg_2, 35223u, 31754u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_1.a, arg_2, var_1.a, arg_2)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2, var_1.a), vec4<u32>(19143u, var_1.a, var_1.a, 1u)))) ^ vec4<u32>(abs(0u << (var_1.a % 32u)), ~1u, ~98451u, var_1.a));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = var_2;
    var var_4 = max(firstTrailingBit(firstLeadingBit(select(func_3(vec4<f32>(arg_0, arg_0, arg_2.x, -122f), true, 0u, vec3<i32>(var_3.b, var_3.b, -2147483647i)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 17126u, var_1.a, 0u), vec4<u32>(var_1.a, arg_3.a, var_0.a, 7955u)), all(vec3<bool>(false, false, true))))), ~vec4<u32>(_wgslsmith_add_u32(func_3(vec4<f32>(-1035f, arg_2.x, -627f, arg_2.x), true, 60409u, vec3<i32>(var_2.b, var_3.b, var_1.b)).x, min(1u, var_3.a)), _wgslsmith_sub_u32(var_3.a, 33312u), ~var_2.a, var_1.a));
    return _wgslsmith_add_u32(abs(~var_3.a & _wgslsmith_mult_u32(arg_3.a | 22563u, var_2.a & var_0.a)), 13618u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = vec3<bool>(!(17072u <= func_2(-1194f, -12595i, vec2<f32>(-1232f, 1526f), Struct_1(arg_0.x, 0i))), select(all(vec2<bool>(true, true)), true, false), false);
    var var_2 = Struct_1(4294967295u, _wgslsmith_add_i32(abs(var_0.b), arg_1.b) >> ((~1u >> (arg_1.a % 32u)) % 32u));
    var var_3 = Struct_1(reverseBits(arg_1.a) & _wgslsmith_mult_u32(66156u, abs(_wgslsmith_mod_u32(15844u, arg_1.a))), 1i);
    let var_4 = 6479u;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-504f + 580f), _wgslsmith_f_op_f32(arg_2 * arg_2)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, 759f, arg_2, arg_2), vec4<f32>(-217f, -2616f, arg_2, -1294f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, 268f, 252f, arg_2) * vec4<f32>(789f, arg_2, -782f, arg_2)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~countOneBits(88777u), select(~min(50991u, 63408u), 0u, true), 1u), u_input.a);
    var var_1 = var_0;
    let var_2 = var_0.b;
    var var_3 = (((21015i | var_1.b) >> (var_1.a % 32u)) & (i32(-1i) * 0i)) >> (1u % 32u);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(750f, 365f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f - -366f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec2<u32>(var_0.a, 4294967295u >> (0u % 32u)), var_0, _wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(floor(1520f))))))));
    var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_1(1u, -19178i);
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<i32>(i32(-1i) * -3831i, 20953i, _wgslsmith_mult_i32(u_input.a, 23571i))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a, var_1.a), ~1u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, var_0.a), vec2<u32>(0u, 45287u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(22038u, 44519u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(40567u, 7963u)), abs(vec2<u32>(918u, 4294967295u))))));
}

