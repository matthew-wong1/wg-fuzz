struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = !arg_0.b;
    let var_1 = Struct_1(var_0.x, vec4<bool>(false, (58166u < ~u_input.a.x) & select(arg_0.b.x, true && arg_0.a, true), any(arg_0.b.xz), !arg_0.a));
    global1 = 0u;
    global0 = array<vec3<bool>, 27>();
    global0 = array<vec3<bool>, 27>();
    return ~u_input.a.x;
}

fn func_1() -> u32 {
    global0 = array<vec3<bool>, 27>();
    global1 = u_input.a.x;
    var var_0 = abs(abs(reverseBits(firstLeadingBit(-vec4<i32>(u_input.b.x, -12438i, -45747i, 28556i)))));
    var var_1 = firstLeadingBit(var_0.wwx);
    global0 = array<vec3<bool>, 27>();
    return func_2(Struct_1(select(true, any(vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = all(vec2<bool>(!(arg_1.b.x | (true | arg_1.b.x)), arg_1.a));
    var var_1 = !vec3<bool>(false, false & !arg_1.b.x, var_0);
    global1 = u_input.a.x;
    var var_2 = abs(9619i);
    var_1 = !global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    return vec4<bool>(arg_1.a, true, !any(select(!arg_1.b, !vec4<bool>(false, var_1.x, var_1.x, false), true)), false);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = countOneBits(-u_input.b.x);
    let var_1 = Struct_1(arg_2, arg_0.b);
    global0 = array<vec3<bool>, 27>();
    let var_2 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 0u, arg_1), vec3<u32>(81925u, u_input.a.x, arg_1)))) << ((abs(~(~u_input.a)) | u_input.a) % vec3<u32>(32u));
    var var_3 = vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(-firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(26157i, 8214i, u_input.b.x))), min(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, -31920i, u_input.b.x)), -vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), _wgslsmith_add_vec3_i32(min(vec3<i32>(-77033i, 0i, 0i), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), vec3<i32>(-64246i, 14602i, u_input.b.x)))));
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    global1 = ~1u;
    var var_1 = vec3<u32>(u_input.a.x, ~u_input.a.x, func_1());
    var var_2 = vec3<u32>(~4294967295u, countOneBits(~u_input.a.x >> ((~0u >> (u_input.a.x % 32u)) % 32u)), var_1.x);
    let var_3 = _wgslsmith_dot_vec3_i32(-(abs(vec3<i32>(var_0, 1i, 0i)) ^ max(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(var_0, -1i, var_0))) | (-(~vec3<i32>(u_input.b.x, var_0, var_0)) >> (~(~u_input.a) % vec3<u32>(32u))), abs(~(~(-vec3<i32>(var_0, 17023i, u_input.b.x)))));
    return Struct_1(!arg_0.a, select(arg_0.b, vec4<bool>(var_0 == -21749i, true, !arg_0.a && true, !(!arg_0.b.x)), arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(!all(vec2<bool>(true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_clamp_u32((u_input.a.x ^ 0u) & reverseBits(u_input.a.x), 6593u, func_1() ^ abs(u_input.a.x)), any(func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(292f, -1208f, 972f), vec3<f32>(176f, -1260f, 996f))), Struct_1(false, vec4<bool>(false, false, false, true))))));
    var var_1 = vec4<i32>(-1i, 1i, 1i, abs(_wgslsmith_mod_i32(select(reverseBits(u_input.b.x), ~u_input.b.x, u_input.a.x <= 58120u), ~(-9517i))));
    let var_2 = u_input.a.yy;
    var var_3 = true;
    let var_4 = firstLeadingBit(countOneBits(var_2));
    var_3 = var_0.a;
    var_1 = vec4<i32>(countOneBits(_wgslsmith_sub_i32(var_1.x & 1i, 1i)), reverseBits(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 10881i, 36281i), vec3<i32>(u_input.b.x, var_1.x, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), _wgslsmith_mult_vec3_i32(var_1.www, vec3<i32>(u_input.b.x, 0i, -58853i))))), _wgslsmith_div_i32(~countOneBits(countOneBits(u_input.b.x)), -(abs(var_1.x) << (25519u % 32u))), max(var_1.x, -4883i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-1998f)), ~_wgslsmith_add_i32(u_input.b.x, ~u_input.b.x), _wgslsmith_mod_i32(max(u_input.b.x, u_input.b.x), abs(_wgslsmith_add_i32(var_1.x, var_1.x))) ^ -15779i, u_input.a.yy);
}

