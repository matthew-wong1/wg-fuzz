struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(1i, -5171i, 60509i, 0i), vec4<i32>(13687i, 19536i, -40778i, -48119i), vec4<i32>(2147483647i, -1i, 0i, -1i), vec4<i32>(2147483647i, -35583i, 104281i, 12166i), vec4<i32>(-12897i, 1i, -18778i, 31887i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(31914i, 25773i, 61054i, i32(-2147483648)), vec4<i32>(-1i, -54350i, -1i, 30243i), vec4<i32>(-1i, 0i, 2147483647i, -15159i), vec4<i32>(-1i, 1i, 0i, -1i), vec4<i32>(-15700i, 2147483647i, 0i, -1i), vec4<i32>(0i, 0i, 40774i, -1i), vec4<i32>(23789i, -40972i, -4399i, -146i), vec4<i32>(24009i, 0i, i32(-2147483648), 42160i), vec4<i32>(-16945i, 1i, -63763i, 32310i), vec4<i32>(1i, 0i, -21486i, 2147483647i), vec4<i32>(i32(-2147483648), -4360i, 1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1793i, 35179i), vec4<i32>(-1i, 2147483647i, -24929i, 0i));

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_1, 26>;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(960f, 142f, -489f), vec2<u32>(4294967295u, 4294967295u), Struct_1(true, -399f, true, vec2<bool>(false, false), vec4<f32>(-1000f, -167f, -223f, 2037f)), Struct_1(true, 1733f, true, vec2<bool>(false, false), vec4<f32>(320f, -1891f, -1593f, 797f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global4.d.e.yyy, vec3<f32>(1358f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, -760f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_3.b)), -454f)))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = -41168i;
    var var_1 = Struct_1(global4.c.d.x && arg_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-global4.d.b), global4.c.d, -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), u_input.a.zy), Struct_1(arg_0.c.c, -1233f, -1072f < arg_0.d.b, vec2<bool>(arg_0.d.c, arg_0.d.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1140f, -470f, global4.c.b, arg_0.c.b))))).x * _wgslsmith_f_op_f32(-global4.c.e.x)), -389f <= global4.a.x, !(!arg_0.d.d), arg_0.d.e);
    global2 = array<Struct_2, 28>();
    var_1 = Struct_1(true, arg_0.c.e.x, false, select(select(!vec2<bool>(arg_0.c.d.x, arg_0.d.c), vec2<bool>(true, true), vec2<bool>(true && arg_0.d.d.x, var_1.a || true)), !vec2<bool>(var_1.c, false), select(select(!var_1.d, vec2<bool>(true, true), global4.d.d), select(select(vec2<bool>(global4.d.d.x, false), vec2<bool>(arg_0.c.a, true), true), vec2<bool>(true, true), false), 1608f >= _wgslsmith_div_f32(-1000f, var_1.e.x))), vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.c.b, _wgslsmith_f_op_f32(f32(-1f) * -625f))) * var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(abs(var_1.b)), select(vec2<bool>(global4.c.d.x, arg_0.d.a), arg_0.d.d, false), -vec2<i32>(2147483647i, u_input.b), Struct_1(true, global4.a.x, true, vec2<bool>(var_1.c, true), arg_0.d.e))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1154f)) - 788f)));
    let var_2 = vec4<i32>(-(u_input.a.x ^ (max(1i, -12646i) & u_input.a.x)), u_input.b, 6965i, ~_wgslsmith_sub_i32(u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, u_input.b, 2147483647i, 2147483647i))));
    return !(!select(select(!vec4<bool>(global4.d.c, false, false, true), !vec4<bool>(false, true, global4.d.c, false), true), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-22633i, -11774i), var_2.zx) >= abs(-19423i)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global4.c.e.xxy)), _wgslsmith_f_op_vec3_f32(func_2(1392f, global4.d.d, u_input.a.xy, Struct_1(true, global4.c.b, true, global4.d.d, global4.c.e)))) - _wgslsmith_f_op_vec3_f32(-global4.c.e.wzz)), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-621f)))), select(!vec2<bool>(global4.d.d.x, global4.d.a), !global4.c.d, !global4.d.d.x), vec2<i32>(u_input.b >> (0u % 32u), -40821i), global4.d)))), ~global4.b, global3[_wgslsmith_index_u32(global4.b.x, 26u)], global4.c);
    var var_1 = var_0.c;
    var_1 = Struct_1(any(select(vec4<bool>(!global4.c.a, arg_0 >= 2147483647i, any(vec4<bool>(false, true, var_1.a, global4.d.d.x)), var_1.a), func_3(global2[_wgslsmith_index_u32(select(32740u, 4294967295u, var_1.c), 28u)]), !select(vec4<bool>(var_0.c.c, global4.c.d.x, false, global4.d.d.x), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.a.x)))), global4.c.c, !select(var_0.d.d, vec2<bool>(false, true), select(vec2<bool>(var_1.d.x, false), select(var_0.d.d, vec2<bool>(var_0.d.c, true), false), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, -1524f, 406f, var_0.c.e.x) * _wgslsmith_f_op_vec4_f32(-var_0.c.e)))), var_1.e)));
    global4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1497f * 1000f))), 992f, -941f), ~(~(vec2<u32>(global4.b.x, var_0.b.x) << (vec2<u32>(global4.b.x, 0u) % vec2<u32>(32u)))) & vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 16390u)), _wgslsmith_add_vec2_u32(vec2<u32>(42975u, global4.b.x), var_0.b)), 1u), var_0.c, global0[_wgslsmith_index_u32(26316u, 14u)]);
    global3 = array<Struct_1, 26>();
    return StorageBuffer(vec4<f32>(global4.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.c.b, -714f)))) * -1428f), -386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(floor(global4.c.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-694f - -499f), _wgslsmith_f_op_f32(-global4.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(377f + _wgslsmith_f_op_f32(-global4.a.x)))));
    let var_1 = global4.c.e;
    var var_2 = 41322u;
    let x = u_input.a;
    s_output = func_1(-(~1i) & u_input.b);
}

