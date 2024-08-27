struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-266f, -871f, -1727f), vec3<f32>(1000f, -246f, -753f), vec3<bool>(true, false, global1.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1956f, 173f, -562f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 233f) + _wgslsmith_f_op_vec2_f32(-var_0.xx)) * var_0.xz))));
    var var_2 = vec4<bool>(true, arg_2.x <= u_input.b, !global1.x, global1.x);
    let var_3 = u_input.a.yww;
    let var_4 = -(~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(-1i) * -u_input.a));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = 1i | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(reverseBits(vec3<i32>(u_input.b, -30487i, u_input.b))), ~u_input.a.wxx), max(-26336i, u_input.b));
    var var_1 = Struct_2(Struct_1(!(!vec2<bool>(arg_1.x, false)), !vec4<bool>(false, all(arg_1), !arg_2, arg_2)), !select(!vec4<bool>(arg_2, false, false, arg_2), !vec4<bool>(true, arg_2, false, arg_2), true));
    let var_2 = Struct_2(Struct_1(select(select(global1.yx, global0[_wgslsmith_index_u32(~33309u, 23u)], global1.xy), select(select(vec2<bool>(var_1.a.b.x, global1.x), global1.xx, false), global1.xz, false), !var_1.b.x), select(!select(vec4<bool>(true, true, false, global1.x), vec4<bool>(arg_2, global1.x, false, true), vec4<bool>(false, var_1.a.b.x, true, var_1.a.b.x)), select(select(vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, true, true, arg_2), true), select(var_1.b, var_1.a.b, arg_1.x), true), 0i != ~u_input.b)), var_1.b);
    global1 = select(vec3<bool>(global1.x, any(select(arg_1, vec3<bool>(arg_1.x, var_1.a.b.x, arg_2), func_3(u_input.b, u_input.e, u_input.a.zx))), true || func_3(var_0 << (u_input.e % 32u), _wgslsmith_mult_u32(0u, u_input.d.x), ~u_input.a.zz)), var_2.b.wyx, vec3<bool>(false, all(!global0[_wgslsmith_index_u32(u_input.d.x, 23u)]) & !(arg_0 > arg_0), arg_1.x));
    let var_3 = -u_input.a.zw;
    return Struct_2(var_1.a, vec4<bool>(true, all(vec3<bool>(true | var_2.a.b.x, !arg_1.x, global1.x)), all(select(vec4<bool>(var_2.a.a.x, var_1.b.x, arg_1.x, false), select(vec4<bool>(arg_2, arg_1.x, false, false), var_2.a.b, vec4<bool>(global1.x, true, arg_1.x, false)), !vec4<bool>(var_2.a.b.x, var_1.b.x, arg_2, global1.x))), true));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = select(select(arg_0.b.wxx, select(arg_0.a.b.zzw, !(!arg_0.b.zyw), select(vec3<bool>(false, global1.x, global1.x), arg_0.b.xyy, arg_0.b.zwx)), arg_0.b.xyw), vec3<bool>(arg_0.b.x, !any(vec2<bool>(global1.x, false)), false), !arg_0.a.b.x);
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, -716f)))))), !(!select(arg_0.a.b.xyz, vec3<bool>(true, false, global1.x), select(arg_0.a.b.ywy, vec3<bool>(false, true, true), global1.x))), arg_0.a.a.x);
    let var_1 = Struct_2(Struct_1(!vec2<bool>(all(arg_0.a.b), any(var_0.a.b)), !(!func_2(-515f, vec3<bool>(true, var_0.b.x, true), arg_0.a.b.x).a.b)), arg_0.b);
    var_0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, 118f)))))), var_0.a.b.xxz, false);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = Struct_2(arg_0.a, arg_1.b);
    global0 = array<vec2<bool>, 23>();
    global1 = arg_0.a.b.yzw;
    var var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(exp2(arg_3)))))), func_1(func_2(arg_3, select(func_2(815f, vec3<bool>(false, arg_1.a.x, arg_2.b.x), var_0.b.x).b.wxy, vec3<bool>(var_0.b.x, false, true), arg_0.b.x), true)).a.b.zxy, !(!(!arg_1.b.x))).a;
    global1 = !vec3<bool>((~u_input.c.x ^ ~u_input.c.x) <= ~(~u_input.e), true, u_input.b >= -45272i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x;
    var var_1 = u_input.a.wx;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, -1363f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, 312f) - vec2<f32>(440f, 166f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(643f)) - 1f), 1174f))));
    var var_3 = Struct_1(!(!global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mod_u32(0u, 4294967295u)), 23u)]), vec4<bool>(any(vec4<bool>(false, global1.x, global1.x, any(vec2<bool>(true, global1.x)))), select(global1.x, func_4(func_1(Struct_2(Struct_1(vec2<bool>(global1.x, true), vec4<bool>(true, true, global1.x, true)), vec4<bool>(global1.x, global1.x, true, global1.x))), func_1(Struct_2(Struct_1(global1.zy, vec4<bool>(global1.x, false, global1.x, true)), vec4<bool>(false, true, true, false))).a, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<bool>(global1.x, global1.x, true, true)), vec4<bool>(false, global1.x, global1.x, true)), _wgslsmith_f_op_f32(var_2.x + var_2.x)), false), any(select(vec2<bool>(global1.x, true), !global1.zx, func_1(Struct_2(Struct_1(global1.zy, vec4<bool>(false, false, false, global1.x)), vec4<bool>(true, global1.x, false, true))).a.b.wz)), global1.x));
    var var_4 = min(u_input.a.wz, vec2<i32>(-var_1.x, -_wgslsmith_div_i32(var_1.x, i32(-1i) * -2147483647i)));
    let var_5 = vec4<bool>(global1.x, all(var_3.b.zyw), countOneBits(7284u) >= (_wgslsmith_dot_vec3_u32(abs(u_input.c.xww), vec3<u32>(u_input.c.x, 4294967295u, var_0)) | abs(0u)), true);
    var_3 = func_1(Struct_2(Struct_1(func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.e, 23u)], var_3.b), vec4<bool>(true, false, var_3.a.x, false))).b.yx, !var_3.b), vec4<bool>(var_3.a.x, any(global1.zz), true, _wgslsmith_f_op_f32(var_2.x - var_2.x) >= 216f))).a;
    let var_6 = 42560u;
    var var_7 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-var_2.x))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), var_2.x))), firstTrailingBit(abs(u_input.d.ww)) >> (countOneBits(u_input.c.xy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), 1411f), _wgslsmith_f_op_f32(abs(1321f)), var_5.x)), 0i);
}

