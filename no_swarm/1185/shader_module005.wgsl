struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<bool>(true, true, true, true), 4294967295u), Struct_1(vec4<bool>(true, true, false, false), 0u)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 0u), Struct_1(vec4<bool>(false, false, false, false), 1u)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), 1u), Struct_1(vec4<bool>(false, false, true, true), 1u)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 19166u), Struct_1(vec4<bool>(false, false, false, false), 0u)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 4294967295u), Struct_1(vec4<bool>(false, false, false, false), 4294967295u)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 4294967295u), Struct_1(vec4<bool>(true, true, true, false), 62596u)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 1u), Struct_1(vec4<bool>(false, true, false, false), 0u)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 1u), Struct_1(vec4<bool>(true, true, false, false), 10104u)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 4294967295u), Struct_1(vec4<bool>(true, false, true, true), 0u)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 70799u), Struct_1(vec4<bool>(false, false, true, false), 29188u)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), 1u), Struct_1(vec4<bool>(true, true, false, false), 15835u)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 42802u), Struct_1(vec4<bool>(false, true, false, false), 65484u)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 36597u), Struct_1(vec4<bool>(true, true, false, false), 5418u)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1u), Struct_1(vec4<bool>(true, false, false, false), 60802u)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 30026u), Struct_1(vec4<bool>(true, true, false, false), 35462u)));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(global2.a, max(6222u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 7411u, global2.b) << (vec3<u32>(global2.b, 4294967295u, 85484u) % vec3<u32>(32u)), vec3<u32>(global2.b, global2.b, global2.b)))), Struct_1(vec4<bool>(false, any(global2.a), arg_1.x, _wgslsmith_clamp_i32(arg_2, -1i, u_input.a.x) < u_input.a.x), global2.b));
    var var_1 = arg_3.x;
    global0 = -17923i;
    global1 = array<Struct_2, 15>();
    var var_2 = ~(-34747i);
    return vec4<bool>(true | !(!any(vec4<bool>(arg_1.x, var_0.b.a.x, false, true))), false, arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, min(var_0.b.b, 4294967295u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(global2.b, global2.b))) < var_0.a.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = -721f;
    var var_1 = arg_1.a;
    let var_2 = arg_1.b.b;
    var var_3 = Struct_2(arg_1.b, arg_1.b);
    var_3 = global1[_wgslsmith_index_u32(30663u, 15u)];
    return Struct_1(!(!func_3(-arg_0.x, select(vec4<bool>(var_1.a.x, true, var_1.a.x, arg_1.a.a.x), vec4<bool>(true, false, arg_1.a.a.x, var_3.a.a.x), global2.a.x), -u_input.a.x, ~vec4<i32>(arg_0.x, -2147483647i, -27338i, u_input.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 4294967295u, var_1.b), ~_wgslsmith_mod_vec3_u32(vec3<u32>(23370u, 66941u, 82502u) ^ vec3<u32>(arg_2, 64779u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, var_3.b.b, 8603u), vec3<u32>(var_2, 42342u, 15988u)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global2 = arg_0.b;
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    var var_0 = -1i ^ -_wgslsmith_sub_i32(43148i, max(-1i, arg_1));
    return Struct_1(global2.a, global2.b ^ ~1u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = 1i;
    global2 = Struct_1(vec4<bool>(global2.a.x, !any(global2.a.wyw), true, !global2.a.x), 0u);
    var var_1 = Struct_2(Struct_1(global2.a, 48844u), func_4(Struct_2(func_2(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-34585i, 0i, 22421i, 0i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b, 4294967295u), 15u)], global2.b), Struct_1(func_3(0i, global2.a, u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, var_0, var_0)), global2.b >> (0u % 32u))), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, -1301f, 1565f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, 443f, -120f, arg_0))))), 35837u));
    global0 = -2147483647i;
    let var_2 = firstTrailingBit(~(global2.b & 3527u));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_f32(step(461f, -590f)));
    var var_0 = -1i;
    var_0 = -4499i >> ((_wgslsmith_mult_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, global2.b), vec2<u32>(4294967295u, global2.b)), global2.b), ~global2.b << (global2.b % 32u)) << (global2.b % 32u)) % 32u);
    var var_1 = min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, -18818i)), -vec4<i32>(u_input.a.x, -1i, -53570i, u_input.a.x) << (~vec4<u32>(1u, 61549u, 40723u, global2.b) % vec4<u32>(32u))), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-16404i, u_input.a.x, 21871i), vec3<i32>(-22830i, u_input.a.x, u_input.a.x)))), vec2<i32>(u_input.a.x, ~(~u_input.a.x)));
    global0 = ~var_1.x;
    let var_2 = var_1.x;
    global1 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(666i, var_1.x | -16634i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x))), vec4<i32>(min(_wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x), u_input.a.x), u_input.a.x, select(min(13829i, var_1.x), u_input.a.x ^ 2147483647i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, var_1.x, 2147483647i), vec4<i32>(-26245i, -1i, -20457i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, -1i)))), ~_wgslsmith_add_u32(global2.b, ~(0u >> (global2.b % 32u))));
}

