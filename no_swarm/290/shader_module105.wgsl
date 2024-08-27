struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 31>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(global0.x, 3u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f + 775f)))), -563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-973f - 430f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1512f))))) * 1f), 1f);
    global2 = array<Struct_1, 3>();
    let var_2 = !vec3<bool>(var_0.b, false, !var_0.b);
    global0 = ~(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.a, ~vec2<u32>(u_input.d, 995u)), firstLeadingBit(min(vec2<u32>(global0.x, 4294967295u), u_input.a))) & _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 4895u)), (u_input.a | u_input.a) & _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(1u, 19792u))));
    return abs(reverseBits(~(vec4<u32>(u_input.a.x, global0.x, 4294967295u, global0.x) >> (vec4<u32>(1u, 102956u, global0.x, 26361u) % vec4<u32>(32u))))) & _wgslsmith_add_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, 1u, 1u), vec4<u32>(1u, global0.x, 1u, u_input.a.x))), vec4<u32>(19333u, abs(var_0.a) >> (u_input.d % 32u), min(_wgslsmith_sub_u32(u_input.e, u_input.d), 57799u), _wgslsmith_div_u32(u_input.d, 10955u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -341f));
    global2 = array<Struct_1, 3>();
    global0 = vec2<u32>(11422u, ~(~(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 49784u)))));
    global0 = vec2<u32>(u_input.e, 0u);
    var var_1 = 4294967295u;
    return vec4<u32>(u_input.e, select(_wgslsmith_clamp_u32(7443u, u_input.e, ~31077u), ~arg_0.a, select(false, any(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), firstTrailingBit(global0.x) >= ~1u)), abs(global0.x), ~(~(~(~arg_0.a))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global1 = array<i32, 31>();
    let var_1 = select(arg_2, max(~func_3(Struct_1(arg_3.a, arg_0.b), _wgslsmith_sub_i32(u_input.b.x, global1[_wgslsmith_index_u32(arg_1.a, 31u)]), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, global1[_wgslsmith_index_u32(arg_2.x, 31u)], 18314i), vec4<i32>(-4324i, 7235i, -1i, u_input.b.x)), -901f), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(49020u, arg_0.a), vec2<u32>(var_0.a, 33665u)), 19881u, 0u & u_input.e, 56805u), vec4<u32>(1u, global0.x, 0u, var_0.a) >> (countOneBits(vec4<u32>(arg_2.x, 45580u, 0u, u_input.d)) % vec4<u32>(32u)))), vec4<bool>(u_input.d <= 1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-762f + 208f), _wgslsmith_f_op_f32(f32(-1f) * -446f), !arg_0.b)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1062f - 504f) + _wgslsmith_f_op_f32(step(-323f, 942f))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, 4294967295u), max(var_0.a, 0u)) == _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), vec2<u32>(arg_3.a, global0.x)), true));
    global2 = array<Struct_1, 3>();
    var_0 = Struct_1(~1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f * -913f) - 1895f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1181f)))));
    return global2[_wgslsmith_index_u32(~var_0.a, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(global2[_wgslsmith_index_u32(global0.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_add_vec4_u32(vec4<u32>(global0.x >> (u_input.e % 32u), (u_input.e | global0.x) << (4294967295u % 32u), _wgslsmith_clamp_u32(0u, 103362u, u_input.a.x ^ global0.x), abs(global0.x)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a.x, global0.x, 4294967295u, u_input.d)), func_1())), global2[_wgslsmith_index_u32(15846u, 3u)]);
    var_0 = Struct_1(reverseBits(~var_0.a), global0.x <= 32681u);
    global1 = array<i32, 31>();
    let var_1 = abs(u_input.c.zy);
    var var_2 = 5071u;
    global2 = array<Struct_1, 3>();
    var_2 = global0.x << (~select(~0u, max(_wgslsmith_sub_u32(var_0.a, u_input.d), ~4294967295u), all(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), var_0.b))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(69612u, 4294967295u, var_0.a, global0.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.a.x & var_0.a, min(var_0.a, 53239u), ~global0.x), ~vec4<u32>(u_input.d, global0.x, var_0.a, global0.x)) % vec4<u32>(32u)), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-692f + 1889f))), 930f) + vec4<f32>(_wgslsmith_f_op_f32(abs(-284f)), -760f, -617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 812f)))), ~u_input.c.xz);
}

