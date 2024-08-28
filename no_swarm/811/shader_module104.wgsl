struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32> = vec3<i32>(-10056i, -5104i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~global0.a.c;
    let var_1 = all(vec4<bool>(global0.a.d.x, any(select(select(global0.a.d, vec3<bool>(global0.a.a, false, global0.a.d.x), global0.a.d), !global0.b.d, true)), true, false));
    global0 = Struct_2(global0.a, Struct_1(select(true, global0.a.d.x, !(!var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b.x, global0.a.b.x, global0.b.b.x, global0.a.b.x) + vec4<f32>(519f, -1051f, global0.b.b.x, 1158f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, global0.b.b.x, -131f, -1397f)), _wgslsmith_f_op_vec4_f32(global0.a.b - global0.a.b)))), (global0.a.c & 32973u) & ~var_0, !(!vec3<bool>(var_1, global0.a.a, false))));
    var var_2 = Struct_2(global0.a, global0.a);
    let var_3 = var_1;
    return global0.a.b.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.b.x)) * _wgslsmith_f_op_f32(func_3())), global0.a.b.x, _wgslsmith_f_op_f32(step(global0.a.b.x, 1000f)), -1311f);
    var var_1 = Struct_1(u_input.c.x != 0u, global0.a.b, min(global0.a.c, _wgslsmith_div_u32(abs(4294967295u), max(1u, abs(38312u)))), global0.a.d);
    let var_2 = countOneBits(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(~4294967295u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-global0.a.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -567f)))), global0.a.b.x, var_1.b.x)));
    return -1331f;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = firstLeadingBit(29461i);
    var var_1 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.x), global0.a.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(937f * arg_0.a.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b.b.x, 616f)))) + vec4<f32>(352f, global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b.x) * arg_0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -183f))), global0.a.c, vec3<bool>(false, any(global0.a.d), false));
    var_0 = -1i;
    var var_2 = vec2<f32>(-745f, _wgslsmith_f_op_f32(func_2(-1i, global0.b.d.x)));
    var var_3 = arg_0;
    return firstTrailingBit(17761i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(-(~vec3<i32>(~(-2147483647i), -64895i & global1.x, global1.x)), vec3<i32>(u_input.d.x, 36275i, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(20603i, -37988i), 25166i, func_1(Struct_2(Struct_1(global0.b.d.x, global0.a.b, 24688u, global0.b.d), global0.a)))), select(select(!vec3<bool>(false, false, global0.b.a), global0.a.d, global0.b.d), global0.b.d, vec3<bool>(true, any(!vec3<bool>(true, true, global0.a.a)), global0.a.a)));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.b.xw), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(734f, global0.a.b.x))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.b.x, 373f))))) + vec2<f32>(_wgslsmith_f_op_f32(global0.a.b.x - _wgslsmith_f_op_f32(exp2(global0.b.b.x))), 154f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-2000f, _wgslsmith_f_op_f32(-global0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b.x) * global0.b.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(global0.a.b.ww, global0.a.b.zy))))))));
    let var_1 = global0.a;
    global0 = Struct_2(global0.a, global0.a);
    var var_2 = var_1.d;
    let var_3 = global0.a.c << (u_input.a.x % 32u);
    var var_4 = all(select(select(select(global0.b.d.zx, vec2<bool>(global0.b.a, var_2.x), var_2.x), select(select(var_1.d.xy, global0.b.d.yy, var_1.d.x), global0.a.d.xy, all(var_2.zx)), vec2<bool>(!var_1.d.x, all(global0.b.d.zx))), select(!select(vec2<bool>(var_1.d.x, false), vec2<bool>(true, false), var_1.a), global0.a.d.xy, var_0.x <= _wgslsmith_f_op_f32(select(160f, -406f, global0.a.d.x))), u_input.d.x == -1i));
    let x = u_input.a;
    s_output = StorageBuffer(-129f);
}

