struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<f32, 27> = array<f32, 27>(-646f, -1455f, -542f, 241f, 407f, -1503f, -736f, -1000f, -121f, 230f, -339f, 1000f, 1007f, 498f, 529f, 265f, -145f, -2219f, 1448f, -1123f, -205f, -1683f, -1125f, -2317f, 2387f, 1000f, -2224f);

var<private> global2: array<u32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = arg_1;
    var_0 = Struct_4(Struct_2(vec4<f32>(-861f, 685f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~var_0.a.e.x, 27u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_0.a.b, 17u)], 1u) | 0u, 27u)]), select(global2[_wgslsmith_index_u32(20998u, 17u)], arg_1.a.e.x, ~arg_1.a.b != u_input.a.x), max(vec4<u32>(arg_1.a.e.x | u_input.a.x, ~4294967295u, 1u, 4294967295u), vec4<u32>(~arg_1.a.c.x, abs(30533u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(32275u, 3418u), u_input.a.zw))), arg_0.b, countOneBits(select(min(vec2<u32>(u_input.a.x, var_0.a.e.x), u_input.a.yx), abs(vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 17u)])), true))));
    var var_1 = Struct_3(vec4<f32>(711f, _wgslsmith_f_op_f32(-arg_1.a.a.x), 815f, 1155f), Struct_1(arg_1.a.d.a, !vec4<bool>(any(arg_0.b.b.zxx), !arg_0.b.b.x, arg_1.a.d.a < arg_0.b.a, true)));
    let var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(var_0.a.d.a, -1i)), 28165i) << ((_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(15399u, 17u)], 1u)) >> (11457u % 32u)) % 32u), arg_0.b.b);
    var var_3 = Struct_4(Struct_2(arg_1.a.a, u_input.a.x, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.a.e.x, var_0.a.c.x, var_0.a.c.x), vec4<u32>(17710u, var_0.a.c.x, arg_1.a.e.x, 4294967295u)), 0u, global2[_wgslsmith_index_u32(4294967295u, 17u)] & var_0.a.e.x, abs(global2[_wgslsmith_index_u32(var_0.a.e.x, 17u)])), var_1.b, vec2<u32>(u_input.a.x, 53547u)));
    return vec4<f32>(-1707f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), 1666f, var_0.a.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_4 {
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    let var_0 = reverseBits(arg_2.x);
    global0 = array<bool, 28>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_div_u32(u_input.a.x, ~1u)), _wgslsmith_mult_u32(~(~(~0u)), _wgslsmith_sub_u32(min(32548u, 450u) & _wgslsmith_mod_u32(arg_0.x, var_0), firstTrailingBit(firstLeadingBit(4294967295u))))), 27u)];
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec4<f32>(214f, 461f, global1[_wgslsmith_index_u32(14053u, 27u)], -873f), Struct_1(0i, vec4<bool>(global0[_wgslsmith_index_u32(var_0, 28u)], global0[_wgslsmith_index_u32(12688u, 28u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))), Struct_4(Struct_2(vec4<f32>(-1176f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 146f), arg_2.x, vec4<u32>(var_0, 1u, u_input.a.x, 4533u), Struct_1(2147483647i, vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 17u)], 28u)])), vec2<u32>(31165u, u_input.a.x))))), 0u, _wgslsmith_mult_vec4_u32(countOneBits(arg_0), _wgslsmith_sub_vec4_u32(arg_0, u_input.a) ^ u_input.a), Struct_1(min(_wgslsmith_mult_i32(-56917i, 35820i), select(u_input.b.x, u_input.b.x, false)), vec4<bool>(!global0[_wgslsmith_index_u32(842u, 28u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 28u)], !global0[_wgslsmith_index_u32(u_input.a.x, 28u)], !global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), ~arg_0.wx));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(arg_1.d.a, -2147483647i);
    global0 = array<bool, 28>();
    let var_1 = func_2(arg_1.c, vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.d.a, var_0, arg_1.d.a), vec3<i32>(-68116i, arg_0, arg_1.d.a)), vec3<i32>(0i, firstLeadingBit(-21234i), arg_2.a.d.a << (global2[_wgslsmith_index_u32(4294967295u, 17u)] % 32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.d.a, -1i, var_0), vec4<i32>(-499i, 1i, u_input.b.x, arg_2.a.d.a) & vec4<i32>(-1i, var_0, var_0, arg_2.a.d.a)), select(_wgslsmith_mod_i32(arg_2.a.d.a, arg_2.a.d.a), abs(arg_1.d.a), all(arg_1.d.b.xyy)))), arg_2.a.c.xzz).a.d;
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return func_2(u_input.a, _wgslsmith_div_vec3_i32(u_input.b, -(~(~vec3<i32>(-40179i, arg_2.a.d.a, arg_2.a.d.a)))), arg_2.a.c.wyw).a.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    var var_0 = ~(~u_input.a);
    let var_1 = arg_1.a.a.wzy;
    var var_2 = func_4(1202i, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, var_1.x, _wgslsmith_f_op_f32(trunc(-360f)), -878f)), 1u, min(_wgslsmith_clamp_vec4_u32(u_input.a, ~vec4<u32>(arg_1.a.c.x, 62455u, u_input.a.x, arg_1.a.e.x), select(u_input.a, u_input.a, false)), vec4<u32>(abs(4294967295u), 26682u, ~4294967295u, 4294967295u)), arg_1.a.d, vec2<u32>(~(var_0.x & u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.yx, var_0.yw), _wgslsmith_mod_u32(34437u, 23976u)))), func_2(func_2(~vec4<u32>(1u, 18871u, 1793u, u_input.a.x), vec3<i32>(~arg_2.a, countOneBits(-697i), -1i), _wgslsmith_mult_vec3_u32(~u_input.a.xwy, arg_1.a.c.xzz)).a.c, vec3<i32>(31798i, arg_1.a.d.a, -33649i), vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_0.x, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 17u)], 17u)], u_input.a.x)), ~0u)));
    global0 = array<bool, 28>();
    let var_3 = abs(~_wgslsmith_add_i32(select(var_2.a, arg_2.a, true), reverseBits(58937i))) | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.b, min(vec3<i32>(var_2.a, 2147483647i, arg_0.a), vec3<i32>(u_input.b.x, arg_0.a, 37087i)), select(u_input.b, vec3<i32>(-26590i, arg_2.a, -80885i), global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b)), arg_1.a.d.a);
    return arg_1;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    global1 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~(~0u), 27u)], arg_1.a.a.x, -1429f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.wwy) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, global1[_wgslsmith_index_u32(arg_1.a.c.x, 27u)], arg_0.x)) * _wgslsmith_f_op_vec3_f32(select(arg_1.a.a.ywx, arg_0.zwx, false))))));
    global0 = array<bool, 28>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.a.yy))), arg_0.zw));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.a * vec4<f32>(var_1.x, arg_1.a.a.x, arg_0.x, arg_1.a.a.x)) - arg_1.a.a))), ~arg_1.a.b, reverseBits(max(vec4<u32>(countOneBits(u_input.a.x), ~arg_1.a.e.x, ~76608u, ~arg_1.a.e.x), arg_1.a.c)), func_5(arg_1.a.d, arg_1, func_4(2147483647i | arg_2.d.a, Struct_2(func_5(arg_1.a.d, Struct_4(Struct_2(arg_2.a, arg_1.a.e.x, vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u), arg_1.a.d, vec2<u32>(arg_2.c.x, 0u))), Struct_1(arg_2.d.a, arg_2.d.b)).a.a, ~arg_2.b, u_input.a, func_2(vec4<u32>(arg_1.a.c.x, 0u, 83100u, arg_1.a.c.x), arg_3.yww, vec3<u32>(arg_2.c.x, global2[_wgslsmith_index_u32(arg_2.e.x, 17u)], arg_1.a.c.x)).a.d, u_input.a.zx >> (arg_2.e % vec2<u32>(32u))), Struct_4(func_2(u_input.a, vec3<i32>(arg_3.x, arg_1.a.d.a, arg_1.a.d.a), u_input.a.zxx).a))).a.d, vec2<u32>(0u, 1u));
    return Struct_3(vec4<f32>(var_2.a.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -277f)), -399f, _wgslsmith_f_op_f32(-func_5(Struct_1(-2147483647i, arg_2.d.b), func_5(Struct_1(var_2.d.a, arg_2.d.b), arg_1, Struct_1(arg_2.d.a, vec4<bool>(arg_2.d.b.x, true, global0[_wgslsmith_index_u32(var_2.c.x, 28u)], false))), func_2(u_input.a, arg_3.zwy, var_2.c.ywy).a.d).a.a.x)), Struct_1(-firstLeadingBit(-10657i) << ((_wgslsmith_dot_vec3_u32(arg_2.c.xzx, vec3<u32>(12380u, var_2.c.x, var_2.c.x)) ^ _wgslsmith_sub_u32(arg_2.e.x, arg_2.c.x)) % 32u), arg_2.d.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>) -> vec4<f32> {
    global1 = array<f32, 27>();
    var var_0 = arg_2.zx;
    let var_1 = -24599i;
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, 903f, 497f, -179f)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * 609f), 1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 27u)]), _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_0.x, arg_0.x, arg_0.x)) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -1759f, -648f))), func_5(func_4(~0i, Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 1050f, arg_0.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24508u, 17u)], 27u)]), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), u_input.a, Struct_1(30756i, vec4<bool>(true, arg_1, arg_1, global0[_wgslsmith_index_u32(87010u, 28u)])), ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x)), func_2(u_input.a, vec3<i32>(var_0.x, var_1, 20836i), ~vec3<u32>(u_input.a.x, 16584u, 6731u))), func_2(u_input.a, arg_2, vec3<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 44415u, 1u), ~4294967295u, reverseBits(u_input.a.x))), func_2(u_input.a, arg_2, min(u_input.a.yxw, _wgslsmith_div_vec3_u32(u_input.a.yzx, u_input.a.zxw))).a.d), Struct_2(vec4<f32>(-1000f, -224f, -227f, _wgslsmith_f_op_f32(f32(-1f) * -1560f)), reverseBits(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)])), u_input.a, Struct_1(select(max(arg_2.x, -15671i), u_input.b.x, any(vec3<bool>(global0[_wgslsmith_index_u32(8928u, 28u)], true, arg_1))), !vec4<bool>(arg_1, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], true)), vec2<u32>(_wgslsmith_mult_u32(func_5(Struct_1(arg_2.x, vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false)), Struct_4(Struct_2(vec4<f32>(-554f, 1350f, global1[_wgslsmith_index_u32(10772u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.a.x, vec4<u32>(1u, 64598u, u_input.a.x, global2[_wgslsmith_index_u32(0u, 17u)]), Struct_1(u_input.b.x, vec4<bool>(arg_1, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 28u)], true, global0[_wgslsmith_index_u32(0u, 28u)])), vec2<u32>(54934u, 1u))), Struct_1(var_1, vec4<bool>(false, false, global0[_wgslsmith_index_u32(37233u, 28u)], arg_1))).a.e.x, ~global2[_wgslsmith_index_u32(23104u, 17u)]), ~1u)), vec4<i32>(1053i, -49639i, 1i, func_2(~u_input.a, reverseBits(vec3<i32>(24135i, -39557i, arg_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(27359u, u_input.a.x, u_input.a.x), vec3<u32>(global2[_wgslsmith_index_u32(70080u, 17u)], u_input.a.x, 1u), vec3<u32>(78995u, 1u, u_input.a.x))).a.d.a | ~(-22083i)));
    var var_3 = Struct_5(true, firstLeadingBit(min(vec4<u32>(firstTrailingBit(23044u), _wgslsmith_div_u32(4294967295u, u_input.a.x), 37072u, 1u), ~func_2(vec4<u32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 1u, global2[_wgslsmith_index_u32(0u, 17u)]), vec3<i32>(var_1, -23477i, -40170i), u_input.a.zzz).a.c)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(20999u, 17u)], u_input.a.x, u_input.a.x), ~global2[_wgslsmith_index_u32(4294967295u, 17u)]), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]) ^ vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(4294967295u, min(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 4294967295u))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, -1i, abs(u_input.b.x)), firstTrailingBit(~vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 15544i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -28393i, -2147483647i, 10727i), vec4<i32>(u_input.b.x, -1i, 26681i, u_input.b.x)))));
    var var_2 = ~_wgslsmith_mult_u32(u_input.a.x, 55212u);
    global1 = array<f32, 27>();
    var var_3 = firstLeadingBit(19369u);
    let var_4 = var_0.x;
    let var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 831f, global1[_wgslsmith_index_u32(35392u, 27u)], -1119f) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -414f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(var_4, 27u)])), vec4<f32>(-1000f, -773f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 27u)], -1000f), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(57858u, 27u)], 584f, global1[_wgslsmith_index_u32(0u, 27u)], 239f), vec4<f32>(-794f, -978f, 1150f, global1[_wgslsmith_index_u32(1u, 27u)]))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-250f, global1[_wgslsmith_index_u32(var_4, 27u)], global1[_wgslsmith_index_u32(19754u, 27u)], 322f), vec4<f32>(785f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 27u)], global1[_wgslsmith_index_u32(28129u, 27u)], -2236f))))) * _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1575f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 27u)]), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 36575u) < _wgslsmith_add_u32(var_0.x, u_input.a.x), select(vec3<i32>(var_1.x, 1i, var_1.x), ~vec3<i32>(var_1.x, -1i, 2147483647i), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, global0[_wgslsmith_index_u32(36779u, 28u)]), true))))), ~4294967295u, u_input.a, Struct_1(u_input.b.x, vec4<bool>((var_1.x != 36391i) | global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(80084u, var_0.x), 28u)], !any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_0.x, 28u)])), false && any(vec3<bool>(false, global0[_wgslsmith_index_u32(var_4, 28u)], true)), true)), vec2<u32>(u_input.a.x, 4294967295u));
    let var_6 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 27u)], -2254f)) - _wgslsmith_f_op_f32(f32(-1f) * -1685f)), 608f)), var_5.d);
    let var_7 = Struct_2(var_5.a, global2[_wgslsmith_index_u32(5387u, 17u)] & ~var_5.e.x, var_5.c, func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~28870u, _wgslsmith_div_u32(46983u, u_input.a.x), ~u_input.a.x, _wgslsmith_sub_u32(var_4, u_input.a.x)), _wgslsmith_clamp_vec4_u32(u_input.a << (var_5.c % vec4<u32>(32u)), select(u_input.a, u_input.a, vec4<bool>(true, false, global0[_wgslsmith_index_u32(80003u, 28u)], false)), vec4<u32>(var_4, 11335u, 63496u, 4294967295u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-31888i >> (var_4 % 32u), var_6.b.a & 6746i, var_1.x), u_input.b), _wgslsmith_clamp_vec3_u32(func_5(var_6.b, func_5(var_5.d, Struct_4(var_5), var_6.b), Struct_1(2147483647i, var_5.d.b)).a.c.ywy, var_5.c.zwy, func_2(~var_5.c, _wgslsmith_add_vec3_i32(u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(var_5.b, var_4, 4294967295u), vec3<u32>(var_5.b, var_4, var_0.x))).a.c.xyw)).a.d, _wgslsmith_clamp_vec2_u32(var_0, _wgslsmith_mod_vec2_u32(u_input.a.zz, _wgslsmith_clamp_vec2_u32(u_input.a.wy, u_input.a.zw, u_input.a.wz)), firstTrailingBit(~var_0)) & u_input.a.zw);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, u_input.b.yx, vec4<f32>(var_7.a.x, _wgslsmith_f_op_f32(428f * 1184f), 550f, 214f), -129f);
}

