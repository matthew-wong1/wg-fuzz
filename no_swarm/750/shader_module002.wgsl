struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 45210u;

var<private> global2: array<bool, 15>;

var<private> global3: array<u32, 1> = array<u32, 1>(1u);

var<private> global4: Struct_1 = Struct_1(vec4<u32>(38100u, 0u, 1u, 43228u), true, 779f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_1(~abs(_wgslsmith_div_vec4_u32(~global4.a, global0.a)), global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.c, 1331f)))))))));
    global3 = array<u32, 1>();
    let var_2 = var_1.b;
    let var_3 = var_1;
    return !vec4<bool>(var_3.b, true, select(any(vec4<bool>(true, var_1.b, true, true)) & any(vec3<bool>(true, var_2, var_3.b)), var_2, any(select(vec2<bool>(false, false), vec2<bool>(global4.b, false), vec2<bool>(true, var_3.b)))), ~global3[_wgslsmith_index_u32(global0.a.x, 1u)] >= reverseBits(_wgslsmith_div_u32(28879u, 1u)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(~(vec4<u32>(_wgslsmith_clamp_u32(143219u, 30116u, arg_0), ~global4.a.x, arg_0, ~global3[_wgslsmith_index_u32(39168u, 1u)]) & (_wgslsmith_mult_vec4_u32(global4.a, global4.a) >> (vec4<u32>(78295u, global3[_wgslsmith_index_u32(arg_0, 1u)], 49206u, global4.a.x) % vec4<u32>(32u)))), true, global4.c);
    global2 = array<bool, 15>();
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0.a.zy, u_input.a.xz), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, var_0.a.xxz), 1u)], 88431u, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0, 24675u), 1u)]), select(vec4<u32>(arg_0, 51245u, global0.a.x, 1u) | _wgslsmith_div_vec4_u32(global4.a, u_input.d), ~select(var_0.a, global4.a, global0.b), func_3(firstLeadingBit(2147483647i)))), global2[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(1u, var_0.a.x))), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c + global4.c), _wgslsmith_f_op_f32(-var_0.c)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-524f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c))))));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(-arg_1.x, u_input.b.x, _wgslsmith_clamp_i32(~(-1i), -1i, abs(arg_1.x) ^ abs(u_input.b.x))), _wgslsmith_mod_i32(arg_1.x | _wgslsmith_sub_i32(u_input.b.x >> (u_input.d.x % 32u), u_input.b.x), ~0i));
    global1 = _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.a.x, arg_0, 33657u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(29316u, 1u)], 0u, 0u)), global0.a.yxy))), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, global3[_wgslsmith_index_u32(var_0.a.x, 1u)], 71919u, 43353u), global0.a ^ u_input.d)));
    return reverseBits(global4.a.zy);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<f32> {
    global3 = array<u32, 1>();
    let var_0 = vec4<i32>(~(~(-2147483647i & firstTrailingBit(u_input.b.x))), u_input.b.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(min(u_input.b, ~u_input.b), u_input.b), 1i), abs(~(~_wgslsmith_div_i32(u_input.b.x, 5231i))));
    var var_1 = func_2(_wgslsmith_mod_u32(0u, (0u << (~global0.a.x % 32u)) << (arg_0.a.x % 32u)), max(var_0.yzy, select(-vec3<i32>(15009i, -1i, u_input.b.x), reverseBits(var_0.zzz), global4.b || global2[_wgslsmith_index_u32(0u, 15u)])) & (_wgslsmith_mod_vec3_i32(var_0.wxw, var_0.wyw) | var_0.www));
    let var_2 = 1100f;
    let var_3 = Struct_1(global4.a, true || !any(vec4<bool>(global2[_wgslsmith_index_u32(68387u, 15u)], global4.b, false, false)), 368f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, var_3.c)), -567f, var_3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, -631f, -591f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, global0.c, 354f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, ~(~(~(global3[_wgslsmith_index_u32(0u, 1u)] >> (global0.a.x % 32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c, global0.c, global0.c), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(global0.a, false, -1000f), u_input.d.zw))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<u32>(var_0.x, u_input.a.x, global4.a.x, 1u), true, global0.c), ~global0.a.zy))))));
    var var_2 = min(var_0.x, 5439u >> ((17993u & min(var_0.x, ~u_input.a.x)) % 32u));
    let var_3 = Struct_1(vec4<u32>(max(_wgslsmith_clamp_u32(global0.a.x, 4294967295u, global4.a.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(11969u, 1u)], 1u)]) ^ (~u_input.c.x & _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 43340u, 48323u)), 1u, firstLeadingBit(~(~0u)), var_0.x), true, -138f);
    let var_4 = ~(~(-_wgslsmith_mult_i32(-u_input.b.x, 1i)));
    var var_5 = var_1;
    var_2 = 36489u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, var_4, var_4), max(vec4<i32>(var_4, var_4, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 16488i))), ~(~vec4<i32>(2147483647i, var_4, u_input.b.x, var_4)))), -462f, _wgslsmith_f_op_f32(f32(-1f) * -124f), ~vec3<i32>(firstTrailingBit(var_4), 1i >> (global0.a.x % 32u), u_input.b.x) | (((vec3<i32>(u_input.b.x, var_4, -1i) << (vec3<u32>(var_0.x, 16293u, global0.a.x) % vec3<u32>(32u))) & vec3<i32>(u_input.b.x, var_4, -4967i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-11321i, var_4, var_4), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -33173i), vec3<i32>(46179i, 2147483647i, 14065i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_4, -3546i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, -9382i), vec3<i32>(-3339i, var_4, 1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(673f, global4.c), _wgslsmith_f_op_f32(310f + global0.c), -824f, -315f))));
}

