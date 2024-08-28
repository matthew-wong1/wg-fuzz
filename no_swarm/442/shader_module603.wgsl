struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<i32>, 24>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 1u, 68141u);

var<private> global3: array<vec2<bool>, 15>;

var<private> global4: array<vec3<u32>, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = ~abs(~(~(~1u)));
    var var_1 = vec3<u32>(global0.b.a.x, arg_0.b.x, global2.x);
    let var_2 = arg_0;
    global3 = array<vec2<bool>, 15>();
    var var_3 = _wgslsmith_mult_i32(countOneBits(u_input.a.x), 2280i << (var_1.x % 32u));
    return firstTrailingBit(select(~arg_0.b, var_2.b, all(!select(vec2<bool>(var_2.a.b, var_2.a.b), global3[_wgslsmith_index_u32(18103u, 15u)], global3[_wgslsmith_index_u32(6462u, 15u)]))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(global0.c, func_3(Struct_2(Struct_1(global2.xzz, true), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global2.x, global2.x, global0.a.a.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.a.x, global0.c.a.x, global2.x, global0.a.a.x), vec4<u32>(global0.c.a.x, global0.c.a.x, 10930u, 0u), vec4<u32>(global2.x, global2.x, 1u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(437f, -1451f, arg_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -397f);
    var var_3 = false;
    var var_4 = -(_wgslsmith_div_vec3_i32(min(-vec3<i32>(0i, 59688i, -2147483647i), vec3<i32>(-53111i, u_input.a.x, -46290i) ^ vec3<i32>(24642i, -2147483647i, u_input.a.x)), abs(min(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)))) | select(-abs(vec3<i32>(u_input.a.x, u_input.a.x, 6932i)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -24890i), min(15493i, -5254i), -2147483647i << (global2.x % 32u)), select(select(vec3<bool>(false, global0.a.b, var_1.a.b), vec3<bool>(true, false, true), global0.c.b), select(vec3<bool>(global0.c.b, global0.c.b, var_1.a.b), vec3<bool>(global0.c.b, false, var_1.a.b), false), all(vec2<bool>(global0.b.b, global0.a.b)))));
    return Struct_2(Struct_1(func_3(Struct_2(Struct_1(global0.b.a, false), var_1.b), _wgslsmith_f_op_vec3_f32(-arg_0)).xxy ^ vec3<u32>(func_3(var_1, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)).x, abs(47175u), abs(1u)), ~_wgslsmith_mult_u32(1u, var_1.b.x) > global2.x), vec4<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, var_1.b.x, var_1.a.a.x), global0.c.a)), _wgslsmith_sub_u32(4485u, 0u)), ~firstTrailingBit(var_1.a.a.x) ^ ~(global2.x ^ var_1.b.x), _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(4294967295u, var_1.a.a.x), abs(global2.x)), 29u)], ~(var_1.a.a & vec3<u32>(62501u, 0u, global2.x))), ~(~32774u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.a.x, global0.a.a.x), ~vec2<u32>(7844u, var_1.b.x)) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), 928f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2443f, -1000f), 467f, u_input.a.x >= 0i)))).a, func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-789f, -1606f, -1737f), vec3<f32>(427f, -1083f, -422f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1437f, -500f, 1362f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1764f, -704f, -2052f) * vec3<f32>(990f, -1144f, -1635f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -210f, -1000f)))))).a, arg_0);
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-320f)))));
    var var_3 = ~_wgslsmith_mod_i32(max(reverseBits(-61541i), u_input.a.x), u_input.a.x);
    let var_4 = !select(vec2<bool>(true, true), global3[_wgslsmith_index_u32(~arg_1.a.x, 15u)], vec2<bool>(true, true));
    return reverseBits(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, -1170f, -181f))).b);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = vec4<u32>(firstTrailingBit(global0.c.a.x) << (6614u % 32u), global0.c.a.x, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(~global0.b.a.x, 29u)], ~(vec3<u32>(64855u, 53789u, global0.c.a.x) ^ _wgslsmith_add_vec3_u32(global0.c.a, vec3<u32>(global0.c.a.x, 0u, 46920u)))), global2.x);
    var var_0 = Struct_2(global0.a, func_4(global0.b, global0.b, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1086f, -890f, 296f)))));
    let var_1 = (-vec2<i32>(-15441i, 86978i) << (vec2<u32>(var_0.b.x | min(global0.a.a.x, 4294967295u), _wgslsmith_add_u32(abs(0u), firstLeadingBit(0u))) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.b.a.x, 4294967295u | global2.x, _wgslsmith_mult_u32(global2.x, 4294967295u)), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(global0.c.a.x, var_0.a.a.x))), 0u) % vec2<u32>(32u));
    var var_2 = Struct_1(vec3<u32>(global0.c.a.x, 27001u, _wgslsmith_add_u32(min(global0.b.a.x, global2.x), global2.x)) | ~countOneBits(abs(global4[_wgslsmith_index_u32(35694u, 29u)])), arg_0);
    var var_3 = _wgslsmith_f_op_f32(-517f * -706f);
    return Struct_2(var_0.a, var_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = -(abs(i32(-1i) * -u_input.a.x) & u_input.a.x);
    var var_2 = u_input.a.x;
    global2 = arg_0.b;
    var var_3 = func_2(arg_2).a;
    return Struct_3(Struct_1(~vec3<u32>(global0.c.a.x | 78128u, arg_0.a.a.x, _wgslsmith_div_u32(arg_1.a.x, var_0.b.x)), !arg_1.b), arg_0.a, Struct_1(vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(trunc(arg_2))).b.x, 4294967295u, 47078u), ~(-33192i) <= ((i32(-1i) * -64067i) >> ((0u >> (global0.b.a.x % 32u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 15>();
    let var_0 = func_5(func_1(global0.a.b && global0.b.b), global0.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1566f)), _wgslsmith_f_op_f32(193f + -1533f))), _wgslsmith_f_op_f32(trunc(-822f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(451f, -818f)))), vec3<f32>(1f, 1f, 1f)), ~select(~global0.c.a.x, global2.x, !(u_input.a.x < u_input.a.x)));
    global4 = array<vec3<u32>, 29>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f + -271f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -174f), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(1154f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-866f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1054f, -249f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1525f - -1606f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-3478f, -1093f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-452f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f - 1081f)));
    global0 = Struct_3(var_0.b, global0.b, func_5(func_2(var_1.wwy), Struct_1(abs(global4[_wgslsmith_index_u32(reverseBits(global2.x), 29u)]), false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -277f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1407f, var_1.x, var_1.x))))), var_0.a.a.x).b);
    var var_2 = vec2<bool>(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, -913f, var_1.x))))))).a.b, (all(vec2<bool>(false, var_0.c.b)) && true) || !(!any(vec2<bool>(true, var_0.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(abs(u_input.a), vec2<i32>(13897i, -20026i)))), -vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(-u_input.a.x, select(2147483647i, u_input.a.x, global0.a.b)), -1i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) * -153f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-177f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.xwy), _wgslsmith_f_op_vec3_f32(-var_1.xww)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1 + var_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-269f, -2328f, var_1.x, -1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-499f - var_1.x), var_1.x, var_1.x))));
}

