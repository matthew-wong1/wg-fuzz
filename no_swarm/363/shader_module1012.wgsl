struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec2<f32>(-1572f, 556f), vec4<f32>(-609f, -155f, 887f, -1603f)));

var<private> global2: i32;

var<private> global3: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5) -> i32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.a.x), _wgslsmith_f_op_f32(-1396f - _wgslsmith_f_op_f32(max(-1000f, arg_1.b.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-632f + 1527f) * 778f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.a.b, vec4<f32>(arg_1.b.a.b.x, -2129f, _wgslsmith_f_op_f32(886f + 1440f), _wgslsmith_f_op_f32(-944f - -861f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_f_op_f32(-505f - arg_1.b.a.b.x)), _wgslsmith_f_op_f32(round(arg_1.b.a.b.x))), _wgslsmith_f_op_f32(select(-1446f, arg_1.b.a.b.x, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f * var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -177f))))) * _wgslsmith_f_op_vec4_f32(trunc(arg_1.b.a.b)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1032f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1147f, global1.a.b.x))))) + 1748f);
    let var_3 = Struct_2(true, _wgslsmith_div_i32(u_input.d, u_input.d), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.b.x, global3.a.b.x, _wgslsmith_f_op_f32(-232f * 1000f), _wgslsmith_f_op_f32(-var_0.a.x))))));
    let var_4 = Struct_5(select(vec4<bool>(any(!arg_1.a.wyz), true | global0.x, any(!vec3<bool>(arg_1.a.x, false, true)), false), select(select(arg_1.a, arg_1.a, select(arg_1.a, vec4<bool>(global0.x, true, true, arg_1.a.x), arg_1.a)), select(arg_1.a, vec4<bool>(true, true, true, true), var_3.a), select(!arg_1.a, !vec4<bool>(true, arg_1.a.x, false, true), any(vec3<bool>(false, false, false)))), all(!select(vec3<bool>(global0.x, true, true), arg_1.a.xwx, global0.x))), Struct_3(arg_1.b.a));
    return abs(var_3.b);
}

fn func_2() -> Struct_5 {
    let var_0 = global1.a.b.x;
    let var_1 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, -(~u_input.d), func_3(u_input.e, Struct_5(vec4<bool>(true, true, global0.x, true), Struct_3(Struct_1(global3.a.a, global1.a.b))))), min(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.d, u_input.d, u_input.d, 16376i), vec4<i32>(-1i, 0i, 5314i, u_input.b.x)), vec4<i32>(34874i, 41303i, u_input.d, 20184i), -vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, -5453i)), -(vec4<i32>(u_input.b.x, 49983i, u_input.b.x, u_input.d) ^ vec4<i32>(u_input.d, 2147483647i, 23685i, 1i)))), ~(~1i));
    global3 = Struct_4(global1.a);
    global3 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1846f))), _wgslsmith_f_op_f32(global1.a.a.x * _wgslsmith_div_f32(global1.a.a.x, -1426f))), global1.a.b));
    global0 = select(select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global0.x, false, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, global0.x, global0.x, false), false)), vec4<bool>(!global0.x, all(select(vec2<bool>(false, global0.x), global0.zz, global0.wx)), all(vec2<bool>(global0.x, false)), any(!vec4<bool>(global0.x, false, true, true))), global0.x), vec4<bool>(global0.x, false, all(global0.wx), any(global0.xy)), select(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, false)), select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(true, false, global0.x, global0.x), 4294967295u <= u_input.e.x), vec4<bool>(false, true, all(vec3<bool>(global0.x, false, false)), all(vec3<bool>(false, false, false)))), any(vec3<bool>(all(global0.yzx), any(vec2<bool>(global0.x, true)), global0.x))));
    return Struct_5(!select(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, false, true, true), true | global0.x), select(vec4<bool>(global0.x, true, false, false), !vec4<bool>(global0.x, global0.x, true, global0.x), false), global0.x), Struct_3(global1.a));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(global3.a.b.x, -1822f, global0.x)), global3.a.a.x, arg_1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-745f + -175f))))) * -918f));
    let var_1 = -abs(u_input.b) >> (vec3<u32>(1u, max(0u, abs(~1u)), firstTrailingBit(u_input.a >> (u_input.e.x % 32u))) % vec3<u32>(32u));
    let var_2 = global3.a;
    var var_3 = arg_0.b.a;
    let var_4 = any(vec4<bool>(global0.x, global0.x, arg_0.a.x, true));
    return max(0i << ((_wgslsmith_dot_vec3_u32(u_input.c.zwx, ~vec3<u32>(2204u, u_input.a, u_input.c.x)) & _wgslsmith_mult_u32(~4294967295u, ~4294967295u)) % 32u), firstLeadingBit(abs(1i)));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = global0.x;
    let var_1 = u_input.d;
    var_0 = global0.x;
    let var_2 = arg_0.b.x;
    global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(~firstLeadingBit(u_input.d)), func_4(func_2(), Struct_4(func_2().b.a)), -28391i, abs(-2147483647i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(3658i, -24955i, 2147483647i, -2147483647i), vec4<i32>(u_input.b.x, var_1, -10245i, 0i)), ~vec4<i32>(2147483647i, u_input.d, var_1, var_1))), vec4<i32>(i32(-1i) * -31261i, ~21298i | abs(var_1), var_1, max(var_1, ~var_1))));
    return func_2().b;
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    var var_0 = Struct_2(any(vec3<bool>(true, false, _wgslsmith_f_op_f32(-arg_0.b.a.a.x) <= 1f)), 22679i, func_1(arg_0.b.a).a);
    var var_1 = select(global0.zz, !(!select(!global0.zy, select(arg_0.a.wy, vec2<bool>(true, false), global0.x), arg_0.a.zy)), !arg_0.a.yy);
    var_1 = global0.yx;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1f))), global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x + var_0.c.a.x)))));
    global3 = Struct_4(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1109f), var_2.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, arg_0.b.a.b.x)), !var_0.a)), _wgslsmith_f_op_vec4_f32(global1.a.b - _wgslsmith_f_op_vec4_f32(-var_0.c.b)))).a);
    return Struct_4(arg_0.b.a);
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = u_input.c.wzx;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global1.a.a.x, -1393f, global3.a.a.x) + global1.a.b)))) * arg_2.a.b);
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 35246u), ~var_0.x, u_input.e.x), reverseBits(~vec3<u32>(var_0.x, 8176u, 99261u))), _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.c.wxy, vec3<u32>(countOneBits(0u), 3406u, abs(var_0.x)))), reverseBits(select(u_input.c.x, _wgslsmith_sub_u32(var_0.x, min(u_input.a, 42079u)), all(!vec4<bool>(false, false, global0.x, true)))));
    global2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(u_input.d, 2147483647i, global0.x | global0.x), select(max(64562i, u_input.b.x) >> (_wgslsmith_sub_u32(16580u, u_input.a) % 32u), ~_wgslsmith_clamp_i32(68765i, u_input.b.x, u_input.d), ~u_input.e.x < _wgslsmith_mult_u32(0u, 78703u))), _wgslsmith_add_i32(u_input.d, u_input.b.x));
    var var_3 = u_input.d;
    return !(!(!(!(!vec4<bool>(global0.x, true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_i32(abs(~(-_wgslsmith_clamp_i32(-1i, u_input.b.x, -22851i))), _wgslsmith_dot_vec3_i32(u_input.b, max(_wgslsmith_add_vec3_i32(u_input.b, -vec3<i32>(-63607i, u_input.b.x, 2104i)), countOneBits(u_input.b) ^ vec3<i32>(u_input.b.x, 9976i, u_input.b.x))));
    global3 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a.a, global1.a.a, global0.x)), vec2<f32>(global1.a.b.x, global1.a.a.x)) + _wgslsmith_f_op_vec2_f32(-global3.a.b.wy)), vec4<f32>(global1.a.b.x, global1.a.b.x, 1f, _wgslsmith_f_op_f32(global1.a.a.x * global3.a.a.x))));
    let var_0 = Struct_5(func_6(func_5(Struct_5(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), true), func_1(global1.a))), 317f, func_2().b), Struct_3(func_2().b.a));
    var var_1 = vec4<u32>(~reverseBits(reverseBits(~0u)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.c.xwx), ~18664u), firstLeadingBit(u_input.a)), ~(~max(u_input.e.x, _wgslsmith_div_u32(u_input.a, 1u))), min(select(firstLeadingBit(u_input.e.x) ^ 4161u, 38185u ^ ~u_input.e.x, global0.x), ~u_input.a));
    var var_2 = Struct_2(global0.x, u_input.d, global3.a);
    var var_3 = var_0;
    var_2 = Struct_2(func_6(func_5(func_2()), -504f, var_3.b).x, ~(-_wgslsmith_dot_vec3_i32(~u_input.b, -u_input.b)), var_0.b.a);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.a.x + 1000f), var_3.b.a.b.x));
    global0 = vec4<bool>(var_2.a & !var_2.a, true, var_0.a.x, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, 13614u), _wgslsmith_dot_vec3_u32(var_1.yyz, var_1.xzw)), u_input.a), u_input.e.x), ~u_input.c, abs(min(vec4<i32>(-23208i, -2147483647i, 59226i, 0i) << (u_input.c % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 15779i, var_2.b, u_input.b.x)) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.b, -2147483647i, 1581i), vec4<i32>(-2147483647i, u_input.d, 47086i, var_2.b)), -vec4<i32>(u_input.d, u_input.d, -57415i, -2147483647i))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i) * -u_input.b.yx), u_input.b.xz), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -980f), -1507f, _wgslsmith_f_op_f32(exp2(var_0.b.a.b.x))));
}

