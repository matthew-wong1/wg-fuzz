struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 616f), _wgslsmith_f_op_f32(max(-431f, -2031f)))))) - 117f);
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 42223u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, _wgslsmith_add_u32(u_input.a.x, u_input.b.x))) >> (u_input.b % vec3<u32>(32u)), ~(~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) << (~(~u_input.b) % vec3<u32>(32u))));
    let var_2 = Struct_3(Struct_1(abs(arg_0), u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f + var_0));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 958f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 + var_0))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-293f, -727f))));
    return var_2.a.a.x;
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = u_input.b.x;
    let var_1 = (vec3<i32>(-7576i, _wgslsmith_dot_vec4_i32(vec4<i32>(-93720i, -15416i, 77316i, -7638i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_add_i32(65280i, _wgslsmith_add_i32(-1i, -51584i))) & ((min(vec3<i32>(-34227i, -2717i, -14134i), vec3<i32>(17516i, 17420i, 2147483647i)) << (firstTrailingBit(u_input.b) % vec3<u32>(32u))) & select(vec3<i32>(-2147483647i, -9515i, 0i), ~vec3<i32>(16038i, -24900i, -20747i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))) ^ select(_wgslsmith_add_vec3_i32(vec3<i32>(21343i, min(43625i, -26623i), ~(-23047i)), vec3<i32>(~43452i, 1i, i32(-1i) * -1i)), vec3<i32>(abs(39175i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(49410i, -2147483647i, -1i)), 2147483647i), false);
    var_0 = u_input.b.x;
    global0 = array<vec3<f32>, 20>();
    return vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~var_1.x, _wgslsmith_sub_i32(-var_1.x, -1i)), -2147483647i), -_wgslsmith_mult_i32(func_2(abs(vec2<i32>(var_1.x, -27547i)), ~vec4<i32>(-1i, 0i, 1i, var_1.x)), var_1.x));
}

fn func_3() -> u32 {
    var var_0 = ~(~(~(~vec4<u32>(25946u, u_input.b.x, u_input.a.x, u_input.b.x)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 86458u, 0u), ~vec4<u32>(u_input.b.x, u_input.a.x, 42041u, 0u))));
    global0 = array<vec3<f32>, 20>();
    var_0 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 78812u), vec2<u32>(4294967295u, u_input.b.x)), ~u_input.a.x), 4294967295u, var_0.x, 54496u);
    let var_1 = Struct_3(Struct_1(vec2<i32>(~(i32(-1i) * -2147483647i), func_2(-vec2<i32>(1i, -75474i), -vec4<i32>(-19128i, 1i, -1i, 16922i))), _wgslsmith_div_u32(var_0.x, u_input.a.x)));
    var var_2 = true | all(vec2<bool>(true, true));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_0.x), u_input.b.x, 0u, 33530u), select(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.b, var_1.a.b, 4294967295u, 0u), ~vec4<u32>(u_input.a.x, 9144u, u_input.b.x, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.x, 22064u, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, 50538u, var_0.x), vec4<u32>(4294967295u, 0u, 1u, 55677u), vec4<u32>(var_0.x, 1u, 4294967295u, var_1.a.b)) ^ min(~vec4<u32>(4294967295u, var_1.a.b, 41444u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b, 79684u, u_input.b.x, u_input.b.x), vec4<u32>(0u, 58389u, 2540u, 1u))), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let var_0 = Struct_1(max(func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-639f, -684f), vec2<f32>(-1000f, -239f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(893f, -278f) * vec2<f32>(1020f, -1592f))))), ~(-vec2<i32>(24802i, -56724i))), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.a.x, 42861u, u_input.a.x, 71078u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 96492u, 13952u, 1040u), vec4<bool>(false, true, true, false)), vec4<u32>(1u, u_input.a.x, 1u, u_input.b.x)) ^ vec4<u32>(~u_input.a.x, min(76138u, u_input.b.x), u_input.b.x, firstLeadingBit(u_input.a.x))));
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_3(), 69730u, ~0u, reverseBits(u_input.b.x) & 1u), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 20u)] - vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(485f, -1000f))), _wgslsmith_f_op_f32(sign(666f)), -1103f)), -max(reverseBits(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x) ^ vec3<i32>(0i, var_0.a.x, var_0.a.x)), vec3<i32>(countOneBits(var_0.a.x), min(-16015i, var_0.a.x), abs(var_0.a.x))));
}

