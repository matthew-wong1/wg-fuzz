struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-1i, 0i, 1i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(32148i, 48764i, 0i), vec3<i32>(2147483647i, 29777i, 12265i), vec3<i32>(-13985i, 2147483647i, -1i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-11231i, 95275i, 2147483647i), vec3<i32>(2147483647i, 16111i, -14976i), vec3<i32>(23745i, 9552i, -1i), vec3<i32>(19567i, -15584i, -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(max(_wgslsmith_mult_vec4_u32(~global0.a, global0.a), vec4<u32>(global0.d.x, abs(~global0.d.x), global0.d.x, 11690u)), 1u, true, ~abs(global0.d));
    let var_1 = Struct_3(-vec4<i32>(-1i, 1i, reverseBits(-2147483647i >> (var_0.a.x % 32u)), ~(~u_input.a.x)), global1.x, abs(_wgslsmith_mod_u32(~var_0.b, global0.a.x)), abs(~u_input.a.x), !select(vec2<bool>(global0.c, global0.c), select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, false)), vec2<bool>(false, true), var_0.c), !vec2<bool>(true, global0.c)));
    let var_2 = !(!(!select(!vec2<bool>(false, var_1.e.x), vec2<bool>(true, true), !var_0.c)));
    let var_3 = 2147483647i;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-968f, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-177f, _wgslsmith_f_op_f32(ceil(924f)), false)), arg_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f - var_1.b) + _wgslsmith_f_op_f32(var_1.b * 2803f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1129f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))) - _wgslsmith_f_op_vec3_f32(-arg_0.wxw)));
    return reverseBits(18936u);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec3<i32>, 11>();
    global0 = Struct_1(arg_2.c.a, ~_wgslsmith_div_u32(30909u, u_input.b), !arg_2.c.c, vec2<u32>(u_input.b >> (_wgslsmith_mult_u32(global0.b, 4294967295u) % 32u), arg_2.e.b));
    let var_0 = Struct_3(~(-vec4<i32>(firstTrailingBit(arg_1), u_input.a.x, 1i, 1i)), 731f, ~(~func_3(vec4<f32>(global1.x, global1.x, global1.x, 473f))) & ~reverseBits(_wgslsmith_dot_vec2_u32(global0.d, arg_2.c.a.xy)), (_wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_add_i32(41459i, u_input.a.x)) ^ -arg_1) & u_input.a.x, !select(select(!vec2<bool>(global0.c, arg_2.e.c), vec2<bool>(false, global0.c), !vec2<bool>(true, global0.c)), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_2.e.c, arg_0), vec2<bool>(false, false)), select(vec2<bool>(false, arg_0), !vec2<bool>(true, arg_2.d), false)));
    global1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global1.x)), 197f)));
    global2 = array<vec3<i32>, 11>();
    return arg_2.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global2 = array<vec3<i32>, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(757f - arg_2.b), 1358f, _wgslsmith_f_op_f32(step(428f, global1.x)), 1164f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1648f)), _wgslsmith_f_op_f32(2804f * arg_2.b), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(floor(2070f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(525f, arg_2.b, global1.x, arg_2.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, arg_2.b, global1.x, global1.x) - vec4<f32>(global1.x, arg_2.b, 1399f, arg_2.b))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - var_0.x), _wgslsmith_f_op_f32(arg_2.b + arg_2.b)), _wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(global1.x + -1945f)), _wgslsmith_f_op_f32(sign(260f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.zxz)))));
    var var_1 = vec4<bool>(arg_1.c || all(vec4<bool>(false, false, global1.x != global1.x, all(arg_0))), !(!arg_2.e.x), global0.c, arg_0.x);
    global2 = array<vec3<i32>, 11>();
    return all(select(select(vec4<bool>(-1i != arg_2.d, true && var_1.x, func_2(var_1.x, -1i, Struct_2(true, Struct_1(global0.a, u_input.b, arg_1.c, global0.a.yx), arg_1, false, Struct_1(vec4<u32>(16050u, 4294967295u, u_input.b, 1125u), arg_2.c, true, arg_1.d))).c, select(global0.c, arg_0.x, true)), vec4<bool>(any(vec4<bool>(true, var_1.x, true, true)), all(vec4<bool>(false, arg_2.e.x, var_1.x, true)), true || global0.c, true), !any(vec3<bool>(global0.c, true, false))), vec4<bool>(!global0.c | var_1.x, any(!arg_2.e), select(true, true, !arg_2.e.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x) < arg_2.a.x), true));
}

fn func_1() -> Struct_2 {
    var var_0 = 56680u;
    return Struct_2(true, Struct_1(global0.a, _wgslsmith_dot_vec2_u32(global0.d, global0.a.yw), func_4(vec3<bool>(select(false, true, global0.c), global0.c, global0.c), func_2(all(vec4<bool>(false, false, true, true)), u_input.a.x, Struct_2(true, Struct_1(global0.a, 1u, false, vec2<u32>(u_input.b, global0.d.x)), Struct_1(global0.a, 46836u, global0.c, global0.d), false, Struct_1(vec4<u32>(36972u, u_input.b, 0u, 1u), 7243u, true, global0.a.zy))), Struct_3(~vec4<i32>(u_input.a.x, u_input.a.x, -9828i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -165f), func_3(vec4<f32>(global1.x, global1.x, global1.x, global1.x)), 1i, select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, global0.c), false))), global0.d), func_2(true, ~(u_input.a.x >> (firstLeadingBit(global0.b) % 32u)), Struct_2(global0.c, Struct_1(global0.a, 1u, global0.c, vec2<u32>(0u, 0u) << (global0.d % vec2<u32>(32u))), func_2(any(vec2<bool>(global0.c, false)), u_input.a.x, Struct_2(global0.c, Struct_1(global0.a, global0.d.x, global0.c, vec2<u32>(1u, 76763u)), Struct_1(vec4<u32>(u_input.b, global0.b, u_input.b, global0.b), 21896u, global0.c, vec2<u32>(global0.d.x, global0.b)), true, Struct_1(global0.a, global0.d.x, global0.c, vec2<u32>(u_input.b, 16374u)))), !(global0.c && global0.c), Struct_1(global0.a, u_input.b, -433f <= global1.x, global0.d))), true, Struct_1(~(~(~vec4<u32>(u_input.b, u_input.b, 1u, global0.a.x))), 37611u, true, vec2<u32>(_wgslsmith_mult_u32(u_input.b, ~global0.d.x), global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = vec2<i32>(i32(-1i) * -1i, u_input.a.x);
    let var_2 = func_1();
    let var_3 = _wgslsmith_mod_i32(2147483647i, var_0);
    let var_4 = ~_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(~global0.a)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.e.d.x, u_input.b, u_input.b, 5162u), vec4<u32>(30323u, u_input.b, 21922u, 966u)) ^ _wgslsmith_add_vec4_u32(global0.a, var_2.b.a)));
    let var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, firstTrailingBit(_wgslsmith_add_u32(~4294967295u, global0.d.x)));
}

