struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: array<Struct_4, 14>;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<u32>(4294967295u, 37472u, 0u)), Struct_2(vec3<u32>(1u, 49604u, 0u)), Struct_2(vec3<u32>(4294967295u, 17322u, 17789u)), Struct_2(vec3<u32>(4294967295u, 1u, 45286u)), Struct_2(vec3<u32>(115207u, 0u, 14415u)), Struct_2(vec3<u32>(0u, 2639u, 10714u)), Struct_2(vec3<u32>(48183u, 48244u, 1u)), Struct_2(vec3<u32>(21533u, 4294967295u, 4294967295u)), Struct_2(vec3<u32>(79817u, 45412u, 0u)));

var<private> global3: Struct_3 = Struct_3(vec3<u32>(1u, 327u, 43589u), 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(769f, 150f)) - _wgslsmith_f_op_f32(abs(-720f))) + _wgslsmith_f_op_f32(-452f - -1154f)) - -1232f), _wgslsmith_f_op_f32(f32(-1f) * -1929f));
    let var_1 = Struct_2(global3.a << (global3.a % vec3<u32>(32u)));
    let var_2 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 335f), _wgslsmith_f_op_f32(var_0.x * -870f), 156f);
    return min(~firstTrailingBit(select(u_input.c, vec2<u32>(7768u, u_input.c.x), false)), var_1.a.xx) >> (select(max(_wgslsmith_add_vec2_u32(vec2<u32>(global3.a.x, 4294967295u), select(u_input.c, vec2<u32>(u_input.c.x, 25968u), vec2<bool>(true, true))), ~firstLeadingBit(vec2<u32>(44047u, 1u))), vec2<u32>(51869u, 53271u), any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = func_3();
    global1 = array<Struct_4, 14>();
    var var_1 = _wgslsmith_f_op_f32(-1358f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1681f)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(1451f, -1786f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1180f - -655f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-274f + -478f))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1350f);
    let var_2 = select(any(vec2<bool>(true, arg_2.x)), !any(select(vec4<bool>(true, true, true, arg_2.x), !vec4<bool>(arg_2.x, false, true, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, true, false))), arg_2.x);
    return arg_2.yy;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 17>();
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 17u)];
    global0 = array<vec2<f32>, 17>();
    let var_1 = Struct_1(select(abs(vec2<u32>(~u_input.c.x, 0u)), u_input.c, select(vec2<bool>(true, global3.b > u_input.b), vec2<bool>(true, var_0.x > var_0.x), true)), select(vec2<bool>(false, all(vec4<bool>(true, true, true, true))), func_2(Struct_3(~global3.a, global3.b), Struct_2(vec3<u32>(46430u, u_input.c.x, global3.a.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec2<bool>(any(vec4<bool>(true, true, false, true)), !(_wgslsmith_f_op_f32(1000f - var_0.x) == 369f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))))));
    let var_2 = !vec4<bool>(true, any(select(select(vec4<bool>(var_1.b.x, var_1.c.x, true, true), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), vec4<bool>(true, var_1.c.x, var_1.c.x, false)), !vec4<bool>(var_1.c.x, true, var_1.b.x, false), vec4<bool>(var_1.c.x, var_1.b.x, var_1.b.x, false))), true || !var_1.c.x, var_1.c.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-9433i, u_input.b);
    let var_1 = (u_input.c.x & max(global3.a.x, 56020u)) != select(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, 4294967295u, 12520u, _wgslsmith_div_u32(u_input.c.x, global3.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.x, u_input.c.x, u_input.c.x, global3.a.x), ~vec4<u32>(global3.a.x, 4294967295u, 4294967295u, 4294967295u))), _wgslsmith_mult_u32(106972u, 11664u), false);
    var var_2 = Struct_4(global3.a, func_1(), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-691f, -969f, -726f, -858f) + vec4<f32>(516f, 426f, -1000f, 1217f))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-686f * var_2.b.d))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1518f)))));
    var var_4 = ~vec4<u32>(reverseBits(u_input.c.x), _wgslsmith_add_u32(u_input.c.x, global3.a.x), 4830u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.x, u_input.c.x, 6914u, 54905u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(9425u, 1u, 0u, 77399u), vec4<u32>(0u, 59829u, var_2.a.x, global3.a.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 31797u, 6939u, 4294967295u), vec4<u32>(global3.a.x, var_2.a.x, 1u, u_input.c.x))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b.e, -735f)), -1715f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.c.x, var_2.b.e)), 774f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, 1024f, var_2.b.d) + vec3<f32>(378f, 681f, var_2.b.e)), vec3<f32>(var_2.b.e, -568f, var_2.b.d))))));
    let var_6 = var_2.b;
    global0 = array<vec2<f32>, 17>();
    global3 = Struct_3(vec3<u32>(var_6.a.x, 27291u, var_2.b.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), firstLeadingBit(i32(-1i) * -24083i)), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(_wgslsmith_dot_vec3_u32(global3.a, vec3<u32>(var_6.a.x, 47972u, 4294967295u)) | _wgslsmith_div_u32(4294967295u, var_6.a.x)), _wgslsmith_sub_u32(4294967295u, select(0u, 61895u, any(vec3<bool>(var_2.b.c.x, var_1, true)))), _wgslsmith_mod_u32(var_6.a.x & global3.a.x, abs(54906u)) >> (_wgslsmith_add_u32(global3.a.x, _wgslsmith_clamp_u32(1u, 9203u, 1u)) % 32u)));
}

