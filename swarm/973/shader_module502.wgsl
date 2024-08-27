struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = countOneBits(i32(-1i) * -39892i) ^ u_input.b.x;
    var_0 = arg_2.a;
    return _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(14344u, arg_0.x)), func_3(true, -479f, Struct_1(u_input.b.x, vec4<u32>(u_input.a.x, arg_0.x, 4687u, 35552u)))), 1u, u_input.a.x & ~95403u);
    var var_1 = Struct_2(vec4<bool>(func_3(false, _wgslsmith_div_f32(1174f, 896f), Struct_1(-2147483647i, vec4<u32>(0u, 4786u, 0u, u_input.a.x))) > ~113789u, all(vec2<bool>(true, true)), false, false), true, -10929i, max(_wgslsmith_mod_u32(18770u, var_0.x), ~4294967295u));
    let var_2 = select(var_1.a.xyx, vec3<bool>(any(vec4<bool>(true, any(var_1.a.xw), all(vec4<bool>(true, var_1.b, true, var_1.a.x)), var_1.a.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, 41178i, -2147483647i), u_input.b, true), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, 110092i, 2147483647i), vec3<i32>(-1i, 2147483647i, var_1.c))) >= -68542i, true), var_1.a.yzy);
    var var_3 = Struct_1(_wgslsmith_div_i32(u_input.c, ~(~abs(u_input.c))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, 9605u)), min(~84136u, 1u), ~firstLeadingBit(var_1.d), u_input.a.x), select(~reverseBits(vec4<u32>(4294967295u, arg_0.x, var_0.x, arg_0.x)), ~(vec4<u32>(0u, arg_0.x, 0u, var_0.x) << (vec4<u32>(49186u, var_1.d, 34585u, 1u) % vec4<u32>(32u))), var_1.a)));
    var var_4 = Struct_2(!(!vec4<bool>(var_2.x, all(vec3<bool>(var_1.a.x, var_1.b, var_2.x)), any(var_1.a.xyx), var_2.x | false)), !(any(vec2<bool>(true, true)) || false), 1i, abs(reverseBits(firstLeadingBit(26108u | arg_0.x))));
    return Struct_1(countOneBits(-_wgslsmith_add_i32(~var_3.a, max(2147483647i, var_3.a))), var_3.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2(vec3<u32>(0u, firstLeadingBit(~u_input.a.x), min(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_1.d), vec3<u32>(arg_1.d, u_input.a.x, arg_1.d))), 1u)));
    let var_1 = false;
    var var_2 = arg_1;
    var var_3 = -44312i << (var_0.b.x % 32u);
    var var_4 = func_3(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(285f)), _wgslsmith_f_op_f32(1448f + -782f))))))), func_2(vec3<u32>(4294967295u, countOneBits(var_0.b.x), u_input.a.x)));
    return func_2(_wgslsmith_clamp_vec3_u32(u_input.a << (min(~u_input.a, _wgslsmith_mod_vec3_u32(var_0.b.zzz, u_input.a)) % vec3<u32>(32u)), ~var_0.b.yxw, vec3<u32>(arg_1.d & 0u, ~var_0.b.x, abs(var_2.d) << (max(4294967295u, 4294967295u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!vec4<bool>(true, ~1u >= firstLeadingBit(u_input.a.x), any(vec3<bool>(true, true, true)) == any(vec4<bool>(false, false, false, true)), true), Struct_2(vec4<bool>(false, false, true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), true || any(vec2<bool>(true, true)), u_input.b.x, _wgslsmith_add_u32(~u_input.a.x ^ 4294967295u, reverseBits(select(13058u, u_input.a.x, false)))));
    var_0 = Struct_1(_wgslsmith_div_i32(var_0.a, func_2(u_input.a).a), ~_wgslsmith_sub_vec4_u32(firstTrailingBit(reverseBits(var_0.b)), abs(func_1(vec4<bool>(false, true, true, false), Struct_2(vec4<bool>(true, true, true, true), false, var_0.a, u_input.a.x)).b)));
    let var_1 = true;
    var var_2 = Struct_2(select(select(vec4<bool>(true, u_input.c < var_0.a, select(false, true, false), true), !(!vec4<bool>(var_1, var_1, false, false)), !(!vec4<bool>(false, var_1, var_1, var_1))), !(!(!vec4<bool>(var_1, var_1, false, false))), true), any(select(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, false), vec3<bool>(false, var_1, false)), !select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, var_1), vec3<bool>(var_1, var_1, var_1)), !(!vec3<bool>(var_1, false, var_1)))), 0i, 4294967295u);
    var var_3 = var_2.d;
    var_3 = 98754u;
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_sub_i32(var_2.c, var_0.a)), var_0.a), u_input.a, ~var_0.b.x, ~(var_4 | func_1(var_2.a, Struct_2(vec4<bool>(true, true, var_2.a.x, true), false, -2147483647i, 0u)).a), _wgslsmith_div_vec2_i32(u_input.b.xy, vec2<i32>(21254i, -6629i)));
}

