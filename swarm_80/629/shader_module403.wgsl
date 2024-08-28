struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(609f, -1374f), -1i), Struct_1(vec2<f32>(1035f, 880f), 1i), Struct_1(vec2<f32>(-2036f, 553f), 22178i), Struct_1(vec2<f32>(820f, 1006f), -4477i), Struct_1(vec2<f32>(-1401f, 213f), 0i), Struct_1(vec2<f32>(-188f, -898f), -76105i), Struct_1(vec2<f32>(-174f, -308f), 68793i), Struct_1(vec2<f32>(-360f, -1000f), -34605i), Struct_1(vec2<f32>(-1705f, -256f), 24375i), Struct_1(vec2<f32>(1255f, 1202f), 32585i), Struct_1(vec2<f32>(-178f, -145f), 1i), Struct_1(vec2<f32>(-438f, -817f), -11453i), Struct_1(vec2<f32>(-1439f, 2184f), -10669i), Struct_1(vec2<f32>(-1000f, -710f), -1i), Struct_1(vec2<f32>(1162f, 1773f), 2147483647i), Struct_1(vec2<f32>(159f, 705f), -1i), Struct_1(vec2<f32>(734f, 1181f), -15566i), Struct_1(vec2<f32>(157f, -1201f), -41950i), Struct_1(vec2<f32>(-1000f, 999f), -1i), Struct_1(vec2<f32>(-1999f, -572f), 2147483647i), Struct_1(vec2<f32>(114f, 350f), 52068i), Struct_1(vec2<f32>(-2369f, 1502f), 2147483647i), Struct_1(vec2<f32>(513f, 492f), -4542i), Struct_1(vec2<f32>(1409f, -275f), 2147483647i), Struct_1(vec2<f32>(-1000f, 1000f), 1i), Struct_1(vec2<f32>(-594f, -524f), 0i), Struct_1(vec2<f32>(1326f, -502f), 22239i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    return 1320f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(103f * arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(324i, vec3<bool>(true, true, true)))))), 0i);
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 0i));
    let var_2 = -(vec2<i32>(-1i) * -u_input.c);
    var var_3 = u_input.d.zz;
    var var_4 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-arg_0.a)), -u_input.c.x);
}

fn func_1() -> f32 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(13302u, 27u)]);
    var_0 = Struct_1(vec2<f32>(951f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2237f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1468f, var_0.a.x)), var_0.a.x)))), _wgslsmith_mod_i32(u_input.c.x, abs(u_input.c.x)));
    global0 = array<Struct_1, 27>();
    var var_1 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(8507u | u_input.b.x, abs(~(14730u & u_input.d.x))), 27u)]);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(Struct_1(vec2<f32>(var_0.a.x, 1094f), -1i)).a)), ~0i);
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-459f, -1208f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2032f - -628f)))) + _wgslsmith_f_op_f32(func_1()));
    var var_1 = vec4<u32>(countOneBits(u_input.b.x), _wgslsmith_clamp_u32(abs(select(_wgslsmith_add_u32(26082u, 1u), u_input.d.x, true)), ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(6525u), u_input.b.x >> (13616u % 32u)), u_input.b | vec2<u32>(41407u, u_input.a.x))), ~(~u_input.d.x), u_input.a.x);
    var var_2 = vec4<u32>(1u, u_input.d.x, 25702u, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), 996f)), var_0, var_0, vec3<i32>(-u_input.c.x << (0u % 32u), -1i, -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 315f), vec2<f32>(-761f, var_0))) + func_2(global0[_wgslsmith_index_u32(0u, 27u)]).a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-346f, 1653f), vec2<f32>(var_0, -440f))) + _wgslsmith_div_vec2_f32(vec2<f32>(488f, var_0), vec2<f32>(708f, var_0)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, _wgslsmith_f_op_f32(var_0 + 133f)))));
}

