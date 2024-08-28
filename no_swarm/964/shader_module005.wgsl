struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(153f, -1347f, -728f, -430f, 280f, 1491f, 1000f, 445f, -736f, 931f, 982f, -302f, 682f, -943f, 317f, 1000f, -321f, 246f, 856f, -440f, -1156f, -734f, -181f, -267f, -1053f, -313f, -408f, -883f, -1000f);

var<private> global1: array<Struct_4, 14>;

var<private> global2: i32 = -17780i;

var<private> global3: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global4: array<i32, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    global4 = array<i32, 20>();
    var var_0 = Struct_2(Struct_1(abs(~vec4<u32>(1u, 61978u, 0u, 51350u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(72040u), arg_0.x), firstTrailingBit(4294967295u << (arg_0.x % 32u))), -_wgslsmith_div_vec3_i32(vec3<i32>(-41102i, 10453i, global4[_wgslsmith_index_u32(arg_0.x, 20u)]), vec3<i32>(-1i, -2147483647i, global4[_wgslsmith_index_u32(arg_0.x, 20u)])), select(vec3<bool>(true, select(true, true, false), false), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec2<f32>(-655f, global0[_wgslsmith_index_u32(~arg_0.x, 29u)])), Struct_1(abs(vec4<u32>(0u >> (arg_0.x % 32u), firstTrailingBit(15562u), _wgslsmith_div_u32(4294967295u, arg_0.x), 130871u)), select(36357u, countOneBits(1u), true), select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -19473i, -2147483647i), vec3<i32>(u_input.b, 0i, global4[_wgslsmith_index_u32(arg_0.x, 20u)])) & vec3<i32>(1i, u_input.b, -1i), vec3<i32>(-1i, reverseBits(u_input.a), _wgslsmith_mod_i32(0i, global4[_wgslsmith_index_u32(arg_0.x, 20u)])), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(20339u, 29u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, global0[_wgslsmith_index_u32(3860u, 29u)]) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(arg_0.x, 29u)])), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]))))), 11097i);
    let var_1 = global4[_wgslsmith_index_u32(min(~1u, var_0.b.a.x), 20u)];
    global0 = array<f32, 29>();
    var var_2 = var_0.a;
    return var_2.d;
}

fn func_2() -> vec4<i32> {
    global4 = array<i32, 20>();
    var var_0 = Struct_5(~select(abs(vec4<u32>(49080u, 0u, 4294967295u, 115131u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)), ~vec3<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47787u, 28735u, 142843u), vec4<u32>(45461u, 1u, 3310u, 21705u)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 11715u), vec3<u32>(4294967295u, 8459u, 78932u)))), global1[_wgslsmith_index_u32(13602u, 14u)]);
    var var_1 = Struct_5(vec4<u32>((~0u & _wgslsmith_dot_vec3_u32(var_0.a.xzy, vec3<u32>(var_0.a.x, var_0.b.x, 1u))) | var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.a.yzz, vec3<u32>(abs(4294967295u), var_0.b.x, ~var_0.a.x)), countOneBits(0u), var_0.c.a.a.a.x), vec3<u32>(var_0.b.x, firstLeadingBit(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(var_0.c.a.a.a.x, var_0.b.x, 4294967295u))), 1u), Struct_4(Struct_2(Struct_1(~var_0.a, ~35464u, var_0.c.a.a.c, var_0.c.a.a.d, _wgslsmith_f_op_vec2_f32(var_0.c.a.b.e - vec2<f32>(559f, global0[_wgslsmith_index_u32(var_0.a.x, 29u)]))), Struct_1(var_0.c.a.a.a, var_0.b.x, countOneBits(var_0.c.a.b.c), !var_0.c.a.b.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, 393f))), abs(_wgslsmith_mod_i32(0i, 14281i)))));
    global4 = array<i32, 20>();
    let var_2 = vec2<f32>(global0[_wgslsmith_index_u32(5383u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(637f, _wgslsmith_f_op_f32(f32(-1f) * -1651f), var_1.c.a.a.d.x)) + global0[_wgslsmith_index_u32(0u, 29u)]));
    return -select(firstLeadingBit(vec4<i32>(~global4[_wgslsmith_index_u32(46726u, 20u)], var_0.c.a.c, -u_input.b, i32(-1i) * -19520i)), vec4<i32>(-2147483647i, -8683i, ~_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(4294967295u, 20u)], 0i), abs(_wgslsmith_mod_i32(var_0.c.a.c, global4[_wgslsmith_index_u32(1u, 20u)]))), all(select(vec3<bool>(false, true, var_0.c.a.b.d.x), func_3(vec2<u32>(1u, 33294u)), vec3<bool>(false, var_1.c.a.a.d.x, true))));
}

fn func_1() -> Struct_4 {
    var var_0 = ~(-min(func_2(), countOneBits(vec4<i32>(-1i, -2147483647i, u_input.b, 45403i))) ^ (reverseBits(vec4<i32>(-9781i, -2147483647i, 18601i, u_input.a) | vec4<i32>(-39119i, 0i, -1i, global4[_wgslsmith_index_u32(52311u, 20u)])) ^ (vec4<i32>(-1i, -1i, -13063i, u_input.b) | reverseBits(vec4<i32>(13644i, global4[_wgslsmith_index_u32(69148u, 20u)], global4[_wgslsmith_index_u32(28066u, 20u)], u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 29u)] + global0[_wgslsmith_index_u32(0u, 29u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1648f - -1121f) * _wgslsmith_f_op_f32(abs(283f))))));
    let var_2 = Struct_5(vec4<u32>(_wgslsmith_mod_u32(abs(~0u), 46214u), reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(36957u, 0u), 6989u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u), ~1u), firstLeadingBit(countOneBits(1u))), _wgslsmith_add_u32(1u, 1u)), ~(~vec3<u32>(6994u, 9410u, 18658u)) ^ vec3<u32>(4294967295u, min(reverseBits(1u), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(98614u, 4294967295u), vec2<u32>(0u, 0u)) & 4294967295u), Struct_4(Struct_2(Struct_1(~vec4<u32>(13985u, 0u, 4294967295u, 40889u), ~11996u, var_0.yzz, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, 304f))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(6081u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 53955u)), countOneBits(29055u), var_0.xyx, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(967f, global0[_wgslsmith_index_u32(4294967295u, 29u)])))), reverseBits(func_2().x))));
    return Struct_4(Struct_2(var_2.c.a.b, var_2.c.a.a, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(~var_2.a.x ^ 1u, 20u)], -2147483647i)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_5 {
    global1 = array<Struct_4, 14>();
    var var_0 = func_3(arg_1.a.zy).zz;
    global3 = array<vec2<bool>, 30>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(580f, -1178f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), 393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, global0[_wgslsmith_index_u32(arg_1.c.a.b.a.x, 29u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 29u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(arg_0.x, global0[_wgslsmith_index_u32(arg_1.a.x, 29u)])))));
    var var_2 = vec3<u32>(~firstTrailingBit(arg_1.c.a.b.a.x), arg_1.c.a.a.b, arg_1.b.x);
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_5 {
    var var_0 = arg_0.c.a.a.e;
    var var_1 = 0i;
    var_0 = arg_0.c.a.b.e;
    var var_2 = Struct_1(arg_2, ~(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(58437u, arg_2.x, arg_2.x), arg_2.zyx), arg_2.yyw)), abs(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-315f, arg_0.c.a.b.e.x, 148f), vec3<f32>(global0[_wgslsmith_index_u32(3888u, 29u)], arg_0.c.a.b.e.x, arg_0.c.a.a.e.x), vec3<bool>(arg_0.c.a.a.d.x, false, arg_0.c.a.b.d.x)))), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-845f, var_0.x, -2379f), vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(arg_3, 29u)], -328f)), arg_0, arg_0.c.a.b.c.zy), vec2<i32>(0i, u_input.b)).c.a.a.c), !select(arg_0.c.a.b.d, vec3<bool>(true, true, arg_0.c.a.a.d.x), arg_0.c.a.a.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.a.b.e + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(82354u, 29u)], arg_0.c.a.b.e.x) + arg_0.c.a.a.e)), vec2<f32>(_wgslsmith_f_op_f32(round(-649f)), arg_0.c.a.a.e.x))));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(93280u, arg_0.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_0.b.x, var_2.b, 4294967295u), vec4<u32>(34617u, var_2.a.x, 0u, arg_3)), arg_0.a))), vec3<u32>(_wgslsmith_mult_u32(arg_0.b.x, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.x, 1857f, 1825f)), func_4(vec3<f32>(arg_0.c.a.a.e.x, -587f, -869f), arg_0, vec2<i32>(1i, arg_1.x)), select(var_2.c.zy, arg_0.c.a.b.c.zy, false)).c.a.a.a.x), arg_2.x, ~(~var_2.b)));
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, var_2.e.x, 721f) * vec3<f32>(arg_0.c.a.b.e.x, -1000f, arg_0.c.a.a.e.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-func_1().a.b.e.x), -1148f, _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(var_0.x + global0[_wgslsmith_index_u32(var_2.b, 29u)])))), arg_0, vec2<i32>(var_2.c.x >> (0u % 32u), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~28501u;
    var var_1 = min((-(~vec3<i32>(u_input.a, global4[_wgslsmith_index_u32(4294967295u, 20u)], global4[_wgslsmith_index_u32(1u, 20u)])) ^ vec3<i32>(u_input.b, -21543i, u_input.a)) ^ ~vec3<i32>(-2147483647i, u_input.b, u_input.a << (55542u % 32u)), max(-_wgslsmith_div_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(31825u, 20u)], u_input.b), vec3<i32>(u_input.a, u_input.a, 32576i)) | select(_wgslsmith_sub_vec3_i32(vec3<i32>(12639i, global4[_wgslsmith_index_u32(1u, 20u)], u_input.b), vec3<i32>(15883i, global4[_wgslsmith_index_u32(1u, 20u)], u_input.b)), vec3<i32>(u_input.b, u_input.a, 7453i), false), min(vec3<i32>(u_input.b, -u_input.b, -4921i), select(-vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 20u)], 3314i, -1i), -vec3<i32>(u_input.a, -2332i, 2147483647i), true))));
    var_0 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(5229u, 1u), vec2<u32>(71878u, 33315u)))));
    var var_2 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], 844f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1659u, 29u)]))))), Struct_5(~reverseBits(vec4<u32>(1u, 68311u, 19183u, 99191u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(32999u, 1u, 0u), vec3<u32>(23844u, 57110u, 26456u)), func_1()), ~(-var_1.yz)), reverseBits(func_2().yxy), vec4<u32>(~15849u, 1u, abs(~firstTrailingBit(55547u)), _wgslsmith_clamp_u32(~4294967295u, ~(~28841u), _wgslsmith_dot_vec4_u32(func_4(vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -253f, -1000f), Struct_5(vec4<u32>(0u, 6517u, 124251u, 48364u), vec3<u32>(4294967295u, 91834u, 43334u), Struct_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 17340u, 1u, 4294967295u), 7994u, vec3<i32>(var_1.x, u_input.b, -49589i), vec3<bool>(true, true, false), vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(20579u, 29u)])), Struct_1(vec4<u32>(70650u, 54879u, 1u, 22398u), 0u, vec3<i32>(u_input.a, var_1.x, -1i), vec3<bool>(true, false, false), vec2<f32>(-1112f, global0[_wgslsmith_index_u32(10528u, 29u)])), var_1.x))), vec2<i32>(u_input.b, 2147483647i)).c.a.a.a, countOneBits(vec4<u32>(8109u, 0u, 4294967295u, 5065u))))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(40202u, 27618u, 23131u, 0u), countOneBits(vec4<u32>(27537u, 0u, 1u, 15979u)), vec4<bool>(true, false, false, true)), vec4<u32>(abs(_wgslsmith_mult_u32(1u, 4294967295u)), 62065u, 5427u, ~(~19184u))));
    global3 = array<vec2<bool>, 30>();
    var var_3 = var_2.c.a.a.c;
    let var_4 = global1[_wgslsmith_index_u32(var_2.a.x, 14u)];
    global3 = array<vec2<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(14935u, var_2.b.x) & (~1u & _wgslsmith_mod_u32(func_4(vec3<f32>(var_4.a.b.e.x, var_2.c.a.b.e.x, var_2.c.a.b.e.x), Struct_5(var_4.a.b.a, var_2.b, Struct_4(var_2.c.a)), var_4.a.b.c.yx).c.a.b.a.x, 0u)));
}

