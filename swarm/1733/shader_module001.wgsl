struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(27318i, 0i));

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 1271u, 44563u, 72073u), vec4<u32>(1u, 58967u, 33459u, 0u), vec4<u32>(26359u, 4294967295u, 4294967295u, 23347u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    var var_1 = Struct_3(-arg_2.xwx, arg_1.b, select(vec2<bool>(true, false), vec2<bool>(firstTrailingBit(arg_3.a) != _wgslsmith_dot_vec4_u32(vec4<u32>(5102u, 5335u, 4294967295u, 10946u), vec4<u32>(47530u, arg_3.a, 42920u, 0u)), arg_1.b.d), any(select(!vec4<bool>(var_0.d, arg_1.b.d, false, var_0.d), select(vec4<bool>(var_0.d, true, var_0.d, arg_1.c.x), vec4<bool>(arg_1.c.x, true, false, arg_1.b.d), true), true))), arg_2.zw);
    let var_2 = Struct_2(abs(_wgslsmith_sub_u32(~4294967295u, ~var_0.c.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.a - _wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_div_f32(743f, _wgslsmith_f_op_f32(var_1.b.a + 850f)))), 1877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -614f, var_1.c.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.a))))));
    return vec2<u32>(reverseBits(43979u), 7211u) << (var_1.b.c.yw % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-897f)))), 283f)) - _wgslsmith_f_op_f32(step(247f, _wgslsmith_f_op_f32(-arg_0.x)))));
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(57057u, 1u) & select(vec2<u32>(4294967295u, 21207u), vec2<u32>(24895u, 31485u), true)), ~func_3(Struct_2(1u), Struct_3(vec3<i32>(-13630i, -6824i, u_input.a), Struct_1(277f, 34821u, global1[_wgslsmith_index_u32(0u, 5u)], false, 49088u), vec2<bool>(false, false), vec2<i32>(1i, -2147483647i)), -vec4<i32>(u_input.a, u_input.a, -18605i, u_input.a), Struct_2(47015u)));
    global1 = array<vec4<u32>, 5>();
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_1, 5u)], ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, 1u), 5u)]), ~var_1, var_1, ~(~1u));
    return vec4<u32>(var_2.x, _wgslsmith_sub_u32(var_2.x, ~(abs(var_1) ^ var_2.x)), var_2.x, ~(var_1 << (~_wgslsmith_clamp_u32(25194u, var_1, var_2.x) % 32u)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = any(select(vec2<bool>(true, _wgslsmith_f_op_f32(arg_0 - -896f) >= 1000f), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(false, true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, false, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 884f) * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(-858f)))), ~54925u, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -770f, arg_0, 3366f))), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(func_2(vec4<f32>(-576f, -477f, arg_0, -2927f)).x, 5u)], _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(88475u, 5u)], vec4<u32>(1u, 45932u, 78946u, 22240u)))), ~(~(~global1[_wgslsmith_index_u32(33477u, 5u)]))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))) & !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), 27442u);
    let var_2 = Struct_2(select(~_wgslsmith_sub_u32(var_1.c.x, 40959u) << (_wgslsmith_clamp_u32(~1u, 63167u, min(var_1.b, var_1.e)) % 32u), _wgslsmith_clamp_u32(min(1544u, 18329u), firstTrailingBit(var_1.c.x), _wgslsmith_mult_u32(~var_1.b, 43181u)), true));
    var var_3 = _wgslsmith_mult_u32(~(~var_2.a), ~(~(~var_1.e)));
    var var_4 = var_1.b << (1u % 32u);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(139f)), 519f) * _wgslsmith_f_op_f32(step(-1166f, -1279f)));
    let var_1 = u_input.a;
    global0 = array<vec2<i32>, 1>();
    let var_2 = abs(vec2<u32>(_wgslsmith_mult_u32(78701u, ~(~1u)), _wgslsmith_clamp_u32(func_1(_wgslsmith_f_op_f32(-1495f + var_0)), 39832u, abs(~46701u))));
    global0 = array<vec2<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(-u_input.a >> (var_2.x % 32u)));
}

