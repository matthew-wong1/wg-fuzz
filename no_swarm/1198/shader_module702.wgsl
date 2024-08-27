struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0u, vec2<f32>(500f, 198f), vec2<f32>(574f, -1000f)), Struct_1(118290u, vec2<f32>(452f, -2148f), vec2<f32>(-2868f, -873f)), Struct_1(14454u, vec2<f32>(-189f, -1168f), vec2<f32>(581f, 967f)), Struct_1(1u, vec2<f32>(-586f, -689f), vec2<f32>(-2077f, 342f)), Struct_1(4294967295u, vec2<f32>(-479f, 1000f), vec2<f32>(-968f, 659f)), Struct_1(1u, vec2<f32>(-1263f, -1707f), vec2<f32>(-519f, -1000f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f));
    var var_1 = var_0;
    var var_2 = select(vec3<bool>(!(_wgslsmith_mod_i32(arg_2.x, u_input.a.x) < (u_input.a.x >> (34498u % 32u))), true, any(vec4<bool>(true, true, true, true)) & (-u_input.a.x > (u_input.a.x | u_input.a.x))), vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2313f * 214f)), !any(vec2<bool>(true, true))), !((u_input.a.x < min(u_input.a.x, u_input.a.x)) && any(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_f_op_f32(min(var_0, -731f));
    var var_4 = var_0;
    return 1i;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_add_i32(-min(u_input.a.x, ~u_input.a.x & -1i), 1991i);
    let var_1 = -1i;
    global0 = array<Struct_1, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 1042f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(2166f, -392f)), _wgslsmith_f_op_f32(ceil(973f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1030f, -434f, -557f, 1199f))))));
    return Struct_2(-vec2<i32>(~func_3(vec2<u32>(44191u, 52632u), vec2<u32>(1u, 26708u), u_input.a.zwz), var_1));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 6>();
    let var_0 = func_2();
    global0 = array<Struct_1, 6>();
    let var_1 = all(!(!vec3<bool>(true, all(vec2<bool>(false, true)), var_0.a.x == var_0.a.x)));
    global0 = array<Struct_1, 6>();
    return ~(~(~firstLeadingBit(-35003i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = ~func_1() > u_input.a.x;
    var var_1 = Struct_2(select(u_input.a.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x), vec2<i32>(-1i, reverseBits(u_input.a.x))), select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false), any(vec3<bool>(true, false, false))), vec2<bool>(true, true))));
    var var_2 = Struct_3(Struct_2(firstTrailingBit(u_input.a.xw << (vec2<u32>(1u, 41254u) % vec2<u32>(32u))) & (~var_1.a ^ ~u_input.a.yy)), Struct_1(_wgslsmith_mult_u32(firstTrailingBit(46632u) ^ _wgslsmith_clamp_u32(0u, 26075u, 22354u), abs(~33345u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(815f, 883f), vec2<f32>(953f, 1340f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(509f, 454f), vec2<f32>(-2055f, 1269f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-135f, -467f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(305f, -1000f), vec2<f32>(903f, 199f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(571f, 602f), vec2<f32>(507f, -212f))))), vec3<bool>(true || (_wgslsmith_f_op_f32(trunc(-219f)) >= _wgslsmith_div_f32(-468f, 114f)), !all(vec4<bool>(true, true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, firstLeadingBit(-max(u_input.a.x, var_2.a.a.x)));
}

