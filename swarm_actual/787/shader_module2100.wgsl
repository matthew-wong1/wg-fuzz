struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(716f, 168f);

var<private> global1: array<vec3<f32>, 4>;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 29147u, 98407u, 1u), vec4<u32>(4294967295u, 74177u, 18062u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 36601u), vec4<u32>(4294967295u, 13045u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 52784u, 0u));

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec4<u32> {
    global1 = array<vec3<f32>, 4>();
    var var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(step(-568f, _wgslsmith_f_op_f32(ceil(-341f)))) <= _wgslsmith_f_op_f32(exp2(arg_0.x)), !(1i != arg_1.b.d));
    global2 = array<vec4<u32>, 5>();
    let var_1 = any(!select(select(select(var_0.zx, var_0.zz, vec2<bool>(true, var_0.x)), vec2<bool>(arg_1.a.x, arg_1.b.c), !arg_2.zz), !var_0.zx, false));
    var var_2 = min(-firstTrailingBit(~vec3<i32>(7556i, -2147483647i, -2147483647i)) >> (arg_1.c.e.wzx % vec3<u32>(32u)), countOneBits(-_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(29904i, arg_1.c.d, u_input.c)), ~vec3<i32>(2147483647i, u_input.c, u_input.c))));
    return ~(~countOneBits(u_input.d));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = Struct_2(vec2<bool>(false, any(select(select(vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(arg_2.c, false, arg_2.a.x), vec3<bool>(arg_1, true, arg_2.b)), select(vec3<bool>(false, arg_2.a.x, arg_2.b), vec3<bool>(arg_1, false, arg_1), false), vec3<bool>(arg_1, arg_2.c, true)))), Struct_1(select(!global3[_wgslsmith_index_u32(1u, 27u)], select(!vec2<bool>(false, arg_1), arg_2.a, vec2<bool>(arg_1, true)), global3[_wgslsmith_index_u32(arg_0, 27u)]), !arg_2.c, arg_2.b, u_input.c, min(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -215f, global0.x, global0.x), vec4<f32>(-837f, global0.x, global0.x, global0.x)), Struct_2(arg_2.a, arg_2, Struct_1(arg_2.a, arg_1, true, arg_2.d, arg_2.e)), !vec4<bool>(false, true, false, arg_2.b)), _wgslsmith_clamp_vec4_u32(arg_2.e, vec4<u32>(u_input.d.x, arg_3, u_input.a, arg_0), countOneBits(global2[_wgslsmith_index_u32(arg_0, 5u)])))), Struct_1(!(!select(vec2<bool>(true, arg_2.b), global3[_wgslsmith_index_u32(arg_0, 27u)], vec2<bool>(false, arg_2.a.x))), arg_1, true, u_input.c, ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0, 16073u, u_input.a), vec4<u32>(u_input.a, arg_3, 11642u, u_input.d.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))) * vec2<f32>(global0.x, 990f))));
    var var_2 = arg_2.e.x;
    global1 = array<vec3<f32>, 4>();
    let var_3 = 25661u;
    return -1153f;
}

fn func_1() -> Struct_2 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, true, Struct_1(vec2<bool>(false, false), true, !all(vec3<bool>(false, true, true)), 1i | u_input.c, firstLeadingBit(global2[_wgslsmith_index_u32(~0u, 5u)])), ~max(4294967295u << (u_input.a % 32u), 1u))), _wgslsmith_f_op_f32(f32(-1f) * -666f));
    let var_0 = true;
    global3 = array<vec2<bool>, 27>();
    global2 = array<vec4<u32>, 5>();
    let var_1 = global0.x;
    return Struct_2(select(select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(var_0, true), !global3[_wgslsmith_index_u32(0u, 27u)], select(vec2<bool>(true, true), vec2<bool>(false, false), var_0)), select(!vec2<bool>(var_0, var_0), select(vec2<bool>(false, true), vec2<bool>(false, var_0), true), true)), select(vec2<bool>(var_0, !var_0), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(66592u, 0u, 28859u), 4294967295u), 27u)], !vec2<bool>(false, var_0)), select(select(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], select(global3[_wgslsmith_index_u32(83139u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(u_input.d.x, 27u)]), global3[_wgslsmith_index_u32(u_input.a, 27u)]), global3[_wgslsmith_index_u32(abs(u_input.d.x), 27u)], select(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], vec2<bool>(false, true), vec2<bool>(true, var_0)))), Struct_1(vec2<bool>(max(u_input.b.x, u_input.d.x) >= ~108627u, !all(vec3<bool>(var_0, false, var_0))), !(true != !var_0), all(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, ~1u), 27u)]), ~(u_input.c ^ -51870i), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 19138u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.b.x, 1u)))), Struct_1(vec2<bool>(all(select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, true, false, var_0), true)), true), all(vec2<bool>(true, true)), !var_0, 8895i, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, firstLeadingBit(u_input.b.x)), 5u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -2783f)))));
    global3 = array<vec2<bool>, 27>();
    let var_0 = func_1();
    global3 = array<vec2<bool>, 27>();
    var var_1 = -1i;
    var var_2 = var_0.b;
    let var_3 = 2147483647i;
    var_2 = Struct_1(vec2<bool>(false, true), !var_2.b, var_2.d == countOneBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, var_2.d), 1i)), -(i32(-1i) * -10511i), ~vec4<u32>(~42359u, ~u_input.a, var_0.b.e.x & 24119u, 0u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, ~var_0.c.e.x, _wgslsmith_div_u32(var_0.c.e.x, var_2.e.x), ~var_0.c.e.x), vec4<u32>(var_0.c.e.x >> (4294967295u % 32u), var_2.e.x, u_input.a, u_input.b.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(33752u, 5u)], u_input.b), ~vec4<u32>(var_0.b.e.x, u_input.b.x, var_2.e.x, 4294967295u))) % vec4<u32>(32u)));
    var var_4 = var_0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().b.e.x ^ ~_wgslsmith_dot_vec2_u32(var_2.e.xz, u_input.b.zx), select(vec2<i32>(-1i, ~u_input.c), vec2<i32>(~var_0.b.d, var_3 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(120281u, 1u, 24022u, 10991u), u_input.d) % 32u)), false), vec3<f32>(-486f, _wgslsmith_f_op_f32(max(-1585f, _wgslsmith_f_op_f32(sign(-647f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), -53224i);
}

