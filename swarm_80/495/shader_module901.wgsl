struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 7>;

var<private> global2: f32 = -1092f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(countOneBits(reverseBits(~4294967295u)), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(29759u, global1[_wgslsmith_index_u32(35065u, 7u)], 4294967295u, 16638u), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 1u, global1[_wgslsmith_index_u32(5237u, 7u)], 12831u))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec2<f32>(1000f, 137f), ~1u);
    var var_1 = Struct_4(var_0.b.a.x, Struct_1(var_0.b.a, vec2<bool>(all(vec2<bool>(true, var_0.b.b.x)) | var_0.b.b.x, var_0.c.x < _wgslsmith_f_op_f32(var_0.c.x - 2435f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-var_0.c.x)))), 1708u);
    let var_2 = var_0.a;
    let var_3 = min(~(-((global0.x ^ u_input.a) ^ -1i)), 52164i);
    var var_4 = 85200i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f * 321f) - var_1.c.x) + var_1.c.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_3 {
    global1 = array<u32, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, arg_2.x)) + _wgslsmith_f_op_f32(func_3()));
    global0 = ~vec2<i32>(~min(_wgslsmith_dot_vec4_i32(vec4<i32>(35905i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(arg_0.x, 0i, -31338i, arg_0.x)), select(arg_0.x, arg_0.x, false)), -8100i);
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 7u)], 7u)], Struct_1(firstTrailingBit(vec4<u32>(~55474u, 10308u, 11030u, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), 1i >= _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(1i, 5510i)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-961f, arg_2.x)))))), 32090u);
    let var_2 = Struct_3(Struct_2(var_1.b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, arg_2.x, 1000f, arg_2.x), vec4<f32>(479f, 513f, arg_2.x, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 1029f, 136f, var_1.c.x)))))), firstTrailingBit(vec4<i32>(52907i, arg_0.x, u_input.a, -65361i)), select(var_1.b.b, vec2<bool>(var_1.b.b.x, var_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.x))) > _wgslsmith_f_op_f32(sign(var_0))));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> bool {
    global0 = abs(arg_0.c.zw);
    var var_0 = -global0.x;
    var_0 = -u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(arg_0.b.x * 1160f))))) - arg_0.b.x);
    var var_2 = vec2<u32>(~4294967295u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(abs(0u), 7u)], 1u));
    return arg_0.a.a.x & arg_0.a.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = select(select(vec4<bool>(func_4(func_2(vec2<i32>(u_input.a, u_input.a), vec3<i32>(1i, u_input.a, 15168i), vec3<f32>(565f, 263f, -389f))), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, 4294967295u <= global1[_wgslsmith_index_u32(86223u, 7u)], true), vec4<bool>(true, true, true, true)), select(vec4<bool>(u_input.a != 1i, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), any(vec3<bool>(true, true, true)))), !select(vec4<bool>(false, func_2(vec2<i32>(8306i, 0i), vec3<i32>(u_input.a, u_input.a, global0.x), vec3<f32>(-1106f, 194f, -540f)).d.x, all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, false, false, true), all(vec4<bool>(false, false, true, true))), true);
    global0 = ~(-vec2<i32>(_wgslsmith_sub_i32(global0.x, ~(-27976i)), -global0.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-569f))), _wgslsmith_f_op_f32(round(196f)))) + -1059f);
    global0 = max(abs(vec2<i32>(global0.x | ~u_input.a, _wgslsmith_sub_i32(global0.x, global0.x) ^ (2147483647i ^ u_input.a))), select(firstLeadingBit(vec2<i32>(min(49188i, 1378i), _wgslsmith_mod_i32(u_input.a, global0.x))), vec2<i32>((-7290i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u)) >> (countOneBits(4294967295u) % 32u), ~u_input.a), select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), true), !var_0.wz, var_0.xx)));
    global0 = -vec2<i32>(-1i, reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, global0.x, global0.x), ~vec3<i32>(15915i, 1i, 47751i))));
    return Struct_1(vec4<u32>(abs(_wgslsmith_div_u32(~37127u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(62893u, 7u)], 40780u))), 1u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)] % 32u), ~80023u, ~4294967295u), !(!(!var_0.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<u32, 7>();
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(abs(u_input.a), u_input.a), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, u_input.a), vec2<i32>(u_input.a, global0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(10050i, 42832i), vec2<i32>(global0.x, -2651i))), vec2<i32>(-(~(-2147483647i)), -(-1i >> (0u % 32u)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))) - 742f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f - 174f)))));
    var_0 = Struct_1(max(select(select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 0u), var_0.a), var_0.a, !var_0.b.x), select(~var_0.a, vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, false))), vec4<bool>(!var_0.b.x, var_0.b.x, true, true)), ~select(abs(var_0.a), vec4<u32>(4294967295u, 15655u, global1[_wgslsmith_index_u32(var_0.a.x, 7u)], global1[_wgslsmith_index_u32(var_0.a.x, 7u)]), !var_0.b.x)), vec2<bool>(var_0.b.x, any(!(!vec4<bool>(true, var_0.b.x, var_0.b.x, true)))));
    let var_1 = Struct_1(abs(var_0.a), var_0.b);
    let var_2 = global1[_wgslsmith_index_u32(var_1.a.x, 7u)] & _wgslsmith_sub_u32(min(firstTrailingBit(var_0.a.x), var_1.a.x | _wgslsmith_dot_vec4_u32(var_0.a, var_0.a)), select(0u, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_1.a.x, 4294967295u, 69908u, var_1.a.x) >> (var_1.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(747f)) <= func_2(vec2<i32>(global0.x, global0.x), vec3<i32>(-26394i, u_input.a, u_input.a), vec3<f32>(-1763f, 1446f, -1471f)).b.x));
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(-global0.x, func_2(countOneBits(~vec2<i32>(0i, -36373i)), -(vec3<i32>(u_input.a, global0.x, -2147483647i) ^ vec3<i32>(3558i, global0.x, 2147483647i)), vec3<f32>(_wgslsmith_div_f32(-1298f, -988f), 1500f, 217f)).c.x), firstLeadingBit(vec2<i32>(1i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1400f * _wgslsmith_f_op_f32(f32(-1f) * -1185f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(639f, _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(-700f * _wgslsmith_div_f32(610f, -146f)), 490f);
}

