struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-1i, 0i, 19045i, -19730i, i32(-2147483648), -9317i, i32(-2147483648), 2147483647i, -1035i, 60494i, 50425i, 1i, 6569i, -28097i, -1i, i32(-2147483648), -6138i, 1i, 14790i);

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1366f, -990f), vec2<f32>(578f, -242f), vec2<f32>(-1000f, -596f), vec2<f32>(-521f, 720f), vec2<f32>(415f, 855f), vec2<f32>(1818f, -328f), vec2<f32>(-1192f, -1000f), vec2<f32>(648f, -2237f), vec2<f32>(-1730f, -1475f), vec2<f32>(1395f, -505f), vec2<f32>(-1333f, -1152f), vec2<f32>(682f, -381f));

var<private> global2: array<f32, 24>;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    global1 = array<vec2<f32>, 12>();
    let var_0 = Struct_3(Struct_1(true, ~countOneBits(global0[_wgslsmith_index_u32(arg_0.x, 19u)] & u_input.a.x), -vec2<i32>(global0[_wgslsmith_index_u32(9232u, 19u)] >> (u_input.c.x % 32u), -u_input.a.x)), 1u, firstTrailingBit(-abs(u_input.a.zz)) << ((vec2<u32>(0u ^ arg_1, abs(68474u)) ^ ~min(arg_0.zz, u_input.c.zz)) % vec2<u32>(32u)));
    global0 = array<i32, 19>();
    let var_1 = !arg_2;
    var var_2 = var_0.a;
    return 799f;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) - _wgslsmith_f_op_f32(484f - arg_0.x)))), _wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(func_2(~(~vec3<u32>(1u, 14899u, 0u)), 18477u, !(!arg_3.yz)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(421f - 510f), arg_0.x)));
    let var_1 = Struct_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(57875i, -2147483647i), -18059i, -u_input.a.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-5988i, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(1u, 19u)], 0i)) | -vec4<i32>(u_input.a.x, 2147483647i, -26032i, 20425i)));
    let var_2 = _wgslsmith_add_i32(u_input.a.x, 1i) & u_input.a.x;
    global0 = array<i32, 19>();
    var var_3 = var_1;
    return Struct_2(select(reverseBits((vec4<i32>(-1i, 1i, -4987i, u_input.a.x) << (vec4<u32>(20715u, 0u, u_input.c.x, 88242u) % vec4<u32>(32u))) >> (~vec4<u32>(0u, 0u, arg_2, 4700u) % vec4<u32>(32u))), -select(var_1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, global0[_wgslsmith_index_u32(arg_2, 19u)], 0i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], u_input.a.x, 23145i, 24765i)), vec4<bool>(arg_3.x, arg_3.x, true, true)), !(!(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_3 {
    return Struct_3(Struct_1(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(false, arg_3, arg_3, true), vec4<bool>(true, arg_3, true, arg_3)), vec4<bool>(false, arg_3, false, false))), -(34146i >> (min(u_input.b, u_input.b) % 32u)), arg_1.a.zz), ~(~arg_0 << (_wgslsmith_add_u32(~arg_0, 0u) % 32u)), firstTrailingBit(arg_1.a.zw));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = ~u_input.c.x;
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(select(abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(var_0, 19u)], 19181i, -1i)), vec4<i32>(arg_1.c.x, -54419i, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, 0u, arg_0.x, 13355u) % vec4<u32>(32u)), vec4<bool>(arg_1.a.a, false, true, false)), vec4<i32>(global0[_wgslsmith_index_u32(abs(4294967295u), 19u)], i32(-1i) * -1i, func_3(0u, Struct_2(vec4<i32>(arg_1.c.x, 2147483647i, arg_1.c.x, u_input.a.x)), 353i, arg_1.a.a).a.c.x, _wgslsmith_add_i32(-2147483647i, 3880i))) | -vec4<i32>(max(u_input.a.x, arg_1.a.c.x), -10702i, ~u_input.a.x, ~arg_1.c.x));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(min(u_input.c.x, abs(1u)) ^ _wgslsmith_mult_u32(~4294967295u, ~arg_1.b), firstTrailingBit(~arg_1.b), ~(~0u), ~20615u), firstTrailingBit(vec4<u32>(arg_1.b ^ 0u, ~arg_0.x, arg_1.b | arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(21633u, var_1, 1u, 46315u), vec4<u32>(arg_1.b, 4294967295u, arg_0.x, u_input.c.x)))) ^ reverseBits(vec4<u32>(reverseBits(var_1), 1376u, _wgslsmith_dot_vec4_u32(vec4<u32>(79785u, 4294967295u, 4294967295u, 11739u), vec4<u32>(var_1, 1u, 0u, arg_1.b)), firstLeadingBit(1u))), max(~(~(vec4<u32>(1u, u_input.b, 16838u, 0u) >> (vec4<u32>(15636u, arg_1.b, 31245u, 20600u) % vec4<u32>(32u)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0, arg_0.x, 4294967295u, 73303u), firstTrailingBit(vec4<u32>(49735u, 66970u, 0u, 4294967295u)))));
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], 465f, 1478f) - vec3<f32>(global2[_wgslsmith_index_u32(var_3.x, 24u)], global2[_wgslsmith_index_u32(60486u, 24u)], global2[_wgslsmith_index_u32(var_1, 24u)])) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-726f, 338f, -406f), vec3<f32>(459f, -265f, -620f)))) * vec3<f32>(-187f, global2[_wgslsmith_index_u32(min(30478u, arg_1.b), 24u)], _wgslsmith_f_op_f32(func_2(vec3<u32>(arg_0.x, var_0, 1u), 0u, vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(945f, global2[_wgslsmith_index_u32(var_3.x, 24u)])) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 24u)] + -1077f)))) * global2[_wgslsmith_index_u32(var_0, 24u)]), var_1, vec3<bool>(true, arg_1.a.a, func_3(arg_1.b, Struct_2(vec4<i32>(-14881i, 0i, var_2.a.x, 2147483647i)), u_input.a.x, all(vec4<bool>(arg_1.a.a, arg_1.a.a, true, arg_1.a.a))).a.a == false));
    return Struct_1(arg_1.a.a, func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(195f, global2[_wgslsmith_index_u32(var_3.x, 24u)], 532f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(0u, 24u)], -289f, -1000f))), (arg_1.a.a && arg_1.a.a) | arg_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 24u)])) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(31783u, var_1), 24u)])), select(var_3.x, ~(~23958u), all(!vec4<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a, arg_1.a.a))), vec3<bool>(true, _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(0u, 19u)]) > reverseBits(arg_1.a.c.x), arg_1.a.a)).a.x, vec2<i32>(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_div_i32(-arg_1.c.x, ~52816i)) >> (~(~_wgslsmith_add_vec2_u32(var_3.xy, u_input.c.zy)) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> bool {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_0 = global0[_wgslsmith_index_u32(~(u_input.b & _wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(1u), countOneBits(17810u))), 19u)] == (i32(-1i) * -(~(-arg_0.b)));
    var var_1 = Struct_1(arg_2 <= 28443u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32((firstTrailingBit(u_input.b) | _wgslsmith_clamp_u32(8853u, 44050u, arg_2)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 107895u, 1u), u_input.c) % 32u), _wgslsmith_add_u32(abs(min(0u, 93085u)), reverseBits(arg_2))), 19u)], (vec2<i32>(_wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(83355u, 19u)]), -1i) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, global0[_wgslsmith_index_u32(u_input.b, 19u)]), arg_1.wz), max(16910i, -14685i))) & vec2<i32>(1i, -(arg_1.x & 1i)));
    let var_2 = func_3(48953u, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 24u)], -784f, -2586f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 24u)]), 1365f))), ~1u, vec3<bool>(all(vec3<bool>(false, true, false)) || !var_1.a, arg_0.a | true, !arg_0.a)), 17911i, !select(var_1.a, all(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_1.a), vec2<bool>(false, var_1.a))), arg_0.a)).a.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_5(func_4(vec3<u32>(~u_input.c.x, min(1u, u_input.c.x), _wgslsmith_div_u32(3968u, 4294967295u)), func_3(max(u_input.b, u_input.c.x), func_1(vec3<f32>(global2[_wgslsmith_index_u32(3518u, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)]), -1000f, u_input.c.x, vec3<bool>(false, true, true)), countOneBits(38910i), true)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], func_4(~u_input.c, func_3(40465u, Struct_2(vec4<i32>(-1i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], u_input.a.x)), global0[_wgslsmith_index_u32(0u, 19u)], false)).b, ~(-2147483647i), 2147483647i), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11588u, u_input.b, 0u), ~vec4<u32>(15846u, u_input.b, 4294967295u, 70307u))), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4688u, 24u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 24u)] + -522f) + _wgslsmith_f_op_f32(min(-2639f, global2[_wgslsmith_index_u32(0u, 24u)])))) == -625f, !(true && func_4(min(vec3<u32>(936u, u_input.c.x, 56987u), vec3<u32>(35254u, u_input.b, u_input.c.x)), func_3(28062u, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i)), u_input.a.x, true)).a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(abs(u_input.b), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -824f)));
    let var_2 = func_3(u_input.b, func_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18126u, 24u)] * global2[_wgslsmith_index_u32(u_input.b, 24u)]) - -786f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-867f + -1341f)))), 130f, _wgslsmith_div_u32(u_input.b, ~abs(7753u)), select(var_0.wwz, select(var_0.zxw, vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x)), !var_0.x || all(var_0.ww))), global0[_wgslsmith_index_u32(56317u, 19u)] | 1i, var_0.x).a;
    var var_3 = Struct_1(var_0.x, _wgslsmith_div_i32(0i, -1i), ~firstLeadingBit(countOneBits(var_2.c)));
    var var_4 = u_input.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, -4609i, _wgslsmith_clamp_i32(var_2.b, select(1i, 42089i, true), reverseBits(global0[_wgslsmith_index_u32(0u, 19u)])) >> (~(~u_input.b) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) + _wgslsmith_div_f32(-176f, global2[_wgslsmith_index_u32(~81042u, 24u)])), _wgslsmith_f_op_f32(floor(1399f)), _wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-931f, global2[_wgslsmith_index_u32(u_input.b, 24u)], -662f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -402f, 294f))), !var_0.zwz)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 24u)] - var_1.x), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_4.x, 24u)], 1526f)), _wgslsmith_div_f32(-907f, 985f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global2[_wgslsmith_index_u32(var_4.x, 24u)], 1111f))))))), abs(abs(-vec4<i32>(u_input.a.x, u_input.a.x, var_3.b, -2147483647i)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(32608u, 15586u, 14378u, 25810u) ^ vec4<u32>(4294967295u, u_input.b, 1u, var_4.x), vec4<u32>(21345u, 4294967295u, u_input.c.x, 13881u), vec4<u32>(18661u, u_input.c.x, var_4.x, 131679u)) % vec4<u32>(32u))));
}

