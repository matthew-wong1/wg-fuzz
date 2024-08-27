struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<u32, 7> = array<u32, 7>(51177u, 1u, 4958u, 73775u, 167089u, 91852u, 12057u);

var<private> global2: array<i32, 18> = array<i32, 18>(-31794i, -12277i, -2623i, i32(-2147483648), -1i, -43317i, 0i, 17130i, 7803i, 1i, -3113i, 2147483647i, 2147483647i, 0i, -16898i, 0i, 2147483647i, -44792i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    global0 = array<vec4<bool>, 29>();
    let var_0 = reverseBits(global1[_wgslsmith_index_u32(arg_2.a.a, 7u)]);
    global0 = array<vec4<bool>, 29>();
    return 4294967295u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = vec4<u32>(countOneBits(arg_3.x), u_input.a.x, ~firstLeadingBit(_wgslsmith_clamp_u32(arg_3.x, firstLeadingBit(arg_0.x), u_input.a.x ^ 0u)), firstTrailingBit(31386u));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, u_input.a.x), _wgslsmith_sub_u32(32224u, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))), any(vec2<bool>(!arg_1.x, false)), arg_2, vec3<u32>(~(~arg_0.x), 4294967295u, 1u), _wgslsmith_f_op_f32(max(-1835f, _wgslsmith_f_op_f32(845f + -476f)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = func_3(vec4<u32>(arg_2, ~1u, arg_2, ~(u_input.a.x ^ u_input.a.x) & _wgslsmith_mod_u32(func_2(Struct_3(arg_1.ywy, vec4<bool>(false, arg_1.x, true, true), false, vec2<u32>(arg_2, u_input.a.x)), global2[_wgslsmith_index_u32(0u, 18u)], Struct_2(Struct_1(58202u), false, vec4<f32>(-132f, -1653f, -1917f, -187f), vec3<u32>(34787u, 20128u, 12396u), -539f), vec2<f32>(-555f, -814f)), 0u)), vec3<bool>(!(all(arg_1.zxw) | true), arg_1.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(668f, -1155f, 688f, -1052f) * vec4<f32>(558f, -490f, 661f, -1049f))))), ~(~u_input.a.xw));
    return Struct_4(Struct_2(var_0.a.a, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)), var_0.a.d, -598f));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(~15590u);
    var var_1 = Struct_3(!select(!vec3<bool>(true, false, arg_1), select(select(vec3<bool>(false, arg_0.a.b, false), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.a.b, arg_0.a.b)), !vec3<bool>(arg_1, arg_1, false), select(arg_0.a.b, arg_0.a.b, false)), 1u >= firstLeadingBit(u_input.a.x)), select(select(global0[_wgslsmith_index_u32(149817u, 29u)], select(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, false, true, arg_1)), select(vec4<bool>(arg_1, arg_0.a.b, true, true), vec4<bool>(arg_1, arg_0.a.b, false, arg_0.a.b), true), arg_1), vec4<bool>(true, true, arg_0.a.b, !arg_1)), select(!select(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(19174u, 29u)], global0[_wgslsmith_index_u32(34369u, 29u)]), !(!vec4<bool>(arg_1, arg_1, true, arg_0.a.b)), arg_0.a.b), !any(select(global0[_wgslsmith_index_u32(42719u, 29u)], vec4<bool>(arg_0.a.b, arg_1, arg_1, arg_0.a.b), global0[_wgslsmith_index_u32(1u, 29u)]))), arg_1, abs(abs(vec2<u32>(50360u ^ u_input.a.x, ~u_input.a.x))));
    var var_2 = (abs(select(min(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.a.a.a, 7u)], 50080u, 1922u), vec3<u32>(var_0.a, 1u, 4294967295u)), vec3<u32>(u_input.a.x, arg_0.a.d.x, 11926u), all(vec3<bool>(true, arg_1, arg_1)))) >> (~vec3<u32>(_wgslsmith_mod_u32(arg_0.a.a.a, 0u), global1[_wgslsmith_index_u32(~0u, 7u)], 0u) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(48419u, arg_0.a.a.a & func_1(arg_1, vec4<bool>(arg_1, var_1.c, arg_0.a.b, arg_0.a.b), 80174u).a.a.a, 0u), arg_0.a.d, _wgslsmith_mult_vec3_u32(arg_0.a.d, ~arg_0.a.d | vec3<u32>(0u, 4294967295u, 74290u)));
    var var_3 = vec3<bool>(true, var_1.a.x, arg_1);
    var var_4 = vec2<f32>(func_1(true, !select(!global0[_wgslsmith_index_u32(var_0.a, 29u)], select(vec4<bool>(true, true, arg_1, false), vec4<bool>(true, true, arg_0.a.b, false), false), true || var_3.x), var_2.x).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x), -1051f), 1851f))));
    return Struct_1(_wgslsmith_mult_u32(abs(12865u), abs(0u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = select(vec3<bool>(select(any(!vec2<bool>(arg_1.a.b, arg_0.b)), any(vec2<bool>(false, true)), true), all(global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), true), !(!vec3<bool>(u_input.a.x < arg_1.a.a.a, all(vec2<bool>(true, false)), any(vec3<bool>(false, arg_0.b, arg_1.a.b)))), arg_0.b);
    let var_1 = vec3<bool>(false, !(_wgslsmith_f_op_f32(min(arg_2.x, arg_1.a.e)) <= 2460f), max(_wgslsmith_clamp_i32(1936i, -global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.a, 1u), 18u)]), global2[_wgslsmith_index_u32(15262u, 18u)]) >= firstLeadingBit(-8725i));
    var var_2 = vec2<u32>(~4294967295u, reverseBits(1u));
    return Struct_2(arg_0.a, any(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_3.a ^ 33500u, 530u), firstTrailingBit(~arg_3.a)), 29u)]), _wgslsmith_f_op_vec4_f32(arg_1.a.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1262f, -2104f, -966f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, arg_1.a.c.x, -354f, 1000f)))))), u_input.a.yzw, arg_1.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(func_4(func_1(true, select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48672u, 7u)], 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 29u)], vec4<bool>(true, false, false, true)), global1[_wgslsmith_index_u32(4294967295u, 7u)] << (66952u % 32u)), true), func_3(abs(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(33148u, 7u)]))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2299f, 317f, 849f, -621f), vec4<f32>(552f, -1706f, 312f, 380f), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(293f, 792f, -866f, -455f), vec4<f32>(232f, 286f, -800f, 1436f))))), u_input.a.yw & firstLeadingBit(u_input.a.zx)).a.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, 896f, 1454f, -447f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(658f, 563f, -454f, 885f) * vec4<f32>(2162f, -567f, 909f, 2725f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-833f, -652f, -197f, 1224f) - func_1(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61882u, 7u)], 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]).a.c), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 29u)])), u_input.a.yzx, -572f), Struct_4(func_1(any(vec3<bool>(true, false, true)) | true, global0[_wgslsmith_index_u32(1u, 29u)], 1u).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, _wgslsmith_div_f32(2643f, -868f), _wgslsmith_f_op_f32(f32(-1f) * -733f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, _wgslsmith_f_op_f32(select(832f, 382f, true)), _wgslsmith_f_op_f32(-1000f + -1545f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(551f, 1180f, 823f), vec3<f32>(1000f, -141f, 703f)))))), func_1(select(reverseBits(global2[_wgslsmith_index_u32(65265u, 18u)]), 4376i, true) == global2[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_div_u32(16177u, 42815u) % 32u), 18u)], global0[_wgslsmith_index_u32(~func_1(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 4294967295u), 29u)], ~0u).a.a.a, 29u)], _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(44467u, 7u)], 1u))).a.a);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x)));
    let var_2 = Struct_4(Struct_2(Struct_1(1u), true, vec4<f32>(-814f, _wgslsmith_f_op_f32(trunc(var_0.c.x)), var_0.e, -1120f), vec3<u32>(1u, 1u, 14238u), _wgslsmith_f_op_f32(-679f + var_0.c.x)));
    global0 = array<vec4<bool>, 29>();
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x)))));
    var var_4 = func_1(true, global0[_wgslsmith_index_u32(var_0.a.a, 29u)], var_2.a.a.a);
    let var_5 = func_1(func_5(func_1(var_0.b & !var_0.b, select(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80031u, 7u)], 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), global0[_wgslsmith_index_u32(var_4.a.d.x, 29u)], global0[_wgslsmith_index_u32(func_2(Struct_3(vec3<bool>(var_0.b, true, true), vec4<bool>(var_4.a.b, true, var_2.a.b, true), false, vec2<u32>(0u, 4294967295u)), global2[_wgslsmith_index_u32(1u, 18u)], Struct_2(Struct_1(var_0.a.a), false, var_0.c, var_2.a.d, var_2.a.c.x), var_2.a.c.yy), 29u)]), var_2.a.d.x).a, Struct_4(var_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_3(vec4<u32>(u_input.a.x, 81890u, var_4.a.a.a, 27229u), vec3<bool>(var_2.a.b, var_2.a.b, var_2.a.b), var_4.a.c, vec2<u32>(var_0.a.a, u_input.a.x)).a.e, _wgslsmith_f_op_f32(-var_2.a.e), -106f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_4.a.c.xyz, var_2.a.c.xyx))), Struct_1(~4294967295u)).b, select(select(select(select(vec4<bool>(var_0.b, true, true, var_2.a.b), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30093u, 7u)], 29u)], vec4<bool>(var_2.a.b, false, var_0.b, false)), !vec4<bool>(false, var_2.a.b, var_2.a.b, var_0.b), vec4<bool>(true, var_0.b, var_4.a.b, var_4.a.b)), vec4<bool>(var_4.a.b, true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_2.a.d.x, var_2.a.a.a), 29u)]), global0[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_div_u32(var_0.d.x, _wgslsmith_sub_u32(38729u, var_2.a.a.a)), 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), firstLeadingBit(_wgslsmith_mult_u32(var_0.a.a, 31314u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

