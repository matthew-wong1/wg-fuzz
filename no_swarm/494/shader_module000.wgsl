struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 89709u, 44172u, 0u, 16949u, 1u, 1u, 14799u, 0u, 0u, 55205u, 1u, 20604u);

var<private> global3: i32;

var<private> global4: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(4294967295u, 4539u, 0u), vec3<u32>(0u, 66939u, 9440u), vec3<u32>(1u, 4294967295u, 13431u), vec3<u32>(0u, 48271u, 29831u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(34066u, 38392u, 0u), vec3<u32>(56157u, 1u, 0u), vec3<u32>(16314u, 18257u, 1u), vec3<u32>(4294967295u, 0u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> u32 {
    global1 = array<Struct_1, 12>();
    var var_0 = true;
    var_0 = !arg_2.a.x;
    var var_1 = ~(vec4<u32>(1u, 4294967295u, arg_0 >> (27167u % 32u), 1u) & _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(500u, arg_0, 75614u, 1u) | vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], arg_0, u_input.a, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(46334u, 14u)], arg_0), vec4<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(25609u, 14u)], 0u), vec4<u32>(global2[_wgslsmith_index_u32(15989u, 14u)], 41101u, arg_0, 0u))), select(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(28883u, 14u)], 4294967295u, 106734u, u_input.a), vec4<u32>(13277u, u_input.a, global2[_wgslsmith_index_u32(3066u, 14u)], global2[_wgslsmith_index_u32(24027u, 14u)])), vec4<u32>(arg_0, arg_0, 0u, u_input.a) & vec4<u32>(u_input.a, arg_0, 83973u, arg_0), arg_2.b.x)));
    var var_2 = vec4<i32>(-7303i, firstTrailingBit(reverseBits(2147483647i)), ~1i, ~1i);
    return ~(~(~abs(u_input.a)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~min(~_wgslsmith_mult_u32(1u, u_input.a), 0u);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 12u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32((~arg_0 << (abs(arg_0) % 32u)) | func_3(arg_0 ^ (u_input.a >> (arg_0 % 32u)), !select(var_1.b.x, true, true), Struct_1(vec4<bool>(false, false, var_1.a.x, false), select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.a.x), var_1.a, false)), u_input.e.x), ~u_input.a | (arg_0 >> (u_input.a % 32u))), 12u)];
    global1 = array<Struct_1, 12>();
    global3 = firstTrailingBit(-max(u_input.e.x, _wgslsmith_div_i32(-1i, 8601i)));
    return global1[_wgslsmith_index_u32(0u, 12u)];
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = func_2(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec4<f32>(-1680f, 1402f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(566f * -568f))), _wgslsmith_f_op_f32(467f - _wgslsmith_f_op_f32(ceil(-522f)))));
    let var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(reverseBits(~u_input.a), ~6238u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, countOneBits(41064u), global2[_wgslsmith_index_u32(5589u, 14u)])), vec3<u32>(0u, 1u, _wgslsmith_div_u32(~0u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]))), ~u_input.a), 12u)];
    var var_3 = select(~(~(~reverseBits(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(15398u, 14u)])))), firstTrailingBit(select(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(88280u, 14u)], 1u), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(125866u, 14u)], 14u)], 0u), var_0.b.yx)), true);
    let var_4 = global1[_wgslsmith_index_u32(~(~(~(~select(0u, 0u, true)))), 12u)];
    return vec2<bool>(false, select(var_1, !(!(!arg_1)), all(!(!vec4<bool>(false, false, false, var_4.b.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    var var_0 = select(arg_1, vec2<bool>(true, !any(!vec4<bool>(arg_1.x, true, arg_1.x, true))), false);
    var var_1 = firstTrailingBit(u_input.c) != u_input.e.x;
    var var_2 = -259f <= arg_0.x;
    global2 = array<u32, 14>();
    var_0 = vec2<bool>(arg_1.x && false, !((_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) == _wgslsmith_f_op_f32(select(-2069f, arg_0.x, false))) && true));
    return all(func_2(~8249u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-202f + arg_0.x), -736f, _wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(func_1(u_input.e.x, false).x, select(arg_1.x, arg_1.x, arg_1.x), false, true)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(-2147483647i);
    var var_0 = Struct_1(!vec4<bool>(false, any(vec2<bool>(false, true)), func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1763f, 566f, 304f, -545f))), func_1(-37499i, false)), true), !vec4<bool>(select(true, all(vec3<bool>(true, true, true)), func_2(4795u, vec4<f32>(1733f, -125f, 1000f, 694f)).b.x), false, false, func_2(4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(1374f, -1226f, -1000f, -2260f), vec4<f32>(1563f, -926f, -1052f, -116f))).a.x));
    global2 = array<u32, 14>();
    let var_1 = func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(24280u, 1u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 14u)], 0u))), ~max(vec2<u32>(1u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 14u)])))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(step(-844f, _wgslsmith_f_op_f32(-565f + 456f)))), -1052f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(f32(-1f) * -970f))), -425f));
    var var_2 = Struct_1(func_2(4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1094f, 1355f, 1006f, 1395f), vec4<f32>(-217f, -2171f, -1013f, 871f), var_1.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-849f, -1628f, 1325f, -970f))))), vec4<f32>(1f, 1f, 1f, 1f)))).b, func_2(~firstLeadingBit(~87523u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 1937f, -1040f, 146f)) + vec4<f32>(-818f, -1058f, -569f, 286f)))).b);
    var var_3 = select(func_4(vec4<f32>(_wgslsmith_f_op_f32(select(-169f, -397f, false)), -506f, _wgslsmith_f_op_f32(663f + -304f), _wgslsmith_f_op_f32(f32(-1f) * -1469f)), var_1.b.zz) && any(select(var_0.b, select(var_2.a, vec4<bool>(false, true, true, var_1.b.x), var_2.a.x), var_0.a.x)), all(var_0.b.zzw), var_1.a.x && (select(true, true, true) | var_1.b.x));
    let var_4 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u >> (~global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 14u)] % 32u), 14u)], 12u)];
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1181f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) + _wgslsmith_f_op_f32(ceil(-638f)))), u_input.e.x, select(vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.d.x), u_input.d.x, -2147483647i, ~(-14033i)), abs(u_input.d), func_2(~global2[_wgslsmith_index_u32(11243u, 14u)], vec4<f32>(-1723f, 1568f, -1281f, -421f)).b) >> (select(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 57140u, global2[_wgslsmith_index_u32(59589u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 3628u, 46596u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, global2[_wgslsmith_index_u32(1u, 14u)])), vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 14u)], 42410u), 1u, u_input.a, 1u), !var_2.b) % vec4<u32>(32u)));
}

