struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-29596i, -1838i, 1i), vec3<i32>(1i, i32(-2147483648), -48003i), vec3<i32>(17345i, -13203i, -38885i), vec3<i32>(-8764i, -12915i, 0i), vec3<i32>(75511i, 2688i, i32(-2147483648)), vec3<i32>(49829i, 20632i, -9990i), vec3<i32>(-60749i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, -44512i), vec3<i32>(1i, 0i, 1195i), vec3<i32>(-8584i, -15748i, -24808i), vec3<i32>(1i, -35755i, -1i), vec3<i32>(2147483647i, -56195i, -1i), vec3<i32>(2147483647i, 21324i, 2052i), vec3<i32>(4040i, 15392i, i32(-2147483648)));

var<private> global3: i32 = 27306i;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(arg_2.b.b.b.x, !arg_2.b.a.b), arg_2.b);
    let var_1 = _wgslsmith_f_op_f32(step(-990f, _wgslsmith_div_f32(680f, _wgslsmith_f_op_f32(floor(arg_0.x)))));
    let var_2 = ~(reverseBits(vec3<u32>(arg_3.a, arg_3.a, global4.x) << (vec3<u32>(global4.x, arg_3.a, 1u) % vec3<u32>(32u))) << (vec3<u32>(~u_input.b, 0u, 1u) % vec3<u32>(32u)));
    global0 = -1386f;
    var var_3 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))));
    return vec2<f32>(_wgslsmith_div_f32(-1740f, arg_0.x), _wgslsmith_f_op_f32(-var_1));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(4294967295u);
    global3 = ~(-2147483647i);
    global1 = vec3<bool>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(268f, 964f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-277f, -714f)))), !(true | (~1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(57043u, global4.x), vec2<u32>(var_0.a, var_0.a)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-2376f, 2599f, -1627f), false, Struct_3(Struct_1(false, vec4<bool>(global1.x, true, global1.x, false)), Struct_2(Struct_1(true, vec4<bool>(true, true, global1.x, global1.x)), Struct_1(global1.x, vec4<bool>(false, false, global1.x, false)), global1.xy)), var_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1199f, 617f))))), 836f);
    var var_2 = Struct_2(Struct_1(false, !(!select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, false)))), Struct_1(all(select(global1.xz, select(vec2<bool>(global1.x, false), global1.zy, true), global1.x)), vec4<bool>(any(global1.xy), global1.x, true, !(35214i >= u_input.a.x))), select(global1.yz, vec2<bool>(!global1.x || true, true), any(!select(vec2<bool>(true, true), vec2<bool>(global1.x, true), vec2<bool>(false, global1.x)))));
    return Struct_3(Struct_1(!(-688f <= _wgslsmith_div_f32(var_1.a.x, 379f)), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(any(!var_2.b.b.zw), vec4<bool>(!var_2.c.x, true, true, var_2.c.x && false)), Struct_1(any(vec4<bool>(global1.x, var_2.c.x, true, true)), select(select(vec4<bool>(true, var_2.c.x, false, false), var_2.a.b, var_2.a.b), !vec4<bool>(var_2.a.b.x, false, var_2.b.a, var_2.b.a), any(var_2.a.b))), global1.xy));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b.a;
    global3 = arg_1;
    global4 = vec2<u32>(max(32203u, _wgslsmith_clamp_u32(global4.x, _wgslsmith_clamp_u32(4294967295u, 30856u, 67011u), 0u)), _wgslsmith_add_u32(0u, 1u)) << ((countOneBits(vec2<u32>(119360u, ~global4.x)) >> (vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global4.x, global4.x), global4.x), ~u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u));
    global2 = array<vec3<i32>, 15>();
    global0 = -507f;
    return Struct_1(func_2().b.c.x, select(!(!var_0.b), vec4<bool>(true, true, true, true), arg_2.b.b));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-572f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f + _wgslsmith_f_op_f32(f32(-1f) * -581f))));
    global0 = -1971f;
    var var_1 = Struct_1(arg_0, vec4<bool>(!all(vec4<bool>(global1.x, arg_0, true, false)), false, global1.x, 50295u == (u_input.b | abs(global4.x))));
    var_1 = func_4(func_2(), ~(40601i & max(u_input.a.x, -u_input.a.x)), func_2().b);
    let var_2 = vec2<bool>(false, func_2().b.c.x);
    return Struct_5(firstLeadingBit(~6381u));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1491f - 533f))));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1299f, 793f, -475f)), vec3<f32>(2366f, 312f, 1371f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(358f, 656f, -243f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, 232f, -1684f)))))), Struct_1(true, select(vec4<bool>(global1.x, func_4(Struct_3(Struct_1(global1.x, vec4<bool>(global1.x, false, false, global1.x)), Struct_2(Struct_1(global1.x, vec4<bool>(global1.x, true, global1.x, global1.x)), Struct_1(global1.x, vec4<bool>(global1.x, false, true, global1.x)), global1.xx)), -69670i, Struct_2(Struct_1(global1.x, vec4<bool>(true, global1.x, global1.x, global1.x)), Struct_1(true, vec4<bool>(global1.x, false, global1.x, global1.x)), vec2<bool>(true, false))).b.x, global1.x, global1.x), vec4<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(global1.x, global1.x)), all(global1.yy), false), true)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, _wgslsmith_f_op_f32(trunc(415f)))), -124f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1060f * 1000f), 1579f))));
    global2 = array<vec3<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-min(~u_input.a.x, -7888i), ~(~(~u_input.a.x)), 2147483647i << ((firstTrailingBit(0u) ^ u_input.c) % 32u)), u_input.c, -216f, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(48697u, 4294967295u), vec2<u32>(46531u, u_input.c)))));
}

