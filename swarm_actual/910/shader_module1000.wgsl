struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(830f, -1124f, -1000f, 814f), 802f, false, vec3<i32>(10466i, 0i, 0i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<bool>(!global1.x, global2.c, global2.c, global1.x | global2.c);
    global1 = !(!vec4<bool>(!(u_input.a != u_input.b), 1f < _wgslsmith_f_op_f32(ceil(global2.a.x)), false, u_input.c != -2147483647i));
    let var_1 = var_0.wy;
    return Struct_4(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(8692u, ~(u_input.b | 1u)), 16u)], u_input.b, global2.a, global2.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2.a, vec4<f32>(1000f, -908f, global2.b, 582f))) + global2.a) - global2.a), _wgslsmith_f_op_f32(f32(-1f) * -146f), all(vec4<bool>(!global1.x, any(var_1), global1.x, global1.x)), -(global2.d | global2.d)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_i32(arg_2.d.x, -12242i);
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-614f + arg_3.x), _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(-func_2().e.a.x), global2.a.x, global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(863f, 215f)), _wgslsmith_f_op_f32(max(-584f, arg_3.x))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3512f), _wgslsmith_f_op_f32(f32(-1f) * -118f), false)), -vec3<i32>(arg_2.d.x, min(63204i, global2.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(6060i, 11360i, 35390i, global2.d.x), vec4<i32>(-58819i, 50491i, global2.d.x, 0i)))));
    global0 = array<Struct_3, 16>();
    let var_2 = min(~max(vec3<u32>(1u, 0u, u_input.a), abs(vec3<u32>(u_input.a, 1268u, u_input.b))), _wgslsmith_mult_vec3_u32(vec3<u32>(~14990u, u_input.a & 15402u, select(u_input.a, u_input.a, arg_2.c)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54624u), vec2<u32>(4294967295u, 6984u)), u_input.a, 39957u))) & select(firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(20571u, u_input.b, 58207u), vec3<u32>(1u, u_input.b, u_input.b))), vec3<u32>(func_2().b, u_input.a, ~0u), !(!(!vec3<bool>(false, false, global1.x))));
    global0 = array<Struct_3, 16>();
    return global1.wyy;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> i32 {
    var var_0 = vec4<u32>(u_input.b, u_input.b, 41914u, 1u >> (u_input.a % 32u));
    global0 = array<Struct_3, 16>();
    var var_1 = func_2();
    var var_2 = false;
    let var_3 = func_3(_wgslsmith_mult_i32(var_1.e.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17480i, arg_2.x, global2.d.x, u_input.c), abs(vec4<i32>(arg_2.x, 12614i, u_input.c, var_1.e.d.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-28103i, 0i, 1i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.d.x, -1i, 1i, 10528i), vec4<i32>(u_input.c, -6575i, global2.d.x, -64484i))))), -645f, func_2().e, vec4<f32>(global2.b, -433f, var_1.d, var_1.c.x));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(func_1(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + global2.b), firstTrailingBit(global2.d), global2.a.x), reverseBits(-abs(global2.d.x)), global2.d.x), vec3<i32>(-1i) * -global2.d);
    let var_1 = u_input.a;
    global2 = func_2().e;
    global2 = func_2().e;
    var var_2 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, global2.d.x, 363i), -8312i ^ global2.d.x), global2.d.x, _wgslsmith_add_i32(-4402i, _wgslsmith_add_i32(41268i, -1i)), ~(-global2.d.x))) & countOneBits(vec4<i32>(min(~u_input.c, ~27192i), var_0.x, ~firstTrailingBit(-1i), ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(vec2<i32>(~(-1i), -var_0.x)));
}

