struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<u32> {
    var var_0 = 23313u;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(882f)), _wgslsmith_f_op_f32(abs(-228f)), -897f, _wgslsmith_f_op_f32(max(-500f, 1586f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, -840f, 225f, -1659f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(443f, -655f, 714f, 2343f) - vec4<f32>(-438f, 1187f, -819f, -1193f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(412f, 725f, -3260f, 457f))))))));
    global0 = 0u;
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = arg_0.a;
    return ~arg_0.a.b.xy;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = max(~func_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, -2147483647i), arg_0.b, vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.c.x, false), arg_0.c, vec2<u32>(arg_0.b.x, 43038u))), arg_0.d.x), ~abs(~vec2<u32>(4294967295u, 30462u)));
    global0 = 20360u;
    global0 = var_0.x;
    let var_1 = Struct_2(Struct_1(select(-vec2<i32>(24844i, 0i), firstTrailingBit(select(u_input.a, vec2<i32>(29151i, arg_0.a.x), arg_0.d.ww)), true), ~vec4<u32>(~17242u, 0u, ~0u, ~46868u), arg_0.c, select(arg_0.c, vec4<bool>(!arg_0.c.x, arg_0.b.x <= 91739u, any(vec4<bool>(false, arg_0.d.x, arg_0.d.x, false)), false), arg_0.c), ~(~vec2<u32>(arg_0.b.x, 1u))));
    let var_2 = arg_0;
    return -1000f;
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = arg_0.a.b.x;
    var var_0 = !all(vec3<bool>(arg_0.a.d.x, arg_0.a.d.x, firstTrailingBit(arg_0.a.e.x) != arg_0.a.e.x));
    var_0 = 1033f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(405f, -354f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(-1206f - 1231f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.a)) + -1732f)));
    var var_1 = arg_0;
    global0 = 45028u;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(func_1(Struct_2(Struct_1(u_input.d.zz, vec4<u32>(856u, 2601u, 4294967295u, 0u), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec2<u32>(1u, 12777u)))), -13297i, u_input.b << (44133u % 32u)), u_input.d.x >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(22282u, 44233u), reverseBits(vec2<u32>(3964u, 49377u))) % 32u)), vec2<i32>(~u_input.c.x, firstTrailingBit(u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 303f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-706f, -1591f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-555f, 409f), vec2<f32>(-1942f, 107f), true)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-276f, 533f), vec2<f32>(132f, 758f), vec2<bool>(false, false)))), select(vec2<bool>(false, false), vec2<bool>(false, false), any(vec4<bool>(true, false, true, false))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 2442f), -2689f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-105f, 2500f), vec2<f32>(471f, 532f))), false))));
}

