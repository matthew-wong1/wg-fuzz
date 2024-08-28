struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1536f, -2058f, 2106f, 930f), vec4<f32>(-1641f, -664f, 442f, 1748f), vec4<f32>(-983f, 620f, 127f, 1432f), vec4<f32>(1000f, 1299f, -682f, -1781f), vec4<f32>(458f, -1434f, 182f, -230f), vec4<f32>(1488f, 1063f, -1445f, -778f), vec4<f32>(-233f, -408f, -946f, -1000f), vec4<f32>(476f, -2472f, 812f, -544f), vec4<f32>(814f, 1136f, -1443f, 1155f), vec4<f32>(1000f, -113f, -918f, -2014f));

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(4294967295u, vec3<bool>(true, true, true), -330f, 0u, vec4<f32>(333f, -812f, 377f, 1000f))), 2147483647i, 0u, vec2<i32>(-25910i, 1i));

var<private> global2: vec4<i32> = vec4<i32>(-1i, 1i, 0i, -1i);

var<private> global3: i32 = 16134i;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = min(_wgslsmith_clamp_i32(abs(global4.x), max(_wgslsmith_mult_i32(global4.x, global2.x), global1.d.x), -1i), ~global2.x) | ~global2.x;
    var var_1 = _wgslsmith_f_op_f32(abs(global1.a.a.c));
    var var_2 = global2.x;
    var_2 = global1.d.x << (~_wgslsmith_dot_vec4_u32(~u_input.a, ~select(vec4<u32>(global1.a.a.a, u_input.b.x, 15140u, 5489u), u_input.a, vec4<bool>(global1.a.a.b.x, global1.a.a.b.x, false, true))) % 32u);
    let var_3 = Struct_4(global1.a, countOneBits(-1i), 1u, countOneBits(abs(firstTrailingBit(~vec2<i32>(global1.d.x, -34054i)))));
    return (u_input.a.x >= u_input.b.x) || any(!var_3.a.a.b.zz);
}

fn func_2() -> f32 {
    var var_0 = select(vec2<bool>(1u > ~global1.a.a.d, global1.a.a.b.x), vec2<bool>(all(vec4<bool>(false, global1.a.a.b.x, global1.a.a.b.x, func_3())), !global1.a.a.b.x), true);
    global1 = Struct_4(Struct_3(Struct_1(u_input.a.x, vec3<bool>(false, func_3(), var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1208f + 1413f), _wgslsmith_f_op_f32(-486f * global1.a.a.c), var_0.x)), ~_wgslsmith_div_u32(global1.a.a.d, 1u), vec4<f32>(global1.a.a.e.x, global1.a.a.c, _wgslsmith_f_op_f32(floor(-262f)), -237f))), _wgslsmith_dot_vec3_i32(max(global2.xxw, global2.wyw), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.yzz, vec3<i32>(global2.x, -33695i, global2.x), vec3<i32>(global1.d.x, -1i, global2.x) & global2.wzw), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, global2.x, -18615i), _wgslsmith_mod_vec3_i32(vec3<i32>(17765i, global4.x, -22469i), vec3<i32>(global2.x, -2147483647i, global1.b))))), u_input.a.x, -global1.d);
    let var_1 = u_input.a;
    global3 = -11039i;
    global0 = array<vec4<f32>, 10>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.e.x) * -1824f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    global1 = Struct_4(arg_2, _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.d.x, 2147483647i, global2.x), global2.wxz), ~global2.ywy)), _wgslsmith_div_i32(_wgslsmith_sub_i32(7755i, global2.x), ~(-75109i)) >> (0u % 32u)), arg_0.a, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-global2.yx, _wgslsmith_div_vec2_i32(global2.zx, global1.d)), 2147483647i), global1.b));
    global3 = global2.x;
    global1 = Struct_4(Struct_3(Struct_1(min(59512u, 1u) | firstTrailingBit(23770u), select(vec3<bool>(global1.a.a.b.x, false, global1.a.a.b.x), !arg_2.a.b, arg_2.a.b), -1456f, 1u | ~arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.e.x), _wgslsmith_f_op_f32(-arg_2.a.c), -1000f, _wgslsmith_f_op_f32(exp2(arg_2.a.e.x))))), ~(~_wgslsmith_dot_vec2_i32(global4.yz, vec2<i32>(global4.x, 32740i))) | -4876i, global1.a.a.a, global2.xy);
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.a.x, ~(~arg_2.a.a)) | 47516u, !vec3<bool>(true, (arg_0.b.x || arg_0.b.x) && true, func_3()), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(abs(global1.a.a.e.x)))), arg_3, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(~5899u, 10u)])) + _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(~arg_0.a, 10u)]))), global0[_wgslsmith_index_u32(arg_2.a.d, 10u)])));
    var var_1 = false;
    return Struct_4(arg_2, -20254i, arg_2.a.a, reverseBits(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, global1.b), ~(-17577i)), countOneBits(~global2.x))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    var var_0 = u_input.a;
    let var_1 = func_4(global1.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), Struct_3(global1.a.a), _wgslsmith_mod_u32(~1u, var_0.x));
    var var_2 = var_1.a.a.e.x;
    return Struct_1(~_wgslsmith_mod_u32(~(u_input.a.x << (0u % 32u)), min(var_0.x, 0u) | var_1.c), var_1.a.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f), -759f))) - 538f), global1.a.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a.e.x, global1.a.a.c, 1162f, global1.a.a.c))))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = func_4(func_1(), -132f, global1.a, max(func_4(arg_0.d, _wgslsmith_f_op_f32(abs(func_4(Struct_1(global1.a.a.a, arg_0.e.b, 778f, 1u, vec4<f32>(-958f, global1.a.a.c, 765f, global1.a.a.e.x)), 1284f, Struct_3(global1.a.a), global1.a.a.a).a.a.c)), func_4(Struct_1(global1.a.a.d, vec3<bool>(true, global1.a.a.b.x, global1.a.a.b.x), -1000f, global1.a.a.d, arg_0.b.e), _wgslsmith_f_op_f32(1147f - -1204f), Struct_3(global1.a.a), 1u << (u_input.a.x % 32u)).a, ~arg_0.b.a).c, arg_0.b.a));
    global4 = ~vec3<i32>(global1.b, arg_1 << (~arg_0.a % 32u), var_0.b) & countOneBits(-min(vec3<i32>(2147483647i, global2.x, global1.b), global2.yzw) << (vec3<u32>(2252u, _wgslsmith_mult_u32(arg_0.a, 0u), arg_0.a) % vec3<u32>(32u)));
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec2_i32(abs(global4.xz), global4.zx), global1.b, arg_1);
    var_1 = vec3<i32>(countOneBits(-6685i), var_1.x, 0i);
    var var_2 = Struct_3(global1.a.a);
    return -vec4<i32>(arg_2 | _wgslsmith_sub_i32(global4.x, 0i), global1.d.x, -34000i, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = reverseBits(vec3<i32>(global1.b, 2147483647i, min(2147483647i, ~global4.x << (global1.a.a.d % 32u))));
    let var_0 = Struct_3(global1.a.a);
    global2 = vec4<i32>(~(i32(-1i) * -global4.x), firstTrailingBit(-_wgslsmith_div_i32(-1i, global4.x)), _wgslsmith_dot_vec2_i32(-global4.zy, -global2.zy), -2147483647i) & vec4<i32>(~global2.x, _wgslsmith_mod_i32(~(~global4.x), global2.x), -2147483647i, global2.x ^ _wgslsmith_mult_i32(2147483647i, -global2.x));
    global3 = 13951i;
    var var_1 = Struct_2(4294967295u, global1.a.a, -1345f, global1.a.a, Struct_1(~global1.a.a.d, vec3<bool>(var_0.a.b.x, !var_0.a.b.x, global1.a.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f - _wgslsmith_f_op_f32(var_0.a.e.x - var_0.a.e.x))), countOneBits(_wgslsmith_mod_u32(0u, global1.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(global1.c, 10u)] - global1.a.a.e), _wgslsmith_f_op_vec4_f32(-var_0.a.e)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.e.x, -1355f, var_0.a.c, -616f) * global1.a.a.e), global0[_wgslsmith_index_u32(global1.c | global1.a.a.d, 10u)], !vec4<bool>(var_0.a.b.x, false, global1.a.a.b.x, var_0.a.b.x))), !select(vec4<bool>(global1.a.a.b.x, false, global1.a.a.b.x, false), vec4<bool>(global1.a.a.b.x, global1.a.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, global1.a.a.b.x))))));
    global4 = -(countOneBits(vec3<i32>(-1i) * -global2.zzx) & (global2.xyz ^ global2.zyw));
    var var_2 = ~(u_input.a & u_input.a);
    global2 = -func_5(Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), reverseBits(var_1.a)), func_1(), -247f, var_0.a, func_4(func_1(), _wgslsmith_f_op_f32(floor(global1.a.a.c)), Struct_3(global1.a.a), 24443u).a.a), ~2147483647i, global1.b, select(func_1().b.zx, !select(global1.a.a.b.xy, vec2<bool>(var_0.a.b.x, var_1.e.b.x), vec2<bool>(global1.a.a.b.x, var_1.b.b.x)), func_1().b.xx));
    global4 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(27133i, -4078i, -abs(global2.x)), ~global2.wxx), func_5(Struct_2(16290u, func_1(), _wgslsmith_f_op_f32(594f - _wgslsmith_f_op_f32(f32(-1f) * -392f)), var_1.b, var_1.d), global2.x, func_4(Struct_1(var_1.b.d, !var_1.d.b, 1552f, _wgslsmith_sub_u32(var_2.x, 6666u), _wgslsmith_f_op_vec4_f32(-var_1.b.e)), _wgslsmith_f_op_f32(var_1.b.c * var_1.d.e.x), func_4(Struct_1(var_2.x, vec3<bool>(true, global1.a.a.b.x, global1.a.a.b.x), -181f, var_1.d.d, global1.a.a.e), _wgslsmith_f_op_f32(select(-296f, 1771f, false)), global1.a, ~4294967295u).a, 11763u).b, func_4(Struct_1(~0u, vec3<bool>(false, global1.a.a.b.x, var_0.a.b.x), 1000f, 43465u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, -124f, 996f, -1166f) - vec4<f32>(1371f, 138f, -1578f, 210f))), _wgslsmith_div_f32(global1.a.a.c, _wgslsmith_f_op_f32(var_1.b.c - global1.a.a.e.x)), func_4(Struct_1(1u, vec3<bool>(var_1.b.b.x, true, true), var_0.a.c, 26905u, global1.a.a.e), _wgslsmith_f_op_f32(ceil(global1.a.a.c)), Struct_3(Struct_1(4294967295u, global1.a.a.b, global1.a.a.c, var_1.d.d, vec4<f32>(-1903f, var_0.a.c, -1006f, var_0.a.e.x))), ~u_input.a.x).a, ~1u).a.a.b.xx).xzx, vec3<i32>(-1i) * -vec3<i32>(-1i, ~global4.x, global4.x ^ -1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e.x, max(abs(-2147483647i & firstTrailingBit(global1.d.x)), _wgslsmith_div_i32(max(global1.d.x, ~(-2147483647i)), 39876i)));
}

