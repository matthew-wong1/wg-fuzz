struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: i32) -> vec4<bool> {
    let var_0 = vec2<u32>(0u & u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 60196u));
    let var_1 = Struct_1(min(vec3<u32>(_wgslsmith_sub_u32(var_0.x, ~var_0.x), countOneBits(4294967295u | u_input.a.x), var_0.x), ~max(select(vec3<u32>(40497u, 0u, var_0.x), vec3<u32>(1u, u_input.a.x, 1u), vec3<bool>(arg_1.x, true, arg_0.x)), ~vec3<u32>(1u, 1u, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(907f)) + 1545f), -575f, -392f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1001f, 1088f)), _wgslsmith_f_op_f32(round(1640f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(605f)) - 1f), -565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2323f) - _wgslsmith_f_op_f32(trunc(558f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1323f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(272f, var_2.x, var_2.x, -626f), vec4<f32>(689f, var_2.x, var_2.x, 1499f))), vec4<f32>(var_2.x, -855f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, -1000f, var_2.x, var_2.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-864f, 659f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 1904f, arg_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-759f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(sign(400f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -1547f), 1320f)), var_2.x) - vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 227f), var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(573f))))));
    return select(!(!(!select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, arg_0.x, arg_1.x, arg_0.x)))), select(select(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_0.x)), select(!vec4<bool>(false, arg_1.x, arg_1.x, arg_0.x), select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(false, true, true, false), true), false), select(!vec4<bool>(arg_1.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_0.x), true), vec4<bool>(arg_0.x, true, true, arg_1.x))), vec4<bool>(!all(arg_0.yy), all(vec3<bool>(arg_1.x, arg_0.x, arg_0.x)), false, true), arg_0.x), select(!(!select(vec4<bool>(arg_1.x, arg_0.x, arg_1.x, arg_0.x), vec4<bool>(false, true, false, arg_1.x), true)), !(!vec4<bool>(false, arg_1.x, arg_0.x, arg_0.x)), !vec4<bool>(true, !arg_1.x, arg_0.x, all(vec3<bool>(arg_1.x, false, arg_1.x)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(!func_3(arg_0, arg_0, _wgslsmith_div_i32(-18383i, -u_input.e.x)), select(vec2<bool>(true, all(arg_0.xx)), !arg_0.zx, !func_3(arg_0, arg_0, u_input.e.x).zx));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2195f, -1977f, 390f, 975f)))));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(select(~(vec3<u32>(76565u, u_input.a.x, u_input.a.x) << (vec3<u32>(4294967295u, 4294967295u, 31697u) % vec3<u32>(32u))), vec3<u32>(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u), 1208u), all(func_3(vec3<bool>(var_0.a.x, var_0.a.x, false), arg_0, -93622i).yxz)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~abs(i32(-1i) * -6720i), u_input.d, countOneBits(u_input.d), -18407i), select(~vec4<i32>(~(-1i), min(-4945i, 1i), u_input.b.x, 32000i), vec4<i32>(-1i) * -(~vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.d)), arg_0.x));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(639f))), true)), _wgslsmith_f_op_f32(-var_1.x))), var_1.x, 842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-453f, var_1.x), _wgslsmith_f_op_f32(round(var_1.x))))))));
    return Struct_2(Struct_1(abs(countOneBits(_wgslsmith_sub_vec3_u32(var_2.a, vec3<u32>(u_input.a.x, var_2.a.x, var_2.a.x))))), var_3);
}

fn func_1() -> bool {
    let var_0 = true;
    let var_1 = func_2(vec3<bool>(false, true, var_0), 4294967295u <= u_input.a.x);
    let var_2 = select(_wgslsmith_dot_vec3_u32(~var_1.a.a, var_1.a.a << (max(~var_1.a.a, vec3<u32>(7422u, 4294967295u, var_1.a.a.x)) % vec3<u32>(32u))), 34096u, true);
    let var_3 = 20337u;
    let var_4 = !func_3(!select(select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0), var_0), !vec3<bool>(false, true, var_0), vec3<bool>(true, var_0, false)), func_3(vec3<bool>(true, select(var_0, var_0, var_0), true), !vec3<bool>(var_0, var_0, false), var_1.b).wxx, (u_input.e.x | min(-42521i, -1i)) << (var_2 % 32u)).wyw;
    return var_4.x || var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(true, !(true && any(vec3<bool>(false, true, false))), false, func_1()), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), true), all(vec3<bool>(true, true, all(vec4<bool>(false, true, false, true))))));
    let var_1 = reverseBits(_wgslsmith_mod_u32(1u, 25877u));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1129f, -103f, -318f, 1587f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(523f, -491f, 480f, -125f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(566f, -512f, -450f, 577f) + vec4<f32>(-1219f, 100f, -1357f, 1330f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-1418f, -777f), _wgslsmith_f_op_f32(-1702f + 795f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-394f, -883f, 301f, 1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(-285f)), _wgslsmith_f_op_f32(floor(751f)), 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, -1487f, 1659f, -172f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-826f)))), var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1656f, var_2.x)), var_0.a.x | any(vec2<bool>(var_0.a.x, var_0.a.x)))), 1571f));
    let var_3 = Struct_3(select(func_3(select(vec3<bool>(true, var_0.a.x, var_0.a.x), func_3(var_0.a.xxy, var_0.a.zwz, u_input.b.x).zwx, !var_0.a.zzx), vec3<bool>(true, true, var_0.b.x), u_input.b.x & (u_input.e.x & 0i)), select(!vec4<bool>(var_0.a.x, true, false, true), var_0.a, false), -13743i > _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(46455i, -1i, -1i))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, 437f, var_2.x, var_2.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -736f, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(-365f - 639f), _wgslsmith_f_op_f32(-var_2.x), var_2.x, -1182f))), u_input.e.x, ~(~(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a) ^ ~vec2<u32>(u_input.a.x, u_input.a.x))));
}

