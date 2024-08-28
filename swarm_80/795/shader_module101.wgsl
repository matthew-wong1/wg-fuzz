struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32225u;

var<private> global1: i32;

var<private> global2: f32 = -207f;

var<private> global3: array<Struct_2, 11>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = global4.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -990f) - vec3<f32>(-585f, arg_1, arg_1))))) + vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1007f)) + arg_1), arg_1)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 798f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(353f, arg_1, arg_1)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 1000f, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(336f, arg_1, 885f)))))));
    return select(!select(!select(vec4<bool>(global4.b.x, false, global4.b.x, global4.a), vec4<bool>(true, global4.a, global4.b.x, global4.b.x), false), !select(vec4<bool>(true, global4.b.x, global4.a, false), vec4<bool>(true, true, false, global4.b.x), vec4<bool>(false, false, true, global4.a)), vec4<bool>(false, global4.a, all(global4.b), any(vec2<bool>(true, true)))), vec4<bool>(global4.a, !(!(global4.a && true)), global4.a, false), !select(vec4<bool>(false, any(vec4<bool>(global4.b.x, false, true, global4.a)), true, all(vec3<bool>(false, true, global4.b.x))), vec4<bool>(true, global4.b.x, global4.b.x, global4.b.x), any(global4.b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = func_3(Struct_2(21738u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2010f - -630f)))), -(~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), u_input.b) ^ u_input.b.x)), global3[_wgslsmith_index_u32(firstTrailingBit(select(49113u, 19333u, _wgslsmith_add_u32(u_input.c, 5586u) != u_input.c)), 11u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(-642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) + _wgslsmith_f_op_f32(410f + -1895f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1196f)))), select(global4.b, select(select(select(global4.b, var_0.wxx, true), var_0.yww, true), var_0.yzw, select(func_3(Struct_2(global4.c.x), -797f, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 11u)]).wxw, vec3<bool>(false, global4.a, false), global4.b.x)), !global4.b.x), global4.c);
    let var_2 = func_3(global3[_wgslsmith_index_u32((~abs(1u) & var_1.c.x) | ~1u, 11u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1455f)), -612f, var_1.b.x && true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(461f * 613f), _wgslsmith_f_op_f32(step(-2217f, 226f)))), global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f + 570f) * _wgslsmith_div_f32(-1735f, -1080f))))), -max(u_input.a & 4834i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), Struct_2(_wgslsmith_dot_vec2_u32(global4.c.xx, countOneBits(vec2<u32>(u_input.c, 4294967295u))))).yxy;
    var var_3 = select(max(abs(select(~vec4<u32>(u_input.d, 1u, 1u, u_input.d), vec4<u32>(global4.c.x, 25363u, 4294967295u, var_1.c.x), func_3(global3[_wgslsmith_index_u32(u_input.c, 11u)], 238f, u_input.b.x, Struct_2(20861u)))), var_1.c), global4.c, vec4<bool>(true, !all(var_0.xx), true, !any(vec4<bool>(var_0.x, true, var_2.x, arg_0))));
    var_3 = vec4<u32>(4294967295u, ~41977u, countOneBits(_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(var_3.x, u_input.d)), _wgslsmith_mult_u32(global4.c.x, abs(45961u)))), 57526u);
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(~arg_0.x, 11u)];
    global3 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2317f, 465f)) * vec2<f32>(209f, 3563f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-516f, 769f) - vec2<f32>(244f, -265f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1215f, 715f) + vec2<f32>(-1000f, 118f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-497f, -476f))) - vec2<f32>(-1240f, -1083f)), !arg_1.b.yz))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2023f - -1228f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1076f - -545f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1367f - var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1478f, var_1.x, var_1.x))), func_2(global4.a).b)));
    var var_3 = ~(~_wgslsmith_add_vec4_i32(-abs(vec4<i32>(-1i, -11495i, 19284i, 0i)), vec4<i32>(abs(1i), 1i, u_input.a, i32(-1i) * -14209i)));
    return func_2(all(vec3<bool>(global4.a, false, arg_1.b.x))).b.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> bool {
    let var_0 = func_4(min(_wgslsmith_mod_vec4_u32(countOneBits(global4.c) & vec4<u32>(4294967295u, global4.c.x, 4294967295u, global4.c.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34316u, 4294967295u, arg_1.x, 32535u), vec4<u32>(61226u, u_input.d, u_input.c, 1u)), global4.c.x, 1u, 0u)), vec4<u32>(u_input.c, ~(~4492u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_1.x, 1u)), ~0u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), arg_1.x & 4294967295u))), func_2(true));
    global1 = min(-31734i << (u_input.c % 32u), ~select(u_input.a, -9713i, false));
    var var_1 = Struct_2(~(min(28505u, u_input.d) ^ _wgslsmith_div_u32(5098u, 1u)) & 4294967295u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-284f)) * -256f), _wgslsmith_div_f32(1523f, _wgslsmith_f_op_f32(2363f - 246f)))), 1f)) - _wgslsmith_f_op_f32(f32(-1f) * -578f));
    let var_2 = Struct_1(!global4.a, select(!func_3(global3[_wgslsmith_index_u32(22325u, 11u)], _wgslsmith_f_op_f32(trunc(920f)), -16193i, Struct_2(u_input.d)).wxx, !select(vec3<bool>(false, global4.b.x, global4.a), func_2(arg_0.x).b, vec3<bool>(true, global4.b.x, false)), any(!global4.b.xz) & (true || arg_0.x)), ~global4.c);
    return var_0 & any(func_2(true).b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 11>();
    var var_0 = !vec3<bool>((_wgslsmith_sub_i32(u_input.a, -1i) >> (_wgslsmith_sub_u32(u_input.d, 4294967295u) % 32u)) < _wgslsmith_sub_i32(-u_input.b.x, u_input.a), select(all(select(global4.b, global4.b, global4.b.x)), any(!global4.b), false), func_1(vec3<bool>(true, global4.b.x, any(vec4<bool>(true, false, true, global4.b.x))), vec3<u32>(~global4.c.x, 6192u, ~40631u)));
    global0 = u_input.c;
    var var_1 = Struct_1((u_input.b.x ^ 0i) == -6267i, func_3(Struct_2(global4.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-333f, _wgslsmith_f_op_f32(min(-463f, -143f)))))), -(countOneBits(u_input.b.x) | abs(u_input.a)), global3[_wgslsmith_index_u32(4294967295u, 11u)]).wyz, ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(2027u, 28649u, 51101u, 3262u), global4.c), vec4<u32>(0u, u_input.c, u_input.c, u_input.d), firstLeadingBit(global4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, -1046f)), vec2<f32>(765f, 209f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1611f, -930f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(217f, 1531f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(319f, -1629f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f + 1223f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1624f))))));
}

