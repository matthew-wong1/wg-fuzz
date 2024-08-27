struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = !arg_0;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + arg_1.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2424f) + _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_div_f32(arg_2.a, 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    var var_3 = ~21651u & arg_2.d;
    return 1196f;
}

fn func_3() -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_div_f32(456f, 1920f))) + _wgslsmith_f_op_f32(f32(-1f) * -1591f)) + _wgslsmith_div_f32(-132f, 1176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-376f, -1966f, false)))))));
    global0 = _wgslsmith_f_op_f32(sign(-1057f));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -238f);
    let var_1 = Struct_1(-1522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1381f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 209f)) * var_0.x), var_0.x))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), false), true), 4294967295u);
    var var_2 = var_1.a;
    return u_input.d.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(1i, -49182i, arg_0, u_input.c.x), vec4<i32>(u_input.c.x, u_input.d.x, arg_0, u_input.d.x)) ^ reverseBits(u_input.c)), vec4<i32>(func_3(), min(-u_input.c.x, abs(u_input.c.x)), ~u_input.c.x, -9625i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 - -860f), arg_2.b);
    let var_2 = -1703f;
    global0 = var_1.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2, -1096f)), 1128f) + _wgslsmith_f_op_f32(f32(-1f) * -208f)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1412f + 278f), _wgslsmith_div_f32(-387f, -1921f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_1(-559f, 1000f, vec2<bool>(true, true), 4294967295u), Struct_1(-808f, 315f, vec2<bool>(false, true), 1u), u_input.b.yx)), _wgslsmith_div_f32(-195f, 928f), true))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f), -925f))));
    var var_1 = Struct_1(-319f, 1267f, vec2<bool>(true, false), ~(func_2(-1i, var_0, Struct_1(-971f, var_0, vec2<bool>(false, false), 4294967295u)) & (u_input.b.x << (u_input.b.x % 32u))) ^ _wgslsmith_dot_vec2_u32(u_input.b.wz, countOneBits(u_input.b.zx)));
    let var_2 = Struct_1(-1310f, _wgslsmith_f_op_f32(-369f - var_0), vec2<bool>(true, any(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x))), var_1.d);
    let var_3 = reverseBits(firstTrailingBit(select(vec2<u32>(~var_1.d, 1u), ~countOneBits(vec2<u32>(163u, 4294967295u)), select(select(vec2<bool>(var_2.c.x, var_1.c.x), vec2<bool>(var_2.c.x, true), vec2<bool>(var_2.c.x, var_1.c.x)), var_1.c, vec2<bool>(false, false)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(-var_2.a)), !(!select(select(var_2.c, var_1.c, false), !var_2.c, select(vec2<bool>(false, false), vec2<bool>(var_2.c.x, false), false))), max(firstLeadingBit(var_1.d), 6460u));
    let var_5 = ~func_2(u_input.d.x, -229f, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(var_3, vec2<u32>(var_1.d, 6712u), var_3) ^ select(vec2<u32>(u_input.a, 0u), u_input.b.zy, vec2<bool>(var_4.c.x, false)), vec2<u32>(firstTrailingBit(var_2.d), ~51090u), all(select(vec3<bool>(var_1.c.x, false, var_2.c.x), vec3<bool>(var_1.c.x, var_4.c.x, false), var_1.c.x))), select(~(var_3 ^ var_3), select(var_3, vec2<u32>(var_1.d, 4679u), var_4.c) | vec2<u32>(var_3.x, 4294967295u), !(var_1.c.x == var_2.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b, -1000f), vec2<f32>(var_0, var_0), true)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1897f, -772f), vec2<f32>(-306f, var_1.a)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2631f, var_2.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, var_1.a) - vec2<f32>(125f, var_1.a)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_2.b) + var_2.b), 1028f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) + 643f)));
}

