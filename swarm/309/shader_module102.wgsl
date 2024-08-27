struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global0 = array<vec2<bool>, 3>();
    let var_0 = countOneBits(~vec2<u32>(~(~21518u), ~max(4294967295u, 4294967295u)));
    global1 = !global0[_wgslsmith_index_u32(u_input.a, 3u)];
    global1 = vec2<bool>(true, !(!(!global1.x)));
    let var_1 = ~(vec4<i32>(-1i, -63254i << (~var_0.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-22809i, 296i), vec2<i32>(1i, 1i)), 36386i) | abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-7296i, 2147483647i, 0i, 1565i), vec4<i32>(29922i, 2147483647i, -60766i, 17734i), vec4<i32>(70759i, -4137i, -8863i, 1i)))));
    return any(vec2<bool>(false, true));
}

fn func_2(arg_0: u32) -> Struct_5 {
    return Struct_5(163f, !select(select(vec4<bool>(global1.x, false, global1.x, false), !vec4<bool>(true, true, global1.x, global1.x), false), vec4<bool>(global1.x || true, !global1.x, false, true), !(!global1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(346f, -1206f), vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(select(-682f, 122f, true)))), select(all(!vec3<bool>(false, true, global1.x)), global1.x, true))), Struct_3(func_3()));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = func_2(~(~arg_2));
    global1 = vec2<bool>(true, false);
    global0 = array<vec2<bool>, 3>();
    var var_1 = !func_2(~_wgslsmith_clamp_u32(~64504u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1), vec3<u32>(47946u, arg_2, 15834u)))).b.ywy;
    global0 = array<vec2<bool>, 3>();
    return _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-109f, 194f))), var_0.a)))));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(809f, _wgslsmith_f_op_f32(-arg_1), -1000f), -vec3<i32>(_wgslsmith_sub_i32(-3591i, -27858i >> (arg_0 % 32u)), (2147483647i << (u_input.a % 32u)) >> (0u % 32u), 8572i));
    global1 = !global0[_wgslsmith_index_u32(countOneBits(~countOneBits(18205u)), 3u)];
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -681f)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), 2596f)))), arg_1, global1.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_f_op_vec3_f32(-var_0.a)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 640f, -973f) - vec3<f32>(var_0.a.x, 186f, 1611f)), vec3<f32>(-887f, arg_1, -641f)))), ~vec3<i32>(abs(var_0.b.x), ~var_0.b.x, _wgslsmith_mult_i32(var_0.b.x, var_0.b.x))), u_input.c);
    var_1 = Struct_2(vec2<f32>(var_1.d.a.x, _wgslsmith_f_op_f32(-2525f - var_0.a.x)), _wgslsmith_f_op_f32(round(1481f)), all(!vec4<bool>(var_1.c, func_3(), !var_1.c, all(vec3<bool>(false, var_1.c, global1.x)))), var_1.d, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(41072u, u_input.b, 4294967295u, u_input.c.x), u_input.c)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_1.d.b.x), max(vec2<i32>(var_1.d.b.x, ~firstLeadingBit(38839i)), var_1.d.b.zz));
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_0.a.xx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, -1308f), var_0.a.yy)))))), var_1.d.a.yx)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-449f)))), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, arg_1)))))), global1.x, Struct_1(var_0.a, -(vec3<i32>(var_1.d.b.x, -40058i, 2147483647i) >> (vec3<u32>(4294967295u, arg_0, arg_0) % vec3<u32>(32u)))), ~vec4<u32>(countOneBits(~25806u), 4294967295u, 0u, var_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 3>();
    let var_0 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.c, _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.b, u_input.c.x, u_input.b))), vec4<u32>(3971u, 1u, abs(67558u), u_input.a)) | u_input.c.x);
    let var_1 = func_4(_wgslsmith_add_u32(u_input.c.x, firstLeadingBit(var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec2<bool>(any(vec4<bool>(true, false, false, true)), !global1.x), 0u, firstLeadingBit(~1u))))));
    global0 = array<vec2<bool>, 3>();
    var var_2 = countOneBits(var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(1181f);
}

