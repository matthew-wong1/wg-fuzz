struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(3994u, 1u, Struct_1(-930f, 99028u, vec3<i32>(-42562i, -1i, 0i)), -246f, Struct_1(-906f, 21565u, vec3<i32>(42099i, 13975i, -16344i))), Struct_3(0u, 88796u, Struct_1(-358f, 1u, vec3<i32>(16627i, 25979i, i32(-2147483648))), -493f, Struct_1(-984f, 4294967295u, vec3<i32>(-3502i, -13433i, i32(-2147483648)))), Struct_3(60445u, 4294967295u, Struct_1(-505f, 91429u, vec3<i32>(1i, -13320i, 0i)), 1442f, Struct_1(-831f, 4294967295u, vec3<i32>(9561i, 2147483647i, -1i))), Struct_3(0u, 34462u, Struct_1(-1000f, 6324u, vec3<i32>(-48926i, 2147483647i, -63203i)), 1016f, Struct_1(1055f, 62348u, vec3<i32>(-26904i, -1i, -1i))), Struct_3(50332u, 6016u, Struct_1(879f, 4294967295u, vec3<i32>(55249i, 38159i, -22114i)), 510f, Struct_1(114f, 0u, vec3<i32>(29130i, i32(-2147483648), -7575i))), Struct_3(6686u, 1u, Struct_1(-519f, 4294967295u, vec3<i32>(18632i, i32(-2147483648), 19296i)), 580f, Struct_1(-575f, 4294967295u, vec3<i32>(-1i, 0i, 9759i))), Struct_3(70862u, 0u, Struct_1(-3030f, 4294967295u, vec3<i32>(-55267i, 0i, i32(-2147483648))), -1122f, Struct_1(-772f, 0u, vec3<i32>(1i, -29576i, 13579i))), Struct_3(4294967295u, 4294967295u, Struct_1(-714f, 1u, vec3<i32>(11443i, 1i, -1i)), 895f, Struct_1(899f, 1u, vec3<i32>(-26008i, -61812i, 1i))));

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: vec4<i32> = vec4<i32>(19023i, 47059i, 1i, 1i);

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> i32 {
    global0 = array<Struct_3, 8>();
    let var_0 = Struct_5(vec2<u32>(u_input.b, ~0u));
    global1 = array<vec2<bool>, 27>();
    var var_1 = arg_3 >= 2637f;
    let var_2 = arg_1.x;
    return 1i;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> bool {
    global2 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(-71950i, 1i, arg_1.a.c.x, abs(arg_1.a.c.x)), ~(-vec4<i32>(u_input.a, global2.x, -23110i, u_input.a))) << (u_input.e % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a)), arg_1.a.c.x, 1i, u_input.d.x)), vec4<bool>(false, true, abs(u_input.a) > ((i32(-1i) * -1i) >> (~arg_0.a.x % 32u)), select(636f != _wgslsmith_f_op_f32(step(arg_1.a.a, arg_1.a.a)), false, any(global1[_wgslsmith_index_u32(29711u & arg_1.a.b, 27u)]))));
    global1 = array<vec2<bool>, 27>();
    let var_0 = u_input.e.xw;
    let var_1 = Struct_4(arg_1.a.a, select(arg_1.c.zy, arg_1.c.zx, vec2<bool>(!any(vec4<bool>(global3.x, global3.x, true, true)), any(!vec4<bool>(global3.x, arg_1.c.x, true, global3.x)))));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 27>();
    var var_0 = u_input.d;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), vec2<bool>(-17949i <= max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -17757i, -694i), vec3<i32>(arg_0.c.x, arg_0.c.x, 52710i)), -1i), global3.x));
    let var_2 = Struct_3(37025u, abs(firstTrailingBit(firstLeadingBit(1u) | (u_input.e.x << (arg_0.b % 32u)))), Struct_1(var_1.a, 22438u, arg_0.c), _wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0);
    global3 = vec4<bool>(false, func_3(Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 82982u), u_input.e.yz)), Struct_2(arg_0, vec3<u32>(0u, 1u, 22205u), select(vec3<bool>(true, global3.x, true), vec3<bool>(var_1.b.x, false, var_1.b.x), global3.x))) && global3.x, false, all(vec4<bool>((global3.x || false) && global3.x, true, var_1.b.x, true)));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    var var_0 = vec3<bool>(true, false, global3.x);
    let var_1 = Struct_5(~u_input.e.zy << (vec2<u32>(reverseBits(arg_0.b.x), min(43141u, 1u)) % vec2<u32>(32u)));
    var var_2 = u_input.e.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f * 120f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-755f, arg_0.a.a))), arg_0.a.a)), _wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(u_input.e.x), 25433u), 51418u), ~(global2.xyw & vec3<i32>(_wgslsmith_add_i32(-1i, 1i), ~u_input.d.x, func_2(arg_0.a).c.x)));
    var_0 = vec3<bool>(true, ((arg_0.a.a <= -540f) | !(-5475i > global2.x)) | true, true);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.a, arg_0.a.a))), _wgslsmith_f_op_f32(-var_3.a)) + 1f), vec2<bool>(all(!select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global3.x, true, false, true), vec4<bool>(var_0.x, var_0.x, global3.x, var_0.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(~_wgslsmith_mult_i32(-max(-62450i, 1i), -1i), abs(global2.x), u_input.a, u_input.a);
    global2 = vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(u_input.a), ~global2.x), -2147483647i), select(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d.x, global2.x, u_input.a, global2.x), abs(vec4<i32>(global2.x, global2.x, u_input.d.x, u_input.d.x))), -reverseBits(vec4<i32>(global2.x, u_input.a, global2.x, global2.x))), u_input.a, -1i >= u_input.a), global2.x, func_1(select(!global3.xx, select(vec2<bool>(global3.x, false), global3.zw, true), global3.x), global1[_wgslsmith_index_u32(u_input.c, 27u)], ~select(1i, i32(-1i) * -2807i, !global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-439f)))))));
    var var_0 = ~48772u ^ u_input.b;
    var var_1 = func_4(Struct_2(func_2(Struct_1(_wgslsmith_f_op_f32(2485f + -969f), 51519u, vec3<i32>(global2.x, 19840i, u_input.a))), vec3<u32>(select(u_input.c, u_input.c | u_input.e.x, true), 4294967295u, ~20078u), select(global3.yyw, global3.yzw, vec3<bool>(u_input.c < 31909u, global3.x, all(vec3<bool>(true, global3.x, true))))), u_input.d.x);
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(-global2.x, 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, global2.x, 2147483647i, 2147483647i), ~vec4<i32>(global2.x, 45677i, u_input.d.x, 35129i)), u_input.d.x << (u_input.c % 32u)), -vec4<i32>(-(u_input.d.x & 1i), 2147483647i, ~23280i, u_input.a));
    var_0 = u_input.e.x;
    let var_3 = firstTrailingBit(var_2);
    var_1 = func_4(Struct_2(Struct_1(_wgslsmith_div_f32(-364f, _wgslsmith_f_op_f32(abs(var_1.a))), 0u, vec3<i32>(i32(-1i) * -26462i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, u_input.a), var_2.xy), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 0i, -14758i), vec3<i32>(var_3.x, var_3.x, var_3.x)))), _wgslsmith_div_vec3_u32(u_input.e.xyy, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, u_input.e.x, u_input.c)), firstTrailingBit(u_input.e.wyy))), !(!(!vec3<bool>(true, false, global3.x)))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x << (1u % 32u), global2.zw, reverseBits(0u), -vec2<i32>(-27037i, -866i));
}

