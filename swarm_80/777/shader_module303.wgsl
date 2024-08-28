struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    let var_0 = 72436u << (u_input.a % 32u);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(485f, -558f)), 1334f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-456f)) - _wgslsmith_f_op_f32(-1214f - 612f)))))), false));
    return ~(~(~9361u));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1444f, _wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1843f * 622f))))));
    let var_1 = 32869u << ((~func_3(Struct_1(u_input.b.x), 37089i, vec2<bool>(true, true)) | 4294967295u) % 32u);
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.b.x ^ u_input.a), select(var_1 & var_1, u_input.a, true), var_1, u_input.a), vec4<u32>(3822u, ~22807u, max(firstLeadingBit(19094u), max(u_input.a, var_1)), min(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5954u, u_input.a, 64888u), vec4<u32>(1u, 1u, 81340u, 1u))))));
}

fn func_1() -> vec4<i32> {
    let var_0 = 71550u;
    var var_1 = true;
    let var_2 = func_2();
    var var_3 = abs(u_input.d.xy);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, -832f, 624f, 929f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2127f, -883f, -1000f, -285f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(940f, -1196f, -750f, 1028f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-259f, -339f, -403f, -643f), _wgslsmith_f_op_vec4_f32(vec4<f32>(931f, 632f, 1000f, 2560f) + vec4<f32>(685f, 1990f, 323f, 1000f)))))));
    return (vec4<i32>(-1i) * -vec4<i32>(~0i, firstTrailingBit(2147483647i), firstTrailingBit(-22937i), -var_3.x)) >> ((vec4<u32>(4294967295u << (abs(var_2.a) % 32u), _wgslsmith_add_u32(1u, 10454u) >> (_wgslsmith_clamp_u32(0u, 0u, var_2.a) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 17210u, 0u, 1u), vec4<u32>(47361u, 0u, var_2.a, 4294967295u)), select(vec4<u32>(var_2.a, 1u, var_0, u_input.a), vec4<u32>(var_2.a, u_input.b.x, 49563u, 4294967295u), true)), ~(951u << (u_input.b.x % 32u))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(25465u, u_input.b.x, 80068u, 16488u), abs(vec4<u32>(1u, u_input.a, var_2.a, u_input.b.x)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(678f)))));
    var var_1 = ~_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-27298i, u_input.d.x, u_input.c, u_input.d.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 171i, u_input.c), vec4<i32>(u_input.d.x, 7348i, 7597i, 0i), vec4<i32>(-1i, u_input.d.x, 0i, 0i))), -func_1());
    var_0 = 290f;
    var_1 = vec4<i32>(-22862i & abs(~var_1.x), ~abs(-4477i) ^ -var_1.x, func_1().x & 40928i, func_1().x);
    var var_2 = Struct_1(u_input.a);
    let var_3 = Struct_1(abs(_wgslsmith_mult_u32(2835u, max(countOneBits(4294967295u), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1022f - 614f) - -554f) - _wgslsmith_div_f32(-296f, 800f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-653f))))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

