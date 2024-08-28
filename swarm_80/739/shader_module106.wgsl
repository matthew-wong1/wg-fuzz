struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 42707u;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, false, true, true, true, false, false, false, false, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = ~40497u;
    global2 = array<bool, 13>();
    let var_1 = arg_1.b;
    let var_2 = arg_1;
    var var_3 = var_2.b.yw;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.a - arg_1.a)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(274f, _wgslsmith_f_op_f32(f32(-1f) * -191f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-971f)) - 1000f)), true));
    global0 = ~0u;
    global1 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -371f), -834f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(746f, 790f, 2539f)))) - vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec4_f32(func_2(all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(27065u, 13u)], global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_0.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)]), true)), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-858f, -368f, -245f, -171f), vec4<f32>(1128f, 747f, -1015f, 1030f)), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 13u)], false, global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(8770u, 13u)]), 1u))).zyx, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(442f + -824f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f - -208f))))));
    global2 = array<bool, 13>();
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec2_u32(max(u_input.b, arg_3.wy), vec2<u32>(u_input.c, firstLeadingBit(~1u)));
    global1 = array<Struct_1, 1>();
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(func_2(false, Struct_2(vec4<f32>(-1930f, -333f, -661f, arg_0.a.x), vec4<bool>(var_1.x, true, false, arg_1.x), 0u))), !vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(39964u, 13u)], var_1.x, true)))))), 92213u, arg_0.c);
    var_0 = min(vec2<u32>(arg_0.b, firstLeadingBit(var_2.b)), ~(~(~arg_0.c.zx)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(-arg_0.a))), vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(func_3(vec4<u32>(44720u, u_input.c, 0u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x)))), vec4<bool>(all(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 13u)], true))), global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_div_u32(0u, var_0.x)), 13u)], !(!any(vec3<bool>(global2[_wgslsmith_index_u32(var_2.c.x, 13u)], true, global2[_wgslsmith_index_u32(1u, 13u)]))), any(select(!vec2<bool>(arg_1.x, global2[_wgslsmith_index_u32(16548u, 13u)]), vec2<bool>(false, arg_1.x), any(vec3<bool>(var_1.x, true, true))))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(!any(vec4<bool>(true, false, true, false)), false, global2[_wgslsmith_index_u32(10879u, 13u)], true));
    var var_1 = func_1(global1[_wgslsmith_index_u32(346u, 1u)], var_0.xzz, -(~select(-vec2<i32>(0i, -38983i), vec2<i32>(-1i, u_input.a), true)), vec4<u32>(~1u, min(1u >> (select(u_input.b.x, 42895u, true) % 32u), 1u & ~u_input.c), ~(~u_input.c), u_input.b.x));
    var var_2 = vec4<i32>(-2147483647i, u_input.a, u_input.a, ~(-(~u_input.a)));
    var var_3 = var_2.yz ^ (~abs(firstTrailingBit(var_2.xz)) ^ firstTrailingBit(vec2<i32>(min(15879i, var_2.x), var_2.x ^ var_2.x)));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -1132f)))))));
    let var_5 = vec3<bool>(true, !var_1.b.x, true);
    var_3 = _wgslsmith_sub_vec2_i32(var_2.yw, vec2<i32>(-u_input.a & (~u_input.a >> (4612u % 32u)), ~(1i << (u_input.c % 32u))));
    var_1 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x * 1652f), _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(step(-1150f, var_4)), 1000f)), 34884u, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 21477u, u_input.c, 1u), vec4<u32>(1u, 1u, var_1.c, 4294967295u)))), var_1.b.wwy, -(~(vec2<i32>(-37414i, 13371i) >> (~u_input.b % vec2<u32>(32u)))), (vec4<u32>(u_input.b.x, firstTrailingBit(44911u), u_input.c, abs(13048u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(19702u, 3308u, 1u, var_1.c), vec4<u32>(1u, var_1.c, 9430u, var_1.c))) ^ (vec4<u32>(u_input.c, var_1.c, u_input.b.x, ~8272u) ^ (vec4<u32>(1u, 1u, var_1.c, 36584u) ^ reverseBits(vec4<u32>(10746u, 62265u, 0u, 4294967295u)))));
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(738f, _wgslsmith_f_op_f32(max(-802f, 1177f)), firstLeadingBit(~(~vec4<i32>(u_input.a, -21194i, -1i, -1i) >> (~vec4<u32>(var_1.c, u_input.c, u_input.c, 32408u) % vec4<u32>(32u)))));
}

