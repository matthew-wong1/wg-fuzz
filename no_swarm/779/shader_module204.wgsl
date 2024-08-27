struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: Struct_1 = Struct_1(1i, vec2<u32>(64744u, 0u), vec3<f32>(-641f, -443f, 2478f), false);

var<private> global1: array<vec4<bool>, 3>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = 1054f;
    let var_1 = arg_2;
    global0 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, 34878i), u_input.a), var_1.a), var_1.a << (26306u % 32u)), ~vec2<u32>(firstLeadingBit(~11710u), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_3.x), var_1.b.x | 65805u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(f32(-1f) * -1127f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, 1056f)))))), arg_0.d);
    var var_2 = _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1695f)) + global0.c.x), _wgslsmith_f_op_f32(-arg_2.c.x)));
    var var_3 = arg_0;
    return -34930i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(func_3(Struct_1(2147483647i, vec2<u32>(1u, _wgslsmith_add_u32(9752u, 2433u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, 816f, -181f) * global0.c))), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, -530f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, global0.c.x, -220f, global0.c.x))), Struct_1(_wgslsmith_dot_vec2_i32(abs(u_input.a), u_input.a), global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, global0.c.x, global0.c.x)), any(!vec2<bool>(arg_0, false))), vec2<u32>(~_wgslsmith_clamp_u32(global0.b.x, 1u, global0.b.x), global0.b.x)), global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(trunc(global0.c))), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), -476f, global0.c.x), arg_0)), true);
    var var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, firstTrailingBit(-31438i), _wgslsmith_add_i32(global0.a, ~29988i)), max(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-11904i, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, global0.a, u_input.a.x)), i32(-1i) * -2564i), -(~vec3<i32>(u_input.b, global0.a, global0.a))));
    var var_1 = Struct_1(30489i, vec2<u32>(~global0.b.x, min(1u, ~_wgslsmith_sub_u32(global0.b.x, global0.b.x))), global0.c, arg_0);
    global1 = array<vec4<bool>, 3>();
    var var_2 = countOneBits(-18620i);
    return Struct_1(_wgslsmith_dot_vec4_i32(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.x, global0.a), vec4<i32>(1i, -22564i, u_input.a.x, -17746i))), abs(-select(vec4<i32>(global0.a, -11422i, 7124i, 1i), vec4<i32>(-8i, 0i, 7929i, 1i), global1[_wgslsmith_index_u32(global0.b.x, 3u)]))), vec2<u32>(global0.b.x, var_1.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.x, -537f, 237f), global0.c)))), _wgslsmith_f_op_vec3_f32(max(global0.c, global0.c))), all(vec3<bool>(true, arg_0, true || global0.d)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = select(true | !((false || arg_1.d) && global0.d), all(vec2<bool>(true, true || select(true, arg_1.d, arg_1.d))), true);
    let var_1 = !vec2<bool>(all(!select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, arg_1.d), vec2<bool>(global0.d, true))), abs(~45385i) <= countOneBits(arg_0));
    var var_2 = ~(firstTrailingBit(~max(vec3<i32>(1i, arg_0, 1i), vec3<i32>(-1i, 1i, arg_1.a))) << (max(vec3<u32>(global0.b.x << (1u % 32u), reverseBits(arg_1.b.x), _wgslsmith_mult_u32(4294967295u, global0.b.x)), ~vec3<u32>(16815u, arg_1.b.x, 4552u)) % vec3<u32>(32u)));
    let var_3 = 1u;
    var var_4 = arg_1.c;
    return global0.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(~(-countOneBits(19911i)), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)) * _wgslsmith_div_vec3_f32(arg_3, global0.c))), false);
    var var_1 = global1[_wgslsmith_index_u32(max(~global0.b.x, abs(func_2(true).b.x)), 3u)];
    let var_2 = all(select(select(var_1.zxy, vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), !vec3<bool>(global0.d, global0.d, var_1.x), true)), select(!var_1.zxz, var_1.zzy, var_1.yzy), all(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global0.b.x ^ 42205u, var_0.b.x), 3u)])));
    let var_3 = _wgslsmith_sub_vec2_u32(arg_1.b, max(func_2(global0.c.x < var_0.c.x).b & min(~var_0.b, var_0.b >> (vec2<u32>(0u, 89015u) % vec2<u32>(32u))), ~(~_wgslsmith_mult_vec2_u32(global0.b, vec2<u32>(var_0.b.x, arg_2.x)))));
    let var_4 = _wgslsmith_div_u32(var_0.b.x, func_2(all(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60118u, global0.b.x, var_0.b.x), 3u)])).b.x & select(~(~22168u), 0u, any(vec3<bool>(var_0.d, var_1.x, false))));
    return Struct_1(u_input.a.x << (arg_2.x % 32u), _wgslsmith_clamp_vec2_u32(func_4(select(-arg_1.a, -27397i, false), Struct_1(~arg_1.a, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-arg_3), true)), firstTrailingBit(~reverseBits(global0.b)), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, var_3.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.b.x), arg_1.b, vec2<u32>(arg_2.x, 11613u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3, vec3<f32>(_wgslsmith_div_f32(arg_1.c.x, var_0.c.x), arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -628f)), false)) - vec3<f32>(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(global0.c.x + -696f)), _wgslsmith_f_op_f32(-1173f * -448f), 191f)), false);
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_4(arg_2.a, Struct_1(_wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -u_input.a.x), min(func_4(u_input.b, Struct_1(arg_2.a, global0.b, vec3<f32>(200f, arg_2.c.x, -326f), global0.d)) & reverseBits(vec2<u32>(arg_2.b.x, 36422u)), max(arg_2.b, vec2<u32>(arg_2.b.x, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.c, _wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(arg_2.c.x, arg_2.c.x, -143f)))))), func_5(64844u, Struct_1(reverseBits(arg_1.x), min(arg_2.b, vec2<u32>(global0.b.x, 56886u)), _wgslsmith_f_op_vec3_f32(trunc(arg_2.c)), true), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b.x, 1u, 4294967295u, arg_2.b.x), vec4<u32>(4294967295u, global0.b.x, 4294967295u, 0u), vec4<u32>(global0.b.x, 4294967295u, 30876u, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_2.c, global0.c), _wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, arg_2.d))))).d)).x;
    let var_1 = Struct_1(arg_1.x, vec2<u32>(~_wgslsmith_mult_u32(func_2(true).b.x, ~4294967295u), abs(~_wgslsmith_add_u32(36292u, arg_2.b.x))), func_5(abs(arg_2.b.x), arg_2, vec4<u32>(abs(4294967295u), global0.b.x, ~4988u, ~47353u) ^ min(select(vec4<u32>(arg_2.b.x, 1u, 33132u, global0.b.x), vec4<u32>(arg_2.b.x, 0u, 74841u, global0.b.x), global1[_wgslsmith_index_u32(13711u, 3u)]), vec4<u32>(27551u, 17909u, global0.b.x, 6389u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(func_5(arg_2.b.x, arg_2, vec4<u32>(global0.b.x, global0.b.x, 1u, global0.b.x), vec3<f32>(global0.c.x, -838f, global0.c.x)).c.x)), arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c.x)) - _wgslsmith_f_op_f32(select(2004f, arg_2.c.x, false))))).c, false);
    global1 = array<vec4<bool>, 3>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(arg_2.c.x - 1489f)))) > _wgslsmith_f_op_f32(-1893f - _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2004f)))));
    var var_3 = global1[_wgslsmith_index_u32(~func_4(-13897i, func_5(reverseBits(_wgslsmith_add_u32(global0.b.x, 0u)), arg_2, _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, global0.b.x, var_1.b.x, 1u), vec4<u32>(var_1.b.x, 6214u, 12928u, global0.b.x)), ~vec4<u32>(47987u, 73583u, var_1.b.x, 0u)), _wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(abs(arg_2.c)))))).x, 3u)];
    return func_2(true);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = func_6(_wgslsmith_dot_vec2_i32(vec2<i32>(-8343i, -(~(-1i))), ~u_input.a), vec3<i32>(1i, u_input.a.x, 1i), func_5(global0.b.x, Struct_1(u_input.a.x, func_4(u_input.b, func_2(false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -373f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, global0.c.x, 1350f))), false), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.b.x, global0.b.x, 66445u, 1u) & vec4<u32>(0u, global0.b.x, global0.b.x, 1u)), ~(vec4<u32>(0u, global0.b.x, global0.b.x, global0.b.x) << (vec4<u32>(global0.b.x, 39795u, 4337u, global0.b.x) % vec4<u32>(32u)))), global0.c));
    global1 = array<vec4<bool>, 3>();
    var var_1 = var_0.d;
    var var_2 = _wgslsmith_add_i32(func_2(true).a, firstTrailingBit(_wgslsmith_clamp_i32(0i, ~global0.a, u_input.a.x)));
    let var_3 = _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(global0.b.x, 76344u), func_5(4294967295u, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), vec4<u32>(10553u, var_0.b.x, global0.b.x, global0.b.x), var_0.c).b.x, global0.b.x)), (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, global0.b.x, 1u), vec3<u32>(var_0.b.x, global0.b.x, global0.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b.x, 4294967295u, 1u), vec3<u32>(4294967295u, global0.b.x, 97474u))) & (~vec3<u32>(32780u, 1u, 0u) & ~vec3<u32>(0u, var_0.b.x, 0u))) ^ vec3<u32>(~func_5(global0.b.x, var_0, vec4<u32>(global0.b.x, var_0.b.x, var_0.b.x, 49794u), vec3<f32>(-1994f, arg_0, -729f)).b.x, ~global0.b.x, ~func_4(global0.a, Struct_1(var_0.a, global0.b, vec3<f32>(-556f, 1551f, var_0.c.x), true)).x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(1i, max(~global0.b, ~vec2<u32>(~1u, ~global0.b.x)), _wgslsmith_f_op_vec3_f32(-global0.c), false);
    var var_0 = vec2<u32>(15045u, firstLeadingBit(global0.b.x) & global0.b.x);
    global1 = array<vec4<bool>, 3>();
    global0 = Struct_1(_wgslsmith_add_i32((global0.a ^ -22312i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), u_input.a), -1i) & -2147483647i, _wgslsmith_mod_vec2_u32(min(global0.b, vec2<u32>(59368u, 1u)) | _wgslsmith_add_vec2_u32(global0.b, global0.b), global0.b), global0.c, true);
    var var_1 = func_1(-223f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.a));
}

