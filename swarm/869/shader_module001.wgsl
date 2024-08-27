struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1082f;

var<private> global1: vec4<i32>;

var<private> global2: f32;

var<private> global3: array<f32, 6> = array<f32, 6>(1000f, -1187f, 935f, 544f, 226f, -923f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global0 = 1000f;
    var var_0 = arg_2;
    let var_1 = (arg_2.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d | 4294967295u, _wgslsmith_mod_u32(1u, 4355u), 14081u), vec3<u32>(firstLeadingBit(var_0.d), arg_1.d, ~arg_1.d)) % 32u)) >= (_wgslsmith_dot_vec2_i32(abs(global1.wx) ^ global1.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global1.x, var_0.c) << (vec2<u32>(arg_2.d, 46832u) % vec2<u32>(32u)))) ^ max(var_0.c, 1i));
    let var_2 = 396u;
    var var_3 = arg_2;
    return firstLeadingBit(vec2<u32>(var_2 >> (~0u % 32u), countOneBits(var_3.d) ^ 1u));
}

fn func_3() -> bool {
    var var_0 = Struct_1(!vec3<bool>(all(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(1u >> (0u % 32u), 6u)] >= -1564f, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], -580f) * vec2<f32>(252f, -361f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 6u)], -441f)), vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, global3[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1182f, global3[_wgslsmith_index_u32(0u, 6u)]) + vec2<f32>(472f, -1354f)), true))))), -firstTrailingBit(~u_input.a), 15707u);
    var_0 = Struct_1(!var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-1559f - _wgslsmith_f_op_f32(180f - -2793f)), var_0.b.x), _wgslsmith_div_i32(abs(i32(-1i) * -8690i), var_0.c), _wgslsmith_mod_u32(~1u, 4294967295u));
    global1 = ~vec4<i32>(var_0.c, _wgslsmith_mod_i32(countOneBits(~2147483647i), var_0.c), -var_0.c, -1i);
    global3 = array<f32, 6>();
    let var_1 = func_1(vec3<bool>(var_0.a.x, var_0.a.x || any(vec2<bool>(false, var_0.a.x)), all(vec3<bool>(false, true, var_0.a.x))), Struct_1(select(var_0.a, var_0.a, vec3<bool>(true, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.b - var_0.b), _wgslsmith_f_op_vec2_f32(-var_0.b), true)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 38246i, -1i, var_0.c), vec4<i32>(u_input.a, global1.x, 78406i, -7317i)), 0i), 4294967295u), Struct_1(!(!var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_0.d, 6u)], -1246f)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.x, -7620i, var_0.c), vec4<i32>(-54442i, 2147483647i, global1.x, -32730i)), var_0.d)).x >> (~(~1u) % 32u);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_1, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global3[_wgslsmith_index_u32(64078u, 6u)])) + 803f))))) == 349f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = vec3<u32>(arg_0.d, 36727u, 4294967295u);
    return func_3() || false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 46490u)), ~vec2<u32>(55899u, 4294967295u)), firstTrailingBit(vec2<u32>(67338u, 4294967295u)) | ~vec2<u32>(4294967295u, 1u)), ~(func_1(vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-122f, global3[_wgslsmith_index_u32(1u, 6u)]), global1.x, 1u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1722f, global3[_wgslsmith_index_u32(0u, 6u)]), 1i, 4294967295u)) >> (min(vec2<u32>(0u, 1u), vec2<u32>(7078u, 0u)) % vec2<u32>(32u)))), vec2<u32>(1u, ~abs(max(8143u, 48259u))), select(vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), select(vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), !(~(-3866i) != _wgslsmith_mult_i32(u_input.a, 25436i))));
    var var_1 = Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(true, false, true)), !vec3<bool>(1i < u_input.a, func_2(Struct_1(vec3<bool>(false, true, false), vec2<f32>(-277f, -1664f), u_input.a, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 18486u)), func_3()), _wgslsmith_dot_vec2_i32(reverseBits(global1.wx), ~global1.yz) > global1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(abs(var_0.x), 6u)], -1108f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 6u)], global3[_wgslsmith_index_u32(22289u, 6u)]))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(var_0.x, 6u)])), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(var_0.x, 6u)], global3[_wgslsmith_index_u32(var_0.x, 6u)], true)), any(vec3<bool>(false, true, true)))), 1035f))), _wgslsmith_sub_i32(-(_wgslsmith_div_i32(0i, 33510i) << ((var_0.x >> (15598u % 32u)) % 32u)), _wgslsmith_clamp_i32(countOneBits(u_input.a ^ u_input.a), global1.x, ~(-16483i))), var_0.x);
    var_0 = ~vec2<u32>(countOneBits(~1u), 0u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2662f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_1.d, 6u)], 676f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-916f, global3[_wgslsmith_index_u32(var_0.x, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f * global3[_wgslsmith_index_u32(var_1.d, 6u)]) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(var_0.x, 6u)])))))));
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 36804u, ~(abs(1u) ^ (var_1.d & 69677u))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_1.d, var_1.d, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, 4294967295u, var_1.d), vec3<u32>(var_0.x, var_0.x, 20117u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, 88865u), vec3<u32>(var_1.d, var_0.x, var_0.x))) & ~vec3<u32>(4294967295u >> (var_1.d % 32u), ~var_1.d, var_1.d));
    var_0 = _wgslsmith_add_vec2_u32(~(~(~var_3.yx)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.x, reverseBits(25427u)), vec2<u32>(~0u, var_3.x))) & _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(var_3.zx, var_3.yy), vec2<u32>(var_1.d, 60695u), var_1.a.x) >> (max(~var_3.yx, vec2<u32>(var_3.x, 5769u)) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 15452u, var_1.d), vec4<u32>(var_0.x, 0u, var_3.x, 3974u)), var_1.d), ~_wgslsmith_clamp_vec2_u32(select(var_3.xz, var_3.yy, var_1.a.x), var_3.yy, countOneBits(var_3.zx)));
    var_1 = Struct_1(vec3<bool>(!var_1.a.x, 2219i <= -global1.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_1.d, 6u)], 985f) + var_2.xx))), 0i, select(var_1.d, var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, global1.x << (_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(var_3.x, 4294967295u)) % 32u), firstTrailingBit(abs(global1.x)) >> (~select(var_3.x, var_1.d, var_1.a.x) % 32u), global1.x), abs(abs(vec4<i32>(0i, global1.x, u_input.a, var_1.c) << (vec4<u32>(4294967295u, var_1.d, 4294967295u, var_0.x) % vec4<u32>(32u)))) ^ -countOneBits(vec4<i32>(var_1.c, u_input.a, u_input.a, global1.x) & vec4<i32>(-12725i, 3279i, 36576i, u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + 348f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 6u)]))), vec2<f32>(_wgslsmith_f_op_f32(min(-991f, 1f)), global3[_wgslsmith_index_u32(func_1(vec3<bool>(var_1.a.x, true, true), Struct_1(vec3<bool>(var_1.a.x, false, var_1.a.x), var_1.b, var_1.c, var_1.d), Struct_1(var_1.a, var_2.yy, 52990i, var_3.x)).x, 6u)])), ~(firstTrailingBit(abs(var_3)) & vec3<u32>(32872u, min(var_1.d, var_0.x), 4294967295u)), vec2<i32>(global1.x, global1.x));
}

