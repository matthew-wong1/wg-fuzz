struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-1i, -30524i), vec2<i32>(2147483647i, 1i), vec2<i32>(-4367i, 40488i), vec2<i32>(i32(-2147483648), -11519i), vec2<i32>(-3234i, -9461i));

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 10342u, 10346u), vec3<u32>(9519u, 26711u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(329u, 0u, 4294967295u), vec3<u32>(4294967295u, 34153u, 4294967295u), vec3<u32>(15223u, 935u, 1u), vec3<u32>(0u, 35118u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(81030u, 11648u, 0u), vec3<u32>(75984u, 1u, 4189u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = arg_2;
    return var_0.a.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))));
    var var_1 = ~(~_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(29525u, arg_0, 61002u, arg_0)), vec4<u32>(56605u, ~arg_0, 0u, _wgslsmith_mod_u32(arg_0, arg_0))));
    let var_2 = -(u_input.a.x | -_wgslsmith_div_i32(reverseBits(1i), ~27175i));
    let var_3 = select(true, true, true);
    global1 = array<vec2<i32>, 5>();
    return vec4<f32>(-2166f, _wgslsmith_f_op_f32(-1f), 196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-222f))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(53552u, Struct_1(arg_0.a))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), -333f), arg_0.a.x, arg_0.a.x, 125f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, -2147483647i) | vec4<i32>(-88555i, u_input.c.x, 19404i, 1i), ~112527u, Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x)), ~global2[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))))));
    global0 = array<Struct_1, 25>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(52419u, 9237u)), _wgslsmith_div_vec2_u32(~vec2<u32>(24398u, 1u), vec2<u32>(27023u, 1u)))), select(select(vec2<u32>(1u, 1u), max(vec2<u32>(21185u, 13204u), vec2<u32>(36025u, 1u)), vec2<bool>(arg_1, arg_1)), ~(~vec2<u32>(4294967295u, 8668u)), true) ^ max(countOneBits(firstTrailingBit(vec2<u32>(45682u, 0u))), vec2<u32>(~1u, ~27099u)));
}

fn func_4(arg_0: vec4<u32>) -> StorageBuffer {
    global0 = array<Struct_1, 25>();
    let var_0 = -3277i;
    var var_1 = vec2<i32>(min(~abs(-2147483647i), _wgslsmith_mod_i32(var_0, u_input.d.x)) >> (1u % 32u), var_0);
    return StorageBuffer(~var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1039f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec4<i32>(var_0, u_input.d.x, 1i, 2147483647i), 1u, global0[_wgslsmith_index_u32(arg_0.x, 25u)], arg_0.zwz)))), any(vec2<bool>(true, true)))))), _wgslsmith_clamp_u32(~(~arg_0.x), ~func_2(Struct_1(vec2<f32>(697f, 566f)), true), _wgslsmith_div_u32(min(arg_0.x, 36572u) << (arg_0.x % 32u), max(arg_0.x, ~6916u))), vec4<i32>(var_1.x, 0i, min(_wgslsmith_sub_i32(u_input.a.x, -1i), ~var_1.x), _wgslsmith_dot_vec2_i32(~u_input.c.yy, -u_input.a) ^ _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(select(arg_0.x, 15964u, false), 5u)])), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(0i, 2411i, u_input.c.x);
    let var_1 = max(var_0.x, -2147483647i);
    global1 = array<vec2<i32>, 5>();
    var var_2 = ~1u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-159f, -1274f) - vec2<f32>(-1256f, 267f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1828f, 804f) - vec2<f32>(-1243f, 993f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(769f, 494f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2051f, -1050f))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), -618f, _wgslsmith_div_f32(var_3.a.x, var_3.a.x)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.x, -116f, _wgslsmith_f_op_f32(func_1(vec4<i32>(76076i, var_1, var_1, var_0.x), 0u, Struct_1(var_3.a), global2[_wgslsmith_index_u32(1u, 12u)])))))));
    let x = u_input.a;
    s_output = func_4(vec4<u32>(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_3.a))), true), 7772u, 61740u, _wgslsmith_clamp_u32(1u >> ((0u << (1u % 32u)) % 32u), 0u, ~42542u >> (_wgslsmith_add_u32(1u, 1u) % 32u))));
}

