struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    return !all(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(false, all(vec3<bool>(false, true, true))), !(u_input.c >= -1i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1356f + _wgslsmith_f_op_f32(select(arg_0.x, -327f, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0)))))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a), reverseBits(vec4<u32>(u_input.a, u_input.b, 26099u, 0u)))), vec4<bool>(!arg_1.x, arg_1.x, true, !func_3()));
    var var_1 = !select(arg_1, !arg_1, var_0.c.zxx);
    var var_2 = var_0;
    let var_3 = var_0.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + arg_0.x) * _wgslsmith_f_op_f32(trunc(-1334f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 342f)), arg_0.x, _wgslsmith_f_op_f32(-var_2.a.x), -251f));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~(~((vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b) << (vec4<u32>(0u, 4875u, u_input.a, u_input.b) % vec4<u32>(32u))) >> (abs(vec4<u32>(40829u, 4294967295u, u_input.a, 72555u)) % vec4<u32>(32u)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(vec4<f32>(273f, -982f, -117f, 690f), vec3<bool>(false, false, false)))), func_3()));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, -1000f, 1603f, -178f)), false))), _wgslsmith_add_vec4_u32(var_0.b, firstTrailingBit(vec4<u32>(~1u, u_input.a, u_input.b, 0u))), var_0.c);
    var var_1 = max(min(firstLeadingBit(~(vec4<u32>(74234u, var_0.b.x, var_0.b.x, 15546u) ^ var_0.b)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(31126u, 1u, u_input.a, var_0.b.x) & vec4<u32>(111522u, var_0.b.x, var_0.b.x, u_input.b), _wgslsmith_mod_vec4_u32(var_0.b, var_0.b)), ~(~vec4<u32>(44018u, var_0.b.x, 4294967295u, 49899u)))), select(~vec4<u32>(11296u, u_input.b, var_0.b.x, var_0.b.x), var_0.b, all(vec3<bool>(true, var_0.c.x, false)) == var_0.c.x) | vec4<u32>(var_0.b.x, var_0.b.x, select(_wgslsmith_add_u32(u_input.b, u_input.a), ~4294967295u, !var_0.c.x), var_0.b.x));
    var var_2 = vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -reverseBits(vec3<i32>(u_input.c, -1i, -14982i)), vec3<i32>(-20466i, 3339i, min(u_input.c, 3017i))), -65541i, max(countOneBits(~u_input.c), _wgslsmith_clamp_i32(-1i, -43167i | u_input.c, 70829i) & u_input.c));
    let var_3 = var_0.c.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * vec4<f32>(649f, _wgslsmith_div_f32(-1000f, var_0.a.x), 132f, _wgslsmith_div_f32(-337f, var_0.a.x)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_1.x, u_input.b, var_1.x, 0u), ~vec4<u32>(1u, var_0.b.x, var_1.x, u_input.a)), vec4<u32>(26606u, u_input.a, 4294967295u & var_0.b.x, _wgslsmith_div_u32(u_input.b, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(~59203u, 17883u, ~4294967295u, select(u_input.a, var_0.b.x, var_0.c.x)), var_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.b.x, 1u, u_input.a) | var_0.b, vec4<u32>(var_1.x, 1u >> (0u % 32u), ~0u, u_input.b | var_1.x))), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    let var_2 = !any(var_1.c.xw);
    var var_3 = 0u;
    var var_4 = ~vec3<i32>(u_input.c, _wgslsmith_mod_i32(0i, u_input.c), i32(-1i) * -_wgslsmith_div_i32(12256i, -15571i));
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))));
    let var_6 = var_1;
    var_3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer((abs(vec3<i32>(var_4.x, var_4.x, u_input.c) & vec3<i32>(u_input.c, u_input.c, var_4.x)) & vec3<i32>(2147483647i, 1i, 60254i)) & vec3<i32>(39601i, var_4.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -71612i, u_input.c), vec3<i32>(u_input.c, var_4.x, -47825i), false), firstLeadingBit(vec3<i32>(var_4.x, u_input.c, 3562i)))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.c, 29040i, -7650i, -5594i)), abs(vec4<i32>(var_4.x, 0i, var_4.x, var_4.x))) << (abs(var_6.b) % vec4<u32>(32u)), vec4<i32>((var_4.x | 0i) & 1i, _wgslsmith_mod_i32(var_4.x, _wgslsmith_div_i32(var_4.x, u_input.c)), reverseBits(-3876i), -_wgslsmith_add_i32(var_4.x, -2147483647i))));
}

