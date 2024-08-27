struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: Struct_4 = Struct_4(false, 150f, vec3<f32>(-504f, 794f, 354f));

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(true, 2158f, vec3<f32>(-787f, 1335f, 284f)), Struct_4(true, 1057f, vec3<f32>(-520f, 1065f, 1000f)), Struct_4(false, 888f, vec3<f32>(1097f, -737f, -529f)), Struct_4(true, 649f, vec3<f32>(-1361f, -247f, -1555f)), Struct_4(true, 898f, vec3<f32>(126f, 447f, 1097f)), Struct_4(false, -547f, vec3<f32>(785f, -783f, -1034f)), Struct_4(true, -1185f, vec3<f32>(-1551f, 1197f, 1118f)), Struct_4(false, 750f, vec3<f32>(-1907f, 520f, -745f)), Struct_4(true, -193f, vec3<f32>(-1000f, -578f, 562f)), Struct_4(false, -483f, vec3<f32>(101f, 1872f, -843f)), Struct_4(true, -371f, vec3<f32>(-228f, 1000f, 261f)), Struct_4(true, 155f, vec3<f32>(586f, 1000f, 138f)), Struct_4(false, 1784f, vec3<f32>(1000f, -1000f, 795f)), Struct_4(false, 822f, vec3<f32>(383f, -1608f, 460f)), Struct_4(false, 1265f, vec3<f32>(836f, 2312f, 124f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global3 = array<Struct_4, 15>();
    global1 = u_input.d;
    let var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global2.a, global2.a), !global2.a), true));
    let var_1 = select(!(!(!(!vec2<bool>(global2.a, var_0)))), select(!select(select(vec2<bool>(var_0, false), vec2<bool>(false, false), true), vec2<bool>(true, global2.a), global2.a), select(select(vec2<bool>(false, false), vec2<bool>(global2.a, true), !vec2<bool>(var_0, global2.a)), !(!vec2<bool>(var_0, global2.a)), _wgslsmith_f_op_f32(abs(-141f)) > _wgslsmith_f_op_f32(min(arg_0.b, global2.c.x))), !select(vec2<bool>(true, true), vec2<bool>(global2.a, false), !vec2<bool>(global2.a, true))), !(arg_0.b > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-292f * arg_0.b), global2.c.x))));
    var var_2 = -1i;
    return 23273u;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = func_3(Struct_2(arg_0, 848f));
    global0 = !global2.a;
    let var_1 = Struct_1(var_0, global2.c);
    var var_2 = -(-vec2<i32>(-u_input.d, ~2147483647i) ^ ~vec2<i32>(_wgslsmith_mult_i32(u_input.d, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -4908i, u_input.d), vec3<i32>(-4398i, u_input.d, u_input.d))));
    let var_3 = !vec3<bool>(!(_wgslsmith_f_op_f32(exp2(arg_1.x)) != _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(36880i, 32501i, var_2.x), ~vec3<i32>(u_input.d, u_input.d, u_input.d)) >= _wgslsmith_sub_i32(~2147483647i, u_input.d), true);
    return Struct_2(~var_1.a, -411f);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(-abs(vec2<i32>(select(2147483647i, 0i, true), u_input.d)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-7136i, u_input.d)), ~reverseBits(vec2<i32>(-35583i, u_input.d)), vec2<i32>(0i, -2147483647i))));
    var var_1 = Struct_2(108640u, _wgslsmith_f_op_f32(-arg_1.c.x));
    var_1 = func_2(~((~38888u & _wgslsmith_sub_u32(16951u, arg_2)) & _wgslsmith_add_u32(arg_2, max(u_input.c, 4294967295u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(956f + var_1.b)), _wgslsmith_f_op_f32(round(var_1.b)))), arg_1);
    let var_2 = _wgslsmith_mult_u32(countOneBits(~var_1.a), 1u);
    global3 = array<Struct_4, 15>();
    return _wgslsmith_clamp_i32(select(firstLeadingBit(_wgslsmith_div_i32(-30307i, ~u_input.d)), u_input.d, var_1.b == _wgslsmith_f_op_f32(468f + 1f)), -u_input.d, u_input.d | _wgslsmith_clamp_i32(var_0.x, u_input.d, abs(u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true != all(vec2<bool>(u_input.d <= func_1(vec4<bool>(true, true, false, false), Struct_4(true, 1190f, vec3<f32>(global2.c.x, 827f, global2.c.x)), u_input.b.x, u_input.b.zz), global2.a));
    var var_1 = u_input.b.xx;
    global2 = Struct_4(!select(true, true, var_1.x > 13534u) | any(!select(vec3<bool>(true, global2.a, global2.a), vec3<bool>(global2.a, true, global2.a), false)), global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, 317f, global2.c.x)) + global2.c) + global2.c) - global2.c));
    var var_2 = u_input.d ^ _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.d, 34013i, u_input.d, u_input.d) << (vec4<u32>(var_1.x, var_1.x, 1u, 4294967295u) % vec4<u32>(32u))) >> (min(vec4<u32>(var_1.x, u_input.a, 1468u, var_1.x), vec4<u32>(var_1.x, u_input.c, 62852u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(~68129i, u_input.d, _wgslsmith_div_i32(47133i, u_input.d), 1i) & vec4<i32>(u_input.d, abs(u_input.d), -u_input.d, -u_input.d));
    global3 = array<Struct_4, 15>();
    let var_3 = vec3<u32>(8825u, u_input.b.x, ~abs(u_input.a));
    let var_4 = vec2<i32>(u_input.d, ~(~(~(-1i))));
    var var_5 = vec3<f32>(global2.c.x, -2652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2065f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(254f, 1061f, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(var_4.x, u_input.d, u_input.d), vec3<i32>(var_4.x, 34027i, u_input.d))) ^ min(vec3<i32>(min(-24671i, 1i), 0i, u_input.d), ~(-vec3<i32>(var_4.x, 0i, -2147483647i))));
}

