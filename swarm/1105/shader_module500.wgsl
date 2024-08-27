struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = Struct_1(global0.a, global0.b);
    let var_1 = select(global0.b.x, -717i, !(!(!arg_0.x)));
    let var_2 = countOneBits(-firstLeadingBit(vec4<i32>(var_1, 0i, 1i, u_input.a)) >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(11447u, arg_2), arg_2), ~max(u_input.b.x, 1u), ~(u_input.d & arg_2), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 0u, 86094u), vec3<u32>(0u, arg_2, 35409u)), firstLeadingBit(vec3<u32>(1u, u_input.d, arg_2)))) % vec4<u32>(32u)));
    global1 = arg_3;
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), -1000f, -550f), -(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9763i, 16967i), var_2.wx, global0.b), global0.b, vec2<bool>(arg_1.x, false)) | var_0.b));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1132f * -1168f)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = min(~select(global0.b.x, -(~u_input.c), true), abs(global0.b.x));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-119f, arg_1, 102f)))))), -vec2<i32>(global0.b.x, _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(-2147483647i, 0i))));
    let var_3 = !(!var_1.x);
    let var_4 = Struct_1(vec3<f32>(307f, 1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), reverseBits(countOneBits((vec2<i32>(var_0, 4816i) ^ var_2.b) | var_2.b)));
    return vec2<bool>(false, all(var_1.zxz));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(false, true, true, true))), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), vec4<bool>(false, false, false, false), u_input.b.x, false))), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(-509f, 379f)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(93005u, 4294967295u, u_input.d), vec3<u32>(u_input.d, 1u, 35033u)), _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.wy), 4294967295u)), true);
    let var_1 = ~firstTrailingBit(u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 999f, arg_2.x))))), global0.b);
    var var_2 = arg_1;
    var var_3 = (~select(vec4<u32>(8297u, 1u, 0u, u_input.d), ~vec4<u32>(85360u, 4294967295u, var_1, 1u), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, false, var_0.x, false), false)) << (~firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, 21377u, var_1, u_input.b.x))) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.b.x), 1u, ~0u, ~abs(1u)), vec4<u32>(u_input.b.x, 0u, _wgslsmith_add_u32(var_1, u_input.b.x), 1u) ^ u_input.b) % vec4<u32>(32u));
    return vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-arg_0.a.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, global0.a.x)))))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 1098f)), _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 788f, global0.a.x, 278f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)) * _wgslsmith_f_op_vec4_f32(func_2(Struct_1(global0.a, vec2<i32>(global0.b.x, 1i)), global0.a.xy, global0.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -162f, 1364f, 1752f) - vec4<f32>(-144f, -1079f, global0.a.x, 507f)))));
    var var_1 = global0.b;
    global1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, global0.a.x))), -227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) * _wgslsmith_f_op_f32(sign(global0.a.x))))), firstLeadingBit(global0.b));
    global1 = false;
    return all(vec2<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, true)) || true;
    var var_1 = abs(~u_input.b.zy) ^ select(u_input.b.yx, u_input.b.zx, !((global0.a.x >= global0.a.x) | (u_input.e >= 19204i)));
    var var_2 = vec3<bool>(func_1(), false, !all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))));
    let var_3 = true;
    var var_4 = Struct_1(vec3<f32>(-1000f, global0.a.x, global0.a.x), vec2<i32>(global0.b.x ^ -1i, 7622i));
    var_1 = reverseBits(firstLeadingBit(u_input.b.xy));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1036f * global0.a.x), -1446f), _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a.x)))) - _wgslsmith_div_vec3_f32(global0.a, var_4.a)), -countOneBits(vec2<i32>(~(-25217i), firstLeadingBit(-1i))));
    var_1 = u_input.b.xy;
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(547f - 423f)), _wgslsmith_f_op_f32(-1000f * var_4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x))))), (select(var_4.b, var_4.b & vec2<i32>(var_5.b.x, var_4.b.x), !vec2<bool>(var_3, true)) << (u_input.b.zz % vec2<u32>(32u))) << (vec2<u32>(abs(~u_input.d), 58954u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_1.x, var_1.x, u_input.d, 1u));
}

