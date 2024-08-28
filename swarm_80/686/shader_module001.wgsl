struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: array<bool, 23>;

var<private> global2: Struct_1 = Struct_1(-743f);

var<private> global3: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(41295u, 62801u, 24342u), vec3<u32>(78109u, 0u, 5266u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 43002u, 0u), vec3<u32>(1u, 1u, 4377u), vec3<u32>(21747u, 1u, 1u), vec3<u32>(55926u, 21199u, 0u), vec3<u32>(4294967295u, 6172u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(6367u, 1570u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(46215u, 105229u, 38406u), vec3<u32>(4294967295u, 30090u, 19635u), vec3<u32>(59407u, 0u, 1u), vec3<u32>(4294967295u, 47350u, 4294967295u), vec3<u32>(38687u, 34972u, 14675u), vec3<u32>(0u, 15817u, 11778u), vec3<u32>(0u, 15475u, 3701u), vec3<u32>(6621u, 1u, 11066u), vec3<u32>(23004u, 80197u, 0u), vec3<u32>(59801u, 97452u, 4294967295u), vec3<u32>(8949u, 45592u, 18976u), vec3<u32>(37071u, 29522u, 52122u), vec3<u32>(39870u, 17604u, 0u), vec3<u32>(12721u, 0u, 47079u), vec3<u32>(103597u, 7392u, 41291u));

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(350f), Struct_1(1006f), Struct_1(796f), Struct_1(-960f), Struct_1(-1000f), Struct_1(-500f), Struct_1(1000f), Struct_1(-521f), Struct_1(-1168f), Struct_1(208f), Struct_1(134f), Struct_1(689f), Struct_1(-1000f), Struct_1(2879f), Struct_1(-779f), Struct_1(125f), Struct_1(934f), Struct_1(170f), Struct_1(1343f), Struct_1(1000f), Struct_1(681f), Struct_1(-1000f), Struct_1(-910f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 536f), -116f))), 1110f));
    var var_1 = Struct_1(-1440f);
    global2 = global4[_wgslsmith_index_u32((u_input.c.x >> (~max(4294967295u, 1u) % 32u)) >> (43029u % 32u), 23u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -188f))) * -1825f));
    var var_3 = u_input.c.x << (4294967295u % 32u);
    return max(~((u_input.b.xx >> (vec2<u32>(50397u, u_input.b.x) % vec2<u32>(32u))) << (firstLeadingBit(vec2<u32>(45385u, u_input.c.x)) % vec2<u32>(32u))) << (~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.c)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(22044u, u_input.c.x) << (vec2<u32>(2968u, u_input.c.x) % vec2<u32>(32u)), u_input.c << (vec2<u32>(u_input.c.x, 22463u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.b.xz, vec2<u32>(4773u, 74388u)), vec2<u32>(0u, 0u))), ~u_input.c));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 536f, 234f, 273f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -970f, 413f, 648f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, -282f, -912f, global2.a), vec4<f32>(-1286f, 574f, global2.a, 107f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -747f, global2.a, global2.a))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, global2.a, global2.a, -1581f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1676f, global2.a, arg_0.a) * vec4<f32>(-1040f, -1000f, global2.a, 360f)), vec4<f32>(-1000f, global2.a, global2.a, global2.a), false & global1[_wgslsmith_index_u32(u_input.b.x, 23u)])))));
    global1 = array<bool, 23>();
    var var_1 = global4[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 23u)];
    global2 = arg_0;
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec2<bool>(true | (arg_1 >= ~(~46002u)), all(global0[_wgslsmith_index_u32(~(~min(63323u, 68022u)), 23u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.a));
    var var_2 = ~(-37226i);
    var var_3 = vec2<u32>(reverseBits(~(~u_input.c.x)), firstTrailingBit(arg_1));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.a, var_1.a, -586f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1099f, arg_3.a, global2.a, 1000f), vec4<f32>(var_1.a, -1000f, -191f, arg_0))))), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-arg_0), -817f, _wgslsmith_f_op_f32(523f + 2017f))))));
    return vec4<bool>(var_0.x, var_0.x, !(global1[_wgslsmith_index_u32(var_3.x, 23u)] || (countOneBits(arg_1) == (u_input.b.x | 40114u))), any(!var_0) & (!(!global1[_wgslsmith_index_u32(0u, 23u)]) & (false & !global1[_wgslsmith_index_u32(u_input.b.x, 23u)])));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = func_4(-1525f, abs(u_input.c.x >> (func_3(global4[_wgslsmith_index_u32(0u, 23u)]) % 32u)) << (1u % 32u), -vec3<i32>(u_input.a.x, -10147i, 48601i), global4[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec2_u32(u_input.b.yy, select(vec2<u32>(0u, u_input.c.x), ~u_input.b.yy, select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), vec2<bool>(true, true)))), 23u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -1512f) + 1050f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -130f), global2.a, all(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], var_0.x, false)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(f32(-1f) * -337f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - -1708f))));
    let var_3 = false;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f))), _wgslsmith_f_op_vec2_f32(-arg_0.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 23>();
    let var_0 = vec3<f32>(-1072f, 750f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1241f, -521f)))));
    var var_1 = ~select(vec2<u32>(1u, ~u_input.c.x), func_1(), global1[_wgslsmith_index_u32(~4294967295u, 23u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -790f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), -426f), 1769f)));
    let x = u_input.a;
    s_output = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-805f))), -150f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f))))), true, var_2);
}

