struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<f32>(1350f, 2394f, -929f)), Struct_2(vec3<f32>(-1000f, 2022f, -979f)), Struct_2(vec3<f32>(-887f, -1000f, -708f)), Struct_2(vec3<f32>(1247f, 415f, -1773f)), Struct_2(vec3<f32>(-1000f, 1311f, -810f)), Struct_2(vec3<f32>(1194f, -1143f, 1011f)), Struct_2(vec3<f32>(-1140f, -1908f, 1000f)), Struct_2(vec3<f32>(545f, 1220f, -1000f)), Struct_2(vec3<f32>(-149f, -967f, 1035f)), Struct_2(vec3<f32>(446f, -659f, -1711f)), Struct_2(vec3<f32>(2201f, -568f, 344f)), Struct_2(vec3<f32>(-923f, 1000f, 111f)), Struct_2(vec3<f32>(-710f, 1000f, 1108f)), Struct_2(vec3<f32>(-1000f, 643f, -223f)), Struct_2(vec3<f32>(1002f, -1181f, 693f)), Struct_2(vec3<f32>(-1000f, -1985f, 260f)), Struct_2(vec3<f32>(-474f, -2573f, -1224f)), Struct_2(vec3<f32>(-1000f, 1000f, 682f)), Struct_2(vec3<f32>(1496f, -443f, -979f)), Struct_2(vec3<f32>(-1890f, 1015f, -1145f)), Struct_2(vec3<f32>(-765f, 134f, 385f)), Struct_2(vec3<f32>(538f, 1000f, -978f)));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec4<u32>(1u, 17940u, 1u, 37385u), false), 69724u, Struct_2(vec3<f32>(1467f, 859f, -1000f)), Struct_2(vec3<f32>(-852f, -546f, 146f)));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(27640u, 18634u), vec2<u32>(35114u, 4294967295u), vec2<u32>(2522u, 1u), vec2<u32>(11333u, 0u), vec2<u32>(0u, 31259u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = global1.a.b;
    let var_1 = global1.a.a;
    global2 = select(vec2<bool>(false, any(!select(vec3<bool>(true, global2.x, true), vec3<bool>(global1.a.b, global2.x, global1.a.b), global2.x))), select(select(!(!vec2<bool>(true, global1.a.b)), vec2<bool>(true, true), select(vec2<bool>(global2.x, true), vec2<bool>(true, true), true)), vec2<bool>((global1.a.b && true) && true, false), true), global1.a.b);
    let var_2 = Struct_2(global1.d.a);
    global0 = array<Struct_2, 22>();
    return _wgslsmith_dot_vec2_u32(u_input.c.zy, _wgslsmith_mod_vec2_u32(~(~(vec2<u32>(global1.b, 2767u) >> (u_input.b % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], min(vec2<u32>(4294967295u, 0u), global3[_wgslsmith_index_u32(64426u, 5u)])), u_input.c.zy)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<f32> {
    let var_0 = !select(vec3<bool>(global1.a.b, !global1.a.b, global2.x), vec3<bool>(!(!global2.x), all(select(vec2<bool>(false, true), vec2<bool>(global2.x, global1.a.b), global2.x)), !global1.a.b), false);
    global2 = var_0.zy;
    var var_1 = Struct_4(Struct_1(global1.a.a, 44017u == _wgslsmith_div_u32(u_input.a, global1.b)), reverseBits(17959u ^ global1.a.a.x), global1.c, global0[_wgslsmith_index_u32(~func_3(), 22u)]);
    let var_2 = Struct_4(global1.a, var_1.a.a.x, Struct_2(global1.d.a), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-597f, -2167f, var_1.c.a.x)))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.d.a.x - var_2.c.a.x), _wgslsmith_f_op_f32(-1487f + var_2.c.a.x), _wgslsmith_f_op_f32(666f * -831f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-352f, -239f, 1000f), vec3<f32>(-1110f, var_1.d.a.x, var_2.c.a.x), var_0)) * _wgslsmith_f_op_vec3_f32(min(var_2.d.a, var_2.c.a)))))), ~_wgslsmith_clamp_i32(-33539i, _wgslsmith_mult_i32(arg_1, arg_0), countOneBits(arg_1)) >> (select(min(16172u, 1u << (var_1.a.a.x % 32u)), 24456u, global2.x) % 32u), ~u_input.d.x, ~(~0i | arg_1) > countOneBits(-8865i), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * -914f)), -1503f, global1.d.a.x)));
    return vec2<f32>(-1236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-891f, _wgslsmith_f_op_f32(1138f - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global1.c.a.x))), true)), _wgslsmith_f_op_f32(select(global1.d.a.x, global1.c.a.x, true)));
    var var_1 = !(!vec4<bool>(global1.a.b, !(global1.a.b || true), !(!global2.x), global2.x));
    let var_2 = vec2<f32>(217f, _wgslsmith_f_op_f32(abs(-352f)));
    let var_3 = -vec3<i32>(u_input.d.x, abs(_wgslsmith_add_i32(-2147483647i, arg_2.x) >> ((global1.b >> (23567u % 32u)) % 32u)), -1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(func_2(1i, u_input.d.x));
    return global0[_wgslsmith_index_u32(76203u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.a + global1.d.a) + _wgslsmith_f_op_vec3_f32(-global1.d.a)))), _wgslsmith_add_i32(u_input.d.x << (countOneBits(~37903u) % 32u), -abs(-u_input.d.x)), u_input.d.x, global2.x, func_1(!vec2<bool>(global1.a.b, true), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), ~vec3<u32>(u_input.b.x, global1.a.a.x, u_input.c.x)), max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(8859i, u_input.d.x, 2147483647i), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)), ~45067i), abs(~u_input.d.xy))));
    global0 = array<Struct_2, 22>();
    var var_1 = ~23414u;
    let var_2 = abs(vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 35988u, 0u), vec3<u32>(u_input.a, u_input.a, 1u)), abs(vec3<u32>(global1.b, 52977u, u_input.b.x))) << (~(~0u) % 32u)));
    global2 = select(vec2<bool>(!(!var_0.d), all(!vec3<bool>(true, var_0.d, true))), !vec2<bool>(var_0.d, global2.x), all(select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(select(global2.x, global2.x, false), global2.x, true), select(select(vec3<bool>(false, true, var_0.d), vec3<bool>(false, global2.x, false), global1.a.b), vec3<bool>(true, true, global1.a.b), any(vec4<bool>(false, true, var_0.d, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_2.x, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(60622u >> (u_input.a % 32u), 46754u))));
}

