struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(54201u, -712f, vec4<u32>(37227u, 22360u, 1u, 25994u), 185f, -1066f), Struct_1(0u, -1394f, vec4<u32>(4294967295u, 4294967295u, 1u, 10021u), 719f, 273f), Struct_1(49417u, 295f, vec4<u32>(0u, 4294967295u, 58401u, 22905u), -1693f, 108f), Struct_1(29529u, 1869f, vec4<u32>(0u, 37491u, 122130u, 1u), -765f, 361f), Struct_1(0u, 454f, vec4<u32>(619u, 4294967295u, 0u, 0u), -595f, -495f), Struct_1(1u, -1000f, vec4<u32>(74598u, 4294967295u, 117683u, 23856u), 1075f, 1704f), Struct_1(33369u, -2349f, vec4<u32>(4294967295u, 0u, 0u, 55234u), 1782f, 502f), Struct_1(40264u, -1520f, vec4<u32>(4294967295u, 29829u, 0u, 88592u), -1458f, 218f), Struct_1(43125u, -248f, vec4<u32>(68636u, 0u, 35619u, 70937u), 980f, -888f), Struct_1(4294967295u, -2875f, vec4<u32>(1u, 1u, 0u, 53631u), 951f, -954f), Struct_1(151031u, -759f, vec4<u32>(0u, 0u, 4294967295u, 0u), -750f, 707f), Struct_1(56487u, 670f, vec4<u32>(4294967295u, 0u, 4294967295u, 4052u), -1761f, -2215f), Struct_1(0u, -155f, vec4<u32>(4294967295u, 1u, 43787u, 4294967295u), -1000f, 1000f), Struct_1(4294967295u, 1007f, vec4<u32>(12259u, 73287u, 0u, 18243u), -381f, 688f));

var<private> global2: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = vec3<u32>(~70282u, ~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, ~max(u_input.a.x, 0u)), u_input.b.x);
    global2 = select(arg_0.xy, !vec2<bool>(any(vec4<bool>(false, global2.x, false, false)), true), !(!((u_input.d.x <= 14677i) | true)));
    var var_1 = _wgslsmith_div_i32(abs(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -15362i), u_input.d.xwy) >> (var_0.x % 32u))), ~(-_wgslsmith_mult_i32(u_input.d.x, -2147483647i)));
    var var_2 = 53300i;
    var var_3 = _wgslsmith_f_op_f32(197f + -1357f);
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(64554u, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.a.x, u_input.c) & vec2<u32>(27930u, u_input.c)) | ~u_input.a.zz, ~(~vec2<u32>(var_0.x, u_input.a.x)))), 14u)]);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, arg_1.a.b, _wgslsmith_f_op_f32(-518f + -2085f), _wgslsmith_f_op_f32(ceil(arg_2.e)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, arg_2.b)), _wgslsmith_f_op_f32(max(677f, 785f)), arg_1.a.b, -153f))))));
    global2 = vec2<bool>(all(select(!vec4<bool>(global2.x, true, global2.x, true), !vec4<bool>(global2.x, false, true, false), all(vec2<bool>(false, global2.x)))), false);
    global2 = vec2<bool>(false, global2.x);
    var var_1 = Struct_2(arg_1.a);
    let var_2 = arg_2.c.zyx & var_1.a.c.xxx;
    return !vec2<bool>(false, -1i > -select(arg_0, 2147483647i, global2.x));
}

fn func_2() -> StorageBuffer {
    var var_0 = select(select(vec2<bool>(_wgslsmith_div_i32(u_input.d.x, u_input.d.x) >= ~(-1i), any(!vec3<bool>(true, true, global2.x))), !select(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), !vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), global2.x)), global2.x), vec2<bool>(!global2.x, !global2.x), select(func_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, -11196i), u_input.d.x), func_1(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(false, true, global2.x, false))), func_1(vec4<bool>(global2.x, false, true, false)).a), vec2<bool>(global2.x, all(!vec2<bool>(global2.x, global2.x))), !func_3(0i << (u_input.a.x % 32u), func_1(vec4<bool>(false, false, global2.x, false)), Struct_1(u_input.b.x, -3452f, vec4<u32>(17507u, 71681u, u_input.c, u_input.b.x), 542f, 1064f))));
    var var_1 = Struct_2(func_1(select(vec4<bool>(true, !global2.x, func_3(2147483647i, Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), global1[_wgslsmith_index_u32(1u, 14u)]).x, false), !vec4<bool>(false, var_0.x, global2.x, false), select(!vec4<bool>(false, global2.x, true, true), vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(var_0.x, false, false, true)))).a);
    var var_2 = func_1(select(select(vec4<bool>(false, select(true, true, true), var_0.x, var_0.x), select(select(vec4<bool>(false, var_0.x, global2.x, false), vec4<bool>(var_0.x, false, global2.x, false), global2.x), !vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(true, global2.x, var_0.x, var_0.x)), all(!vec4<bool>(true, false, global2.x, false))), select(vec4<bool>(true, true, true, !global2.x), vec4<bool>(true, u_input.d.x == 33113i, !var_0.x, u_input.b.x == 1u), false), any(vec2<bool>(true, true))));
    global2 = select(select(select(!vec2<bool>(false, var_0.x), !vec2<bool>(global2.x, var_0.x), var_0.x), !select(!vec2<bool>(false, var_0.x), func_3(u_input.d.x, Struct_2(var_2.a), var_1.a), select(vec2<bool>(global2.x, var_0.x), vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x))), (~57521u & var_2.a.c.x) > ~(u_input.c << (10236u % 32u))), vec2<bool>(true, var_1.a.e <= _wgslsmith_f_op_f32(round(702f))), !(!select(func_3(u_input.d.x, Struct_2(Struct_1(30153u, var_2.a.d, var_2.a.c, var_2.a.d, var_1.a.d)), Struct_1(47768u, var_1.a.e, vec4<u32>(1u, var_2.a.a, 0u, u_input.b.x), -716f, 536f)), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), global2.x), !vec2<bool>(global2.x, true))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.a.c.xzw, vec3<u32>(~1u, u_input.c, 1u) & vec3<u32>(max(max(11318u, u_input.a.x), select(var_2.a.a, 69595u, var_0.x)), ~_wgslsmith_add_u32(34772u, u_input.c), _wgslsmith_div_u32(u_input.c << (var_1.a.a % 32u), ~27462u))), 14u)];
    return StorageBuffer(-350f, vec3<u32>(_wgslsmith_clamp_u32(var_3.a, ~var_1.a.a, abs(24838u)) << (0u % 32u), _wgslsmith_sub_u32(4294967295u, u_input.c), select(var_1.a.c.x & var_3.a, ~var_3.a, !var_0.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.a), u_input.b & vec2<u32>(8505u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1057f, var_2.a.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1200f, var_3.d)), _wgslsmith_f_op_f32(-1236f * 1019f))), _wgslsmith_f_op_f32(1451f + var_1.a.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_1.a.d, var_1.a.b, -1740f) * vec4<f32>(var_3.b, var_3.b, var_2.a.b, var_1.a.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 13>();
    global1 = array<Struct_1, 14>();
    global0 = array<vec4<i32>, 13>();
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(16552u, 1u)), 14u)]);
    var var_1 = func_1(!vec4<bool>(_wgslsmith_sub_i32(-2147483647i, u_input.d.x) >= u_input.d.x, global2.x && global2.x, (u_input.a.x | 0u) > 34677u, global2.x));
    let x = u_input.a;
    s_output = func_2();
}

