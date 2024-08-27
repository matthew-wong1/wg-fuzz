struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(0i, 21391i, i32(-2147483648)), vec2<u32>(77392u, 33809u));

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = Struct_2(max(-global0.a, ~vec3<i32>(global0.a.x, global0.a.x ^ 1i, min(global0.a.x, -25414i))), vec2<u32>(_wgslsmith_add_u32(u_input.a, ~45305u), 4294967295u));
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-638f)) + _wgslsmith_f_op_f32(round(1583f))))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)) * -116f), _wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(269f))));
    let var_1 = Struct_1(global0.a, ~countOneBits(vec3<u32>(u_input.a >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(74874u, 4294967295u), vec2<u32>(global0.b.x, 56090u)), _wgslsmith_sub_u32(1u, global0.b.x))));
    var var_2 = Struct_2(global0.a, _wgslsmith_mod_vec2_u32(var_1.b.zx, ~vec2<u32>(var_1.b.x >> (37863u % 32u), _wgslsmith_div_u32(0u, global0.b.x))));
    var_2 = Struct_2(vec3<i32>(abs(global0.a.x & abs(2838i)), 1i, _wgslsmith_sub_i32(29908i, -1i)), vec2<u32>(~global0.b.x, firstTrailingBit(~var_1.b.x)));
    return var_0.x;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    global1 = array<Struct_1, 22>();
    var var_1 = !vec3<bool>(true, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), any(vec4<bool>(true, true, true, true)));
    var var_2 = global1[_wgslsmith_index_u32(min(global0.b.x, u_input.a), 22u)];
    global1 = array<Struct_1, 22>();
    return -1225f;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(212f))) - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(min(-1169f, 276f)))))));
    var var_1 = ~(min(7815u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_1.b.x, 4904u, 4294967295u))) | _wgslsmith_add_u32(max(arg_1.b.x ^ 60603u, _wgslsmith_div_u32(112461u, global0.b.x)), ~arg_1.b.x));
    var var_2 = -1i;
    var var_3 = vec3<bool>(arg_2, true, true);
    var_2 = 33652i;
    return vec3<u32>(global0.b.x, 8527u, global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = Struct_1(global0.a << (vec3<u32>(_wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(var_0.x, u_input.a)), ~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23022u, 65042u, 9152u, 24252u), select(vec4<u32>(1u, 4294967295u, 4294967295u, var_0.x), vec4<u32>(u_input.a, var_0.x, 34071u, 0u), vec4<bool>(true, false, false, false)))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(reverseBits(func_1(true, Struct_2(global0.a, global0.b), true)) | vec3<u32>(~81824u, global0.b.x, ~global0.b.x), _wgslsmith_sub_vec3_u32(min(vec3<u32>(var_0.x, global0.b.x, 4294967295u), vec3<u32>(u_input.a, 1u, global0.b.x)), select(vec3<u32>(0u, u_input.a, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x), true) << ((vec3<u32>(33552u, 0u, 57441u) ^ vec3<u32>(0u, u_input.a, 4294967295u)) % vec3<u32>(32u)))));
    let var_2 = -512f;
    global0 = Struct_2(var_1.a, ~vec2<u32>(var_1.b.x, 61242u));
    let var_3 = global1[_wgslsmith_index_u32(19881u, 22u)];
    let var_4 = select(select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, !(_wgslsmith_dot_vec3_u32(var_3.b, vec3<u32>(var_1.b.x, var_3.b.x, global0.b.x)) <= abs(var_0.x))), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, vec2<i32>(var_1.a.x, ~(~countOneBits(-27869i))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, 74944u), _wgslsmith_add_vec3_u32(~func_1(true, Struct_2(var_1.a, vec2<u32>(u_input.a, var_0.x)), false), ~(~var_1.b))), _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(~global0.a.zy)), var_1.a.xy), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), u_input.a, max(u_input.a, var_0.x)), abs(2333u)), ~1u, _wgslsmith_mod_u32(var_3.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_3.b.x), var_1.b.yy)) << (_wgslsmith_clamp_u32(1u, 1u, 18998u | var_3.b.x) % 32u)));
}

