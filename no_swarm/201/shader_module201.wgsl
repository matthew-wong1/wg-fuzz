struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    let var_0 = select(!select(arg_0.zx, select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zy, arg_0.zx), true || arg_0.x), select(vec2<bool>(!(arg_2.x != -1000f), true), select(vec2<bool>(any(vec4<bool>(arg_0.x, true, false, arg_0.x)), true), arg_0.xx, !vec2<bool>(false, arg_0.x)), true), vec2<bool>(false, all(!(!arg_0.zy))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(493f, arg_2.x, 929f, arg_2.x))) - arg_2) - arg_2) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1068f, -178f, 472f)))))))));
    let var_2 = Struct_1(u_input.a.x <= firstTrailingBit(select(reverseBits(arg_1), max(u_input.a.x, arg_1), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1014f))) - var_1.x) + var_1.x), arg_0.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(269f, -557f))), ~(~_wgslsmith_div_u32(11126u, 34156u)));
    var var_3 = reverseBits(max(global0[_wgslsmith_index_u32(34610u, 17u)], select(countOneBits(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, var_2.e, 1u))), vec4<u32>(u_input.b.x, countOneBits(u_input.b.x), u_input.b.x, 42719u >> (u_input.b.x % 32u)), select(vec4<bool>(true, true, arg_0.x, false), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(arg_0.x, var_2.a, true, false)))));
    global0 = array<vec4<u32>, 17>();
    return _wgslsmith_mult_u32(48830u, ~(~50994u));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.d;
    let var_1 = 47910i;
    let var_2 = u_input.a.x;
    var var_3 = max(~global0[_wgslsmith_index_u32(~0u, 17u)] & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e, arg_0.e, 4294967295u, u_input.b.x), global0[_wgslsmith_index_u32(~u_input.b.x, 17u)]), _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec4<u32>(1u, arg_0.e, arg_0.e, u_input.b.x) ^ global0[_wgslsmith_index_u32(4294967295u, 17u)]), 1u, arg_0.e), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x & 4294967295u, 0u), 17u)] ^ ~max(vec4<u32>(u_input.b.x, 13778u, u_input.b.x, 1u), ~global0[_wgslsmith_index_u32(u_input.b.x, 17u)]));
    global0 = array<vec4<u32>, 17>();
    return Struct_2(vec3<bool>(!any(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.c, false, false), arg_0.a)), true, true), Struct_1(all(select(vec2<bool>(arg_0.c, false), !vec2<bool>(arg_0.c, false), !arg_0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(754f, arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-277f - arg_0.b) + _wgslsmith_f_op_f32(ceil(arg_0.b))))), arg_0.a & arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), func_3(vec3<bool>(true, all(vec2<bool>(false, arg_0.c)), arg_0.a), var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, -1000f, 1133f, -225f), vec4<f32>(-848f, 886f, arg_0.d, 1088f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, arg_0.d, -254f, 396f))))), Struct_1(true, arg_0.d, true, -194f, _wgslsmith_mult_u32(~(~1u), var_3.x)), Struct_1(!(!arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -640f), arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), true, _wgslsmith_f_op_f32(-980f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(-arg_0.b)))), var_3.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = func_2(arg_0.d);
    return var_1.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = firstLeadingBit(~(-(~u_input.a)));
    let var_1 = func_2(arg_1);
    var_0 = u_input.a;
    global1 = !(!(u_input.a.x < var_0.x));
    let var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(447f + var_1.c.b), -1054f, _wgslsmith_div_f32(arg_1.b, var_2.d.d), _wgslsmith_f_op_f32(452f - 334f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(857f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-842f, 956f, false)), var_2.c.b), var_2.c.d, var_1.d.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.d * -333f))), 408f, var_2.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) - -1000f) - _wgslsmith_f_op_f32(-126f - arg_1.b))), true));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<vec4<u32>, 17>();
    var var_0 = -12335i << (1u % 32u);
    var var_1 = func_2(func_2(arg_2.b).d);
    let var_2 = Struct_2(vec3<bool>(arg_1.a.x, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_1.b.d, true)), _wgslsmith_f_op_f32(2711f + 1519f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-732f, 1405f)))), Struct_1(arg_1.c.a, 1143f, false, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1212f))), ~max(reverseBits(1u), 1u)), var_1.c, var_1.b);
    var var_3 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)) != _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 0i) & vec4<i32>(-188i, -1i, -48447i, u_input.a.x), func_1(arg_1, vec4<bool>(var_2.a.x, arg_1.c.c, false, arg_2.d.a), var_2.c.e, Struct_2(arg_1.a, arg_2.d, var_1.d, Struct_1(true, arg_2.d.b, true, var_1.c.b, arg_1.b.e))))).x, arg_2.c.c);
    return u_input.b.wwy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(~min(~u_input.b.yzy, countOneBits(u_input.b.wxy)));
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = ~(~func_5(_wgslsmith_f_op_vec4_f32(func_4(u_input.a, func_1(Struct_2(vec3<bool>(false, var_1.x, true), Struct_1(true, -363f, var_1.x, 2215f, 26947u), Struct_1(var_1.x, 646f, var_1.x, -813f, var_0.x), Struct_1(var_1.x, 1979f, var_1.x, -1297f, 74830u)), vec4<bool>(var_1.x, false, var_1.x, var_1.x), 34309u, Struct_2(vec3<bool>(var_1.x, false, false), Struct_1(true, 1143f, var_1.x, -794f, var_0.x), Struct_1(false, -119f, true, 972f, u_input.b.x), Struct_1(false, -165f, false, 1537f, var_0.x))))), Struct_2(vec3<bool>(true, true, true), func_2(Struct_1(false, 883f, false, -1312f, var_0.x)).b, Struct_1(true, -458f, true, 362f, 0u), Struct_1(var_1.x, 661f, true, 337f, var_0.x)), Struct_2(select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, true)), Struct_1(var_1.x, 730f, false, -195f, var_0.x), func_1(Struct_2(vec3<bool>(false, false, false), Struct_1(var_1.x, -146f, var_1.x, -483f, u_input.b.x), Struct_1(true, -312f, var_1.x, 109f, u_input.b.x), Struct_1(var_1.x, 1088f, var_1.x, -1693f, var_0.x)), vec4<bool>(var_1.x, false, false, false), 6113u, Struct_2(vec3<bool>(false, var_1.x, var_1.x), Struct_1(true, -208f, true, -606f, 4029u), Struct_1(var_1.x, 1065f, true, 421f, 0u), Struct_1(false, -1640f, var_1.x, 119f, var_0.x))), Struct_1(var_1.x, 918f, true, -1811f, 46429u))));
    let var_3 = vec2<i32>(-1i, firstLeadingBit(u_input.a.x));
    var var_4 = 1u ^ var_2.x;
    let var_5 = u_input.a;
    var var_6 = vec3<u32>(~u_input.b.x, ~u_input.b.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1068f, -1117f)), 0u);
}

