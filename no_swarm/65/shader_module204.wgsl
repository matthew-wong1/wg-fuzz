struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = !all(vec2<bool>(false, true));
    return _wgslsmith_add_vec2_u32(abs(select(abs(~vec2<u32>(4294967295u, arg_1.b)), vec2<u32>(0u, ~1u), vec2<bool>(true, true))), abs(~(~vec2<u32>(arg_1.b, arg_1.b) << (abs(vec2<u32>(34786u, 4294967295u)) % vec2<u32>(32u)))));
}

fn func_2() -> vec2<u32> {
    return _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(63522u, 0u), vec2<u32>(4294967295u, 52463u), vec2<u32>(11197u, 4294967295u)), vec2<u32>(1u, 1u)), max(~vec2<u32>(1u, 1u), func_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1850f, -529f, 2460f), vec3<f32>(-1455f, -130f, -502f)), select(18677u, 4294967295u, false)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, -230f, -531f) - vec3<f32>(-259f, 1250f, -1045f)), 24941u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), -482f))), max(vec2<u32>(1u, 1u) >> (vec2<u32>(firstLeadingBit(36014u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26102u, 37753u), vec3<u32>(75221u, 64037u, 78003u))) % vec2<u32>(32u)), ~firstLeadingBit(vec2<u32>(1u, 1u))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = u_input.d.x;
    var var_1 = select(func_2(), vec2<u32>(_wgslsmith_div_u32(select(~90437u, 1u, true), 14643u), ~select(1u, 39897u, true)), vec2<bool>(true, true));
    var_1 = (~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 53926u), vec3<u32>(40626u, 0u, 26697u)), _wgslsmith_div_u32(var_1.x, var_1.x)) & _wgslsmith_sub_vec2_u32(max(max(vec2<u32>(var_1.x, 0u), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, var_1.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), func_2())) & _wgslsmith_mult_vec2_u32(abs(min(~vec2<u32>(var_1.x, var_1.x), ~vec2<u32>(4294967295u, var_1.x))), func_3(Struct_1(vec3<f32>(arg_0.x, -1501f, arg_0.x), 16185u << (0u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(arg_0.ywx)), max(var_1.x, 0u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 1000f))));
    var_1 = ~abs(_wgslsmith_mod_vec2_u32(firstLeadingBit(select(vec2<u32>(0u, 49485u), vec2<u32>(31932u, var_1.x), vec2<bool>(false, true))), vec2<u32>(78573u << (var_1.x % 32u), ~0u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))))) - -385f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(select(649f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1257f, 527f)), true)), 835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f + -1443f)), -238f)));
    let var_1 = ~firstTrailingBit(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(34398u, 1u)), vec2<u32>(0u, 4294967295u)));
    var var_2 = ~(~(~(~var_1 & ~var_1)));
    let var_3 = u_input.d;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 815f, var_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, 137f))))), _wgslsmith_add_u32(54462u, var_1 << (max(43543u, var_1) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-123f, _wgslsmith_div_f32(2011f, -317f))), _wgslsmith_f_op_f32(trunc(-1209f))))), var_1, min(u_input.d, var_3), abs(-12419i));
}

