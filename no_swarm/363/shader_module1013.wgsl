struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1u, true, 0u);

var<private> global1: Struct_5 = Struct_5(366f, 2147483647i, vec2<i32>(-4480i, 19505i), Struct_4(vec3<i32>(1i, 1i, 16277i), -5024i, Struct_1(false, 33855u, false, 1u)), true);

var<private> global2: Struct_1 = Struct_1(true, 0u, false, 0u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~u_input.c.xz;
    global2 = global1.d.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.a, -171f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, global1.a, 1326f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1412f - global1.a), _wgslsmith_f_op_f32(-101f - global1.a))), _wgslsmith_f_op_f32(global1.a + global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), select(_wgslsmith_div_f32(1000f, -876f) != global1.a, !global0.a, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(trunc(global1.a)), -1000f, 587f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, global1.a, global1.a, -1863f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, global1.a, global1.a, global1.a) + vec4<f32>(930f, 1768f, global1.a, -1000f)), true)))), select(!(!select(vec4<bool>(global2.a, global1.e, global0.c, true), vec4<bool>(true, false, true, false), vec4<bool>(global2.a, global1.d.c.c, global1.e, true))), !(!vec4<bool>(false, true, global2.c, global2.a)), !vec4<bool>(global0.c | false, global0.c, !global1.d.c.a, any(vec3<bool>(false, global2.c, global1.d.c.c))))));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.c.wyw, u_input.a));
    global0 = global1.d.c;
    return 15510i;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global1 = Struct_5(_wgslsmith_f_op_f32(541f + _wgslsmith_div_f32(_wgslsmith_div_f32(497f, global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(976f)) - -406f))), arg_1, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17743i, u_input.a.x), vec2<i32>(firstLeadingBit(-1i), i32(-1i) * -1i), vec2<i32>(_wgslsmith_div_i32(global1.b, arg_1), global1.d.a.x)), -global1.d.a.yy), Struct_4(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.yzw, vec3<i32>(0i, global1.b, 58659i), u_input.c.ywy) >> (select(vec3<u32>(u_input.b, 4294967295u, 14055u), vec3<u32>(15545u, arg_0.d, u_input.b), vec3<bool>(false, global0.a, false)) % vec3<u32>(32u)), firstLeadingBit(-vec3<i32>(global1.b, u_input.c.x, -2147483647i))), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, select(global1.b, u_input.c.x, true)) & max(arg_1, func_3(global1.d.c.d)), Struct_1(!global1.e || global2.c, 17614u, (global1.a != global1.a) | true, ~min(global2.b, global0.b))), any(select(!vec3<bool>(false, global0.a, global1.d.c.a), !(!vec3<bool>(global0.a, global0.a, true)), select(!vec3<bool>(global0.c, global2.a, arg_0.c), select(vec3<bool>(global2.c, global0.c, global0.a), vec3<bool>(global0.a, global1.e, false), vec3<bool>(global0.a, true, global1.e)), !vec3<bool>(false, global0.c, global2.c)))));
    global2 = Struct_1(global1.d.c.a, ~29976u, all(!(!select(vec4<bool>(global1.d.c.c, global1.d.c.c, false, false), vec4<bool>(global0.c, true, false, arg_0.c), vec4<bool>(global2.a, true, global0.c, false)))), _wgslsmith_sub_u32(1u, u_input.b) | ~(~(4294967295u >> (0u % 32u))));
    let var_0 = max(global1.d.b, global1.b);
    let var_1 = Struct_4(-global1.d.a, 1i, Struct_1(false, reverseBits(global2.d), _wgslsmith_f_op_f32(537f + _wgslsmith_f_op_f32(-global1.a)) >= _wgslsmith_f_op_f32(exp2(global1.a)), ~0u));
    var var_2 = var_1;
    return vec2<f32>(_wgslsmith_f_op_f32(-713f - _wgslsmith_f_op_f32(abs(global1.a))), global1.a);
}

fn func_1(arg_0: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global1.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -1545f), _wgslsmith_f_op_f32(min(785f, arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(global1.a - 486f), arg_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0.c, u_input.b, global1.d.c.a, u_input.b), u_input.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a + global1.a), _wgslsmith_f_op_f32(trunc(364f))) - vec2<f32>(_wgslsmith_f_op_f32(global1.a + 792f), _wgslsmith_f_op_vec2_f32(func_2(global1.d.c, global1.d.b)).x)), !select(vec2<bool>(true, global1.e), !vec2<bool>(global0.a, global1.d.c.a), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, 376f))))), _wgslsmith_f_op_f32(min(-811f, 887f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, global1.a) - vec2<f32>(-1246f, 1472f)))), vec2<f32>(-609f, global1.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a - 1096f), _wgslsmith_f_op_f32(floor(global1.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 131f)))))));
    var var_1 = _wgslsmith_f_op_f32(-667f * global1.a);
    let var_2 = _wgslsmith_f_op_f32(619f + _wgslsmith_f_op_f32(-153f - 271f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(352f)), 482f);
    var_0 = _wgslsmith_f_op_vec2_f32(func_1(747f));
    var var_3 = firstLeadingBit(select(~(~global1.c & global1.d.a.yz), ~countOneBits(vec2<i32>(2147483647i, 2147483647i)), all(select(select(vec4<bool>(global2.a, global1.d.c.a, global2.a, global2.a), vec4<bool>(true, global0.a, global0.a, global2.c), vec4<bool>(false, false, global1.d.c.a, true)), vec4<bool>(false, true, global2.c, true), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2383f, var_0.x), vec2<f32>(-1087f, 409f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(434f))))));
    let var_4 = Struct_2(vec2<bool>(false, all(vec3<bool>(all(vec2<bool>(true, global1.e)), global1.a != global1.a, !global2.a))), !select(!(!vec2<bool>(global2.a, true)), vec2<bool>(any(vec3<bool>(false, global2.a, true)), global0.a), global1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2), var_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -1301f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - vec2<f32>(var_2, -221f))))), Struct_1(~(global0.d << (12410u % 32u)) < ~_wgslsmith_mod_u32(1u, global1.d.c.b), ~(~(~4294967295u)), global0.a, 37342u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 611f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(select(22389u, var_4.d.d, true), _wgslsmith_mult_u32(global1.d.c.d, var_4.d.b)), ~vec2<u32>(global1.d.c.b, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(11783u, select(52880u, 19573u, true)), firstTrailingBit(vec2<u32>(1u, 11410u)))));
}

