struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, -37578i, vec3<i32>(-53898i, -51412i, 1i), 278f, Struct_2(vec2<i32>(-4991i, -43678i), vec2<bool>(true, false), Struct_1(vec3<f32>(-611f, -1629f, 1074f))));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = Struct_3(true, -1i, vec3<i32>(u_input.e, ~global0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.e.a, vec2<i32>(u_input.e, 0i)), _wgslsmith_mod_i32(-2147483647i, global0.e.a.x), global0.e.a.x), -countOneBits(vec3<i32>(53842i, global0.c.x, u_input.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1492f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(345f, global0.d, true)), _wgslsmith_f_op_f32(max(global0.d, -380f))))))), global0.e);
    var var_1 = -(~((~vec4<i32>(-1i, -2147483647i, var_0.e.a.x, -1i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, -18507i, var_0.b), vec4<i32>(u_input.e, 1i, 2147483647i, -3664i))) | min(~vec4<i32>(u_input.e, 13380i, global0.c.x, var_0.c.x), min(vec4<i32>(-1i, -1i, -33668i, 47512i), vec4<i32>(1i, global0.c.x, -42978i, -92238i)))));
    let var_2 = ~vec2<u32>(abs(~(~u_input.a)), 71873u);
    var_1 = firstTrailingBit(-vec4<i32>(min(~global0.b, min(var_0.c.x, var_0.b)), u_input.c, abs(4595i), select(var_1.x << (u_input.b.x % 32u), var_1.x, 842f >= var_0.d)));
    let var_3 = 1i;
    return vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3, ~20698i & select(2147483647i, u_input.e, true)), countOneBits(_wgslsmith_div_i32(var_1.x & var_0.c.x, 0i))), ~(-max(2147483647i, 0i)), var_1.x);
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(global0.e.b.x, select(-(~23469i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~global0.e.a, max(vec2<i32>(0i, global0.b), global0.c.zz)), global0.e.a.x), _wgslsmith_dot_vec3_i32(global0.c << (u_input.b % vec3<u32>(32u)), func_3(global0.e.b.x)) == global0.e.a.x), global0.c | abs(reverseBits(abs(vec3<i32>(-68837i, -28849i, 59075i)))), 833f, Struct_2(_wgslsmith_mod_vec2_i32(select(-global0.e.a, global0.e.a, true), _wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, u_input.c), global0.c.xx) | ~global0.c.yz), select(!select(global0.e.b, global0.e.b, global0.e.b), !vec2<bool>(global0.a, false), vec2<bool>(true, all(global0.e.b))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.e.c.a, vec3<f32>(2068f, 1139f, -343f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.c.a.x, global0.d, 110f) + global0.e.c.a)))));
    let var_0 = Struct_3(false, -38818i, global0.c, -131f, global0.e);
    let var_1 = func_3(true).x;
    global0 = Struct_3(!(true & var_0.a), abs(u_input.d) | var_1, vec3<i32>(2147483647i, abs(-2147483647i), func_3(var_0.e.b.x).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.c.a.x + var_0.d)))), global0.e);
    var var_2 = Struct_1(vec3<f32>(-324f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, 1214f) - _wgslsmith_div_f32(var_0.d, -986f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-561f))))));
    return var_0;
}

fn func_1() -> Struct_3 {
    global0 = func_2();
    global0 = func_2();
    var var_0 = global0.e;
    var var_1 = func_2().e;
    global0 = Struct_3(false, ~(global0.e.a.x | var_0.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(reverseBits(var_1.a.x), func_3(var_0.b.x).x), var_1.a.x, global0.e.a.x), vec3<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(global0.e.a.x, countOneBits(19870i), 57993i | var_1.a.x), var_1.a.x)), _wgslsmith_f_op_f32(-func_2().d), global0.e);
    return Struct_3(var_1.b.x, ~1i, global0.c, var_1.c.a.x, func_2().e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(u_input.d, ~global0.e.a.x) & global0.c.zy;
    global0 = func_1();
    global0 = func_2();
    var var_1 = func_1();
    var var_2 = global0.e.c;
    global0 = func_1();
    var_1 = Struct_3(all(vec3<bool>(global0.a, !(u_input.a < u_input.a), any(var_1.e.b))), ~(max(countOneBits(39301i), -u_input.e) | func_2().b), _wgslsmith_mod_vec3_i32(global0.c | _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.d, var_0.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u)), var_1.c | vec3<i32>(-1i, -50343i, var_0.x)), -vec3<i32>(-global0.e.a.x, max(5186i, var_1.b), func_3(false).x)), global0.e.c.a.x, Struct_2(_wgslsmith_add_vec2_i32(select(var_0, vec2<i32>(0i, -1i), false), -vec2<i32>(0i, 1i) & var_0), vec2<bool>(~4294967295u >= _wgslsmith_sub_u32(1u, u_input.b.x), true), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.e.c.a))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_1.e.c.a.x, -1174f) + vec3<f32>(660f, var_1.d, -1082f))) * _wgslsmith_f_op_vec3_f32(-var_2.a)) + vec3<f32>(_wgslsmith_f_op_f32(630f * func_1().e.c.a.x), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f * var_2.a.x)))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) - _wgslsmith_f_op_f32(trunc(-781f))), select(u_input.b, vec3<u32>(17836u, 4294967295u >> (u_input.a % 32u), ~u_input.b.x), vec3<bool>(all(vec2<bool>(true, global0.e.b.x)), !var_1.e.b.x, global0.a)) & ~u_input.b, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(4294967295u, u_input.a, 17826u, 0u)), vec4<u32>(36370u, 4294967295u, u_input.b.x, u_input.a)), reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(2749u, 17541u, 61830u, u_input.b.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), var_1.a)))), var_0, func_3(true).x);
}

