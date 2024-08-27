struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 36242u, 40420u);

var<private> global1: f32 = 863f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<u32, 3>();
    var var_0 = true;
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    return arg_1.c;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    global0 = array<u32, 3>();
    return reverseBits(-_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(arg_2.a, vec4<i32>(-1i, -16267i, -65986i, 2147483647i))), ~(arg_2.a | vec4<i32>(-2147483647i, u_input.c.x, arg_2.b.x, -43430i))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), 112f, arg_0, true), Struct_1(vec4<i32>(u_input.a.x, u_input.c.x, -18796i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 1i), -763f, arg_0, false))) + arg_1.x))))) + _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.c.x, 1i, -1i)), func_3(vec4<bool>(true, arg_0, arg_0, false), vec2<bool>(arg_0, false), Struct_1(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.a.x), u_input.a, arg_1.x, arg_0, false), 0u)), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x)) & max(vec3<i32>(-1i, 2147483647i, -2147483647i), u_input.a), arg_1.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.c.x, 1i), vec4<i32>(0i, 1i, u_input.a.x, u_input.c.x)) | firstTrailingBit(vec4<i32>(53885i, 0i, u_input.c.x, 24776i)), u_input.a, _wgslsmith_f_op_f32(-414f - _wgslsmith_f_op_f32(ceil(-754f))), arg_0, false))));
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 3u)];
    var var_1 = Struct_1(vec4<i32>(20859i, _wgslsmith_sub_i32(59568i, ~(-9587i) | u_input.a.x), u_input.a.x, ~(-(u_input.a.x & -1i))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1319f, -670f), arg_1.x)))), true, _wgslsmith_dot_vec4_i32(vec4<i32>(1i & u_input.a.x, i32(-1i) * -2147483647i, 42938i, 1i), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) >= -39390i);
    global0 = array<u32, 3>();
    var var_2 = true;
    return _wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(~26818u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<u32>(_wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_mult_u32(28032u, u_input.b.x)), _wgslsmith_div_u32(select(60939u, u_input.b.x, false), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 3u)])), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 3u)], ~53947u), firstLeadingBit(_wgslsmith_mult_u32(45279u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]))), (~(vec4<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26852u, 3u)], 3u)], global0[_wgslsmith_index_u32(28545u, 3u)]) | vec4<u32>(0u, 1u, 4294967295u, global0[_wgslsmith_index_u32(22227u, 3u)])) | vec4<u32>(max(25063u, global0[_wgslsmith_index_u32(1u, 3u)]), reverseBits(u_input.b.x), u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 3u)])) | vec4<u32>(u_input.b.x, ~(50953u << (u_input.b.x % 32u)), 30518u, 12222u), !all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    var var_1 = 4294967295u & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~abs(43165u), 3u)], func_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(612f, 168f) + vec2<f32>(-469f, -1769f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, 322f)))));
    var_0 = select(abs(~select(~vec4<u32>(1u, 1u, 1u, 4294967295u), ~vec4<u32>(4294967295u, 48210u, 11275u, 0u), vec4<bool>(false, true, true, false))), ~vec4<u32>(~global0[_wgslsmith_index_u32(u_input.b.x & global0[_wgslsmith_index_u32(129442u, 3u)], 3u)], 44675u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 4294967295u), 3u)], _wgslsmith_mult_u32(var_0.x, 30212u)), 0u), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), !any(vec4<bool>(true, false, true, false))));
    var var_2 = vec4<i32>(u_input.a.x, 0i, -14603i, func_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false)), vec2<bool>(true, all(vec2<bool>(true, true))), Struct_1(~(vec4<i32>(1i, 24347i, -13218i, -1i) ^ vec4<i32>(-17340i, 2147483647i, u_input.a.x, u_input.c.x)), ~u_input.c, -295f, max(47640u, u_input.b.x) <= _wgslsmith_mod_u32(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 3u)], 3u)]), false), ~19820u).x);
    let var_3 = abs(~_wgslsmith_div_i32(~var_2.x, -63904i) << (func_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(822f, 331f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(509f, 241f), vec2<f32>(-1847f, 1000f), vec2<bool>(true, false))))) % 32u));
    var var_4 = 49651u;
    let var_5 = Struct_1(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(26404i, var_2.x, u_input.a.x, 14957i)) >> ((vec4<u32>(1u, u_input.b.x, 86268u, 0u) >> ((vec4<u32>(57938u, var_0.x, 49131u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(vec4<i32>(-21343i, var_2.x, u_input.c.x, u_input.a.x), vec4<i32>(-9489i, 4427i, -2147483647i, -34768i), true), vec4<i32>(u_input.a.x, -var_3, _wgslsmith_mod_i32(var_3, 10996i), u_input.a.x) | vec4<i32>(select(var_2.x, -21008i, true), 2147483647i, _wgslsmith_mod_i32(-2147483647i, -1i), 57002i)), firstLeadingBit(vec3<i32>(var_2.x, _wgslsmith_sub_i32(var_2.x, -1i), var_3)), _wgslsmith_f_op_f32(func_2(Struct_1(func_3(vec4<bool>(true, true, true, true), vec2<bool>(true, false), Struct_1(vec4<i32>(var_3, 53366i, var_2.x, var_3), vec3<i32>(var_2.x, u_input.a.x, 7478i), -1792f, true, true), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_0.x, 3u)], var_0.x)), u_input.c, -1471f, select(select(true, true, false), true, true), select(false, var_0.x <= 1u, all(vec3<bool>(false, true, true)))), Struct_1(-vec4<i32>(var_2.x, var_2.x, 2147483647i, 2147483647i), -u_input.c ^ ~vec3<i32>(1i, var_2.x, var_3), _wgslsmith_f_op_f32(308f * _wgslsmith_f_op_f32(trunc(-719f))), ~(-2147483647i) >= var_2.x, global0[_wgslsmith_index_u32(~var_0.x, 3u)] <= 0u))), true, -30220i > -u_input.a.x);
    let var_6 = Struct_1(vec4<i32>(var_2.x >> ((27018u ^ (global0[_wgslsmith_index_u32(4294967295u, 3u)] << (1u % 32u))) % 32u), 0i, _wgslsmith_mod_i32(~firstLeadingBit(1i), firstTrailingBit(i32(-1i) * -2147483647i)), ~(~_wgslsmith_div_i32(var_5.a.x, var_3))), var_2.yxw, _wgslsmith_f_op_f32(func_2(var_5, Struct_1(var_5.a, ~(var_5.a.yxx & u_input.c), -920f, true && var_5.d, true))), var_5.e, false);
    let var_7 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.c), 714f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, var_5.c)), vec2<f32>(var_6.c, 374f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1585f, var_5.c))), _wgslsmith_f_op_f32(-var_6.c))), vec3<u32>(u_input.b.x, ~_wgslsmith_sub_u32(select(global0[_wgslsmith_index_u32(41061u, 3u)], 3364u, var_5.e), var_0.x), var_0.x));
}

