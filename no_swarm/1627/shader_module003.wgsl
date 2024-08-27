struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1u, 0u), vec2<u32>(29280u, 4294967295u), vec2<u32>(4294967295u, 18686u), vec2<u32>(24160u, 0u), vec2<u32>(8052u, 97912u), vec2<u32>(52559u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 28440u), vec2<u32>(1u, 1u), vec2<u32>(44872u, 1u), vec2<u32>(0u, 1u), vec2<u32>(96992u, 67528u), vec2<u32>(16210u, 93929u), vec2<u32>(4294967295u, 6924u), vec2<u32>(8395u, 26508u), vec2<u32>(4923u, 0u), vec2<u32>(82543u, 43747u), vec2<u32>(0u, 45264u), vec2<u32>(1u, 13141u), vec2<u32>(4294967295u, 1u), vec2<u32>(3865u, 4294967295u), vec2<u32>(18586u, 4294967295u), vec2<u32>(34146u, 4927u), vec2<u32>(0u, 46869u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 31956u), vec2<u32>(14142u, 4294967295u), vec2<u32>(42137u, 63930u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 17337u));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> bool {
    return arg_3.a.d.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(select(true, true, true), false), ~global1.b, !(!global1.c), vec2<bool>(global1.c.x, select(true, any(vec3<bool>(global1.c.x, false, global1.d.x)), all(vec4<bool>(global1.d.x, false, global1.c.x, false))))), vec2<bool>(!select(!global1.c.x, false, false), global1.a.x));
    var var_1 = 1f;
    var var_2 = Struct_4(global1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f * -1000f)) - _wgslsmith_f_op_f32(max(103f, -221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)))), var_0.a.c, var_0.a);
    var_1 = -858f;
    var_2 = Struct_4(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + var_2.b)) * var_2.b) + _wgslsmith_f_op_f32(f32(-1f) * -1166f)), !vec4<bool>(true, false && (false || var_2.d.d.x), !var_0.b.x, func_3(global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -165f, var_2.b)), 4294967295u, Struct_2(var_2.d, global1.c.xy))), Struct_1(var_0.a.d, var_2.d.b ^ _wgslsmith_mult_u32(var_0.a.b, 6358u | var_0.a.b), !var_2.c, !vec2<bool>(any(vec3<bool>(false, global1.a.x, global1.d.x)), var_0.b.x)));
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_1 {
    global1 = func_2();
    var var_0 = _wgslsmith_add_vec3_u32(abs(~min(~vec3<u32>(0u, arg_0.a.b, arg_0.a.b), select(vec3<u32>(1u, global1.b, 4294967295u), vec3<u32>(arg_0.a.b, global1.b, arg_0.a.b), vec3<bool>(global1.c.x, arg_1, false)))), vec3<u32>(select(~arg_0.a.b, 4294967295u, true), 13304u, global1.b));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(min(arg_2, -692f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(999f, arg_2))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(sign(arg_2))) - _wgslsmith_f_op_f32(f32(-1f) * -2181f)), arg_2, _wgslsmith_div_f32(arg_2, arg_2)));
    let var_3 = 1u;
    return arg_0.a;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = array<vec2<u32>, 31>();
    let var_0 = func_4(Struct_2(func_2(), func_2().a), global1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1805f)) * -386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(763f + 144f), -1000f, false)))));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    global1 = func_2();
    return func_4(Struct_2(func_4(Struct_2(Struct_1(var_0.d, 4294967295u, vec4<bool>(global1.d.x, var_0.a.x, global1.d.x, true), vec2<bool>(global1.d.x, var_0.a.x)), vec2<bool>(true, var_0.d.x)), all(vec3<bool>(false, true, var_0.d.x)) & (arg_1.x == 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1623f + -529f) + _wgslsmith_f_op_f32(-844f * 987f))), vec2<bool>(true, !any(var_0.c.xxx))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1853f - 124f), _wgslsmith_f_op_f32(-1431f - 996f))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = any(!func_1(firstLeadingBit(2147483647i), ~(~vec4<u32>(1u, 0u, 62137u, 34029u)), reverseBits(vec2<i32>(u_input.b.x, 18816i))));
    var var_2 = Struct_2(Struct_1(global1.a, 38193u, !select(global1.c, func_1(u_input.d.x, vec4<u32>(global1.b, var_0, global1.b, global1.b), u_input.d.yx), !global1.c), vec2<bool>(!all(global1.c), true)), global1.a);
    global1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, -944f), _wgslsmith_sub_u32(~(~(~13543u)), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(809f)) - _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(658f, 632f)) + 928f), -516f, -373f)), abs(_wgslsmith_mult_vec3_i32(select(-u_input.b.wzy, vec3<i32>(u_input.c, 2147483647i, u_input.d.x), global1.c.zww), vec3<i32>(18871i, ~u_input.b.x, countOneBits(u_input.c)))), 1044f);
}

