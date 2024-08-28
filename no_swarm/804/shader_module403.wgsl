struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(all(vec3<bool>(true, true, true)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), !select(true, any(vec3<bool>(true, true, true)), true));
    var_0 = Struct_1(true, _wgslsmith_dot_vec3_u32(~vec3<u32>(~1u, _wgslsmith_sub_u32(var_0.b, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 69092u, 1u), vec3<u32>(var_0.b, 44434u, var_0.b))), ~vec3<u32>(20036u, firstLeadingBit(var_0.b), u_input.a)), _wgslsmith_f_op_f32(-var_0.c), all(select(!select(vec3<bool>(var_0.d, false, var_0.a), vec3<bool>(false, var_0.d, true), var_0.d), vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(var_0.d, true, var_0.d)), true), all(!vec2<bool>(var_0.d, true)))));
    var_0 = Struct_1(!all(!select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(false, var_0.d, false, var_0.a), true)), 1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -434f))) + var_0.c))), var_0.a);
    global0 = -(u_input.b.x >> (u_input.a % 32u));
    let var_1 = firstTrailingBit((u_input.b.zyx << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 8065u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))) << ((min(vec3<u32>(0u, 1u, 32621u), select(vec3<u32>(43828u, u_input.a, 62118u), vec3<u32>(6295u, 0u, 81754u), vec3<bool>(var_0.a, true, var_0.d))) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.a, 30398u), u_input.a, ~u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 1u, var_0.b & _wgslsmith_mod_u32(u_input.a | 47912u, firstTrailingBit(u_input.a)), max(0u, ~38737u)), ~(~vec4<u32>(var_0.b | u_input.a, 4294967295u, _wgslsmith_mod_u32(34222u, 67210u), reverseBits(var_0.b))));
}

fn func_2() -> vec2<u32> {
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(), u_input.a), vec2<u32>(38654u, ~u_input.a));
    global0 = _wgslsmith_div_i32(-u_input.b.x, 0i);
    let var_1 = vec2<u32>(1u ^ firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 26413u, 16667u) & vec4<u32>(1u, 0u, 100118u, 0u))), u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(665f, 1800f)))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(-1400f * 814f))), -282f));
    return max(var_1, var_1);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = 41681u;
    var var_1 = Struct_2(!arg_2.x == false);
    let var_2 = Struct_2(false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(927f)))))) + _wgslsmith_f_op_f32(-arg_1.x));
    var var_4 = !select(abs(-1i) > max(i32(-1i) * -54282i, 0i & u_input.b.x), true, var_3 == arg_1.x);
    return Struct_2(var_2.a);
}

fn func_1() -> vec2<u32> {
    let var_0 = select(!vec2<bool>(u_input.b.x <= u_input.b.x, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), !(!(1u <= ~u_input.a)));
    var var_1 = func_4(31290u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(-845f, 1000f)), _wgslsmith_div_f32(477f, -1808f), _wgslsmith_f_op_f32(select(905f, -2538f, false))))))), !vec2<bool>(select(true, var_0.x, !var_0.x), true), _wgslsmith_clamp_vec2_u32(min(~select(vec2<u32>(25486u, 4294967295u), vec2<u32>(u_input.a, 0u), vec2<bool>(var_0.x, false)), func_2()), vec2<u32>(~(~24166u), 3012u), vec2<u32>(u_input.a, abs(u_input.a))));
    var_1 = Struct_2(select(false, var_1.a, false));
    var var_2 = func_2().x;
    var var_3 = Struct_2(var_0.x);
    return firstTrailingBit(max(~vec2<u32>(548u, 1u) | firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(~4294967295u, 56859u), ~vec2<u32>(1u, u_input.a), !var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(max(u_input.a, ~select(u_input.a, u_input.a, false)), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f, _wgslsmith_f_op_f32(608f * _wgslsmith_f_op_f32(-523f - -375f))), func_1());
}

