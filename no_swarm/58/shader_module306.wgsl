struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: Struct_4,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = arg_1.b;
    let var_1 = ~(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), vec3<i32>(arg_0.a, u_input.c.x, 3340i)), abs(vec3<i32>(-9266i, u_input.a, u_input.c.x))) ^ -_wgslsmith_mult_vec3_i32(vec3<i32>(5126i, 2147483647i, arg_0.a), vec3<i32>(u_input.c.x, arg_0.a, -91437i))) ^ vec3<i32>(-5075i, func_3(), abs(_wgslsmith_clamp_i32(arg_0.a, abs(u_input.a), _wgslsmith_div_i32(2147483647i, u_input.a))));
    let var_2 = arg_1.c.yxw;
    var var_3 = arg_0;
    var var_4 = abs(u_input.a);
    return ~var_1;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(843f, -667f)) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(848f))))));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.a), firstTrailingBit(_wgslsmith_mod_i32(~(-u_input.c.x), _wgslsmith_mod_i32(-2147483647i, max(u_input.a, u_input.a)))), ~_wgslsmith_mult_i32(-abs(u_input.c.x), -countOneBits(-24055i)));
    var_1 = ~(reverseBits(min(reverseBits(vec3<i32>(var_1.x, u_input.c.x, -45388i)), func_2(Struct_2(u_input.a, arg_0.yy), Struct_3(true, Struct_1(vec2<f32>(-253f, var_0), vec2<f32>(var_0, 2162f), u_input.b.x, -1781f), vec4<f32>(var_0, var_0, 989f, var_0), false), Struct_4(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u), 843f, Struct_3(false, Struct_1(vec2<f32>(var_0, 763f), vec2<f32>(var_0, 417f), arg_0.x, -238f), vec4<f32>(591f, var_0, var_0, var_0), false), 349f)))) << (arg_0 % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 2377f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1034f, -562f, 323f), vec3<f32>(var_0, var_0, -948f)))))));
    let var_3 = firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, (~66750u | (u_input.b.x << (4294967295u % 32u))) >> (1u % 32u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = -1i;
    let var_2 = 6276u;
    var var_3 = func_1(vec3<u32>(var_2, firstLeadingBit(var_2) & (select(4294967295u, var_2, false) & var_2), ~(~u_input.b.x)));
    var_3 = 2147483647i;
    let var_4 = max(~(~vec3<u32>(u_input.b.x, 55743u, 85565u) & countOneBits(vec3<u32>(1u, var_2, 0u))) & _wgslsmith_add_vec3_u32(~(vec3<u32>(var_0.x, var_2, 4294967295u) ^ vec3<u32>(41998u, var_0.x, var_2)), vec3<u32>(~var_0.x, ~67219u, u_input.b.x)), ~(vec3<u32>(~u_input.b.x, 0u << (var_2 % 32u), var_2) & ~(vec3<u32>(1u, u_input.b.x, var_0.x) ^ vec3<u32>(16609u, 0u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(414f, ~(~var_4.zz), _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 63905u), vec4<u32>(4294967295u, var_4.x, var_2, var_2)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_4.x, 29138u, 3791u), vec4<u32>(23169u, u_input.b.x, 1158u, u_input.b.x), vec4<u32>(u_input.b.x, var_0.x, var_2, u_input.b.x)), vec4<bool>(true, true, true, true)), ~vec4<u32>(u_input.b.x, u_input.b.x, 72651u, 0u) >> (vec4<u32>(u_input.b.x, 12235u, u_input.b.x, var_4.x) % vec4<u32>(32u))) & _wgslsmith_mult_u32(u_input.b.x, 1u));
}

