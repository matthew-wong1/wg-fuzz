struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: vec4<u32> = vec4<u32>(37158u, 0u, 4948u, 1u);

var<private> global3: array<vec3<f32>, 16>;

var<private> global4: array<f32, 23> = array<f32, 23>(127f, -639f, 187f, -962f, 1691f, 1324f, -380f, 129f, -1361f, -2042f, -1381f, -1314f, -916f, 238f, 329f, 1049f, 1553f, -802f, -480f, 1535f, 934f, -750f, 971f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global2 = ~select(vec4<u32>(global2.x, 0u, global2.x, 8234u), firstTrailingBit(~(~vec4<u32>(0u, 70126u, global2.x, 40495u))), !(_wgslsmith_f_op_f32(297f - global4[_wgslsmith_index_u32(global2.x, 23u)]) <= global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, global2.x, global2.x), vec4<u32>(4294967295u, global2.x, 23668u, global2.x)), 23u)]));
    let var_0 = countOneBits(_wgslsmith_sub_i32(-u_input.a.x, u_input.a.x) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(54540u, 31730u, 0u, 54845u)), ~vec4<u32>(global2.x, global2.x, global2.x, global2.x)) % 32u));
    var var_1 = true;
    var var_2 = vec2<i32>(var_0, u_input.a.x);
    let var_3 = u_input.a.x;
    return false;
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    let var_0 = vec4<i32>(u_input.a.x, -52434i, -6224i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) << (1u % 32u)) & vec4<i32>(u_input.a.x, select(u_input.a.x, u_input.a.x, func_3()), u_input.a.x, countOneBits(abs(abs(u_input.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(~(1u << (_wgslsmith_div_u32(global2.x, global2.x) % 32u)), 8u)];
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~select(min(global2.x, 1u), ~global2.x, !var_1.b.x), global2.x), global2.yx);
    return ~global2.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(466f, -1000f))))), global4[_wgslsmith_index_u32(4294967295u, 23u)])));
    global4 = array<f32, 23>();
    global2 = vec4<u32>(21954u, arg_0.c.x, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_0.c.xx) | abs(1u));
    let var_1 = abs(vec4<i32>(arg_1.b.a & -2147483647i, select(_wgslsmith_div_i32(-59459i, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.a, 1i), vec2<i32>(0i, arg_0.a.a)), firstLeadingBit(vec2<i32>(u_input.a.x, arg_0.a.a))), arg_1.d), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1.b.a, -29075i, u_input.a.x, 16219i)), vec4<i32>(1i, arg_1.b.a, -25332i, arg_0.a.a)), firstLeadingBit(arg_0.b.a)));
    let var_2 = vec2<u32>(~firstLeadingBit(global2.x), firstLeadingBit(~(~(~1u))));
    return arg_1.c.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(-160f));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(floor(290f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), -1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, global4[_wgslsmith_index_u32(arg_0, 23u)])))), !vec2<bool>(select(true, true, false), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1270f, -690f))))))));
    global2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0 | _wgslsmith_clamp_u32(global2.x, 4294967295u, 1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(global2.x, global2.x), global2.x)), arg_0), func_4(Struct_2(global0[_wgslsmith_index_u32(72855u, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global2.x), 8u)], vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), global2.x, global2.x, func_2()), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global4[_wgslsmith_index_u32(arg_0, 23u)], var_0, var_0), vec4<f32>(var_0, 1228f, -226f, var_1.x)), vec4<f32>(var_0, global4[_wgslsmith_index_u32(global2.x, 23u)], -1314f, global4[_wgslsmith_index_u32(arg_0, 23u)]), global2.x > 1u))), Struct_2(global0[_wgslsmith_index_u32(~1u, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(global2.zy, vec2<u32>(4554u, global2.x))), 8u)], _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 62935u, arg_0, 0u), select(vec4<u32>(arg_0, arg_0, arg_0, global2.x), vec4<u32>(30739u, 13017u, 19136u, arg_0), false)), (1i >> (arg_0 % 32u)) != 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(662f, -406f, global4[_wgslsmith_index_u32(22333u, 23u)], 583f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 2766f, 504f, var_1.x), vec4<f32>(global4[_wgslsmith_index_u32(global2.x, 23u)], 749f, var_1.x, -2248f), vec4<bool>(false, true, true, false)))))), 20528u, global2.x);
    var var_2 = true;
    global2 = firstLeadingBit(~(~(~(~vec4<u32>(17886u, 74395u, 25377u, 50989u)))));
    return Struct_2(global0[_wgslsmith_index_u32(abs(global2.x), 8u)], Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 2147483647i, 21149i), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)) << (~1u % 32u), global1[_wgslsmith_index_u32(min(arg_0, 5717u), 12u)]), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0, 0u, global2.x, 1u)), vec4<u32>(1u, _wgslsmith_mult_u32(51751u, 24287u), 1u, ~109465u)), max((vec4<u32>(1u, 4294967295u, 4294967295u, 0u) | vec4<u32>(arg_0, global2.x, arg_0, 75517u)) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 25503u, 4294967295u), vec4<u32>(global2.x, 72815u, 4294967295u, global2.x)), vec4<u32>(~arg_0, arg_0, 4294967295u, 4294967295u))), true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1277f, -1282f, -1319f, 382f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global2.x, 23u)], var_1.x, var_1.x, global4[_wgslsmith_index_u32(arg_0, 23u)]) + vec4<f32>(453f, -517f, -524f, 1170f))))))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    global2 = vec4<u32>(~(~_wgslsmith_mod_u32(1u, ~1u)), 52904u, 0u, func_1(~(~global2.x)).c.x);
    let var_0 = ~33006u >> (arg_3.c.x % 32u);
    let var_1 = !arg_3.d;
    global1 = array<vec2<bool>, 12>();
    global4 = array<f32, 23>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.e.x, global4[_wgslsmith_index_u32(1u, 23u)], 711f, 780f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.e.x, -673f, 1000f, arg_0)))))), arg_3.e, select(!vec4<bool>(false, var_1, var_1, false), select(select(vec4<bool>(false, false, arg_3.a.b.x, arg_3.b.b.x), vec4<bool>(true, true, arg_3.a.b.x, true), var_1), !vec4<bool>(true, var_1, false, var_1), select(vec4<bool>(true, arg_3.a.b.x, false, false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, true, false, var_1))), !(!vec4<bool>(var_1, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(532u, global2.x), ~global2.zw), 4294967295u), 23u)], ~(abs(-vec2<i32>(u_input.a.x, u_input.a.x)) & ~max(u_input.a, u_input.a)), _wgslsmith_add_i32(-(~u_input.a.x), 0i), func_1(~(~global2.x)));
}

