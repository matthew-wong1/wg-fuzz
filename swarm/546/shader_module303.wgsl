struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~(~4294967295u), 22u)];
    var_0 = global0[_wgslsmith_index_u32(51075u, 22u)];
    var var_1 = -u_input.b;
    var var_2 = -29213i;
    var_1 = _wgslsmith_div_vec4_i32(u_input.b, u_input.b);
    return Struct_2(u_input.d.x, var_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, global2.a.x, global2.a.x))) - _wgslsmith_f_op_vec3_f32(ceil(var_0.d)))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global1 = arg_0.c.e;
    global2 = func_2().c;
    global0 = array<Struct_2, 22>();
    var var_0 = -u_input.b.x;
    var var_1 = Struct_2(-36997i, select(!arg_0.b, vec4<bool>(any(vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.b.x, (17216i == arg_0.c.e.x) || select(arg_0.b.x, arg_0.b.x, true), arg_0.b.x), select(arg_0.b, vec4<bool>(!arg_0.b.x, arg_0.b.x & false, arg_0.b.x, false), !(!arg_0.b.x))), func_2().c, arg_0.d);
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global2 = arg_3;
    var var_0 = select(select(func_2().b.wz, !(!func_2().b.xy), vec2<bool>(true, false)), !vec2<bool>(true, (4294967295u > global2.c) && true), true);
    var var_1 = Struct_2(-global2.e.x, select(select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(true, var_0.x, true, var_0.x)), var_0.x), !(!(!vec4<bool>(false, var_0.x, false, var_0.x))), !all(vec3<bool>(false, true, true))), func_2().c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.d)) - 192f) * -716f), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a.x)) * 1337f))));
    var var_2 = vec2<f32>(-273f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, -315f)), _wgslsmith_f_op_f32(-1086f * -1872f))))));
    var var_3 = select(31107i, u_input.b.x, func_2().b.x);
    return arg_3.c;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(618f)), global2.d)), global1.x, func_4(select(func_3(func_2(), abs(var_0.c.c)), min(u_input.c, ~u_input.c), false), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1434f, global2.a.x), vec2<f32>(1147f, global2.a.x))) * var_0.c.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a)), abs(~global1.x), u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1489f)))), var_0.c.e)), 198f, -u_input.d | vec2<i32>(var_0.a, -(~66338i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(-u_input.b);
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(34670u, global2.c) << (80519u % 32u), 22u)];
    let var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(func_2().a, ~(-u_input.d.x)), ~(~(-vec2<i32>(1i, -21529i))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~var_0.c.e, vec2<i32>(94633i, var_0.c.e.x)), _wgslsmith_add_vec2_i32(global2.e, -u_input.b.yz)));
    global1 = firstLeadingBit(var_1);
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a.x, global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f - -232f) - var_0.c.d))))));
    var var_3 = func_2().d.x;
    var var_4 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.c.c, ~0u, (global2.c << (var_0.c.c % 32u)) ^ var_0.c.c), vec3<u32>(var_0.c.c, func_3(Struct_2(global2.e.x, var_0.b, Struct_1(var_2.yy, -372i, u_input.c, -1361f, vec2<i32>(u_input.d.x, global2.e.x)), vec3<f32>(global2.a.x, 131f, var_0.d.x)), 0u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, -2147483647i), u_input.d, global2.e) | vec2<i32>(u_input.d.x, global1.x >> (11233u % 32u)), u_input.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1000f, -199f, -903f), vec4<f32>(-247f, var_0.c.a.x, var_2.x, 594f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-726f, global2.a.x, 2277f, -900f), vec4<f32>(-1592f, -899f, var_2.x, -1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, 857f, -370f, var_0.d.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -1646f, 445f, 1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(round(var_2.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))), vec4<u32>(_wgslsmith_mult_u32(var_4.x, 1u) << ((var_0.c.c >> (1u % 32u)) % 32u), var_4.x, reverseBits(var_0.c.c), global2.c));
}

