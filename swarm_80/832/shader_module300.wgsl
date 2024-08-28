struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(566f - -900f))), 485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(196f)) * 212f)), 503f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 10267u), vec2<u32>(4294967295u, u_input.d)) << (14725u % 32u), ~u_input.b, 0u) ^ _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(u_input.b, 0u, u_input.d)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 13559u, u_input.d), vec3<u32>(4294967295u, u_input.d, 0u)))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true), -682f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yyx) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.xyy + var_0.xxx), var_0.wxw))));
    let var_2 = true;
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(var_1.b.x, min(~u_input.d, 4294967295u) & abs(var_1.b.x | 0u), _wgslsmith_div_u32(~(~var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 41782u), ~vec3<u32>(4294967295u, 5018u, u_input.b)))), reverseBits(reverseBits(0u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, 902f, var_1.e.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1993f, var_0.x, -382f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-497f, 854f, var_0.x, -876f))))))));
    return !any(vec4<bool>(true, false & !var_1.c.x, var_1.c.x, !all(vec3<bool>(false, var_1.c.x, false))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    return arg_0.e.x;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-var_0.e.x);
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), ~vec3<u32>(4294967295u, 1u, ~var_0.b.x), !select(select(vec2<bool>(true, arg_0.c.x), !arg_0.c, vec2<bool>(false, var_0.c.x)), !arg_0.c, arg_0.c), -798f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, var_0.e.x, 1193f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.e - vec3<f32>(2401f, -1378f, -227f)), _wgslsmith_f_op_vec3_f32(-var_0.e)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a)))), var_0.d)), _wgslsmith_add_vec3_u32(arg_0.b, var_0.b), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d)))), arg_0.e);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1709f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e.x, 1f) * 450f), _wgslsmith_div_f32(-1655f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1f, vec3<u32>(4294967295u, select(1u, ~max(1u, 10320u), func_1()), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 45387u) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, u_input.d)), abs(~vec2<u32>(u_input.d, u_input.d)))), !select(vec2<bool>(true, true), vec2<bool>(true, u_input.d > 0u), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(518f, vec3<u32>(u_input.d, u_input.b, u_input.b), vec2<bool>(true, true), 1000f, vec3<f32>(-1216f, -228f, -599f)), 1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, 2532f)), -34344i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(1000f, vec3<u32>(1u, u_input.d, u_input.d), vec2<bool>(true, true), -1501f, vec3<f32>(-415f, -1267f, -448f)), u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, 1912f, -518f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, (var_0.b ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 39661u, u_input.d), vec3<u32>(16895u, var_0.b.x, var_0.b.x)))) >> (_wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(abs(var_0.b.x), ~72127u, ~u_input.b), vec3<u32>(~u_input.d, u_input.b << (43713u % 32u), 20406u)) % vec3<u32>(32u)), var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e.yx - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.e.yy)), var_0.e.xz))));
}

