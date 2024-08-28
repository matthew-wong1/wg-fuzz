struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, 1i), vec4<i32>(0i, -11602i, -1i, 21595i), 4294967295u, i32(-2147483648), 11343i);

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-53592i, -1i), vec2<i32>(-1i, 8318i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, -41271i), vec2<i32>(0i, -23937i), vec2<i32>(i32(-2147483648), -50041i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 12981i), vec2<i32>(-37964i, 2147483647i), vec2<i32>(0i, 13814i), vec2<i32>(-7010i, -36817i), vec2<i32>(34412i, 2147483647i), vec2<i32>(27169i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-16769i, 1i), vec2<i32>(45844i, 37079i), vec2<i32>(1i, -28357i), vec2<i32>(-47056i, 2773i), vec2<i32>(-6981i, -1i), vec2<i32>(5492i, 4836i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-16871i, 726i));

var<private> global3: array<Struct_3, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    let var_0 = select(select(select(vec2<bool>(select(true, true, false), any(vec3<bool>(false, true, false))), vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true))), vec2<bool>(all(vec4<bool>(true, true, false, false)), false)), vec2<bool>(false, true), vec2<bool>(true || select(false, true, true), true)), vec2<bool>(true, true), any(vec4<bool>(all(vec3<bool>(true, true, true)), select(true, false, all(vec4<bool>(false, true, false, true))), true, true)));
    global0 = any(vec4<bool>(!any(!vec3<bool>(var_0.x, false, var_0.x)), any(vec2<bool>(true, var_0.x)), var_0.x, !(!var_0.x)));
    var var_1 = Struct_1(vec3<i32>(u_input.a.x, 2147483647i ^ (i32(-1i) * -u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 17239i, global1.a.x, -13425i), u_input.a)), _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(global1.a.x)))), global1.b, 59302u, 22127i, 2147483647i);
    let var_2 = Struct_2(Struct_1(-max(~u_input.a.zwx, abs(vec3<i32>(36729i, u_input.d.x, 1i))), abs(firstTrailingBit(-vec4<i32>(var_1.b.x, global1.b.x, -65188i, 0i))), abs(69533u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1.b.x, global1.e, u_input.d.x)), vec3<i32>(1i, 0i, global1.b.x)) ^ global1.e, global1.e), Struct_1(u_input.a.zzw, min(var_1.b, -(global1.b << (vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)))), 0u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(13030u, var_1.c, var_1.c, global1.c), vec4<u32>(3181u, 47484u, var_1.c, 41384u)) % 32u), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.a.x, global1.a.x, 1669i), global1.b.yww), reverseBits(2616i)), var_1.c, vec4<i32>(-47446i, _wgslsmith_mult_i32(select(~u_input.d.x, global1.d, true), countOneBits(_wgslsmith_div_i32(global1.a.x, var_1.d))), u_input.d.x, select(-2147483647i, var_1.b.x, var_0.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(409f)), _wgslsmith_f_op_f32(sign(1165f)));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<i32>) -> bool {
    let var_0 = u_input.a.zww;
    var var_1 = ~vec2<i32>(0i << (1u % 32u), (arg_1.b.x | ~global1.a.x) >> (~global1.c % 32u));
    let var_2 = vec2<u32>(1u, _wgslsmith_dot_vec2_u32(select(arg_0.yz, u_input.b, true), vec2<u32>(_wgslsmith_mult_u32(53821u, 1u), ~_wgslsmith_mult_u32(1u, 29038u))));
    var var_3 = select(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), func_3(), any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(!(~u_input.b.x >= _wgslsmith_div_u32(24735u, 54537u)), !(~var_2.x == _wgslsmith_clamp_u32(33901u, global1.c, global1.c))));
    var var_4 = reverseBits(var_2.x);
    return var_3.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = any(!vec4<bool>(global1.c >= 0u, !arg_0, false, any(vec2<bool>(true, arg_0)))) & true;
    global3 = array<Struct_3, 16>();
    var var_1 = firstLeadingBit(~(~vec4<u32>(u_input.b.x, 3707u, global1.c, u_input.c.x) | vec4<u32>(global1.c, u_input.b.x, u_input.b.x, u_input.b.x)) | firstLeadingBit(vec4<u32>(firstLeadingBit(0u), firstTrailingBit(0u), global1.c, global1.c)));
    var var_2 = all(select(vec2<bool>(true, select(arg_0, !arg_0, func_2(vec3<u32>(u_input.c.x, 0u, 1u), Struct_3(vec2<f32>(arg_3.c.x, arg_1), vec3<i32>(u_input.a.x, -1i, -1i), arg_3.a), vec4<f32>(-1000f, -1596f, -2334f, 1375f), u_input.a.xzx))), !select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), arg_0)));
    var var_3 = vec3<u32>(global1.c ^ _wgslsmith_dot_vec2_u32((vec2<u32>(global1.c, u_input.b.x) >> (u_input.c.xz % vec2<u32>(32u))) | var_1.yz, ~select(vec2<u32>(global1.c, global1.c), vec2<u32>(var_1.x, 0u), vec2<bool>(false, false))), global1.c, 8704u);
    return _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~arg_2, global1.b) | vec4<i32>(-13837i, arg_2.x & global1.d, arg_2.x, -17924i), vec4<i32>(arg_3.b.x, -12758i, ~1i >> (max(33204u, global1.c) % 32u), u_input.a.x)) | vec4<i32>(1i ^ (firstTrailingBit(-2147483647i) | ~arg_3.b.x), u_input.a.x, _wgslsmith_mult_i32(arg_3.b.x, -arg_3.b.x) << (~var_1.x % 32u), firstLeadingBit(13603i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(vec3<i32>(-global1.e, u_input.a.x, 21413i) | vec3<i32>(countOneBits(global1.a.x), ~global1.e, 50945i), vec3<i32>(max(-global1.b.x, ~u_input.d.x), u_input.d.x, 42693i)), select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, global1.e, global1.b.x, 1i)) ^ u_input.a, vec4<i32>(~u_input.d.x, min(-55979i, 0i), _wgslsmith_sub_i32(2147483647i, 34303i), global1.b.x)), vec4<i32>(u_input.a.x, abs(1i), -1i, global1.b.x), vec4<bool>(true, true, !all(vec2<bool>(true, true)), true)), 14573u, _wgslsmith_mult_i32(50754i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(~global1.b.x, u_input.a.x & global1.e), global1.b.x)), min(u_input.d.x, u_input.a.x));
    global2 = array<vec2<i32>, 22>();
    let var_1 = all(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false))) | true;
    global2 = array<vec2<i32>, 22>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1529f), -310f, _wgslsmith_f_op_f32(f32(-1f) * -1084f));
    let var_3 = vec4<u32>(~(~var_0.c), 44466u, 4294967295u, ~firstTrailingBit(_wgslsmith_sub_u32(22388u, global1.c) & ~global1.c));
    global2 = array<vec2<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, _wgslsmith_f_op_f32(662f + -1411f), -156f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, var_2.x, var_2.x) - vec3<f32>(var_2.x, 689f, -146f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1273f, 1628f), vec3<f32>(-345f, 1711f, var_2.x)), vec3<bool>(false, var_1, var_1))))), func_1(any(!(!vec4<bool>(false, var_1, false, var_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-455f, var_2.x) + _wgslsmith_f_op_f32(-var_2.x)), min(~vec4<i32>(var_0.d, 5054i, global1.e, 2147483647i) ^ u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, -21253i), select(vec4<i32>(global1.b.x, -5313i, 2147483647i, -2147483647i), vec4<i32>(0i, 9960i, u_input.a.x, -2147483647i), var_1))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.c, var_0.c), 16u)]), 43927u & _wgslsmith_add_u32(1u, (u_input.b.x << (4294967295u % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.x), var_3.ww)));
}

