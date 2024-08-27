struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(true, vec2<bool>(false, true), vec4<bool>(true, true, true, true), 0i, vec4<i32>(9773i, 58862i, 13109i, 1170i));

var<private> global2: bool;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, vec2<bool>(false, false), vec4<bool>(true, true, false, true), -35633i, vec4<i32>(0i, -29616i, -75543i, 60012i)), Struct_1(false, vec2<bool>(true, true), vec4<bool>(true, true, true, true), 1i, vec4<i32>(-1i, -37325i, 0i, i32(-2147483648))), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, false, false, true), 2147483647i, vec4<i32>(i32(-2147483648), 1i, 2147483647i, 2147483647i)), Struct_1(true, vec2<bool>(false, false), vec4<bool>(true, true, false, false), 2147483647i, vec4<i32>(i32(-2147483648), -1i, -43475i, -25487i)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, false, true, false), 13717i, vec4<i32>(i32(-2147483648), -14167i, 783i, -32371i)), Struct_1(false, vec2<bool>(true, true), vec4<bool>(false, true, false, false), 50015i, vec4<i32>(36068i, 33474i, 11278i, i32(-2147483648))), Struct_1(true, vec2<bool>(false, true), vec4<bool>(true, false, true, true), 2147483647i, vec4<i32>(17178i, 2147483647i, 1i, 1i)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, false, false, false), -72154i, vec4<i32>(26700i, -32997i, 43139i, -40890i)), Struct_1(true, vec2<bool>(true, true), vec4<bool>(false, true, true, false), 45766i, vec4<i32>(-8457i, 24897i, 12466i, -37102i)), Struct_1(true, vec2<bool>(true, false), vec4<bool>(false, true, false, true), 1i, vec4<i32>(3712i, 2147483647i, 16459i, i32(-2147483648))), Struct_1(false, vec2<bool>(false, false), vec4<bool>(false, true, true, true), -21441i, vec4<i32>(-13208i, -32784i, 50792i, 0i)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(false, false, true, false), i32(-2147483648), vec4<i32>(1i, 16003i, i32(-2147483648), -36661i)), Struct_1(true, vec2<bool>(false, true), vec4<bool>(false, false, true, false), i32(-2147483648), vec4<i32>(-58355i, 1i, -18650i, i32(-2147483648))), Struct_1(false, vec2<bool>(true, true), vec4<bool>(true, true, true, true), 2147483647i, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, false, false, false), i32(-2147483648), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 18204i)), Struct_1(false, vec2<bool>(false, true), vec4<bool>(true, false, true, true), 2147483647i, vec4<i32>(62676i, 2147483647i, -1i, 0i)), Struct_1(true, vec2<bool>(false, false), vec4<bool>(true, false, false, false), 55143i, vec4<i32>(1i, -56068i, 41476i, -111i)), Struct_1(true, vec2<bool>(true, true), vec4<bool>(true, true, true, false), -5491i, vec4<i32>(0i, 18386i, i32(-2147483648), 2926i)));

var<private> global4: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = Struct_1(arg_0.c.x, !(!global1.b), global1.c, 0i, global1.e);
    global3 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.b, 5179u))), firstLeadingBit(15539u));
    global0 = !(!global1.c.x);
    global4 = array<vec4<bool>, 19>();
    return _wgslsmith_f_op_f32(-1f);
}

fn func_3() -> i32 {
    global1 = global3[_wgslsmith_index_u32(25614u, 18u)];
    global4 = array<vec4<bool>, 19>();
    global3 = array<Struct_1, 18>();
    global1 = global3[_wgslsmith_index_u32(u_input.b, 18u)];
    global3 = array<Struct_1, 18>();
    return u_input.a;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = ~(vec4<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, 4294967295u)), ~4294967295u, u_input.b | u_input.b, reverseBits(~u_input.b)) | ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, u_input.b), firstLeadingBit(vec4<u32>(1u, 0u, 18415u, 0u))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~firstTrailingBit(0u << (var_0.x % 32u)) >> (~var_0.x % 32u)), 18u)];
    var var_2 = ~(~var_0.wxz);
    let var_3 = vec3<i32>(29495i, max(firstLeadingBit(~func_3()), func_3()), var_1.d);
    global2 = !var_1.c.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(469f, -447f)), _wgslsmith_f_op_f32(-1227f * -2302f), true)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-590f))) + 395f), _wgslsmith_f_op_f32(trunc(593f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 19>();
    let var_0 = vec2<i32>(_wgslsmith_div_i32(21140i, global1.d) >> ((u_input.b << (5441u % 32u)) % 32u), ~0i);
    global3 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)])), _wgslsmith_f_op_f32(-2252f * -1356f))), _wgslsmith_f_op_f32(f32(-1f) * -931f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1i))))), _wgslsmith_div_f32(1317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-780f + -166f)))))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i))), _wgslsmith_div_f32(-936f, _wgslsmith_f_op_f32(max(-587f, _wgslsmith_f_op_f32(-557f - 1562f)))))));
    global2 = false;
    var var_2 = Struct_1(global1.b.x, select(select(select(!vec2<bool>(global1.a, false), vec2<bool>(false, true), select(vec2<bool>(true, false), global1.b, global1.c.x)), select(global1.b, !global1.c.wz, false), true), global1.c.ww, select(true, !(!global1.a), global1.c.x && !global1.a)), vec4<bool>(global1.b.x, true, global1.c.x, (-2147483647i >> (~u_input.b % 32u)) != global1.e.x), _wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_mult_vec4_i32(global1.e, global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(65820u, _wgslsmith_mult_u32(~0u, 1u)), countOneBits(select(vec2<u32>(18420u, u_input.b), vec2<u32>(18299u, 79487u), false)) >> (vec2<u32>(~u_input.b, countOneBits(0u)) % vec2<u32>(32u))), vec2<f32>(1f, _wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(189f))))), vec4<f32>(_wgslsmith_f_op_f32(1621f + 457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-119f, -525f), -600f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1438f + -503f))), vec3<i32>(~_wgslsmith_dot_vec3_i32(var_2.e.ywx << (vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u)), vec3<i32>(var_0.x, -24564i, var_0.x)), 12337i, ~(9595i << (u_input.b % 32u))), 2147483647i);
}

