struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_5 = Struct_5(-375f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global1 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a)))), true)), -907f, true)));
    global1 = Struct_5(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 1000f) - _wgslsmith_div_f32(269f, -1864f)) + _wgslsmith_f_op_f32(798f - 1086f))));
    var var_0 = vec3<u32>((global0.x ^ _wgslsmith_dot_vec3_u32(~global0.wxx, vec3<u32>(1u, 2978u, 1831u))) ^ arg_0, arg_0, 1u);
    var var_1 = Struct_4(vec4<bool>(u_input.b >= _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, 27757i), vec3<i32>(0i, 117045i, u_input.b), vec3<bool>(false, true, true)), -vec3<i32>(20076i, u_input.b, 0i)), !(any(vec3<bool>(true, false, false)) == false), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(true, true))), 1u >= (var_0.x >> (select(0u, 1u, true) % 32u))), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_div_f32(global1.a, global1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(306f, -774f))))), Struct_1(global1.a, select(vec4<u32>(u_input.d.x, 1u, arg_0, 1u), vec4<u32>(0u, var_0.x, 4294967295u, global0.x), vec4<bool>(true, true, false, true)) & ~vec4<u32>(4294967295u, arg_0, arg_0, 46158u), global1.a), -1i));
    var var_2 = global1.a;
    return _wgslsmith_div_vec2_u32(vec2<u32>(min(min(47120u & var_1.b.b.b.x, ~60385u), u_input.d.x), 34632u), vec2<u32>(16247u, 5098u));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = u_input.a;
    global0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d.x, abs(global0.x)), ~30768u), global0.x, _wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(global0.x, u_input.d.x, u_input.c)))), u_input.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(35431u, countOneBits(u_input.c)), vec2<u32>(u_input.c << (u_input.d.x % 32u), 0u)));
    global0 = _wgslsmith_mod_vec4_u32(u_input.a, max(u_input.d, ~reverseBits(vec4<u32>(global0.x, u_input.a.x, u_input.a.x, u_input.d.x) ^ vec4<u32>(4294967295u, global0.x, 4294967295u, 42449u))));
    var var_0 = select(_wgslsmith_mod_vec2_u32((func_3(u_input.d.x) >> (~vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))) ^ vec2<u32>(min(1u, global0.x), _wgslsmith_mod_u32(global0.x, u_input.c)), vec2<u32>(firstLeadingBit(firstTrailingBit(global0.x)), ~(1u & global0.x))), vec2<u32>(4294967295u, 0u), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true != any(vec4<bool>(false, false, false, false))));
    let var_1 = _wgslsmith_f_op_f32(1520f - _wgslsmith_f_op_f32(-886f - arg_0));
    return Struct_3(vec2<f32>(-887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(round(1886f)))) + var_1)), Struct_1(_wgslsmith_f_op_f32(global1.a - _wgslsmith_div_f32(var_1, -444f)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(~global0.x, 4294967295u, _wgslsmith_add_u32(u_input.a.x, global0.x), u_input.c)), -1000f), u_input.b | min(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.b, 1i), vec4<i32>(7200i, u_input.b, -27596i, u_input.b)), u_input.b | u_input.b), ~2147483647i | (u_input.b >> (var_0.x % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = -1i;
    global1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_div_f32(global1.a, arg_1.b.a), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f - -662f) + _wgslsmith_f_op_f32(trunc(global1.a)))));
    let var_1 = Struct_2(select(vec3<bool>(true, select(false, false, global0.x > arg_0.b.b.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true), vec3<bool>(true, true, true)), !(true && (arg_0.b.a < arg_1.b.a))), arg_1.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1810f, -455f, arg_1.a.x, -864f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, 1000f, 1489f, 2153f))))), vec4<f32>(695f, 511f, -360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f * var_1.b.a) + -265f)), vec4<bool>(all(vec3<bool>(var_1.a.x, true, true)), true, _wgslsmith_mod_i32(var_0, -2147483647i) > _wgslsmith_mod_i32(arg_0.c, -77546i), any(vec4<bool>(true, var_1.a.x, var_1.a.x, false))))));
    global1 = Struct_5(arg_1.a.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-1010f * -2466f)))) - _wgslsmith_f_op_f32(-arg_0.b.a))));
}

fn func_1() -> StorageBuffer {
    let var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec2<f32>(-160f, global1.a), Struct_1(global1.a, u_input.d, global1.a), 1i), func_2(global1.a)))) < _wgslsmith_f_op_f32(trunc(global1.a))) & true;
    global0 = _wgslsmith_div_vec4_u32(min(u_input.a, reverseBits(~(~u_input.d))), u_input.d);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.a), -464f)) - func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1272f))))).a), func_2(-1074f).b, u_input.b);
    global0 = ~vec4<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(17190u), 44003u), 1u << ((~1u & ~u_input.d.x) % 32u), 13449u);
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))));
    return StorageBuffer(i32(-1i) * -u_input.b, vec4<u32>(1u, _wgslsmith_mod_u32(74813u, u_input.a.x), min(1u, 2882u), global0.x), vec3<u32>(countOneBits(func_3(global0.x).x), u_input.a.x, ~2597u), u_input.d.x, var_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global0 = select(vec4<u32>(global0.x, countOneBits(u_input.a.x), ~1u, ~u_input.c), vec4<u32>(~1u, reverseBits(firstLeadingBit(4623u)), 20379u, global0.x), !(!vec4<bool>(true, all(vec3<bool>(true, true, true)), global0.x <= global0.x, all(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = func_1();
}

