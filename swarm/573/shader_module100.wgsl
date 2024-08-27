struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 0u, 51871u), false);

var<private> global2: u32;

var<private> global3: array<vec3<bool>, 7>;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(round(-244f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))));
    let var_1 = arg_0;
    let var_2 = firstTrailingBit(_wgslsmith_add_u32(countOneBits(var_1.a.x), 41270u));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, arg_3.x), max(vec2<i32>(2147483647i, -9175i), vec2<i32>(-arg_3.x, arg_3.x)) >> (vec2<u32>(var_1.a.x, max(~var_2, global1.a.x)) % vec2<u32>(32u)));
    let var_4 = Struct_2(~(~(~var_1.a)), var_1.b);
    return !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 951f))) > 1377f) || true);
}

fn func_2() -> Struct_2 {
    global3 = array<vec3<bool>, 7>();
    global0 = ~(~u_input.b);
    let var_0 = min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(93179u, u_input.a.x, 105216u)), global1.a), global1.a.x) << (_wgslsmith_dot_vec3_u32(~global1.a, countOneBits(global1.a)) % 32u);
    let var_1 = select(select(vec2<bool>(any(vec3<bool>(true, global1.b, global1.b)), select(false, func_3(Struct_2(global1.a, global1.b), false, vec2<f32>(-1772f, -907f), vec3<i32>(2147483647i, 2147483647i, -1i)), true)), select(vec2<bool>(global1.b && false, true), vec2<bool>(!global1.b, all(vec2<bool>(false, global1.b))), global1.b), !(global1.b != true)), vec2<bool>(!func_3(Struct_2(vec3<u32>(global1.a.x, global1.a.x, 19041u), global1.b), global1.b, vec2<f32>(-1234f, -361f), vec3<i32>(10106i, 1i, 2939i)) || any(vec2<bool>(true, true)), any(vec2<bool>(true, global1.b))), !(!vec2<bool>(global1.b | false, false)));
    let var_2 = vec4<bool>(all(select(select(select(vec4<bool>(global1.b, global1.b, false, false), vec4<bool>(true, true, var_1.x, var_1.x), false), select(vec4<bool>(true, true, global1.b, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), select(vec4<bool>(true, var_1.x, global1.b, false), vec4<bool>(false, global1.b, true, true), global1.b)), select(!vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, global1.b, var_1.x), all(vec2<bool>(false, false))), vec4<bool>(true, false & global1.b, global1.b, var_1.x))), true, var_1.x, var_1.x);
    return Struct_2(global1.a, var_1.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global1 = func_2();
    global2 = ~u_input.a.x;
    var var_0 = func_2().a.yy;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2), arg_2));
    global1 = func_2();
    return Struct_1(min(_wgslsmith_mod_vec3_u32(countOneBits(global1.a), ~_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(1u, 0u, global1.a.x))), vec3<u32>(u_input.b, 28651u, ~(4294967295u & u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-327f, _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx)), !(!arg_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = arg_2.b;
    return vec2<i32>(0i, -(1i << ((global1.a.x & _wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a)) % 32u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: bool) -> StorageBuffer {
    var var_0 = func_1(max(firstLeadingBit(-vec4<i32>(arg_0.x, -51614i, 39793i, arg_0.x)), vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, -2147483647i), 1i), -2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(70919i, 1067i, arg_0.x), vec3<i32>(1i, arg_0.x, arg_0.x)))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2660f, -141f, -291f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(355f, 1393f, 481f) * vec3<f32>(292f, -1000f, -1135f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(630f, 304f, 1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1576f, 366f), vec3<f32>(-444f, -1160f, 1558f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-119f + -685f), _wgslsmith_f_op_f32(floor(1000f)), 1321f))));
    global3 = array<vec3<bool>, 7>();
    global0 = u_input.b;
    let var_1 = global1.a;
    global3 = array<vec3<bool>, 7>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, _wgslsmith_f_op_f32(sign(-653f)), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x) - _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, arg_3))))), _wgslsmith_mod_i32(arg_0.x, 0i), var_0.b, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-656f)), _wgslsmith_f_op_f32(floor(244f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(499f - -2030f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + -245f))))));
    var var_1 = vec4<i32>(~(1i << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global1.a.x), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, u_input.b) | u_input.a) % 32u)), -firstTrailingBit(i32(-1i) * -2147483647i) >> (~firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.a, global1.a)) % 32u), ~(-(i32(-1i) * -45373i)), select(reverseBits(_wgslsmith_sub_i32(0i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(8197i, 38281i, -14445i, 39403i) >> (vec4<u32>(u_input.a.x, 10223u, u_input.a.x, global1.a.x) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(-2147483647i, -1i, 2147483647i, 0i))), global1.b));
    var var_2 = global1.a;
    var var_3 = 16360u;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) * -467f)));
    let x = u_input.a;
    s_output = func_5(func_4(Struct_2(vec3<u32>(_wgslsmith_add_u32(37901u, 0u), 23859u, _wgslsmith_sub_u32(26317u, global1.a.x)), true), Struct_2(abs(vec3<u32>(35427u, 0u, global1.a.x)), global1.b), func_1(~reverseBits(vec4<i32>(var_1.x, 5495i, var_1.x, -46974i)), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1825f, 881f) - var_4)))), global1.a.x > _wgslsmith_mult_u32(~(~7497u), func_1(abs(vec4<i32>(var_1.x, 0i, var_1.x, var_1.x)), global1.b, _wgslsmith_f_op_vec3_f32(-var_4)).a.x), ~u_input.a.x, false);
}

