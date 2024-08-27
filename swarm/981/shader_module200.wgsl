struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 31>;

var<private> global3: array<i32, 25> = array<i32, 25>(-20163i, 13564i, i32(-2147483648), 8880i, 1i, 0i, 13374i, -26664i, 4853i, 2147483647i, 1i, i32(-2147483648), -15008i, 1i, 2147483647i, -6893i, -1i, 1i, 14117i, -25255i, 1i, 0i, -1i, 0i, 3352i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(global1.a.yyz, ~_wgslsmith_mult_vec3_u32(u_input.e, u_input.e))), 31u)], global2[_wgslsmith_index_u32(countOneBits(global1.a.x), 31u)]);
    let var_1 = global1.a.x;
    var_0 = Struct_3(Struct_2(vec4<u32>(~u_input.c, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(58491u, var_0.b.a.x, 54117u), _wgslsmith_mult_vec3_u32(global1.a.yxx, vec3<u32>(global1.a.x, 50659u, 41763u))), _wgslsmith_dot_vec3_u32(global1.a.wzx, u_input.e & global1.a.xzz)), !vec2<bool>(global1.b.x, any(vec4<bool>(false, var_0.b.b.x, false, global1.b.x)))), global2[_wgslsmith_index_u32(~1u, 31u)]);
    let var_2 = !(!select(select(select(vec3<bool>(var_0.a.b.x, true, false), vec3<bool>(true, true, false), global1.b.x), !vec3<bool>(false, false, global1.b.x), !vec3<bool>(true, false, var_0.b.b.x)), select(vec3<bool>(var_0.b.b.x, false, global1.b.x), vec3<bool>(global1.b.x, var_0.b.b.x, var_0.a.b.x), all(vec2<bool>(true, false))), var_0.b.b.x));
    let var_3 = vec4<bool>((_wgslsmith_f_op_f32(arg_0.a * -572f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f), -913f)) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f + arg_0.a) + _wgslsmith_f_op_f32(-arg_0.a)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-589f + arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a)))), arg_0.a < arg_0.a, true, !(global1.b.x || global1.b.x));
    return u_input.d;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = arg_3.x ^ reverseBits(29462u);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(max(~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(var_0, 25u)], arg_0), u_input.d), func_3(Struct_5(_wgslsmith_div_f32(221f, -1000f))), _wgslsmith_clamp_i32(-global3[_wgslsmith_index_u32(1u, 25u)], arg_0 ^ 0i, arg_0)), -reverseBits(vec3<i32>(_wgslsmith_div_i32(0i, 2147483647i), _wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_add_i32(1i, -1i))));
    let var_2 = true;
    let var_3 = 198f;
    var var_4 = max(var_0, firstTrailingBit(0u));
    return arg_2.b;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> bool {
    global2 = array<Struct_2, 31>();
    let var_0 = 4294967295u;
    global2 = array<Struct_2, 31>();
    global2 = array<Struct_2, 31>();
    global0 = func_3(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1804f)) + _wgslsmith_div_f32(-1309f, 545f))));
    return !select(any(vec4<bool>(var_0 > 0u, true, !global1.b.x, arg_2.b.x)), false, !arg_3);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(all(vec4<bool>(any(vec4<bool>(arg_1, false, false, false)), arg_1, any(vec4<bool>(global1.b.x, false, arg_1, global1.b.x)), firstLeadingBit(arg_0.x) >= global3[_wgslsmith_index_u32(0u & arg_3.x, 25u)])), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(abs(715f))));
    var var_2 = Struct_5(1f);
    let var_3 = vec4<bool>(false, !global1.b.x, func_4(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(arg_3.x, 25u)] & u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-36438i, -23703i, 7596i), arg_0.zzy)) | arg_0.x, min(max(-vec3<i32>(arg_0.x, 2147483647i, 1i), _wgslsmith_sub_vec3_i32(arg_0.yxz, vec3<i32>(-1i, arg_0.x, -57399i))), arg_0.zzy), Struct_2(vec4<u32>(global1.a.x, ~4294967295u, 12631u >> (0u % 32u), 1u), func_2(1i, false, Struct_2(global1.a, var_0), ~vec4<u32>(arg_2, u_input.c, 8653u, 4294967295u))), !var_0.x), _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(ceil(var_2.a))) >= _wgslsmith_f_op_f32(-var_2.a));
    let var_4 = !(!var_3);
    return u_input.e.x;
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    global0 = u_input.d;
    var var_0 = Struct_1(func_4(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.c), _wgslsmith_add_u32(52537u, 0u)), 25u)], global3[_wgslsmith_index_u32(~72329u, 25u)]), vec3<i32>(-812i, countOneBits(-global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_mod_i32(u_input.b.x ^ 2147483647i, 1i)), Struct_2(global1.a ^ global1.a, func_2(_wgslsmith_sub_i32(u_input.b.x, -1i), true, global2[_wgslsmith_index_u32(11915u, 31u)], vec4<u32>(12820u, global1.a.x, 0u, 4294967295u))), false), !func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(2060u, 25u)]), vec2<i32>(27811i, 23131i)), _wgslsmith_f_op_f32(trunc(-975f)) == -1234f, global2[_wgslsmith_index_u32(~u_input.a ^ _wgslsmith_sub_u32(u_input.c, 47081u), 31u)], global1.a), firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u & u_input.a, 25u)], 1i, global3[_wgslsmith_index_u32(countOneBits(u_input.a), 25u)]) | ~(-vec3<i32>(global3[_wgslsmith_index_u32(global1.a.x, 25u)], -54187i, -43665i))), global1.a, _wgslsmith_div_i32(u_input.b.x, u_input.b.x));
    var_0 = Struct_1(func_4(-39469i, var_0.c, global2[_wgslsmith_index_u32((select(70470u, 0u, arg_0.x) << (countOneBits(u_input.e.x) % 32u)) | global1.a.x, 31u)], arg_0.x), arg_0.zx, var_0.c, reverseBits(~global1.a), max(~_wgslsmith_clamp_i32(var_0.e, -1i, var_0.e), global3[_wgslsmith_index_u32(27363u, 25u)]));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1481f - 120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1245f, 1313f))), -206f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(329f - 1419f), true)))));
    global0 = countOneBits(11664i);
    return Struct_1(!select(any(!vec4<bool>(true, arg_0.x, arg_0.x, false)), all(global1.b), global1.b.x), !select(vec2<bool>(var_0.b.x, func_4(-2147483647i, var_0.c, Struct_2(vec4<u32>(13450u, 13932u, u_input.e.x, var_0.d.x), vec2<bool>(false, var_0.b.x)), false)), vec2<bool>(true, true), !global1.b), abs(vec3<i32>(_wgslsmith_mod_i32(-26537i, u_input.b.x) << (1u % 32u), u_input.d, ~select(1i, -7997i, global1.b.x))), _wgslsmith_sub_vec4_u32(reverseBits(max(vec4<u32>(0u, global1.a.x, 10994u, global1.a.x), global1.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, global1.a.x, 11741u, 4294967295u), global1.a) % vec4<u32>(32u))), vec4<u32>(~global1.a.x, 4294967295u, 1u << (var_0.d.x % 32u), func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, var_0.c.x, u_input.b.x), vec4<i32>(u_input.d, -1i, u_input.b.x, 1i)), true, func_1(vec4<i32>(global3[_wgslsmith_index_u32(global1.a.x, 25u)], 1i, 2147483647i, 14381i), var_0.a, var_0.d.x, vec2<u32>(1u, 366u)), _wgslsmith_div_vec2_u32(u_input.e.yz, u_input.e.yy)))), _wgslsmith_dot_vec3_i32(~var_0.c, vec3<i32>(func_3(Struct_5(1524f)), var_0.c.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -46345i;
    var var_1 = func_5(vec3<bool>(!(func_1(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.d), false, 14367u, vec2<u32>(global1.a.x, global1.a.x)) > ~u_input.e.x), true, 49864u > countOneBits(_wgslsmith_mod_u32(global1.a.x, global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~vec4<i32>(1i, 15338i, 1i, 0i)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, min(var_1.d.x, 21521u), 57215u), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_1.d.x, 1u, var_1.d.x)), vec3<u32>(40923u, 77218u, var_1.d.x), select(vec3<u32>(4294967295u, global1.a.x, 67290u), vec3<u32>(4294967295u, 4294967295u, 69312u), false)))), vec4<u32>(var_1.d.x, var_1.d.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(global1.a.x, 30997u)), reverseBits(~1u)), 45466u));
}

