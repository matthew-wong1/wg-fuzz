struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = Struct_1(~(global0.a & 0u), var_0.b);
    let var_3 = arg_1;
    var var_4 = 1i;
    return var_2.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = u_input.d.x ^ u_input.b.x;
    global1 = 1i;
    return ~(~1u);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~func_3(_wgslsmith_f_op_f32(-1050f + _wgslsmith_div_f32(174f, 1288f)), Struct_1(_wgslsmith_mod_u32(1u, global0.a), func_2(Struct_1(global0.a, vec3<bool>(global0.b.x, false, true)), global0.b.x, 1i))), global0.b);
    let var_0 = Struct_1(firstTrailingBit(20316u), global0.b);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2295f)))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(852f)), _wgslsmith_f_op_f32(min(-302f, 1000f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1331f, -118f, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f * 587f))))), 493f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) - _wgslsmith_f_op_f32(trunc(-2057f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-713f * 1268f))))));
    let var_3 = countOneBits(var_1.a);
    return Struct_1(firstLeadingBit(global0.a), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1095f)) - _wgslsmith_f_op_f32(f32(-1f) * -542f)));
    global1 = -1i;
    let var_1 = func_1();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-567f - -1880f), any(var_1.b.yx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1167f - -1268f), _wgslsmith_f_op_f32(-684f - 668f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f), 1102f), _wgslsmith_f_op_f32(step(302f, 1229f)), _wgslsmith_div_f32(521f, -137f));
    let var_3 = reverseBits(u_input.d >> (vec4<u32>(~0u, ~75354u, var_1.a, global0.a) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x)))) + var_2.x);
    let var_5 = !(!global0.b.yz);
    let var_6 = (vec3<i32>(~5254i, ~u_input.d.x & 1i, var_3.x) << (~firstLeadingBit(max(vec3<u32>(global0.a, var_1.a, var_1.a), vec3<u32>(global0.a, 1u, global0.a))) % vec3<u32>(32u))) >> (vec3<u32>(u_input.c.x, var_1.a, var_1.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(vec3<u32>(15914u, var_1.a, 13168u) & vec3<u32>(4294967295u, global0.a, 4294967295u), ~vec3<u32>(var_1.a, 4294967295u, var_1.a), global0.b.x) ^ _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(64384u, global0.a, var_1.a), vec3<u32>(var_1.a, 49848u, u_input.c.x)), ~vec3<u32>(0u, var_1.a, u_input.a)), ~select(~vec3<u32>(1u, u_input.a, var_1.a), ~vec3<u32>(77832u, var_1.a, var_1.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -1564f))) + var_2.x)), var_2.ww, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 49207u), vec4<u32>(81549u, u_input.c.x, 29032u, 48780u)), _wgslsmith_add_u32(var_1.a, 4294967295u), ~4294967295u, 1u << (var_1.a % 32u)) ^ vec4<u32>(1325u, abs(var_1.a), global0.a, var_1.a), countOneBits(reverseBits(vec4<u32>(35537u, u_input.c.x, u_input.c.x, 25441u))) >> ((~vec4<u32>(4294967295u, 61553u, u_input.a, 31660u) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.a, 0u, 65543u), vec4<u32>(4294967295u, 1u, 1u, 1u))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(43551u), firstLeadingBit(global0.a), 4294967295u, firstLeadingBit(global0.a)), ~abs(select(vec4<u32>(1u, global0.a, 12124u, 15496u), vec4<u32>(u_input.c.x, 32294u, global0.a, 106393u), vec4<bool>(false, var_5.x, var_1.b.x, global0.b.x)))));
}

