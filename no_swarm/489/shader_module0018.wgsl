struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_i32(abs(select(u_input.a.x, u_input.d.x, false & global2.c.x)), (_wgslsmith_mult_i32(u_input.d.x, 1715i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(887u, 4294967295u, 13668u, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 28632u)) % 32u)) | 0i), select(!select(select(vec4<bool>(true, arg_2.c.x, false, arg_2.c.x), vec4<bool>(true, true, arg_2.c.x, global2.c.x), vec4<bool>(global2.c.x, arg_2.c.x, arg_2.c.x, global2.c.x)), select(vec4<bool>(false, global2.c.x, arg_2.c.x, global2.c.x), vec4<bool>(false, true, true, false), true), select(vec4<bool>(global2.c.x, false, arg_2.c.x, global2.c.x), vec4<bool>(true, global2.c.x, true, arg_2.c.x), false)), vec4<bool>(!(!global2.c.x), any(select(vec3<bool>(true, true, false), vec3<bool>(arg_2.c.x, true, global2.c.x), vec3<bool>(false, false, false))), false, false), all(select(!vec4<bool>(true, arg_2.c.x, true, true), select(vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x), vec4<bool>(true, false, global2.c.x, global2.c.x), false), false))));
    global3 = array<vec3<i32>, 7>();
    let var_1 = Struct_3(~(~1u), ~(~(vec3<u32>(u_input.c, 31981u, arg_3) >> (vec3<u32>(2564u, u_input.c, u_input.c) % vec3<u32>(32u)))) & vec3<u32>(arg_3, countOneBits(96754u << (arg_3 % 32u)), u_input.c), Struct_2(var_0.a, var_0.b), Struct_2(~(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.d)), var_0.b));
    global3 = array<vec3<i32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1092f, _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(sign(-154f)))))));
    return !vec3<bool>(!var_0.b.x, all(select(!var_1.d.b, select(var_1.d.b, var_1.c.b, false), vec4<bool>(var_0.b.x, true, true, true))), arg_2.c.x);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-725f + 621f), global2.a) * 1066f));
    return Struct_1(1000f, _wgslsmith_f_op_f32(680f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-961f))), global0.x)), !select(!func_3(599f, global2.b, Struct_1(global2.b, global0.x, vec3<bool>(global2.c.x, true, false)), u_input.c), global2.c, false));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global3 = array<vec3<i32>, 7>();
    let var_0 = func_2(4294967295u, u_input.c);
    global1 = array<vec3<f32>, 32>();
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 69762u, 0u ^ u_input.c), max(~vec3<u32>(13566u, u_input.c, 0u), reverseBits(vec3<u32>(u_input.c, 0u, 1u))), !all(global2.c.zx)), reverseBits(min(vec3<u32>(74298u, 1u, 16525u), vec3<u32>(21991u, u_input.c, 11235u)) ^ reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c)))), vec3<u32>(16675u, ~_wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(25282u, 44212u) & vec2<u32>(u_input.c, u_input.c))) >> (select(vec3<u32>(u_input.c << (30849u % 32u), u_input.c, _wgslsmith_mod_u32(36235u, u_input.c)), vec3<u32>(1u, 1u, _wgslsmith_mod_u32(55638u, u_input.c)), var_0.c.x) % vec3<u32>(32u)), Struct_2(-2147483647i, select(!select(vec4<bool>(true, true, var_0.c.x, false), vec4<bool>(var_0.c.x, false, false, global2.c.x), vec4<bool>(var_0.c.x, false, false, global2.c.x)), select(vec4<bool>(false, global2.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, true, global2.c.x, false), select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(true, global2.c.x, true, var_0.c.x), var_0.c.x)), select(vec4<bool>(true, var_0.c.x, true, true), select(vec4<bool>(global2.c.x, false, global2.c.x, true), vec4<bool>(true, var_0.c.x, true, false), global2.c.x), true))), Struct_2(u_input.e, select(select(select(vec4<bool>(true, false, false, global2.c.x), vec4<bool>(global2.c.x, false, global2.c.x, false), global2.c.x), !vec4<bool>(false, var_0.c.x, false, true), u_input.c < u_input.c), select(select(vec4<bool>(false, false, false, global2.c.x), vec4<bool>(false, false, global2.c.x, false), vec4<bool>(true, true, var_0.c.x, var_0.c.x)), select(vec4<bool>(false, true, var_0.c.x, global2.c.x), vec4<bool>(global2.c.x, global2.c.x, global2.c.x, var_0.c.x), vec4<bool>(false, global2.c.x, false, global2.c.x)), vec4<bool>(true, true, var_0.c.x, var_0.c.x)), false)));
    var var_2 = u_input.e;
    return var_1.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<u32> {
    return _wgslsmith_mult_vec3_u32(arg_3.b, vec3<u32>(4294967295u, arg_3.a, 7258u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(func_4(global2.c.x, func_1(-442f), global0.yzw, Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(20677u, u_input.c, 4294967295u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(1u, u_input.c, 4294967295u, 28713u))), reverseBits(~vec3<u32>(4294967295u, 1u, u_input.c)), func_1(_wgslsmith_div_f32(global0.x, -590f)), func_1(-147f))), vec3<u32>(~firstTrailingBit(~3880u), ~u_input.c & func_4(!global2.c.x, func_1(173f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, global0.x, -1000f), vec3<f32>(global0.x, -1062f, global0.x), global2.c)), Struct_3(u_input.c, vec3<u32>(u_input.c, 68273u, 0u), Struct_2(28576i, vec4<bool>(true, global2.c.x, global2.c.x, false)), Struct_2(-32181i, vec4<bool>(global2.c.x, global2.c.x, true, false)))).x, 4294967295u & u_input.c));
    var var_1 = Struct_1(-1151f, 158f, global2.c);
    var var_2 = Struct_2(10146i, func_1(global0.x).b);
    var var_3 = Struct_3(1u, vec3<u32>(0u, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) & vec2<u32>(var_0, 0u), countOneBits(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))))), Struct_2(u_input.e, !(!vec4<bool>(var_2.b.x, var_2.b.x, global2.c.x, true))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2.b, -215f)), -1344f)))));
    var var_4 = ~26742u;
    var var_5 = Struct_3(u_input.c, vec3<u32>(1513u >> (_wgslsmith_sub_u32(countOneBits(u_input.c), 1u) % 32u), ~(~(~var_0)), 10258u), var_3.c, var_3.d);
    let var_6 = ~(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(11570i, 28768i, var_3.d.a, 2147483647i)), -vec4<i32>(u_input.a.x, var_5.d.a, u_input.d.x, -1i)), -28269i, ~6572i << (~var_0 % 32u)) << (reverseBits(vec4<u32>(max(1u, var_0), u_input.c, 1u, 5493u)) % vec4<u32>(32u)));
    let var_7 = func_1(global0.x).b.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - 291f)))), -589f);
}

