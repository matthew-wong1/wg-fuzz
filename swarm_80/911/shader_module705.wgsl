struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(0u, 0i, vec4<f32>(-510f, -1001f, 334f, 452f)), Struct_1(4294967295u, 0i, vec4<f32>(761f, -225f, 338f, 1270f)), Struct_1(0u, -1i, vec4<f32>(677f, -359f, -349f, 802f)), Struct_1(125039u, 1i, vec4<f32>(1061f, -1087f, 670f, -536f)), Struct_1(8625u, i32(-2147483648), vec4<f32>(225f, -923f, -349f, 679f)), Struct_1(1u, 0i, vec4<f32>(-237f, 287f, -712f, -1069f)), Struct_1(62932u, -1i, vec4<f32>(300f, 529f, 655f, 657f)), Struct_1(4294967295u, -1i, vec4<f32>(-340f, 922f, -1370f, -539f)), Struct_1(1u, i32(-2147483648), vec4<f32>(-303f, 2188f, -1953f, -415f)), Struct_1(1u, 38954i, vec4<f32>(1873f, 1824f, -2137f, -1382f)), Struct_1(12609u, -1i, vec4<f32>(1153f, 1000f, -1219f, -2103f)), Struct_1(51106u, 11023i, vec4<f32>(1412f, -1695f, 101f, 785f)), Struct_1(13774u, i32(-2147483648), vec4<f32>(-2043f, 1907f, 627f, -1476f)), Struct_1(24884u, -7221i, vec4<f32>(1869f, 678f, 173f, -1591f)), Struct_1(41322u, 53620i, vec4<f32>(-985f, -546f, -148f, 2949f)), Struct_1(0u, 2147483647i, vec4<f32>(366f, -454f, -555f, 564f)), Struct_1(46910u, 75890i, vec4<f32>(253f, 562f, 1861f, 2296f)), Struct_1(6863u, -79741i, vec4<f32>(-614f, 242f, -386f, -1699f)), Struct_1(1u, 1i, vec4<f32>(-933f, -677f, -1850f, 517f)), Struct_1(38036u, 2147483647i, vec4<f32>(-758f, -1034f, 1162f, -738f)), Struct_1(17740u, 0i, vec4<f32>(-559f, -235f, 1136f, 962f)), Struct_1(0u, i32(-2147483648), vec4<f32>(218f, -1010f, 1000f, 1281f)), Struct_1(39943u, 11351i, vec4<f32>(-899f, -979f, 137f, -1163f)), Struct_1(1u, -1i, vec4<f32>(-287f, 1174f, -844f, -478f)));

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(reverseBits(min(vec4<u32>(0u, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(u_input.b, 0u, 43094u, 80477u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.a, 4294967295u), ~80865u, global0.a.a, ~1u), max(min(vec4<u32>(u_input.b, 1u, u_input.b, 100664u), vec4<u32>(66873u, arg_0.x, 0u, 1u)), vec4<u32>(arg_0.x, global0.a.a, global0.a.a, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(68063u, global0.b.a, 1u, u_input.b), ~vec4<u32>(52247u, 1u, 5398u, global0.b.a)))) ^ _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0.a.a, 4294967295u, 28529u, var_0.a)), vec4<u32>(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0, arg_0)), u_input.b, u_input.b));
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_2 = ~(-u_input.c.x);
    return _wgslsmith_div_i32(global0.d, var_0.b);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_1(u_input.b, ~max(func_3(~vec3<u32>(1u, 1u, u_input.b)), ~0i), _wgslsmith_f_op_vec4_f32(global0.b.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1028f, global0.b.c.x, arg_0), global0.b.c)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.b.c + global0.a.c))))));
    var var_1 = global0.b;
    var var_2 = global0.b;
    var var_3 = ~_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(global0.b.a, 39467u, u_input.b, var_0.a)), ~vec4<u32>(31514u, 1u, ~u_input.b, global0.b.a), _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 39384u, 25864u), vec4<u32>(var_0.a, var_2.a, global0.b.a, 5564u))), firstLeadingBit(reverseBits(vec4<u32>(21397u, var_2.a, 1u, var_0.a)))));
    let var_4 = global2[_wgslsmith_index_u32(var_3.x, 30u)];
    return 4294967295u;
}

fn func_1() -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, reverseBits(~u_input.b)), u_input.b, u_input.b), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14336u, 64936u, u_input.b), vec4<u32>(4294967295u, 0u, u_input.b, 26105u)), ~u_input.b), ~4294967295u), ~(~abs(81177u)), func_2(_wgslsmith_f_op_f32(sign(1f))))), 30u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x - -1290f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.c.x, 1737f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-738f, 1205f)))))));
    global2 = array<Struct_2, 30>();
    let var_2 = global2[_wgslsmith_index_u32(38034u, 30u)];
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.a, _wgslsmith_div_u32(u_input.b, u_input.b), 1u), vec3<u32>(48689u, var_2.b.a, 1u) | abs(vec3<u32>(0u, 12592u, u_input.b))), countOneBits(firstTrailingBit(select(vec3<u32>(global0.a.a, 1u, u_input.b), vec3<u32>(16888u, var_0.a.a, 0u), vec3<bool>(false, true, false))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = all(!vec4<bool>(true, false, ~u_input.c.x >= 38318i, all(vec3<bool>(true, false, true))));
    var var_1 = 0i;
    var_0 = !(global0.b.c.x < _wgslsmith_f_op_f32(abs(global0.b.c.x)));
    var_0 = all(!select(vec3<bool>(arg_1.x > -10154i, global0.c != global0.b.b, true), vec3<bool>(any(vec2<bool>(false, false)), true, select(true, true, false)), true));
    global2 = array<Struct_2, 30>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 30>();
    let var_0 = ~(vec2<u32>(abs(53171u), ~global0.b.a) << ((select(vec2<u32>(global0.b.a, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 4680u)), vec2<bool>(true, false)) >> (~vec2<u32>(40089u, global0.b.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = global2[_wgslsmith_index_u32(func_4(func_1(), u_input.d), 30u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1906f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(ceil(global0.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.c.x)))), _wgslsmith_f_op_vec3_f32(select(global0.b.c.yyy, vec3<f32>(_wgslsmith_f_op_f32(global0.a.c.x * 843f), global0.b.c.x, -872f), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(false, false, false)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))))));
    let var_3 = ~abs(countOneBits(_wgslsmith_div_vec4_i32(u_input.d, _wgslsmith_add_vec4_i32(u_input.c, u_input.c))));
    var var_4 = Struct_1(global0.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.d, 1i), global0.b.b, -3083i), ~(var_3.zwz | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 0i, -13775i), vec3<i32>(26633i, var_3.x, 1i)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2017f, 1838f, -1014f, 1000f), global0.a.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f + 664f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.c.x, var_2.x))) + _wgslsmith_f_op_f32(-1106f * var_4.c.x)), _wgslsmith_f_op_f32(trunc(-954f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) - -284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x + var_4.c.x)))), global0.b.c.x));
}

