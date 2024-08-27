struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f))));
    var var_1 = Struct_2(-1378f, vec4<u32>(~u_input.b, 4294967295u, arg_1, ~_wgslsmith_add_u32(4365u, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f * -1071f))), arg_0);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1643f) + _wgslsmith_f_op_f32(var_1.c * -628f))), var_1.c), select(select(!(!vec4<bool>(var_1.d.x, arg_0.x, true, false)), arg_0, false), arg_0, false));
    let var_3 = var_1.d.xz;
    let var_4 = -u_input.c.x;
    return var_2;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-558f)) * -106f)))), -370f, -2775f, -1184f);
    var var_1 = func_2(vec4<bool>(arg_0.a.x, true, true, any(select(!arg_0.a.yx, !vec2<bool>(arg_0.a.x, true), arg_0.a.x))), 46068u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx - var_0.xy) - _wgslsmith_f_op_vec2_f32(var_0.yw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.xy)) * _wgslsmith_f_op_vec2_f32(var_0.zz - var_0.wy)))));
    var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(357f, _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec2_f32(abs(var_0.zx))));
    let var_3 = func_2(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec4_u32(~abs(~var_1.b), vec4<u32>(0u, ~max(var_1.b.x, var_1.b.x), 0u, ~827u)));
    return u_input.b;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_2(!(!select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, true, false, arg_0), arg_0), vec4<bool>(true, arg_0, true, true), arg_0)), 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(f32(-1f) * -236f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1395f, -592f, 2461f) - vec3<f32>(var_0.c, var_0.a, -576f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.c, 439f) - vec3<f32>(697f, 1000f, var_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -467f, -696f) - vec3<f32>(-495f, var_0.c, var_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 385f)))))));
    let var_2 = func_2(var_0.d, ~(~0u));
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -587f);
    return func_3(Struct_1(!vec3<bool>(var_2.d.x | true, true, true)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_1(vec3<bool>(true, arg_2, true));
    let var_1 = _wgslsmith_sub_vec2_u32(countOneBits(firstLeadingBit(~max(vec2<u32>(6333u, 4294967295u), vec2<u32>(arg_3.x, 4294967295u)))), arg_3.zy);
    var var_2 = Struct_1(select(func_2(select(!vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_2, arg_1, arg_1, arg_2), !vec4<bool>(true, arg_2, var_0.a.x, false)), ~56866u).d.zxx, var_0.a, any(select(vec3<bool>(true, false, arg_2), var_0.a, true)) & true));
    var var_3 = var_0;
    var var_4 = var_2.a.x;
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(firstLeadingBit(~(~u_input.b)), 0u);
    var_0 = u_input.e ^ ~(~(~4294967295u));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.d), ~0u), func_4(func_1(any(vec4<bool>(false, true, true, true))), ~(-33363i) <= u_input.c.x, u_input.e >= max(u_input.e, u_input.d), ~vec3<u32>(1u, 1u, 4294967295u)), 32268u), ~(~vec3<u32>(20573u, 25695u, u_input.e) & ~vec3<u32>(u_input.e, 4294967295u, 1u)) >> (vec3<u32>(4294967295u, 34139u, 4294967295u) % vec3<u32>(32u)));
    var var_2 = func_2(select(!vec4<bool>(false, any(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, false, false, true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), func_2(vec4<bool>(true, true, true, true), ~_wgslsmith_add_u32(var_1.x, u_input.d)).d), ~4294967295u);
    var_0 = _wgslsmith_div_u32(0u, func_3(Struct_1(var_2.d.zxz)));
    let var_3 = func_2(!(!vec4<bool>(select(var_2.d.x, var_2.d.x, var_2.d.x), !var_2.d.x, var_2.d.x, true)), ~(~_wgslsmith_mult_u32(~4294967295u, countOneBits(0u))));
    var_2 = func_2(func_2(select(vec4<bool>(var_2.d.x, !var_2.d.x, true, true), select(var_3.d, vec4<bool>(var_2.d.x, var_2.d.x, var_3.d.x, true), vec4<bool>(var_3.d.x, var_3.d.x, false, false)), !vec4<bool>(var_2.d.x, var_3.d.x, false, false)), abs((4294967295u << (var_2.b.x % 32u)) & 1u)).d, 1u);
    let var_4 = var_2.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c.x, 82447i, u_input.c.x, 2147483647i) & vec4<i32>(-1i, u_input.c.x, 2147483647i, u_input.c.x), vec4<i32>(27394i, -49242i, -47954i, u_input.a.x)), abs(min(vec4<i32>(u_input.a.x, u_input.a.x, 13319i, 35528i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -59855i)))), var_4.x, -176f, _wgslsmith_mult_vec2_u32(min(func_2(!vec4<bool>(false, var_2.d.x, var_3.d.x, true), _wgslsmith_clamp_u32(4294967295u, 1040u, var_1.x)).b.wx, var_1.zz), var_1.yz));
}

