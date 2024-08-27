struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(false, false, true), 28103i), Struct_1(vec3<bool>(true, true, false), 0i), Struct_1(vec3<bool>(true, true, false), 16359i), Struct_1(vec3<bool>(true, true, false), -23583i), Struct_1(vec3<bool>(false, false, false), 0i), Struct_1(vec3<bool>(false, false, true), -1i), Struct_1(vec3<bool>(true, true, true), 1494i), Struct_1(vec3<bool>(true, false, false), 1i), Struct_1(vec3<bool>(true, true, true), 2147483647i), Struct_1(vec3<bool>(false, true, false), -2504i), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(true, true, false), 2147483647i), Struct_1(vec3<bool>(false, false, true), -13365i), Struct_1(vec3<bool>(false, true, true), 40758i), Struct_1(vec3<bool>(true, true, false), 17785i), Struct_1(vec3<bool>(true, false, false), -2930i), Struct_1(vec3<bool>(true, true, true), 10752i), Struct_1(vec3<bool>(true, false, true), 13914i), Struct_1(vec3<bool>(false, false, false), 27810i), Struct_1(vec3<bool>(true, false, false), 0i), Struct_1(vec3<bool>(true, false, false), 0i), Struct_1(vec3<bool>(false, true, true), 0i), Struct_1(vec3<bool>(true, false, true), 1i), Struct_1(vec3<bool>(true, true, false), -1i), Struct_1(vec3<bool>(true, true, false), i32(-2147483648)), Struct_1(vec3<bool>(false, false, false), 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1294f, 867f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1113f, -1815f), vec2<f32>(1000f, -1000f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1162f, 327f), vec2<f32>(1446f, 489f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(775f, 161f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(771f)), _wgslsmith_f_op_f32(f32(-1f) * -689f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, _wgslsmith_f_op_f32(949f * var_0.x)))) * vec2<f32>(var_0.x, -2131f));
    var var_1 = global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mod_u32(~1u, 65035u))), 23u)];
    var var_2 = Struct_1(!select(!vec3<bool>(var_1.a.x, var_1.a.x, global1.a.x), global1.a, any(select(vec2<bool>(false, false), vec2<bool>(var_1.a.x, global1.a.x), var_1.a.x))), global1.b);
    return ~(~var_2.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    global1 = Struct_1(arg_3.a, ~(arg_0.b & countOneBits(18541i)));
    let var_0 = 1532f;
    let var_1 = Struct_1(arg_0.a, -1i);
    let var_2 = true;
    var var_3 = arg_2.x;
    return reverseBits(countOneBits(arg_3.b & u_input.a));
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_i32(global1.b, func_4(Struct_1(vec3<bool>(true, global1.a.x, false), countOneBits(~u_input.a)), -273f, vec3<u32>(1u, 1u, 1u), Struct_1(global1.a, func_3())), _wgslsmith_div_i32(2387i, i32(-1i) * -73080i));
    global1 = global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~40708u, _wgslsmith_mult_u32(countOneBits(4294967295u), 58681u), ~(~74766u)) | 0u), 26u)];
    let var_1 = Struct_1(!vec3<bool>(-13710i > -u_input.b.x, true, true || global1.a.x), -2147483647i);
    let var_2 = ~(vec4<u32>(1u, ~61208u, ~0u ^ _wgslsmith_clamp_u32(4294967295u, 4294967295u, 16232u), ~(~48298u)) >> (~vec4<u32>(~4294967295u, 4294967295u, 17732u, _wgslsmith_clamp_u32(0u, 3377u, 50987u)) % vec4<u32>(32u)));
    global2 = array<Struct_1, 26>();
    return vec3<bool>(global1.a.x, true, any(!vec2<bool>(global1.a.x, var_1.a.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = select(!select(select(arg_0, select(global1.a.yx, global1.a.xy, false), true), select(!global1.a.xy, global1.a.xx, !arg_0.x), arg_0), global1.a.xz, any(global1.a.zz));
    var var_1 = !(!vec4<bool>(global1.b > u_input.a, any(func_2()), true, all(!vec3<bool>(true, arg_0.x, true))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f * 1136f)))))));
    var_1 = !select(!vec4<bool>(var_0.x, arg_0.x, any(vec3<bool>(arg_0.x, var_1.x, var_1.x)), var_0.x | arg_0.x), select(!(!vec4<bool>(false, var_0.x, global1.a.x, false)), vec4<bool>(true, var_2 != 563f, true, var_1.x & global1.a.x), arg_0.x), true);
    var var_3 = Struct_1(select(func_2(), select(!var_1.xzz, !func_2(), all(select(var_1.zzx, global1.a, vec3<bool>(arg_0.x, true, var_0.x)))), !select(!global1.a, !global1.a, global1.a)), _wgslsmith_mod_i32(max(-u_input.a ^ -29534i, 29243i), -2147483647i));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, 393f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, arg_1))))) + vec2<f32>(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-arg_1)), var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -319f);
    var var_1 = Struct_1(!select(global1.a, !vec3<bool>(global1.a.x, global1.a.x, true), select(!vec3<bool>(global1.a.x, false, global1.a.x), !global1.a, select(global1.a, vec3<bool>(global1.a.x, true, global1.a.x), global1.a.x))), -20242i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1908f)) + var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(!vec2<bool>(false, global1.a.x), -1974f, _wgslsmith_f_op_f32(var_0 * var_0))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-2829f)), _wgslsmith_f_op_f32(f32(-1f) * -1445f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) * vec2<f32>(162f, _wgslsmith_f_op_f32(-var_0)))));
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)];
    var_1 = Struct_1(vec3<bool>(true, true, global1.a.x), _wgslsmith_mod_i32(global1.b, ~var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-190f)) * -741f))))), -7775i, -1736f, ~vec4<u32>(min(_wgslsmith_add_u32(18153u, 28559u), max(0u, 0u)), 4294967295u, 0u, abs(countOneBits(1u))));
}

