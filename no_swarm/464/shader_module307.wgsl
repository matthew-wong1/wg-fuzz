struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(4294967295u, Struct_1(vec2<bool>(false, false))), Struct_2(1u, Struct_1(vec2<bool>(true, true))), Struct_2(39457u, Struct_1(vec2<bool>(true, false))), Struct_2(4294967295u, Struct_1(vec2<bool>(true, true))), Struct_2(0u, Struct_1(vec2<bool>(true, false))), Struct_2(0u, Struct_1(vec2<bool>(true, false))), Struct_2(8948u, Struct_1(vec2<bool>(false, false))), Struct_2(10426u, Struct_1(vec2<bool>(false, true))), Struct_2(0u, Struct_1(vec2<bool>(false, false))), Struct_2(1u, Struct_1(vec2<bool>(false, true))), Struct_2(4294967295u, Struct_1(vec2<bool>(true, true))), Struct_2(1u, Struct_1(vec2<bool>(false, true))), Struct_2(62744u, Struct_1(vec2<bool>(false, false))), Struct_2(0u, Struct_1(vec2<bool>(true, false))), Struct_2(0u, Struct_1(vec2<bool>(true, false))), Struct_2(1u, Struct_1(vec2<bool>(true, false))), Struct_2(9762u, Struct_1(vec2<bool>(true, true))), Struct_2(9162u, Struct_1(vec2<bool>(true, false))), Struct_2(4294967295u, Struct_1(vec2<bool>(false, false))), Struct_2(4294967295u, Struct_1(vec2<bool>(true, true))), Struct_2(4294967295u, Struct_1(vec2<bool>(false, false))), Struct_2(4294967295u, Struct_1(vec2<bool>(true, false))), Struct_2(34996u, Struct_1(vec2<bool>(true, false))), Struct_2(1u, Struct_1(vec2<bool>(false, true))), Struct_2(2349u, Struct_1(vec2<bool>(false, true))), Struct_2(57791u, Struct_1(vec2<bool>(false, false))), Struct_2(23986u, Struct_1(vec2<bool>(true, false))), Struct_2(68285u, Struct_1(vec2<bool>(false, true))), Struct_2(3303u, Struct_1(vec2<bool>(true, true))));

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(false, -1i, Struct_2(1u, Struct_1(vec2<bool>(true, true))), 2166f, Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_2(u_input.b.x, arg_0);
    var var_1 = arg_0;
    var var_2 = arg_3;
    var_1 = arg_3.c.b;
    var var_3 = global2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - arg_3.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d - global2.d)))))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = firstLeadingBit(~11526i);
    global1 = global2.e;
    var var_1 = Struct_3(arg_0, ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, 19727i, 44860i), vec4<i32>(56629i, 0i, u_input.c, u_input.c)), vec4<i32>(1i, 86000i, -1i, 0i))), Struct_2(~_wgslsmith_div_u32(35023u | u_input.b.x, 43743u), global2.c.b), _wgslsmith_f_op_f32(func_3(global2.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(378f, global2.d))))), -firstTrailingBit(vec3<i32>(-19562i, 2147483647i, 2147483647i)) >> ((vec3<u32>(arg_3.x, global2.c.a, 43301u) << (~vec3<u32>(50138u, global2.c.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_3((994f < global2.d) & true, u_input.c, Struct_2(_wgslsmith_mult_u32(arg_3.x, 4294967295u), Struct_1(global1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(step(518f, global2.d)))), global2.c.b))), Struct_1(vec2<bool>(_wgslsmith_f_op_f32(global2.d + global2.d) >= _wgslsmith_f_op_f32(-global2.d), !select(true, true, true))));
    var var_2 = Struct_1(select(!global2.c.b.a, !vec2<bool>(all(vec3<bool>(false, true, global2.e.a.x)), arg_0), global2.c.b.a));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, -16200i)) | vec2<i32>(0i, u_input.c), -(~max(vec2<i32>(-51539i, -2147483647i), vec2<i32>(global2.b, u_input.c)))), ~65989i);
    return Struct_3(all(!select(select(vec3<bool>(var_2.a.x, arg_1, var_2.a.x), vec3<bool>(true, var_2.a.x, true), true), select(vec3<bool>(false, true, false), vec3<bool>(global2.e.a.x, false, true), global1.a.x), vec3<bool>(arg_0, true, arg_2))), _wgslsmith_mult_i32(var_1.b, global2.b), global0[_wgslsmith_index_u32(3639u & ~(~_wgslsmith_mod_u32(0u, u_input.e)), 29u)], _wgslsmith_f_op_f32(f32(-1f) * -1148f), var_1.c.b);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_2(global2.c.b.a.x, !global1.a.x, ~(~_wgslsmith_mod_u32(global2.c.a, u_input.d.x)) >= ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(92642u, arg_0.c.a, u_input.a.x, arg_0.c.a), vec4<u32>(0u, 33610u, u_input.e, 22242u)), 17204u), u_input.b.zx);
    var var_1 = ~abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.b, vec4<u32>(global2.c.a, var_0.c.a, global2.c.a, global2.c.a)), ~vec4<u32>(11327u, 14004u, 1u, 0u), u_input.b), ~u_input.b ^ ~u_input.d));
    let var_2 = func_2(global1.a.x, global2.e.a.x, !arg_0.a, var_1.yy).c;
    let var_3 = arg_0.b;
    let var_4 = var_0;
    return var_4;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_3 {
    global2 = func_4(func_2(global2.c.b.a.x, false, true, vec2<u32>(~(1u ^ global2.c.a), ~(~0u))));
    var var_0 = reverseBits(46708u);
    let var_1 = false;
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(min(u_input.b.yx, vec2<u32>(~54877u, u_input.d.x)), firstLeadingBit(~(u_input.d.xw ^ vec2<u32>(34886u, 87743u)))), ~select(vec2<u32>(5547u, u_input.d.x), firstLeadingBit(u_input.b.zz), func_4(Struct_3(true, 18878i, Struct_2(1u, global2.e), 979f, Struct_1(vec2<bool>(false, true)))).a) << (vec2<u32>(~(~u_input.d.x), global2.c.a) % vec2<u32>(32u)));
    let var_3 = vec3<f32>(1094f, -1032f, _wgslsmith_f_op_f32(trunc(arg_1.x)));
    return Struct_3(false, -1i, global2.c, 687f, func_4(func_2(all(!vec4<bool>(true, global2.c.b.a.x, global2.e.a.x, global1.a.x)), all(select(vec4<bool>(global2.c.b.a.x, true, false, false), vec4<bool>(var_1, global2.a, false, true), vec4<bool>(global2.a, var_1, var_1, false))), true, ~vec2<u32>(37219u, 51752u))).e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(584f, 1614f, global2.d, global2.d) * vec4<f32>(_wgslsmith_div_f32(global2.d, global2.d), _wgslsmith_f_op_f32(ceil(global2.d)), global2.d, 940f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, -130f, 2511f, global2.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -744f, -573f, global2.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, 1503f, 1000f, 130f) + vec4<f32>(-971f, global2.d, -2292f, -477f)))))));
    global0 = array<Struct_2, 29>();
    var var_1 = u_input.d.yzx;
    global2 = Struct_3(_wgslsmith_dot_vec2_u32(~var_1.xz, vec2<u32>(_wgslsmith_add_u32(u_input.d.x, var_1.x), _wgslsmith_dot_vec2_u32(var_1.zy, u_input.b.zx))) <= _wgslsmith_dot_vec2_u32(vec2<u32>(~global2.c.a, var_1.x & var_1.x), firstTrailingBit(~vec2<u32>(u_input.d.x, global2.c.a))), var_0.b, Struct_2(~global2.c.a & ~(~var_1.x), global2.e), var_0.d, Struct_1(vec2<bool>(!global2.a, !any(vec4<bool>(global1.a.x, true, global1.a.x, var_0.a)))));
    var_0 = func_2(global2.e.a.x, global1.a.x, !(((u_input.a.x | var_1.x) <= 4294967295u) | !(1u >= global2.c.a)), u_input.d.zz);
    let var_2 = reverseBits(vec3<u32>(~firstTrailingBit(~5298u), _wgslsmith_dot_vec3_u32(u_input.d.ywy, _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 27435u, var_1.x), min(u_input.b.wxx, vec3<u32>(global2.c.a, u_input.d.x, var_1.x)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, var_0.d, -417f, 1467f), vec4<f32>(global2.d, var_0.d, -150f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, global2.d, -1000f, -2588f)))).c.a));
    let var_3 = global0[_wgslsmith_index_u32(53703u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -14430i, var_0.b, var_0.b), vec4<i32>(0i, -7706i, global2.b, u_input.c)), u_input.c), var_1.x, 0u, countOneBits(~(~reverseBits(vec4<i32>(global2.b, global2.b, u_input.c, -18742i)))));
}

