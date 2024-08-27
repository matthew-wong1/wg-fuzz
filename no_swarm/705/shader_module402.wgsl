struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, Struct_1(vec2<f32>(197f, -481f)), Struct_1(vec2<f32>(1000f, -615f)));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: f32 = -583f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: u32) -> i32 {
    var var_0 = Struct_4(arg_0.a, global0.c);
    let var_1 = vec3<bool>(false, false, !(!all(vec3<bool>(true, true, true))));
    global0 = var_0.a;
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))))));
    var var_2 = Struct_2(global0.a, global0.c, var_0.b);
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(0i), 1i, -(~u_input.a), func_3(Struct_3(arg_0, 29658u, arg_0.b, vec2<bool>(true, true), global0.c.a.x), i32(-1i) * -3712i, ~vec4<u32>(3226u, arg_0.a, arg_0.a, arg_0.a), 75234u)) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_0.a, global0.a, 1u, 43796u) >> (vec4<u32>(4294967295u, 9827u, global0.a, 0u) % vec4<u32>(32u))), ~vec4<u32>(1u, 45641u, 8628u, 21447u) | _wgslsmith_add_vec4_u32(vec4<u32>(1631u, 26490u, global0.a, 4294967295u), vec4<u32>(arg_0.a, 76880u, 143149u, arg_0.a))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-46798i, -1i, _wgslsmith_mod_i32(arg_1 >> (40124u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), global1[_wgslsmith_index_u32(arg_0.a, 24u)])), -44509i), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 23976i, u_input.d, 1i), select(vec4<i32>(-8167i, 2147483647i, -24813i, u_input.d), vec4<i32>(7700i, u_input.b.x, -25886i, u_input.a), true)))));
    let var_1 = any(vec3<bool>(select(true, true, any(vec4<bool>(true, true, true, true))) || all(vec2<bool>(false, false)), true, select(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), true & select(true, false, false), true)));
    global0 = Struct_2(arg_0.a, Struct_1(arg_0.c.a), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.a)));
    return vec3<f32>(_wgslsmith_f_op_f32(global0.c.a.x - global0.b.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.a.x))), _wgslsmith_div_f32(-583f, 960f), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x))) + global0.c.a.x));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(~(-_wgslsmith_div_i32(2147483647i, 12478i))) | u_input.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(58563u, Struct_1(vec2<f32>(arg_0.a.x, 1404f)), Struct_1(vec2<f32>(-1116f, -2365f))), u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, global0.c.a.x, 287f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -467f, 603f)))));
    var var_2 = -2147483647i;
    var var_3 = Struct_4(Struct_2(global0.a, global0.b, Struct_1(_wgslsmith_f_op_vec2_f32(global0.b.a * vec2<f32>(global0.b.a.x, global0.c.a.x)))), global0.c);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(abs(vec4<u32>(var_3.a.a, var_3.a.a, 7099u, global0.a) ^ vec4<u32>(var_3.a.a, 0u, 18068u, var_3.a.a))), countOneBits(vec4<u32>(global0.a, global0.a, 4294967295u, global0.a) >> (vec4<u32>(global0.a, global0.a, var_3.a.a, global0.a) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(~global0.a, 1u, _wgslsmith_div_u32(var_3.a.a, global0.a), ~global0.a), ~(~(vec4<u32>(global0.a, global0.a, var_3.a.a, 14206u) | vec4<u32>(4294967295u, var_3.a.a, 4294967295u, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-3444i) <= (18216i | u_input.a);
    let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(max(1u, func_1(Struct_1(global0.b.a))), abs(~13413u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(34837u, 54094u, 8756u), vec3<u32>(34097u, 1u, 46527u))), 1u), min(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global0.a, 4294967295u, 4294967295u), ~vec4<u32>(0u, 17159u, 28237u, global0.a)), reverseBits(firstTrailingBit(vec4<u32>(0u, global0.a, global0.a, global0.a)))));
    global0 = Struct_2(81075u, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(-586f, 275f, var_0)), global0.b.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, global0.b.a.x))))));
    let var_2 = Struct_2(global0.a, Struct_1(vec2<f32>(global0.c.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(258f, global0.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1176f), true)))), global0.c);
    global1 = array<vec3<i32>, 24>();
    let var_3 = !all(!(!vec3<bool>(var_0, var_0, var_0))) && var_0;
    var var_4 = Struct_3(Struct_2(37874u, var_2.b, var_2.b), ~(abs(1u) << (1u % 32u)), Struct_1(var_2.c.a), vec2<bool>(true, true), 1268f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(_wgslsmith_sub_u32(~var_1.x, global0.a & 28067u), _wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~var_4.b), select(4294967295u, firstLeadingBit(1u), true)) ^ _wgslsmith_div_vec3_u32(min(vec3<u32>(0u, global0.a, 0u), firstLeadingBit(var_1.xxx)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, 0u, 12443u), vec3<u32>(4294967295u, var_4.a.a, 25032u))), vec4<f32>(-576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-100f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.a.x)))), var_2.c.a.x), global0.b.a.x);
}

