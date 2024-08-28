struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true));

var<private> global3: bool;

var<private> global4: array<u32, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = u_input.b.wz << (select(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(69679u, 0u), global1.b.zz, u_input.a.wz), ~vec2<u32>(global1.b.x, 37270u)), vec2<u32>(global1.b.x, ~abs(46862u)), any(global2[_wgslsmith_index_u32(~1u, 2u)])) % vec2<u32>(32u));
    let var_1 = select(vec2<bool>(true, !global0.a), !vec2<bool>(true, global1.d.a), !select(select(!vec2<bool>(true, global1.c), !vec2<bool>(global1.d.a, false), global1.a.a), vec2<bool>(true, any(vec2<bool>(false, true))), true));
    var var_2 = -abs(-2147483647i);
    global2 = array<vec4<bool>, 2>();
    var var_3 = abs(global1.b.x);
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(false & arg_1.e.c), vec3<u32>(4294967295u, u_input.a.x, 4294967295u), global0.a && (global1.e.x < _wgslsmith_mod_i32(~1i, 2147483647i << (u_input.a.x % 32u))), Struct_1(false), global1.e);
    var var_1 = Struct_2(firstTrailingBit(global1.e.x));
    let var_2 = global1.c;
    global2 = array<vec4<bool>, 2>();
    global4 = array<u32, 16>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1468f, _wgslsmith_div_f32(-844f, -722f), _wgslsmith_f_op_f32(f32(-1f) * -2215f), _wgslsmith_f_op_f32(sign(639f))) + vec4<f32>(_wgslsmith_f_op_f32(-701f - -652f), 1504f, -657f, _wgslsmith_f_op_f32(sign(229f))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1193f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-729f, -408f) * 1000f), -2005f, _wgslsmith_f_op_f32(sign(1826f))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(0i, Struct_4(_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.a.x, u_input.b.x, 3809u), u_input.a), vec3<i32>(0i, 1i, u_input.c) >> ((u_input.b.wwx >> (u_input.b.wzy % vec3<u32>(32u))) % vec3<u32>(32u)), global1.a, vec4<u32>(22305u, global1.b.x | 81251u, 4294967295u, min(u_input.a.x, global4[_wgslsmith_index_u32(1u, 16u)])), Struct_3(global1.a, ~u_input.b.yxx, func_3(23848u), global1.d, ~vec4<i32>(global1.e.x, 40372i, u_input.d.x, 13198i)))))));
    global3 = !global0.a;
    var var_1 = u_input.b.zzz;
    let var_2 = global1.a;
    let var_3 = Struct_3(Struct_1(true), reverseBits(firstTrailingBit(~vec3<u32>(21522u, var_1.x, var_1.x))), all(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.b.x, 4294967295u, global1.b.x, 18371u)), min(vec4<u32>(4294967295u, 84531u, 21391u, global1.b.x), u_input.b)), 2u)], select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(false, global1.d.a, false, global1.a.a), vec4<bool>(true, global0.a, false, true)), vec4<bool>(false, true, var_2.a, var_2.a), global0.a), select(false, var_2.a, true) & func_3(23035u))), global1.d, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c, min(-2147483647i, u_input.d.x), u_input.c), u_input.d));
    return false;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(822f, _wgslsmith_f_op_f32(max(-407f, -1647f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1164f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(821f, 589f) + _wgslsmith_f_op_f32(trunc(-1456f))))), func_3(14184u)));
    let var_1 = u_input.d.x;
    var var_2 = -898f == _wgslsmith_f_op_f32(825f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(global1.e.x, Struct_4(u_input.a, vec3<i32>(arg_1.x, u_input.c, arg_1.x), global1.a, vec4<u32>(arg_0.x, 1u, global4[_wgslsmith_index_u32(35384u, 16u)], global4[_wgslsmith_index_u32(u_input.b.x, 16u)]), Struct_3(global1.d, vec3<u32>(global1.b.x, 32115u, global1.b.x), arg_2, Struct_1(true), global1.e)))).x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(306f, 342f)))));
    var_2 = !all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.b.x), vec2<u32>(arg_0.x, arg_0.x)), 2u)]);
    var var_3 = arg_0;
    return Struct_3(Struct_1(any(vec3<bool>(any(vec3<bool>(false, false, global1.a.a)), true, all(vec2<bool>(global0.a, true))))), ~reverseBits(vec3<u32>(1u, var_3.x, arg_0.x) >> ((u_input.b.yxz ^ u_input.b.zxw) % vec3<u32>(32u))), false, global1.d, ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 15009i, var_1, arg_1.x), ~u_input.d) & max(max(~u_input.d, u_input.d >> (vec4<u32>(4294967295u, 0u, u_input.b.x, 67629u) % vec4<u32>(32u))), max(global1.e, abs(vec4<i32>(-2147483647i, u_input.c, arg_1.x, u_input.c)))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = func_5(u_input.a.zw, abs(vec2<i32>(-(~2147483647i), _wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.d.x, u_input.d.x), u_input.d.xww)))), func_2());
    let var_1 = -var_0.e.x;
    global4 = array<u32, 16>();
    var var_2 = ~(abs(var_0.b.x) | var_0.b.x) >> (~u_input.b.x % 32u);
    let var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(-1416f - _wgslsmith_f_op_f32(-1749f + -1131f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1166f, 199f, 286f, 314f) + vec4<f32>(-345f, 578f, 412f, 933f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(809f, 872f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1250f)))), _wgslsmith_f_op_f32(-1f)));
    var var_1 = global1.b;
    var var_2 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, global1.c, global0.a), vec3<bool>(true, false, false), global1.c), vec3<bool>(true, false, true)), vec3<bool>(false, true, true & !global1.c), select(vec3<bool>(false, true, func_5(vec2<u32>(var_1.x, u_input.a.x), func_5(vec2<u32>(4294967295u, 64753u), vec2<i32>(0i, 22781i), global1.d.a).e.yw, true).c), !vec3<bool>(global1.c, global1.a.a, global0.a & global0.a), all(select(!vec3<bool>(true, global1.d.a, false), !vec3<bool>(global1.c, true, true), all(vec2<bool>(true, global1.a.a))))));
    var var_3 = u_input.d.zw;
    global4 = array<u32, 16>();
    var var_4 = -30143i;
    global2 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 0u)), _wgslsmith_sub_u32(~(~_wgslsmith_mult_u32(u_input.b.x, 38227u)), func_5(~(~vec2<u32>(4294967295u, 1647u)), select(u_input.d.zw >> (var_1.yz % vec2<u32>(32u)), u_input.d.wy, select(vec2<bool>(global0.a, global1.a.a), vec2<bool>(true, false), vec2<bool>(true, false))), all(select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), true))).b.x), -2147483647i);
}

