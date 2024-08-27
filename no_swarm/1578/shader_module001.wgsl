struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(1192f, 881f, -1182f, 146f, 635f, -709f, 289f, -152f, -2113f, 1870f);

var<private> global1: array<i32, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = ~reverseBits(~vec3<u32>(~4294967295u, 1u, 1u));
    var_0 = ~u_input.d.zxy;
    let var_1 = ~(~(~(-24970i & firstLeadingBit(global1[_wgslsmith_index_u32(var_0.x, 26u)]))));
    let var_2 = select(vec4<bool>(!select(all(vec3<bool>(true, true, true)), false, true), true, _wgslsmith_div_u32(1u, 1u) < select(var_0.x, var_0.x, true), false), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, 2567u != u_input.a, global0[_wgslsmith_index_u32(u_input.c.x, 10u)] <= global0[_wgslsmith_index_u32(1u, 10u)])), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)) & (global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(96818u, 1u, u_input.c.x), 10u)] > -397f), true));
    var var_3 = !select(all(var_2), false, (true | any(var_2)) & any(var_2.yyy));
    return -1000f;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_1(min(u_input.d >> (vec4<u32>(countOneBits(u_input.a), 14953u, countOneBits(70793u), select(32741u, u_input.c.x, true)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a)), u_input.a, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 5816u, u_input.d.x, 0u) >> (vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)), u_input.d, vec4<u32>(0u, 62712u, 4294967295u, 40467u)), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.d.x), _wgslsmith_sub_u32(u_input.c.x, 11742u), 39190u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, 4294967295u), u_input.d)))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), ~0u)), select(~var_1.a.xz | var_1.a.zz, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(23751u, var_1.a.x)), vec2<u32>(0u, var_1.a.x)), true)), var_1.a.x, 16036u & var_1.a.x);
    var var_3 = 47597i;
    let var_4 = ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a.x, countOneBits(u_input.a)), 4294967295u), 1u);
    return ~_wgslsmith_div_u32(_wgslsmith_add_u32(~var_1.a.x, ~4294967295u) ^ ~u_input.d.x, _wgslsmith_add_u32(firstTrailingBit(var_1.a.x), ~_wgslsmith_mult_u32(1u, var_2.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_3;
    return vec2<u32>(~arg_3.a.x, func_2(arg_1.zw));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    let var_0 = ~(~(~vec3<u32>(~0u, 14851u >> (u_input.d.x % 32u), u_input.a << (79559u % 32u))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, ~11644u, var_0.x, 4294967295u)), firstLeadingBit(u_input.d), vec4<u32>(~var_0.x >> (~u_input.d.x % 32u), var_0.x, 1u, _wgslsmith_dot_vec2_u32(~var_0.xy, func_1(Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], -153f, global0[_wgslsmith_index_u32(var_0.x, 10u)])), vec4<i32>(1i, 1i, -4445i, global1[_wgslsmith_index_u32(var_0.x, 26u)]), 1345f, Struct_1(u_input.d))))));
    let var_2 = min(vec4<i32>(global1[_wgslsmith_index_u32(~1u, 26u)], select(-63212i, 2147483647i, true) << (~4294967295u % 32u), u_input.b, -(global1[_wgslsmith_index_u32(0u, 26u)] & -1i)) | vec4<i32>(-69022i, 12062i, u_input.b, abs(u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 26u)], u_input.b, -1i), vec4<i32>(-5876i, _wgslsmith_sub_i32(firstTrailingBit(57886i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, 41743u), 26u)]), -(~5530i), abs(i32(-1i) * -18588i))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2469f, -1140f, global0[_wgslsmith_index_u32(0u, 10u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 10u)], 1341f, -604f, 1454f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1624f, -1000f, global0[_wgslsmith_index_u32(var_1.a.x, 10u)], -1188f) + vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], -214f, -831f, global0[_wgslsmith_index_u32(24356u, 10u)]))))));
    let var_4 = vec2<f32>(-990f, _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(-var_3.a.x)));
    let var_5 = Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, var_1.a.x, 1u), vec4<u32>(4294967295u, 0u, var_0.x, var_0.x))), var_1.a << ((abs(vec4<u32>(var_1.a.x, var_1.a.x, 0u, 1u)) | _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(4294967295u, 0u, 15023u, 53262u))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-1i, 91236i, -53818i), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_0.x, 51352u), vec2<u32>(var_5.a.x, u_input.d.x)), vec2<u32>(var_0.x | var_0.x, u_input.a)), 26u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3.a, var_3.a, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2099f))))));
}

