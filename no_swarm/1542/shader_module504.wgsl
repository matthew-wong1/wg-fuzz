struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, 1u), Struct_1(false, 14637u), Struct_1(false, 0u), Struct_1(true, 0u), Struct_1(false, 4294967295u), Struct_1(true, 21367u), Struct_1(true, 4294967295u), Struct_1(true, 5636u), Struct_1(false, 4294967295u), Struct_1(true, 0u), Struct_1(false, 56934u), Struct_1(false, 1u), Struct_1(true, 1u), Struct_1(true, 58657u), Struct_1(true, 0u), Struct_1(false, 77148u), Struct_1(true, 0u), Struct_1(true, 19866u), Struct_1(false, 1u), Struct_1(true, 1u), Struct_1(false, 0u), Struct_1(true, 83458u), Struct_1(true, 84204u), Struct_1(false, 46982u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(true, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_0.x, 11406u)) & vec2<u32>(56892u, arg_3.c), arg_1));
    var var_1 = !select(vec4<bool>(any(select(vec4<bool>(var_0.a, var_0.a, true, arg_3.a.b), vec4<bool>(var_0.a, true, true, false), vec4<bool>(false, arg_3.a.b, arg_3.a.b, false))), true, all(select(vec2<bool>(arg_3.a.b, arg_3.a.b), vec2<bool>(arg_3.a.b, var_0.a), arg_3.a.b)), false), vec4<bool>(!arg_3.a.b, false, !(arg_3.a.a.x <= arg_3.a.a.x), arg_3.a.b), vec4<bool>(true, all(vec2<bool>(true, false)) & all(vec3<bool>(false, true, false)), arg_3.a.b, any(!vec3<bool>(false, false, arg_3.a.b))));
    let var_2 = Struct_2(arg_3.a.a, all(var_1.xzx), _wgslsmith_add_i32(_wgslsmith_mod_i32(-27944i, u_input.b.x << (arg_3.c % 32u)) ^ ~0i, 13863i), u_input.b.x);
    var_0 = Struct_1(false, abs(max(20025u, ~arg_2.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2527f, arg_3.a.a.x, var_2.b)) + arg_3.a.a.x));
    return _wgslsmith_mult_i32(u_input.b.x, -(~arg_3.b.x >> (0u % 32u)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, -185f)), false, ~countOneBits(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), func_3(~vec3<u32>(35456u, u_input.a, u_input.a), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 11752u, 4294967295u, 4294967295u), Struct_3(Struct_2(vec2<f32>(1093f, 1000f), false, -6192i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x), 4294967295u)) & _wgslsmith_add_i32(30887i, ~(-1i))), vec2<i32>(_wgslsmith_clamp_i32(-(u_input.b.x & 0i), 22895i, u_input.b.x), u_input.b.x), ~112725u);
    var var_1 = var_0.a;
    let var_2 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 9921u), vec2<u32>(47859u, var_0.c), abs(vec2<u32>(u_input.a, 63661u))), vec2<u32>(4294967295u, max(~u_input.a, 1u)));
    global0 = -var_1.d;
    var_1 = Struct_2(var_0.a.a, true, 0i, ~_wgslsmith_clamp_i32(max(var_1.d, var_0.b.x), u_input.b.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(884f, var_1.a.x, 270f, var_1.a.x), vec4<f32>(var_1.a.x, -194f, 141f, -680f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1305f, var_1.a.x, var_0.a.a.x, -798f)), var_1.b)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(322f, var_1.a.x, var_0.a.a.x, 1000f), vec4<f32>(-356f, 169f, var_1.a.x, -438f), vec4<bool>(var_1.b, true, var_0.a.b, false))))))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -613f);
    let var_1 = u_input.a;
    let var_2 = u_input.b.x;
    global1 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1908f, 1220f, 435f, -1000f) - vec4<f32>(-333f, -447f, 568f, -685f)))))));
    return -932f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(_wgslsmith_sub_i32(-39726i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.b.zx)) ^ u_input.b.x));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2185f)) * _wgslsmith_f_op_f32(-592f - 128f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1473f + -1176f), _wgslsmith_f_op_f32(-965f * 520f))))), _wgslsmith_f_op_f32(-116f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f), 575f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).yw + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-601f, -227f), vec2<f32>(var_0, var_0))) + vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-var_0))) * vec2<f32>(var_0, 1067f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(~vec3<u32>(u_input.a, 1u, 8265u)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(17053u, u_input.a, 18085u), vec3<u32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit(~vec2<u32>(u_input.a | u_input.a, u_input.a | u_input.a)));
}

