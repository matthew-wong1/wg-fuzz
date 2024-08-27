struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<bool>(false, true, false), 791f), Struct_3(vec3<bool>(false, false, false), -449f), Struct_3(vec3<bool>(true, true, true), -341f), Struct_3(vec3<bool>(false, true, true), 601f), Struct_3(vec3<bool>(false, false, false), 627f), Struct_3(vec3<bool>(false, true, false), 1000f), Struct_3(vec3<bool>(true, false, false), 1066f), Struct_3(vec3<bool>(true, true, true), -1000f), Struct_3(vec3<bool>(true, false, true), 1565f), Struct_3(vec3<bool>(false, false, false), -1078f), Struct_3(vec3<bool>(true, true, false), 2174f), Struct_3(vec3<bool>(false, true, true), 1285f), Struct_3(vec3<bool>(true, false, true), 805f), Struct_3(vec3<bool>(false, true, true), 119f), Struct_3(vec3<bool>(false, true, false), -953f), Struct_3(vec3<bool>(false, false, true), 723f), Struct_3(vec3<bool>(true, true, false), -139f), Struct_3(vec3<bool>(true, true, true), -1720f));

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global1.b, 2289f)), arg_1.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.b.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-165f, arg_1.c), vec2<f32>(1377f, arg_1.c), global1.a.zx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-295f, global1.b))), arg_1.b.zx)), select(select(!(!global1.a.yz), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), vec2<bool>(global1.a.x, false)), any(vec4<bool>(false, global1.a.x, false, global1.a.x))), !(!global1.a.x && arg_1.a))));
    var_0 = arg_1.b.zx;
    let var_1 = 898f;
    let var_2 = Struct_3(!(!vec3<bool>(arg_1.a, arg_1.a, true)), _wgslsmith_f_op_f32(trunc(-171f)));
    let var_3 = -658f;
    return 1101f;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = arg_0.x;
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, 1378f, 418f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-271f, global1.b, global1.b, global1.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2247f, 820f, -431f, -823f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(879f)), -765f), _wgslsmith_f_op_f32(trunc(global1.b)), var_0))));
    var var_2 = global0[_wgslsmith_index_u32(41790u, 18u)];
    let var_3 = !(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a, u_input.a), Struct_1(false, var_1.b, -1014f))), _wgslsmith_f_op_f32(select(493f, var_1.b.x, arg_0.x))) <= _wgslsmith_f_op_f32(-var_2.b)));
    var var_4 = var_2.b;
    return Struct_3(!global1.a, var_2.b);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3.b.yyz;
    let var_1 = Struct_2(95681u, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), 33456i), -max(u_input.a, u_input.a)), -(min(14361i, u_input.a) & (2147483647i << (arg_1 % 32u)))));
    var var_2 = -2147483647i;
    let var_3 = 6535u;
    let var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(~reverseBits(2147483647i), 1i, i32(-1i) * -16204i), _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(24432i, 2147483647i, -21334i), vec3<i32>(-6130i, -1i, -1i), vec3<i32>(-43818i, var_1.b, 18975i)), firstLeadingBit(vec3<i32>(var_1.b, 1i, -1i) << (vec3<u32>(var_1.a, 13104u, 11699u) % vec3<u32>(32u))), select(vec3<i32>(240i, -2147483647i, u_input.a), vec3<i32>(1i, -2147483647i, 5121i) << (vec3<u32>(arg_1, 4294967295u, 23741u) % vec3<u32>(32u)), any(global1.a.xx)))) & firstLeadingBit(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, 18721i, u_input.a), vec3<i32>(17130i, -2147483647i, var_1.b)), ~vec3<i32>(var_1.b, var_1.b, -23809i)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_3.c, arg_3.c, arg_2.a.x)), _wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), var_0.x, arg_3.b.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(~67877u, -2147483647i ^ ~u_input.a);
    var var_1 = func_2(!(!func_2(global1.a).a)).b;
    var var_2 = vec4<f32>(arg_0.b.x, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_0.a, _wgslsmith_add_u32(u_input.b, 31658u), global0[_wgslsmith_index_u32(u_input.c, 18u)], arg_0)).x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.b))) - arg_0.c));
    global2 = -10279i;
    global1 = global0[_wgslsmith_index_u32(4382u, 18u)];
    return global0[_wgslsmith_index_u32(~4055u, 18u)];
}

fn func_1() -> i32 {
    var var_0 = func_5(Struct_1(!(u_input.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(38100i, u_input.a, 12046i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(all(global1.a.yx), countOneBits(u_input.b), func_2(vec3<bool>(global1.a.x, false, true)), Struct_1(global1.a.x, vec4<f32>(413f, global1.b, -1868f, global1.b), 478f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<i32>(9315i, u_input.a), Struct_1(global1.a.x, vec4<f32>(-208f, 576f, global1.b, -1044f), -556f))))))));
    global2 = max(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.a), vec2<i32>(-82248i, u_input.a)), u_input.a);
    var_0 = global0[_wgslsmith_index_u32(~(~(4294967295u << (u_input.b % 32u))), 18u)];
    var var_1 = vec4<bool>(!(-u_input.a <= min(-2147483647i, -2147483647i)), all(!func_2(var_0.a).a), global1.a.x, false | ((u_input.a << (67267u % 32u)) == u_input.a));
    let var_2 = Struct_1(!global1.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(929f, global1.b, 491f, -203f) + vec4<f32>(global1.b, global1.b, 434f, -182f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global1.b, -455f, 890f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 1019f, -492f, var_0.b), vec4<f32>(var_0.b, 749f, var_0.b, -710f), var_0.a.x))))))), 307f);
    return -4498i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a, u_input.a, _wgslsmith_sub_i32(-1i, u_input.a)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 39722u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -23226i, u_input.a, -2147483647i), vec4<i32>(2147483647i, 0i, -2147483647i, -9030i)), u_input.a, u_input.a), vec3<i32>(func_1(), firstLeadingBit(0i), -35492i)));
    var var_1 = -select(max(var_0.x, countOneBits(u_input.a)) >> (~u_input.b % 32u), 18430i, true);
    let var_2 = Struct_2(1u, firstLeadingBit(-2147483647i));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 18u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(global1.a.x, true, select(!global1.a.x, any(vec4<bool>(false, false, var_3.a.x, var_3.a.x)), false)), u_input.b >> (0u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_2.a, 28438u, 4294967295u, 1u)), select(vec4<u32>(var_2.a, 4294967295u, u_input.c, u_input.b), vec4<u32>(var_2.a, var_2.a, u_input.c, u_input.c), vec4<bool>(global1.a.x, true, var_3.a.x, false))), 1u), 18u)], Struct_1(global1.a.x, vec4<f32>(_wgslsmith_f_op_f32(global1.b * -1180f), _wgslsmith_f_op_f32(select(var_3.b, 1002f, false)), -338f, func_2(var_3.a).b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b + var_3.b)))))).x);
    var var_5 = vec2<u32>(var_2.a >> (_wgslsmith_div_u32(abs(60944u), 1u) % 32u), countOneBits(~20383u));
    var_5 = vec2<u32>(86774u, ~min(var_2.a ^ 82332u, 4294967295u)) & ~countOneBits(max(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_5.x), vec2<u32>(u_input.c, var_2.a)), vec2<u32>(u_input.b, var_5.x)));
    global0 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(~max(vec2<u32>(var_2.a, var_5.x), vec2<u32>(u_input.b, 4690u)), ~(~vec2<u32>(u_input.c, var_5.x))), vec2<i32>(~(~_wgslsmith_mod_i32(-1i, 2147483647i)), _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(var_0.x, u_input.a, 4932i, 4806i)), vec4<i32>(var_0.x, var_2.b, _wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, -1i), vec4<i32>(0i, 26719i, var_2.b, 26038i))))));
}

