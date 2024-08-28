struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = global2.a;
    let var_1 = Struct_2(reverseBits(~select(select(vec2<u32>(global2.b, global2.b), vec2<u32>(global2.b, 1u), global1.yx), _wgslsmith_sub_vec2_u32(vec2<u32>(global2.b, global2.b), vec2<u32>(global2.b, 24310u)), true)), global2.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-926f, global2.a.a.x, global1.x)), -785f, global1.x)), _wgslsmith_f_op_f32(var_0.a.x + -1453f))), global1.yy);
    var var_2 = !select(arg_0, select(!(!arg_0), vec3<bool>(any(global1.xx), all(vec2<bool>(true, var_1.d.x)), var_1.d.x), any(var_1.d)), select(arg_0, select(!vec3<bool>(false, true, var_1.d.x), select(global1.ywx, vec3<bool>(var_1.d.x, arg_0.x, false), arg_0.x), var_1.d.x || arg_0.x), select(!global1.zzx, !vec3<bool>(true, arg_0.x, false), true)));
    global1 = select(vec4<bool>(!(!var_1.d.x), false, var_1.d.x, _wgslsmith_f_op_f32(-global2.a.a.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-463f)))), vec4<bool>(all(!select(vec2<bool>(true, var_2.x), vec2<bool>(arg_0.x, true), vec2<bool>(var_1.d.x, true))), !(!(global2.b > 15867u)), false, true), all(select(vec3<bool>(all(vec4<bool>(false, false, var_2.x, true)), true, arg_0.x), vec3<bool>(var_1.d.x, var_1.d.x, select(var_2.x, var_2.x, true)), false | (global2.b <= global2.b))));
    var var_3 = select(_wgslsmith_div_i32(-firstLeadingBit(0i), u_input.a), ~(-8497i) >> (global2.b % 32u), var_1.d.x);
    return 1u;
}

fn func_2() -> Struct_2 {
    global2 = Struct_3(Struct_1(vec2<f32>(global2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) * global2.a.a.x))), func_3(vec3<bool>(true, false, all(global1.wyy))));
    var var_0 = Struct_2(~firstLeadingBit(abs(vec2<u32>(global2.b, 4294967295u))) >> (((vec2<u32>(global2.b, global2.b) >> (vec2<u32>(4294967295u, global2.b) % vec2<u32>(32u))) | ~abs(vec2<u32>(global2.b, 4294967295u))) % vec2<u32>(32u)), Struct_1(global2.a.a), global2.a, global1.wz);
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1283f, 206f)) + _wgslsmith_f_op_vec2_f32(sign(global2.a.a))))), max(~(~var_0.a.x), ~(~(~21014u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, global2.a.a.x, global2.a.a.x, var_0.c.a.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.a.x, 672f, -1000f, 1064f), vec4<f32>(396f, global2.a.a.x, global2.a.a.x, var_0.b.a.x))))))));
    var_0 = Struct_2(_wgslsmith_sub_vec2_u32(~var_0.a, vec2<u32>(var_0.a.x, ~(var_0.a.x ^ 7462u))), global2.a, global2.a, global1.yx);
    return Struct_2(var_0.a, var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-903f, -756f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(938f, -2654f))) * global2.a.a)), select(vec2<bool>(false, var_0.d.x), var_0.d, var_0.d));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(908f, -400f, global2.a.a.x) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a.x, 1000f, 409f), vec3<f32>(504f, 1239f, -471f))) + vec3<f32>(-248f, _wgslsmith_f_op_f32(505f - 1321f), _wgslsmith_f_op_f32(floor(-926f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, global2.a.a.x, var_0.b.a.x) + vec3<f32>(-378f, arg_0.a.a.x, var_0.b.a.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.a.x * 253f), _wgslsmith_f_op_f32(floor(-1293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), -1520f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, var_0.c.a.x, -1363f)) - vec3<f32>(arg_0.a.a.x, -334f, arg_0.a.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, -775f, 562f))))));
    let var_2 = Struct_3(Struct_1(var_1.xz), countOneBits(~(global2.b >> ((arg_0.b | 71561u) % 32u))));
    let var_3 = func_2().c;
    var_0 = func_2();
    return !(-175f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-570f, var_3.a.x, var_0.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(global2.b, global2.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b, 4294967295u), vec2<u32>(4294967295u, 1u))) ^ ~(~abs(vec2<u32>(global2.b, global2.b)));
    global1 = vec4<bool>(true & global1.x, false, !select(true, !(-1i < u_input.a), select(func_1(Struct_3(Struct_1(global2.a.a), global2.b)), !global1.x, true)), global1.x);
    var_0 = vec2<u32>(var_0.x, 14713u);
    global0 = array<i32, 18>();
    let var_1 = -2410f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(625f * global2.a.a.x))), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global2.a.a.x), global2.a.a))))))), _wgslsmith_f_op_f32(-1751f * 103f));
}

