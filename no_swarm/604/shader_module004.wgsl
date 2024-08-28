struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-496f, -945f, 844f, 216f);

var<private> global1: bool;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<f32>(1312f, 1339f)), Struct_2(vec2<f32>(-179f, 1000f)), Struct_2(vec2<f32>(1239f, 1096f)), Struct_2(vec2<f32>(321f, -336f)), Struct_2(vec2<f32>(-498f, -275f)), Struct_2(vec2<f32>(-200f, 542f)), Struct_2(vec2<f32>(-1653f, 1879f)), Struct_2(vec2<f32>(-1622f, 1016f)), Struct_2(vec2<f32>(1000f, -466f)), Struct_2(vec2<f32>(-1248f, -278f)), Struct_2(vec2<f32>(-1310f, 1299f)), Struct_2(vec2<f32>(341f, 832f)), Struct_2(vec2<f32>(206f, -562f)), Struct_2(vec2<f32>(-1524f, -1347f)), Struct_2(vec2<f32>(-987f, -522f)), Struct_2(vec2<f32>(-1357f, -247f)), Struct_2(vec2<f32>(-2014f, 1285f)), Struct_2(vec2<f32>(989f, -1131f)), Struct_2(vec2<f32>(-927f, 548f)), Struct_2(vec2<f32>(330f, 555f)), Struct_2(vec2<f32>(553f, -1282f)), Struct_2(vec2<f32>(-107f, -688f)), Struct_2(vec2<f32>(2665f, -1150f)), Struct_2(vec2<f32>(1516f, -944f)), Struct_2(vec2<f32>(-206f, 1097f)), Struct_2(vec2<f32>(-349f, -1337f)), Struct_2(vec2<f32>(605f, -1198f)), Struct_2(vec2<f32>(143f, 547f)));

var<private> global4: array<bool, 31> = array<bool, 31>(false, true, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, true, true, true, false, false, false, false, true, true, false, false, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 123f, _wgslsmith_f_op_f32(global0.x - -566f), _wgslsmith_div_f32(arg_0.a.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-629f, global0.x), -405f, global0.x, _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), -1600f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -722f)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(-1467f - 644f), _wgslsmith_f_op_f32(arg_0.a.x + 784f), _wgslsmith_f_op_f32(f32(-1f) * -1389f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), 1235f, arg_0.a.x, 1650f))));
    let var_0 = Struct_4(reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(15968i, -46630i, u_input.e, 23902i), vec4<i32>(1i, 2147483647i, u_input.e, 17204i))) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(-14251i, 15945i, 2147483647i, 0i), select(vec4<i32>(u_input.b, 0i, u_input.b, 31465i), vec4<i32>(-36959i, u_input.e, 20079i, u_input.e), vec4<bool>(true, global4[_wgslsmith_index_u32(35870u, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], false))), !vec4<bool>(firstTrailingBit(u_input.a.x) == _wgslsmith_sub_u32(u_input.c.x, u_input.a.x), global4[_wgslsmith_index_u32(u_input.d.x, 31u)], true, false));
    var var_1 = ~(~(select(min(vec2<u32>(u_input.a.x, 50606u), u_input.d.wz), u_input.c, !vec2<bool>(false, global4[_wgslsmith_index_u32(43721u, 31u)])) ^ u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + arg_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.a.x)))));
    global2 = array<Struct_2, 28>();
    return !(global0.x < _wgslsmith_f_op_f32(1021f * var_2.x));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    global3 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))) * _wgslsmith_f_op_f32(-arg_2)), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - 222f)))))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 28u)];
    global3 = array<Struct_2, 28>();
    let var_2 = _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(4294967295u, u_input.d.x, 26938u))), (countOneBits(countOneBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))) ^ u_input.a.yyx) << (~(~u_input.d.xyz) % vec3<u32>(32u)), u_input.a.xyx | ~(~select(u_input.a.xzz, u_input.d.yxz, arg_1.yxz)));
    return Struct_3(Struct_1(u_input.d.yx), Struct_2(var_0.zz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = vec2<i32>(~_wgslsmith_clamp_i32(-u_input.e, u_input.b, ~55017i), -_wgslsmith_add_i32(-u_input.b, -firstTrailingBit(u_input.b)));
    var var_1 = max(-1i, min(_wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(44915i, var_0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_0.x, 30109i)))), ~abs(i32(-1i) * -1982i)));
    global2 = array<Struct_2, 28>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.b.a.x, arg_1.a.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, arg_0.b.a.x, arg_0.b.a.x, 1125f))), vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -822f), -907f, _wgslsmith_f_op_f32(max(271f, global0.x)))))));
    global2 = array<Struct_2, 28>();
    return var_0.x < 1i;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_3(arg_1.a, Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b.a.x, -538f)))));
    var var_1 = select(u_input.a.x, 24352u, global4[_wgslsmith_index_u32(~arg_0 ^ 66524u, 31u)]);
    let var_2 = true;
    let var_3 = func_4(func_3(vec3<bool>(true, func_2(global2[_wgslsmith_index_u32(0u, 28u)]), false), vec4<bool>(select(var_2, false, true), var_2, any(arg_2), 108645u <= arg_1.a.a.x), -1865f), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b.a - vec2<f32>(-430f, global0.x)))))) == all(!vec3<bool>(global4[_wgslsmith_index_u32(max(u_input.c.x, arg_0), 31u)], !var_2, var_2));
    var var_4 = arg_1;
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_u32(max(1u, u_input.a.x), ~(49820u >> (u_input.a.x % 32u))));
    let var_1 = ~(~vec4<i32>(reverseBits(u_input.e), u_input.e, ~(-26347i), _wgslsmith_div_i32(1i, firstTrailingBit(u_input.e))));
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    let var_2 = select(!vec3<bool>(any(!vec3<bool>(global4[_wgslsmith_index_u32(14844u, 31u)], global4[_wgslsmith_index_u32(u_input.d.x, 31u)], true)), u_input.b >= func_1(u_input.c.x, Struct_3(Struct_1(u_input.c), Struct_2(vec2<f32>(global0.x, -200f))), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 31u)], true, global4[_wgslsmith_index_u32(u_input.c.x, 31u)])), true), vec3<bool>(!all(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 31u)], true, false)) & true, true && select(global4[_wgslsmith_index_u32(4294967295u, 31u)], true, false & global4[_wgslsmith_index_u32(1u, 31u)]), !(!global4[_wgslsmith_index_u32(6041u, 31u)])), true);
    let var_3 = any(!vec3<bool>(all(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)])), true, global4[_wgslsmith_index_u32(~u_input.a.x, 31u)]));
    let var_4 = vec3<i32>(-2147483647i, var_1.x, _wgslsmith_dot_vec4_i32(abs(var_1 & vec4<i32>(u_input.b, -2147483647i, var_1.x, 1i)), vec4<i32>(-1i) * -vec4<i32>(-1i, 35978i, 23701i, 2229i)));
    let var_5 = u_input.d;
    let var_6 = func_3(vec3<bool>(var_2.x, all(select(!vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), !vec4<bool>(false, var_3, true, var_2.x), select(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], var_2.x, var_3))), ((i32(-1i) * -42372i) >> (var_5.x % 32u)) >= -2147483647i), !vec4<bool>(any(vec2<bool>(true, var_3)), var_3, global4[_wgslsmith_index_u32(1u, 31u)], !all(vec2<bool>(var_3, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, global0.x)), 1197f)), _wgslsmith_f_op_f32(-global0.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~(~reverseBits(~var_1.x)), min(func_3(!vec3<bool>(true, true, var_2.x), !vec4<bool>(true, var_3, global4[_wgslsmith_index_u32(0u, 31u)], var_3), _wgslsmith_f_op_f32(select(global0.x, global0.x, true))).a.a.x | ~abs(var_5.x), reverseBits(var_5.x)));
}

