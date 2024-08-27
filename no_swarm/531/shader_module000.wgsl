struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<f32, 16> = array<f32, 16>(488f, -251f, 1573f, 186f, -1562f, 1508f, 322f, -1176f, 3008f, 373f, -348f, -542f, 1566f, -678f, 1195f, 131f);

var<private> global2: f32 = -296f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> u32 {
    global0 = firstTrailingBit(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(arg_1, -41492i)));
    var var_0 = Struct_1(arg_2 | false, !(_wgslsmith_add_i32(arg_1, 13723i) < arg_1) | true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))), 642f), select(vec3<bool>(true, any(!vec3<bool>(arg_2, arg_2, false)), arg_2), !(!vec3<bool>(true, false, arg_2)), false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(71589u, 16u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, -2109f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-547f, -360f) + vec2<f32>(global1[_wgslsmith_index_u32(35477u, 16u)], global1[_wgslsmith_index_u32(arg_0.a.x, 16u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11197u, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -715f))))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_2 = ~countOneBits(~arg_1);
    var var_3 = Struct_2(_wgslsmith_mod_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.a.x, 4294967295u, 1u, u_input.a.x) ^ ~vec4<u32>(65560u, u_input.a.x, u_input.a.x, 62504u), vec4<u32>(u_input.a.x ^ arg_0.a.x, 32155u << (0u % 32u), _wgslsmith_add_u32(arg_0.a.x, 0u), ~arg_0.a.x))));
    return _wgslsmith_add_u32(21966u, 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec4<u32>(1u, ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, countOneBits(48518u))), ~(~(~(~arg_1.x))), ~(~0u));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.x, 17448u), 0u), 0u), 8379u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(arg_0.x, 7481u, 4294967295u)), u_input.a.zyz)), select(vec3<u32>(func_3(Struct_2(u_input.a), 2147483647i, false), ~arg_1.x, u_input.a.x) | vec3<u32>(~2353u, arg_0.x, var_0.x << (1u % 32u)), arg_0.yxz, !all(vec2<bool>(false, false))));
    let var_2 = ~vec2<u32>(abs(abs(abs(u_input.a.x))), firstTrailingBit(~arg_0.x >> (u_input.a.x % 32u)));
    let var_3 = Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(62996u, 16u)] > arg_2.x)), _wgslsmith_f_op_vec2_f32(sign(arg_2)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), arg_2);
    var_1 = 19671u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)] - _wgslsmith_f_op_f32(1265f + global1[_wgslsmith_index_u32(arg_1.x, 16u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f))), 595f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<u32>(~u_input.a.x, u_input.a.x);
    let var_1 = arg_1;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_u32(~u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.xy) >> (u_input.a.wy % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 1002f))))) * 1848f));
    let var_2 = Struct_1(true, var_1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, -1836f) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, 644f), var_1.c)))), vec3<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), false)), any(var_1.d.zy) || true, arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, var_0, var_1.c)), _wgslsmith_f_op_f32(sign(var_1.c.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-107f, arg_1.c.x), _wgslsmith_f_op_vec2_f32(abs(arg_1.c))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c - vec2<f32>(global1[_wgslsmith_index_u32(24668u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, global1[_wgslsmith_index_u32(1u, 16u)]) + var_1.e), u_input.a.x < u_input.a.x))))));
    var var_3 = var_2.d.x & !(!var_1.b);
    return ~u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_sub_i32(-23063i, ~(i32(-1i) * -1i));
    global2 = 845f;
    global1 = array<f32, 16>();
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, arg_0))), vec3<bool>(arg_0, true, false), !arg_0 & all(vec2<bool>(true, false))), !(!(!select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, arg_0), arg_0))), any(vec3<bool>(arg_0 & false, !arg_0, true)));
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, 2147483647i), vec4<i32>(-82641i, 1i, 8096i, -1i), vec4<i32>(32212i, -41250i, 0i, -2147483647i))), vec4<i32>(~(-14650i), -2592i, 1i, -15721i)), i32(-1i) * -1i);
    return Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-69244i, 0i << (arg_1 % 32u)), -var_1) >= var_1.x, arg_0 | any(!(!vec3<bool>(var_0.x, false, true))), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zxy, ~u_input.a.yyw), func_3(Struct_2(vec4<u32>(u_input.a.x, arg_1, 65119u, 0u)), -var_1.x, var_0.x), ~arg_1), 16u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1162f * -1369f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1485f)) * _wgslsmith_f_op_f32(f32(-1f) * -1367f))))), !var_0, vec2<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 45936u), arg_1), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(15054u, 16u)], 766f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_1, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 16>();
    global2 = 1000f;
    let var_0 = Struct_2(u_input.a);
    var var_1 = func_4(all(vec3<bool>(true, ~14231u > (var_0.a.x | var_0.a.x), select(u_input.a.x, u_input.a.x, false) > ~11704u)), _wgslsmith_mod_u32(~(~u_input.a.x), select(max(~47233u, abs(0u)), _wgslsmith_mod_u32(func_1(vec2<bool>(false, true), Struct_1(true, false, vec2<f32>(global1[_wgslsmith_index_u32(22651u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<bool>(true, true, false), vec2<f32>(global1[_wgslsmith_index_u32(8484u, 16u)], -750f))), u_input.a.x), !select(true, false, true))));
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(var_0.a.x), 16u)];
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzz, vec4<i32>(7433i, -countOneBits(2147483647i << (u_input.a.x % 32u)), 1i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_3, var_3, 20698i)), max(vec3<i32>(2147483647i, 2147483647i, -7852i), vec3<i32>(var_3, -46582i, -60172i)) >> (vec3<u32>(0u, var_0.a.x, var_0.a.x) % vec3<u32>(32u)))), select(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(var_3, var_3, 40853i, var_3)), -vec4<i32>(2147483647i, var_3, -2147483647i, 10850i) & ~vec4<i32>(-37889i, var_3, 17734i, var_3), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 2147483647i, var_3, 47829i), ~vec4<i32>(-4851i, var_3, var_3, var_3))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 2147483647i, var_3, -36201i), select(vec4<i32>(var_3, -12973i, var_3, 44365i), vec4<i32>(var_3, -2147483647i, 2147483647i, 2147483647i), var_1.a)), -2147483647i, var_3, -2147483647i), var_1.d.x));
}

