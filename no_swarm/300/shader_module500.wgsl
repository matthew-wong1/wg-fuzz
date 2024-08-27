struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<bool>(true, false), Struct_1(23310i, vec2<bool>(false, true))), Struct_3(vec2<bool>(false, true), Struct_1(-1i, vec2<bool>(false, true))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_mult_u32(739u, ~firstTrailingBit(reverseBits(~4294967295u)));
    global1 = array<Struct_3, 2>();
    global0 = array<i32, 27>();
    return -select(_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, -2248i, arg_1.a, arg_1.a), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -1i, -1i, 7323i), arg_1.b.x), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(23970i, global0[_wgslsmith_index_u32(var_0, 27u)], 17530i, -26761i), vec4<i32>(arg_1.a, -1i, 23309i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(32405u, 27u)], global0[_wgslsmith_index_u32(22012u, 27u)], arg_1.a), vec4<i32>(-2147483647i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.a), vec4<i32>(-27664i, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_0, 27u)], -2147483647i)))), -(vec4<i32>(arg_1.a, global0[_wgslsmith_index_u32(var_0, 27u)], 0i, -14841i) >> (vec4<u32>(u_input.a, 1u, u_input.a, 36401u) % vec4<u32>(32u))) >> (vec4<u32>(1u, var_0, _wgslsmith_div_u32(0u, var_0), ~u_input.a) % vec4<u32>(32u)), !(!select(vec4<bool>(false, arg_1.b.x, arg_0, true), vec4<bool>(arg_1.b.x, arg_0, true, arg_0), vec4<bool>(true, true, arg_0, false))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = ~(u_input.a | ~1u);
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 27u)], vec2<bool>(!(u_input.a <= 6126u), false)), Struct_1(-71039i, vec2<bool>(true, false)), func_3(true, Struct_1(-9893i, vec2<bool>(true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3737f * -731f) + _wgslsmith_f_op_f32(208f * 461f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1558f, 821f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(751f, -1949f), vec2<f32>(439f, 982f))))))));
    global1 = array<Struct_3, 2>();
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 2u)];
    return Struct_3(var_1.a.b, Struct_1(1i ^ var_3.b.a, var_3.b.b));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    global1 = array<Struct_3, 2>();
    var var_0 = arg_2.b;
    let var_1 = ~firstTrailingBit(vec4<u32>(~u_input.a, ~reverseBits(0u), 4294967295u, 3837u));
    let var_2 = all(select(!func_2(-vec3<i32>(-2311i, arg_0.x, arg_1.a.a)).b.b, select(arg_1.b.b, vec2<bool>(false, arg_3.a.x), true), !select(true, arg_2.c.x < 0u, arg_3.b.b.x)));
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(355f, _wgslsmith_f_op_f32(f32(-1f) * -1396f))), -152f)) * -899f);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> f32 {
    global1 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-180f)), _wgslsmith_f_op_f32(trunc(1376f)), -290f));
    global0 = array<i32, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], arg_0.a.a, arg_1, -67992i)), Struct_2(arg_2.b, Struct_1(arg_2.b.a, vec2<bool>(true, arg_0.d.b.b.x)), countOneBits(vec4<i32>(-1i, 2147483647i, 4855i, 0i))), Struct_4(arg_2.b, false, ~vec4<u32>(u_input.a, 0u, 1u, arg_0.c.x), Struct_3(vec2<bool>(arg_2.b.b.x, arg_0.b), arg_2.b)), func_2(-vec3<i32>(0i, arg_2.b.a, arg_2.b.a))))));
    var var_2 = vec3<i32>(1i, arg_2.b.a ^ firstLeadingBit(-1i), -2287i);
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(1i, vec2<bool>(true, true)), false, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), global1[_wgslsmith_index_u32(1u, 2u)]), 0i, Struct_3(vec2<bool>(false, false), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 27u)], vec2<bool>(true, true))))) - 2071f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-675f)))))));
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 27u)] | 18583i, !vec2<bool>(func_2(vec3<i32>(-25155i, 2883i, 0i)).b.b.x, var_0.x <= 963f)), func_2(~select(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -6037i, 0i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 27u)], 0i, global0[_wgslsmith_index_u32(u_input.a, 27u)]), false), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(77713u, 27u)], -2147483647i), true)).b, ~vec4<i32>(global0[_wgslsmith_index_u32(reverseBits(countOneBits(33252u)), 27u)], -18249i, global0[_wgslsmith_index_u32(25658u, 27u)], global0[_wgslsmith_index_u32(~(u_input.a >> (u_input.a % 32u)), 27u)]));
    var var_2 = Struct_4(var_1.b, true, ~vec4<u32>(0u, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(22084u, u_input.a), vec2<u32>(6794u, u_input.a)), ~(~u_input.a)), func_2(vec3<i32>(-13910i, -1i, 14262i) | vec3<i32>(-32296i, func_2(vec3<i32>(var_1.b.a, global0[_wgslsmith_index_u32(41430u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])).b.a, global0[_wgslsmith_index_u32(u_input.a, 27u)] & 37935i)));
    var_2 = Struct_4(var_2.d.b, !var_1.a.b.x, var_2.c & var_2.c, Struct_3(!var_2.d.a, func_2(~(~var_1.c.zzw)).b));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-507f, -176f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))))))));
    let var_4 = _wgslsmith_dot_vec3_u32(~var_2.c.wxy, firstLeadingBit(vec3<u32>(79844u, u_input.a, var_2.c.x)));
    var_2 = Struct_4(Struct_1(func_2(~max(var_1.c.xxz, vec3<i32>(var_1.c.x, 14901i, global0[_wgslsmith_index_u32(u_input.a, 27u)]))).b.a, vec2<bool>(var_1.b.b.x, true)), reverseBits(u_input.a) < countOneBits(countOneBits(abs(1u))), ~vec4<u32>(14878u, _wgslsmith_mod_u32(24928u, 1u) >> (min(56404u, 0u) % 32u), ~0u, 1u), var_2.d);
    global1 = array<Struct_3, 2>();
    var var_5 = vec2<u32>(~(reverseBits(_wgslsmith_mult_u32(var_2.c.x, 81717u)) >> (27298u % 32u)), _wgslsmith_add_u32(4294967295u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_div_vec3_u32(vec3<u32>(3315u, var_2.c.x, var_2.c.x), var_2.c.zxw) >> (~vec3<u32>(5847u, var_4, u_input.a) % vec3<u32>(32u)))));
}

