struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<bool, 5>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1054f, 2169f, -954f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1245f, -535f, -558f))))), countOneBits(vec4<u32>(u_input.b.x, 25061u & u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xy))) ^ abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(60952u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(2935u, 13247u, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 109379u), vec4<u32>(4294967295u, u_input.b.x, 72885u, u_input.b.x)))), Struct_2(vec4<u32>(u_input.b.x, abs(u_input.b.x), ~u_input.b.x, u_input.b.x), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1468f, -149f, 1862f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(534f, -526f, -797f), vec3<f32>(-2211f, -938f, -156f)))), true, select(arg_0.yzy, arg_0.zzw, vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)])))), all(!vec4<bool>(true, true, arg_0.x, arg_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, -785f, 761f))))), any(arg_0), vec3<bool>(all(!arg_0.zwx), !all(arg_0.zyw), true)));
    global0 = array<bool, 5>();
    var var_1 = true;
    let var_2 = var_0.e;
    return !select(select(select(var_0.e.c, vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.a.x, 5u)], false, true), !arg_0.ywz), vec3<bool>(1836f < var_0.c.b.a.x, all(arg_0), select(false, global0[_wgslsmith_index_u32(var_0.c.a.x, 5u)], var_2.c.x)), all(var_2.c)), select(!vec3<bool>(arg_0.x, true, true), var_2.c, true), min(_wgslsmith_div_u32(u_input.b.x, 39882u), ~u_input.b.x) <= (_wgslsmith_clamp_u32(112881u, 1u, 7787u) >> (var_0.b.x % 32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = any(select(!(!func_3(vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], false, false))), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true && global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, global0[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(61793u, 5u)], global0[_wgslsmith_index_u32(43375u, 5u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], false)), !(!vec3<bool>(global0[_wgslsmith_index_u32(10267u, 5u)], global0[_wgslsmith_index_u32(3343u, 5u)], false)), true)));
    var var_1 = vec4<i32>(select(-8923i, u_input.d.x, !var_0 | true), firstLeadingBit(u_input.a.x) | (i32(-1i) * -2147483647i), ~1324i, -2147483647i) & -vec4<i32>(-2147483647i, 1i, 0i, _wgslsmith_div_i32(u_input.d.x, u_input.c.x) >> (u_input.b.x % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), 327f, _wgslsmith_f_op_f32(step(550f, 213f)), -176f), _wgslsmith_f_op_vec4_f32(vec4<f32>(359f, 1595f, 619f, -603f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1105f, -1538f, 1807f, 683f) - vec4<f32>(485f, -956f, -1282f, -1625f))), _wgslsmith_f_op_f32(sign(-1678f)) >= _wgslsmith_f_op_f32(-1330f * 1062f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(round(917f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), -1000f, -381f)));
    return Struct_2(vec4<u32>(u_input.b.x, 0u, 1169u, u_input.b.x), Struct_1(var_2.wwx, !((u_input.b.x >> (u_input.b.x % 32u)) > _wgslsmith_sub_u32(u_input.b.x, 69152u)), vec3<bool>(!(u_input.b.x == u_input.b.x), global0[_wgslsmith_index_u32(~1u, 5u)], !(!global0[_wgslsmith_index_u32(12875u, 5u)]))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().b.a.x, arg_0) * _wgslsmith_f_op_f32(-arg_0)) * arg_0);
    let var_2 = func_2().b.a.x;
    var var_3 = u_input.c.x;
    var var_4 = _wgslsmith_mod_i32(countOneBits(abs(1i)), _wgslsmith_add_i32(u_input.a.x & -u_input.a.x, -4239i));
    return vec4<bool>(select(2147483647i, -40222i, true) > u_input.c.x, global0[_wgslsmith_index_u32(abs(var_0.a.x) | u_input.b.x, 5u)], true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 7295i, 26960i, u_input.c.x), vec4<i32>(u_input.d.x, u_input.a.x, -12836i, u_input.d.x) >> (~vec4<u32>(u_input.b.x, 136964u, 39392u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -5618i, -1i), vec4<i32>(42798i, 27734i, u_input.c.x, 32601i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-42242i, -1i, u_input.d.x, 2147483647i), vec4<i32>(-2147483647i, u_input.d.x, u_input.a.x, -71267i)), u_input.c.x), (vec4<i32>(7745i, u_input.d.x, 1i, u_input.c.x) | vec4<i32>(u_input.a.x, 0i, 23724i, u_input.a.x)) | abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, 7129i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), -598f, -111f)), abs(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) & ~77383u, u_input.b.x, ~(0u & u_input.b.x), ~0u)), ~(select(~vec4<u32>(u_input.b.x, 15964u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), func_1(1000f, Struct_3(vec3<f32>(-1000f, 2148f, -1000f), vec4<u32>(8967u, 0u, u_input.b.x, 26260u), Struct_2(vec4<u32>(7092u, 1u, 4294967295u, u_input.b.x), Struct_1(vec3<f32>(799f, -1473f, 1179f), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<bool>(global0[_wgslsmith_index_u32(20781u, 5u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]))), global0[_wgslsmith_index_u32(1302u, 5u)], Struct_1(vec3<f32>(-144f, 2019f, -1717f), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<bool>(false, global0[_wgslsmith_index_u32(37368u, 5u)], false))), 1u)) ^ vec4<u32>(4294967295u >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(53141u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(12754u, u_input.b.x, u_input.b.x, 51089u)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u)), 19136i);
}

