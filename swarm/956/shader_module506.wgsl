struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_f_op_f32(1529f + 1189f), _wgslsmith_f_op_f32(651f - 100f), _wgslsmith_f_op_f32(500f * 620f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, 2426f, 1080f, -520f)) * vec4<f32>(329f, -1424f, -1272f, -1167f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-436f, -669f, 973f, 745f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, -1000f, 3284f, -620f)))), (2147483647i >> (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u)) <= u_input.a.x)));
    var var_1 = Struct_1(u_input.b, var_0, vec3<u32>(min(u_input.b.x & u_input.b.x, select(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 2u)])) >> (u_input.b.x % 32u), 0u, firstTrailingBit(abs(10026u))), !(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))));
    var var_2 = Struct_3(var_1.a.yx, firstTrailingBit(~vec4<u32>(_wgslsmith_sub_u32(14993u, var_1.c.x), var_1.a.x, 4294967295u, ~85182u)));
    var_2 = Struct_3(~select(vec2<u32>(~u_input.b.x, u_input.b.x), abs(vec2<u32>(var_2.a.x, 0u)), var_1.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_2.a.x, var_2.a.x, ~var_1.c.x, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_2.b.x, 0u, 0u), ~var_2.b, _wgslsmith_div_vec4_u32(var_2.b, vec4<u32>(u_input.b.x, var_2.b.x, var_1.a.x, var_1.a.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, 50043u, 28655u, u_input.b.x), vec4<u32>(2288u, 13492u, u_input.b.x, 56351u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(2913u, u_input.b.x, u_input.b.x, var_1.c.x), vec4<u32>(30782u, 7968u, 0u, 1u), var_2.b), vec4<u32>(~11373u, var_2.a.x, var_2.a.x, 17748u))));
    let var_3 = select(select(select(!select(var_1.d, vec3<bool>(true, true, true), var_1.d), vec3<bool>(!var_1.d.x, false, !var_1.d.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], true, var_1.d.x)), var_1.d, select(var_1.d, !select(var_1.d, var_1.d, true), var_1.d)), select(vec3<bool>(!all(var_1.d), var_1.d.x, all(select(var_1.d.xz, var_1.d.zz, var_1.d.xy))), var_1.d, _wgslsmith_dot_vec2_i32(u_input.a.ww, abs(vec2<i32>(u_input.a.x, -33591i))) <= firstLeadingBit(1i)), !select(select(select(vec3<bool>(false, false, true), var_1.d, var_1.d), var_1.d, any(var_1.d.xy)), var_1.d, global0[_wgslsmith_index_u32(~4294967295u, 2u)]));
    return var_3.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_0.a.a.xx, select(vec4<u32>(_wgslsmith_mod_u32(~arg_3.a.a.x, ~1u), _wgslsmith_dot_vec2_u32(~u_input.b.yy, ~arg_3.a.a.xx), arg_1, ~_wgslsmith_dot_vec2_u32(arg_3.a.a.yx, vec2<u32>(u_input.b.x, 0u))), ~vec4<u32>(abs(u_input.b.x), max(u_input.b.x, 1u), arg_2.x, u_input.b.x), all(vec4<bool>(true, true, true, arg_0.a.d.x))));
    var var_1 = vec4<bool>(true, func_3(), arg_3.a.d.x, arg_3.a.d.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.b.x), 506f, 253f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1413f)))));
    global0 = array<bool, 2>();
    var var_3 = true;
    return -1012f;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(u_input.b.x, 0u, 23698u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f + -455f) + _wgslsmith_f_op_f32(abs(-556f))), -428f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-664f, 925f)), _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec4<f32>(1741f, -566f, -429f, 317f), u_input.b, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], true)), -426f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false), u_input.a.yxz), u_input.b.x, u_input.b, Struct_2(Struct_1(vec3<u32>(39096u, 28682u, u_input.b.x), vec4<f32>(-412f, 1000f, 773f, -1000f), u_input.b, vec3<bool>(global0[_wgslsmith_index_u32(46050u, 2u)], true, true)), 2386f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), u_input.a.wwy))))), vec3<u32>((u_input.b.x & u_input.b.x) ^ u_input.b.x, countOneBits(u_input.b.x << (31305u % 32u)), 4294967295u), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, true), global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], false), true), true)), -672f, !vec2<bool>(any(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), any(vec2<bool>(false, true))), vec3<i32>(2147483647i, 38442i, i32(-1i) * -39607i));
    var var_1 = _wgslsmith_mult_u32(~4294967295u, 4294967295u);
    let var_2 = !(!(!vec4<bool>(true, var_0.c.x, !global0[_wgslsmith_index_u32(31732u, 2u)], true)));
    let var_3 = var_0.a.c;
    var var_4 = _wgslsmith_mod_vec2_u32(select(var_0.a.c.zy, ~u_input.b.yy, vec2<bool>(true, true)), vec2<u32>(max(~34938u, 1u), _wgslsmith_div_u32(~10014u, ~60202u))) | vec2<u32>(1u, _wgslsmith_add_u32(u_input.b.x ^ ~4399u, var_3.x));
    return ~(~(~(min(u_input.b.x, 89419u) | min(4294967295u, var_3.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = Struct_2(arg_2, var_0.b.x, !vec2<bool>(arg_2.d.x, false), select(u_input.a.zwz, vec3<i32>(1328i & ~u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(var_0.d.x, false, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 52200u, arg_2.c.x), arg_0.zxx), 2u)])));
    let var_2 = _wgslsmith_f_op_f32(ceil(-217f));
    global0 = array<bool, 2>();
    let var_3 = var_1;
    return Struct_1(abs(abs(var_3.a.a)), vec4<f32>(var_0.b.x, 2037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-136f * 1928f)))), 1187f), vec3<u32>(_wgslsmith_clamp_u32(arg_3.x, firstLeadingBit(0u), var_1.a.a.x >> (~12374u % 32u)), var_1.a.c.x, 1u), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    var var_0 = Struct_2(func_4(~(~vec4<u32>(u_input.b.x, 33471u, 21393u, u_input.b.x)), vec4<u32>(32455u, u_input.b.x, func_1(), ~(~u_input.b.x)), Struct_1(max(countOneBits(u_input.b), u_input.b ^ vec3<u32>(118373u, u_input.b.x, 1803u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -205f, 682f, -915f)), ~u_input.b, vec3<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false)), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 2u)])))), min(u_input.b.xz, u_input.b.zz & u_input.b.zz) << (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xy), vec2<u32>(53281u, 38133u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f - _wgslsmith_f_op_f32(ceil(1000f)))) * _wgslsmith_f_op_f32(-1f)), select(vec2<bool>(any(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global0[_wgslsmith_index_u32(50947u, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))), true), select(vec2<bool>(true, all(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))), vec2<bool>(true, global0[_wgslsmith_index_u32(~u_input.b.x, 2u)]), true), vec2<bool>(true, select(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], true, false)), true, false))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 8529i) ^ abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(~_wgslsmith_sub_i32(0i, u_input.a.x), u_input.a.x, ~abs(u_input.a.x)), reverseBits((vec3<i32>(u_input.a.x, u_input.a.x, -1i) ^ u_input.a.wwz) << (~vec3<u32>(u_input.b.x, u_input.b.x, 7570u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-706f, _wgslsmith_f_op_f32(f32(-1f) * -1699f), _wgslsmith_f_op_f32(322f - -306f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a.b.zzy)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, 2191f, -598f))) + var_0.a.b.wwy), var_0.c.x)));
    var var_2 = Struct_2(func_4(~vec4<u32>(func_4(vec4<u32>(u_input.b.x, 55395u, 89062u, u_input.b.x), vec4<u32>(30927u, 1u, u_input.b.x, var_0.a.c.x), Struct_1(var_0.a.a, var_0.a.b, vec3<u32>(40316u, var_0.a.c.x, var_0.a.a.x), vec3<bool>(false, true, global0[_wgslsmith_index_u32(23015u, 2u)])), vec2<u32>(var_0.a.a.x, 0u)).c.x, 19125u, 24618u, 1u), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a.x, 30620u, 0u, var_0.a.a.x), vec4<u32>(14916u, 4558u, 4294967295u, var_0.a.a.x), vec4<u32>(31117u, var_0.a.c.x, 1u, 41017u))), var_0.a, ~((u_input.b.xx & u_input.b.xz) << (abs(vec2<u32>(var_0.a.a.x, u_input.b.x)) % vec2<u32>(32u)))), -521f, !select(vec2<bool>(!var_0.a.d.x, true), !var_0.a.d.yy, var_0.a.d.xy), u_input.a.yzz);
    var var_3 = countOneBits(max(var_0.d, vec3<i32>(-26788i, u_input.a.x, abs(var_2.d.x)))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(abs(80727u), ~u_input.b.x, var_2.a.c.x) << (firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.c.x, var_0.a.c.x, u_input.b.x), u_input.b)) % vec3<u32>(32u)), var_0.a.c | u_input.b) % vec3<u32>(32u));
    var var_4 = !vec4<bool>(true, false, var_0.c.x, false);
    var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~77954u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -259f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1019f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b, 920f))), -442f), min(u_input.a.wwx, ~var_2.d));
}

