struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~32171u, 30u)], ~1u), 1u, true), 1u), 30u)], 4294967295u);
    global0 = array<u32, 30>();
    global1 = (~_wgslsmith_div_u32(countOneBits(4637u), 1u) & firstLeadingBit(~var_0.x >> (~27291u % 32u))) >> (((var_0.x & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.x, ~13916u), 30u)]) << ((var_0.x ^ 1u) % 32u)) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, -600f, 590f) - vec3<f32>(-966f, 1035f, 416f))))))));
    let var_2 = 1i;
    return _wgslsmith_div_f32(var_1.x, -508f);
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -1686f)));
    global1 = ~global0[_wgslsmith_index_u32(10354u, 30u)];
    var var_2 = _wgslsmith_f_op_f32(func_3());
    let var_3 = ~vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(38909u, 30u)], 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(3357u, global0[_wgslsmith_index_u32(75567u, 30u)], 26489u), vec3<u32>(global0[_wgslsmith_index_u32(16992u, 30u)], 50721u, 1u)))), ~0u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) - _wgslsmith_f_op_vec2_f32(-arg_0))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 888f), _wgslsmith_f_op_f32(arg_0.x * 1405f)));
    global1 = _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(84245u, global0[_wgslsmith_index_u32(0u, 30u)], 6758u) & ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)], 30u)], 20391u))), abs(min(~_wgslsmith_add_vec3_u32(vec3<u32>(45626u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(70384u, 30u)], 0u, 107983u)), max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44001u, 30u)], 30u)], 30u)], 30u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(48548u, 45962u, 18372u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8512u, 30u)], 30u)], 21757u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)]))))));
    let var_1 = vec4<f32>(140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * arg_0.x)), var_0.x, -189f);
    let var_2 = Struct_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42491u, 33323u), 30u)], 30u)], 30u)], 30u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(600f, var_0.x)) - _wgslsmith_div_f32(var_1.x, 1445f)))), Struct_2(Struct_1(_wgslsmith_add_u32(0u, abs(1u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_1.x), _wgslsmith_div_vec2_f32(var_0, var_0)))), 2855f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 1038f, -1936f, var_1.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(586f, -193f, _wgslsmith_div_f32(1000f, 800f), 307f)))));
    var var_3 = false;
    return var_2.a.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(916f, 1505f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1733f)))))), u_input.a, u_input.a);
    var_0 = Struct_1(~global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 115128u) & _wgslsmith_sub_u32(~1u, countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 30u)], 30u)])), 30u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-1000f - var_0.b.x)))));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.b), func_4(var_0.b, u_input.a, u_input.a).b))))), _wgslsmith_div_i32(-25883i, 10636i) << ((abs(global0[_wgslsmith_index_u32(select(1u, global0[_wgslsmith_index_u32(0u, 30u)], true), 30u)]) >> (~1u % 32u)) % 32u), ~(-u_input.a));
    var var_1 = Struct_4(Struct_2(Struct_1(0u, _wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, true))), 331f), Struct_2(func_4(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - 1883f), var_0.b.x), select(-4300i, select(-8352i, -2147483647i, false), false), ~_wgslsmith_mult_i32(-2147483647i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, 795f, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1445f, -363f, -527f))), vec4<f32>(var_0.b.x, 819f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -462f)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1938f, -1141f, var_0.b.x, 702f))))))));
    let var_2 = ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~41580u, ~1u ^ ~global0[_wgslsmith_index_u32(0u, 30u)]), 30u)], 30u)];
    return func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))))), u_input.a, _wgslsmith_mod_i32(abs(firstLeadingBit(u_input.a)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(-6591i, 2147483647i, 18723i), vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a) ^ (i32(-1i) * -24979i)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_4 {
    global1 = ~arg_1.a;
    var var_0 = Struct_4(Struct_2(arg_1, _wgslsmith_f_op_f32(min(-379f, _wgslsmith_f_op_f32(2563f * _wgslsmith_f_op_f32(443f - -666f))))), Struct_2(func_4(arg_1.b, min(arg_0, ~arg_0), ~u_input.a | -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, arg_1.b.x, true)) * _wgslsmith_f_op_f32(select(-624f, _wgslsmith_f_op_f32(-2160f * -114f), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1245f, 675f, -1208f, -639f) + vec4<f32>(2050f, -254f, 2592f, -1642f)))) * vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(ceil(-160f)))), _wgslsmith_f_op_f32(1422f - _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(877f + arg_1.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1558f, var_0.b.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f)), true)))));
    let var_2 = Struct_4(var_0.b, Struct_2(var_0.a.a, _wgslsmith_f_op_f32(250f + var_0.c.x)), _wgslsmith_f_op_vec4_f32(-var_0.c));
    let var_3 = max(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(1u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3160u, 30u)], 30u)]), 4294967295u), ~func_4(func_1().b, ~(-1i), 1i).a), ~abs(arg_1.a));
    return Struct_4(Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 147f) + var_2.c.wz)), _wgslsmith_mult_i32(~u_input.a, -2147483647i), arg_0), _wgslsmith_f_op_f32(-780f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-510f + -1771f), _wgslsmith_f_op_f32(-arg_1.b.x))))), Struct_2(func_1(), 440f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstTrailingBit(u_input.a), func_1());
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -615f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.c.x, 194f, var_0.b.a.b.x, var_0.a.b)) * var_0.c)) * _wgslsmith_f_op_vec4_f32(var_0.c * var_0.c)) - vec4<f32>(var_0.b.a.b.x, _wgslsmith_f_op_f32(-func_5(u_input.a, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.a.a, 30u)], 30u)], vec2<f32>(var_0.c.x, -2337f))).a.b), _wgslsmith_f_op_f32(1114f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(674f, 614f, false)), var_0.c.x))), _wgslsmith_f_op_f32(-1083f - var_0.c.x)));
    var var_3 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-947f, var_2.x), vec2<f32>(_wgslsmith_f_op_f32(var_2.x * -331f), _wgslsmith_f_op_f32(func_3()))), firstLeadingBit(~(-2147483647i)), -(~2147483647i)).b.x != 754f;
    let var_4 = func_5(~(-(~1i) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - -1453f) + -493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1290f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(func_4(var_0.a.a.b, -1i, 3169i).b)).x * -208f)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(51842u, 0u)), reverseBits(vec2<u32>(0u, var_4.b.a.a))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.a.a, 31367u), vec2<u32>(20934u, var_0.a.a.a)))), _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a), 51106i << (global0[_wgslsmith_index_u32(42163u, 30u)] % 32u), -2147483647i), _wgslsmith_div_vec3_i32(~max(vec3<i32>(u_input.a, 20807i, u_input.a), vec3<i32>(2147483647i, u_input.a, -18273i)), vec3<i32>(-1i) * -vec3<i32>(1i, -2147483647i, -20355i))), u_input.a);
}

