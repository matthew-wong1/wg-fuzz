struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: u32 = 0u;

var<private> global3: Struct_4;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    global3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, 242f, global4.x)) * vec3<f32>(784f, -364f, -343f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), -1068f, global4.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global4.xyx))))), vec4<bool>(any(vec4<bool>(global3.b.x, select(false, false, global0.x), select(false, true, false), all(global3.b))), all(global3.b.zzx), !(!(!global0.x)), !global3.b.x), -2147483647i);
    let var_0 = 87302u;
    let var_1 = Struct_2(global3.c);
    var var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.zww)) * _wgslsmith_f_op_vec3_f32(global4.wwx * vec3<f32>(arg_3, 1692f, global4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-697f, 1202f, arg_1))))))), !(!vec4<bool>(all(global3.b.zwz), all(vec3<bool>(true, global3.b.x, global3.b.x)), true, true)), u_input.e.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(global3.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, var_3, var_2.b.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(208f + -441f), _wgslsmith_f_op_f32(arg_1 * 379f)))))) - _wgslsmith_f_op_f32(abs(arg_1)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(1912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.d.x, 0u, 8965u, u_input.a), arg_1, u_input.d, 695f))))), _wgslsmith_div_f32(127f, arg_1));
    return arg_0.a.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(_wgslsmith_clamp_i32(19154i, global3.c, global3.c) ^ 12140i), 0i, ~global3.c, _wgslsmith_div_i32(firstTrailingBit(global3.c), _wgslsmith_mult_i32(38600i, ~u_input.b.x))), -vec4<i32>(39289i, u_input.b.x, global3.c, 1i));
    global2 = (firstLeadingBit(func_2(Struct_3(arg_1, vec4<i32>(u_input.e.x, global3.c, var_0, var_0), arg_1.c.x, global4.zw), _wgslsmith_f_op_f32(global4.x * global4.x), arg_0, vec4<i32>(28670i, var_0, 25657i, var_0)).x) & _wgslsmith_add_u32(firstLeadingBit(1u), firstLeadingBit(_wgslsmith_sub_u32(36366u, u_input.d.x)))) << (reverseBits(1u) % 32u);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global4.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1932f, _wgslsmith_f_op_f32(abs(1635f)))))));
    var var_2 = ~vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(global3.c), ~(u_input.e.x | -2147483647i)), -18260i, ~(-15586i));
    global4 = vec4<f32>(global3.a.x, global4.x, -513f, -319f);
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.zzz)))), !(!arg_0), u_input.b.x);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = ~countOneBits(arg_1);
    let var_1 = u_input.c.x;
    global4 = vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(-1454f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(min(-1255f, 952f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2084f) * 508f))));
    let var_2 = u_input.c.yz;
    var var_3 = func_4(!global3.b, Struct_1(global3.b, true, _wgslsmith_mult_vec3_u32(func_2(Struct_3(Struct_1(vec4<bool>(global0.x, global3.b.x, global3.b.x, global3.b.x), true, vec3<u32>(0u, u_input.c.x, var_1)), vec4<i32>(global3.c, 1531i, arg_1.x, global3.c), 94010u, vec2<f32>(global3.a.x, -528f)), -709f, vec4<bool>(global3.b.x, false, global3.b.x, false), vec4<i32>(global3.c, 2147483647i, arg_1.x, 1i)), firstLeadingBit(vec3<u32>(0u, 7925u, var_2.x))) >> (~(~u_input.c) % vec3<u32>(32u))), ~arg_0 | u_input.d.x);
    return func_4(var_3.b, Struct_1(vec4<bool>(global0.x, select(false, global3.b.x == var_3.b.x, var_0.x > 0i), true, var_3.b.x), all(select(vec4<bool>(global0.x, true, global3.b.x, global0.x), global3.b, global0.x)), u_input.c), var_1);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -212f, 1040f, arg_2.a.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1236f, global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, -1256f, false)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a.x, global4.x, 106f, 1538f), vec4<f32>(global3.a.x, 1000f, 410f, -1087f))))), vec4<f32>(124f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(global3.a.x * -709f), arg_0))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.yx, vec2<f32>(arg_2.a.x, -1943f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.x, 2147f), global3.a.zx))), vec2<f32>(_wgslsmith_div_f32(-1184f, -1000f), _wgslsmith_f_op_f32(559f + -1000f))))) * vec2<f32>(-1000f, func_1(max(u_input.c.x ^ 1u, u_input.a ^ u_input.c.x), -vec4<i32>(u_input.e.x, arg_2.c, arg_1, arg_1)).a.x));
    var var_1 = Struct_2(((29987i & _wgslsmith_clamp_i32(u_input.e.x, global3.c, arg_1)) & -1i) >> (~40437u % 32u));
    let var_2 = any(vec3<bool>(_wgslsmith_f_op_f32(step(-919f, _wgslsmith_f_op_f32(236f * 1754f))) < _wgslsmith_f_op_f32(var_0.x * arg_2.a.x), any(global3.b), all(select(vec4<bool>(true, true, global0.x, true), !vec4<bool>(false, global0.x, true, global3.b.x), vec4<bool>(true, true, true, global3.b.x)))));
    var var_3 = vec4<u32>(0u, _wgslsmith_sub_u32(1u, u_input.d.x), reverseBits(u_input.c.x), u_input.d.x);
    return Struct_2(~_wgslsmith_div_i32(var_1.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.e.xz), min(u_input.b.zz, vec2<i32>(25286i, global3.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global3.a.x), -4258i, func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(14695u, u_input.d.x), _wgslsmith_mult_vec2_u32(u_input.d.xy, vec2<u32>(39872u, 46575u))), abs(countOneBits(vec4<i32>(69159i, -1i, u_input.b.x, 1i) >> (vec4<u32>(u_input.d.x, 1u, 19744u, 4294967295u) % vec4<u32>(32u))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(sign(global3.a.x)), -584f))), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 60106u) ^ (u_input.d << (u_input.d % vec3<u32>(32u))), ~select(u_input.c, vec3<u32>(13844u, 73230u, u_input.c.x), vec3<bool>(global3.b.x, global3.b.x, true))), min(max(~vec4<i32>(-1i, 6301i, 2147483647i, u_input.b.x), -vec4<i32>(global3.c, -1i, var_0.a, -61915i)), vec4<i32>(-1i) * -vec4<i32>(-16863i, global3.c, 2147483647i, var_0.a))).b, _wgslsmith_mod_i32(func_4(vec4<bool>(global3.b.x, global3.b.x, global3.b.x, any(global3.b.wxy)), Struct_1(vec4<bool>(global0.x, false, global0.x, true), all(vec3<bool>(false, global3.b.x, false)), u_input.c), countOneBits(u_input.a)).c, countOneBits(u_input.e.x)));
    var var_2 = vec3<i32>(var_0.a, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)), var_0.a, var_1).a ^ ~(-59414i), 0i);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(423f))))));
    let var_4 = Struct_4(func_4(!var_1.b, Struct_1(func_4(global3.b, Struct_1(vec4<bool>(global3.b.x, false, false, global0.x), var_1.b.x, u_input.c), u_input.a).b, false, vec3<u32>(_wgslsmith_add_u32(1u, u_input.d.x), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 53848u, u_input.c.x, u_input.a), vec4<u32>(63408u, u_input.d.x, 3708u, u_input.d.x)))), ~u_input.d.x).a, vec4<bool>(false, false, u_input.a > _wgslsmith_mod_u32(countOneBits(u_input.c.x), u_input.a), !all(!var_1.b)), 0i);
    var var_5 = any(vec2<bool>(func_1(_wgslsmith_div_u32(35409u, u_input.d.x), ~vec4<i32>(-34759i, u_input.b.x, 47492i, -1i)).b.x, true)) && (any(vec2<bool>(var_4.b.x, true)) || global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_div_f32(var_3.x, var_3.x)), var_4.a.x), -720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f)), 1u);
}

