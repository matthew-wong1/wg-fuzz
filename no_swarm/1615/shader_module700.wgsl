struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(0u, 4294967295u, 2911u, 1u, 1u, 32353u, 45773u, 4294967295u, 14949u, 1u);

var<private> global1: vec3<i32> = vec3<i32>(0i, -4272i, i32(-2147483648));

var<private> global2: bool = false;

var<private> global3: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(all(vec2<bool>(false, false)) || true, max(_wgslsmith_mult_i32(i32(-1i) * -35557i, ~u_input.a), abs(-1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1539f, 1309f) + _wgslsmith_f_op_f32(f32(-1f) * -980f)), vec3<bool>(true, true, true), -vec3<i32>(_wgslsmith_sub_i32(global1.x, global1.x), _wgslsmith_div_i32(global1.x, 16618i), -u_input.b.x)), Struct_1(!(_wgslsmith_f_op_f32(-425f - -637f) == _wgslsmith_f_op_f32(round(-2158f))), _wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-772f)))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(vec2<bool>(true, true))), ~u_input.b), countOneBits(abs(vec4<i32>(reverseBits(37542i), _wgslsmith_mult_i32(u_input.b.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zx), u_input.a))));
    let var_1 = all(!(!select(!vec4<bool>(false, var_0.b.d.x, var_0.a.d.x, var_0.a.d.x), select(vec4<bool>(false, false, var_0.b.d.x, true), vec4<bool>(false, var_0.a.a, var_0.b.a, var_0.b.a), false), vec4<bool>(false, var_0.a.a, false, var_0.a.a))));
    var var_2 = vec4<u32>(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(~abs(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18475u, 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)])), 10u)], ~(~(4294967295u ^ global0[_wgslsmith_index_u32(25458u, 10u)]))), 10u)], _wgslsmith_add_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(20653u, 10u)]), ~firstTrailingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(18947u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], 1u))), 2354u, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(6802u, 10u)]), 1u) << (0u % 32u), 0u));
    let var_3 = var_0.b.d.yy;
    global1 = vec3<i32>(-(global1.x & _wgslsmith_mod_i32(_wgslsmith_mod_i32(9866i, var_0.b.e.x), -7194i)), -(~(-_wgslsmith_sub_i32(31192i, 2346i))), -2147483647i);
    return ~_wgslsmith_mult_u32(var_2.x, _wgslsmith_div_u32(~firstTrailingBit(92543u), ~(global0[_wgslsmith_index_u32(var_2.x, 10u)] | 56115u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_5 {
    var var_0 = false;
    let var_1 = true;
    let var_2 = (~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79292u, 10u)], 10u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(4454u, global0[_wgslsmith_index_u32(33436u, 10u)], 0u, 0u))) ^ vec4<u32>(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 10u)], 10u)], 10u)]) | ~0u, ~(arg_0.x ^ arg_0.x), func_3() << (~arg_0.x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(28279u, 4294967295u, global0[_wgslsmith_index_u32(arg_0.x, 10u)]), vec3<u32>(4294967295u, 47488u, arg_0.x)))) | ~vec4<u32>(~(~global0[_wgslsmith_index_u32(arg_0.x, 10u)]), arg_0.x, _wgslsmith_mult_u32(arg_0.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), reverseBits(arg_0.x));
    var var_3 = _wgslsmith_add_i32(-arg_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_2.x, u_input.b.x, global1.x), vec4<i32>(-5886i, arg_1.x, u_input.b.x, u_input.b.x)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, arg_1.x, global1.x, arg_1.x), arg_1), arg_1), arg_1));
    var var_4 = arg_2.x >= abs(global1.x);
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(select(-1192f, -933f, var_1)), -1496f), vec4<f32>(-770f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2170f), _wgslsmith_f_op_f32(trunc(503f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, -1000f, -235f, 376f) - vec4<f32>(1108f, -1374f, -1000f, 216f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(308f, 1159f, 1471f, 269f))))), var_1)), var_1);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec2<f32>) -> Struct_1 {
    global3 = -45094i;
    let var_0 = 82303u;
    var var_1 = arg_1.a;
    global2 = true;
    global1 = arg_1.b.b.e;
    return Struct_1(all(vec4<bool>(all(!arg_0.b.d.xz), func_2(vec3<u32>(23798u, 4294967295u, 0u), max(vec4<i32>(-87388i, u_input.b.x, global1.x, arg_1.b.b.b), vec4<i32>(global1.x, -28682i, var_1.b, -2147483647i)), _wgslsmith_sub_vec2_i32(arg_0.b.e.yy, vec2<i32>(17615i, global1.x))).b, var_1.a, true & arg_2.b)), -28452i, _wgslsmith_f_op_f32(-1f), var_1.d, -_wgslsmith_mult_vec3_i32(vec3<i32>(-3074i, 1i, ~0i), arg_1.b.b.e));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    global3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, _wgslsmith_sub_i32(0i, abs(0i)), u_input.b.x), select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, global1.x, 0i), arg_1.c.wwz, u_input.b), firstTrailingBit(-u_input.b), vec3<bool>(true, true, true))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.c, arg_1.a.c, false))))));
    let var_1 = Struct_2(Struct_1(func_2(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32144u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)])), ~vec3<u32>(1u, 38498u, 4294967295u)), arg_1.c ^ vec4<i32>(2147483647i, u_input.a, arg_1.a.b, arg_1.b.b), -u_input.b.yz).b, -13111i, func_4(Struct_3(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2085u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 4294967295u, 4294967295u), Struct_1(arg_1.b.a, u_input.b.x, arg_1.a.c, arg_0, u_input.b), _wgslsmith_f_op_f32(exp2(arg_1.b.c)), 16644u), Struct_4(arg_1.a, Struct_3(vec3<u32>(639u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74792u, 10u)], 10u)], 1u), arg_1.a, 1477f, global0[_wgslsmith_index_u32(51437u, 10u)])), func_2(_wgslsmith_add_vec3_u32(vec3<u32>(38859u, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(114718u, 10u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 33759u, 1u)), vec4<i32>(-2147483647i, 1i, 2147483647i, 1i) >> (vec4<u32>(global0[_wgslsmith_index_u32(16063u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 25314u, 0u) % vec4<u32>(32u)), -vec2<i32>(u_input.a, arg_1.a.e.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), arg_1.b.c)).c, !func_4(Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(21617u, 10u)], 23169u, 4294967295u), Struct_1(arg_0.x, 0i, -310f, vec3<bool>(arg_1.b.a, false, false), u_input.b), -1492f, 8907u), Struct_4(arg_1.b, Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58831u, 10u)], 10u)]), arg_1.b, arg_1.a.c, 0u)), Struct_5(vec4<f32>(arg_1.a.c, -782f, 2822f, arg_1.a.c), arg_1.b.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.c, 603f))).d, abs(vec3<i32>(arg_1.b.e.x, 2147483647i, u_input.a) >> (vec3<u32>(1u, global0[_wgslsmith_index_u32(44276u, 10u)], global0[_wgslsmith_index_u32(22984u, 10u)]) % vec3<u32>(32u)))), Struct_1(arg_0.x, reverseBits(_wgslsmith_clamp_i32(reverseBits(-19649i), firstTrailingBit(2147483647i), u_input.b.x ^ 2147483647i)), -676f, arg_0, arg_1.c.xxw), _wgslsmith_add_vec4_i32(-(-arg_1.c ^ arg_1.c), arg_1.c));
    var var_2 = Struct_3(~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(8562u, 10u)], ~1u, 39054u)), func_4(Struct_3(~(~vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])), func_4(Struct_3(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)]), Struct_1(arg_1.a.a, 0i, 457f, arg_0, vec3<i32>(0i, arg_1.c.x, -2147483647i)), -201f, 17618u), Struct_4(Struct_1(true, arg_1.c.x, -401f, arg_0, vec3<i32>(0i, arg_1.c.x, -2147483647i)), Struct_3(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(18424u, 10u)], global0[_wgslsmith_index_u32(50755u, 10u)]), var_1.a, 140f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])), func_2(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec4<i32>(var_1.c.x, arg_1.c.x, -25708i, var_1.c.x), u_input.b.xy), vec2<f32>(1049f, 426f)), _wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18949u, 10u)], 10u)], select(3367u, 97428u, arg_0.x), ~1u)), Struct_4(Struct_1(17365i == arg_1.b.b, -53228i, _wgslsmith_f_op_f32(min(var_1.b.c, arg_1.b.c)), !vec3<bool>(true, false, var_1.b.d.x), -var_1.c.wyx), Struct_3(~vec3<u32>(17223u, 66983u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48196u, 10u)], 10u)], 10u)], 10u)]), func_4(Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(66051u, 10u)], global0[_wgslsmith_index_u32(4249u, 10u)]), var_1.a, -821f, 4294967295u), Struct_4(Struct_1(arg_1.b.a, 2147483647i, arg_1.a.c, arg_0, u_input.b), Struct_3(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(28209u, 10u)], 1u), Struct_1(arg_1.a.a, 2147483647i, arg_1.a.c, vec3<bool>(var_1.a.a, arg_1.b.a, false), var_1.b.e), arg_1.a.c, global0[_wgslsmith_index_u32(4294967295u, 10u)])), Struct_5(vec4<f32>(arg_1.b.c, arg_1.a.c, -1928f, arg_1.a.c), true), vec2<f32>(-845f, 916f)), _wgslsmith_f_op_f32(f32(-1f) * -348f), max(74414u, 122670u))), func_2(~vec3<u32>(4294967295u, 109735u, 4294967295u) ^ select(vec3<u32>(global0[_wgslsmith_index_u32(56107u, 10u)], 6909u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(19107u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48068u, 10u)], 10u)], 4294967295u), vec3<bool>(true, false, arg_1.a.a)), var_1.c, arg_1.a.e.yy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(sign(arg_1.a.c)))))), -786f, max(~abs(countOneBits(9934u)), firstLeadingBit(20529u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(arg_1.a.c, 558f), 1089f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1487f, arg_1.a.c))));
    return var_1;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global3 = 60469i;
    let var_0 = vec4<f32>(932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2021f, _wgslsmith_f_op_f32(floor(-1360f))), arg_0.a.c))), _wgslsmith_f_op_f32(min(arg_0.b.c, 845f)), arg_3.a.c);
    let var_1 = !(!any(vec4<bool>(arg_0.b.a, true, true, any(vec4<bool>(arg_3.a.a, false, arg_2, arg_3.b.a)))));
    var var_2 = Struct_4(func_5(vec3<bool>(arg_2, false, true), arg_3).a, Struct_3(~abs(select(vec3<u32>(59633u, arg_1.x, arg_1.x), arg_1.zyw, arg_3.b.d)), func_4(Struct_3(~arg_1.wxy, arg_3.a, -582f, max(0u, 1u)), Struct_4(arg_0.a, Struct_3(arg_1.zzw, arg_0.b, 874f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 10u)], 10u)])), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.x, global0[_wgslsmith_index_u32(1u, 10u)]), arg_1.wwy), ~arg_3.c, arg_0.c.wx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1998f, 2133f)))), 895f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(arg_1.x, 10u)] << (reverseBits(191u) % 32u), 10u)] >> (0u % 32u), 10u)]));
    let var_3 = Struct_4(arg_0.b, Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 11932u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(13183u, 51411u, 4294967295u, global0[_wgslsmith_index_u32(1u, 10u)]), arg_1)), Struct_1(true, firstLeadingBit(_wgslsmith_clamp_i32(arg_0.a.e.x, var_2.a.e.x, var_2.b.b.e.x)), _wgslsmith_f_op_f32(max(1252f, _wgslsmith_f_op_f32(f32(-1f) * -795f))), !select(vec3<bool>(false, false, arg_2), vec3<bool>(true, var_1, var_2.a.a), var_2.b.b.a), vec3<i32>(_wgslsmith_clamp_i32(arg_3.a.e.x, 2147483647i, global1.x), global1.x, var_2.a.e.x)), arg_3.b.c, select(global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(var_2.b.d)), 10u)], ~21384u, arg_2)));
    return var_2.a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = firstLeadingBit(28786i);
    var var_1 = func_6(func_5(vec3<bool>(true, true, true), Struct_2(func_4(Struct_3(vec3<u32>(62519u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)]), Struct_1(false, global1.x, 1000f, vec3<bool>(false, true, true), arg_0), 174f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), Struct_4(Struct_1(true, var_0, 413f, vec3<bool>(false, true, true), vec3<i32>(var_0, global1.x, 2147483647i)), Struct_3(vec3<u32>(1u, 1u, 4294967295u), Struct_1(true, var_0, 1304f, vec3<bool>(false, false, false), u_input.b), -432f, 41860u)), func_2(vec3<u32>(0u, 45425u, 4294967295u), vec4<i32>(global1.x, u_input.b.x, global1.x, arg_0.x), u_input.b.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, -1741f))), Struct_1(true, -var_0, _wgslsmith_f_op_f32(f32(-1f) * -1038f), vec3<bool>(true, false, false), abs(arg_0)), vec4<i32>(54105i, arg_0.x | arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-17949i, global1.x, arg_0.x), u_input.b), var_0))), vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(54321u, 10u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24469u, 10u)], 10u)] % 32u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(45121u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)] < 0u), 10u)], ~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10u)]), 10u)]), global0[_wgslsmith_index_u32((~1u ^ min(global0[_wgslsmith_index_u32(50727u, 10u)], 17961u)) >> (~firstLeadingBit(21433u) % 32u), 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])) | global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 4294967295u, 40134u)), 10u)], 10u)], 10u)], 10u)], 10u)], 21446u), false || all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), Struct_2(func_4(Struct_3(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 122387u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11605u, 10u)], 10u)], 10u)]), func_4(Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10677u), Struct_1(true, 1i, -199f, vec3<bool>(false, false, false), arg_0), 620f, 54492u), Struct_4(Struct_1(false, -2147483647i, 147f, vec3<bool>(true, false, false), vec3<i32>(var_0, arg_0.x, -1i)), Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 4222u, 4294967295u), Struct_1(false, -1i, -689f, vec3<bool>(true, false, true), vec3<i32>(var_0, 3798i, var_0)), 753f, 19723u)), Struct_5(vec4<f32>(-2914f, -105f, -257f, 1000f), true), vec2<f32>(1373f, -363f)), _wgslsmith_f_op_f32(f32(-1f) * -964f), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)]), Struct_4(func_4(Struct_3(vec3<u32>(30504u, 44188u, 36002u), Struct_1(false, -71693i, -649f, vec3<bool>(false, true, false), vec3<i32>(var_0, 9355i, 2147483647i)), 697f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86742u, 10u)], 10u)]), Struct_4(Struct_1(true, u_input.a, -120f, vec3<bool>(true, false, true), vec3<i32>(1i, -1i, u_input.a)), Struct_3(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34547u, 10u)], 10u)], 1u), Struct_1(true, 593i, 1278f, vec3<bool>(true, false, true), u_input.b), 424f, 1u)), Struct_5(vec4<f32>(145f, -250f, -1170f, -251f), false), vec2<f32>(-1408f, -355f)), Struct_3(vec3<u32>(62206u, 15342u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75565u, 10u)], 10u)], 10u)], 10u)]), Struct_1(true, -2147483647i, 248f, vec3<bool>(false, true, true), vec3<i32>(0i, global1.x, 1i)), -1000f, global0[_wgslsmith_index_u32(77744u, 10u)])), Struct_5(vec4<f32>(1f, 1f, 1f, 1f), all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-973f, -924f))))), func_5(vec3<bool>(true, true, true), Struct_2(func_5(vec3<bool>(true, true, true), Struct_2(Struct_1(false, u_input.a, -1187f, vec3<bool>(true, true, true), u_input.b), Struct_1(true, u_input.b.x, 1005f, vec3<bool>(false, false, true), vec3<i32>(2147483647i, var_0, var_0)), vec4<i32>(2147483647i, u_input.b.x, var_0, -5767i))).b, Struct_1(true, arg_0.x, 831f, vec3<bool>(true, true, true), arg_0), ~vec4<i32>(0i, -2147483647i, 19819i, var_0))).b, -firstLeadingBit(func_5(vec3<bool>(true, true, true), Struct_2(Struct_1(false, 2147483647i, -870f, vec3<bool>(false, false, false), vec3<i32>(18688i, u_input.a, -1878i)), Struct_1(true, -20299i, -341f, vec3<bool>(true, false, false), vec3<i32>(26877i, arg_0.x, 0i)), vec4<i32>(68405i, var_0, global1.x, -1i))).c)));
    global0 = array<u32, 10>();
    let var_2 = Struct_4(Struct_1(var_1.a, ~(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1876f)) * var_1.c), var_1.d, max(min(max(vec3<i32>(1i, -58825i, var_0), arg_0), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(-2147483647i, -12990i, 0i), var_1.e)), func_5(vec3<bool>(true, true, true), func_5(var_1.d, Struct_2(Struct_1(false, var_0, -478f, var_1.d, vec3<i32>(2147483647i, global1.x, var_1.e.x)), Struct_1(var_1.a, -1i, var_1.c, vec3<bool>(var_1.a, true, true), vec3<i32>(global1.x, 28590i, arg_0.x)), vec4<i32>(1i, var_0, -2147483647i, var_0)))).c.xwy)), Struct_3(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(15405u, 147359u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78608u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(35231u, 10u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 29829u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])), 2276u) | (vec3<u32>(1u, global0[_wgslsmith_index_u32(2572u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)]) | _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(2073u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44616u, 10u)], 10u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32962u, 10u)], 10u)], 10u)], 10u)], 10u)], 1u, global0[_wgslsmith_index_u32(42503u, 10u)]))), Struct_1(var_1.a, select(global1.x, var_1.e.x, var_1.d.x) << (select(global0[_wgslsmith_index_u32(46750u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90549u, 10u)], 10u)], 10u)], 10u)], var_1.a) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -2140f), select(vec3<bool>(false, var_1.a, false), func_4(Struct_3(vec3<u32>(67328u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68620u, 10u)], 10u)], 10u)], 10u)], 10u)], 1u), Struct_1(false, u_input.b.x, 842f, var_1.d, vec3<i32>(-4051i, -25501i, 54999i)), -1183f, 8480u), Struct_4(Struct_1(true, u_input.a, -1210f, vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x), var_1.e), Struct_3(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 10u)], 0u), Struct_1(var_1.d.x, -2147483647i, var_1.c, var_1.d, arg_0), var_1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50061u, 10u)], 10u)], 10u)])), Struct_5(vec4<f32>(var_1.c, 1306f, 1000f, -802f), var_1.a), vec2<f32>(-616f, -316f)).d, !var_1.a), ~(-u_input.b)), _wgslsmith_f_op_f32(-var_1.c), global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 10u)], abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])), 10u)]));
    var var_3 = -vec2<i32>(~firstLeadingBit(countOneBits(2147483647i)), global1.x << (global0[_wgslsmith_index_u32(var_2.b.d, 10u)] % 32u));
    return Struct_3(firstTrailingBit(~(vec3<u32>(var_2.b.a.x, 1u, 57927u) ^ var_2.b.a)), var_2.b.b, _wgslsmith_f_op_f32(1828f - func_6(Struct_2(Struct_1(false, -2147483647i, var_2.b.b.c, vec3<bool>(var_2.b.b.a, true, true), arg_0), var_2.b.b, ~vec4<i32>(2147483647i, 2645i, u_input.a, var_1.b)), vec4<u32>(min(var_2.b.d, var_2.b.d), countOneBits(1u), var_2.b.d, ~5282u), 44080i <= var_2.a.e.x, func_5(vec3<bool>(var_1.a, true, var_1.a), func_5(vec3<bool>(false, false, var_1.d.x), Struct_2(Struct_1(var_2.b.b.d.x, 1i, -1000f, vec3<bool>(true, true, true), vec3<i32>(-9888i, var_2.b.b.e.x, arg_0.x)), Struct_1(var_2.a.a, -6677i, var_1.c, var_2.b.b.d, u_input.b), vec4<i32>(var_1.e.x, var_0, global1.x, u_input.a))))).c), func_3());
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    var var_0 = 1f;
    global2 = arg_0.b.a;
    var var_1 = _wgslsmith_f_op_f32(min(arg_0.c, func_6(Struct_2(arg_0.b, func_4(arg_0, Struct_4(arg_0.b, Struct_3(vec3<u32>(73745u, 8205u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), arg_0.b, -1193f, 88168u)), func_2(arg_0.a, vec4<i32>(u_input.b.x, -1i, -1i, arg_0.b.b), global1.xx), vec2<f32>(-584f, arg_0.c)), vec4<i32>(global1.x, 11561i, 0i, arg_0.b.b) << ((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(101699u, 10u)], 10u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58761u, 10u)], 10u)]) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)], 19285u, arg_0.d)) % vec4<u32>(32u))), ~(~vec4<u32>(arg_0.d, global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], 1u, 36300u)) >> (~(vec4<u32>(arg_0.d, arg_0.d, arg_0.d, 4294967295u) ^ vec4<u32>(arg_0.d, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d, 10u)], 10u)], 0u)) % vec4<u32>(32u)), arg_0.b.a, func_5(!func_6(Struct_2(Struct_1(arg_0.b.a, global1.x, arg_0.b.c, arg_0.b.d, vec3<i32>(arg_0.b.b, 27277i, 3444i)), arg_0.b, vec4<i32>(1i, global1.x, global1.x, -12572i)), vec4<u32>(38890u, arg_0.d, arg_0.d, arg_0.d), false, Struct_2(Struct_1(true, u_input.b.x, 362f, vec3<bool>(arg_0.b.a, true, true), arg_0.b.e), arg_0.b, vec4<i32>(u_input.a, arg_0.b.e.x, 20030i, global1.x))).d, Struct_2(arg_0.b, Struct_1(arg_0.b.a, -15363i, -888f, arg_0.b.d, vec3<i32>(global1.x, -1i, global1.x)), vec4<i32>(u_input.b.x, global1.x, arg_0.b.e.x, arg_0.b.b)))).c));
    let var_2 = !vec3<bool>(arg_0.b.a, false, false & func_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, -31322i), arg_0.b.e)).b.d.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c)), 1928f, _wgslsmith_f_op_f32(trunc(310f)), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(818f, arg_0.c, arg_0.c, arg_0.b.c), vec4<f32>(arg_0.b.c, arg_0.b.c, -946f, arg_0.b.c))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), func_5(var_2, Struct_2(Struct_1(var_2.x, 1i, arg_0.c, vec3<bool>(arg_0.b.d.x, true, true), vec3<i32>(2147483647i, u_input.b.x, arg_0.b.e.x)), arg_0.b, vec4<i32>(2147483647i, -1i, -2147483647i, u_input.b.x))).a.c, _wgslsmith_f_op_f32(trunc(-1032f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(915f * 972f))))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(u_input.a), firstTrailingBit(u_input.a), -10977i, _wgslsmith_add_i32(u_input.b.x >> (abs(5452u >> (global0[_wgslsmith_index_u32(0u, 10u)] % 32u)) % 32u), -_wgslsmith_sub_i32(u_input.a, 38881i)));
    var var_1 = Struct_2(func_7(func_1(-u_input.b << (vec3<u32>(global0[_wgslsmith_index_u32(29049u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3716u, 10u)], 10u)], 1u) % vec3<u32>(32u)))), Struct_1(true, u_input.a >> (~_wgslsmith_clamp_u32(0u, 130676u, 0u) % 32u), func_2(~(~vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(893u, 10u)], 10u)])), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, 36362i, 32260i, -10801i), -vec4<i32>(0i, var_0.x, global1.x, global1.x)), firstLeadingBit(~vec2<i32>(u_input.a, var_0.x))).a.x, vec3<bool>(true, true, any(func_1(vec3<i32>(var_0.x, global1.x, global1.x)).b.d)), (~u_input.b ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, -21657i, global1.x), vec3<i32>(1i, -6331i, 20252i))) ^ ~u_input.b), ~reverseBits(vec4<i32>(24829i, global1.x, -19463i, -1270i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(63480u, 10u)], global0[_wgslsmith_index_u32(122797u, 10u)]), 1u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48060u, 10u)], 10u)], 4294967295u), ~0u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 1u, global0[_wgslsmith_index_u32(0u, 10u)], 110144u)), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 26732u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2550u, 10u)], 10u)], 10u)], 10u)])))) % vec4<u32>(32u)));
    var var_2 = -8393i;
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(0u, 10u)], 10288u), vec3<u32>(26208u, 30423u, 0u)), 10u)], 10u)], 10u)]), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(59634u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)]), max(31515u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 8814u)), 10u)])), ~13597u), (vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11635u, 10u)], 10u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 27218u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 5268u))) ^ (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32210u, 10u)], 10u)], 1u) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(59499u, 10u)], 7963u))) | abs(~(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(127543u, 10u)], 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))));
    var_0 = _wgslsmith_clamp_vec4_i32(-(var_1.c | reverseBits(max(vec4<i32>(u_input.a, global1.x, global1.x, u_input.b.x), vec4<i32>(var_0.x, 71522i, -29621i, var_1.a.e.x)))), (firstTrailingBit(-vec4<i32>(0i, -16044i, -33491i, 0i)) & select(reverseBits(var_1.c), abs(vec4<i32>(1i, -2147483647i, u_input.a, u_input.b.x)), select(vec4<bool>(false, var_1.a.d.x, var_1.a.a, false), vec4<bool>(var_1.a.d.x, false, var_1.a.d.x, false), var_1.a.d.x))) & select(select(abs(vec4<i32>(0i, global1.x, u_input.b.x, 7442i)), vec4<i32>(var_1.b.b, 1536i, global1.x, var_1.c.x), true), min(vec4<i32>(global1.x, var_0.x, -1i, var_1.a.e.x), min(var_1.c, var_1.c)), !select(vec4<bool>(var_1.a.d.x, var_1.b.d.x, var_1.a.a, false), vec4<bool>(var_1.b.d.x, var_1.b.d.x, var_1.b.d.x, false), vec4<bool>(true, false, var_1.a.a, false))), ~var_1.c);
    let var_4 = var_1.c ^ vec4<i32>(~(-2147483647i), var_0.x, var_1.b.b, -1i);
    let var_5 = Struct_1(!(!var_1.a.a), _wgslsmith_mod_i32(-min(-var_1.c.x, -u_input.b.x), -1874i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(func_4(func_1(u_input.b), Struct_4(Struct_1(var_1.a.d.x, -1i, -1000f, vec3<bool>(var_1.a.a, var_1.a.a, false), var_0.wyz), Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(var_3.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], 17629u), Struct_1(true, 76562i, var_1.b.c, var_1.b.d, vec3<i32>(var_0.x, var_4.x, 24270i)), var_1.a.c, 4294967295u)), func_2(vec3<u32>(var_3.x, 39253u, var_3.x), var_4, var_0.zw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, var_1.a.c))).c, func_6(Struct_2(Struct_1(true, 22484i, var_1.a.c, vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a), u_input.b), Struct_1(var_1.b.a, 2147483647i, 134f, vec3<bool>(var_1.b.d.x, true, var_1.b.d.x), vec3<i32>(global1.x, -2147483647i, 72069i)), vec4<i32>(-2147483647i, 2147483647i, var_0.x, var_0.x)), ~vec4<u32>(var_3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 92221u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), true, Struct_2(var_1.a, var_1.b, vec4<i32>(global1.x, var_1.c.x, var_1.a.e.x, global1.x))).c, var_1.a.a)))), func_1(-select(vec3<i32>(var_4.x, -30794i, var_1.a.b), var_4.zzz, vec3<bool>(false, var_1.b.d.x, var_1.b.d.x)) ^ (abs(vec3<i32>(1i, var_4.x, 34446i)) >> (vec3<u32>(var_3.x, global0[_wgslsmith_index_u32(0u, 10u)], var_3.x) % vec3<u32>(32u)))).b.d, vec3<i32>(i32(-1i) * -(~3005i), func_4(Struct_3(vec3<u32>(var_3.x, 12502u, 4294967295u) << (vec3<u32>(var_3.x, var_3.x, var_3.x) % vec3<u32>(32u)), var_1.b, 470f, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(var_3.x, 10u)], 61362u, var_1.b.d.x), 10u)]), Struct_4(var_1.b, Struct_3(vec3<u32>(var_3.x, 3403u, var_3.x), Struct_1(var_1.a.a, 0i, var_1.a.c, var_1.b.d, vec3<i32>(2147483647i, var_1.a.b, var_4.x)), var_1.a.c, 1u)), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1825f, 465f, var_1.a.c, var_1.a.c)), all(var_1.b.d)), vec2<f32>(func_2(vec3<u32>(1u, var_3.x, 1u), var_4, vec2<i32>(-2147483647i, var_1.b.b)).a.x, _wgslsmith_f_op_f32(172f + var_1.b.c))).e.x, var_4.x));
    var var_6 = 490f;
    let var_7 = ~select(_wgslsmith_add_u32(firstLeadingBit(global0[_wgslsmith_index_u32(firstLeadingBit(2209u), 10u)]), firstLeadingBit(global0[_wgslsmith_index_u32(var_3.x, 10u)] & var_3.x)), _wgslsmith_add_u32(abs(~var_3.x), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(64580u, 10u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6122u, 10u)], 10u)], 14523u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, global0[_wgslsmith_index_u32(~(~(~1u)), 10u)]), _wgslsmith_div_f32(var_5.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

