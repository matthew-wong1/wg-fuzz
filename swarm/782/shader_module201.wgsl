struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(8184i, vec3<i32>(-4087i, -1i, 30714i), 0i, vec3<bool>(true, true, true), Struct_1(vec2<f32>(1705f, -1286f), vec3<u32>(22932u, 27213u, 0u)));

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(Struct_2(-2147483647i, abs(_wgslsmith_add_vec3_i32(arg_0.b, arg_0.b) << (arg_0.e.b % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(global2.b, arg_0.b), !vec3<bool>(global2.d.x, false, true | global2.d.x), arg_0.e), Struct_2(~firstLeadingBit(1i >> (arg_0.e.b.x % 32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(30869i, _wgslsmith_clamp_i32(global2.c, -43726i, u_input.a.x), -arg_0.c), select(global2.b, vec3<i32>(arg_0.c, arg_0.b.x, -479i), !global2.d)), 1i, vec3<bool>(arg_0.d.x || all(vec2<bool>(true, false)), false, true), global3[_wgslsmith_index_u32(arg_0.e.b.x, 29u)]), 2147483647i);
    let var_1 = global2.b;
    global0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)) <= _wgslsmith_div_f32(-336f, arg_0.e.a.x)));
    var var_2 = vec3<bool>(var_0.a.e.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.a.x + _wgslsmith_f_op_f32(max(-385f, arg_0.e.a.x)))), all(arg_0.d.zx), true);
    global3 = array<Struct_1, 29>();
    return abs(var_0.b.e.b.x);
}

fn func_2() -> Struct_4 {
    let var_0 = global2.d.xy;
    global2 = Struct_2(~(u_input.a.x | 28181i), ~vec3<i32>(global2.c, global2.c, u_input.a.x ^ (u_input.a.x | u_input.a.x)), global2.b.x, !(!global2.d), Struct_1(vec2<f32>(973f, -441f), global2.e.b));
    global3 = array<Struct_1, 29>();
    global3 = array<Struct_1, 29>();
    var var_1 = Struct_4(~(~global2.e.b), 4294967295u, true, select(select(vec2<bool>(true, false), global2.d.yy, false), vec2<bool>(_wgslsmith_f_op_f32(global2.e.a.x * 197f) > global2.e.a.x, 15211u != (15000u >> (global2.e.b.x % 32u))), !global2.d.yy));
    return Struct_4(var_1.a, 16016u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.e.b.xx, global2.e.b.yy), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_1.a.x, global2.e.b.x)), vec2<u32>(0u, global2.e.b.x))) == (func_3(Struct_2(global2.b.x, global2.b, u_input.a.x, global2.d, global2.e)) >> (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(global2.e.b.zz, var_1.a.yz)) % 32u)), select(vec2<bool>(var_0.x, false), !select(select(global2.d.yx, vec2<bool>(true, true), var_1.d), global2.d.zz, global2.d.yx), true));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.e.a.x, arg_2.b.e.a.x))), vec3<u32>(49558u, arg_3.b.e.b.x, 15592u | select(abs(5251u), _wgslsmith_div_u32(4294967295u, 4294967295u), true)));
    global1 = _wgslsmith_f_op_f32(trunc(1235f));
    global0 = !global2.d.x;
    let var_1 = Struct_4(vec3<u32>(reverseBits(global2.e.b.x) ^ abs(0u), ~arg_1.b, abs(var_0.b.x ^ 1u)) >> (vec3<u32>(~1u, ~(~14724u), ~_wgslsmith_sub_u32(4294967295u, 1u)) % vec3<u32>(32u)), arg_2.a.e.b.x, all(select(vec3<bool>(arg_0 > arg_3.b.e.a.x, arg_1.d.x & arg_1.d.x, true), select(!vec3<bool>(arg_2.a.d.x, false, false), global2.d, select(vec3<bool>(true, true, false), arg_2.b.d, global2.d)), vec3<bool>(true && arg_3.b.d.x, arg_1.c, var_0.b.x <= 43519u))), arg_2.a.d.yx);
    let var_2 = Struct_3(arg_3.a, arg_2.b, _wgslsmith_mult_i32(arg_2.b.b.x, 31580i));
    return abs(0i);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = global2.d.x;
    let var_0 = Struct_2(global2.c, vec3<i32>(func_4(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), func_2(), Struct_3(Struct_2(-3467i, global2.b, -73638i, global2.d, Struct_1(arg_2.a, arg_2.b)), Struct_2(-902i, vec3<i32>(u_input.a.x, u_input.a.x, 1i), 3928i, vec3<bool>(global2.d.x, global2.d.x, global2.d.x), arg_2), firstLeadingBit(u_input.a.x)), Struct_3(Struct_2(u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, global2.a), u_input.a.x, global2.d, arg_2), Struct_2(-12498i, global2.b, -21105i, vec3<bool>(global2.d.x, global2.d.x, true), Struct_1(arg_1.a, vec3<u32>(arg_1.b.x, arg_2.b.x, 47781u))), 2147483647i)), global2.b.x, -global2.a), -17019i, vec3<bool>(func_4(_wgslsmith_f_op_f32(step(arg_2.a.x, 649f)), Struct_4(vec3<u32>(40330u, arg_2.b.x, arg_0.x), arg_1.b.x, true, vec2<bool>(global2.d.x, global2.d.x)), Struct_3(Struct_2(-2147483647i, global2.b, 2147483647i, vec3<bool>(global2.d.x, false, global2.d.x), Struct_1(arg_1.a, vec3<u32>(46723u, 37573u, 84094u))), Struct_2(global2.c, global2.b, global2.a, global2.d, Struct_1(arg_2.a, vec3<u32>(global2.e.b.x, 8821u, 0u))), -1i), Struct_3(Struct_2(u_input.a.x, global2.b, u_input.a.x, global2.d, Struct_1(arg_2.a, arg_2.b)), Struct_2(global2.b.x, vec3<i32>(global2.b.x, 1i, 0i), global2.a, vec3<bool>(global2.d.x, global2.d.x, true), Struct_1(arg_1.a, global2.e.b)), u_input.a.x)) > u_input.a.x, true, 1i <= -global2.c), arg_1);
    global0 = !(!all(select(select(vec2<bool>(false, true), var_0.d.zy, var_0.d.yz), func_2().d, vec2<bool>(true, false))));
    global3 = array<Struct_1, 29>();
    let var_1 = arg_1.a.x;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -625f);
    let var_0 = _wgslsmith_div_f32(-1123f, _wgslsmith_f_op_f32(func_1(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.e.b.x, 1u), vec2<u32>(global2.e.b.x, global2.e.b.x)), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(51288u, global2.e.b.x, 1071u, 109351u), vec4<u32>(55525u, 1u, 1u, global2.e.b.x))), global3[_wgslsmith_index_u32(~14854u, 29u)], Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.a.x, global2.e.a.x) - global2.e.a), vec2<f32>(global2.e.a.x, 129f)), vec3<u32>(global2.e.b.x | 24321u, _wgslsmith_mod_u32(4294967295u, global2.e.b.x), ~global2.e.b.x)))));
    let var_1 = -_wgslsmith_div_vec2_i32(max(global2.b.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -32905i), max(u_input.a, vec2<i32>(-21655i, u_input.a.x)), vec2<i32>(-2147483647i, -55057i))), select(firstLeadingBit(-vec2<i32>(global2.a, 56849i)), select(global2.b.xy, vec2<i32>(u_input.a.x, global2.a), vec2<bool>(false, false)) | abs(u_input.a), (u_input.a.x >= 30700i) && all(vec4<bool>(true, true, global2.d.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.e.a, func_4(global2.e.a.x, Struct_4(global2.e.b, abs(_wgslsmith_mod_u32(global2.e.b.x, 1711u)), !(global2.e.b.x >= 0u), vec2<bool>(u_input.a.x == -28493i, global2.d.x)), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, var_1.x, global2.a), vec3<i32>(-2147483647i, u_input.a.x, 0i)), global2.b << (vec3<u32>(21398u, global2.e.b.x, 38256u) % vec3<u32>(32u)), -2147483647i, !global2.d, Struct_1(vec2<f32>(855f, var_0), vec3<u32>(global2.e.b.x, global2.e.b.x, global2.e.b.x))), Struct_2(~var_1.x, select(global2.b, global2.b, global2.d), i32(-1i) * -2114i, global2.d, Struct_1(global2.e.a, vec3<u32>(global2.e.b.x, global2.e.b.x, 0u))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-14379i, var_1.x, var_1.x), firstTrailingBit(-6844i))), Struct_3(Struct_2(_wgslsmith_div_i32(-2147483647i, u_input.a.x), vec3<i32>(23473i, var_1.x, global2.c), -20143i ^ u_input.a.x, vec3<bool>(global2.d.x, false, false), Struct_1(vec2<f32>(-1240f, var_0), global2.e.b)), Struct_2(-2540i, firstTrailingBit(global2.b), ~(-58722i), !global2.d, global3[_wgslsmith_index_u32(~global2.e.b.x, 29u)]), -(~(-1i)))), max(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 16298u, global2.e.b.x, global2.e.b.x) << (vec4<u32>(global2.e.b.x, 4294967295u, 31370u, global2.e.b.x) % vec4<u32>(32u)), vec4<u32>(global2.e.b.x, global2.e.b.x, 64724u, 28027u))), ~vec4<u32>(global2.e.b.x, ~0u, ~global2.e.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.e.b.x, 1u), global2.e.b))));
}

