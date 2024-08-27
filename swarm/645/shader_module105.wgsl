struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(43704u, 0u, 12606u), vec3<u32>(4294967295u, 21396u, 96030u), vec3<u32>(14110u, 26742u, 4294967295u), vec3<u32>(1u, 1u, 15271u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(62525u, 0u, 6886u), vec3<u32>(6774u, 1u, 28435u), vec3<u32>(59533u, 11633u, 51812u), vec3<u32>(69517u, 21851u, 35128u), vec3<u32>(4294967295u, 57959u, 458u), vec3<u32>(0u, 6153u, 29345u), vec3<u32>(4294967295u, 1u, 22272u), vec3<u32>(0u, 42292u, 48346u), vec3<u32>(21642u, 23121u, 0u), vec3<u32>(0u, 0u, 62849u), vec3<u32>(78066u, 1u, 4294967295u), vec3<u32>(1u, 47094u, 4294967295u), vec3<u32>(0u, 1u, 44340u), vec3<u32>(58353u, 4294967295u, 33590u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    let var_0 = !any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    var var_1 = ~(~select(-(~u_input.b), vec4<i32>(_wgslsmith_add_i32(-19741i, u_input.b.x), 0i, u_input.d.x, u_input.d.x), all(!vec4<bool>(var_0, var_0, true, false))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(299f, 964f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(258f)), -637f), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1002f)), -489f)))));
    let var_4 = 1000f;
    return var_1.zyz;
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 16>();
    global1 = array<vec3<u32>, 19>();
    let var_0 = 1u;
    var var_1 = func_3() << (u_input.c % vec3<u32>(32u));
    global0 = array<Struct_1, 16>();
    return 0u;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.xx, vec2<f32>(-1000f, -1782f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.zz)) * vec2<f32>(418f, -1180f)));
    var var_1 = _wgslsmith_f_op_f32(409f * 561f);
    var var_2 = Struct_2(~(~func_2()));
    global0 = array<Struct_1, 16>();
    return Struct_2(~min(~u_input.e, ~_wgslsmith_add_u32(u_input.e, 46196u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.xy), _wgslsmith_sub_vec2_u32(u_input.a.zx, ~u_input.a.zy)), min(1u, reverseBits(abs(_wgslsmith_mod_u32(u_input.e, 4294967295u))))), 16u)];
    var var_1 = any(vec2<bool>(var_0.b, !var_0.b));
    return firstLeadingBit(max(1u, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zx;
    let var_1 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true), vec3<bool>(u_input.b.x >= u_input.b.x, select(true, false, true), true), _wgslsmith_clamp_u32(63039u, u_input.a.x, u_input.a.x) <= var_0.x), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(func_4(func_1(Struct_1(vec4<f32>(-911f, -873f, -963f, -778f), true, vec3<f32>(-866f, -149f, 1105f), 2442f, var_0.x), true, -1i), -u_input.b.x) == ~(~15347u), true, !any(vec4<bool>(true, true, true, true))), !vec3<bool>(_wgslsmith_f_op_f32(select(1000f, -1241f, false)) < _wgslsmith_f_op_f32(f32(-1f) * -530f), true, select(any(vec2<bool>(true, false)), true, 2147483647i != u_input.b.x)));
    global1 = array<vec3<u32>, 19>();
    let var_2 = u_input.a.xx;
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(33615u, 0u) & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 13961u, var_0.x) ^ vec3<u32>(u_input.c.x, 27323u, 4294967295u), ~global1[_wgslsmith_index_u32(var_2.x, 19u)]), ~(u_input.a ^ vec3<u32>(var_0.x, 74895u, var_2.x))), min(var_2.x, _wgslsmith_add_u32(~var_0.x, ~var_2.x) ^ max(4294967295u, var_2.x)));
    var var_4 = true;
    global1 = array<vec3<u32>, 19>();
    global1 = array<vec3<u32>, 19>();
    var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(2354f, abs(~(~var_2.x)));
}

