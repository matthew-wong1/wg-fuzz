struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<u32, 22>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<f32>(-1422f, 467f), vec4<f32>(1046f, 221f, -2348f, 918f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-657f, -1801f), vec4<f32>(326f, -876f, 878f, 904f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-780f, -1415f), vec4<f32>(582f, -572f, 1313f, 276f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-543f, -1625f), vec4<f32>(-1765f, -843f, -1000f, -1231f), vec2<bool>(true, false)));

var<private> global3: vec3<i32>;

var<private> global4: vec4<u32> = vec4<u32>(21190u, 42174u, 1u, 4294967295u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = global4.zyy;
    global3 = max(select(vec3<i32>(-1i) * -abs(vec3<i32>(-2147483647i, -1i, -21906i)), vec3<i32>(-1i) * -min(vec3<i32>(global3.x, 1i, arg_3.x), vec3<i32>(-29394i, -1i, -2147483647i)), select(!(!vec3<bool>(true, false, arg_2)), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, false)), select(!vec3<bool>(true, true, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, true)))), countOneBits(-vec3<i32>(~0i, arg_3.x, select(39873i, -14909i, true))));
    let var_1 = ~(~66067u);
    let var_2 = global2[_wgslsmith_index_u32(12121u, 4u)];
    var var_3 = 1u;
    return min(global3.x, _wgslsmith_mult_i32(arg_3.x, select(global3.x, _wgslsmith_div_i32(arg_3.x, arg_3.x), true)) ^ arg_3.x);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.a.b.x))), arg_0.a.a.x, _wgslsmith_f_op_f32(-arg_0.a.b.x)))));
    global1 = array<u32, 22>();
    let var_1 = Struct_3(arg_0, ~73871i, select(global3.zx, vec2<i32>(global3.x, 32846i), arg_0.a.c.x));
    let var_2 = var_1;
    var var_3 = Struct_3(Struct_2(var_2.a.a), _wgslsmith_div_i32(~(i32(-1i) * -2147483647i), func_3(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - arg_0.a.a.x), _wgslsmith_f_op_f32(-920f * arg_0.a.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -265f)), false, ~(vec2<i32>(var_1.c.x, var_1.c.x) ^ vec2<i32>(-22476i, var_1.b)))), vec2<i32>(firstLeadingBit(-10324i), 0i));
    return var_2.a.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = global4.zxx;
    global0 = array<Struct_1, 18>();
    let var_1 = abs(vec3<u32>(~global4.x, global4.x, 59819u));
    let var_2 = ~(~(~4294967295u));
    return Struct_2(global2[_wgslsmith_index_u32(~global4.x, 4u)]);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global4 = firstLeadingBit(~(~vec4<u32>(global4.x, global1[_wgslsmith_index_u32(67660u, 22u)], 0u, global1[_wgslsmith_index_u32(global4.x, 22u)]))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global4.x, global4.x, 92627u), ~vec4<u32>(global1[_wgslsmith_index_u32(global4.x, 22u)], u_input.a.x, global4.x, 4294967295u)) & _wgslsmith_div_u32(abs(12989u), global4.x), 16623u, 18384u, global1[_wgslsmith_index_u32(reverseBits(0u), 22u)]);
    global4 = reverseBits(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global4.x, 1u, 1u), vec4<u32>(41200u, 56151u, global4.x, 4294967295u)), vec4<u32>(global4.x, u_input.a.x, global4.x, 0u), vec4<u32>(0u, 28259u, 38436u, u_input.b) & vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], 22u)], u_input.b))));
    var var_0 = global0[_wgslsmith_index_u32(max(37538u, ~(~(global4.x ^ firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 22u)])))), 18u)];
    let var_1 = ~vec2<u32>(0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.x, 14812u, global4.x), vec4<u32>(1u, global4.x, 64343u, global4.x))) >> (0u % 32u));
    var var_2 = func_4(arg_2.a.a, arg_2.a, _wgslsmith_div_vec4_f32(vec4<f32>(func_2(func_4(arg_1.a.a, Struct_1(vec2<f32>(arg_2.a.a.x, arg_1.a.a.x), arg_1.a.b, vec2<bool>(var_0.c.x, true)), var_0.b, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(27893u, 22u)], global4.x))).a.x, var_0.a.x, func_2(Struct_2(global2[_wgslsmith_index_u32(1u, 4u)])).b.x, -1012f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-373f, arg_1.a.b.x, 666f, arg_2.a.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), _wgslsmith_f_op_vec4_f32(-arg_1.a.b)))), ~(~firstLeadingBit(global4.yyw & vec3<u32>(0u, var_1.x, global1[_wgslsmith_index_u32(1u, 22u)])))).a.c;
    return func_4(_wgslsmith_f_op_vec2_f32(arg_2.a.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.b.zw, _wgslsmith_f_op_vec2_f32(-var_0.b.zy)) * vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(arg_1.a.b.x + 1000f)))), Struct_1(arg_1.a.b.wz, func_2(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, 1549f)), Struct_1(arg_2.a.a, vec4<f32>(var_0.b.x, arg_1.a.b.x, arg_1.a.a.x, arg_2.a.b.x), var_0.c), vec4<f32>(var_0.b.x, 1668f, arg_2.a.b.x, var_0.a.x), vec3<u32>(var_1.x, 4294967295u, 4294967295u))).b, vec2<bool>(_wgslsmith_f_op_f32(-var_0.a.x) != _wgslsmith_f_op_f32(-arg_1.a.a.x), select(var_0.c.x, any(vec3<bool>(var_0.c.x, var_2.x, true)), arg_2.a.c.x || true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(413f, _wgslsmith_f_op_f32(arg_1.a.a.x * var_0.b.x), 1439f, _wgslsmith_div_f32(var_0.b.x, arg_2.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_1.a.a.x, var_0.a.x, -644f) - arg_1.a.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.x, var_0.b.x, 234f, -565f))), any(select(vec4<bool>(var_2.x, true, var_2.x, arg_1.a.c.x), vec4<bool>(arg_2.a.c.x, var_2.x, arg_2.a.c.x, false), false))))), ~vec3<u32>(~(~5233u), global4.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(27794u, 22u)], 0u) ^ firstLeadingBit(35619u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> Struct_3 {
    global1 = array<u32, 22>();
    let var_0 = Struct_3(func_5(_wgslsmith_div_i32(min(arg_2, arg_3.x), countOneBits(_wgslsmith_clamp_i32(31432i, arg_3.x, 2147483647i))), func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, -965f)))), func_2(Struct_2(Struct_1(vec2<f32>(-2220f, 1638f), vec4<f32>(-2634f, -446f, -1901f, -1922f), vec2<bool>(arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(650f, 190f, -897f, 1106f)), vec3<u32>(4294967295u, 4294967295u, min(24197u, 48795u))), Struct_2(global2[_wgslsmith_index_u32(21462u, 4u)])), arg_0.x >> (0u % 32u), -_wgslsmith_div_vec2_i32((vec2<i32>(arg_3.x, -10288i) | global3.xx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), global3.yy), arg_3.ww));
    global3 = vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), arg_0.x), arg_0.x, arg_2) >> (vec3<u32>(16815u, _wgslsmith_mult_u32(global4.x, ~76336u ^ (global4.x << (18899u % 32u))), 26344u) % vec3<u32>(32u));
    var var_1 = countOneBits(~(~vec4<u32>(4294967295u, global4.x, global4.x, global1[_wgslsmith_index_u32(36181u, 22u)] ^ u_input.b)));
    var var_2 = var_0;
    return Struct_3(func_4(_wgslsmith_div_vec2_f32(var_0.a.a.b.zy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1725f, var_0.a.a.a.x), vec2<f32>(var_2.a.a.a.x, var_2.a.a.b.x))), _wgslsmith_f_op_vec2_f32(-var_2.a.a.b.xw)))), func_4(vec2<f32>(-1570f, _wgslsmith_f_op_f32(f32(-1f) * -425f)), Struct_1(var_0.a.a.a, var_2.a.a.b, vec2<bool>(true, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1002f, var_0.a.a.b.x, -1000f, var_2.a.a.b.x), var_2.a.a.b)), _wgslsmith_f_op_vec4_f32(step(var_0.a.a.b, var_2.a.a.b))), ~var_1.yyy).a, var_2.a.a.b, ~var_1.wyw), abs(~(-2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(var_2.c & vec2<i32>(-2147483647i, arg_0.x)), abs(_wgslsmith_sub_vec2_i32(arg_3.yy, vec2<i32>(-44563i, -2147483647i)))), -(~var_0.c) & select(arg_3.xz & vec2<i32>(-37457i, 3235i), arg_3.yx, any(var_0.a.a.c))));
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = ~(vec2<i32>(14701i, arg_1) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.c, select(vec2<i32>(arg_0.c.x, -14375i), arg_0.c, vec2<bool>(false, false))), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, arg_1, arg_0.c.x, arg_1), vec4<i32>(36071i, arg_0.b, 1i, global3.x) << (vec4<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 22u)], u_input.a.x) % vec4<u32>(32u)))));
    let var_1 = vec3<bool>(true & arg_0.a.a.c.x, !(!arg_0.a.a.c.x || arg_0.a.a.c.x), arg_0.a.a.c.x);
    global3 = vec3<i32>(~(-1i), global3.x, -11974i);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(222f - 387f), _wgslsmith_f_op_f32(min(693f, 395f)), vec4<i32>(arg_0.b, ~(-arg_1), -38918i, var_0.x) | (_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1016i, global3.x, 15122i, -42224i)), vec4<i32>(-26455i, global3.x, -1i, 0i)) >> (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], global4.x, 0u), vec4<u32>(global1[_wgslsmith_index_u32(64732u, 22u)], global4.x, 125236u, 504u)), vec4<u32>(39297u, 1u, u_input.b, 0u), vec4<u32>(global4.x, 4294967295u, global4.x, global1[_wgslsmith_index_u32(global4.x, 22u)])) % vec4<u32>(32u))));
    let var_3 = vec2<bool>(all(vec4<bool>(any(!vec2<bool>(false, var_1.x)), global4.x >= global4.x, arg_0.a.a.c.x | (false || var_1.x), var_1.x)), true);
    return func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(select(-18053i, 2147483647i, arg_0.a.a.c.x | true), arg_0.c.x)), false, global3.x, -vec4<i32>(max(countOneBits(72567i), _wgslsmith_add_i32(arg_0.b, -1i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.c.x, 2147483647i), var_2.c.x), -4079i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(~(vec2<i32>(global3.x, global3.x) | reverseBits(global3.zy)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), global3.x, ~vec4<i32>(-20292i, global3.x | -8919i, -21771i ^ global3.x, _wgslsmith_sub_i32(global3.x, 952i))), global3.x);
    global0 = array<Struct_1, 18>();
    global4 = vec4<u32>(~u_input.b, 84586u, u_input.a.x, u_input.a.x);
    var_0 = Struct_3(func_5(~var_0.c.x, func_6(Struct_3(func_1(global3.yz, var_0.a.a.c.x, 16497i, vec4<i32>(var_0.b, global3.x, var_0.b, global3.x)).a, _wgslsmith_mult_i32(var_0.b, -12365i), _wgslsmith_mod_vec2_i32(vec2<i32>(18036i, global3.x), vec2<i32>(global3.x, global3.x))), -42501i).a, var_0.a), ~2147483647i, _wgslsmith_clamp_vec2_i32(global3.yx, global3.zz, select(abs(~var_0.c), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.b), -global3.yz), true)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.a.a.x);
    var var_2 = func_1(min(_wgslsmith_mult_vec2_i32(abs(var_0.c), ~(~var_0.c)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, var_0.b), vec3<i32>(51486i, 0i, 1i)), vec3<i32>(var_0.c.x, global3.x, global3.x)), func_3(func_2(var_0.a).b.zwy, _wgslsmith_f_op_vec2_f32(-var_0.a.a.b.wz), func_1(vec2<i32>(var_0.b, -1i), false, 1i, vec4<i32>(53569i, 37787i, var_0.b, 1i)).a.a.c.x, max(global3.yz, var_0.c)))), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a.b.x), var_0.a.a.a.x) <= _wgslsmith_f_op_f32(-457f + _wgslsmith_f_op_f32(f32(-1f) * -1811f))) || select(func_5(49372i, Struct_2(Struct_1(vec2<f32>(225f, var_0.a.a.b.x), var_0.a.a.b, var_0.a.a.c)), Struct_2(var_0.a.a)).a.c.x | !var_0.a.a.c.x, func_1(select(var_0.c, vec2<i32>(global3.x, 0i), var_0.a.a.c.x), func_2(Struct_2(global0[_wgslsmith_index_u32(41615u, 18u)])).c.x, -2147483647i, vec4<i32>(35559i, var_0.b, 1i, var_0.b)).a.a.c.x, !(var_0.a.a.c.x & var_0.a.a.c.x)), -(~(~global3.x)) << (abs(_wgslsmith_mult_u32(632u, 1u)) % 32u), vec4<i32>(var_0.b, i32(-1i) * -1i, countOneBits(var_0.c.x), 2147483647i)).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.b.yzy, vec3<f32>(var_0.a.a.a.x, var_0.a.a.b.x, 550f));
}

