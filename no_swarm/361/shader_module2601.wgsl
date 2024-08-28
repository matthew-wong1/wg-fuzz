struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<u32>, 1>;

var<private> global2: array<u32, 32>;

var<private> global3: array<vec3<i32>, 21>;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<i32>(~firstTrailingBit(_wgslsmith_sub_i32(47371i, arg_0 & 2147483647i)), -2147483647i);
    global2 = array<u32, 32>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(floor(715f)), -726f, arg_1.b.x);
    global2 = array<u32, 32>();
    let var_2 = Struct_2(~(~vec4<u32>(arg_1.c & global2[_wgslsmith_index_u32(arg_1.c, 32u)], ~global0.x, ~global2[_wgslsmith_index_u32(1u, 32u)], ~1u)), countOneBits(global2[_wgslsmith_index_u32(select(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global2[_wgslsmith_index_u32(1u, 32u)]), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 1u)])), ~(~4294967295u), true), 32u)]));
    return _wgslsmith_sub_u32(global0.x, 4294967295u);
}

fn func_2() -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(abs(func_3(-(~(~1691i)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, 1529f, -1167f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-895f, -795f, 1595f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1202f, 558f, 278f), vec3<f32>(328f, -169f, 1637f)))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(756f, 463f, 845f, -1545f) * vec4<f32>(1148f, 1506f, 2095f, 1000f)))))), 16u)];
    let var_1 = Struct_2(var_0.a, ~(~(~global2[_wgslsmith_index_u32(1u, 32u)])));
    var var_2 = reverseBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x & 2147483647i, -u_input.a.x, -16218i ^ u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zzw, global3[_wgslsmith_index_u32(global0.x, 21u)]))), firstTrailingBit(vec4<i32>(~55460i, _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(22492i, 42358i)), -37578i, _wgslsmith_sub_i32(u_input.a.x, -1i)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1211f * -727f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(-845f, 1049f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(695f - -1623f), _wgslsmith_f_op_f32(2743f - 1000f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-149f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f - -804f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f + -1196f))))), func_3(u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -361f) * vec3<f32>(297f, 1917f, 1207f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-436f, -185f, -208f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(585f, 324f, 1000f))), ~func_3(72363i, Struct_1(vec3<f32>(572f, -1007f, -1093f), vec3<f32>(-1328f, 1214f, 1000f), 1u, vec4<f32>(-1025f, 581f, -845f, 137f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1181f, -1546f, 1000f, -1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-598f)) - -1000f) - -1197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(910f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(909f + -1058f), _wgslsmith_div_f32(296f, -889f), false)), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -481f)));
    global4 = array<Struct_2, 16>();
    return vec4<bool>(true, false, all(vec3<bool>(true, false, !all(vec3<bool>(true, false, true)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = arg_0;
    global3 = array<vec3<i32>, 21>();
    var var_1 = !arg_1;
    var var_2 = arg_0;
    global0 = vec3<u32>(0u >> (((~global0.x >> (4294967295u % 32u)) ^ reverseBits(global0.x)) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.xy, vec2<u32>(arg_0.c, 1u) | vec2<u32>(arg_0.c, var_0.c)), firstLeadingBit(vec2<u32>(global0.x ^ global0.x, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(global0.xx & vec2<u32>(var_2.c, var_0.c)), global0.zz), ~(~arg_0.c & 0u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, 159f, -165f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1693f, 296f, 655f)))) + vec3<f32>(var_2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x - -227f), _wgslsmith_f_op_f32(-767f + 756f)), 189f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(~9455u, 1u)], global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 138332u), 1u)]);
    let var_0 = firstLeadingBit(u_input.a.yw);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1201f, -2373f, 1992f) + vec3<f32>(923f, 964f, -1004f)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(840f, -105f, -744f), vec3<f32>(-1106f, 372f, -572f), 29125u, vec4<f32>(-404f, 799f, -626f, 1000f)), func_2())), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, -1000f, -712f) * vec3<f32>(-1000f, 877f, 238f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(466f, -1000f, 1464f), vec3<f32>(-626f, 579f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, -1654f, -1464f)))))), 0u >> (func_3(i32(-1i) * -u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(849f, 1039f, -420f) + vec3<f32>(-1000f, 545f, -768f)), vec3<f32>(-237f, -1161f, 391f), 60532u, _wgslsmith_f_op_vec4_f32(vec4<f32>(1553f, 1641f, -1196f, -1282f) - vec4<f32>(-422f, -1429f, -219f, -800f)))) % 32u), vec4<f32>(227f, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, 933f, -1798f) * vec3<f32>(1082f, -945f, 317f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, -1586f, -1254f)), global0.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], _wgslsmith_div_vec4_f32(vec4<f32>(-196f, 1000f, -844f, -961f), vec4<f32>(508f, -240f, 1181f, 417f))), func_2())).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1493f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1162f * -1882f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-930f, 1053f)))));
    global2 = array<u32, 32>();
    global1 = array<vec3<u32>, 1>();
    return Struct_1(var_1.a, var_1.a, ~_wgslsmith_div_u32(global0.x, countOneBits(_wgslsmith_add_u32(0u, 35856u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + 922f) - _wgslsmith_f_op_f32(floor(-174f))), -476f), var_1.a.x, _wgslsmith_f_op_f32(var_1.d.x + var_1.d.x), var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    let var_1 = func_1(u_input.a.x | (i32(-1i) * -1i));
    global2 = array<u32, 32>();
    let var_2 = var_1;
    global2 = array<u32, 32>();
    var var_3 = global4[_wgslsmith_index_u32(var_1.c, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -627f, -1024f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(max(1095f, var_1.b.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1089f, _wgslsmith_f_op_f32(step(1135f, var_2.d.x)), _wgslsmith_f_op_f32(1057f + -311f), _wgslsmith_f_op_f32(var_2.b.x - var_1.b.x)), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(trunc(var_2.d.x)), var_1.b.x)))), 466f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(810f + _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_vec3_f32(func_4(var_1, vec4<bool>(true, true, true, true))).x)), var_1.c ^ countOneBits(_wgslsmith_add_u32(~0u, var_1.c)), u_input.a.x);
}

