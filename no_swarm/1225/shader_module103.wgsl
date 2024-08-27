struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 23>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-616f, -819f, 444f, -274f)), Struct_1(vec4<f32>(112f, 278f, 1134f, 1340f)), Struct_1(vec4<f32>(113f, -2450f, 921f, -1402f)), Struct_1(vec4<f32>(-1839f, -598f, -2225f, 996f)), Struct_1(vec4<f32>(-379f, -360f, -222f, -345f)), Struct_1(vec4<f32>(109f, 977f, 698f, -287f)), Struct_1(vec4<f32>(509f, -1456f, 1477f, 124f)), Struct_1(vec4<f32>(-655f, 1057f, -2113f, -1299f)), Struct_1(vec4<f32>(464f, 1000f, -1694f, 569f)), Struct_1(vec4<f32>(157f, -433f, -155f, 2523f)), Struct_1(vec4<f32>(1153f, -651f, -332f, 1360f)), Struct_1(vec4<f32>(783f, 994f, -545f, 1063f)), Struct_1(vec4<f32>(618f, -1919f, 917f, 597f)), Struct_1(vec4<f32>(233f, 945f, -279f, -574f)), Struct_1(vec4<f32>(881f, -556f, -336f, 162f)), Struct_1(vec4<f32>(-396f, -1426f, 653f, -1167f)), Struct_1(vec4<f32>(400f, -625f, 406f, -162f)), Struct_1(vec4<f32>(-1213f, 1147f, -900f, -1445f)), Struct_1(vec4<f32>(-1131f, 1093f, -1902f, 331f)), Struct_1(vec4<f32>(-639f, -1186f, 1000f, -1172f)), Struct_1(vec4<f32>(-694f, -268f, -1279f, 208f)), Struct_1(vec4<f32>(-276f, -127f, 1018f, 399f)), Struct_1(vec4<f32>(-307f, -109f, 1235f, -1353f)), Struct_1(vec4<f32>(-494f, -123f, -2806f, -859f)), Struct_1(vec4<f32>(-137f, 2038f, -1000f, -2240f)), Struct_1(vec4<f32>(-668f, 191f, -852f, -1021f)), Struct_1(vec4<f32>(-666f, -244f, -599f, 1453f)), Struct_1(vec4<f32>(1000f, -406f, -1000f, 976f)), Struct_1(vec4<f32>(-879f, -1291f, -745f, 2107f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global2 = select(!(!select(select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global2.x, true)), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global2.x, true, global2.x)), vec4<bool>(global0.x, true, global2.x, global2.x))), vec4<bool>(!((global0.x || global2.x) || any(vec2<bool>(false, true))), global2.x, all(!select(vec4<bool>(global0.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global0.x, global2.x, global0.x, global0.x))), global2.x), select(select(vec4<bool>(global2.x, true, false, select(global0.x, global2.x, false)), vec4<bool>(false, global0.x, true, false), select(vec4<bool>(false, global0.x, false, global2.x), select(vec4<bool>(false, global2.x, false, global0.x), vec4<bool>(global0.x, true, true, true), global2.x), vec4<bool>(global2.x, global0.x, true, false))), select(!vec4<bool>(global2.x, global0.x, global0.x, global2.x), vec4<bool>(false, all(global2.zyx), global0.x, true), ~u_input.a.x == abs(34771u)), global2.x));
    var var_0 = select(select(!vec4<bool>(!global2.x, true, true, global0.x), !select(!vec4<bool>(global2.x, false, true, false), select(vec4<bool>(global0.x, true, global2.x, global2.x), vec4<bool>(global2.x, false, global0.x, global2.x), vec4<bool>(false, global0.x, global2.x, true)), vec4<bool>(true, false, global0.x, global2.x)), !select(!vec4<bool>(global2.x, global2.x, global0.x, true), !vec4<bool>(global0.x, false, false, false), true)), select(!vec4<bool>(!global0.x, true, select(true, global0.x, false), u_input.a.x > 1u), vec4<bool>(false, true, !(!global2.x), (u_input.a.x == 0u) || false), select(select(select(vec4<bool>(false, true, global2.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), select(vec4<bool>(false, false, false, global2.x), vec4<bool>(false, true, true, true), vec4<bool>(global0.x, true, global0.x, global0.x)), !global0.x), select(select(vec4<bool>(global2.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, global2.x, true, false)), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, false, false, global2.x)), vec4<bool>(global2.x, true, global0.x, false)), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(false, true, global0.x, global2.x), !vec4<bool>(global0.x, true, true, false)))), all(global2.wz));
    let var_1 = ~1u;
    let var_2 = ~11481u;
    let var_3 = global3[_wgslsmith_index_u32(max(countOneBits(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, 25022u), vec4<u32>(u_input.a.x, 0u, 14674u, u_input.a.x)), ~41606u))), var_2), 29u)];
    return _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, 104403u), u_input.a), abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, var_1, 0u)))));
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = Struct_2(any(select(global2.zz, vec2<bool>(true, global0.x), all(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global2.x, global0.x, true))))), ~abs(_wgslsmith_sub_u32(func_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 2650i, -1i)), u_input.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(0u & u_input.a.x), ~(~_wgslsmith_mult_u32(u_input.a.x, 29757u))), 23u)]);
    let var_1 = Struct_3(-_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-18562i, -2147483647i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(true, global0.x)), countOneBits(vec2<i32>(var_0.c, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])))));
    var var_2 = vec4<bool>(!global2.x, true, any(select(vec4<bool>(true, false, var_0.a, select(false, global0.x, true)), select(select(vec4<bool>(global0.x, false, global0.x, var_0.a), vec4<bool>(false, global0.x, global0.x, true), global2.x), vec4<bool>(global0.x, true, false, global0.x), global2.x), any(vec3<bool>(false, global2.x, global2.x)))), true);
    var var_3 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.b, countOneBits(u_input.a.x)), 27383u);
    var var_4 = Struct_1(vec4<f32>(-1000f, arg_0, arg_1, -772f));
    return func_3((_wgslsmith_div_vec3_i32(abs(vec3<i32>(0i, var_0.c, 1i)), vec3<i32>(-2925i, var_0.c, -1i)) | max(min(vec3<i32>(1i, var_0.c, 42196i), vec3<i32>(-1i, -18936i, 0i)), reverseBits(vec3<i32>(-15670i, 16652i, var_0.c)))) >> (_wgslsmith_div_vec3_u32(min(min(vec3<u32>(u_input.a.x, u_input.a.x, 25772u), u_input.a), vec3<u32>(var_0.b, 0u, 0u)), ~(u_input.a >> (vec3<u32>(var_0.b, 4294967295u, 820u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(1983u, 0u) >> (max(u_input.a.x, ~func_2(-785f, -229f)) % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(16929u, 50446u, 4294967295u, u_input.a.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 3070u, 31731u, 4294967295u), vec4<u32>(u_input.a.x, 40756u, 0u, 24873u))), select(countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(0u & u_input.a.x, u_input.a.x, ~u_input.a.x, ~54368u), select(!vec4<bool>(global2.x, global0.x, global2.x, false), select(vec4<bool>(global2.x, false, false, global0.x), vec4<bool>(global0.x, true, true, false), global0.x), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global2.x, false, false, true), vec4<bool>(global0.x, global0.x, false, true))))), 4294967295u);
    let var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-firstLeadingBit(u_input.b), ~(-2147483647i)), firstLeadingBit(vec2<i32>(u_input.b, u_input.b << (1u % 32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(310f, -304f)) - _wgslsmith_div_f32(212f, 988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(242f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1254f)))))));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(691f, -214f, -908f, -1747f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a)))));
    var var_4 = var_2;
    return _wgslsmith_mod_vec3_u32(max(var_0.xwx, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a & firstLeadingBit(var_0.wxy))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(1249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(647f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - var_0));
    var var_2 = any(!(!vec4<bool>(true, var_0 == 148f, !global2.x, false)));
    global0 = global2.zw;
    let var_3 = vec2<f32>(var_1, var_0);
    global1 = array<i32, 23>();
    var var_4 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x)) << (func_1() % vec3<u32>(32u))) >> (~vec3<u32>(8025u, _wgslsmith_mult_u32(u_input.a.x, 0u), 10435u) % vec3<u32>(32u)), func_1());
    let var_5 = 4294967295u;
    let var_6 = !global2.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-3846i, 1i, 34908i, i32(-1i) * -7142i), (vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(var_5, 23u)], 2147483647i, -14119i) << (vec4<u32>(72529u, var_5, 24632u, u_input.a.x) % vec4<u32>(32u))) & -(vec4<i32>(-25641i, 0i, u_input.b, global1[_wgslsmith_index_u32(7336u, 23u)]) & vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(var_5, 23u)], 23017i))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(var_4.yx, vec2<u32>(4294967295u, 1u)), ~func_3(vec3<i32>(-4715i, 12457i, global1[_wgslsmith_index_u32(var_5, 23u)])), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4.x, var_4.x, var_4.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x))), u_input.a, _wgslsmith_f_op_f32(-1946f * var_0), vec3<u32>(0u, min(_wgslsmith_mod_u32(var_4.x, var_5), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 0u), var_4.x ^ var_4.x)), var_4.x));
}

