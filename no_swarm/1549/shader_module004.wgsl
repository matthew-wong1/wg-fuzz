struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    global3 = array<vec4<f32>, 17>();
    var var_0 = global2.d.xy;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-995f, -1407f, true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(853f, global1.e.d.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~global2.e.b.x, abs(global2.c.b.x), reverseBits(u_input.a.x)), vec4<u32>(~4294967295u, _wgslsmith_sub_u32(global1.e.b.x, 15744u), 1u, ~0u)), ~(~_wgslsmith_mult_i32(global2.a.c, -19148i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.d.x, global2.c.d.x)) - global1.e.d), _wgslsmith_f_op_vec2_f32(-global1.e.d))), vec3<u32>(~19040u, ~_wgslsmith_dot_vec3_u32(global2.e.b.zww, global2.b), 1u) | _wgslsmith_add_vec3_u32(global1.a.b.wxw, vec3<u32>(firstLeadingBit(u_input.b), 60351u & global2.e.b.x, 1u)), global1.e, !(!vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b, global1.e.b.x, u_input.e)), 4u)], global0[_wgslsmith_index_u32(max(u_input.b, 1u), 4u)])), global1.c);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(arg_0.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) * _wgslsmith_div_f32(global1.e.a, global2.a.a)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-833f)), _wgslsmith_f_op_f32(trunc(588f))))))), arg_3, global2.a.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1050f, global2.c.d.x))))));
    global0 = array<bool, 4>();
    var var_1 = i32(-1i) * -49618i;
    var var_2 = arg_0.e;
    let var_3 = arg_0;
    return firstLeadingBit(0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(103u, func_3(func_2(), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), global2.e, global1.c.b));
    var var_1 = all(!vec2<bool>(any(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global1.d.x, global1.d.x, global1.d.x)), global0[_wgslsmith_index_u32(global1.a.b.x, 4u)]));
    global2 = Struct_2(global2.c, ~(~u_input.a), arg_1, func_2().d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-181f)) + _wgslsmith_f_op_f32(-global2.c.a)) * global2.a.a), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 4294967295u, global2.b.x, global1.c.b.x), vec4<u32>(arg_1.b.x, u_input.e, 117232u, global2.a.b.x)), func_2().c.b), abs(select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 1i, 47894i, -29187i), vec4<i32>(u_input.c, arg_1.c, -2147483647i, u_input.d.x)), _wgslsmith_mult_i32(-1i, 1i), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(arg_1.d)), _wgslsmith_f_op_vec2_f32(global1.c.d + global1.c.d))))));
    var var_2 = select(!select(global1.d, global1.d, !any(global1.d.xz)), !global2.d, false);
    var var_3 = arg_1.c;
    return Struct_2(func_2().e, min(vec3<u32>(_wgslsmith_mod_u32(max(72244u, 0u), global1.e.b.x), countOneBits(~4294967295u), 4294967295u), vec3<u32>(min(~global2.a.b.x, global2.b.x), global1.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1436u, u_input.b, u_input.b), max(u_input.a, global2.a.b.yyy)))), Struct_1(2261f, firstTrailingBit(select(~vec4<u32>(global2.a.b.x, arg_1.b.x, global1.a.b.x, 812u), arg_1.b >> (arg_1.b % vec4<u32>(32u)), vec4<bool>(false, global1.d.x, global0[_wgslsmith_index_u32(arg_1.b.x, 4u)], global0[_wgslsmith_index_u32(global2.e.b.x, 4u)]))), u_input.d.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.e.d - vec2<f32>(global2.a.d.x, global2.c.d.x)), _wgslsmith_f_op_vec2_f32(arg_1.d - global1.a.d)))))), vec3<bool>(true, false, global1.d.x), Struct_1(_wgslsmith_f_op_f32(-global2.c.d.x), ~_wgslsmith_mult_vec4_u32(~global1.c.b, arg_1.b), arg_1.c, vec2<f32>(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-258f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(max(firstTrailingBit(-u_input.d), vec3<i32>(-2147483647i, global1.c.c, ~u_input.d.x & max(u_input.c, global2.a.c))), global2.c);
    let var_0 = _wgslsmith_add_vec2_i32(u_input.d.yz, ~(-reverseBits(u_input.d.xy)));
    global3 = array<vec4<f32>, 17>();
    global2 = func_2();
    let var_1 = -vec2<i32>(func_1(vec3<i32>(var_0.x, u_input.c, countOneBits(var_0.x)), Struct_1(-552f, ~vec4<u32>(global2.b.x, 4294967295u, 1u, 1u), i32(-1i) * -48338i, vec2<f32>(global1.c.a, global2.e.d.x))).c.c, ~(~var_0.x) ^ 31965i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(func_2().e.c, func_1(u_input.d, Struct_1(global1.c.a, global2.a.b, -24159i, vec2<f32>(global1.a.d.x, global1.e.a))).c.c, -2147483647i, -1i), firstTrailingBit(~0i), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-457f, global2.e.d.x, global2.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.c.d.x, global1.a.a)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global1.c.a, global2.e.d.x), vec3<f32>(1000f, global1.c.d.x, global2.c.a))))), vec3<f32>(_wgslsmith_f_op_f32(-func_1(vec3<i32>(-2147483647i, u_input.c, -19950i), Struct_1(global1.c.d.x, global2.a.b, global2.a.c, vec2<f32>(global2.c.a, 1328f))).e.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1070f - -821f) - 411f), global2.c.d.x)));
}

