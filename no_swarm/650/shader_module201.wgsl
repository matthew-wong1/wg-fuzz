struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.c.x, countOneBits(u_input.b.x)), ~abs(u_input.c.xz) & u_input.b.yx), 5u)], u_input.b.x, 1921i);
    var var_1 = Struct_1(!(!var_0.a), min(~(~u_input.b.x), u_input.b.x ^ 0u), global1.x | ~(~(-1i)));
    let var_2 = -select(abs(min(i32(-1i) * -1i, var_0.c ^ 28891i)), abs(26089i >> (min(4294967295u, var_0.b) % 32u)), true || all(!vec4<bool>(true, true, var_0.a.x, false)));
    var var_3 = global1.zzx;
    global0 = array<vec4<bool>, 5>();
    return global1.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-global1.x, 1i, _wgslsmith_dot_vec3_i32(global1.wzx, vec3<i32>(-14174i, -2147483647i, -55576i)) >> (_wgslsmith_add_u32(100062u, u_input.c.x) % 32u), 18373i), _wgslsmith_div_vec4_i32(vec4<i32>(func_3(), ~21349i, -1i << (u_input.b.x % 32u), arg_1.a & global1.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, global1.x, arg_1.a), vec4<i32>(0i, u_input.a, -11929i, 0i), vec4<i32>(-8830i, arg_1.a, 17001i, 20577i))) << (abs(~vec4<u32>(4294967295u, 2457u, u_input.c.x, u_input.c.x) | ~vec4<u32>(16270u, u_input.c.x, 7427u, 73681u)) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, ~4294967295u, 0u)) & (4294967295u << (_wgslsmith_div_u32(~22582u, u_input.b.x) % 32u)));
    var_0 = ~0u >> ((11204u << (abs(firstTrailingBit(min(u_input.c.x, u_input.b.x))) % 32u)) % 32u);
    let var_1 = select(!vec4<bool>(any(arg_0.yz), false, true, true), vec4<bool>(any(select(arg_0, vec3<bool>(false, arg_0.x, arg_0.x), select(arg_0, arg_0, vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) - _wgslsmith_f_op_f32(round(-509f))) != -1770f, false, arg_0.x), false);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f * 702f)) + 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1f)))), -900f);
    return 8739u;
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(max(~u_input.b.x ^ ~(~firstLeadingBit(u_input.b.x)), _wgslsmith_add_u32(func_2(vec3<bool>(true, true, true), Struct_2(u_input.a)), firstLeadingBit(~0u) >> (~select(u_input.c.x, u_input.b.x, true) % 32u))), 5u)];
    let var_1 = reverseBits(global1.yw >> (_wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(35639u, 0u, 26592u)))) % vec2<u32>(32u)));
    global1 = countOneBits(vec4<i32>(1i, _wgslsmith_add_i32(-21903i, 0i ^ var_1.x), global1.x << (firstTrailingBit(0u) % 32u), ~_wgslsmith_div_i32(var_1.x, global1.x))) << (vec4<u32>(firstTrailingBit(func_2(!var_0.wwx, Struct_2(2147483647i))), ~_wgslsmith_mod_u32(1u, u_input.c.x) | (u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(8692u, 1u), vec2<u32>(u_input.b.x, 1u)) % 32u)), 0u, 48895u) % vec4<u32>(32u));
    var var_2 = global0[_wgslsmith_index_u32(1u >> (0u % 32u), 5u)];
    return Struct_2(-61572i ^ (_wgslsmith_dot_vec2_i32(~var_1, var_1) >> (_wgslsmith_mod_u32(u_input.b.x & 4294967295u, 1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = false;
    let var_2 = func_1();
    global0 = array<vec4<bool>, 5>();
    let var_3 = u_input.c;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f + -1249f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(744f)), -1107f)), -145f))), -vec3<i32>((-1i ^ u_input.d) ^ ~(-1i), -18429i, 57357i), Struct_1(!global0[_wgslsmith_index_u32(~75890u, 5u)], var_3.x, var_2.a));
    global0 = array<vec4<bool>, 5>();
    let var_5 = _wgslsmith_f_op_f32(455f * -887f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(var_2.a, _wgslsmith_mod_i32(0i, 2147483647i)) ^ ~var_2.a, _wgslsmith_div_i32(~reverseBits(-29475i), 1i), 0i << (~reverseBits(var_4.c.b) % 32u), ~(var_0 << (37393u % 32u)) | -13245i), var_3, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, abs(var_0)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.c.b, u_input.b.x, u_input.b.x), var_3) % 32u), -67950i, 2147483647i << (~var_4.c.b % 32u)), ~var_3.x << (18490u % 32u));
}

