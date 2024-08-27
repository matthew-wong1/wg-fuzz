struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<u32>) -> bool {
    global0 = arg_1.a;
    global1 = ~(~(~_wgslsmith_mult_u32(0u, arg_2.x) << (u_input.b.x % 32u)));
    let var_0 = Struct_1(vec4<i32>(8112i, 1i, -_wgslsmith_sub_i32(select(u_input.c, 18205i, true), countOneBits(24217i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.a, arg_0.x), vec4<i32>(117077i, u_input.a, -39932i, u_input.a)), ~vec4<i32>(-1i, arg_0.x, 2147483647i, 45281i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 38105i, 24974i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, 11598i, 31716i, -2147483647i), vec4<i32>(u_input.a, arg_0.x, 28952i, arg_0.x)), vec4<i32>(u_input.c, arg_0.x, arg_0.x, arg_0.x)))), vec4<bool>(true, false, true, 1u < u_input.b.x));
    let var_1 = var_0.b.yx;
    global0 = ~u_input.b.x;
    return !all(select(var_0.b, select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(var_1.x, var_1.x, false, var_0.b.x), select(var_0.b, var_0.b, var_0.b)), vec4<bool>(select(false, var_1.x, var_1.x), var_0.b.x | true, false, true)));
}

fn func_2() -> Struct_1 {
    global1 = ~u_input.b.x;
    var var_0 = Struct_4(_wgslsmith_sub_u32(~(~reverseBits(16295u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, 0u) >> (1u % 32u), u_input.b.x, 3958u)));
    let var_1 = vec2<bool>(false, true);
    let var_2 = 4294967295u;
    let var_3 = Struct_2(Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 17052i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, 11159i, 18822i), vec4<i32>(u_input.c, u_input.a, u_input.c, -35577i), vec4<i32>(52672i, 1276i, u_input.a, 2147483647i)))), vec4<bool>(u_input.a > u_input.a, !var_1.x != true, var_1.x, func_3(-vec3<i32>(-1i, u_input.c, -2525i), Struct_4(45238u), vec2<u32>(u_input.b.x, u_input.b.x)))), countOneBits(~_wgslsmith_mod_i32(0i, u_input.c) ^ _wgslsmith_div_i32(-1i ^ u_input.c, 1i)));
    return var_3.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = func_2();
    let var_1 = var_0.a.x;
    return 65939u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(-12350i, Struct_1(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 16566i, -2147483647i, -28054i)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), 1u);
    var var_0 = Struct_3(_wgslsmith_mult_i32(i32(-1i) * -reverseBits(-2147483647i), ~u_input.a), vec4<bool>(false, !any(vec2<bool>(true, false)), 1i == min(u_input.a & u_input.c, -12048i), !(true | any(vec3<bool>(true, true, false)))));
    var_0 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, reverseBits(u_input.c), 0i), firstLeadingBit(vec3<i32>(max(-1i, u_input.c), func_2().a.x, -2147483647i))), var_0.b);
    let var_1 = ~vec4<i32>(u_input.a, var_0.a, 4688i, firstTrailingBit(0i));
    let x = u_input.a;
    s_output = StorageBuffer(-22052i, ~1u, _wgslsmith_dot_vec4_i32(firstTrailingBit(max(var_1, var_1)) | var_1, var_1 | vec4<i32>(abs(var_1.x), -27340i, -28151i, var_1.x)), ~(u_input.b.yzy | vec3<u32>(~u_input.b.x, u_input.b.x, 4294967295u | u_input.b.x)));
}

