struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 17268u, 28520u), vec3<u32>(1u, 37152u, 48820u), vec3<u32>(2770u, 66692u, 4294967295u), vec3<u32>(59811u, 41799u, 62862u), vec3<u32>(11896u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 6261u, 25270u), vec3<u32>(1u, 17660u, 105756u), vec3<u32>(0u, 1u, 25577u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 37585u, 0u), vec3<u32>(67417u, 1u, 0u), vec3<u32>(1u, 20097u, 6883u), vec3<u32>(23449u, 4294967295u, 10161u), vec3<u32>(30201u, 4294967295u, 0u), vec3<u32>(15022u, 36472u, 0u), vec3<u32>(62151u, 17565u, 4294967295u), vec3<u32>(0u, 0u, 51720u), vec3<u32>(79396u, 19051u, 55946u), vec3<u32>(56018u, 46514u, 47095u), vec3<u32>(68355u, 4294967295u, 77522u), vec3<u32>(0u, 13706u, 22269u), vec3<u32>(35107u, 4294967295u, 1u), vec3<u32>(60292u, 20357u, 20358u), vec3<u32>(8748u, 1u, 8401u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(126905u, 89267u, 0u), vec3<u32>(40078u, 1u, 82036u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = firstTrailingBit(max(min(~u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(8888u, u_input.a, 75937u), u_input.b)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, u_input.a, u_input.a), global0[_wgslsmith_index_u32(24991u, 29u)])))) | reverseBits(abs(~firstLeadingBit(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))));
    let var_1 = 26653i;
    let var_2 = 7331i;
    global0 = array<vec3<u32>, 29>();
    return firstTrailingBit(u_input.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(arg_0, Struct_1(4294967295u, firstTrailingBit(~u_input.b.x), arg_0.c, u_input.b.yy), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, arg_0.b, u_input.a, arg_0.d.x), ~vec4<u32>(u_input.a, u_input.a, 9703u, 4032u)) >> (reverseBits(vec4<u32>(0u, countOneBits(u_input.b.x), u_input.a, func_3(Struct_1(56532u, 4294967295u, -647f, vec2<u32>(51980u, arg_0.b))))) % vec4<u32>(32u)));
    global0 = array<vec3<u32>, 29>();
    var var_1 = select(!vec4<bool>(select(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, false, false, false))), !(u_input.c.x >= u_input.c.x), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec3<bool>(true, true, true))), vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, u_input.c.x), 0i) == (reverseBits(u_input.c.x) & u_input.c.x), true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) && true, -u_input.c.x != abs(-2147483647i)), select(vec4<bool>(true, true, true && all(vec3<bool>(true, false, false)), false), select(vec4<bool>(true, true, true, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), !(var_0.b.c <= -347f)), !select(true, 8516i == u_input.c.x, 31367i <= u_input.c.x)));
    var var_2 = var_0.b.c;
    let var_3 = u_input.c.x;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -1437f, arg_0.c) * vec3<f32>(-748f, arg_0.c, -250f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-137f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = _wgslsmith_add_i32(~(1i >> (firstLeadingBit(u_input.a) % 32u)), u_input.c.x);
    let var_1 = Struct_1(4294967295u, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * 2099f)), max(~abs(vec2<u32>(u_input.b.x, arg_1.a)), arg_1.d));
    var_0 = u_input.c.x;
    var var_2 = Struct_4(arg_2, arg_2, _wgslsmith_mod_i32(countOneBits(i32(-1i) * -19436i), _wgslsmith_clamp_i32(-7954i, countOneBits(abs(u_input.c.x)), u_input.c.x)));
    return 1u;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = vec4<u32>(u_input.b.x, 61094u, u_input.b.x, ~(~u_input.b.x));
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    var var_1 = firstTrailingBit(~func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-743f, 390f, 480f))), Struct_1(4294967295u, u_input.b.x, -1243f, vec2<u32>(var_0.x, 4294967295u)), func_2(Struct_1(5562u, 4294967295u, 1572f, vec2<u32>(var_0.x, 0u)))) & (20698u & ~_wgslsmith_clamp_u32(var_0.x, u_input.b.x, u_input.a)));
    return all(vec4<bool>(1u >= var_0.x, true, all(vec2<bool>(true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(u_input.c.x != ~(19523i >> (u_input.a % 32u)), any(vec4<bool>(true, true, true, true)), -select(u_input.c.x, u_input.c.x, false) >= -3367i, func_1(countOneBits(u_input.c.x))), !vec4<bool>(true, false, true, any(vec2<bool>(true, true))), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))));
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(72088u, u_input.a) | u_input.b.zz), vec2<u32>(27421u, ~u_input.a)), ~(~(~3351u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1668f, -311f, 1000f), vec3<f32>(454f, 292f, 468f), var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) * _wgslsmith_f_op_f32(-1000f + 216f))), 983f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(130f * 737f), _wgslsmith_f_op_f32(abs(-260f)))), _wgslsmith_f_op_f32(step(-670f, -272f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(803f)), _wgslsmith_f_op_f32(ceil(-258f)))))), ~abs(~vec4<u32>(3440u, u_input.a, 1u, 4926u)) << (vec4<u32>(u_input.b.x, ~var_1.x ^ (var_1.x & 0u), (u_input.b.x | u_input.b.x) & ~63021u, ~u_input.a) % vec4<u32>(32u)));
}

