struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, false, true, true, true, false, true, true, true, false, true, false, false, true, false, false);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(17933i), Struct_1(1i), Struct_1(54244i), Struct_1(1i), Struct_1(-1i), Struct_1(-1299i), Struct_1(23190i), Struct_1(1i), Struct_1(-23864i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(7113i), Struct_1(-43441i), Struct_1(i32(-2147483648)), Struct_1(-55446i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-41602i), Struct_1(44583i), Struct_1(1i));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 19023u, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec2<f32> {
    global1 = array<bool, 18>();
    let var_0 = vec4<u32>(12270u, reverseBits(select(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 22242u, global3.x, arg_2.x) & vec4<u32>(0u, global3.x, 4294967295u, global3.x), countOneBits(vec4<u32>(arg_2.x, arg_2.x, u_input.c.x, 1u))), !select(false, global0[_wgslsmith_index_u32(80975u, 12u)], true))), u_input.c.x, ~43326u);
    let var_1 = Struct_2(abs(-1i));
    let var_2 = Struct_2(u_input.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.ww * vec2<f32>(arg_3.x, arg_3.x)) - vec2<f32>(-1000f, 826f)) + arg_3.yw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_2(~(~abs(11884i | arg_0.x)));
    var var_1 = Struct_1(arg_0.x);
    var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.c.x >> (countOneBits(u_input.c.x) % 32u), ~1u | firstLeadingBit(u_input.c.x))), 23u)];
    let var_2 = Struct_1(var_0.a);
    var var_3 = var_0;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1240f, 163f), vec2<f32>(1154f, 241f), global1[_wgslsmith_index_u32(1u, 18u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0, var_2, vec2<u32>(u_input.c.x, 0u), vec4<f32>(-548f, -543f, 605f, -456f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, -1000f))))), vec2<f32>(-752f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    global3 = ~_wgslsmith_div_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.c.x, 4294967295u, 1u))), vec3<u32>(u_input.c.x, global3.x, 12501u));
    global3 = abs(~(~vec3<u32>(global3.x << (51080u % 32u), u_input.c.x, 42820u)));
    var var_0 = Struct_2(-1i);
    let var_1 = 6154u;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mod_vec3_i32(u_input.b.wxz, ~(~(-vec3<i32>(arg_2.a, u_input.a, arg_1))))));
    return -510f;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~1684u, _wgslsmith_mod_u32(global3.x, global3.x)) & vec3<u32>(select(0u, 5191u, false), firstTrailingBit(u_input.c.x), 9428u)), vec3<u32>(~(min(0u, global3.x) | _wgslsmith_sub_u32(u_input.c.x, 28011u)), ~(~1u), 0u << (select(6246u, ~u_input.c.x, any(vec3<bool>(false, false, false))) % 32u)));
    let var_1 = vec2<u32>(~u_input.c.x, abs(~(~36021u)) & (global3.x >> (u_input.c.x % 32u)));
    let var_2 = arg_1.x;
    global1 = array<bool, 18>();
    global0 = array<bool, 12>();
    return _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(-u_input.a, -1i))), -1i);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = ~(-func_5(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.b.x), -7425i, global2[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(-1173i, u_input.a, -47218i))))), _wgslsmith_div_vec3_f32(vec3<f32>(1182f, 124f, arg_0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(735f, 895f, 2126f), vec3<f32>(-296f, -482f, 136f)))), false));
    global1 = array<bool, 18>();
    var var_1 = Struct_2(var_0);
    global0 = array<bool, 12>();
    var_1 = Struct_2(-countOneBits(var_0));
    return 2098u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, u_input.c.x >= func_1(-219f));
    var var_1 = !vec3<bool>(-1007f == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1763f, 976f))), false, !(var_0.x | true));
    var var_2 = Struct_2(~1i << (_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global3.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, 1u)), ~global3.x), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) << ((19326u << (u_input.c.x % 32u)) % 32u)) % 32u));
    global2 = array<Struct_1, 23>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(480f, -245f), vec2<f32>(1310f, -697f))) * vec2<f32>(1f, 1f)), _wgslsmith_div_vec2_f32(vec2<f32>(1979f, 520f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2512f, 2210f))))));
    let var_4 = select(vec3<bool>(all(select(select(vec3<bool>(var_1.x, true, false), vec3<bool>(global1[_wgslsmith_index_u32(33341u, 18u)], true, true), false), vec3<bool>(true, true, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(22558u, 12u)], var_0.x, true))), all(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(firstLeadingBit(select(global3.x ^ u_input.c.x, 1u << (u_input.c.x % 32u), var_0.x)), 18u)]), ~(-1i >> (1u % 32u)) == var_2.a);
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(-var_2.a), global2[_wgslsmith_index_u32(min(u_input.c.x, global3.x) ^ global3.x, 23u)], u_input.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, 103f, 565f, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 112f, var_3.x, var_3.x)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x + 781f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, var_3.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1945f, var_3.x))))));
    let var_5 = Struct_2(firstTrailingBit(~abs(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~23457u), vec2<u32>(global3.x, u_input.c.x) | min(global3.zz, u_input.c)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(3698u, global3.x), select(global3.x, global3.x, true), ~1u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 4294967295u, 1u), vec3<u32>(u_input.c.x, 6266u, global3.x))), func_1(_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_sub_vec4_i32(reverseBits(max(-vec4<i32>(0i, u_input.b.x, -1i, -2147483647i), ~u_input.b)), u_input.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -var_2.a, 1531i & var_5.a, ~(-2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-22727i, u_input.a), _wgslsmith_mult_i32(u_input.a, var_5.a), _wgslsmith_add_i32(var_2.a, 31404i)), countOneBits(_wgslsmith_add_i32(0i, -34176i)), var_2.a, i32(-1i) * -var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(517f, var_3.x) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-933f, _wgslsmith_f_op_f32(-1000f + var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x))))));
}

