struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(firstLeadingBit(u_input.a.x)), -(i32(-1i) * -8229i));
    let var_1 = ~(~_wgslsmith_sub_u32(~1u, 1u));
    var var_2 = true & (max((4294967295u << (0u % 32u)) >> (~4294967295u % 32u), ~(~var_1)) != 56039u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1622f - 307f)) + 971f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-236f)) * _wgslsmith_f_op_f32(abs(-1780f))) - 1088f)));
    var_3 = _wgslsmith_f_op_f32(sign(838f));
    return 903f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -313f);
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, -254f, -194f, 110f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2029f, 1368f, -656f, 832f)), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -800f), -1116f, _wgslsmith_f_op_f32(ceil(-710f)), _wgslsmith_f_op_f32(1169f * 1189f))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true, true, select(any(vec3<bool>(true, true, false)), true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(227f, -425f) + global0[_wgslsmith_index_u32(32774u, 7u)])), vec2<f32>(-929f, _wgslsmith_f_op_f32(ceil(148f))), true))));
    var var_3 = 1u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), select(vec4<bool>(-50498i >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -5764i, -33948i, 0i), vec4<i32>(u_input.a.x, u_input.b, u_input.b, -51674i)), !any(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false)), 1u == _wgslsmith_dot_vec2_u32(vec2<u32>(30107u, 40878u), vec2<u32>(29602u, 12739u)), !all(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x))), select(select(vec4<bool>(var_2.b.x, false, var_2.b.x, true), var_2.b, !var_2.b.x), vec4<bool>(!var_2.b.x, false, select(var_2.b.x, true, var_2.b.x), true), var_2.b), !(!vec4<bool>(false, var_2.b.x, true, true))), var_2.a.zy);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.c.x)), var_0.a.x)))));
    var_0 = func_2();
    var var_2 = arg_0;
    let var_3 = false;
    return !var_0.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    var_0 = select(select(vec2<bool>(true, true), !vec2<bool>(func_1(var_0.x).x, true), vec2<bool>(true, true | !var_0.x)), !(!(!vec2<bool>(true, var_0.x))), var_0.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-480f, 748f, -1378f, -701f)) * vec4<f32>(-814f, -440f, 618f, -1232f)) - vec4<f32>(_wgslsmith_f_op_f32(step(-515f, -155f)), -1476f, _wgslsmith_f_op_f32(f32(-1f) * -748f), -277f)), !vec4<bool>(u_input.b > -14231i, !var_0.x, false, var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 84033u, 17882u, 4294967295u), vec4<u32>(98874u, 0u, 0u, 1291u)) & firstLeadingBit(~20036u), 7u)]), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 60889u)), vec2<u32>(35788u, 28219u)), 7u)]) * global0[_wgslsmith_index_u32(firstLeadingBit(22468u), 7u)]));
    var var_2 = vec2<bool>(var_0.x, true & var_0.x);
    var_1 = Struct_2(var_1.a, abs(_wgslsmith_add_i32(~(-var_1.b), u_input.a.x)), vec2<f32>(func_2().a.x, _wgslsmith_f_op_f32(trunc(var_1.a.a.x))));
    let var_3 = false;
    var_0 = func_1(var_1.a.b.x);
    var_1 = Struct_2(func_2(), -45584i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec2<f32>(1365f, var_1.c.x)), global0[_wgslsmith_index_u32(1u, 7u)]), vec2<f32>(_wgslsmith_f_op_f32(345f * 1000f), var_1.c.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(9723u, 7u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) - vec2<f32>(var_1.a.c.x, var_1.c.x)))))));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.yzw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-828f, -1615f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) * var_1.a.a.zy) * global0[_wgslsmith_index_u32(~35619u, 7u)])), var_1.b);
}

