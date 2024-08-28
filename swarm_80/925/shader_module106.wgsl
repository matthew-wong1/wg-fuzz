struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(625f, Struct_2(Struct_1(vec2<bool>(false, false)), -1i));

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true)), 42413i);

var<private> global4: array<Struct_3, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = false;
    var var_1 = _wgslsmith_div_f32(-961f, _wgslsmith_f_op_f32(f32(-1f) * -807f));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 151f, global0.a) - vec3<f32>(986f, -1703f, global0.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -1578f, -248f)))) * vec3<f32>(_wgslsmith_f_op_f32(-1393f * global0.a), -297f, _wgslsmith_f_op_f32(sign(797f))))));
    var_1 = _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, _wgslsmith_f_op_f32(floor(global0.a)), 763f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, var_2.x, global0.a), vec3<f32>(164f, global0.a, var_2.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, global0.a, 706f), vec3<f32>(var_2.x, global0.a, 821f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.a, var_2.x) * vec3<f32>(-3073f, var_2.x, 201f))))));
    return !global3.a.a.x;
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.b.zxy;
    let var_1 = Struct_4(-159f, global0.b);
    global0 = var_1;
    var var_2 = !vec2<bool>(global3.a.a.x, func_3(global3.a));
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-var_1.a)))), -140f), var_1.b);
    return Struct_4(var_1.a, Struct_2(var_1.b.a, -15009i));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    global0 = arg_0;
    var var_0 = Struct_5(_wgslsmith_sub_u32(u_input.a & 4294967295u, 70510u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, global0.a)))) + -1208f));
    let var_1 = arg_0.b.a.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a - arg_0.a), arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + var_0.b), _wgslsmith_f_op_f32(round(global0.a))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, var_0.b))))))));
    var var_3 = 52836u;
    return Struct_1(vec2<bool>(global0.b.a.a.x, true));
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    global3 = global0.b;
    return func_2();
}

fn func_1() -> Struct_4 {
    global0 = func_5(func_4(func_2(), Struct_1(!select(vec2<bool>(false, false), global3.a.a, vec2<bool>(global0.b.a.a.x, true))), u_input.b, global3.a.a.x));
    var var_0 = Struct_5(~(~u_input.a), global0.a);
    var var_1 = Struct_5(~min(u_input.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 280f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_1.b) * vec2<f32>(var_0.b, -198f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.a) + vec2<f32>(-152f, global0.a)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, -299f), vec2<f32>(237f, 380f)))), vec2<f32>(_wgslsmith_div_f32(-964f, -134f), var_0.b), true)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1357f - var_1.b));
    return Struct_4(147f, global0.b);
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = any(!vec3<bool>(arg_2.x, all(vec4<bool>(arg_0.b.a.a.x, true, global3.a.a.x, true)), global3.a.a.x));
    let var_2 = any(!vec3<bool>(func_3(global3.a), global3.a.a.x, arg_2.x));
    let var_3 = all(!vec4<bool>(_wgslsmith_clamp_u32(4294967295u, arg_1, 0u) > ~1u, true, true, all(arg_2.yz)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 717f) * vec3<f32>(arg_0.a, arg_0.a, -1001f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1173f, global0.a) - vec3<f32>(arg_0.a, global0.a, -816f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-424f, arg_0.a, -528f), vec3<f32>(284f, -502f, 763f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1883f, global0.a, -548f) - vec3<f32>(281f, global0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -1000f) - vec3<f32>(289f, 731f, 583f)))), !global0.b.a.a.x)));
    return Struct_2(Struct_1(vec2<bool>(func_5(global0.b.a).b.a.a.x, _wgslsmith_add_u32(var_0, 4294967295u) == (u_input.a >> (71267u % 32u)))), max(max(-2147483647i, _wgslsmith_sub_i32(-8543i, arg_0.b.b)), -3148i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-330f)));
    let var_1 = func_6(func_1(), 34978u, vec3<bool>(func_1().b.a.a.x, false, !global3.a.a.x));
    var var_2 = vec2<u32>(53222u, 29970u & _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u) | ~vec2<u32>(u_input.a, 4294967295u), firstTrailingBit(vec2<u32>(2513u, u_input.a)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 2176u), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), vec2<u32>(u_input.a, 1u), ~vec2<u32>(u_input.a, 0u) & ~abs(vec2<u32>(0u, 1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -304f, var_0) * vec3<f32>(global0.a, 1728f, -1129f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, var_0, -1284f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(600f, 1201f, 102f) + vec3<f32>(1000f, global0.a, global0.a))))));
    var var_4 = 4294967295u;
    var_2 = vec2<u32>(15475u & var_2.x, 3325u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-48310i, -12646i << (u_input.a % 32u), ~var_1.b), u_input.b.ww, ~var_2.x);
}

