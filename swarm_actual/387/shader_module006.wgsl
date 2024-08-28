struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 5770u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn func_3() -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-687f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(437f, 400f, global1.x)), -614f)) + -2263f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1638f)) - _wgslsmith_f_op_f32(f32(-1f) * -164f)))), 1467f);
    global0 = array<vec3<i32>, 31>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), -510f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-342f, -924f, -1352f, var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1272f, var_0.x, var_0.x, var_0.x), vec4<f32>(-1559f, var_0.x, -432f, -1033f), false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1625f, 1164f, var_0.x, -1516f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-961f, var_0.x, var_0.x, 1669f)))))), ~0u);
    var_0 = _wgslsmith_f_op_vec4_f32(-var_1.b);
    global1 = vec4<bool>(661u <= _wgslsmith_dot_vec4_u32(~(~u_input.a), u_input.a), any(!(!(!global1.wwx))), true && !any(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, global1.x, true), global1.x)), !(!all(!vec4<bool>(false, true, global1.x, true))));
    return -2147483647i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(49601u, 1u) & (u_input.a.x ^ _wgslsmith_mod_u32(47094u, 1u)), 70855u, ~reverseBits(arg_0), u_input.e);
    let var_1 = vec3<i32>(1i, u_input.b.x, ~func_3());
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(390f, 155f), vec2<f32>(-617f, -272f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, 2434f)), global1.xy)), vec2<f32>(-681f, _wgslsmith_div_f32(623f, 594f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(185f, -749f) * vec2<f32>(1067f, 854f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, -354f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2025f, _wgslsmith_f_op_f32(round(-683f)), 1136f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -962f)))))), countOneBits(~(~(global2.x ^ global2.x))));
    global2 = vec3<u32>(_wgslsmith_mult_u32(u_input.e, 4294967295u), ~select(u_input.a.x, var_2.c, all(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, false)))), 35579u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x * var_2.a.x), var_2.b.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b.x, 1255f))))), var_2.b, ~(~(~arg_0)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> bool {
    global2 = u_input.a.yyy;
    var var_0 = u_input.c;
    let var_1 = !(!(!select(!vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(false, global1.x, true, false), global1.x | false)));
    var var_2 = true;
    let var_3 = func_2(1u);
    return _wgslsmith_sub_u32(arg_0, ~u_input.a.x >> ((~arg_0 | _wgslsmith_clamp_u32(global2.x, 0u, var_3.c)) % 32u)) > ~(arg_0 & ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.yxx;
    global1 = vec4<bool>(true, global1.x, all(vec4<bool>(global1.x, func_1(u_input.e, vec3<f32>(-839f, -354f, -783f), _wgslsmith_f_op_vec2_f32(vec2<f32>(858f, 636f) - vec2<f32>(-1070f, 662f))), false, !func_1(global2.x, vec3<f32>(814f, -203f, -943f), vec2<f32>(1323f, 232f)))), select(false, all(!select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, global1.x, false, true))), abs(reverseBits(4294967295u)) <= select(u_input.e >> (30770u % 32u), reverseBits(global2.x), all(vec4<bool>(global1.x, global1.x, false, false)))));
    global0 = array<vec3<i32>, 31>();
    var var_0 = !global1.x;
    let var_1 = !vec4<bool>(global1.x, global1.x, true, any(global1.xzw));
    var var_2 = 33276u;
    let var_3 = u_input.b;
    var var_4 = ~reverseBits(~(~_wgslsmith_mod_u32(4294967295u, u_input.e)));
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(global2.yx, global2.yz), 1u | global2.x, firstLeadingBit(u_input.a.x), 1u)) << (max(u_input.a ^ ~vec4<u32>(41730u, 5591u, 10652u, u_input.a.x), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.zwy, u_input.a.ywz), global2.x & 14055u, 0u)) % vec4<u32>(32u)), firstTrailingBit(3114i), global2.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1601f), -204f)), _wgslsmith_f_op_f32(-1385f - 1000f))), abs(vec2<i32>(-18613i, u_input.b.x >> (u_input.e % 32u))) ^ vec2<i32>(-23411i, u_input.c));
}

