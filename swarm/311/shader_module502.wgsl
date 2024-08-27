struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 7839u, 0u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 20513u, 38056u, 1u, 67323u, 43899u, 64264u, 15384u, 0u, 17990u, 0u, 21363u);

var<private> global2: f32 = 1953f;

var<private> global3: array<vec4<f32>, 20>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    global1 = array<u32, 19>();
    global0 = array<vec2<i32>, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.b.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.e.x, 399f, -318f, arg_1.b.x))))) * vec4<f32>(arg_0.b.e.x, -911f, _wgslsmith_f_op_f32(-arg_0.b.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.e.a.e.x, _wgslsmith_f_op_f32(select(-669f, 1008f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1522f)))));
    var var_1 = select(vec2<bool>(true, true), arg_1.e.d.xw, !select(select(select(arg_1.e.d.yx, vec2<bool>(false, arg_1.e.d.x), arg_0.a.x), arg_0.a, arg_1.e.d.ww), arg_1.e.d.ww, true));
    global3 = array<vec4<f32>, 20>();
    return min(-20166i, 0i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1338f, _wgslsmith_f_op_f32(-1352f - _wgslsmith_f_op_f32(arg_2.b.a.x + arg_3.x))))));
    global2 = _wgslsmith_f_op_f32(abs(arg_0));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global0 = array<vec2<i32>, 16>();
    let var_0 = Struct_4(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(-24594i, 0i, u_input.a, arg_2.b.c), vec4<i32>(5365i, -32777i, 2815i, u_input.a), vec4<bool>(arg_2.a.x, arg_2.a.x, true, false)) & vec4<i32>(u_input.a, arg_2.b.c, u_input.a, 28831i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -7429i, u_input.a), ~vec4<i32>(arg_2.b.c, arg_2.b.c, arg_2.b.c, 68681i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.a.x, -1491f), -273f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_2.b.a.x)))))), _wgslsmith_mult_u32(48815u, abs(arg_2.b.b.x)), func_3(Struct_2(arg_2.a, Struct_1(arg_3, arg_2.b.b, -1689i, global3[_wgslsmith_index_u32(arg_2.b.b.x, 20u)], _wgslsmith_f_op_vec3_f32(arg_2.b.d.zxw - arg_2.b.d.wyz))), Struct_4(~vec4<i32>(u_input.a, arg_2.b.c, -2147483647i, -2147483647i) << (reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b.b.x, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 1u, 1u)) % vec4<u32>(32u)), arg_2.b.a, ~3849u >> (arg_2.b.b.x % 32u), abs(arg_2.b.c), Struct_3(Struct_1(vec2<f32>(arg_2.b.a.x, arg_2.b.e.x), vec3<u32>(arg_2.b.b.x, 0u, global1[_wgslsmith_index_u32(0u, 19u)]), u_input.a, arg_2.b.d, vec3<f32>(arg_3.x, arg_2.b.d.x, arg_2.b.a.x)), Struct_2(vec2<bool>(arg_2.a.x, false), arg_2.b), global1[_wgslsmith_index_u32(78210u, 19u)], vec4<bool>(true, arg_2.a.x, arg_1, arg_2.a.x)))), Struct_3(arg_2.b, arg_2, global1[_wgslsmith_index_u32(0u, 19u)], !select(select(vec4<bool>(arg_2.a.x, true, true, arg_1), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(arg_1, false, true, true), any(vec2<bool>(arg_2.a.x, false)))));
    return Struct_4(select(vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.a, arg_2.b.c), -58581i, ~(-33906i), 1i) | vec4<i32>(0i | var_0.d, ~arg_2.b.c, var_0.e.a.c, 1i), vec4<i32>(_wgslsmith_sub_i32(-1i, arg_2.b.c), 1i, 0i ^ arg_2.b.c, select(u_input.a, 0i, all(vec2<bool>(arg_2.a.x, true)))), true), var_0.e.b.b.e.zz, global1[_wgslsmith_index_u32(var_0.e.c, 19u)] << ((arg_2.b.b.x ^ arg_2.b.b.x) % 32u), u_input.a, Struct_3(Struct_1(_wgslsmith_div_vec2_f32(arg_3, var_0.b), var_0.e.a.b, ~_wgslsmith_div_i32(-21764i, var_0.d), _wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u & arg_2.b.b.x, 19u)], 20u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-383f, var_0.e.a.d.x, 328f, 468f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(828f, arg_3.x, arg_3.x) * arg_2.b.d.yzx), _wgslsmith_f_op_vec3_f32(arg_2.b.d.zyy * arg_2.b.d.wxz), select(var_0.e.d.xyx, var_0.e.d.wyx, var_0.e.d.wzw)))), Struct_2(select(vec2<bool>(true, arg_1), vec2<bool>(arg_2.a.x, var_0.e.d.x), !arg_2.a), var_0.e.a), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43931u, 73738u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.b.b.x, 19u)], 19u)]), vec4<u32>(var_0.e.c, var_0.c, global1[_wgslsmith_index_u32(67136u, 19u)], 1u), vec4<u32>(18960u, var_0.e.c, arg_2.b.b.x, 27896u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.e.a.b.x, var_0.c, var_0.c, arg_2.b.b.x)), vec4<u32>(global1[_wgslsmith_index_u32(var_0.e.c, 19u)], 21038u, arg_2.b.b.x, 1u))), var_0.e.d));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2) != arg_2, Struct_2(vec2<bool>(arg_3, arg_3), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -106f), vec2<f32>(arg_2, arg_2)))), ~(~vec3<u32>(4294967295u, 42452u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)])), arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, arg_2, -269f, -1273f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2, 1112f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, arg_2, arg_2))))), vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -815f))))));
    let var_1 = ~abs(var_0.d);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(8957u, global1[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.c, 19u)], 19u)], 4294967295u, 4294967295u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(64439u, 19u)], var_0.e.c, 30441u)), 19u)]), abs(max(max(var_0.e.b.b.b.xz, vec2<u32>(1u, var_0.e.b.b.b.x)), ~vec2<u32>(0u, global1[_wgslsmith_index_u32(var_0.c, 19u)])))) << (vec2<u32>(~(~var_0.c), firstTrailingBit(23693u)) % vec2<u32>(32u));
    let var_3 = !(!(!arg_3));
    let var_4 = ~vec2<u32>(var_2.x, var_2.x);
    return var_0.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = reverseBits(~1i);
    var var_0 = func_1(select(~abs(min(vec4<i32>(39753i, -39656i, u_input.a, u_input.a), vec4<i32>(1i, 1i, u_input.a, 17468i))), countOneBits(select(vec4<i32>(1i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(4040i, -10204i, 32278i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), any(vec2<bool>(false, true)))), false), vec3<bool>(true, true, true), 344f, false);
    global1 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(var_0.b.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1002f), var_0.b.a.x, -153f), _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(4294967295u, 4294967295u)) < (global1[_wgslsmith_index_u32(16384u, 19u)] << (0u % 32u))))));
    global3 = array<vec4<f32>, 20>();
    let var_2 = var_0.b.d.xyw;
    let var_3 = func_2(_wgslsmith_f_op_f32(var_0.b.d.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, 656f))))), false, Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-343f))), var_0.a.x, Struct_2(!var_0.a, Struct_1(vec2<f32>(-877f, 1145f), vec3<u32>(116933u, var_0.b.b.x, var_0.b.b.x), u_input.a, global3[_wgslsmith_index_u32(17404u, 20u)], var_1.wxz)), var_1.ww).e.b.a, var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) - vec2<f32>(-1036f, _wgslsmith_f_op_f32(var_2.x + 441f))));
    var var_4 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-19298i, 0i), _wgslsmith_sub_i32(i32(-1i) * -var_4.a.c, (1i >> (1u % 32u)) << (~global1[_wgslsmith_index_u32(var_3.e.c, 19u)] % 32u)), _wgslsmith_clamp_i32(var_4.b.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(725i, var_3.a.x, 6325i, var_4.a.c), var_3.a) & ~(-84902i), ~var_4.b.b.c)), ~(~(~vec4<u32>(var_0.b.b.x, var_3.e.c, 14455u, 0u))));
}

