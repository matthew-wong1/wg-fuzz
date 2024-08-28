struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(1044f, -215f, 1448f, -1027f), vec4<f32>(-707f, 2453f, 289f, 1299f), vec4<f32>(-1133f, 735f, 894f, -183f), vec4<f32>(1000f, 204f, -1280f, -918f), vec4<f32>(-2531f, 1607f, -665f, 181f), vec4<f32>(1408f, -506f, 133f, 1000f), vec4<f32>(392f, -586f, 642f, -168f), vec4<f32>(914f, 1539f, -3189f, -374f), vec4<f32>(-1000f, -811f, 446f, 888f));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec3<bool>;

var<private> global4: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(5876u, 61421u, 0u, 44279u), vec4<u32>(50566u, 18721u, 14659u, 4294967295u), vec4<u32>(4294967295u, 32667u, 4294967295u, 37438u), vec4<u32>(4294967295u, 0u, 4294967295u, 58900u), vec4<u32>(20447u, 1u, 1u, 29799u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global4 = array<vec4<u32>, 5>();
    global2 = vec2<bool>(global2.x, true || global3.x);
    let var_0 = arg_0;
    global0 = 2147483647i;
    let var_1 = vec2<f32>(var_0.a.x, var_0.a.x);
    return reverseBits(countOneBits(~firstLeadingBit(_wgslsmith_mod_u32(0u, 11224u))));
}

fn func_3() -> vec4<f32> {
    var var_0 = false;
    global2 = !select(global3.xz, select(global3.yz, select(select(vec2<bool>(global2.x, global3.x), vec2<bool>(global3.x, global3.x), global3.x), !global3.zx, !global2.x), global2.x), select(vec2<bool>(false, all(vec3<bool>(global3.x, global3.x, global2.x))), global3.yy, true));
    global4 = array<vec4<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 9u)]) + vec4<f32>(780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-978f, 280f)) - -1559f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, 1475f)))), -1142f)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1365f, -308f, true)) + _wgslsmith_f_op_f32(floor(161f))), global2.x)), -843f, _wgslsmith_f_op_f32(-var_1.x), -782f));
    return global1[_wgslsmith_index_u32(38815u, 9u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, -691f, -236f, arg_0.a.x)))) * arg_0.a));
    global3 = !arg_1.wxz;
    var var_1 = arg_0;
    global3 = !(!vec3<bool>(true, false, all(global3.zx)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, var_0.a.x)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(33877u, 9u)], arg_1)) - _wgslsmith_f_op_vec4_f32(func_3())) - vec4<f32>(var_0.a.x, 916f, var_0.a.x, -697f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(var_0.a.x, 624f, -1010f, -1007f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(-1055f, var_0.a.x, var_1.a.x, var_1.a.x)))))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x + 847f) * _wgslsmith_f_op_f32(173f * arg_3.a.x)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.a.x - 1000f))), false, global3.x, !global3.x));
    global3 = vec3<bool>(global3.x, any(vec4<bool>(all(global3.zx), true | global2.x, (u_input.a.x << (1u % 32u)) < ~(-698i), all(!global3.zx))), any(!(!vec4<bool>(global3.x, global2.x, false, true))));
    global3 = !select(select(!(!vec3<bool>(global2.x, true, global3.x)), select(select(vec3<bool>(global2.x, global3.x, global3.x), vec3<bool>(false, false, global2.x), vec3<bool>(true, true, false)), vec3<bool>(global3.x, global3.x, global3.x), global2.x), !vec3<bool>(false, global2.x, true)), !vec3<bool>(true, global3.x, true), true);
    var var_1 = func_2(arg_3, !(!(!(!vec4<bool>(false, global3.x, global2.x, global3.x)))));
    let var_2 = ~_wgslsmith_mod_u32(arg_2.x >> (_wgslsmith_dot_vec3_u32(arg_2.wyz, arg_2.zzw) % 32u), arg_1);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) - _wgslsmith_f_op_vec4_f32(var_1.a - var_1.a)), arg_3.a) * arg_3.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = false;
    global1 = array<vec4<f32>, 9>();
    var var_1 = 0u;
    global1 = array<vec4<f32>, 9>();
    let var_2 = ~25201u;
    return func_4(var_2, _wgslsmith_sub_u32(func_1(func_4(79485u, var_2, global4[_wgslsmith_index_u32(103369u, 5u)], func_2(Struct_1(arg_0.a), vec4<bool>(false, global2.x, global2.x, true)))), ~(~var_2)), select((global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 32982u), vec2<u32>(var_2, 128217u)), 5u)] << ((vec4<u32>(4294967295u, 0u, 37485u, 1u) | vec4<u32>(var_2, 1u, 1u, var_2)) % vec4<u32>(32u))) >> (~(global4[_wgslsmith_index_u32(var_2, 5u)] << (global4[_wgslsmith_index_u32(var_2, 5u)] % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(vec4<u32>(4294967295u, var_2, var_2, var_2), global4[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(false, true, false, true)) ^ max(vec4<u32>(15418u, var_2, 1u, var_2), ~global4[_wgslsmith_index_u32(var_2, 5u)]), select(select(select(vec4<bool>(global3.x, var_0, false, global2.x), vec4<bool>(var_0, global2.x, var_0, false), vec4<bool>(true, var_0, false, true)), select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(true, var_0, global3.x, false), false), vec4<bool>(false, var_0, true, var_0)), vec4<bool>(any(vec3<bool>(global2.x, var_0, global2.x)), global3.x, !var_0, true), vec4<bool>(global2.x | true, true, u_input.a.x < -2147483647i, any(vec4<bool>(false, false, var_0, var_0))))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2163f, 2287f, -1000f, -635f)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_1(Struct_1(global1[_wgslsmith_index_u32(36711u, 9u)])), 36568u), 9u)])));
    var var_1 = func_5(func_4(countOneBits(reverseBits(1u)), 0u, global4[_wgslsmith_index_u32(~(~1u), 5u)] | reverseBits(~vec4<u32>(42314u, 4294967295u, 1u, 123802u)), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-896f, var_0.a.x, var_0.a.x, var_0.a.x))), vec4<bool>(false && global3.x, global3.x, !global3.x, true))), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, var_0.a.x, 1000f, 647f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-617f, -923f, var_1.a.x, 540f)))) * vec4<f32>(-770f, -447f, _wgslsmith_f_op_f32(var_0.a.x - -1379f), _wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_1.a.x, -428f, 342f), var_0.a) * _wgslsmith_f_op_vec4_f32(-var_1.a))))));
    var var_3 = global2.x;
    global0 = _wgslsmith_dot_vec2_i32(u_input.a.xw << (~reverseBits(vec2<u32>(77069u, 7566u)) % vec2<u32>(32u)), ~vec2<i32>(-1i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<u32>(~138104u, _wgslsmith_dot_vec2_u32(vec2<u32>(9089u, 0u), vec2<u32>(1u, 24186u))) | ~(~vec2<u32>(4294967295u, 0u))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(14074u, 111340u, 69058u), vec3<u32>(1u, 1u, 1u)), countOneBits(countOneBits(20463u))) % vec2<u32>(32u)), func_4(~1u, max(4294967295u, ~firstTrailingBit(1u)), vec4<u32>(0u, firstTrailingBit(8632u), ~48010u, firstLeadingBit(0u)), func_2(func_5(Struct_1(vec4<f32>(var_2.a.x, var_0.a.x, -1000f, 140f)), func_5(Struct_1(global1[_wgslsmith_index_u32(60602u, 9u)]), Struct_1(vec4<f32>(-971f, 134f, 130f, var_2.a.x)))), vec4<bool>(false, all(vec3<bool>(true, global3.x, false)), any(vec4<bool>(global2.x, global3.x, global3.x, global3.x)), true))).a.zwz, 1586f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(max(var_2.a.x, var_1.a.x))), 1u);
}

