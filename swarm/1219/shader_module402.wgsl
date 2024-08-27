struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(64874u, vec2<bool>(false, true)), Struct_2(4294967295u, vec2<bool>(false, true)), Struct_2(1u, vec2<bool>(true, false)), Struct_2(1u, vec2<bool>(false, true)), Struct_2(71135u, vec2<bool>(false, true)));

var<private> global1: array<vec4<u32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 5>();
    global1 = array<vec4<u32>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(abs(-333f)), _wgslsmith_div_f32(-2656f, 470f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-364f, _wgslsmith_f_op_f32(step(999f, -1482f)), -234f) - vec3<f32>(-480f, -410f, -1000f)))));
    var var_1 = vec4<bool>(all(vec3<bool>(any(vec4<bool>(false, arg_3.b.x, false, arg_3.b.x)), false, true)) & all(select(select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, false), arg_3.b.x), vec3<bool>(true, arg_3.b.x, arg_0.b.x), !vec3<bool>(arg_3.b.x, true, false))), all(vec3<bool>(false, false, true)), true, false);
    let var_2 = u_input.a;
    return min(arg_2, arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2521f, -469f, -111f, -340f), vec4<f32>(-192f, -106f, 907f, 771f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, -771f, 198f, 1693f)) - vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 757f, -1561f, 1267f) + vec4<f32>(-1644f, 110f, -608f, -430f)) * vec4<f32>(2115f, -275f, 1952f, 355f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-806f, -1000f, 1000f, 486f), vec4<f32>(223f, 1329f, -917f, 876f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(281f, 328f, 411f, 1712f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, 239f, -490f, -1759f)), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(513f, 741f, -207f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, 930f, -343f, 279f)))))), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), vec4<bool>(true, !arg_0.b.x, true, false), !select(vec4<bool>(arg_0.b.x, true, true, true), vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), arg_0.b.x))));
    global1 = array<vec4<u32>, 6>();
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, 242f, 961f, 1000f), vec4<f32>(var_1.x, var_1.x, 692f, -253f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, 696f, 267f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, var_1.x, -953f, var_1.x)))))))));
    global0 = array<Struct_2, 5>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -526f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -1748f)), -941f)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(reverseBits(32205u), select(vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(false, false, true)), false), false));
    var var_1 = Struct_2(~10881u, vec2<bool>(all(vec4<bool>(select(var_0.b.x, true, false), any(vec2<bool>(var_0.b.x, true)), true, all(vec3<bool>(var_0.b.x, true, var_0.b.x)))), true));
    let var_2 = Struct_1(~var_1.a, vec2<bool>(!(0i <= firstTrailingBit(u_input.a)), var_0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2189f, -640f, -1281f, 2299f), vec4<f32>(-339f, -1195f, 782f, 172f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1552f, -403f, -1167f, 584f) - vec4<f32>(-815f, 1002f, 1000f, 475f))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(4294967295u, vec2<bool>(false, var_1.b.x)), vec2<i32>(2147483647i, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1285f, 1107f, 913f, -1027f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1486f, 882f, 935f, -169f), vec4<f32>(-287f, 718f, 678f, -347f), vec4<bool>(var_0.b.x, false, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(436f, -294f, 1000f, 528f), vec4<f32>(2114f, -535f, -1086f, -1026f), var_0.b.x)))))), 1i, !(!var_0.b.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2.c);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))))) - var_2.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1660f)) + _wgslsmith_f_op_f32(f32(-1f) * -409f))) - 113f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-(~max(vec4<i32>(2676i, -1i, -43248i, u_input.b.x), vec4<i32>(2147483647i, u_input.a, u_input.b.x, -8162i))) ^ countOneBits(vec4<i32>(u_input.b.x, u_input.a, u_input.a | 0i, u_input.a))) >> (firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(func_1(global0[_wgslsmith_index_u32(1u, 5u)], vec2<u32>(1u, 1u), 1u, global0[_wgslsmith_index_u32(1u, 5u)]), 36540u), 1u), 6u)]) % vec4<u32>(32u));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(-1039f, _wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(-861f + _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-801f + 1095f), _wgslsmith_f_op_f32(f32(-1f) * -1006f))) + _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(reverseBits(countOneBits(1225u)), 5u)], u_input.b))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(1u, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), firstLeadingBit(firstTrailingBit(vec2<i32>(-55936i, 9986i))))));
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(16655u, 65801u)), abs(func_1(Struct_2(11765u, vec2<bool>(true, false)), ~vec2<u32>(73613u, 4294967295u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(53688u, 6u)]), Struct_2(19997u, vec2<bool>(true, false))))), !(!vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 5u)], abs(vec2<i32>(var_0.x, -2147483647i) & var_0.zx))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 519f), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(821f - -444f), _wgslsmith_f_op_f32(var_1.x - var_1.x)), vec4<f32>(_wgslsmith_div_f32(var_1.x, 146f), 231f, -1000f, _wgslsmith_f_op_f32(-var_1.x)))), -u_input.b.x >> (abs(select(115879u, 38366u, true) | ~4294967295u) % 32u), true);
    var var_3 = _wgslsmith_f_op_f32(var_1.x - var_1.x);
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-330f))), 110f), var_2.c.x, _wgslsmith_div_f32(445f, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -298f)) + _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.x + var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<i32>(var_0.x, -1i), u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -44106i, -var_2.d) << (~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(var_2.a, 6u)], vec4<u32>(var_2.a, 55527u, var_2.a, 0u), vec4<u32>(6569u, var_2.a, 24720u, var_2.a)) % vec4<u32>(32u)), reverseBits(~(vec4<i32>(-25264i, var_2.d, 1i, -3956i) & vec4<i32>(2147483647i, u_input.a, u_input.b.x, 1i)))), ~22878i, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 739f)) - _wgslsmith_f_op_f32(round(var_2.c.x))), -1099f), 1206f), var_2.d);
}

