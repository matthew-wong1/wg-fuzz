struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, false, false, true), 42010i, vec4<i32>(10576i, 2147483647i, -30418i, 0i)), Struct_1(vec4<bool>(true, false, false, true), i32(-2147483648), vec4<i32>(-6581i, 0i, -26941i, 2147483647i)), Struct_1(vec4<bool>(true, true, true, true), 0i, vec4<i32>(0i, 0i, 31579i, 4690i)), Struct_1(vec4<bool>(true, true, true, false), 23345i, vec4<i32>(11596i, 2668i, 40120i, -17329i)), Struct_1(vec4<bool>(false, true, false, false), 10952i, vec4<i32>(-5955i, 2147483647i, 2147483647i, 21016i)), Struct_1(vec4<bool>(true, true, false, false), -27911i, vec4<i32>(-44391i, 0i, 0i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, true, true), i32(-2147483648), vec4<i32>(1i, 18251i, 1i, 2147483647i)), Struct_1(vec4<bool>(false, false, true, true), 25144i, vec4<i32>(i32(-2147483648), i32(-2147483648), -18727i, -36545i)), Struct_1(vec4<bool>(true, false, false, true), -17036i, vec4<i32>(2147483647i, 46488i, -51032i, 1i)), Struct_1(vec4<bool>(false, false, true, true), -1i, vec4<i32>(2147483647i, 26446i, -16018i, 11600i)), Struct_1(vec4<bool>(false, true, false, true), 2147483647i, vec4<i32>(15985i, -62701i, -36134i, 0i)), Struct_1(vec4<bool>(true, false, true, false), 6182i, vec4<i32>(7736i, 57534i, -1277i, -33356i)), Struct_1(vec4<bool>(false, true, true, true), 1i, vec4<i32>(2147483647i, i32(-2147483648), 1i, 10126i)), Struct_1(vec4<bool>(false, true, false, true), -25593i, vec4<i32>(0i, 2147483647i, 8357i, -63848i)), Struct_1(vec4<bool>(false, true, false, false), -1i, vec4<i32>(2147483647i, 1i, -18267i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, true), 0i, vec4<i32>(1i, 1i, i32(-2147483648), -40141i)), Struct_1(vec4<bool>(false, true, false, false), 15123i, vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), 1i, vec4<i32>(-13575i, 0i, -1i, 0i)), Struct_1(vec4<bool>(true, false, true, false), -25009i, vec4<i32>(2293i, -13702i, i32(-2147483648), 0i)));

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: array<Struct_1, 30>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(~42178i, u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) | u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.c.x ^ -59579i, _wgslsmith_add_i32(-2147483647i, u_input.c.x), 14312i) ^ _wgslsmith_add_vec3_i32(u_input.c, u_input.a.wzy), vec3<i32>(1i, 1i, 1i) & _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, arg_2.b, 0i)), firstTrailingBit(arg_2.c.xyw))));
    global1 = array<Struct_1, 19>();
    let var_1 = u_input.b;
    global3 = array<Struct_1, 30>();
    let var_2 = arg_2.b;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-1950f, _wgslsmith_f_op_f32(-1000f - -458f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, 1000f) * vec2<f32>(-461f, -1203f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(345f, 747f) + vec2<f32>(378f, -2512f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -155f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1478f, -501f))))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> bool {
    global4 = vec2<bool>(all(!(!select(vec3<bool>(false, true, global4.x), vec3<bool>(global4.x, true, global0.x), true))), true);
    global0 = !select(select(!select(vec2<bool>(arg_3, global0.x), vec2<bool>(arg_3, arg_3), vec2<bool>(false, global4.x)), select(vec2<bool>(false, global4.x), select(vec2<bool>(false, global0.x), vec2<bool>(arg_3, global0.x), true), vec2<bool>(false, true)), arg_3), !(!select(vec2<bool>(arg_3, global4.x), vec2<bool>(false, arg_3), false)), !global0.x);
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(92097u), 19u)];
    global0 = var_0.a.wy;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1012f), -766f))), 1f), Struct_1(var_0.a, -(-u_input.c.x | abs(arg_2.x)), ~(vec4<i32>(arg_0.x, 42945i, -28597i, arg_0.x) >> (vec4<u32>(4294967295u, u_input.b, 19286u, arg_1) % vec4<u32>(32u)))));
    return select(~(~arg_1 << (~u_input.b % 32u)) < _wgslsmith_mult_u32(_wgslsmith_div_u32(~15222u, arg_1), 79095u), (_wgslsmith_f_op_f32(f32(-1f) * -285f) > var_1.a.x) && !(var_1.b.b != ~var_0.b), true);
}

fn func_2() -> Struct_1 {
    global4 = vec2<bool>(func_3(u_input.a, 0u, u_input.c, global4.x), !global0.x);
    global4 = select(vec2<bool>(true, global4.x), select(vec2<bool>(all(vec3<bool>(global4.x, true, true)), 4294967295u >= (u_input.b ^ u_input.b)), !(!select(vec2<bool>(false, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(true, global0.x))), select(!select(vec2<bool>(true, global4.x), vec2<bool>(false, global4.x), global4.x), vec2<bool>(func_3(u_input.a, u_input.b, u_input.a.yyx, global0.x), true), vec2<bool>(true, true))), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, global4.x), vec2<bool>(global0.x, true)), select(vec2<bool>(true, global4.x), vec2<bool>(global0.x, global4.x), false), !vec2<bool>(global4.x, global4.x)), !(!vec2<bool>(global0.x, false)), global4.x));
    global4 = select(vec2<bool>(false, !global0.x), select(select(vec2<bool>(!global4.x, false), !select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), select(-1i >= u_input.a.x, any(vec3<bool>(global4.x, true, global0.x)), u_input.a.x >= u_input.c.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(!global4.x, global0.x), global4.x), select(select(vec2<bool>(global0.x, global4.x), !vec2<bool>(true, global0.x), select(global0.x, global0.x, true)), select(select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, true), false), select(vec2<bool>(true, global4.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), true), true)), global0.x);
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 19u)];
    global2 = array<vec4<f32>, 8>();
    return global3[_wgslsmith_index_u32(~28863u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = global3[_wgslsmith_index_u32(~(~countOneBits(u_input.b)), 30u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1((u_input.a.x < 44726i) == !global0.x, false, global3[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_div_u32(1u, 4294967295u), 30u)]))), func_2());
    var var_3 = ~reverseBits(vec3<u32>(~u_input.b, u_input.b, ~u_input.b) << (firstTrailingBit(vec3<u32>(0u, 10872u, u_input.b) << (vec3<u32>(u_input.b, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), 381f)) - _wgslsmith_f_op_f32(-2156f * 279f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), var_2.b.c.xy)), _wgslsmith_div_i32(var_1.c.x, 2147483647i & _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_2.b.c.x, var_1.b, u_input.a.x, u_input.a.x))), u_input.c.x), var_1.c, var_2.b.c, vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(-u_input.a, ~vec4<i32>(var_2.b.c.x, -62966i, var_1.c.x, 0i))), -21202i, _wgslsmith_mod_i32(firstTrailingBit(393i), -1i)));
}

