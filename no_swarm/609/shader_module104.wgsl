struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: Struct_2;

var<private> global2: u32 = 26225u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    return 2096f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = arg_0.b.c;
    global1 = arg_0;
    let var_1 = global1.c.zz;
    var var_2 = global1.c;
    let var_3 = arg_0;
    return 84710u;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !arg_0;
    let var_1 = ~max(115325u, firstTrailingBit(func_4(Struct_2(arg_0, global1.b, global1.c), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, arg_2.b, arg_0))), true)));
    let var_2 = !arg_2.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1077f, -179f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c + global1.b.c)))) - _wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global1.b.a.yzx))))));
    global2 = var_1 >> (var_1 % 32u);
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = func_2(any(!select(global1.b.a.wy, arg_2.b.a.xx, false)), u_input.a, global1.b).c;
    var var_1 = vec3<u32>(_wgslsmith_div_u32(min(4294967295u, countOneBits(0u)), 11287u) << (_wgslsmith_clamp_u32(countOneBits(43164u), 11992u, 19912u) % 32u), 7704u, 30934u);
    global0 = array<vec3<bool>, 32>();
    global2 = select(var_1.x, _wgslsmith_mod_u32(56895u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~var_1.x, 1u, var_1.x), abs(101670u) ^ _wgslsmith_add_u32(var_1.x, 4294967295u))), any(arg_2.b.a));
    return ~var_1.x;
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> i32 {
    global1 = Struct_2(select(!func_2(global1.a, vec2<i32>(29051i, arg_1.x), Struct_1(global1.b.a, global1.b.b, global1.c.x)).a.x, true, !all(select(global1.b.a.yz, vec2<bool>(false, global1.a), vec2<bool>(global1.a, true)))), global1.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.yzz * global1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)))));
    global2 = arg_0;
    let var_0 = select(vec3<bool>(any(select(select(global1.b.a, global1.b.a, global1.b.a), !vec4<bool>(true, true, global1.b.b, false), global1.b.a)), true, !(!(!global1.b.a.x))), select(select(!global1.b.a.xzz, !global0[_wgslsmith_index_u32(arg_0, 32u)], !(global1.b.b != global1.a)), global1.b.a.yzz, global0[_wgslsmith_index_u32(arg_0, 32u)]), select(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), 32u)], global0[_wgslsmith_index_u32(arg_0 << (abs(arg_0) % 32u), 32u)], func_2(global1.b.a.x | false, vec2<i32>(1i, arg_1.x), Struct_1(global1.b.a, false, arg_2.x)).a.wxy), vec3<bool>(!(!global1.a), func_2(true, vec2<i32>(-25545i, 54291i) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), global1.b).a.x, !(!global1.b.b)), global1.a));
    let var_1 = abs(arg_0);
    global2 = 4294967295u;
    return i32(-1i) * -2147483647i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(~select(arg_0, arg_0, any(vec4<bool>(global1.b.a.x, global1.b.a.x, true, global1.a))), arg_0);
    let var_1 = -1000f;
    let var_2 = ~arg_0;
    let var_3 = vec4<i32>(i32(-1i) * -u_input.a.x, u_input.a.x, 14536i, -abs(~(-2147483647i)));
    var var_4 = func_6(func_5(0i, vec2<i32>(u_input.a.x, var_3.x), Struct_2(false, func_2(true, u_input.a, global1.b), vec3<f32>(1047f, -401f, 851f))) ^ ~28067u, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_3.x, u_input.a.x), ~var_3.yyw), u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), 1242f, _wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, true, false), global1.b.a.wxw, vec3<bool>(true, global1.a, false)))), -1269f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(751f, -1599f, global1.c.x, var_1), vec4<f32>(var_1, -1000f, 154f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2255f, var_1, -233f, 1135f) - vec4<f32>(var_1, var_1, global1.c.x, var_1))))));
    return Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, global1.c.x) + var_1) <= _wgslsmith_f_op_f32(-global1.c.x)), func_2(_wgslsmith_dot_vec2_i32(var_3.zx, firstTrailingBit(u_input.a)) > u_input.a.x, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -35165i, var_3.x), var_3 | var_3), 1i), func_2(true, _wgslsmith_div_vec2_i32(~var_3.yw, ~vec2<i32>(1i, 13228i)), global1.b)), _wgslsmith_f_op_vec3_f32(max(global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_1(1u);
    global0 = array<vec3<bool>, 32>();
    let var_1 = func_2(true & arg_1.a.x, abs(-select(firstTrailingBit(vec2<i32>(u_input.a.x, 1i)), vec2<i32>(1i, u_input.a.x), var_0.a)), Struct_1(func_2(!all(vec4<bool>(global1.a, var_0.b.a.x, global1.b.a.x, arg_0.a)), u_input.a, Struct_1(select(var_0.b.a, var_0.b.a, arg_0.b.a), all(arg_0.b.a), -1453f)).a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) * arg_0.c.x))));
    global2 = func_4(Struct_2(arg_1.b, arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1062f, _wgslsmith_f_op_f32(floor(-581f)), _wgslsmith_f_op_f32(sign(930f))))), func_1(abs(firstTrailingBit(countOneBits(42262u)))).c.x, false);
    var var_2 = u_input.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(~0u), global1.b);
    global1 = Struct_2(global1.b.a.x, func_2(global1.a, firstLeadingBit(u_input.a), func_2(var_0.b.b, vec2<i32>(-u_input.a.x, ~u_input.a.x), Struct_1(global1.b.a, true, _wgslsmith_f_op_f32(var_0.c.x - var_0.b.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(836f, 579f), _wgslsmith_f_op_f32(select(2289f, global1.b.c, var_0.b.a.x)), _wgslsmith_f_op_f32(-var_0.b.c))) * vec3<f32>(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(53015u, 27571u, 67998u), vec3<u32>(0u, 4294967295u, 0u))).b.c, _wgslsmith_f_op_f32(566f * _wgslsmith_f_op_f32(f32(-1f) * -992f)), -987f)));
    var var_1 = Struct_1(var_0.b.a, ((var_0.b.a.x & (global1.c.x != 1111f)) || !global1.a) || global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-527f, _wgslsmith_f_op_f32(func_7(Struct_2(global1.a, Struct_1(vec4<bool>(false, true, var_0.a, true), global1.b.a.x, var_0.b.c), vec3<f32>(global1.b.c, 600f, -1240f)), var_0.b).c.x - global1.b.c))) + _wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(select(global1.c.x, -430f, true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1.a.wyz)) + _wgslsmith_f_op_f32(-1072f * var_0.b.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c) + _wgslsmith_f_op_f32(global1.b.c + var_0.c.x))) + global1.c.x));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1432f, _wgslsmith_f_op_f32(f32(-1f) * -451f)))), _wgslsmith_f_op_f32(var_0.b.c * -209f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -700f), -523f, !func_2(false, vec2<i32>(-1i, -8081i), Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, true, false), var_0.b.b, var_0.b.c)).b)))), var_1.c, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(883f);
}

