struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<f32, 17> = array<f32, 17>(-267f, -649f, 639f, -947f, 109f, 369f, 1621f, -1469f, 215f, -1000f, 871f, -1000f, 1000f, 1260f, -2121f, 1000f, 1379f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    var var_0 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 2147483647i) << (u_input.c % vec2<u32>(32u)), select(vec2<i32>(33235i, -19387i) >> (u_input.c % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(15171i, 10775i), vec2<i32>(-8931i, 0i)), vec2<bool>(false, arg_2.x))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -1i, -2147483647i), vec4<i32>(53546i, -1i, 12910i, -1i)), _wgslsmith_div_i32(1i, ~(-2147483647i))), abs(vec2<i32>(2792i, -32044i)));
    var var_1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -reverseBits(vec3<i32>(1i, -30591i, 50027i)), -reverseBits(vec3<i32>(var_0.x, -1i, 0i))));
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    var_1 = -_wgslsmith_add_i32(var_0.x, ~(-2147483647i));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> vec2<i32> {
    var var_0 = select(vec2<bool>(true, true), !(!vec2<bool>(true, func_3(vec4<f32>(arg_0.b.a, -696f, -915f, arg_2.x), Struct_2(-704f, Struct_1(arg_0.a)), vec2<bool>(false, false)))), !(!vec2<bool>(u_input.b.x == u_input.b.x, global0.x)));
    let var_1 = arg_2;
    var_0 = vec2<bool>(!var_0.x, var_0.x);
    let var_2 = abs(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(28108u, u_input.b.x, 4294967295u), false), ~vec3<u32>(u_input.a, 1u, u_input.a))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, ~13018u, max(~u_input.c.x, 1u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.c.x)), vec3<u32>(0u, u_input.c.x, u_input.a) & ~vec3<u32>(u_input.c.x, 20046u, 68390u)));
    var var_3 = any(vec2<bool>(!var_0.x, true));
    return vec2<i32>(-3924i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-5715i, 1i), select(firstTrailingBit(-1i) | 2147483647i, ~reverseBits(-1i), arg_1.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = select(!vec2<bool>(false, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, arg_0.a, arg_0.a, -736f) - vec4<f32>(arg_0.a, 1334f, global1[_wgslsmith_index_u32(42606u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])), Struct_2(154f, Struct_1(-1094f)), !vec2<bool>(arg_2, arg_2))), !vec2<bool>(arg_2, arg_0.a < _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))), true);
    var var_1 = -arg_1.x;
    global0 = !(!vec2<bool>(false, var_0.x));
    global0 = !select(!vec2<bool>(!global0.x, true), !select(select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), vec2<bool>(var_0.x, true)), select(vec2<bool>(false, false), vec2<bool>(var_0.x, global0.x), global0.x), !vec2<bool>(true, var_0.x)), !var_0.x);
    var var_2 = Struct_1(-936f);
    return Struct_3(global0.x);
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    global1 = array<f32, 17>();
    var var_0 = Struct_4(all(vec3<bool>(true, arg_0.a || all(vec4<bool>(false, true, false, arg_0.a)), false)), abs(~vec3<u32>(2909u, u_input.c.x & 834u, 0u)), firstLeadingBit(reverseBits(-1i >> (u_input.c.x % 32u))), global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(-408f)));
    let var_2 = func_4(var_1, firstLeadingBit(func_2(Struct_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), Struct_1(-164f)), Struct_3(global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-591f, 125f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(20122u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) + vec2<f32>(1609f, 2005f))))), var_0.c >= ~(_wgslsmith_mod_i32(var_0.c, -1i) ^ _wgslsmith_clamp_i32(-24227i, 23397i, -2147483647i)));
    var var_3 = Struct_3(arg_0.a);
    return !(!select(vec2<bool>(all(vec3<bool>(true, global0.x, true)), -17764i <= var_0.c), !select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, false), vec2<bool>(false, var_2.a)), !(!vec2<bool>(false, var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 17>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 78651u), 17u)];
    global0 = !(!(!(!func_1(Struct_3(global0.x)))));
    let var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(69249u, 73719u, u_input.c.x >> (4294967295u % 32u), 10101u & u_input.c.x), vec4<u32>(abs(reverseBits(u_input.c.x)), u_input.a, u_input.b.x, u_input.c.x ^ abs(u_input.c.x)), _wgslsmith_add_vec4_u32(abs(abs(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 35159u))), vec4<u32>(45195u, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.a & 0u))));
    var var_2 = Struct_2(667f, Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 17u)])));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(23661u, 17u)] + global1[_wgslsmith_index_u32(var_1.x, 17u)]))) + 1234f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 17u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(942f, 2576f)) - -1703f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a);
}

