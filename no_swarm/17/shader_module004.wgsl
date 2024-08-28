struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(310i, 3694i, 43169i), false, 128f, 7203u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(global1.a, !any(select(!vec2<bool>(global1.b, false), !vec2<bool>(global1.b, global1.b), select(vec2<bool>(global1.b, true), vec2<bool>(global1.b, global1.b), vec2<bool>(true, false)))), 1f, arg_0.x);
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(~(~4294967295u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, global1.d), vec2<u32>(u_input.b.x, 15419u)), vec2<u32>(arg_0.x, 1u) << (firstTrailingBit(vec2<u32>(var_0.d, global1.d)) % vec2<u32>(32u)))), ~vec2<u32>(~max(22431u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(39155u, 1u, global1.d, 4294967295u) >> (vec4<u32>(var_0.d, u_input.c.x, arg_0.x, 0u) % vec4<u32>(32u)), vec4<u32>(arg_0.x, 9561u, global1.d, 19287u))));
    let var_2 = Struct_1(~abs(var_0.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c))), ~firstTrailingBit(~abs(0u)));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(f32(-1f) * -890f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1041f, _wgslsmith_div_f32(507f, -1006f))) + var_2.c), -1161f, ~(~var_2.d));
    var_0 = var_2;
    return -1069f;
}

fn func_2() -> vec3<i32> {
    global1 = Struct_1(-(vec3<i32>(-1i) * -global1.a), true, -317f, ~global1.d);
    global1 = Struct_1(global1.a, any(select(select(!vec2<bool>(false, global1.b), !vec2<bool>(global1.b, global1.b), !global1.b), select(vec2<bool>(true, true), select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, global1.b), true), !global1.b), all(vec3<bool>(true, global1.b, global1.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.c)))) - 282f), _wgslsmith_f_op_f32(min(-168f, -689f)))), 0u & firstLeadingBit(u_input.b.x));
    var var_0 = global1.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(143f + -250f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, _wgslsmith_div_u32(9308u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.c.zw), 34430u))) - 780f));
    global1 = global0[_wgslsmith_index_u32(15654u, 6u)];
    return -abs(vec3<i32>(global1.a.x, _wgslsmith_add_i32(0i, -18312i), u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = Struct_1(func_2(), !any(select(vec3<bool>(true, arg_2, global1.b), !vec3<bool>(true, false, arg_2), !vec3<bool>(arg_0.b, arg_0.b, arg_1.b))), -764f, reverseBits(1u) >> (~(~1u) % 32u));
    let var_0 = Struct_1(global1.a << (~_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b), abs(vec3<u32>(global1.d, 50472u, 46272u))) % vec3<u32>(32u)), arg_1.b, -1000f, reverseBits(~(~global1.d) >> (abs(arg_1.d) % 32u)));
    let var_1 = vec4<i32>(func_2().x, 26577i, countOneBits(1i), -19460i);
    global0 = array<Struct_1, 6>();
    var var_2 = arg_1;
    return _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, var_0.d, 2240u) | _wgslsmith_sub_vec3_u32(u_input.c.xxw, u_input.b), vec3<u32>(arg_1.d << (0u % 32u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global1.d, arg_1.d, global1.d)), 13410u)), _wgslsmith_dot_vec2_u32(~u_input.b.zz, u_input.b.zz), 50778u), var_0.d, ~max(~(~u_input.c.x), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (23277i & countOneBits(i32(-1i) * -global1.a.x)) >> (abs(~func_1(Struct_1(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), false, global1.c, 0u), Struct_1(global1.a, global1.b, global1.c, 78626u), true)) % 32u);
    var var_1 = true;
    let var_2 = Struct_1(vec3<i32>(-u_input.a, func_2().x, ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.a.zz, global1.a.zz), var_0 & var_0)), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, global1.c) - global1.c) + _wgslsmith_f_op_f32(1104f - -672f)), 153f), ~(~(~select(35159u, 4294967295u, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, global1.c, global1.c, 615f) - vec4<f32>(-2123f, global1.c, 468f, var_2.c)))), vec4<f32>(var_2.c, -995f, _wgslsmith_f_op_f32(var_2.c + var_2.c), _wgslsmith_f_op_f32(step(-397f, -961f))), vec4<bool>(global1.b, all(vec4<bool>(var_2.b, true, var_2.b, global1.b)), var_2.d <= u_input.b.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -251f, -1000f, 577f) * vec4<f32>(-507f, global1.c, var_2.c, global1.c)))))) * vec4<f32>(global1.c, 1961f, _wgslsmith_f_op_f32(min(-3276f, _wgslsmith_f_op_f32(ceil(var_2.c)))), _wgslsmith_f_op_f32(var_2.c * -471f)))));
    let var_4 = Struct_1(-(vec3<i32>(31789i, 18244i, min(var_2.a.x, 0i)) ^ vec3<i32>(global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(29003i, var_2.a.x), var_2.a.xy), ~u_input.a)), var_2.b, 1072f, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_2.d, 1u, var_2.d, global1.d)), abs(u_input.c)), 5956u | ~countOneBits(var_2.d)));
    var_1 = true;
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_4.d, var_4.d, u_input.c.x ^ var_2.d), _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wyx, vec3<u32>(5720u, 4294967295u, var_2.d)), select(u_input.c.x, 40488u, false), _wgslsmith_div_u32(42649u, 23959u)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.d, 0u, u_input.b.x), vec3<u32>(1u, u_input.c.x, global1.d)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global1.d, 31437u, 4294967295u), u_input.b) % vec3<u32>(32u)))), vec3<i32>(u_input.a, ~(-98942i), ~_wgslsmith_sub_i32(i32(-1i) * -1i, func_2().x)));
}

