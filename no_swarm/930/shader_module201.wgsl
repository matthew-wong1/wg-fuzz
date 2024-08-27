struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(38666i, i32(-2147483648), i32(-2147483648));

var<private> global1: Struct_4;

var<private> global2: array<u32, 7>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 14908u, 20809u, 19415u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = u_input.a.xxy;
    global3 = ~(vec4<u32>(arg_0.b.x, ~_wgslsmith_add_u32(arg_1, 14855u), 14485u, 56857u) | ~(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 0u, 1u, 1u)));
    global1 = Struct_4(~(-41583i) >> (~(~0u) % 32u), _wgslsmith_sub_vec3_u32(min(_wgslsmith_mult_vec3_u32(~global3.wxz, ~vec3<u32>(43201u, global1.b.x, 5625u)), _wgslsmith_mult_vec3_u32(global3.www ^ vec3<u32>(30761u, arg_0.b.x, arg_1), arg_0.b)), vec3<u32>(~(~1u), global1.b.x, _wgslsmith_mult_u32(max(1u, 42328u), _wgslsmith_add_u32(72418u, 0u)))), _wgslsmith_f_op_vec2_f32(-global1.c), Struct_2(vec2<i32>(1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global1.a, -2147483647i, 1i), u_input.a)))), arg_0.c.x);
    let var_1 = global1.c;
    var var_2 = max(vec3<i32>(-global0.x, global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -14209i, var_0.x, -global0.x), u_input.a.zyy)), ((vec3<i32>(1i, u_input.b, global0.x) ^ u_input.a.zxz) | u_input.a.wxz) | vec3<i32>(-2147483647i, var_0.x, var_0.x ^ -114822i));
    return firstLeadingBit(arg_0.b.x);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, global2[_wgslsmith_index_u32(~0u, 7u)]), ~arg_0.x), select(_wgslsmith_dot_vec3_u32(countOneBits(global1.b), global3.yyx), ~firstLeadingBit(~0u), !any(vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(644f)), _wgslsmith_f_op_f32(global1.e - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1668f - -810f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.x))), 492f), vec2<f32>(1140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + _wgslsmith_div_f32(global1.e, global1.e)))));
    let var_2 = Struct_2(global1.d.a);
    var var_3 = ~vec3<u32>((22862u & reverseBits(global1.b.x)) << (global2[_wgslsmith_index_u32(19739u, 7u)] % 32u), 1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(global1.b >> (vec3<u32>(var_0, global2[_wgslsmith_index_u32(arg_0.x, 7u)], arg_0.x) % vec3<u32>(32u))), vec3<u32>(abs(5153u), 41140u, var_0)));
    global0 = u_input.a.wwx;
    return ~global1.b.x & ~52624u;
}

fn func_1() -> i32 {
    var var_0 = -vec3<i32>(-global1.d.a.x, ~global0.x, _wgslsmith_div_i32(~global1.d.a.x, -global0.x) ^ _wgslsmith_add_i32(i32(-1i) * -6421i, global0.x | -2147483647i));
    global3 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(min(4294967295u, 1u), _wgslsmith_mod_u32(~global1.b.x, _wgslsmith_div_u32(65066u, global1.b.x)), 0u | _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(18190u, 7u)], 42834u), func_2(Struct_4(global1.a, global3.yzx, global1.c, Struct_2(u_input.a.yy), global1.e), _wgslsmith_div_u32(global1.b.x, global1.b.x))), vec4<u32>(func_3(vec2<u32>(global3.x, 19502u) ^ global1.b.yz), ~min(66354u, 65298u), _wgslsmith_add_u32(4294967295u, 24059u << (global3.x % 32u)), global1.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, firstLeadingBit(0u), 20223u, ~global2[_wgslsmith_index_u32(global3.x, 7u)]), vec4<u32>(_wgslsmith_sub_u32(81215u, global2[_wgslsmith_index_u32(56857u, 7u)]), 68216u, global3.x, global2[_wgslsmith_index_u32(global1.b.x, 7u)])));
    let var_1 = Struct_4(var_0.x, ~_wgslsmith_mult_vec3_u32(global1.b, vec3<u32>(25588u, 1u << (global1.b.x % 32u), ~32871u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e, 1000f) - _wgslsmith_f_op_vec2_f32(exp2(global1.c)))))), global1.d, _wgslsmith_f_op_f32(ceil(global1.e)));
    let var_2 = 194f;
    global3 = ~select(vec4<u32>(global3.x, 0u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 44585u, 0u), vec3<u32>(4042u, 24769u, 76575u)), var_1.b.x), 7u)], abs(~global2[_wgslsmith_index_u32(4294967295u, 7u)])), firstLeadingBit(max(vec4<u32>(global2[_wgslsmith_index_u32(15281u, 7u)], 4294967295u, 49172u, 65667u), countOneBits(vec4<u32>(64412u, global2[_wgslsmith_index_u32(var_1.b.x, 7u)], 0u, global2[_wgslsmith_index_u32(0u, 7u)])))), all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_mod_i32(u_input.b, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(func_1(), reverseBits(u_input.a.x & -15605i), select(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -35089i), global0.yy), 27366i >> (~global2[_wgslsmith_index_u32(1u, 7u)] % 32u), select(u_input.b < -57591i, true, true)), reverseBits(min(28388i, ~u_input.a.x)));
    global1 = Struct_4(var_0.x, ~firstLeadingBit(vec3<u32>(1u, ~global3.x, _wgslsmith_div_u32(1u, 71013u))), global1.c, global1.d, _wgslsmith_f_op_f32(f32(-1f) * -459f));
    var var_1 = vec2<bool>(false, -1240f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2374f))))));
    let var_2 = global1.d;
    global3 = vec4<u32>(~62803u, global2[_wgslsmith_index_u32(~(~91951u), 7u)], 4294967295u, global3.x);
    var var_3 = vec3<i32>(-5528i, 0i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(459f, _wgslsmith_f_op_f32(f32(-1f) * -647f), -1036f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-530f)))), global1.e)), func_3(~global3.wz ^ ~max(vec2<u32>(4294967295u, 4294967295u), global3.xx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(40447u, global1.b.x) >> (global1.b.x % 32u), ~firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(3538u, 6491u, 0u, 1u) >> (vec4<u32>(global3.x, 1u, global2[_wgslsmith_index_u32(1u, 7u)], 78703u) % vec4<u32>(32u)), ~vec4<u32>(global1.b.x, 0u, 100312u, global2[_wgslsmith_index_u32(global1.b.x, 7u)]))), (abs(global3.zzx) ^ abs(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global1.b.x, global2[_wgslsmith_index_u32(global1.b.x, 7u)]))) << (abs(~vec3<u32>(49951u, 4294967295u, global2[_wgslsmith_index_u32(0u, 7u)])) % vec3<u32>(32u)), select(vec3<u32>(~36085u, ~66373u, reverseBits(global1.b.x)), reverseBits(_wgslsmith_mult_vec3_u32(global1.b, vec3<u32>(global1.b.x, 20517u, 151115u))), var_1.x)));
}

