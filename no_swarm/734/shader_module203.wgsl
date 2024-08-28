struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = abs(arg_1);
    global0 = array<i32, 17>();
    return _wgslsmith_f_op_f32(trunc(-125f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_0.b.x;
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(func_3(true, -u_input.d.xx ^ (u_input.d.xz | u_input.d.xx), arg_0.a.yz)));
    return _wgslsmith_f_op_f32(min(arg_0.b.x, 1000f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global0 = array<i32, 17>();
    var var_1 = select(var_0.a.zz, select(var_0.a.xx, select(select(var_0.a.zw, vec2<bool>(var_0.a.x, var_0.a.x), all(vec3<bool>(false, var_0.a.x, true))), var_0.a.zz, vec2<bool>(!arg_2.a.x, !var_0.a.x)), !any(!vec4<bool>(true, arg_2.a.x, true, true))), select(arg_0.a.x, true, true));
    global0 = array<i32, 17>();
    var var_2 = var_0.b;
    return var_0;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2195f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(366f - -244f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-506f, -263f), 1f)))));
    var var_1 = func_4(Struct_1(vec4<bool>(true, true, !all(vec4<bool>(true, true, false, false)), true), vec4<f32>(_wgslsmith_f_op_f32(ceil(2106f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(979f, 484f, -1688f, 491f)), vec2<i32>(u_input.d.x, -38389i), false, vec3<bool>(true, false, false))))), 308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1453f) - _wgslsmith_f_op_f32(-463f + -1000f)))), select(firstTrailingBit(~vec4<u32>(arg_0, arg_0, 24514u, arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0, arg_0), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(10647u, 17072u), u_input.a), ~0u), ~countOneBits(vec4<u32>(u_input.c, 79465u, arg_0, arg_0))), false), Struct_1(select(vec4<bool>(false, true, true, arg_0 < u_input.c), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, any(vec3<bool>(false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_f_op_f32(select(-646f, -337f, arg_0 >= u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f + 306f)), 101f)));
    let var_2 = select(select(var_1.a.yyx, !vec3<bool>(var_1.a.x || true, var_1.a.x, var_1.a.x), false), func_4(Struct_1(vec4<bool>(false, true, select(false, false, var_1.a.x), var_1.a.x), var_1.b), vec4<u32>(~(arg_0 | arg_0), u_input.c, min(~6393u, arg_0), 1u), func_4(func_4(func_4(Struct_1(var_1.a, vec4<f32>(-962f, 1200f, -303f, var_1.b.x)), vec4<u32>(arg_0, 23517u, 20076u, arg_0), Struct_1(vec4<bool>(true, var_1.a.x, true, var_1.a.x), vec4<f32>(var_1.b.x, var_1.b.x, -907f, 139f))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 15203u, 47715u), vec4<u32>(1u, arg_0, 21854u, 24106u)), Struct_1(var_1.a, vec4<f32>(-1416f, var_1.b.x, 1619f, 1040f))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(30591u, 38928u, arg_0, 1u), vec4<u32>(1u, arg_0, arg_0, u_input.a.x))), func_4(func_4(Struct_1(var_1.a, var_1.b), vec4<u32>(u_input.c, u_input.c, 90095u, 32316u), Struct_1(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(var_1.b.x, -1139f, var_1.b.x, var_1.b.x))), vec4<u32>(u_input.a.x, arg_0, 46717u, arg_0) | vec4<u32>(arg_0, 10610u, 83168u, arg_0), Struct_1(vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<f32>(-489f, 2084f, -225f, -379f))))).a.xxy, vec3<bool>(!(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 17u)] < 2147483647i), any(var_1.a.zy), true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1334f)))), var_1.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, false, true, var_2.x), vec4<f32>(var_1.b.x, var_1.b.x, -1000f, 2257f)), u_input.d.xx, var_2.x, vec3<bool>(var_2.x, false, true))), _wgslsmith_f_op_f32(-var_1.b.x))) + _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.b.x))))) - _wgslsmith_f_op_f32(exp2(var_1.b.x)));
    let var_4 = _wgslsmith_dot_vec4_i32(u_input.d, u_input.d);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, 274f)) * var_1.b.x)), vec4<u32>(arg_0, arg_0, 0u, _wgslsmith_dot_vec2_u32(~u_input.a, min(u_input.a, ~vec2<u32>(15455u, arg_0)))), _wgslsmith_f_op_vec4_f32(-func_4(Struct_1(var_1.a, var_1.b), ~vec4<u32>(15440u, u_input.c, u_input.c, u_input.a.x), Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(floor(var_1.b)))).b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, select(83552u, u_input.c, var_2.x)), ~countOneBits(u_input.a)) << (vec2<u32>(~(arg_0 << (9953u % 32u)), arg_0 | _wgslsmith_div_u32(u_input.c, 1u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_0 = 40310u;
    let var_1 = u_input.d.xz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, 401f, 337f, -1565f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-806f)), -257f, -517f, _wgslsmith_f_op_f32(round(-277f)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(410f * 639f), -2043f, _wgslsmith_f_op_f32(1750f + 1514f))))));
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = func_1(1u);
}

