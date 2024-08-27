struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: Struct_4;

var<private> global1: array<i32, 14> = array<i32, 14>(40005i, 2147483647i, -31738i, 0i, 20853i, -11511i, 15547i, i32(-2147483648), 63616i, -62844i, 2147483647i, -1i, 27609i, -1i);

var<private> global2: array<u32, 11>;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<bool>(true, false), true, 1000f, 1u, -186f), Struct_2(vec2<bool>(false, true), false, -913f, 19544u, -1147f), Struct_2(vec2<bool>(false, true), true, -1221f, 48576u, 521f), Struct_2(vec2<bool>(true, false), false, -1000f, 38439u, 1000f), Struct_2(vec2<bool>(false, false), false, 402f, 39262u, 1021f), Struct_2(vec2<bool>(false, true), false, 508f, 1u, 529f), Struct_2(vec2<bool>(false, true), false, -213f, 0u, 1047f), Struct_2(vec2<bool>(false, false), false, 233f, 0u, 291f), Struct_2(vec2<bool>(false, false), false, -261f, 0u, -320f), Struct_2(vec2<bool>(false, false), true, 1043f, 4294967295u, -1202f), Struct_2(vec2<bool>(false, true), true, -1454f, 0u, 611f), Struct_2(vec2<bool>(true, false), true, -666f, 1u, -394f), Struct_2(vec2<bool>(true, true), true, 619f, 32908u, -350f), Struct_2(vec2<bool>(true, false), true, -912f, 4294967295u, 211f), Struct_2(vec2<bool>(true, true), false, 1569f, 0u, -121f), Struct_2(vec2<bool>(false, true), true, 737f, 1u, -490f), Struct_2(vec2<bool>(true, false), true, 443f, 0u, -720f), Struct_2(vec2<bool>(true, false), true, -775f, 59214u, 1614f));

var<private> global4: vec2<f32> = vec2<f32>(-1307f, -1233f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    let var_0 = firstLeadingBit(u_input.b);
    let var_1 = Struct_4(firstTrailingBit(global0.d.b), global0.b, global3[_wgslsmith_index_u32(abs(countOneBits(0u) & global0.c.d), 18u)], global0.d);
    let var_2 = u_input.b ^ (u_input.b & ~countOneBits(1345i));
    global3 = array<Struct_2, 18>();
    global1 = array<i32, 14>();
    return true == any(arg_1);
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_mod_u32(arg_0.x, arg_0.x);
    let var_1 = _wgslsmith_div_vec2_f32(global0.d.c.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.c.b.xy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.c.b.xy * global0.d.c.b.zx), _wgslsmith_f_op_vec2_f32(-global0.d.c.b.yy)))));
    return Struct_4(vec3<u32>(var_0 << (0u % 32u), 0u, _wgslsmith_mod_u32(10090u << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, var_0), abs(global0.d.b)))), vec3<bool>(any(vec4<bool>(global4.x == var_1.x, true, !global0.c.b, !global0.d.a.b)), !func_3(global0.d.c, vec4<bool>(global0.b.x, global0.b.x, false, global0.c.a.x), global0.d.c.b, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -16312i, -26760i), vec4<i32>(u_input.b, -1785i, u_input.b, global1[_wgslsmith_index_u32(28345u, 14u)]))), 1262f > global4.x), Struct_2(vec2<bool>(global0.c.a.x, any(select(vec4<bool>(global0.c.a.x, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, global0.b.x)))), ~_wgslsmith_add_u32(u_input.a.x, arg_0.x) <= (_wgslsmith_clamp_u32(0u, var_0, 1831u) << (73841u % 32u)), global0.c.c, ~var_0, global0.d.c.b.x), global0.d);
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = func_2(~(global0.a & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 58323u, global2[_wgslsmith_index_u32(1u, 11u)]) | vec3<u32>(global2[_wgslsmith_index_u32(87455u, 11u)], global0.a.x, 4805u), vec3<u32>(0u, u_input.a.x, 59980u))));
    let var_0 = _wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -32583i) ^ vec2<i32>(u_input.b, u_input.b))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.c.a, ~1u), ~vec2<u32>(global2[_wgslsmith_index_u32(global0.a.x, 11u)], arg_0)) % vec2<u32>(32u)), min(_wgslsmith_clamp_vec2_i32(min(~vec2<i32>(u_input.b, -38400i), min(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 14u)]), vec2<i32>(u_input.b, -1i))), -firstLeadingBit(vec2<i32>(12994i, global1[_wgslsmith_index_u32(global0.d.c.a, 14u)])), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(u_input.b, 0i) << (global0.a.yz % vec2<u32>(32u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x)))), -336f);
    var var_2 = countOneBits(global1[_wgslsmith_index_u32(31218u, 14u)]) >> (~u_input.a.x % 32u);
    global4 = global0.d.c.b.xx;
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~select(1u, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], select(!global0.c.a.x, any(global0.b), !global0.b.x)));
    var var_1 = Struct_5(Struct_4(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(global0.d.a.d), _wgslsmith_add_u32(var_0.a.d, 77125u)), _wgslsmith_clamp_u32(11323u, 840u, u_input.a.x) ^ (4294967295u & u_input.a.x), ~(var_0.c.a << (0u % 32u))), !global0.b, var_0.a, func_1(~1u)), vec3<f32>(var_0.c.b.x, func_1(~var_0.c.a >> (abs(global0.c.d) % 32u)).c.b.x, _wgslsmith_f_op_f32(global4.x - func_2(u_input.a.zyz).c.e)), vec3<u32>(var_0.c.a << (countOneBits(1u) % 32u), firstLeadingBit(global0.a.x) << (1u % 32u), 8573u), global0.b);
    var var_2 = global0.c;
    let var_3 = vec3<u32>(83057u, max(var_2.d, 10801u), (firstLeadingBit(0u ^ global2[_wgslsmith_index_u32(4294967295u, 11u)]) | reverseBits(var_2.d)) & func_1(~var_0.c.a).c.a);
    global3 = array<Struct_2, 18>();
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.d.c.b.x))) * var_1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.c.c, _wgslsmith_f_op_f32(var_2.e * global0.c.c)), func_2(var_3).d.c.b.x, !(global0.b.x | var_1.d.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(var_0.b).c.e, _wgslsmith_f_op_f32(abs(global4.x)), -1000f))));
    global3 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~global1[_wgslsmith_index_u32(30613u, 14u)], _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, 2147483647i), u_input.b), 1i >> (~u_input.a.x % 32u), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, i32(-1i) * -12892i, u_input.b), ~vec3<i32>(1i, u_input.b, global1[_wgslsmith_index_u32(11030u, 14u)]))));
}

