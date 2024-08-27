struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-1i, 992i, -16136i), vec3<i32>(880i, -467i, -39398i), vec3<i32>(1i, 0i, 0i), vec3<i32>(1i, -1i, 0i), vec3<i32>(0i, 18494i, -47223i), vec3<i32>(17391i, i32(-2147483648), 73064i), vec3<i32>(i32(-2147483648), 12331i, i32(-2147483648)), vec3<i32>(2147483647i, -7396i, 1i), vec3<i32>(52733i, 55508i, 2147483647i), vec3<i32>(-21997i, 2147483647i, -27859i), vec3<i32>(-39698i, 0i, -1i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(1i, -1i, 53476i), vec3<i32>(i32(-2147483648), 6881i, 22307i), vec3<i32>(-11680i, 50201i, -25071i), vec3<i32>(1i, 20117i, -2205i), vec3<i32>(11093i, -9006i, -8947i), vec3<i32>(-54121i, -28029i, -1i), vec3<i32>(0i, 32124i, 0i), vec3<i32>(2147483647i, 1i, 39027i), vec3<i32>(457i, 1i, 1i), vec3<i32>(30449i, 2147483647i, -33301i), vec3<i32>(27128i, 50579i, -12035i), vec3<i32>(-11746i, 0i, -21675i), vec3<i32>(i32(-2147483648), 2147483647i, 39498i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(2404i, -20967i, -19670i), vec3<i32>(1i, 23315i, i32(-2147483648)), vec3<i32>(-1i, 20100i, -111i), vec3<i32>(11547i, -49986i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -14677i, i32(-2147483648)), vec3<i32>(-1i, 0i, 2147483647i));

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_2 {
    return Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], abs(~reverseBits(u_input.c.wz)) << (~(firstLeadingBit(u_input.c.xz) >> (~u_input.c.yz % vec2<u32>(32u))) % vec2<u32>(32u)), (min(_wgslsmith_dot_vec2_i32(u_input.b, global1.wx), 2147483647i) << (~56305u % 32u)) != 0i, u_input.c.xzz);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = func_2().a;
    global1 = abs(var_0.a.b);
    let var_3 = var_2.b;
    return var_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<f32> {
    global3 = array<vec2<bool>, 19>();
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2, u_input.c), 0u, arg_2.x, 4294967295u), select(~(arg_2 | arg_2), u_input.c >> (firstLeadingBit(vec4<u32>(35594u, 40546u, 0u, arg_2.x)) % vec4<u32>(32u)), vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), 17348i > arg_1.c.x))) | arg_2;
    let var_1 = vec3<bool>(!(global1.x >= ~2147483647i), true, true);
    var var_2 = countOneBits(max(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, arg_1.c.x, 0i), vec3<i32>(-2147483647i, 48730i, global1.x) | global1.zzy), vec3<i32>(-2147483647i, -2147483647i, arg_1.b.x) >> (~vec3<u32>(30377u, 17469u, arg_2.x) % vec3<u32>(32u)))) & (vec3<i32>(arg_1.b.x, firstTrailingBit(-arg_1.c.x), _wgslsmith_dot_vec2_i32(func_2().a.b.zy, vec2<i32>(1i, arg_1.b.x))) | (select(~global1.xzx, vec3<i32>(-25056i, 7077i, u_input.a.x) ^ global1.zxx, true) >> (vec3<u32>(~u_input.c.x, 21911u | var_0.x, arg_2.x ^ u_input.c.x) % vec3<u32>(32u))));
    global2 = array<vec3<i32>, 32>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1674f)), _wgslsmith_f_op_f32(trunc(455f)), arg_0.x))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<u32> {
    global3 = array<vec2<bool>, 19>();
    global0 = array<Struct_1, 1>();
    global3 = array<vec2<bool>, 19>();
    var var_0 = func_1();
    var var_1 = i32(-1i) * -(min(_wgslsmith_dot_vec4_i32(var_0.a.b, var_0.a.b), min(2147483647i, -23267i)) >> (u_input.c.x % 32u));
    return vec4<u32>(28342u, ~(~9060u), _wgslsmith_add_u32(_wgslsmith_mod_u32(min(_wgslsmith_mult_u32(5553u, u_input.c.x), min(1u, 0u)), _wgslsmith_div_u32(u_input.c.x << (7041u % 32u), var_0.d.x)), ~u_input.c.x), 32206u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 32>();
    global2 = array<vec3<i32>, 32>();
    global1 = -reverseBits(vec4<i32>(global1.x, global1.x, min(reverseBits(57458i), ~(-1i)), global1.x));
    global0 = array<Struct_1, 1>();
    var var_0 = func_1();
    var var_1 = func_1().a;
    let var_2 = func_1();
    let var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec2_i32(global1.wy, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2.a.c.x, var_3, 1i), vec4<i32>(-18272i, u_input.a.x, var_0.a.c.x, -2147483647i)), -2147483647i)), var_2.a.c), abs(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(var_1.a, 1000f), var_2.a, u_input.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2085f, 577f, 684f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(279f - -1217f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, var_0.a.a)))), vec3<i32>(var_0.a.b.x, firstTrailingBit(29666i), ~40960i) << (~select(func_4(vec3<f32>(1251f, var_1.a, 911f)).zxx, u_input.c.xww, true) % vec3<u32>(32u)), var_2.a.c.x);
}

