struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(3762i, 1000f, 43372u, Struct_1(952f));

var<private> global1: Struct_2 = Struct_2(1i, 1304f, 5273u, Struct_1(422f));

var<private> global2: Struct_4;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(-global0.a, -1000f, global1.c, global1.d);
    global3 = !vec4<bool>(all(vec2<bool>(global2.b, true)) || select(144f != var_0.b, true, global3.x), global2.b, all(vec4<bool>(global2.e, true, 27620i >= u_input.a.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.d.a)), _wgslsmith_f_op_f32(357f * global2.c.a)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * global2.c.a));
    var var_1 = 288f;
    var var_2 = _wgslsmith_add_u32(~max(var_0.c, 0u), global0.c);
    var var_3 = 1383f;
    return 16625u;
}

fn func_2() -> vec2<f32> {
    let var_0 = 186f;
    global3 = vec4<bool>(false, false, !global3.x, global3.x);
    var var_1 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.c, func_3(), ~51476u, ~(~global0.c))), vec4<u32>(select(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(3841u, global2.d, 1u, 1u), abs(vec4<u32>(56070u, global1.c, 68407u, 4294967295u))), true), _wgslsmith_dot_vec4_u32(vec4<u32>(~40281u, 4294967295u, ~6564u, global1.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.c, global2.d, 4294967295u, global2.d), vec4<u32>(44813u, 69486u, global2.d, global1.c))), 4294967295u, abs(_wgslsmith_clamp_u32(global1.c, 24061u, select(2468u, 4294967295u, global3.x)))));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(global0.a, u_input.b, global1.a), u_input.c);
    let var_3 = Struct_2(u_input.c.x, 174f, 9436u, global0.d);
    return vec2<f32>(_wgslsmith_f_op_f32(-global1.b), -865f);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_mod_i32(25421i, ~global0.a), !global2.e, global1.d, 4458u, false && !global3.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.c.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-325f + _wgslsmith_div_f32(var_0.c.a, global2.c.a))))), _wgslsmith_f_op_vec2_f32(func_2())));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(-28076i, _wgslsmith_sub_i32(arg_0.a, 14435i) << (reverseBits(34279u) % 32u), 31545i, firstLeadingBit(~arg_0.a));
    var var_3 = select(global3.zy, vec2<bool>(!arg_1.x, -793f > arg_0.c.a), global2.e);
    var var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-1i, global1.a, u_input.a.x, 0i)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.a, -1i, 2147483647i), vec4<i32>(u_input.c.x, global0.a, 42767i, 1i)))), -(-2147483647i ^ global2.a)) >> (~vec2<u32>(abs(_wgslsmith_sub_u32(0u, global0.c)), ~(arg_0.d << (global1.c % 32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -505f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(global2.b, global2.b, true, global3.x), vec4<bool>(_wgslsmith_f_op_f32(trunc(global2.c.a)) <= _wgslsmith_f_op_f32(func_1(Struct_4(global0.a, true, Struct_1(467f), global1.c, global3.x), vec3<bool>(global2.e, global2.b, true))), !all(vec2<bool>(false, global2.e)), true, false), true);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.c.a, 167f, 218f) - vec4<f32>(global1.b, -1071f, global1.b, global1.b))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1401f, global1.b, global0.b, -1629f))))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1659f - 939f)), 1f)), global1.b, 2230f, -935f));
    var var_2 = 46361u;
    let var_3 = select(vec2<bool>(global0.a <= ~(~global1.a), false), select(var_0.wx, !var_0.ww, select(select(select(var_0.zz, global3.zz, false), select(var_0.yx, global3.zz, var_0.wy), true), var_0.zw, select(var_0.wy, vec2<bool>(true, true), true))), !vec2<bool>(false, var_0.x));
    let var_4 = _wgslsmith_f_op_f32(-238f + -105f);
    global0 = Struct_2(-2147483647i, var_1.x, ~func_3(), global1.d);
    global2 = Struct_4(1i, global3.x, Struct_1(global0.d.a), ~global0.c, all(vec3<bool>(false, !var_0.x != (u_input.a.x <= global2.a), global2.c.a < 417f)));
    var var_5 = global2.c.a;
    global2 = Struct_4(-1i, !((global0.a != (global1.a << (global1.c % 32u))) || false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.a), -373f, select(global2.b, true, true))))), 52464u, (!any(vec4<bool>(global3.x, var_0.x, true, false)) && true) && select(global2.e, !var_0.x, all(global3.xyz)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d, firstTrailingBit(vec3<u32>(global2.d, 63166u, _wgslsmith_sub_u32(4294967295u, global1.c))) | (~(~vec3<u32>(global2.d, global1.c, global1.c)) << (~select(vec3<u32>(global1.c, global1.c, global2.d), vec3<u32>(0u, global1.c, 15147u), vec3<bool>(false, true, global3.x)) % vec3<u32>(32u))));
}

