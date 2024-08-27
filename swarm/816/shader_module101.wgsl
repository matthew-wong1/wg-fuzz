struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 10>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-34448i, -18424i, 29545i, -1i), vec3<u32>(16482u, 34713u, 4294967295u));

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    global3 = Struct_2(_wgslsmith_f_op_f32(ceil(global3.d.a.x)), global2.a.xy, global3.c, global3.c);
    let var_0 = global3.c;
    var var_1 = global1[_wgslsmith_index_u32(global2.b.x, 10u)];
    global4 = array<Struct_3, 31>();
    var var_2 = !(!any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));
    return _wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(_wgslsmith_f_op_f32(round(-528f)), -944f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f - var_0.a.x))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    global4 = array<Struct_3, 31>();
    let var_0 = global2.a.zw;
    var var_1 = Struct_2(-233f, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global2.a.yw, vec2<i32>(-63198i, global2.a.x) >> (global2.b.yy % vec2<u32>(32u))) << (vec2<u32>(44009u, ~u_input.a) % vec2<u32>(32u)), global2.a.zy), Struct_1(_wgslsmith_f_op_vec3_f32(func_3())), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2159f, _wgslsmith_f_op_f32(-global3.d.a.x), _wgslsmith_f_op_f32(max(arg_1.d.a.x, arg_1.c.a.x))) + global3.d.a)));
    global3 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)) * 179f))), global2.a.zy, Struct_1(var_1.d.a), global1[_wgslsmith_index_u32(u_input.a, 10u)]);
    global2 = Struct_3(global2.a, global2.b);
    return select(select(select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(arg_2, arg_2))), select(select(select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(true, arg_2, false, true), vec4<bool>(arg_2, false, true, true)), vec4<bool>(arg_2, arg_2, arg_2, true), select(vec4<bool>(true, true, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2))), select(!vec4<bool>(true, true, false, arg_2), select(vec4<bool>(true, true, arg_2, true), vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(true, false, arg_2, arg_2)), arg_2), (0i != global3.b.x) || true), !arg_2), select(select(vec4<bool>(true, arg_2, !arg_2, true), !(!vec4<bool>(false, true, false, arg_2)), !(!vec4<bool>(true, true, arg_2, true))), select(vec4<bool>(arg_2, !arg_2, any(vec2<bool>(false, true)), any(vec2<bool>(arg_2, arg_2))), vec4<bool>(!arg_2, arg_2, var_0.x > var_0.x, arg_2 && false), any(vec3<bool>(true, arg_2, arg_2))), true), vec4<bool>(select(any(vec3<bool>(true, false, arg_2)), !all(vec4<bool>(true, arg_2, true, false)), true), all(vec3<bool>(true, 1014f == var_1.a, arg_2)), any(vec4<bool>(false | arg_2, select(false, arg_2, false), arg_2, false)), false));
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, min(4294967295u, 117233u), 0u), global2.b), abs(_wgslsmith_dot_vec2_u32(global2.b.yx, global2.b.zz) & reverseBits(1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(max(24604u, 0u), select(u_input.a, u_input.a, true), 77435u, max(0u, 1u)), ~abs(vec4<u32>(60395u, 17162u, 32535u, u_input.a))));
    var var_1 = select(!select(select(func_2(-16374i, Struct_2(-454f, vec2<i32>(-2147483647i, global3.b.x), global1[_wgslsmith_index_u32(u_input.a, 10u)], Struct_1(vec3<f32>(1273f, -2074f, global3.a))), false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, any(vec2<bool>(true, true)), true, all(vec2<bool>(true, false))), vec4<bool>(true, all(vec3<bool>(false, false, true)), false, true)), vec4<bool>((_wgslsmith_mult_u32(u_input.a, global2.b.x) ^ 7314u) >= (_wgslsmith_clamp_u32(var_0.x, 1u, u_input.a) | ~var_0.x), true, all(func_2(-9256i, Struct_2(global3.c.a.x, vec2<i32>(global2.a.x, 39432i), global1[_wgslsmith_index_u32(u_input.a, 10u)], global3.d), true)), false), false);
    let var_2 = -1000f;
    global0 = global2.a.x;
    var var_3 = _wgslsmith_f_op_f32(-global3.a);
    return global4[_wgslsmith_index_u32(global2.b.x, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = global3.b.x;
    let var_1 = Struct_2(global3.c.a.x, ~(-global2.a.yz), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1397f, -405f, -177f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(245f, global3.d.a.x, global3.c.a.x) * global3.d.a))))), global1[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(1u, u_input.a)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 426u, 34376u)), firstTrailingBit(vec3<u32>(u_input.a, 9244u, u_input.a))) >> (_wgslsmith_mod_u32(u_input.a, abs(u_input.a)) % 32u)), 10u)]);
    global2 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-114f + 702f), _wgslsmith_f_op_f32(select(global3.d.a.x, 164f, true)), _wgslsmith_f_op_f32(-global3.a), var_1.d.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1005f, var_1.c.a.x, global3.c.a.x, -254f), vec4<f32>(-528f, 625f, global3.d.a.x, -132f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.a.x, -1237f, 294f, -1227f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1407f, var_1.a, var_1.d.a.x, 1575f))))), vec4<f32>(666f, global3.d.a.x, var_1.c.a.x, -317f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, global3.d.a.x, var_1.a, global3.a)))))));
    global2 = Struct_3(global2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a & (u_input.a ^ global2.b.x), ~global2.b.x, ~(~4294967295u)), ~vec3<u32>(3393u, abs(0u), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, global3.a, var_2.xw);
}

