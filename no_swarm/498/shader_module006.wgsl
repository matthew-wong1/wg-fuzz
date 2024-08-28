struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(true, vec3<f32>(797f, 1000f, 671f), vec2<i32>(0i, 37808i), vec3<i32>(23046i, 8801i, 11266i))), Struct_2(Struct_1(false, vec3<f32>(-1225f, 1000f, 1706f), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-1i, -1i, 7333i))), Struct_2(Struct_1(false, vec3<f32>(-837f, -1000f, -435f), vec2<i32>(0i, 10131i), vec3<i32>(-29914i, 0i, -80950i))), Struct_2(Struct_1(false, vec3<f32>(744f, -747f, -1618f), vec2<i32>(56884i, -17029i), vec3<i32>(1i, 0i, 29429i))), Struct_2(Struct_1(false, vec3<f32>(-514f, -282f, -119f), vec2<i32>(19156i, i32(-2147483648)), vec3<i32>(2147483647i, -9166i, 0i))), Struct_2(Struct_1(true, vec3<f32>(778f, 519f, -524f), vec2<i32>(28793i, 5164i), vec3<i32>(-1i, -1890i, -7251i))), Struct_2(Struct_1(false, vec3<f32>(-1609f, 539f, 1203f), vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(13571i, 13434i, 2732i))), Struct_2(Struct_1(true, vec3<f32>(804f, -723f, 1000f), vec2<i32>(1i, 0i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(false, vec3<f32>(-258f, 1225f, -367f), vec2<i32>(i32(-2147483648), -10827i), vec3<i32>(0i, 2147483647i, 14768i))), Struct_2(Struct_1(false, vec3<f32>(883f, 1704f, -166f), vec2<i32>(8922i, -64402i), vec3<i32>(-1i, 12482i, 2147483647i))), Struct_2(Struct_1(true, vec3<f32>(-1000f, 758f, -536f), vec2<i32>(-17356i, 19266i), vec3<i32>(33841i, 53427i, 27949i))));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(max(4294967295u, arg_0), 11u)], arg_1);
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_1 = var_0;
    global0 = array<Struct_2, 11>();
    return arg_0;
}

fn func_3() -> vec2<u32> {
    var var_0 = func_2(~27120u, -1755f);
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(select(0u, 0u, true), _wgslsmith_mult_u32(1u, 4294967295u)), firstTrailingBit(_wgslsmith_add_u32(1u, 1u)), 1u), vec3<u32>(firstLeadingBit(1u), 0u, ~(~32659u))), 11u)], 714f);
    global0 = array<Struct_2, 11>();
    let var_2 = ~1u;
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f + var_1.a.a.b.x) + var_1.a.a.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-1000f + 838f)))), var_1.b)));
    return _wgslsmith_clamp_vec2_u32(~select(~(~vec2<u32>(var_2, 33919u)), ~firstTrailingBit(vec2<u32>(var_2, var_2)), vec2<bool>(true, true)), abs(vec2<u32>(_wgslsmith_mult_u32(var_2, var_2), 31960u) & _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_2, 6002u)))), min(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40304u, 46961u, var_2), vec3<u32>(var_2, var_2, var_2)), _wgslsmith_mult_u32(var_2, var_2)), ~vec2<u32>(~0u, _wgslsmith_mod_u32(1553u, var_2))));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(min(65655u, _wgslsmith_add_u32(arg_0, arg_0)), 1u, func_2(arg_0, _wgslsmith_f_op_f32(260f * 325f))) & _wgslsmith_clamp_u32(22480u, ~_wgslsmith_dot_vec2_u32(func_3(), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 21833u))), func_2(arg_0, 733f) >> (~countOneBits(arg_0) % 32u)), 11u)];
    global0 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~_wgslsmith_div_u32(100259u, 68954u)), 39500u, ~abs(firstLeadingBit(arg_0))), vec3<u32>(_wgslsmith_sub_u32(~arg_0, arg_0), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(22665u, 38702u, 0u, arg_0)), abs(vec4<u32>(arg_0, 1u, 4294967295u, arg_0)) >> (select(vec4<u32>(0u, arg_0, 51127u, 1u), vec4<u32>(65848u, 1u, arg_0, arg_0), vec4<bool>(false, var_0.a.a, var_0.a.a, var_0.a.a)) % vec4<u32>(32u))), _wgslsmith_div_u32(~arg_0 ^ (4294967295u << (arg_0 % 32u)), reverseBits(_wgslsmith_sub_u32(51310u, arg_0)))));
    global0 = array<Struct_2, 11>();
    let var_2 = -_wgslsmith_div_i32(min(var_0.a.d.x, var_0.a.c.x), 11619i);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-445f, var_0.a.b.x, var_0.a.b.x, 1547f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -114f, var_0.a.b.x, 246f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1u);
}

