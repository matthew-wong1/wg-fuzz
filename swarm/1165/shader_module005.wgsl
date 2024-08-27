struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 12>;

var<private> global3: i32;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 83897u), 405f, vec2<bool>(true, false)), 2147483647i, Struct_1(vec2<u32>(63334u, 0u), 442f, vec2<bool>(false, false)), Struct_1(vec2<u32>(63216u, 4294967295u), 1543f, vec2<bool>(false, true)), vec2<bool>(true, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    global1 = _wgslsmith_f_op_f32(arg_1 - arg_0);
    global4 = Struct_2(global4.c, global4.b, Struct_1(countOneBits(u_input.a.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.d.b, 769f)) + arg_1)), !(!(!global4.a.c))), Struct_1(vec2<u32>(~u_input.a.x, reverseBits(~8250u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 1927f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(select(!global4.e, select(global4.a.c, vec2<bool>(false, global4.c.c.x), global4.c.c.x), false), global4.e, select(vec2<bool>(global4.d.c.x, global4.d.c.x), vec2<bool>(true, global4.a.c.x), global4.d.c.x))), !global4.a.c);
    global3 = global4.b;
    let var_0 = global4.c;
    var var_1 = Struct_2(Struct_1(~u_input.a.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.b, arg_1, false))))), vec2<bool>(firstLeadingBit(101779u) <= u_input.a.x, all(vec3<bool>(var_0.c.x, global4.a.c.x, global4.a.c.x)))), _wgslsmith_mod_i32((~global4.b ^ global4.b) | global4.b, global4.b), global4.c, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0.c);
    return _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(var_1.c.a.x, firstTrailingBit(25893u))), vec2<u32>(~abs(0u), ~var_0.a.x));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global4.d.b);
    global2 = array<Struct_1, 12>();
    return _wgslsmith_mod_u32(58631u, func_3(global4.a.b, _wgslsmith_f_op_f32(step(2317f, -237f))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> Struct_3 {
    let var_0 = vec2<i32>((max(global4.b & global4.b, global4.b) >> (func_2(~4294967295u) % 32u)) ^ global4.b, ~(-32624i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 728f);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, -1309f, -1000f), vec3<f32>(arg_2, global4.a.b, 1215f))) * vec3<f32>(_wgslsmith_f_op_f32(round(1575f)), -883f, var_1))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, global4.d.b, arg_1) + vec3<f32>(1822f, -988f, arg_0.a.b)) * vec3<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(-arg_2), -333f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 989f, 2013f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, arg_2, 1370f) + vec3<f32>(-776f, arg_2, -609f))))))));
    global2 = array<Struct_1, 12>();
    var var_3 = countOneBits(u_input.a.x << (_wgslsmith_dot_vec4_u32(countOneBits(u_input.a) >> (countOneBits(vec4<u32>(44286u, 4294967295u, u_input.a.x, 4294967295u)) % vec4<u32>(32u)), u_input.a) % 32u));
    return Struct_3(true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.c.a.x, ~4294967295u), 12u)], global4.c, 1015f, arg_0.a.c.x);
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_3, 7>();
    let var_0 = global0[_wgslsmith_index_u32(abs(global4.c.a.x), 7u)];
    var var_1 = func_4(Struct_4(Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1477f)), !(!var_0.c.c)), ~func_2(4294967295u), firstTrailingBit(max(_wgslsmith_div_u32(var_0.b.a.x, var_0.b.a.x), firstLeadingBit(4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, global4.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-691f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b, 1170f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1194f)))));
    var var_2 = ~vec3<u32>(_wgslsmith_add_u32(~var_1.c.a.x, 1u) ^ var_0.c.a.x, 1u, _wgslsmith_mult_u32(1u, var_0.b.a.x));
    return vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~21742u), abs((var_0.b.a.x >> (var_1.c.a.x % 32u)) & u_input.a.x), global4.a.a.x, 7387u) ^ max(~u_input.a, select(u_input.a, vec4<u32>(0u, ~var_0.c.a.x, global4.a.a.x, _wgslsmith_div_u32(57582u, global4.d.a.x)), vec4<bool>(var_1.c.c.x, select(var_0.e, global4.d.c.x, true), func_4(Struct_4(var_0.b, global4.c.a.x, global4.d.a.x), 624f, var_1.b.b).c.c.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = ~_wgslsmith_dot_vec4_u32(~func_1(), vec4<u32>(~0u, _wgslsmith_mult_u32(global4.c.a.x, u_input.a.x), u_input.a.x, u_input.a.x)) << (~((52403u >> (~4294967295u % 32u)) ^ ~(~u_input.a.x)) % 32u);
    let var_2 = func_4(Struct_4(Struct_1(firstLeadingBit(u_input.a.yx), _wgslsmith_f_op_f32(697f + _wgslsmith_f_op_f32(f32(-1f) * -815f)), !vec2<bool>(global4.d.c.x, global4.c.c.x)), u_input.a.x, 0u), -1000f, global4.a.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.b, 609f, var_2.b.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.b, 909f, 157f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b)), global4.a.b, _wgslsmith_f_op_f32(-var_2.c.b)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, var_2.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-370f, 1730f, var_2.d) - vec3<f32>(var_2.c.b, 599f, var_2.c.b)))))));
    global3 = -3294i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_3.zy, vec2<f32>(global4.a.b, 244f))), vec2<f32>(_wgslsmith_f_op_f32(119f - var_2.d), _wgslsmith_div_f32(var_2.d, var_3.x)), func_4(Struct_4(global2[_wgslsmith_index_u32(var_2.c.a.x, 12u)], var_2.c.a.x, global4.d.a.x), 1073f, -185f).b.c)) * _wgslsmith_f_op_vec2_f32(-var_3.xx)), -523f);
}

