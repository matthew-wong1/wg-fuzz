struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_3(1u, Struct_1(false, vec4<bool>(true, false, true, true), vec2<bool>(true, true))), 6572i), Struct_5(Struct_3(1u, Struct_1(true, vec4<bool>(false, true, true, true), vec2<bool>(true, true))), 15002i), Struct_5(Struct_3(23731u, Struct_1(true, vec4<bool>(false, true, false, false), vec2<bool>(true, false))), 2147483647i), Struct_5(Struct_3(23841u, Struct_1(true, vec4<bool>(true, false, false, false), vec2<bool>(false, false))), -45945i), Struct_5(Struct_3(44292u, Struct_1(false, vec4<bool>(false, true, true, true), vec2<bool>(false, true))), 1i), Struct_5(Struct_3(0u, Struct_1(true, vec4<bool>(false, false, true, true), vec2<bool>(false, false))), 40825i), Struct_5(Struct_3(0u, Struct_1(true, vec4<bool>(true, true, true, true), vec2<bool>(true, true))), -30752i), Struct_5(Struct_3(0u, Struct_1(true, vec4<bool>(false, true, false, false), vec2<bool>(true, false))), -27952i), Struct_5(Struct_3(7779u, Struct_1(true, vec4<bool>(true, true, true, false), vec2<bool>(true, true))), 32247i), Struct_5(Struct_3(0u, Struct_1(true, vec4<bool>(true, false, false, false), vec2<bool>(true, false))), 13277i), Struct_5(Struct_3(73413u, Struct_1(true, vec4<bool>(true, true, true, true), vec2<bool>(false, false))), i32(-2147483648)), Struct_5(Struct_3(0u, Struct_1(false, vec4<bool>(true, true, true, false), vec2<bool>(true, true))), 0i), Struct_5(Struct_3(31911u, Struct_1(true, vec4<bool>(true, true, false, true), vec2<bool>(true, true))), i32(-2147483648)), Struct_5(Struct_3(8300u, Struct_1(true, vec4<bool>(true, false, false, true), vec2<bool>(true, true))), 30677i), Struct_5(Struct_3(1u, Struct_1(false, vec4<bool>(false, true, true, true), vec2<bool>(false, false))), 16287i), Struct_5(Struct_3(15382u, Struct_1(true, vec4<bool>(true, false, true, false), vec2<bool>(true, true))), 2147483647i), Struct_5(Struct_3(48368u, Struct_1(false, vec4<bool>(false, true, true, false), vec2<bool>(true, false))), 47636i), Struct_5(Struct_3(45589u, Struct_1(true, vec4<bool>(true, true, true, false), vec2<bool>(false, true))), 2147483647i), Struct_5(Struct_3(1u, Struct_1(false, vec4<bool>(false, true, true, false), vec2<bool>(true, false))), 50622i), Struct_5(Struct_3(4294967295u, Struct_1(true, vec4<bool>(false, false, false, true), vec2<bool>(false, false))), -17879i), Struct_5(Struct_3(0u, Struct_1(true, vec4<bool>(false, false, false, true), vec2<bool>(false, false))), 38956i));

var<private> global1: array<u32, 26>;

var<private> global2: Struct_2 = Struct_2(true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = u_input.a.yxz;
    var var_1 = arg_0.x;
    global0 = array<Struct_5, 21>();
    var var_2 = !select(!vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, any(select(vec2<bool>(global2.a, global2.a), vec2<bool>(true, false), vec2<bool>(true, false))), !(!global2.a), !global2.a), select(select(!vec4<bool>(false, true, global2.a, global2.a), !vec4<bool>(false, global2.a, global2.a, false), all(vec2<bool>(true, global2.a))), vec4<bool>(u_input.a.x > u_input.a.x, global2.a, 1591f == arg_0.x, global2.a), global2.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(1408f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1269f, -1050f) * arg_0.x))));
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(firstLeadingBit(func_3(vec3<f32>(-2442f, -798f, -1473f)) << (~(~global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) % 32u)), select(false, true, global2.a), Struct_2(global2.a));
    var var_1 = 480f;
    var var_2 = var_0.c.a | ((~var_0.a > firstTrailingBit(countOneBits(u_input.a.x))) || true);
    var var_3 = Struct_3(_wgslsmith_mult_u32(98500u, _wgslsmith_mult_u32(35434u, 1u)), Struct_1(true, vec4<bool>(false, true, global2.a, true), select(!(!vec2<bool>(global2.a, false)), select(!vec2<bool>(var_0.c.a, var_0.c.a), vec2<bool>(global2.a, var_0.c.a), true), var_0.c.a)));
    global0 = array<Struct_5, 21>();
    return u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_4(func_2(), true, arg_1);
    var_0 = Struct_4(~u_input.a.x, true, var_0.c);
    var var_1 = vec3<bool>(true, all(vec3<bool>(global2.a, (true & var_0.c.a) | false, global2.a)), select(false, all(select(vec2<bool>(global2.a, false), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(global2.a, true), vec2<bool>(global2.a, global2.a)), vec2<bool>(global2.a, false))), global2.a));
    var var_2 = Struct_2(!global2.a);
    var var_3 = Struct_4(_wgslsmith_mult_u32(arg_0, _wgslsmith_clamp_u32(29830u, _wgslsmith_mult_u32(14242u, 46564u), 63631u)) >> ((~u_input.a.x >> (reverseBits(global1[_wgslsmith_index_u32(26628u, 26u)]) % 32u)) % 32u), true, Struct_2(true));
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x) & vec3<i32>(-4035i, -17313i, u_input.b.x), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 16228i, 0i), vec3<i32>(arg_2, 0i, 32629i)))), 1i), firstTrailingBit(_wgslsmith_add_vec3_i32(~(vec3<i32>(0i, 2147483647i, arg_2) & vec3<i32>(-20954i, arg_2, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, 1i, arg_2), vec3<i32>(35870i, arg_2, -14210i), vec3<i32>(arg_2, arg_2, u_input.b.x)) ^ ~vec3<i32>(-34528i, u_input.b.x, arg_2))), -select(abs(-vec3<i32>(arg_2, u_input.b.x, -2147483647i)), ~(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i) & vec3<i32>(u_input.b.x, u_input.b.x, 25237i)), !(!var_1.x)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_5(Struct_3(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~(~u_input.a.x), 26u)], global1[_wgslsmith_index_u32(~u_input.a.x ^ ~global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 0u), Struct_1(true, select(select(vec4<bool>(global2.a, global2.a, false, true), vec4<bool>(global2.a, true, global2.a, global2.a), global2.a), select(vec4<bool>(global2.a, global2.a, false, global2.a), vec4<bool>(global2.a, false, global2.a, false), vec4<bool>(global2.a, global2.a, global2.a, false)), arg_1 != arg_0), vec2<bool>(any(vec3<bool>(false, global2.a, global2.a)), all(vec4<bool>(global2.a, global2.a, true, global2.a))))), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -2147483647i), (abs(vec2<i32>(u_input.b.x, 2147483647i)) << (~u_input.a.zx % vec2<u32>(32u))) >> (vec2<u32>(abs(19122u), ~0u) % vec2<u32>(32u))));
    global0 = array<Struct_5, 21>();
    let var_1 = select(var_0.a.b.b, !select(var_0.a.b.b, !vec4<bool>(var_0.a.b.a, false, var_0.a.b.a, false), select(var_0.a.b.b, vec4<bool>(true, var_0.a.b.a, var_0.a.b.b.x, global2.a), var_0.a.b.c.x && true)), all(var_0.a.b.b));
    global1 = array<u32, 26>();
    global2 = Struct_2(any(!var_0.a.b.b.wyw));
    return ~min(firstLeadingBit(countOneBits(vec4<i32>(38087i, var_0.b, arg_2, u_input.b.x))), -(~(vec4<i32>(-35796i, arg_2, var_0.b, arg_2) >> (u_input.a % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~firstTrailingBit(u_input.a.x), global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(3356u ^ u_input.a.x, 26u)] & 0u) & 28658u, 26u)]), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-376f)), _wgslsmith_f_op_f32(trunc(-209f))))))), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1752f * 993f) + _wgslsmith_f_op_f32(-173f + -601f)))), 1f, 44973i, firstLeadingBit(func_1(~52538u, Struct_2(true), u_input.b.x))), u_input.a.wy);
}

