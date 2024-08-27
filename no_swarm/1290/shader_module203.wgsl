struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1150f, 1075f);

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    let var_0 = u_input.b & u_input.b;
    var var_1 = vec2<i32>(-2147483647i, var_0);
    global1 = array<vec3<bool>, 29>();
    var var_2 = any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_2 = !(!all(vec2<bool>(false, true))) | !any(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true));
    return 173f;
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 193f), _wgslsmith_f_op_f32(f32(-1f) * -830f), global0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(-285f)), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1632f, 1315f, global0.x)))))))), vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(473u), ~4294967295u), vec2<u32>(~2161u, _wgslsmith_add_u32(1u, 0u))), 1u, abs(min(countOneBits(4294967295u), 1u))), vec3<f32>(-587f, _wgslsmith_f_op_f32(select(global0.x, -1392f, true)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2452f, -1000f)) + _wgslsmith_f_op_f32(step(638f, -1329f))))), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(select(false, true, false), true & all(vec4<bool>(false, true, false, false)), any(global1[_wgslsmith_index_u32(~0u, 29u)]), true), true));
    let var_1 = var_0;
    global1 = array<vec3<bool>, 29>();
    var var_2 = var_0.a.x;
    var var_3 = var_1;
    return _wgslsmith_div_vec3_f32(var_3.b, vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(306f, var_3.b.x, all(var_0.a.zy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d.x * global0.x), 1f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) * -2036f))));
    var var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1056f, -747f)), arg_2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.d.yz) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_3.d.zy * vec2<f32>(-318f, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) - arg_3.d.zx))))) + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_3.b.x))));
    return select(!select(vec2<bool>(arg_3.a.x, any(arg_3.e)), vec2<bool>(true, true), vec2<bool>(true, true)), select(!vec2<bool>(arg_3.e.x, true), select(select(select(arg_3.a.xy, vec2<bool>(arg_1.a.x, true), arg_3.e.x), arg_1.a.xz, false), !arg_3.e.xz, select(select(vec2<bool>(arg_3.a.x, arg_1.a.x), arg_1.e.wx, true), arg_1.a.xz, u_input.b == u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -817f) * 1023f) >= arg_0.x), arg_3.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = !func_4(_wgslsmith_f_op_vec2_f32(step(arg_0.d.zx, _wgslsmith_f_op_vec2_f32(arg_0.b.zz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), Struct_1(!select(arg_0.a, vec3<bool>(true, arg_2, false), global1[_wgslsmith_index_u32(arg_0.c.x, 29u)]), arg_0.b, vec4<u32>(~18663u, min(arg_0.c.x, arg_0.c.x), arg_0.c.x, 21524u), vec3<f32>(-1335f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-arg_0.b.x)), vec4<bool>(true, arg_1.x, true, 1000f > arg_0.b.x)), _wgslsmith_f_op_vec3_f32(func_3()), Struct_1(vec3<bool>(arg_1.x, any(arg_0.e), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)), reverseBits(reverseBits(arg_0.c)), vec3<f32>(-1410f, arg_0.b.x, -1238f), select(select(arg_0.e, arg_0.e, arg_0.e), select(arg_0.e, vec4<bool>(false, true, false, arg_0.a.x), true), select(arg_0.e, arg_0.e, false))));
    global1 = array<vec3<bool>, 29>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-559f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_2()), -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, _wgslsmith_f_op_f32(select(-809f, global0.x, false)), -325f, _wgslsmith_f_op_f32(-628f - -655f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1164f, arg_0.d.x, -542f, global0.x), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 673f)))))), (_wgslsmith_f_op_f32(round(1928f)) <= 1019f) & arg_2)), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), global0.x, _wgslsmith_div_f32(222f, arg_0.d.x), -528f));
    var var_2 = arg_0;
    var_2 = Struct_1(arg_0.e.yzw, vec3<f32>(-2588f, var_1.x, 809f), arg_0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(global0.x - -295f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wzw)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, var_1.x, _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1250f, arg_0.d.x, 1313f), vec3<f32>(1604f, -1000f, var_2.d.x))))), _wgslsmith_mult_u32(~arg_0.c.x, arg_0.c.x) == ~arg_0.c.x)), !(!var_2.e));
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = u_input.c;
    var_0 = ~u_input.a;
    let var_1 = min(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, ~(arg_2.x >> (78640u % 32u))), ~arg_1.c.x), ~reverseBits(0u));
    let var_2 = vec2<bool>(true || all(arg_1.e.xy), false);
    return arg_1.e.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, any(select(vec2<bool>(true, true), func_5(vec2<u32>(0u, 11053u), func_1(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<f32>(global0.x, -979f, global0.x), vec4<u32>(1u, 14952u, 4294967295u, 11079u), vec3<f32>(global0.x, global0.x, global0.x), vec4<bool>(true, true, true, false)), vec2<bool>(true, true), true), vec4<u32>(0u, 4294967295u, 4294967295u, 1924u), func_1(Struct_1(global1[_wgslsmith_index_u32(1u, 29u)], vec3<f32>(global0.x, -349f, 1222f), vec4<u32>(98140u, 15991u, 0u, 107u), vec3<f32>(514f, global0.x, global0.x), vec4<bool>(false, false, true, false)), vec2<bool>(false, true), true).b), true)));
    let var_1 = select(select(vec3<bool>(false, var_0.x, !var_0.x), !func_1(func_1(Struct_1(vec3<bool>(false, var_0.x, var_0.x), vec3<f32>(-742f, 141f, global0.x), vec4<u32>(68332u, 18876u, 4294967295u, 1u), vec3<f32>(-887f, global0.x, global0.x), vec4<bool>(var_0.x, false, false, true)), vec2<bool>(true, var_0.x), true), vec2<bool>(false, var_0.x), true).e.xzw, vec3<bool>(var_0.x || any(vec2<bool>(var_0.x, false)), !var_0.x | true, true)), select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(firstTrailingBit(33674u), 1u), ~(~15790u)), 29u)], select(select(global1[_wgslsmith_index_u32(select(4214u, 1u, var_0.x), 29u)], global1[_wgslsmith_index_u32(reverseBits(1u), 29u)], true), !vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, true)), select(var_0, func_1(Struct_1(global1[_wgslsmith_index_u32(0u, 29u)], vec3<f32>(551f, global0.x, 1479f), vec4<u32>(1u, 1u, 25853u, 22685u), vec3<f32>(global0.x, -428f, global0.x), vec4<bool>(var_0.x, false, false, var_0.x)), select(var_0.zz, vec2<bool>(var_0.x, true), var_0.x), true).e.ywz, !func_1(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1717f, global0.x, -1000f), vec4<u32>(4294967295u, 9567u, 2304u, 9310u), vec3<f32>(global0.x, global0.x, global0.x), vec4<bool>(true, false, var_0.x, true)), vec2<bool>(var_0.x, var_0.x), true).a)), true);
    let var_2 = Struct_1(var_1, _wgslsmith_f_op_vec3_f32(round(func_1(func_1(func_1(Struct_1(vec3<bool>(true, var_1.x, var_0.x), vec3<f32>(global0.x, global0.x, global0.x), vec4<u32>(58893u, 11675u, 4294967295u, 54720u), vec3<f32>(1470f, global0.x, -930f), vec4<bool>(var_1.x, true, false, var_0.x)), var_1.yy, var_0.x), vec2<bool>(true, true), !var_1.x), func_5(firstTrailingBit(vec2<u32>(4294967295u, 43923u)), func_1(Struct_1(vec3<bool>(false, var_1.x, true), vec3<f32>(global0.x, global0.x, global0.x), vec4<u32>(41211u, 28369u, 15363u, 0u), vec3<f32>(-856f, -187f, global0.x), vec4<bool>(false, var_0.x, false, var_0.x)), vec2<bool>(true, true), var_0.x), vec4<u32>(13871u, 4294967295u, 0u, 38587u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 611f) * vec3<f32>(-1346f, -1466f, 673f))), true).b)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, -739f, -1252f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -827f), vec3<f32>(global0.x, -667f, global0.x))))))), vec4<bool>(!(u_input.a <= -2147483647i), false, false, !var_1.x));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d.x, -1000f), var_2.b.zx))));
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1238f)))));
    global1 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-9092i, max(vec3<u32>(func_1(Struct_1(vec3<bool>(var_0.x, true, true), vec3<f32>(global0.x, 1160f, -1832f), var_2.c, vec3<f32>(var_2.b.x, var_2.d.x, 1000f), vec4<bool>(var_2.e.x, var_0.x, var_1.x, var_0.x)), func_1(var_2, var_1.xx, var_1.x).a.zx, !var_1.x).c.x, _wgslsmith_dot_vec4_u32(abs(var_2.c), vec4<u32>(57363u, var_2.c.x, 62782u, var_2.c.x) >> (vec4<u32>(4294967295u, 22353u, var_2.c.x, var_2.c.x) % vec4<u32>(32u))), firstLeadingBit(38173u)), var_2.c.wxy), ~var_2.c.zwx);
}

