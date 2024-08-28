struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 25>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(vec2<u32>(1u, 59696u), true, 251f, vec2<i32>(43720i, 1i), true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = ~global3.d.x;
    global1 = array<Struct_1, 25>();
    global3 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(351u, 4294967295u), vec2<u32>(global3.a.x, global3.a.x)), ~global3.a), ~(u_input.c.xx | u_input.c.zx) & ~(~vec2<u32>(u_input.a, global3.a.x))), (global2.x >> (~(~u_input.d) % 32u)) == ~(-(global3.d.x >> (66921u % 32u))), arg_0, ~_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0, -18739i)), abs(global3.d)), global3.e);
    var var_1 = vec3<bool>(true, global3.b, !(!(!any(vec2<bool>(global3.e, true)))));
    let var_2 = -589f;
    return any(!vec4<bool>(var_1.x, all(vec4<bool>(true, true, global3.b, false)), false, any(vec4<bool>(var_1.x, global3.e, global3.e, var_1.x)) || (global3.a.x != global3.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    var var_0 = Struct_2(~arg_0.e.zz, !(!(!any(arg_0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, -242f)), _wgslsmith_f_op_f32(-arg_0.b.x))), vec2<i32>(global3.d.x, _wgslsmith_add_i32(global3.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -2147483647i, global2.x, -7212i), vec4<i32>(1i, global2.x, 2147483647i, 33544i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51769i, -2460i, global3.d.x, global3.d.x), vec4<i32>(9991i, 23113i, global2.x, global3.d.x))))), !global3.b);
    global2 = ~select(vec4<i32>(-global3.d.x, 81288i, global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(33742i, var_0.d.x), firstLeadingBit(global2.yz))), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.d.x, -2147483647i, global3.d.x, var_0.d.x) ^ (vec4<i32>(global2.x, -2147483647i, global2.x, var_0.d.x) ^ vec4<i32>(global3.d.x, 0i, 12875i, global2.x)), vec4<i32>(-1i) * -vec4<i32>(global2.x, -16221i, -50962i, 1i)), -global2.x > (-global2.x & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(var_0.d.x, global2.x))));
    let var_1 = any(arg_0.a);
    var var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(max(global3.c, _wgslsmith_f_op_f32(arg_0.b.x * var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1897f + 710f)), arg_0.b.x);
    let var_3 = select(global3.d & _wgslsmith_mod_vec2_i32(abs(global3.d), global2.yw), global3.d, vec2<bool>(any(vec3<bool>(var_2.x != arg_0.b.x, all(arg_0.d.ywy), var_0.b)), var_2.x == 744f));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f * global3.c) - var_2.x), var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(840f * global3.c), _wgslsmith_f_op_f32(global3.c * var_2.x), all(arg_0.a))), 601f, false))));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(vec2<bool>(true || !(!arg_1), func_2(-1238f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(true, false), vec3<f32>(global3.c, global3.c, -114f), 0u, vec4<bool>(true, arg_1, false, true), vec4<u32>(0u, global3.a.x, global3.a.x, global3.a.x)), true)))), u_input.d, vec4<bool>(any(!select(vec3<bool>(global3.b, true, global3.b), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, global3.b, arg_1))), global3.b, true, !(!(!arg_1))), ~(~(min(vec4<u32>(16109u, 0u, 1u, 4294967295u), vec4<u32>(1u, 43003u, 4294967295u, 4294967295u)) ^ vec4<u32>(global3.a.x, 38576u, global3.a.x, 27244u))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 25u)];
    var var_2 = var_0.b.xy;
    let var_3 = _wgslsmith_sub_vec2_i32(-vec2<i32>(global3.d.x, _wgslsmith_clamp_i32(1i, ~(-22088i), global2.x)), global3.d);
    var var_4 = Struct_2(var_1.e.zx, false, var_0.b.x, _wgslsmith_mult_vec2_i32(min(firstLeadingBit(~vec2<i32>(0i, -2147483647i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_3.x, global3.d.x), global2.zx & vec2<i32>(-45598i, -26462i))), min(vec2<i32>(-2147483647i & global3.d.x, arg_0), vec2<i32>(arg_0 ^ 2147483647i, select(var_3.x, 0i, global3.e)))), (801f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * global3.c))) | (_wgslsmith_div_u32(var_0.c, 91367u >> (global3.a.x % 32u)) == var_0.e.x));
    return ~16291u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (abs(vec4<i32>(_wgslsmith_dot_vec2_i32(global2.zx, vec2<i32>(2147483647i, global2.x)), -1i, 2147483647i, -13464i)) | vec4<i32>(2147483647i, -1i, -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, 5331i, -24329i, global2.x), vec4<i32>(-2147483647i, global3.d.x, global2.x, -1i)), reverseBits(-21778i) ^ (global3.d.x & -1i))) & vec4<i32>(-min(select(global3.d.x, 18035i, false), -17217i), select(global3.d.x | (i32(-1i) * -5199i), -min(2147483647i, global2.x), global3.b), _wgslsmith_mult_i32(global3.d.x, 0i), global2.x);
    let var_0 = -_wgslsmith_clamp_i32(firstTrailingBit(global3.d.x), ~6450i, _wgslsmith_div_i32(-_wgslsmith_mod_i32(-1i, global2.x), global3.d.x << (_wgslsmith_mod_u32(global3.a.x, u_input.b) % 32u)));
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28125u, 0u, u_input.d, global3.a.x) << (vec4<u32>(u_input.c.x, 61190u, 45987u, u_input.b) % vec4<u32>(32u)), select(vec4<u32>(u_input.a, 37002u, global3.a.x, 7903u), vec4<u32>(9086u, u_input.b, u_input.c.x, u_input.b), false)), 65897u, _wgslsmith_dot_vec3_u32(~vec3<u32>(21550u, u_input.d, 1u), max(u_input.c, u_input.c))), func_1(global3.d.x, global3.b)), 25u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(-401f, 1000f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(!vec2<bool>(global3.e, global3.e), _wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), global3.a.x, vec4<bool>(!global3.b, true, all(vec4<bool>(var_1.d.x, false, var_1.a.x, global3.b)), var_1.b.x == 304f), ~var_1.e >> (firstLeadingBit(var_1.e) % vec4<u32>(32u))), all(var_1.d.yzy))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1386f * global3.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c - global3.c), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(var_1.c, 25u)], false)).x))));
    let var_3 = max(~(~_wgslsmith_add_vec3_i32(select(global2.xzx, vec3<i32>(global2.x, -1i, 15787i), false), vec3<i32>(global3.d.x, global3.d.x, global2.x))), firstTrailingBit(vec3<i32>(global2.x, var_0, ~_wgslsmith_clamp_i32(-6796i, global2.x, global3.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - 561f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(736f, var_1.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1.a, var_2.zzx, 0u, var_1.d, var_1.e), global3.e)).x - _wgslsmith_f_op_f32(max(-1419f, global3.c))))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-59628i & global3.d.x, var_3.x, -var_3.x), vec3<i32>(var_3.x ^ -39680i, -30296i >> (1u % 32u), global3.d.x)));
}

