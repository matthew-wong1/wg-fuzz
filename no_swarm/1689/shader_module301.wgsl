struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(41336u, 26088u, 104896u, 50013u), vec2<f32>(100f, 575f), Struct_1(vec3<f32>(1116f, 767f, 1312f)));

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(-760f), Struct_3(-1306f), Struct_3(-219f), Struct_3(-1263f), Struct_3(-1604f), Struct_3(-1272f), Struct_3(-1318f), Struct_3(-978f), Struct_3(-2502f), Struct_3(-1463f), Struct_3(-1063f), Struct_3(633f), Struct_3(-2928f), Struct_3(1041f), Struct_3(-350f), Struct_3(-1647f), Struct_3(1000f), Struct_3(-437f), Struct_3(297f), Struct_3(-151f), Struct_3(-1005f), Struct_3(1266f), Struct_3(655f), Struct_3(-154f), Struct_3(1654f), Struct_3(-1390f), Struct_3(107f), Struct_3(-1000f), Struct_3(-2251f), Struct_3(-1000f), Struct_3(1000f), Struct_3(-510f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = vec4<f32>(105f, _wgslsmith_f_op_f32(2119f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x + global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f - global2.c.a.x) - _wgslsmith_f_op_f32(-1095f - 319f)), _wgslsmith_f_op_f32(exp2(arg_0.a.x)))) + global2.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f))))));
    var var_1 = !global1.x;
    var var_2 = Struct_2(min(~global2.a, select(~vec4<u32>(1u, 1u, 1u, global2.a.x), vec4<u32>(abs(global2.a.x), ~global2.a.x, 22774u, min(4294967295u, 37711u)), global1.x || false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1043f)) + vec2<f32>(_wgslsmith_f_op_f32(global2.c.a.x + global2.b.x), global2.b.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -527f))))) - vec2<f32>(-147f, _wgslsmith_f_op_f32(-global2.c.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.wzz), arg_1.a, true))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1434f) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-511f))), any(vec4<bool>(global1.x, false, false, global1.x))))));
    let var_4 = max(var_2.a.x, max(0u, global2.a.x));
    return _wgslsmith_f_op_vec2_f32(global0.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(390f * arg_1.a.x), _wgslsmith_f_op_f32(sign(733f)))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = select(vec2<bool>(global1.x, !global1.x), select(!(!(!vec2<bool>(global1.x, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false), global1.x);
    global2 = Struct_2(~global2.a, _wgslsmith_f_op_vec2_f32(func_3(global2.c, global2.c)), Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.yxw))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-213f - 2027f), _wgslsmith_f_op_f32(exp2(global2.c.a.x)), global2.b.x) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1248f, global2.c.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1277f, global2.c.a.x, global2.b.x)));
    global2 = Struct_2(global2.a, global0.wx, global2.c);
    return Struct_2(global2.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(-718f))), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) * global2.c.a.x) + global0.x)), global2.c);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global1 = vec2<bool>(arg_0.x, (global2.a.x & 55720u) == global2.a.x);
    global2 = func_2(~(-1i));
    global3 = array<Struct_3, 32>();
    global3 = array<Struct_3, 32>();
    var var_0 = ~_wgslsmith_clamp_vec4_u32(global2.a, global2.a, func_2(-33767i).a | _wgslsmith_mod_vec4_u32(global2.a, firstTrailingBit(global2.a)));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a, global0.zy, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, -966f, 561f) * vec3<f32>(global0.x, 1091f, global2.c.a.x)) * vec3<f32>(289f, global0.x, -929f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.c.a, vec3<f32>(-298f, global2.c.a.x, global0.x)))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global2.b.x, global2.b.x, 360f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, -521f, global0.x, global0.x), vec4<f32>(var_0.b.x, var_0.b.x, global2.b.x, 1299f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, global0.x, -182f, global2.b.x) * vec4<f32>(-1000f, 573f, -721f, 1237f)) + vec4<f32>(-562f, -247f, var_0.b.x, 124f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, 1000f, global2.b.x, 260f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_0.b.x, -2023f, global2.c.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, 1374f, global0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - -720f), 791f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(max(global2.c.a.x, 161f))), 722f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, -1019f, 292f, global2.c.a.x)))));
    var var_1 = func_1(!(!(!vec4<bool>(global1.x, global1.x, true, global1.x))));
    var var_2 = -57322i;
    var var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-629f, global0.x), vec2<f32>(global2.c.a.x, var_1.a.x)) - vec2<f32>(124f, 702f))))));
}

