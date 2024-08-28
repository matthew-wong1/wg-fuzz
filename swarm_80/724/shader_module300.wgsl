struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<Struct_1, 23>;

var<private> global3: Struct_2 = Struct_2(false, vec2<u32>(38460u, 0u), Struct_1(0u, -19527i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(25639i, 1i, 17849i, -42538i), 418f), vec2<f32>(1269f, 571f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = global3.d;
    global2 = array<Struct_1, 23>();
    var var_2 = Struct_1(global3.c.a, _wgslsmith_mult_i32(-2147483647i, ~(-global3.c.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~global3.c.a, countOneBits(108504u), u_input.c), firstLeadingBit(~vec4<u32>(global3.b.x, 54457u, 0u, 4294967295u))), u_input.b), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global3.c.b, u_input.a, global3.c.b, 1i) << (vec4<u32>(70482u, global3.c.c.x, global3.b.x, 4294967295u) % vec4<u32>(32u))) << ((~global3.c.c | reverseBits(u_input.b)) % vec4<u32>(32u)), ~vec4<i32>(i32(-1i) * -1i, global3.c.d.x, global0[_wgslsmith_index_u32(~1u, 19u)], -u_input.a)), _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = u_input.a;
    return -1i;
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global3 = Struct_2(select(false, any(!select(vec2<bool>(true, false), vec2<bool>(global3.a, false), global3.a)), all(vec2<bool>(all(vec3<bool>(global3.a, true, true)), true))), global3.c.c.zz, Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global3.c.c.yx, u_input.b.xx), ~vec2<u32>(global3.c.c.x, 14109u)), global0[_wgslsmith_index_u32(min(global3.c.c.x, ~100680u) << (~0u % 32u), 19u)], ~min(vec4<u32>(103760u, global3.c.c.x, 1u, global3.b.x), global3.c.c), vec4<i32>(-(~25284i), -global0[_wgslsmith_index_u32(select(u_input.c, u_input.c, true), 19u)], select(-2147483647i >> (u_input.c % 32u), u_input.a << (u_input.b.x % 32u), global3.a), 2147483647i), -659f), global3.d);
    global3 = Struct_2(false, vec2<u32>(max(global3.b.x, 29502u), ~u_input.b.x), Struct_1(10474u, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0i, u_input.a, global3.c.b), vec4<i32>(u_input.a ^ global0[_wgslsmith_index_u32(51046u, 19u)], _wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(32351u, 19u)]), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], u_input.a, global3.c.b), vec3<i32>(0i, -2147483647i, -17803i)))), ~vec4<u32>(35326u, global3.b.x, firstLeadingBit(319u), ~1u), vec4<i32>(firstLeadingBit(2147483647i & global3.c.d.x), u_input.a ^ _wgslsmith_sub_i32(u_input.a, -1i), firstTrailingBit(-global3.c.b), global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(global3.c.a, 1u), global3.b.x), 19u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(821f)))), _wgslsmith_f_op_f32(max(378f, global3.c.e)))), arg_0);
    let var_0 = vec4<bool>(all(vec2<bool>(any(vec4<bool>(false, global3.a, global3.a, global3.a)) | true, all(select(global1[_wgslsmith_index_u32(global3.c.a, 32u)], vec4<bool>(global3.a, false, global3.a, false), vec4<bool>(true, true, true, true))))), true, true, true);
    global2 = array<Struct_1, 23>();
    var var_1 = Struct_2(!((241f == _wgslsmith_f_op_f32(exp2(global3.d.x))) & all(!vec3<bool>(var_0.x, global3.a, var_0.x))), global3.c.c.yy, global3.c, arg_0);
    return min(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(min(u_input.a, global0[_wgslsmith_index_u32(global3.b.x, 19u)]), -global0[_wgslsmith_index_u32(global3.b.x, 19u)])), ~global3.c.d.ww), -688i);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = arg_2.d.xw;
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(288i, -9563i, arg_2.d.x, global3.c.d.x), _wgslsmith_mult_vec4_i32(global3.c.d, vec4<i32>(-2147483647i, var_0.x, 14410i, var_0.x)))), vec4<i32>(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_2.c.x, 19u)], -4522i), _wgslsmith_add_i32(arg_2.b, func_2(164f)), -49194i, abs(~arg_2.b))), _wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -9655i, _wgslsmith_dot_vec3_i32(arg_2.d.wzz, vec3<i32>(12639i, 32784i, 2147483647i) & vec3<i32>(arg_2.b, -11071i, 1i))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e, global3.c.e)))));
    global2 = array<Struct_1, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x))), arg_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-146f * -1486f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e))), _wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.e - 161f)), arg_2.e, 292f, _wgslsmith_f_op_f32(abs(arg_2.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.e, -1063f, arg_2.e, -670f))))) * vec4<f32>(arg_2.e, _wgslsmith_f_op_f32(round(879f)), 1015f, -214f)), select(vec4<bool>(false, any(vec3<bool>(true, global3.a, false)), all(vec4<bool>(true, false, true, true)), false), global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false))), any(vec3<bool>(false, true | !global3.a, true))));
    let var_2 = arg_1;
    return Struct_2(select(true && arg_1, all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, arg_2.c.x, 1u), ~global3.c.c) >= 3556u), vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.c.a, global3.c.a), ~52848u), select(abs(global3.b.x), ~global3.b.x, arg_3) >> (~arg_0.x % 32u)), Struct_1(~(~(~1u)), max(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.c.b, u_input.a), -1i), ~1i), vec4<u32>(1u, 40474u, ~u_input.c, 0u), -vec4<i32>(~12663i, -7743i >> (global3.b.x % 32u), -29196i, global3.c.d.x ^ -32963i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_2.e, -1156f)), global3.c.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1791f)), -1372f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~global3.c.c.wwx, !(u_input.c < ~reverseBits(u_input.c)), global2[_wgslsmith_index_u32(7614u << (global3.b.x % 32u), 23u)], !global3.a);
    var var_1 = vec4<i32>(u_input.a, ~(-61422i), var_0.c.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, global3.c.d.x & u_input.a), global0[_wgslsmith_index_u32(~1u, 19u)], 1i), 1i));
    var_1 = vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(8979u, 19u)], 1i)), reverseBits(max(global0[_wgslsmith_index_u32(16211u, 19u)], var_1.x))), var_1.x, var_1.x, global3.c.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.c.e + _wgslsmith_f_op_f32(ceil(var_0.d.x)))));
    var var_3 = any(!vec2<bool>(!any(vec3<bool>(true, false, true)), true));
    var_3 = global3.a || (true & all(vec2<bool>(var_0.a & global3.a, any(vec3<bool>(global3.a, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(33627u, global3.c.a), vec4<i32>(var_1.x, ~19113i, func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.e, var_0.c.e)), _wgslsmith_f_op_vec2_f32(global3.d - global3.d)))), ~_wgslsmith_clamp_i32(~var_1.x, ~(-27824i), max(48371i, u_input.a))), global3.c.b, ~_wgslsmith_clamp_vec2_u32(~global3.c.c.xz, ~(~vec2<u32>(var_0.b.x, 2881u)), ~global3.c.c.ww), ~(~max(vec3<u32>(2026u, global3.b.x, var_0.b.x), global3.c.c.yxw) & reverseBits(u_input.b.xxx)));
}

