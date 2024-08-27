struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, false, true, false, true, false, true, false, true, false);

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-22087i, 7239i, 13163i), vec3<i32>(i32(-2147483648), 2147483647i, 38477i));

var<private> global2: bool;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(arg_1);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = arg_0.a.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(489f, 1146f, 1279f, 1466f), vec4<f32>(-1083f, -664f, 1021f, -157f), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1435f, -1425f, -777f, -324f), vec4<f32>(-331f, -1000f, 483f, 750f))), vec4<bool>(false, false, true, arg_0.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-354f, 297f, -1670f, 453f) * vec4<f32>(715f, -534f, 542f, 506f)) - vec4<f32>(-920f, -535f, -347f, -1565f)))))));
    global3 = array<Struct_2, 32>();
    var var_2 = arg_0;
    return var_2.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = vec2<f32>(629f, _wgslsmith_f_op_f32(sign(1f)));
    var var_2 = var_0.x;
    global2 = all(select(vec2<bool>(any(vec3<bool>(false, true, true)), arg_2.a.a.x), func_2(!(!global0[_wgslsmith_index_u32(47851u, 11u)]), func_2(all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.b.x, 11u)], true, arg_2.a.a.x)), func_2(arg_2.a.a.x, Struct_1(vec3<bool>(true, false, arg_2.a.a.x), arg_0.yw, arg_2.a.c)).a).a).a.a.yz, func_3(Struct_3(arg_2.a), arg_2.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, arg_2.a.b.x), vec4<u32>(arg_2.a.b.x, 14234u, 40545u, 0u)) << (~arg_0 % vec4<u32>(32u))).a.zz));
    let var_3 = firstLeadingBit(u_input.b);
    return vec2<u32>(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0 | var_0, max(vec4<u32>(12320u, 1u, 110823u, 1u), arg_0 & var_0)), var_0.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    global3 = array<Struct_2, 32>();
    return Struct_1(select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(33894u, 11u)], true, global0[_wgslsmith_index_u32(0u, 11u)]))), select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(1245u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 11u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], false, global0[_wgslsmith_index_u32(33513u, 11u)]), global0[_wgslsmith_index_u32(1u, 11u)]), !global0[_wgslsmith_index_u32(63759u, 11u)]), select(vec3<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true)), true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true, true), true || !global0[_wgslsmith_index_u32(u_input.b, 11u)])), func_4(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 26826u), vec4<u32>(90482u, 22677u, u_input.b, 1u)) << (~(vec4<u32>(4294967295u, 27548u, u_input.b, 88344u) << (vec4<u32>(u_input.b, 44593u, 23538u, 12106u) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a.x, Struct_3(func_3(func_2(global0[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(3092u, 11u)], true), vec2<u32>(38132u, u_input.b), u_input.a.xyy)), func_2(global0[_wgslsmith_index_u32(0u, 11u)], Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(43560u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(53974u, 11u)]), vec2<u32>(u_input.b, 8567u), vec3<i32>(-40645i, 1i, arg_0.x))).a, ~vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u)))), select(-vec3<i32>(abs(u_input.a.x), 1i, u_input.a.x ^ u_input.a.x), abs(vec3<i32>(-arg_0.x, 0i, u_input.a.x & 2147483647i)), vec3<bool>(func_2(!global0[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<u32>(41833u, 4294967295u), vec3<i32>(arg_0.x, 58707i, arg_0.x))).a.a.x, true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: i32) -> Struct_3 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = Struct_1(arg_0.a, vec2<u32>(5752u, ~_wgslsmith_add_u32(arg_0.b.x, u_input.b)) << (vec2<u32>(func_2(true, arg_0).a.b.x, _wgslsmith_add_u32(~arg_0.b.x, arg_0.b.x)) % vec2<u32>(32u)), vec3<i32>(~arg_3, ~(i32(-1i) * -1i), func_2(true, Struct_1(arg_0.a, firstTrailingBit(vec2<u32>(0u, arg_0.b.x)), vec3<i32>(u_input.a.x, u_input.a.x, arg_3))).a.c.x));
    var var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(322f - -972f));
    global1 = array<vec3<i32>, 3>();
    global3 = array<Struct_2, 32>();
    return Struct_3(func_3(Struct_3(func_1(vec3<i32>(arg_3, u_input.a.x, var_0.c.x), 1503f)), func_2(func_1(vec3<i32>(47484i, 18056i, 2147483647i), _wgslsmith_f_op_f32(717f * arg_1.x)).a.x, Struct_1(func_2(global0[_wgslsmith_index_u32(19506u, 11u)], Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(11722u, 11u)], false, global0[_wgslsmith_index_u32(var_0.b.x, 11u)]), arg_0.b, vec3<i32>(1i, 18517i, u_input.a.x))).a.a, var_0.b, vec3<i32>(arg_0.c.x, -46509i, -12921i) << (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)))).a, vec4<u32>(arg_0.b.x, _wgslsmith_mult_u32(0u, 0u), _wgslsmith_sub_u32(~69413u, _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(u_input.b, 1u))), 35350u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = func_5(func_1(vec3<i32>(0i, -1i, _wgslsmith_dot_vec2_i32(select(u_input.a.yy, vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, false)), vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-809f - -653f), -921f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(440f, -781f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(983f))), _wgslsmith_f_op_f32(round(-965f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -791f) * vec2<f32>(998f, -1423f))))))), u_input.a.x);
    global3 = array<Struct_2, 32>();
    let var_2 = global0[_wgslsmith_index_u32(~(4294967295u >> ((0u << (~var_1.a.b.x % 32u)) % 32u)), 11u)] || any(var_1.a.a);
    var var_3 = func_1(func_3(Struct_3(var_1.a), var_1.a, ~vec4<u32>(0u, func_4(vec4<u32>(0u, 7085u, u_input.b, 32710u), u_input.a.x, Struct_3(var_1.a)).x, ~0u, _wgslsmith_div_u32(u_input.b, u_input.b))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-602f)) - -359f), _wgslsmith_f_op_f32(-525f - _wgslsmith_f_op_f32(-631f - 1000f))))), ~92755u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1674f, -547f, func_2(u_input.a.x < var_3.c.x, Struct_1(vec3<bool>(true, false, var_1.a.a.x), var_3.b, u_input.a.zzw)).a.a.x)))), var_1.a.c.zz);
}

