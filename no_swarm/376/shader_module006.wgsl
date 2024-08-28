struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-1086i, i32(-2147483648), 73494i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-9418i, -53562i, -1i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(-20563i, -47611i, -35500i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(1i, -60764i, i32(-2147483648)), vec3<i32>(-1i, 24469i, -1i), vec3<i32>(-4440i, i32(-2147483648), 2147483647i), vec3<i32>(10364i, -39020i, -4856i), vec3<i32>(1i, -12999i, -18144i), vec3<i32>(-1534i, -2017i, i32(-2147483648)), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -26872i, 39724i), vec3<i32>(-2575i, 11597i, 0i), vec3<i32>(-1i, 22470i, i32(-2147483648)), vec3<i32>(-12645i, -31014i, -9855i), vec3<i32>(26789i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 66595i, -1i), vec3<i32>(2147483647i, 1i, 27711i), vec3<i32>(0i, -1i, 25805i), vec3<i32>(-1i, 94067i, -1i), vec3<i32>(2147483647i, 2147483647i, -61028i), vec3<i32>(2147483647i, 2147483647i, 16202i), vec3<i32>(10683i, 13148i, 1i), vec3<i32>(2147483647i, 1i, -9017i), vec3<i32>(-9259i, -32872i, 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global0 = array<vec3<i32>, 28>();
    let var_0 = arg_1;
    global0 = array<vec3<i32>, 28>();
    let var_1 = arg_1.b.e;
    global0 = array<vec3<i32>, 28>();
    return 1546f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> bool {
    let var_0 = Struct_2(arg_2.x, Struct_1(u_input.a.zxx, arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.x)), vec2<f32>(-1000f, -1757f)))), (_wgslsmith_mod_i32(2147483647i, u_input.c) | _wgslsmith_sub_i32(19041i, -8631i)) >> (arg_0.x % 32u), u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.c, i32(-1i) * -u_input.c, reverseBits(u_input.c) << (_wgslsmith_add_u32(1u, arg_0.x) % 32u)), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, 22240u), ~65768u)), 28u)]));
    var var_1 = ~4294967295u;
    var var_2 = var_0.b;
    let var_3 = Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1310f, arg_1.x, var_2.c.x, -369f)) - vec4<f32>(arg_1.x, -1151f, 1706f, 998f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1929f, -229f, arg_1.x, 1160f)))) * _wgslsmith_f_op_vec4_f32(-var_0.b.b)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, -1182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, var_2.c.x)) + 148f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(~vec3<u32>(4294967295u, 32868u, 74666u), Struct_3(4294967295u, Struct_1(vec3<u32>(4294967295u, var_2.a.x, 80237u), var_2.b, var_2.c, -28340i, var_2.e), var_0.b.b.x), u_input.a, Struct_1(vec3<u32>(var_2.a.x, arg_0.x, var_0.b.a.x), vec4<f32>(674f, var_0.b.b.x, 854f, 860f), vec2<f32>(var_2.c.x, -230f), -14921i, var_2.e)))))), var_2.d, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(~u_input.c, u_input.c), -2147483647i));
    let var_4 = max(47815u, ~(~(~min(arg_0.x, var_0.b.a.x))));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    var var_0 = 2147483647i;
    global0 = array<vec3<i32>, 28>();
    let var_1 = !vec3<bool>(true | all(vec4<bool>(true, true, true, true)), select(func_2(abs(vec2<u32>(u_input.b, u_input.a.x)), arg_0.b.b, select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), true | all(vec2<bool>(false, true)), true), false);
    var var_2 = arg_0.c;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.b.x)));
    return _wgslsmith_clamp_i32(~u_input.c, -2147483647i & ~u_input.c, -u_input.c << ((~arg_0.a >> (~4295u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, Struct_1(u_input.a.wxy, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, -2286f, true)), -1084f, -718f, -1922f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1312f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(488f, -1586f, true)))), u_input.c, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(7608u, 28u)], vec3<i32>(0i, u_input.c, 31750i)), vec3<i32>(-23409i, u_input.c, _wgslsmith_mult_i32(-1i, u_input.c)))), vec3<i32>(~_wgslsmith_add_i32(-2147483647i, 2147483647i), ~select(-8262i, u_input.c, false), -1i) & min(vec3<i32>(u_input.c, func_1(Struct_3(u_input.a.x, Struct_1(u_input.a.zww, vec4<f32>(1435f, -357f, -1007f, -1000f), vec2<f32>(310f, -1530f), -2147483647i, -20047i), 1149f), global0[_wgslsmith_index_u32(0u, 28u)]), u_input.c), global0[_wgslsmith_index_u32(~abs(u_input.b), 28u)]));
    var var_1 = vec4<u32>(~var_0.b.a.x, ~countOneBits(u_input.b), 1u, u_input.b);
    global0 = array<vec3<i32>, 28>();
    var var_2 = vec2<f32>(var_0.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(var_0.b.b.x + 130f)))), -2394f));
    var_1 = select(~reverseBits(~abs(u_input.a)), select(firstTrailingBit(~vec4<u32>(u_input.a.x, 20987u, var_0.b.a.x, var_1.x)) | ~(vec4<u32>(var_0.b.a.x, 4294967295u, 28680u, u_input.a.x) ^ vec4<u32>(12419u, u_input.a.x, 25228u, u_input.b)), u_input.a >> ((u_input.a ^ select(vec4<u32>(4294967295u, var_1.x, var_1.x, 0u), vec4<u32>(99538u, u_input.a.x, u_input.b, var_1.x), true)) % vec4<u32>(32u)), var_0.a), vec4<bool>(true, var_0.a, !any(vec2<bool>(var_0.a, var_0.a)), !var_0.a));
    var var_3 = -(-_wgslsmith_clamp_vec2_i32(var_0.c.yx, vec2<i32>(u_input.c, -21869i), min(vec2<i32>(13864i, u_input.c), var_0.c.zy)) & vec2<i32>(-57035i, select(firstTrailingBit(u_input.c), -1i, var_0.a)));
    var var_4 = ~(~(~_wgslsmith_sub_u32(~0u, ~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(26061u, var_1.x), vec4<i32>(u_input.c, select(_wgslsmith_div_i32(42856i, var_0.c.x), _wgslsmith_mod_i32(var_0.c.x, var_3.x), var_0.a) >> (_wgslsmith_mod_u32(15125u ^ u_input.a.x, ~u_input.a.x) % 32u), 12360i, var_3.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), var_0.b.a.x), select(abs(vec4<i32>(var_3.x, 2147483647i, u_input.c, var_3.x) | vec4<i32>(u_input.c, var_0.b.d, -49548i, var_0.b.d)), vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.c, -35405i), countOneBits(var_0.c.x), var_3.x, var_0.c.x | var_3.x), vec4<bool>(false != var_0.a, true, false, var_2.x >= var_2.x)) >> (vec4<u32>(~4294967295u | (var_1.x >> (1u % 32u)), 41125u, u_input.b, u_input.a.x) % vec4<u32>(32u)));
}

