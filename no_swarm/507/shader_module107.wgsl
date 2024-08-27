struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 14> = array<f32, 14>(1428f, -516f, -312f, -330f, -679f, 859f, 682f, -850f, 1021f, -201f, -447f, 1377f, -1273f, -1000f);

var<private> global2: array<vec3<bool>, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(1u, 14u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)], 660f, var_0.a) - vec4<f32>(-1652f, global1[_wgslsmith_index_u32(64748u, 14u)], -963f, -715f)))))), u_input.b, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b.x, 14u)])));
    var var_2 = _wgslsmith_add_i32(u_input.c, select(22117i & _wgslsmith_add_i32(abs(u_input.c), reverseBits(u_input.c)), ~abs(_wgslsmith_clamp_i32(u_input.c, u_input.c, -68243i)), any(global0.zx)));
    var var_3 = ~var_1.b;
    let var_4 = 1i;
    return Struct_2(-2261f);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    global0 = select(vec4<bool>(!(true | (false | arg_1)), true, !arg_3.b, any(select(select(vec4<bool>(true, arg_1, arg_1, global0.x), vec4<bool>(arg_3.b, arg_3.b, arg_3.b, arg_1), vec4<bool>(false, arg_3.b, arg_3.b, arg_1)), select(vec4<bool>(false, arg_3.b, true, global0.x), vec4<bool>(true, true, global0.x, true), vec4<bool>(arg_3.b, false, global0.x, true)), select(vec4<bool>(arg_3.b, true, true, arg_3.b), vec4<bool>(global0.x, true, global0.x, false), global0.x)))), !vec4<bool>(!all(vec3<bool>(true, true, true)), arg_3.b, select(true, true, true), true), true);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(197f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2091f)) + -914f))));
    var_0 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(_wgslsmith_mult_u32(arg_2.x, u_input.a) | 69146u), arg_0, _wgslsmith_sub_u32(arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_2.x), u_input.b))), 8u)]);
    let var_1 = !((_wgslsmith_mod_u32(countOneBits(16968u), arg_0 | 11751u) & 32034u) > _wgslsmith_add_u32(abs(reverseBits(27481u)), _wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_2.x), vec2<u32>(arg_0, 5099u), u_input.b.yx))));
    var var_2 = _wgslsmith_f_op_f32(-arg_3.c);
    return ~_wgslsmith_mult_i32(arg_3.a.x, u_input.c);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> i32 {
    global2 = array<vec3<bool>, 8>();
    let var_0 = 1i;
    var var_1 = vec4<u32>(~min(_wgslsmith_mod_u32(u_input.b.x ^ u_input.d, 0u), ~u_input.b.x), firstTrailingBit(u_input.b.x), u_input.a, _wgslsmith_add_u32((62005u & _wgslsmith_mult_u32(u_input.a, u_input.b.x)) >> (u_input.a % 32u), 6175u));
    let var_2 = !global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(abs(0u), var_1.x)), 8u)];
    var var_3 = arg_2;
    return _wgslsmith_mod_i32(10456i & (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-65893i, u_input.c, var_0, arg_0.x)), vec4<i32>(var_0, arg_1.x, arg_1.x, var_0)) & var_0), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    let var_0 = func_1(global2[_wgslsmith_index_u32(min(~0u, u_input.d), 8u)]);
    let var_1 = vec2<i32>(firstTrailingBit(u_input.c), func_3(vec3<i32>(-(~u_input.c), -31856i, 1i), vec3<i32>(func_2(15464u, any(vec3<bool>(global0.x, false, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), vec2<u32>(u_input.d, u_input.a), vec2<u32>(15636u, u_input.d)), Struct_3(vec2<i32>(u_input.c, -7612i), true, var_0.a, Struct_2(1261f))), u_input.c, _wgslsmith_mod_i32(min(u_input.c, -2147483647i), ~u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(select(-431f, _wgslsmith_f_op_f32(round(182f)), true)), var_0.a)));
    let var_2 = func_1(vec3<bool>(global0.x, -977f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-910f, 1192f))), false));
    var var_3 = ~abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.d, 8964u), vec4<u32>(34165u, 4294967295u, u_input.b.x, u_input.d)), abs(vec4<u32>(u_input.b.x, 1u, 100510u, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1072f, 1224f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], var_0.a), global0.yy)), _wgslsmith_div_vec2_f32(vec2<f32>(-570f, var_2.a), vec2<f32>(var_2.a, global1[_wgslsmith_index_u32(0u, 14u)])))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 14u)]))))), vec4<i32>(u_input.c | var_1.x, -6306i, ~_wgslsmith_clamp_i32(u_input.c, var_1.x, _wgslsmith_mult_i32(1i, 897i)), 0i), vec4<i32>(abs(13430i), -2147483647i, -18242i << ((1u ^ (u_input.b.x >> (u_input.b.x % 32u))) % 32u), reverseBits(-18499i)));
}

