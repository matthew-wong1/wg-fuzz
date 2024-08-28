struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_3;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> bool {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~52332u, ~5556u, abs(29671u)), vec3<u32>(1u, 32992u, 58247u)), 8u)], Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.a.x, -250f), arg_0.a.a))))));
    let var_2 = Struct_3(-global1.a);
    global0 = array<Struct_1, 8>();
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(818f, 341f))), arg_0.a.a.x, _wgslsmith_f_op_f32(min(373f, -1000f)), _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, var_1.a.a.x, -1779f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, -412f, var_1.b.a.x, -343f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -890f, -645f, -1095f) * vec4<f32>(var_0.a.a.x, 1483f, var_1.b.a.x, -1232f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.a.x, -520f, -440f, arg_0.a.a.x)))))), vec4<f32>(-575f, 1070f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), -948f)), _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-445f)))))));
    return !global2.x;
}

fn func_2() -> bool {
    global2 = select(!(!(!(!vec3<bool>(false, global2.x, global2.x)))), select(!select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, true, true), !vec3<bool>(global2.x, false, true)), vec3<bool>(!(true != global2.x), global2.x, !(global2.x || false)), global2.x), !vec3<bool>(false, any(vec2<bool>(global2.x, true)), func_3(Struct_5(global0[_wgslsmith_index_u32(68342u, 8u)]), _wgslsmith_div_f32(1000f, 2276f))));
    var var_0 = reverseBits(13078u);
    global0 = array<Struct_1, 8>();
    let var_1 = -firstTrailingBit(_wgslsmith_mult_vec4_i32(min(select(vec4<i32>(global1.a, global1.a, -43227i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.b), global2.x), vec4<i32>(-1i, -58103i, u_input.b, global1.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(2392i, global1.a, global1.a, u_input.b), ~vec4<i32>(2147483647i, global1.a, -57245i, global1.a))));
    var var_2 = Struct_3(var_1.x);
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(550f, -873f), 893f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1630f, 1433f))))), global0[_wgslsmith_index_u32(53230u, 8u)]);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -369f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a.x), var_0.a.a.x)))));
    var var_2 = _wgslsmith_dot_vec2_i32(arg_1.yx, vec2<i32>(u_input.a, -2147483647i));
    var var_3 = select(vec3<bool>(_wgslsmith_mod_i32(arg_1.x, -18790i) == (_wgslsmith_mult_i32(global1.a, -2147483647i) >> (~37589u % 32u)), true, any(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, false, global2.x))) | true), !vec3<bool>(arg_0.x && true, true, true), func_2());
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(step(var_0.a.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, 682f) - var_0.a.a))))));
    return Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(56712u, 1u), ~vec2<u32>(1u, 0u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(82024u, 1u))), 8u)], Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.a.x, -946f), vec2<f32>(-665f, var_0.b.a.x)))) + _wgslsmith_f_op_vec2_f32(max(var_0.b.a, _wgslsmith_f_op_vec2_f32(-var_0.b.a))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec4<i32>(min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(18880i, arg_2.c.x, -1i, global1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-33436i, -15131i, arg_2.c.x, -1i), vec4<i32>(u_input.a, 61543i, 2147483647i, 50455i), vec4<i32>(-1i, arg_2.c.x, arg_2.c.x, 32786i))), min(vec4<i32>(u_input.b, global1.a, -83877i, -32449i), vec4<i32>(u_input.b, arg_2.c.x, -46957i, global1.a)) << (reverseBits(vec4<u32>(arg_0.x, 96517u, arg_1.x, arg_2.b.x)) % vec4<u32>(32u))), 24466i), global1.a, u_input.a, -arg_2.c.x);
    global1 = Struct_3(~(~var_0.x));
    let var_1 = _wgslsmith_mult_u32(1u | min(53987u, arg_1.x), 294u);
    global2 = select(select(!vec3<bool>(arg_2.d.b.a.x < 700f, any(arg_2.a), any(arg_2.e)), arg_2.a.zzw, global2.x), arg_2.e, select(!arg_2.a.xxy, vec3<bool>(true, true, true), true));
    var_0 = reverseBits(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_2.c.x, 0i, 0i), vec3<i32>(-19304i, u_input.b, var_0.x)), vec3<i32>(2147483647i, var_0.x, arg_2.c.x)), 2147483647i, countOneBits(select(var_0.x, -19535i, global2.x)), 1i)));
    return func_1(!vec2<bool>(any(arg_2.e.zy), (1408f < arg_2.d.b.a.x) | true), abs(var_0.zyx)).b;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_5 {
    global1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, -1i, u_input.a)), countOneBits(vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i)))), u_input.b));
    let var_0 = ~(~vec4<u32>(arg_0, reverseBits(1u), firstTrailingBit(~44278u), _wgslsmith_add_u32(arg_0, arg_0) | 0u));
    global0 = array<Struct_1, 8>();
    global1 = Struct_3(u_input.a);
    var var_1 = Struct_4(vec4<bool>(any(select(vec2<bool>(false, global2.x), global2.xy, global2.xx)) || !select(global2.x, global2.x, global2.x), !(~4083i == _wgslsmith_add_i32(-28141i, global1.a)), false, any(vec3<bool>(true, true, false))), vec3<u32>(66634u, arg_0, var_0.x), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(max(0i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(select(2147483647i, 8831i, true), -34272i))), Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], arg_3), vec3<bool>(true, false, select(false, true, !func_3(Struct_5(Struct_1(arg_3.a)), arg_3.a.x))));
    return Struct_5(var_1.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + _wgslsmith_f_op_f32(select(1209f, 814f, false))) * _wgslsmith_f_op_f32(f32(-1f) * -1848f)) * _wgslsmith_f_op_f32(trunc(145f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - _wgslsmith_f_op_f32(-261f + -662f)) - 1f))), func_4(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~select(vec3<u32>(11080u, 98602u, 24225u), vec3<u32>(20724u, 1u, 0u), vec3<bool>(true, true, false)), ~(~vec3<u32>(20484u, 0u, 0u))), ~(~(~vec2<u32>(50953u, 90910u))), Struct_4(select(vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(global2.x, false, true, false), vec4<bool>(global2.x, global2.x, true, true)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(48584u, 4294967295u, 0u), vec3<u32>(3085u, 4294967295u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-10407i, 33950i), vec2<i32>(-25932i, 2147483647i)), func_1(select(vec2<bool>(global2.x, global2.x), global2.xy, global2.yy), vec3<i32>(1i, -50897i, -35151i)), !select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, global2.x, global2.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i >> (0u % 32u), u_input.b, global1.a << (7179u % 32u)), ~(vec3<i32>(2147483647i, u_input.b, global1.a) << (vec3<u32>(27663u, 1011u, 0u) % vec3<u32>(32u)))), ~(-2147483647i ^ firstTrailingBit(global1.a)));
}

