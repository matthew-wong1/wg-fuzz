struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(784f, 1000f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = firstLeadingBit(~((_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a.x, -1i), arg_1.a) ^ vec2<i32>(2147483647i, u_input.a.x)) ^ global1.xx));
    let var_1 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), any(vec3<bool>(true, true, true))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, any(vec2<bool>(true, false)), true), vec3<bool>(true, true, true)));
    var var_2 = u_input.c.x;
    var var_3 = countOneBits(arg_0.a.x) > -1i;
    let var_4 = _wgslsmith_mult_u32(~4294967295u & ~(~max(u_input.c.x, u_input.b)), 0u);
    return _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, ~(~_wgslsmith_mod_u32(0u, var_4))), ~(_wgslsmith_div_u32(var_4, ~4294967295u) & countOneBits(u_input.b)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_3(Struct_2(vec2<i32>(-1i, 1i), Struct_1(vec2<f32>(global2.a.x, global2.a.x))), Struct_2(u_input.a.yx, Struct_1(global2.a))), u_input.b), abs(reverseBits(u_input.d))));
    let var_1 = !(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))) | any(vec3<bool>(true, false, 92711u < u_input.b)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global2.a)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)));
    global0 = global2.a.x;
    return Struct_1(var_2.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_3(true, func_2(), arg_1.b);
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1325f, var_1.a.x, -1532f), vec3<f32>(global2.a.x, arg_3, -1025f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, var_1.a.x, arg_1.b.a.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, arg_1.b.a.x, 833f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_1.b.a.x, global2.a.x), vec3<f32>(-315f, global2.a.x, -708f), vec3<bool>(var_0.a, true, var_0.a))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, -190f, global2.a.x) + vec3<f32>(940f, 481f, 2868f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-850f + -458f)) - -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x))));
    let var_3 = u_input.c;
    return !(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.a, true, true, false), var_0.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), !vec4<bool>(false, var_0.a, var_0.a, false)));
}

fn func_1() -> f32 {
    global1 = select(vec4<i32>(-1i, 7371i, -u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(1i, 1i >> (1u % 32u), _wgslsmith_add_i32(1i, global1.x), select(2147483647i, global1.x, true))), func_4(_wgslsmith_f_op_f32(-global2.a.x), Struct_2(~u_input.a.xy, func_2()), firstLeadingBit(u_input.d), _wgslsmith_f_op_f32(round(global2.a.x)))) | -vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.x), ~vec2<i32>(34381i, -25963i)), firstLeadingBit(-2147483647i), u_input.a.x | -1138i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1901f, _wgslsmith_f_op_f32(f32(-1f) * -972f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1447f, -131f)))))));
    global1 = vec4<i32>(u_input.a.x, ~(~(-1i)), -1i << (u_input.d % 32u), 14309i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(abs(12244u), 42137u, max(u_input.d, 4294967295u), ~13153u), u_input.c) % 32u));
    let var_1 = select(vec2<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(53233u, u_input.c.x, 55161u, 28209u)), ~vec4<u32>(1u, u_input.d, u_input.b, u_input.d)), u_input.c.x), u_input.c.wy, 141f >= var_0.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1210f, 237f)) + -802f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -946f;
    var var_0 = 61561i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), global2.a.x, _wgslsmith_f_op_f32(global2.a.x + global2.a.x))), vec3<f32>(1570f, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2038f, global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(select(-899f, global2.a.x, false)), -1421f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1029f))) - 816f), _wgslsmith_f_op_f32(func_1()));
    var var_3 = !all(vec4<bool>(all(vec3<bool>(true, true, true)), (u_input.a.x >> (0u % 32u)) == ~47383i, _wgslsmith_mod_u32(u_input.b, 1u) >= (u_input.b | u_input.c.x), true));
    global1 = ~vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -16949i, 11532i), -vec4<i32>(-1i, -2147483647i, global1.x, 2147483647i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global1.x, global1.x, u_input.a.x)), vec3<i32>(u_input.a.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.x, -38949i), vec3<i32>(0i, -6680i, -2147483647i)))), u_input.a.x, ~global1.x >> (1u % 32u));
    var var_4 = Struct_3(true, func_2(), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), _wgslsmith_clamp_vec3_u32(u_input.c.xzw, vec3<u32>(~u_input.d, u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(33368u, 0u, u_input.d, 1859u), vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 67834u), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)))), u_input.c.zww), vec3<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, ~global1.www), vec3<i32>(global1.x, _wgslsmith_mult_i32(6156i, 6490i), select(u_input.a.x, global1.x, var_4.a))), -1i), reverseBits(vec4<u32>(~(~0u), u_input.d, 50924u, u_input.d)));
}

