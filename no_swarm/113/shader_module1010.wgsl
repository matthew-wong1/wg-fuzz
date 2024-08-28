struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i, vec2<bool>(false, false), vec2<u32>(1u, 39438u), vec4<bool>(true, true, false, true), vec3<bool>(true, false, true)), vec4<i32>(-28145i, 1i, 1i, 1332i));

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = global0.a;
    let var_1 = -1041f;
    let var_2 = arg_1;
    global0 = Struct_2(Struct_1(global0.a.a, global0.a.e.xz, select(u_input.b.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_2.c.x), vec2<u32>(arg_2.c.x, u_input.b.x)) >> (arg_2.c % vec2<u32>(32u)), global0.a.b), var_0.d, vec3<bool>(var_0.e.x, arg_2.b.x, false)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-arg_2.a, 2147483647i, ~0i, 0i), -(vec4<i32>(-2147483647i, var_0.a, var_0.a, var_0.a) | vec4<i32>(var_0.a, -28011i, var_2, var_2)))));
    let var_3 = arg_2;
    return reverseBits(vec3<u32>(1u, 65673u, firstTrailingBit(~arg_0 ^ (1u ^ var_0.c.x))));
}

fn func_2() -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(global0.a.c.x >> (global0.a.c.x % 32u), 13u)];
    var var_0 = true | global0.a.d.x;
    var_0 = true;
    var_0 = global0.a.e.x;
    var var_1 = ~abs(func_3(~(~47890u), i32(-1i) * -6962i, global0.a));
    return Struct_2(global0.a, firstLeadingBit(vec4<i32>(global0.a.a, u_input.a.x, -_wgslsmith_div_i32(global0.b.x, 49361i), countOneBits(0i) << (global0.a.c.x % 32u))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global0 = func_2();
    var var_0 = abs(u_input.a.x);
    global1 = array<Struct_2, 13>();
    var var_1 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~global0.b, vec4<i32>(-1i, u_input.a.x, 2147483647i, -1i) << (vec4<u32>(27619u, 64199u, global0.a.c.x, global0.a.c.x) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_i32(global0.b, global0.b)) << (~(~select(abs(vec4<u32>(u_input.c.x, 0u, 1u, arg_1.c.x)), vec4<u32>(arg_1.c.x, u_input.b.x, 37203u, 1u) << (vec4<u32>(global0.a.c.x, 0u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), global0.a.d)) % vec4<u32>(32u));
    var var_2 = false;
    return arg_1.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> vec2<bool> {
    global0 = Struct_2(global0.a, global0.b);
    global1 = array<Struct_2, 13>();
    let var_0 = Struct_4(!arg_2, _wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, u_input.a.x, -29370i, arg_1), global0.b)), firstLeadingBit(global0.b) >> (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(30014u, 1u, global0.a.c.x, u_input.c.x), vec4<u32>(global0.a.c.x, u_input.c.x, u_input.c.x, 1u))) % vec4<u32>(32u))), Struct_2(func_2().a, (select(global0.b, global0.b, false) & (vec4<i32>(-34606i, -67634i, arg_1, arg_3.x) | global0.b)) & func_2().b), global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.c.x)), 13u)], func_2().a);
    global1 = array<Struct_2, 13>();
    var var_1 = var_0;
    return func_2().a.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = -(~3570i);
    let var_1 = all(!(!arg_0.d));
    var var_2 = arg_0.e;
    var_0 = _wgslsmith_mod_i32(arg_2 << (arg_0.c.x % 32u), -2147483647i);
    return Struct_2(Struct_1(0i, vec2<bool>(var_2.x, var_1), vec2<u32>(_wgslsmith_mod_u32(8931u, reverseBits(92795u)), func_3(global0.a.c.x, u_input.a.x, Struct_1(global0.a.a, vec2<bool>(false, true), u_input.b.xy, global0.a.d, arg_0.d.wwx)).x), select(!select(global0.a.d, vec4<bool>(true, false, true, false), global0.a.d), arg_0.d, var_2.x), !select(vec3<bool>(var_1, var_1, false), arg_0.e, arg_0.e.x)), vec4<i32>(_wgslsmith_mod_i32(arg_2, _wgslsmith_div_i32(-7794i, -1i)), 9948i, (1i | arg_0.a) | ~arg_2, arg_0.a) >> (max(vec4<u32>(_wgslsmith_sub_u32(arg_0.c.x, u_input.b.x), ~25102u, _wgslsmith_sub_u32(117681u, u_input.c.x), firstLeadingBit(u_input.b.x)), ~firstTrailingBit(vec4<u32>(69656u, u_input.b.x, 3226u, arg_0.c.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(global0.b.x, func_4(global0.a.d.zx, global0.b.x, true, vec3<i32>(-1i, func_1(Struct_3(vec2<f32>(655f, 2123f), global0.b.yyz, global0.a.d, vec4<f32>(139f, -929f, 187f, 581f)), global0.a), -1i)), global0.a.c, global0.a.d, global0.a.d.yxz), vec4<i32>(-reverseBits(_wgslsmith_clamp_i32(-13288i, global0.b.x, 70745i)), global0.a.a, _wgslsmith_mult_i32(~(~u_input.a.x), _wgslsmith_div_i32(global0.a.a, u_input.a.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(-3478i, u_input.a.x, 8015i), vec3<i32>(global0.b.x, 9477i, u_input.a.x))), u_input.a.x), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1874f, -1000f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1415f, 718f), vec2<f32>(-693f, 940f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-721f, -283f) + _wgslsmith_f_op_f32(-1347f + -945f)), -1000f)));
    global0 = global1[_wgslsmith_index_u32(0u, 13u)];
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(89333u, _wgslsmith_add_u32(~global0.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.a.c.x, global0.a.c.x, 4294967295u), vec4<u32>(global0.a.c.x, 53902u, 0u, u_input.b.x)))) | ~0u, 0u, _wgslsmith_mod_u32(global0.a.c.x, ~global0.a.c.x), ~max(23929u, u_input.c.x));
    var var_1 = Struct_1(select(~(-(~0i)), -1i, global0.a.e.x), vec2<bool>(global0.a.d.x, global0.a.e.x), ~(~_wgslsmith_sub_vec2_u32(select(global0.a.c, vec2<u32>(global0.a.c.x, global0.a.c.x), global0.a.d.yw), vec2<u32>(92767u, 4294967295u))), vec4<bool>(false, global0.a.e.x, true, _wgslsmith_mult_u32(abs(u_input.c.x), _wgslsmith_dot_vec2_u32(global0.a.c, vec2<u32>(u_input.c.x, 11822u))) != _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(27142u, var_0.x), var_0.yx, var_0.xy), ~vec2<u32>(var_0.x, 58890u))), global0.a.e);
    global1 = array<Struct_2, 13>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 139f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(925f, -915f))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-543f - 1637f))), 1f)), -(vec3<i32>(var_1.a, 14849i, -31739i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, global0.b.x), vec3<i32>(1i, global0.a.a, var_1.a))) | (max(firstLeadingBit(vec3<i32>(-19300i, -2147483647i, 24408i)), global0.b.xzx << (vec3<u32>(global0.a.c.x, 1u, 4294967295u) % vec3<u32>(32u))) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.a.a, var_1.a), vec3<i32>(var_1.a, 0i, 0i))), vec4<bool>(!any(var_1.d.xwx), var_1.d.x, global0.a.d.x, 0u >= _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.a.c.x, 29724u, global0.a.c.x), 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1788f), _wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(-1544f + 1819f)), _wgslsmith_f_op_f32(trunc(1414f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = func_2().a.b;
    let var_4 = vec4<bool>(true, func_4(!(!(!vec2<bool>(global0.a.e.x, true))), -(~global0.b.x), var_3.x, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 15272i, 0i), global0.b.yyy, vec3<i32>(var_2.b.x, 2147483647i, -7905i)) << (vec3<u32>(18352u, u_input.b.x, ~var_1.c.x) % vec3<u32>(32u))).x, any(func_5(Struct_1(0i, select(vec2<bool>(var_3.x, var_3.x), var_2.c.wx, vec2<bool>(true, false)), vec2<u32>(global0.a.c.x, global0.a.c.x), var_1.d, vec3<bool>(true, var_2.c.x, var_2.c.x)), global0.b, var_2.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.yw * var_2.a) + vec2<f32>(var_2.a.x, -1000f))).a.d), !(true | any(var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_i32(func_1(Struct_3(vec2<f32>(324f, var_2.a.x), var_2.b, vec4<bool>(var_4.x, global0.a.b.x, true, var_2.c.x), var_2.d), Struct_1(-35687i, vec2<bool>(true, false), vec2<u32>(var_1.c.x, var_0.x), var_1.d, vec3<bool>(true, global0.a.b.x, false))), -23419i)));
}

