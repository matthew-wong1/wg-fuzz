struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<bool>(true, true), vec4<i32>(2147483647i, 1i, -20094i, -74215i), Struct_1(-1031f, vec4<f32>(181f, -632f, 929f, 525f), vec4<i32>(0i, 20963i, 1i, i32(-2147483648))), -2616f), Struct_2(vec2<bool>(true, false), vec4<i32>(11243i, 27510i, i32(-2147483648), 1i), Struct_1(1000f, vec4<f32>(-1131f, -1398f, -570f, -442f), vec4<i32>(18638i, 19560i, i32(-2147483648), i32(-2147483648))), -341f), Struct_2(vec2<bool>(false, true), vec4<i32>(-19308i, -31505i, -1i, 2147483647i), Struct_1(112f, vec4<f32>(-168f, 322f, -385f, -1339f), vec4<i32>(-1i, 14661i, 0i, 60171i)), -150f), Struct_2(vec2<bool>(false, false), vec4<i32>(-11230i, 2147483647i, -4970i, 2147483647i), Struct_1(-1000f, vec4<f32>(-357f, -844f, 900f, -1458f), vec4<i32>(20377i, 64508i, 38666i, 21654i)), 706f), Struct_2(vec2<bool>(false, true), vec4<i32>(27838i, -31911i, 2147483647i, 0i), Struct_1(803f, vec4<f32>(965f, 683f, -448f, -413f), vec4<i32>(35449i, 1i, -11853i, -7197i)), -265f), Struct_2(vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, 1i, 0i), Struct_1(1872f, vec4<f32>(-1676f, 1321f, 409f, 1199f), vec4<i32>(3791i, -1i, i32(-2147483648), -1i)), 221f), Struct_2(vec2<bool>(false, false), vec4<i32>(32968i, 9308i, 0i, 0i), Struct_1(-569f, vec4<f32>(-992f, -1000f, 1017f, -1924f), vec4<i32>(2147483647i, 29337i, i32(-2147483648), -28538i)), 823f), Struct_2(vec2<bool>(true, false), vec4<i32>(-56557i, -37863i, -336i, -14419i), Struct_1(-805f, vec4<f32>(-1316f, -413f, -626f, 970f), vec4<i32>(25218i, -13503i, 24208i, -14585i)), -844f), Struct_2(vec2<bool>(true, true), vec4<i32>(-8372i, 0i, -1i, 2147483647i), Struct_1(-645f, vec4<f32>(717f, -155f, 1441f, -1000f), vec4<i32>(i32(-2147483648), 2147483647i, 48565i, 2979i)), -774f), Struct_2(vec2<bool>(true, false), vec4<i32>(16941i, -14751i, 30111i, 1i), Struct_1(-422f, vec4<f32>(1011f, -115f, -1284f, -862f), vec4<i32>(-1i, 2147483647i, 65347i, 0i)), 624f), Struct_2(vec2<bool>(true, false), vec4<i32>(2147483647i, -43698i, -49385i, 7277i), Struct_1(-986f, vec4<f32>(-2121f, 675f, -153f, 670f), vec4<i32>(2147483647i, 4071i, i32(-2147483648), 1i)), 769f));

var<private> global1: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f));
    let var_1 = _wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(61753u, arg_1.x), global1.d), ~_wgslsmith_dot_vec2_u32(u_input.e, arg_1.yx)), vec3<u32>(_wgslsmith_mod_u32(0u, global1.d), 27754u, 0u) >> (select(arg_1, ~vec3<u32>(4294967295u, u_input.e.x, 10319u), true) % vec3<u32>(32u)), select(vec3<bool>(true, true, any(vec2<bool>(true, arg_0.a.x))), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), vec3<bool>(any(arg_0.a), arg_0.a.x && false, true))), vec3<u32>(~4294967295u, 0u, 22044u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(u_input.e.x, arg_1.x, 34008u)), arg_1 >> (arg_1 % vec3<u32>(32u)), ~arg_1), ~arg_1 ^ ~vec3<u32>(arg_1.x, u_input.b, 1u)) >> (vec3<u32>(~_wgslsmith_div_u32(10696u, 4294967295u), 4294967295u ^ ~arg_1.x, ~9294u) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(sign(arg_0.c.a));
    global1 = Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.c.x, -2147483647i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(arg_0.c.c.x, arg_0.c.c.x)), _wgslsmith_div_i32(arg_0.b.x, u_input.a))), ~_wgslsmith_mod_vec2_i32(min(select(vec2<i32>(-8415i, global1.b.x), arg_0.b.wz, arg_0.a.x), global1.c.xz), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-8058i, -39453i)), min(vec2<i32>(arg_0.b.x, -29748i), arg_0.c.c.xw))), vec3<i32>(countOneBits((-23202i >> (arg_1.x % 32u)) << (~4294967295u % 32u)), ~arg_0.b.x, -(countOneBits(arg_0.b.x) << (~u_input.b % 32u))), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(36490u, 0u, u_input.e.x, 51098u) ^ vec4<u32>(1u, global1.d, u_input.b, 1u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(64506u, 39781u, var_1.x, 5634u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, u_input.c, 5808u, u_input.b), vec4<u32>(arg_1.x, 0u, global1.d, 0u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.d, 30718u, global1.d, 4294967295u), vec4<u32>(arg_1.x, global1.d, u_input.e.x, arg_1.x)))));
    global1 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(arg_0.c.c, vec4<i32>(-1i, arg_0.b.x, u_input.d, u_input.d))), ~(arg_0.c.c.ww >> (var_1.xx % vec2<u32>(32u)))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), countOneBits(vec2<i32>(u_input.a, arg_0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, 19911i), global1.a)), -vec2<i32>(arg_0.c.c.x, u_input.d)), ~select(global1.a, _wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, arg_0.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x, u_input.a), vec2<i32>(arg_0.c.c.x, -4030i))), arg_0.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_0.b.x, arg_0.b.x, 1i) & global1.c, abs(arg_0.c.c.zwz), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_0.a.x, false))), _wgslsmith_sub_vec3_i32(arg_0.c.c.xxx, _wgslsmith_add_vec3_i32(global1.c, global1.c))), select(vec3<i32>(-1i, arg_0.c.c.x, 49807i), global1.c & vec3<i32>(2147483647i, global1.a.x, arg_0.c.c.x), vec3<bool>(arg_0.a.x, false, true)) | ~arg_0.c.c.wwx), ~u_input.e.x);
    return abs(arg_1.x << (1u % 32u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> vec4<f32> {
    let var_0 = select(vec4<bool>((func_3(Struct_2(arg_2.b.zx, vec4<i32>(-27037i, -54640i, 7947i, -13380i), Struct_1(-743f, vec4<f32>(arg_2.a, arg_1, arg_1, -1284f), vec4<i32>(0i, -2147483647i, 2147483647i, global1.a.x)), -733f), vec3<u32>(4294967295u, 7094u, arg_0)) == arg_0) & (true && (arg_1 >= arg_2.a)), arg_2.b.x, true, !(abs(global1.d) == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, 1721u), vec4<u32>(arg_2.c, arg_0, u_input.c, 4294967295u)))), select(vec4<bool>(arg_3, true, arg_2.b.x | !arg_2.b.x, all(select(vec4<bool>(false, arg_3, false, false), vec4<bool>(arg_3, arg_2.b.x, false, arg_2.b.x), vec4<bool>(arg_2.b.x, false, arg_2.b.x, false)))), !(!select(vec4<bool>(arg_3, true, arg_2.b.x, false), vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(false, arg_3, false, false))), vec4<bool>(arg_1 != _wgslsmith_f_op_f32(ceil(arg_1)), arg_3, true, !any(arg_2.b))), select(!(!select(vec4<bool>(false, arg_3, true, arg_2.b.x), vec4<bool>(true, arg_2.b.x, arg_2.b.x, true), arg_2.b.x)), vec4<bool>(arg_3, true, arg_3, arg_3), select(!select(vec4<bool>(arg_3, true, true, false), vec4<bool>(arg_2.b.x, arg_3, false, arg_2.b.x), vec4<bool>(arg_3, arg_3, arg_2.b.x, false)), vec4<bool>(true, arg_3, arg_2.a >= 532f, true), select(vec4<bool>(arg_2.b.x, true, true, true), select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(false, true, true, false), true), false))));
    global1 = Struct_3(min(_wgslsmith_div_vec2_i32(countOneBits(global1.b), vec2<i32>(20674i, global1.a.x) << (_wgslsmith_mult_vec2_u32(u_input.e, u_input.e) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(min(global1.c.yz, global1.c.zz), vec2<i32>(-1i, u_input.a) | vec2<i32>(-1i, -2247i)) >> (u_input.e % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i ^ min(34875i, global1.c.x), global1.b.x), firstLeadingBit(vec2<i32>(~global1.c.x, abs(global1.c.x)))), global1.c << (vec3<u32>(~(69701u >> (arg_2.c % 32u)), arg_0, reverseBits(~30405u)) % vec3<u32>(32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, global1.d, 39541u), firstLeadingBit(vec3<u32>(22997u, arg_0, 23848u))), select(vec3<u32>(0u, 31495u, u_input.c), vec3<u32>(u_input.b, global1.d, arg_2.c), vec3<bool>(false, var_0.x, false)) | vec3<u32>(arg_2.c, global1.d, arg_2.c)), 4294967295u));
    var var_1 = select(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(~u_input.b, min(8456u, global1.d)) & ~_wgslsmith_clamp_u32(arg_0, 1u, arg_2.c)), _wgslsmith_clamp_u32(~64497u, firstTrailingBit(u_input.b), ~u_input.e.x), !any(!vec3<bool>(true, arg_2.b.x, false)));
    var_1 = arg_0;
    let var_2 = 0u;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(323f))), _wgslsmith_f_op_f32(arg_1 * 1172f), arg_2.a, -232f);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_1.b.x;
    var var_1 = -452f;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(536f, arg_1.a)));
    let var_3 = select(select(vec3<bool>(true, arg_1.b.x & true, _wgslsmith_dot_vec4_i32(vec4<i32>(24055i, -6204i, global1.c.x, global1.a.x), vec4<i32>(-2147483647i, 2147483647i, u_input.a, -23247i)) <= -45502i), arg_1.b, vec3<bool>(select(true, arg_1.b.x || true, arg_1.b.x), true, 30074u < _wgslsmith_dot_vec4_u32(vec4<u32>(20965u, 0u, 4294967295u, u_input.c), vec4<u32>(arg_0.x, u_input.c, arg_2, u_input.c)))), !(!select(vec3<bool>(true, true, true), arg_1.b, select(vec3<bool>(arg_1.b.x, true, false), arg_1.b, arg_1.b.x))), arg_1.b.x);
    let var_4 = _wgslsmith_div_u32(4294967295u >> (~(~1u) % 32u), abs(~arg_2));
    return select(i32(-1i) * -_wgslsmith_div_i32(u_input.d, global1.c.x), 1i, all(select(vec4<bool>(true, arg_1.b.x, false, true), vec4<bool>(arg_1.b.x, false, true, false), true)) || arg_1.b.x) & (i32(-1i) * -2147483647i);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_5 {
    global0 = array<Struct_2, 11>();
    var var_0 = ~0u;
    let var_1 = ~(~select(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, global1.c.x, -8187i, global1.c.x), abs(vec4<i32>(2147483647i, 0i, 1i, u_input.d))), firstTrailingBit(vec4<i32>(global1.a.x, u_input.a, u_input.d, u_input.d)), select(!vec4<bool>(arg_1, arg_1, true, true), !vec4<bool>(true, arg_1, arg_1, true), !vec4<bool>(true, arg_1, false, false))));
    global1 = Struct_3(reverseBits(-global1.c.yx), ~(-vec2<i32>(global1.a.x, var_1.x)), vec3<i32>(-11509i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, global1.c.x), u_input.d, func_4(abs(u_input.e), Struct_4(1000f, vec3<bool>(arg_1, true, arg_1), u_input.c), ~22735u, _wgslsmith_f_op_vec4_f32(func_2(1u, -784f, Struct_4(420f, vec3<bool>(false, true, false), 51349u), arg_1)))), -1i), 4294967295u);
    var var_2 = Struct_2(vec2<bool>(false, arg_1), firstTrailingBit(_wgslsmith_div_vec4_i32(select(var_1, var_1, vec4<bool>(false, arg_1, true, false)), var_1)) | var_1, Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(global1.d, 1000f, Struct_4(-228f, vec3<bool>(false, arg_1, arg_1), global1.d), true)).x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, 166f, 397f, 567f))))), countOneBits(min(vec4<i32>(-48232i, 23819i, 32653i, -1i), var_1 << (vec4<u32>(u_input.b, u_input.b, 63978u, arg_0) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(910f + _wgslsmith_f_op_vec4_f32(func_2(arg_0, -613f, Struct_4(1053f, vec3<bool>(false, false, false), arg_0), true)).x)));
    return Struct_5(Struct_4(_wgslsmith_f_op_f32(round(-1000f)), select(!select(vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(arg_1, var_2.a.x, true), arg_1), !select(vec3<bool>(arg_1, var_2.a.x, false), vec3<bool>(var_2.a.x, true, arg_1), vec3<bool>(var_2.a.x, var_2.a.x, false)), vec3<bool>(true, true, true)), u_input.b), !(!select(!vec3<bool>(arg_1, var_2.a.x, var_2.a.x), select(vec3<bool>(false, var_2.a.x, arg_1), vec3<bool>(true, var_2.a.x, false), false), any(vec2<bool>(false, false)))), arg_1, 14191i, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.d, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -2147483647i, -48166i), global1.c)), 53741i, -71567i & global1.a.x) < -8025i);
    var var_1 = func_1(1u, true).a;
    let var_2 = Struct_1(var_0.a.a, vec4<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.a)), var_0.a.a, false))), var_0.a.a, var_1.a), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(~global1.b.x, u_input.d, _wgslsmith_sub_i32(global1.a.x, var_0.e), -var_0.e)), -_wgslsmith_add_vec4_i32(min(vec4<i32>(0i, -30120i, -10807i, 2147483647i), vec4<i32>(u_input.a, 2147483647i, var_0.e, var_0.e)), abs(vec4<i32>(u_input.d, -2147483647i, global1.a.x, u_input.a)))));
    var var_3 = Struct_5(func_1(var_0.a.c, var_0.c || (reverseBits(var_0.e) <= _wgslsmith_clamp_i32(u_input.a, 2232i, -2147483647i))).a, vec3<bool>(any(vec3<bool>(!var_0.b.x, all(var_1.b), all(vec2<bool>(var_1.b.x, true)))), any(select(!vec4<bool>(var_0.a.b.x, var_1.b.x, false, true), vec4<bool>(var_1.b.x, var_0.b.x, var_1.b.x, false), any(vec2<bool>(var_1.b.x, var_1.b.x)))), var_0.a.b.x), any(func_1(u_input.c, any(select(vec4<bool>(var_0.c, var_0.a.b.x, false, true), vec4<bool>(true, var_0.c, true, true), var_1.b.x))).a.b.yz), u_input.d, global1.b.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) * _wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(265f - var_3.a.a), -535f, var_0.a.b.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(var_2.b)))))))), vec4<i32>(~(~var_3.d), _wgslsmith_dot_vec2_i32(global1.c.xx, vec2<i32>(~2147483647i, -487i)), ~var_3.d, _wgslsmith_clamp_i32(u_input.a, -31172i, u_input.a)));
    global1 = Struct_3(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(global1.b, var_4.c.yw), max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.d, var_4.c.x), vec2<i32>(var_4.c.x, global1.a.x)), var_4.c.wz >> (vec2<u32>(72646u, 51424u) % vec2<u32>(32u))) | ~select(global1.a, var_2.c.zz, var_3.a.b.zx)), global1.c.zy, -_wgslsmith_mult_vec3_i32(vec3<i32>(~global1.a.x, ~0i, -var_3.d), vec3<i32>(var_3.e, 6425i, var_3.e) << ((vec3<u32>(var_3.a.c, 7862u, 4294967295u) >> (vec3<u32>(73260u, var_0.a.c, global1.d) % vec3<u32>(32u))) % vec3<u32>(32u))), func_3(Struct_2(!(!var_3.b.xy), vec4<i32>(firstLeadingBit(global1.c.x), _wgslsmith_sub_i32(var_3.d, var_2.c.x), min(var_0.d, -22314i), var_4.c.x), var_2, _wgslsmith_f_op_f32(abs(-2180f))), select(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c, 4294967295u, 49253u), vec3<u32>(var_0.a.c, global1.d, var_1.c))), ~(~vec3<u32>(74049u, var_1.c, 36879u)), false)));
    var var_5 = var_0;
    var_5 = Struct_5(Struct_4(-423f, !(!var_5.b), var_5.a.c), select(vec3<bool>(true, true, true), select(var_0.b, var_1.b, vec3<bool>(true, true, true)), false), true, _wgslsmith_sub_i32(-645i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, var_0.e), -var_3.d, select(var_4.c.x, -14765i, true))) << (var_5.a.c % 32u), global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~1u, 16679u, ~45892u), 23189i, _wgslsmith_f_op_f32(-179f * -480f), -2147483647i);
}

