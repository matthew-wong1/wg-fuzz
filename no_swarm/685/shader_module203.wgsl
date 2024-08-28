struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1i, false, 120671u, vec3<i32>(-1i, 0i, -1i)), Struct_1(2147483647i, true, 4294967295u, vec3<i32>(22896i, 2147483647i, -6067i)), Struct_1(34460i, true, 56144u, vec3<i32>(i32(-2147483648), -3129i, 19991i)));

var<private> global1: Struct_2;

var<private> global2: array<i32, 27>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_1, 3>();
    return global1.d.d.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    let var_0 = global1.d.d;
    var var_1 = arg_0.yx;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(global1.a.d.x, 50511i), -2332i) >> (~_wgslsmith_mult_u32(firstLeadingBit(arg_1.x), ~1u) % 32u), -func_3(Struct_2(Struct_1(2147483647i, global1.d.b, arg_1.x, vec3<i32>(34643i, 67062i, var_0.x)), arg_0.xxw, global1.c, Struct_1(global1.c.d.x, false, u_input.c, global1.a.d), countOneBits(arg_0.x))), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-1341f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_2)) - -921f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-705f))))));
    global2 = array<i32, 27>();
    return 0i;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 3>();
    global2 = array<i32, 27>();
    let var_1 = _wgslsmith_mult_vec3_i32(global1.a.d, ~vec3<i32>(global1.d.d.x, func_2(reverseBits(vec4<u32>(var_0.b.x, var_0.e, u_input.b.x, global1.a.c)), u_input.b.zx, -1350f), -(~0i)));
    global1 = Struct_2(Struct_1(-_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 45188i), var_1.x & global2[_wgslsmith_index_u32(global1.a.c, 27u)]), select(!(!arg_0.c.b), arg_0.d.b, var_0.d.b), u_input.b.x, max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d.x, arg_0.c.a, 16133i, u_input.a), vec4<i32>(arg_0.a.d.x, -12661i, arg_0.c.d.x, -2147483647i)), _wgslsmith_div_i32(36603i, var_0.a.a), 0i), arg_0.d.d)), firstLeadingBit(vec3<u32>(42467u, arg_0.c.c, ~global1.a.c)), Struct_1(firstLeadingBit(_wgslsmith_div_i32(global1.c.a, global1.a.a & var_1.x)), true, global1.d.c, _wgslsmith_div_vec3_i32(~var_1, vec3<i32>(43176i & u_input.a, _wgslsmith_mod_i32(-1i, var_1.x), min(u_input.a, arg_0.a.a)))), var_0.c, _wgslsmith_add_u32(0u, 0u));
    return _wgslsmith_f_op_f32(round(684f));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 3>();
    let var_0 = vec3<bool>(all(!select(vec3<bool>(global1.d.b, global1.d.b, global1.a.b), vec3<bool>(global1.c.b, true, false), true)), global1.c.b, global1.a.b);
    return Struct_2(Struct_1(global1.d.a, true, u_input.b.x, ~select(vec3<i32>(33667i, 22008i, u_input.a) & global1.c.d, global1.a.d, vec3<bool>(true, false, false))), global1.b, Struct_1(u_input.a, var_0.x, global1.d.c, select(global1.a.d, vec3<i32>(_wgslsmith_div_i32(1i, 1i), 19707i, global2[_wgslsmith_index_u32(global1.d.c, 27u)]), global1.c.b)), global0[_wgslsmith_index_u32(u_input.d.x, 3u)], (_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(0u, global1.a.c)) << (_wgslsmith_mult_u32(~4156u, 1u) % 32u)) << (17506u % 32u));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = arg_1.d;
    var var_1 = var_0.b;
    global1 = arg_1;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(~87014u), arg_1.d.c, ~global1.b.x << (~_wgslsmith_add_u32(global1.e, u_input.c) % 32u), 7330u), vec4<u32>(select(4294967295u, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(764f, 559f, 222f), vec3<f32>(-2349f, 1258f, 766f))).e, false), _wgslsmith_clamp_u32(firstLeadingBit(0u >> (0u % 32u)), ~20932u, ~1u), var_0.c, u_input.b.x)), 3u)];
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(abs(-217f)), _wgslsmith_f_op_f32(-502f - _wgslsmith_f_op_f32(func_1(Struct_2(var_0, vec3<u32>(var_2.c, var_0.c, arg_1.d.c), global1.c, var_0, 1u), 778f)))))).c;
    return Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1552f, 697f, 1476f), vec3<f32>(-703f, 488f, 1000f))), vec3<f32>(-1200f, 1788f, 1249f))))).c, ~(abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.x, 4294967295u, u_input.b.x), vec3<u32>(global1.b.x, 1u, 38832u))) ^ (~u_input.b | vec3<u32>(4294967295u, u_input.c, var_0.c))), Struct_1(arg_1.c.a, true, _wgslsmith_dot_vec2_u32(~arg_1.b.xy, vec2<u32>(33116u, var_2.c)) >> (select(abs(var_3.c), 0u, any(vec2<bool>(global1.d.b, arg_0))) % 32u), ~(-(global1.d.d & vec3<i32>(var_0.d.x, -40404i, global1.c.d.x)))), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 544f, -488f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1966f, 561f, 414f)))))).a, firstTrailingBit(firstTrailingBit(~arg_1.a.c ^ global1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 27>();
    let var_0 = func_5(all(select(vec4<bool>(global1.c.b, false, global1.c.b, true), vec4<bool>(!global1.c.b, all(vec3<bool>(false, false, false)), global1.c.b, global1.d.b | global1.c.b), true)), func_4(vec3<f32>(_wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(max(1492f, -1505f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(global1.c, vec3<u32>(47499u, 6824u, u_input.b.x), Struct_1(u_input.a, global1.d.b, 0u, vec3<i32>(-20854i, global1.d.a, global2[_wgslsmith_index_u32(global1.b.x, 27u)])), global1.d, 1u), -927f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -399f)))), vec2<i32>(-2147483647i, firstTrailingBit(_wgslsmith_div_i32(2147483647i, global1.a.d.x))));
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(func_4(vec3<f32>(_wgslsmith_f_op_f32(-1504f + 1237f), _wgslsmith_f_op_f32(-549f - -916f), _wgslsmith_f_op_f32(-1535f * -1352f))).b), var_0.b);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.d);
}

