struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-11232i, 1i), vec2<i32>(1i, -2411i));

var<private> global2: array<vec2<f32>, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, -13263i), vec4<i32>(21106i, -49771i, 1i, -54425i)), _wgslsmith_clamp_i32(2147483647i, -27095i, -1192i)), select(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, true, true), !vec4<bool>(false, true, true, u_input.b >= u_input.b), vec4<bool>(true, true, true, true)));
    global0 = array<f32, 15>();
    global1 = array<vec2<i32>, 2>();
    var var_1 = _wgslsmith_mult_i32(var_0.a, firstTrailingBit(0i));
    var var_2 = i32(-1i) * -1i;
    return 75593u;
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    global2 = array<vec2<f32>, 13>();
    var var_0 = -113f;
    var var_1 = Struct_2(Struct_1(-10921i, select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(arg_0.x, 15u)] > _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 15u)])))), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(-1i), 1i), -19456i, ~(-(~(-16590i)))), Struct_1(-_wgslsmith_mod_i32(30091i, -88292i), select(vec4<bool>(true, any(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), true)), vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 18301i), vec3<i32>(33533i, -69908i, -10662i)), abs(vec3<i32>(2147483647i, -1i, 2147483647i)), vec3<i32>(44047i, -2147483647i, -27395i)));
    global2 = array<vec2<f32>, 13>();
    let var_2 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 15u)])), true));
    return var_1.a;
}

fn func_1() -> i32 {
    global0 = array<f32, 15>();
    let var_0 = u_input.b;
    var var_1 = func_3(select(vec4<u32>(~func_2(), select(_wgslsmith_div_u32(var_0, 0u), 0u, true), ~4294967295u, reverseBits(~47194u)), countOneBits(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, var_0, 39640u, u_input.a.x), vec4<u32>(51026u, 13126u, var_0, 72389u)))), !vec4<bool>(all(vec3<bool>(false, true, false)), false, true, true)));
    var var_2 = -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, -1i, -2147483647i), vec3<i32>(var_1.a, var_1.a, -50501i), vec3<i32>(-1i, var_1.a, -24091i)), _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(var_1.a, var_1.a, 34228i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, 24849i, var_1.a), vec3<i32>(-2147483647i, -3018i, var_1.a), vec3<i32>(14761i, var_1.a, var_1.a))));
    var var_3 = func_3(vec4<u32>(u_input.a.x & _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0, u_input.b), abs(vec3<u32>(4294967295u, 123845u, var_0))), ~max(var_0, select(33864u, 5179u, var_1.b.x)), 3423u, ~reverseBits(reverseBits(14984u))));
    return _wgslsmith_div_i32(max(var_1.a, 1i), -firstLeadingBit(_wgslsmith_mult_i32(0i, min(1i, -75380i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(~func_1()), vec4<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), !all(vec2<bool>(true, true)))), ~vec3<i32>(i32(-1i) * -1i, 1i, ~(-1i)), func_3(~(~vec4<u32>(8205u, u_input.a.x, u_input.b, 4423u))), vec3<i32>(max(_wgslsmith_mod_i32(-22403i, 1495i), ~(-32816i)), ~1i, -_wgslsmith_mult_i32(2147483647i, 1i)) << (~(~vec3<u32>(u_input.a.x, 0u, u_input.b)) % vec3<u32>(32u)));
    var var_1 = var_0.c;
    let var_2 = -44145i;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(48419u, 15u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), 245f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~(~u_input.b), 15u)])), -1436f);
    global1 = array<vec2<i32>, 2>();
    global0 = array<f32, 15>();
    global2 = array<vec2<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~36530i, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 96393u, 3319u), vec3<u32>(u_input.a.x, u_input.b, 4294967295u)), ~1585u, ~u_input.a.x, u_input.b) >> (select(~(~vec4<u32>(1u, 58530u, 1u, u_input.a.x)), vec4<u32>(reverseBits(u_input.a.x), 9761u, 0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), (var_3.x <= var_3.x) | false) % vec4<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(0u, u_input.a.x, 126033u), _wgslsmith_sub_vec3_u32(vec3<u32>(4254u, 4294967295u, 37972u), vec3<u32>(0u, 0u, 25116u)), var_0.c.b.ywz), _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(2484u, 0u, u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(67495u, u_input.b, 4294967295u), vec3<u32>(21024u, 1u, u_input.a.x)))), ~abs(vec3<u32>(u_input.b, 1173u, 0u) | vec3<u32>(u_input.a.x, 1u, u_input.a.x))), vec4<i32>(2147483647i, 0i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(-14209i, var_0.c.a, 1i)), vec3<i32>(0i, -19634i, var_1.a), true), vec3<i32>(1i, 45325i, 1i) ^ ~var_0.b), 1i));
}

