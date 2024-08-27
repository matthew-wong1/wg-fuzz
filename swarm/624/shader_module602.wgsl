struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9945u;

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, false, true, true, true, true, false, false, true, true, true, true, false, true, true, true, true, true, true, false, true, true, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], ~u_input.d.x < u_input.d.x, true, (u_input.a != 2147483647i) || true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(4443u, 24u)], false, global1[_wgslsmith_index_u32(37874u, 24u)])), !vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 24u)], all(vec3<bool>(true, true, false)), true));
    let var_1 = firstTrailingBit(4294967295u);
    let var_2 = select(var_0, var_0, !var_0);
    let var_3 = var_2.yx;
    global1 = array<bool, 24>();
    return u_input.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = vec3<u32>(u_input.d.x, u_input.e, ~27609u << (~(~u_input.e) % 32u));
    var_0 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 44208u, 0u), max(vec3<u32>(12064u, 4294967295u, 4294967295u), vec3<u32>(82577u, 0u, var_0.x))), 32896u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0.x, max(~var_0.x, ~u_input.c))), 1u);
    var var_1 = Struct_1(i32(-1i) * -countOneBits(1i));
    let var_2 = Struct_2(Struct_1(max(i32(-1i) * -u_input.b, ~u_input.a << (45887u % 32u))), func_3(), Struct_1(~abs(~0i)));
    var var_3 = 28090i & (abs(-(1i >> (var_0.x % 32u))) | (1i >> (select(~var_0.x, ~var_0.x, false) % 32u)));
    return ~(i32(-1i) * -2876i);
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    global1 = array<bool, 24>();
    let var_0 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 622f), vec2<f32>(-151f, 510f))), abs(vec4<i32>(u_input.a, u_input.b, u_input.b, 0i) ^ vec4<i32>(u_input.a, u_input.b, u_input.a, 0i)))), func_3(), Struct_1(~(~u_input.b)));
    global1 = array<bool, 24>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(1i, 1i, -7251i) << (arg_0.x % 32u)), -59330i & ((_wgslsmith_sub_i32(1i, var_0.c.a) << (_wgslsmith_sub_u32(13275u, 1u) % 32u)) << (arg_0.x % 32u)), Struct_1(firstTrailingBit(_wgslsmith_mod_i32(var_0.c.a, u_input.a))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(29006u, _wgslsmith_mod_u32(4294967295u, 99206u), ~u_input.c)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.c)) & (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 193u, 863u), vec3<u32>(u_input.d.x, 0u, arg_0.x)) & vec3<u32>(1u, u_input.c, 1u)), vec3<u32>(_wgslsmith_add_u32(u_input.e ^ 36478u, _wgslsmith_dot_vec4_u32(vec4<u32>(10215u, u_input.e, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, arg_0.x, u_input.d.x, arg_0.x))), reverseBits(firstLeadingBit(49054u)), u_input.e))), 24u)];
    return !select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)] | global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c, 24u)], true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)] | true, !global1[_wgslsmith_index_u32(u_input.e, 24u)], false, !global1[_wgslsmith_index_u32(u_input.c, 24u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(abs(u_input.c), 24u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 24u)], false, false))), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(arg_0.x, 24u)], true))), true && any(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4375u, 24u)]), vec3<bool>(true, true, false), vec3<bool>(true, false, false))));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    let var_0 = Struct_1(i32(-1i) * -17925i);
    global0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-968f, 1036f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1455f, -1805f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1309f, 1366f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1169f, -743f) - vec2<f32>(-1000f, 1159f))))), !arg_0.zw))));
    global0 = u_input.e;
    var var_2 = ~u_input.c;
    return _wgslsmith_mult_i32(~var_0.a, 23261i) << (u_input.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(func_1(vec2<u32>(4294967295u, ~1u)), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.e, 24u)] | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 57265u), vec3<u32>(1u, 47198u, u_input.c)), 24u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 24u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(10809u, 24u)], true, true, global1[_wgslsmith_index_u32(u_input.e, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 24u)], true, false, false))), true | global1[_wgslsmith_index_u32(~1u, 24u)], true), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.e), abs(u_input.e)), 24u)]));
    let var_1 = vec4<bool>(!any(vec4<bool>(u_input.c >= 44240u, true, !global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)])), !any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 24u)])), func_1(vec2<u32>(0u, ~abs(u_input.c))).x, false);
    global0 = 4294967295u;
    let var_2 = Struct_1(1i);
    global1 = array<bool, 24>();
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_2.a);
}

