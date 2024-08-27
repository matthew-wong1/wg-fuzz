struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u);

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_1(1u), 0i), Struct_3(Struct_1(42190u), 0i), Struct_3(Struct_1(102879u), i32(-2147483648)), Struct_3(Struct_1(24204u), -41302i));

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    global0 = arg_0.a;
    var var_0 = arg_2.b;
    return ~abs(abs(vec4<u32>(_wgslsmith_div_u32(var_0.a, 33861u), arg_0.a.a, 4294967295u, _wgslsmith_sub_u32(20673u, arg_2.a.a))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec2<u32>(arg_2.a.a, ~arg_2.a.a);
    global0 = var_0.a;
    global3 = 0i;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(32411u, ~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54832u, u_input.c), vec3<u32>(u_input.d, u_input.e.x, arg_2.a.a)), _wgslsmith_sub_u32(0u, var_0.a.a)), min(_wgslsmith_div_vec4_u32(func_2(Struct_3(Struct_1(arg_2.a.a), -38079i), arg_0, arg_2, 666i), ~vec4<u32>(1883u, 0u, 52330u, 92795u)), vec4<u32>(u_input.b, global0.a, var_0.b.a, u_input.e.x) & (vec4<u32>(arg_2.b.a, 136470u, u_input.d, 4294967295u) ^ vec4<u32>(0u, 1u, arg_2.b.a, 15711u))), select(!(!vec4<bool>(arg_1, arg_1, false, arg_1)), select(vec4<bool>(false, true, false, arg_1), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_1, true, arg_0, true)), arg_2.e.x > 149f), vec4<bool>(true, arg_1, !arg_1, arg_1))), vec4<u32>(global0.a, 80185u, countOneBits(select(abs(4294967295u), ~global0.a, !arg_1)), var_1.x)), 4u)];
    return 1000f;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = vec2<u32>(max(1744u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.a, 24754u, 0u, u_input.d) << (vec4<u32>(64661u, global0.a, u_input.d, global0.a) % vec4<u32>(32u))), func_2(Struct_3(Struct_1(1u), arg_0.x), all(arg_1), Struct_2(Struct_1(22883u), Struct_1(u_input.c), vec2<f32>(-1329f, 588f), vec4<i32>(32261i, 1811i, arg_0.x, u_input.a.x), vec4<f32>(135f, 955f, 423f, -1636f)), -30563i))), ~u_input.d);
    var var_1 = Struct_2(Struct_1(reverseBits(0u)), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(3347u, u_input.c, u_input.b, 4294967295u), ~vec4<u32>(20202u, 34663u, 1u, var_0.x)) ^ (_wgslsmith_div_u32(u_input.d, 1u) & u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-900f)))), _wgslsmith_f_op_f32(func_3(true, !arg_1.x & true, Struct_2(Struct_1(u_input.e.x), Struct_1(global0.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-672f, -1000f), vec2<f32>(-765f, -646f))), countOneBits(vec4<i32>(u_input.a.x, -76062i, -14123i, -45878i)), _wgslsmith_div_vec4_f32(vec4<f32>(1417f, -1014f, -350f, 1218f), vec4<f32>(1000f, -1037f, -139f, 1000f)))))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 0i), 55802i, select(2147483647i, -44736i, true), ~arg_0.x), select(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, u_input.a.x), reverseBits(vec4<i32>(-1i, 2147483647i, arg_0.x, u_input.a.x)), true & arg_1.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1060f, 563f, -2018f, 362f), vec4<f32>(-1515f, 254f, 251f, 1113f), arg_1.x))))))));
    var var_2 = var_1.d;
    let var_3 = Struct_2(var_1.a, Struct_1(func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~43700u), 4u)], !arg_1.x, Struct_2(Struct_1(var_1.a.a), Struct_1(u_input.c), var_1.e.zx, vec4<i32>(-47791i, u_input.a.x, 38583i, arg_0.x), vec4<f32>(var_1.c.x, var_1.e.x, -556f, 389f)), reverseBits(~u_input.a.x)).x), var_1.c, min(~vec4<i32>(u_input.a.x & 1i, ~(-14245i), min(var_1.d.x, -1i), abs(u_input.a.x)), select(-_wgslsmith_div_vec4_i32(var_1.d, vec4<i32>(-1i, var_2.x, -6828i, var_2.x)), ~select(var_1.d, vec4<i32>(var_2.x, 891i, var_2.x, u_input.a.x), vec4<bool>(false, true, arg_1.x, arg_1.x)), vec4<bool>(!arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), false, !arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_1.e, vec4<f32>(-902f, var_1.e.x, 679f, -1167f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -496f, -295f, -265f) - vec4<f32>(-113f, var_1.c.x, var_1.e.x, var_1.e.x)), false))))));
    let var_4 = vec4<i32>(~(-arg_0.x), var_1.d.x, ~(~1i) >> (var_1.b.a % 32u), ~var_3.d.x);
    return ~countOneBits(7813u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 4294967295u, 46208u, 4294967295u) >> (vec4<u32>(0u, global0.a, 0u, u_input.e.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.e.x, u_input.b, u_input.e.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, 17170u, global0.a, 13530u), vec4<u32>(u_input.d, 65118u, u_input.e.x, global0.a), vec4<u32>(66339u, 4294967295u, 14898u, 52986u)))), abs(~(~(vec4<u32>(global0.a, u_input.d, global0.a, 4294967295u) ^ vec4<u32>(0u, u_input.b, 12413u, u_input.c)))));
    let var_1 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(366f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1337f - -713f) + 1000f)) | (_wgslsmith_dot_vec4_u32(min(vec4<u32>(40040u, var_0.x, global0.a, u_input.e.x), vec4<u32>(global0.a, global0.a, global0.a, var_0.x)), vec4<u32>(u_input.d, global0.a, 4294967295u, 4294967295u) << (var_0 % vec4<u32>(32u))) <= func_1(reverseBits(vec3<i32>(1i, 3061i, 11096i)), vec3<bool>(true, true, false))));
    global1 = -u_input.a.x;
    global3 = _wgslsmith_div_i32(-u_input.a.x, max(_wgslsmith_mod_i32(~(-u_input.a.x), u_input.a.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -33754i), countOneBits(_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, -35628i))))));
    let var_2 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - -1551f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(false, true, Struct_2(Struct_1(6585u), Struct_1(90883u), vec2<f32>(178f, -2167f), vec4<i32>(u_input.a.x, 12567i, u_input.a.x, 2147483647i), vec4<f32>(-1701f, 483f, 388f, 720f)))))), var_1)), 533f)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-1i, 0i), u_input.a.x, u_input.a.x | (u_input.a.x & u_input.a.x), ~(-2147483647i))));
}

