struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = min(vec3<i32>(u_input.a.x, abs(1i), u_input.b.x), -u_input.b);
    global1 = array<Struct_1, 8>();
    let var_1 = u_input.c.yy;
    global1 = array<Struct_1, 8>();
    var_0 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(firstLeadingBit(1i), 2147483647i), -1i), reverseBits(-_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, var_1.x), vec3<i32>(57359i, -37972i, u_input.a.x))), -2147483647i);
    return -691f;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_0, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2102f, 998f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-408f, global0.x, 382f), vec3<f32>(1187f, -317f, arg_0)))), all(vec3<bool>(u_input.d < arg_1.b, any(vec2<bool>(arg_1.a.b, true)), !arg_1.a.b)))));
    let var_0 = arg_1;
    let var_1 = var_0.a.b;
    let var_2 = arg_1.a;
    let var_3 = Struct_1(var_2.a, all(vec2<bool>(1000f > _wgslsmith_f_op_f32(select(arg_0, var_0.c, var_2.b)), false)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(434f, global0.x)), arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-972f)), _wgslsmith_f_op_f32(step(-1000f, -1000f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -10188i) >> (vec4<u32>(4294967295u, u_input.d, u_input.d, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, -11030i, -26844i, -11690i), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.c.x) << (~vec4<u32>(4294967295u, 0u, u_input.d, u_input.d) % vec4<u32>(32u))), false), 92232u, _wgslsmith_f_op_f32(func_2(u_input.d | _wgslsmith_add_u32(abs(u_input.d), firstLeadingBit(4294967295u)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-600f - var_0.c), var_0.c, 1000f), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c, global0.x, var_0.a.b)), -549f, _wgslsmith_f_op_f32(global0.x - global0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1242f, global0.x, var_0.c) * vec3<f32>(var_0.c, global0.x, -320f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, -1359f, -383f)))), vec3<f32>(_wgslsmith_f_op_f32(670f + var_0.c), -408f, _wgslsmith_f_op_f32(f32(-1f) * -142f)))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(var_0.c, -1793f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 300f, 1395f))))), vec3<f32>(_wgslsmith_f_op_f32(global0.x + 807f), _wgslsmith_f_op_f32(572f + global0.x), global0.x)));
    let var_1 = vec4<bool>(false, 1472f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_3(-898f, Struct_2(global1[_wgslsmith_index_u32(var_0.b, 8u)], u_input.d, global0.x), -998f)))), !all(select(!vec3<bool>(var_0.a.b, false, var_0.a.b), vec3<bool>(true, var_0.a.b, false), select(vec3<bool>(var_0.a.b, true, var_0.a.b), vec3<bool>(true, var_0.a.b, false), vec3<bool>(true, false, var_0.a.b)))), true);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(~(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b, 31123u, var_0.b), vec4<u32>(u_input.d, 4294967295u, 4294967295u, 0u)), var_0.b, u_input.d < u_input.d) >> (31950u % 32u)), 8u)], 84738u, global0.x);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    var var_0 = func_1();
    var var_1 = (min(~(~vec3<u32>(u_input.d, u_input.d, u_input.d)), ~(vec3<u32>(0u, 4294967295u, 4294967295u) >> (vec3<u32>(u_input.d, 0u, u_input.d) % vec3<u32>(32u)))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.d, u_input.d)), firstLeadingBit(vec3<u32>(u_input.d, 19055u, u_input.d))), countOneBits(vec3<u32>(u_input.d, 4294967295u, 16307u)))) >> ((vec3<u32>(u_input.d, 1u, _wgslsmith_add_u32(~u_input.d, 1u)) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(29054u, 4294967295u, 16974u), ~vec3<u32>(u_input.d, u_input.d, 73954u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, 4294967295u), ~vec3<u32>(4294967295u, u_input.d, u_input.d)), select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, true, false), var_0.b), !vec3<bool>(false, var_0.b, var_0.b), any(vec2<bool>(var_0.b, var_0.b)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 911f, global0.x) - vec3<f32>(global0.x, -357f, global0.x)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), 136f)))));
    var var_2 = global0.x;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34640u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 18397u, var_1.x, 36245u) << (~(vec4<u32>(1u, var_1.x, 34191u, var_1.x) & vec4<u32>(21580u, var_1.x, 1u, 69751u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(54584u, u_input.d, 20058u, 1u)), ~vec4<u32>(1u, u_input.d, 1932u, 1u), vec4<u32>(var_1.x, 128u, 12864u, 4294967295u)))), var_1.x), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, 1u, true), u_input.d, -1510f);
}

