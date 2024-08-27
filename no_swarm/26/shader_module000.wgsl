struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> vec3<f32> {
    var var_0 = 988f;
    var var_1 = global0.b.b;
    var var_2 = vec2<i32>(global0.b.b.a, -var_1.a);
    global0 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), arg_2.b);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(317f - -434f), _wgslsmith_f_op_f32(-global0.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, arg_2.a, var_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, arg_1, arg_1) + vec3<f32>(1709f, var_3.x, arg_1)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_3.x, -489f) + vec3<f32>(global0.a, -1467f, arg_1)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1001f, 1000f, -608f), vec3<f32>(arg_1, arg_1, global0.a))))))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_3(false != (global0.b.a >= global0.b.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0.b.d, 963f, Struct_4(global0.a, Struct_2(global0.b.c.x, global0.b.b, global0.b.c, 1u)), 1u))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(372f)), global0.a, _wgslsmith_f_op_f32(ceil(global0.a))))));
    var var_1 = var_0.b.x;
    var var_2 = global0.b.b.a;
    global1 = arg_0;
    global0 = Struct_4(global0.a, Struct_2(global0.b.a, global0.b.b, ~firstTrailingBit(vec2<u32>(9938u, global0.b.a) & global0.b.c), firstTrailingBit(~6639u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(min(-231f, -1160f)))), _wgslsmith_f_op_f32(sign(-553f))) - global0.a);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(func_2(arg_3.x & all(select(!vec3<bool>(true, false, arg_0.a), !vec3<bool>(arg_2.a, arg_3.x, arg_0.a), select(vec3<bool>(arg_2.a, arg_0.a, true), vec3<bool>(false, arg_3.x, arg_2.a), false)))));
    let var_1 = !(!(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.b.b.a, u_input.c.x)), ~vec2<i32>(u_input.c.x, global0.b.b.a)) > ((global0.b.b.a ^ 0i) | 50098i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2315f)) * _wgslsmith_f_op_f32(-1289f + _wgslsmith_f_op_f32(1000f * arg_0.b.x))) + _wgslsmith_f_op_f32(-global0.a)) - -111f);
    let var_3 = Struct_2(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, arg_1), _wgslsmith_mod_u32(countOneBits(1u), ~arg_1)), Struct_1(global0.b.b.a), global0.b.c, global0.b.d << (~4294967295u % 32u));
    global1 = all(vec3<bool>(false, false, arg_3.x));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, var_0, arg_2.b.x, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, var_0, 814f, -1234f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1328f, 429f, arg_0.b.x))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-752f, arg_2.b.x, -287f, arg_0.b.x), vec4<f32>(arg_2.b.x, -194f, arg_2.b.x, -1198f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, -1125f, global0.a, var_2), vec4<f32>(-1084f, 560f, 165f, arg_0.b.x))), any(arg_3)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(999f, global0.a, var_0, var_2), vec4<f32>(-555f, global0.a, var_0, global0.a)))))), !vec4<bool>(arg_0.a, false, all(arg_3), true))), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, -453f, 823f, 403f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, _wgslsmith_div_f32(global0.a, 302f), _wgslsmith_f_op_f32(-444f - 1778f), global0.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(false, vec3<f32>(global0.a, global0.a, global0.a)), global0.b.d, Struct_3(false, vec3<f32>(global0.a, global0.a, 826f)), vec2<bool>(true, true))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), global0.a, _wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_div_f32(-1377f, 190f))))));
    let var_1 = ~(~vec3<u32>(28711u, abs(global0.b.d), _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(1u, 75110u))));
    global1 = any(select(vec3<bool>(true && all(vec3<bool>(false, true, true)), true, true), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), global0.b.b.a > ~u_input.a), (~global0.b.b.a > u_input.d.x) || true));
    var var_2 = Struct_5(min(~firstTrailingBit(reverseBits(var_1)), ~var_1), u_input.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(false, var_0.xzw), global0.b.a, Struct_3(false, vec3<f32>(-622f, global0.a, -1612f)), vec2<bool>(true, false))).x), abs(global0.b.b.a) < global0.b.b.a)))), !vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(func_2(true)) <= -780f, all(vec4<bool>(true, true, true, false)), true | any(vec4<bool>(false, true, true, true))), !(!((global0.b.b.a == -2147483647i) || true)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-384f, 900f, var_2.c, -408f), vec4<f32>(var_2.c, var_2.c, var_0.x, -1446f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_2.c, var_0.x, -228f)))))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1230f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1042f + 203f))), -943f, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(var_0.x - 1920f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1683f))));
    let var_4 = countOneBits(~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), 1u)));
    var_2 = Struct_5(~(~vec3<u32>(~var_1.x, 43183u, ~0u)), vec4<i32>(abs(~abs(19093i)), 1i, 1i, global0.b.b.a), var_2.c, vec4<bool>(any(select(vec4<bool>(var_2.d.x, var_2.e, true, true), vec4<bool>(true, true, true, true), false)), !(!var_2.e), _wgslsmith_f_op_vec4_f32(func_1(Struct_3(false, var_0.wyy), 0u, Struct_3(var_2.d.x, var_0.wzx), select(vec2<bool>(true, true), vec2<bool>(var_2.e, true), true))).x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 645f) + 205f), select(true, !var_2.e, var_2.e)), true);
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.b.a, -_wgslsmith_mod_i32(reverseBits(u_input.c.x), var_2.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(var_1.x), _wgslsmith_mod_u32(var_2.a.x ^ 1u, ~4294967295u)), ~(~_wgslsmith_sub_u32(4294967295u, 4294967295u))));
}

