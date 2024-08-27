struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, false, false, 1u), Struct_1(13853u, false, true, 1u), Struct_1(1u, false, false, 41108u), Struct_1(27956u, true, true, 1u), Struct_1(4294967295u, false, true, 4294967295u), Struct_1(17183u, true, true, 49894u), Struct_1(26764u, true, false, 0u), Struct_1(98952u, false, true, 1u), Struct_1(0u, true, true, 18635u), Struct_1(0u, false, true, 4294967295u), Struct_1(1u, false, true, 26001u), Struct_1(4294967295u, false, true, 58120u), Struct_1(73745u, true, true, 20321u), Struct_1(25591u, false, false, 0u), Struct_1(12170u, true, true, 4294967295u), Struct_1(1u, false, true, 54166u));

var<private> global1: array<f32, 15> = array<f32, 15>(-502f, 1011f, 303f, 169f, 175f, 592f, -583f, 438f, 1000f, 1405f, 1476f, 357f, -401f, -727f, -650f);

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 25>;

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(false, true, true, false), vec2<u32>(32846u, 68332u)), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u)), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(6087u, 1438u)), Struct_2(vec4<bool>(false, false, false, false), vec2<u32>(4640u, 12583u)), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 0u)), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(1u, 1u)), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(0u, 4115u)), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(0u, 1u)), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(18387u, 17358u)), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 0u)), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(27147u, 58332u)), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(1u, 67082u)), Struct_2(vec4<bool>(true, true, false, true), vec2<u32>(1u, 6859u)), Struct_2(vec4<bool>(false, false, false, true), vec2<u32>(55941u, 4294967295u)), Struct_2(vec4<bool>(true, true, false, true), vec2<u32>(21814u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, false), vec2<u32>(501u, 1u)), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(18416u, 0u)), Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(17872u, 0u)), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 1u)), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(13738u, 0u)), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(48317u, 79908u)), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(1u, 36471u)), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(48178u, 10271u)), Struct_2(vec4<bool>(false, true, true, false), vec2<u32>(1u, 44719u)), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(10469u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), vec2<u32>(2449u, 17159u)), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(120877u, 12873u)), Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 79153u)), Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(71993u, 4294967295u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = ~select(max(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 48635u, 11414u, global2.a), vec4<u32>(7708u, arg_0.b.x, global2.d, arg_2))), vec4<u32>(global2.a, 4294967295u, ~12656u, countOneBits(arg_1.b.x))), select(min(vec4<u32>(arg_2, arg_2, 0u, global2.d), countOneBits(vec4<u32>(arg_2, 38978u, 1521u, 37282u))), ~max(vec4<u32>(8118u, 1u, 0u, 60511u), vec4<u32>(54180u, 26824u, 1u, 97819u)), any(arg_0.a.xxz)), arg_0.a);
    global1 = array<f32, 15>();
    var var_1 = global1[_wgslsmith_index_u32(arg_2, 15u)];
    let var_2 = vec2<u32>(67700u, 1u);
    var var_3 = Struct_2(arg_0.a, _wgslsmith_div_vec2_u32(abs(arg_1.b), vec2<u32>(abs(0u) & reverseBits(arg_1.b.x), 4294967295u << (arg_0.b.x % 32u))));
    return firstTrailingBit(1u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global2 = global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(abs(0u), countOneBits(func_3(Struct_2(vec4<bool>(arg_1.a.x, false, arg_0.a.x, arg_1.a.x), vec2<u32>(global2.d, 7161u)), Struct_2(arg_0.a, arg_1.b), arg_1.b.x))), arg_0.b.x), 16u)];
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_2(select(select(select(vec4<bool>(true, true, true, true), !arg_0.a, arg_1.a.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)] != global1[_wgslsmith_index_u32(46607u, 15u)], global2.b, true, !global2.c), select(arg_1.a, vec4<bool>(arg_1.a.x, true, arg_0.a.x, arg_1.a.x), arg_1.a.x)), !select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), select(arg_1.a, vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), arg_1.a), select(arg_1.a, arg_1.a, false)), vec4<bool>(select(global2.b, 3708u >= global2.d, false), select(arg_0.a.x, arg_1.a.x, false) && arg_0.a.x, true, arg_1.a.x == arg_1.a.x)), min(_wgslsmith_sub_vec2_u32(arg_0.b, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.d, 0u), vec2<u32>(110829u, 1u)))), vec2<u32>(~_wgslsmith_mult_u32(global2.d, arg_0.b.x), _wgslsmith_div_u32(4294967295u, arg_1.b.x) | 4294967295u)));
    var var_1 = _wgslsmith_div_i32(-reverseBits(u_input.a.x), 88539i) << (arg_0.b.x % 32u);
    return -(~u_input.b | u_input.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global1 = array<f32, 15>();
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-30927i, func_2(Struct_2(vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec2<u32>(0u, global2.d)), global4[_wgslsmith_index_u32(global2.d, 30u)]), i32(-1i) * -1i, reverseBits(max(u_input.b, arg_0.x)))), reverseBits(vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, -u_input.a.x)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -13101i) ^ arg_0.yx, vec2<i32>(18124i, -1i)), arg_0.x >> (global2.a % 32u), 1656i, u_input.a.x));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(36234u, _wgslsmith_mod_u32(8697u, 4294967295u), 4294967295u, reverseBits(~26577u)), ~(vec4<u32>(12215u, 21857u, 1u, global2.d) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, global2.d, 18874u, 0u), vec4<u32>(global2.a, global2.d, global2.a, 33647u)) % vec4<u32>(32u))), false), vec4<u32>(global2.a, 4294967295u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, 0u, 17637u, global2.d), ~vec4<u32>(global2.a, global2.a, 67172u, global2.d)), select(global2.a ^ global2.a, 86358u, !any(vec4<bool>(true, true, global2.b, true))))), 16u)];
    global4 = array<Struct_2, 30>();
    var_0 = vec4<i32>(~_wgslsmith_div_i32(var_0.x, -36211i) ^ abs(_wgslsmith_sub_i32(73577i, reverseBits(u_input.a.x))), 2147483647i, var_0.x, func_2(global4[_wgslsmith_index_u32(~(~4294967295u), 30u)], global4[_wgslsmith_index_u32(global2.a, 30u)]) >> (_wgslsmith_mod_u32(~global2.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.d, 5305u, var_1.d), vec4<u32>(global2.a, 4294967295u, 1u, var_1.a))) % 32u));
    return Struct_2(select(select(!select(vec4<bool>(false, false, global2.b, true), vec4<bool>(true, false, global2.c, true), global2.b), vec4<bool>(any(vec3<bool>(global2.b, var_1.b, var_1.b)), true, all(vec4<bool>(global2.c, false, false, var_1.c)), -200f == global1[_wgslsmith_index_u32(global2.a, 15u)]), select(vec4<bool>(false, global2.c, var_1.b, true), select(vec4<bool>(true, true, false, var_1.c), vec4<bool>(global2.c, true, true, var_1.b), false), !vec4<bool>(true, false, true, global2.b))), !(!(!vec4<bool>(var_1.b, global2.b, global2.b, var_1.c))), false), select(_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(4428u, 0u)), min(firstTrailingBit(vec2<u32>(4294967295u, var_1.d)), vec2<u32>(0u, var_1.a)), ~(~vec2<u32>(var_1.a, global2.d))), vec2<u32>(var_1.a, var_1.d), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a);
    global1 = array<f32, 15>();
    var_0 = global4[_wgslsmith_index_u32(~var_0.b.x, 30u)];
    let var_1 = func_1(u_input.a);
    var var_2 = vec2<i32>(abs(firstLeadingBit(1i)), u_input.a.x);
    var_2 = u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2.a, 15u)]))), 616f))), _wgslsmith_f_op_f32(sign(-422f)));
}

