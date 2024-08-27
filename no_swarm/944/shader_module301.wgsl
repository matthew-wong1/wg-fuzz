struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false));

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global3: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    global3 = Struct_4(global3.a);
    var var_0 = vec2<bool>(true, all(!select(vec4<bool>(global3.a.d.x, global3.a.d.x, false, global3.a.d.x), vec4<bool>(global3.a.d.x, false, true, global3.a.d.x), !vec4<bool>(global3.a.d.x, global3.a.d.x, false, global3.a.d.x))));
    global0 = array<vec3<bool>, 10>();
    var var_1 = Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1295f, global3.a.b.x, global3.a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.x, global3.a.b.x, global3.a.b.x)))), vec3<f32>(742f, _wgslsmith_f_op_f32(abs(global3.a.b.x)), _wgslsmith_f_op_f32(global3.a.b.x - 664f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(global3.a.b.x, 245f)), _wgslsmith_f_op_f32(f32(-1f) * -465f), global3.a.b.x))))), global3.a.d.x);
    var var_2 = -278f;
    return global3.a.d;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(1i, global3.a.b, global3.a.c, func_3());
    let var_1 = Struct_5(Struct_2(firstLeadingBit(var_0.c.x), vec3<f32>(var_0.b.x, global3.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.a.b.x))))), var_0.d.x), vec4<bool>(false, var_0.d.x, global3.a.d.x, global3.a.d.x), ~4294967295u, Struct_3(true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -1241f, -251f, -777f), vec4<f32>(1000f, var_0.b.x, -710f, 1098f), var_1.b)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a.b.x, -1000f, var_1.a.b.x, -1000f))))))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, -1566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-140f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-713f - 1770f)))), -1151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-global3.a.b.x)) + -709f)));
    var var_3 = 1000f;
    var var_4 = Struct_4(global3.a);
    return firstLeadingBit(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, 1i)), min(~var_1.a.a << (_wgslsmith_mult_u32(var_1.c, var_1.c) % 32u), var_0.a)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_3, 32>();
    let var_0 = vec4<u32>(~75016u, 3469u, 4294967295u, 3009u);
    let var_1 = u_input.a;
    let var_2 = global3.a.d;
    var var_3 = var_0;
    return Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-878f * -1184f), global3.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))))), all(global0[_wgslsmith_index_u32(var_3.x, 10u)]));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = func_1(arg_0.a);
    let var_1 = vec2<i32>(1i, firstLeadingBit(var_0.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, 1129f, -707f, global3.a.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(901f, 426f, arg_0.a.b.x, 712f) * vec4<f32>(1103f, arg_0.a.b.x, var_0.b.x, var_0.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(738f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_div_f32(-663f, _wgslsmith_f_op_f32(ceil(1566f))))))));
    var var_3 = func_1(arg_0.a);
    let var_4 = any(vec4<bool>(arg_1.x, true, !(!arg_1.x && true), var_3.c));
    return arg_0;
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    let var_0 = true;
    var var_1 = arg_0.c;
    var var_2 = Struct_4(global3.a);
    global3 = Struct_4(Struct_1(_wgslsmith_mod_i32(-14204i << (firstTrailingBit(28122u) % 32u), var_2.a.c.x), _wgslsmith_f_op_vec2_f32(-global3.a.b), vec2<i32>(_wgslsmith_mult_i32(-1i >> (1u % 32u), _wgslsmith_add_i32(0i, -25878i)), -15065i), !vec2<bool>(global3.a.d.x, false)));
    var var_3 = Struct_4(global3.a);
    return Struct_4(Struct_1(max(_wgslsmith_div_i32(-arg_0.a.a, 2147483647i), arg_0.a.a), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1532f))), -1530f), vec2<i32>((var_2.a.a << (0u % 32u)) & u_input.a, -var_2.a.c.x), !var_2.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<Struct_3, 32>();
    global2 = array<vec3<bool>, 17>();
    var var_1 = !((var_0 || all(global3.a.d)) || true);
    global3 = func_5(func_4(Struct_5(func_1(Struct_2(0i, vec3<f32>(-1000f, global3.a.b.x, global3.a.b.x), true)), !select(vec4<bool>(true, false, global3.a.d.x, true), vec4<bool>(global3.a.d.x, true, global3.a.d.x, global3.a.d.x), vec4<bool>(true, var_0, var_0, false)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 30483u), _wgslsmith_mult_u32(0u, 68033u), 44166u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 21278u, 0u, 23040u), vec4<u32>(64374u, 22158u, 19215u, 101563u))), 32u)]), select(!vec4<bool>(false, global3.a.d.x, false, false), select(select(vec4<bool>(true, global3.a.d.x, true, global3.a.d.x), vec4<bool>(true, false, false, false), vec4<bool>(var_0, global3.a.d.x, var_0, var_0)), vec4<bool>(true, var_0, false, global3.a.d.x), true), !select(vec4<bool>(true, var_0, false, false), vec4<bool>(true, global3.a.d.x, false, false), vec4<bool>(global3.a.d.x, false, var_0, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i | global3.a.a, ~min(43184u, func_4(Struct_5(Struct_2(u_input.a, vec3<f32>(313f, global3.a.b.x, global3.a.b.x), global3.a.d.x), vec4<bool>(global3.a.d.x, global3.a.d.x, var_0, global3.a.d.x), 0u, global1[_wgslsmith_index_u32(19084u, 32u)]), vec4<bool>(true, global3.a.d.x, global3.a.d.x, var_0)).c) << (24011u % 32u), vec4<f32>(global3.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.a.b.x)), _wgslsmith_f_op_f32(floor(func_1(Struct_2(-3301i, vec3<f32>(global3.a.b.x, global3.a.b.x, 119f), global3.a.d.x)).b.x))), func_4(Struct_5(func_1(Struct_2(-13340i, vec3<f32>(857f, 230f, global3.a.b.x), true)), func_4(Struct_5(Struct_2(u_input.a, vec3<f32>(global3.a.b.x, -682f, global3.a.b.x), global3.a.d.x), vec4<bool>(global3.a.d.x, true, true, var_0), 16377u, global1[_wgslsmith_index_u32(66558u, 32u)]), vec4<bool>(global3.a.d.x, global3.a.d.x, false, global3.a.d.x)).b, 1u, Struct_3(global3.a.d.x)), select(select(vec4<bool>(var_0, false, true, global3.a.d.x), vec4<bool>(false, global3.a.d.x, var_0, global3.a.d.x), vec4<bool>(false, global3.a.d.x, true, var_0)), select(vec4<bool>(true, global3.a.d.x, false, global3.a.d.x), vec4<bool>(global3.a.d.x, global3.a.d.x, false, false), global3.a.d.x), vec4<bool>(true, true, false, false))).a.b.x, 1f));
}

