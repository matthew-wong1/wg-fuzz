struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<i32>(0i, 29318i, 1i), -1062f, vec4<bool>(false, false, false, false), 687f), vec3<bool>(false, false, true), Struct_2(27929u, vec4<i32>(i32(-2147483648), 17794i, 76705i, 10568i), 1u, false));

var<private> global2: array<u32, 30> = array<u32, 30>(2813u, 4294967295u, 63729u, 21592u, 4294967295u, 1u, 45549u, 1u, 23695u, 13383u, 80507u, 26730u, 12913u, 57227u, 4294967295u, 35468u, 0u, 0u, 13996u, 45729u, 1u, 1u, 1u, 1u, 6194u, 46366u, 4294967295u, 2078u, 18025u, 4294967295u);

var<private> global3: vec2<i32>;

var<private> global4: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    var var_0 = !arg_2.c.x || true;
    global0 = array<vec3<f32>, 22>();
    let var_1 = reverseBits(countOneBits(~min(vec3<u32>(10425u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], u_input.a), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a, global2[_wgslsmith_index_u32(global1.c.a, 30u)])) >> (abs(vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u))));
    let var_2 = func_2(global1.a, ~u_input.d, var_1).c;
    let var_3 = arg_1.c.x;
    return Struct_3(global1.c, arg_2, global0[_wgslsmith_index_u32(6370u, 22u)], global1.c, _wgslsmith_f_op_f32(ceil(arg_2.d)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    global3 = vec2<i32>(u_input.c >> (19910u % 32u), u_input.c >> ((global1.c.c | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.d.c, 28262u, arg_1.a.c, 26812u)), vec4<u32>(u_input.b.x, u_input.d, 111214u, arg_1.d.a))) % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2482f, -568f, global1.a.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, 2389f, true)), _wgslsmith_f_op_f32(f32(-1f) * -520f)))));
    global4 = ~(~abs(1u ^ ~u_input.d));
    var var_1 = Struct_2(~_wgslsmith_add_u32(62282u, 0u), func_3(_wgslsmith_add_i32(func_2(Struct_1(global1.c.b.xxz, global1.a.d, global1.a.c, arg_1.b.b), arg_1.d.a, vec3<u32>(global2[_wgslsmith_index_u32(global1.c.a, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], 0u)).a.x | -arg_1.b.a.x, func_3(-13013i, Struct_1(vec3<i32>(-8138i, u_input.c, arg_1.b.a.x), -2043f, vec4<bool>(arg_1.b.c.x, true, global1.c.d, false), var_0.x), Struct_1(vec3<i32>(-4905i, 1i, -1i), 177f, vec4<bool>(arg_1.b.c.x, false, arg_1.a.d, arg_1.a.d), arg_1.e), global1.a.b == -1867f).d.b.x), func_3(global1.c.b.x, Struct_1(global1.c.b.xwy & global1.c.b.yxy, _wgslsmith_f_op_f32(f32(-1f) * -421f), select(arg_1.b.c, vec4<bool>(global1.b.x, global1.c.d, arg_1.b.c.x, true), true), arg_1.c.x), Struct_1(global1.a.a | vec3<i32>(global1.c.b.x, global1.a.a.x, global1.c.b.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), !vec4<bool>(global1.a.c.x, global1.c.d, global1.a.c.x, false), _wgslsmith_f_op_f32(-global1.a.b)), false).b, arg_1.b, all(vec3<bool>(true, global1.c.d != arg_1.d.d, global1.b.x))).a.b, min(~(~global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(arg_1.a.a, 30u)]), 30u)]), _wgslsmith_sub_u32(u_input.b.x, reverseBits(u_input.d))), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)))), _wgslsmith_f_op_f32(min(arg_0.x, 1000f)), arg_0.x, 418f));
    return arg_1.b.d;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.d, 1501f)), func_3(global3.x & -7219i, func_2(Struct_1(vec3<i32>(1i, global3.x, -30031i), 726f, global1.a.c, global1.a.d), 1u, vec3<u32>(global1.c.a, global1.c.c, global2[_wgslsmith_index_u32(1u, 30u)])), func_2(Struct_1(vec3<i32>(u_input.c, -18279i, u_input.c), -191f, vec4<bool>(global1.c.d, true, arg_0, global1.b.x), 1365f), u_input.a, vec3<u32>(24638u, 15150u, 4294967295u)), true || arg_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-623f - _wgslsmith_div_f32(func_3(u_input.c, Struct_1(global1.a.a, global1.a.b, global1.a.c, 1025f), global1.a, global1.b.x).e, _wgslsmith_f_op_f32(1149f - global1.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)) + 624f), any(func_2(func_3(global3.x, Struct_1(vec3<i32>(0i, global3.x, u_input.c), 951f, global1.a.c, 433f), global1.a, global1.a.c.x).b, global1.c.a, _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c.c, 30u)], 30u)], 4294967295u, 13090u), vec3<u32>(global1.c.c, u_input.b.x, 1u))).c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1907f))));
    global3 = ~_wgslsmith_div_vec2_i32(-global1.a.a.yz, _wgslsmith_mult_vec2_i32(global1.c.b.xw, vec2<i32>(2147483647i, u_input.c)));
    let var_1 = global1.a.c;
    var var_2 = select(1i & ~u_input.c, _wgslsmith_div_i32((func_2(Struct_1(vec3<i32>(0i, 2147483647i, global3.x), global1.a.b, global1.a.c, var_0.x), u_input.a, vec3<u32>(global2[_wgslsmith_index_u32(global1.c.a, 30u)], 15747u, u_input.d)).a.x >> (func_3(u_input.c, global1.a, Struct_1(global1.c.b.yxx, -1350f, global1.a.c, -1000f), true).a.a % 32u)) >> (~(~global2[_wgslsmith_index_u32(16156u, 30u)]) % 32u), global3.x), !global1.c.d);
    let var_3 = vec2<i32>(-global1.c.b.x, reverseBits(global1.a.a.x));
    return !(!global1.a.c);
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3;
    global0 = array<vec3<f32>, 22>();
    let var_1 = !func_1(var_0.a.d > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.d)))).zw;
    global0 = array<vec3<f32>, 22>();
    let var_2 = vec4<u32>(firstLeadingBit(func_3(14050i, Struct_1(-vec3<i32>(13906i, -1i, var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.a.d), func_1(global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(firstTrailingBit(vec3<i32>(arg_2.b, 0i, -4661i)), _wgslsmith_f_op_f32(-arg_3.a.b), vec4<bool>(var_1.x, false, var_0.b.x, arg_3.b.x), _wgslsmith_div_f32(-2458f, arg_3.a.b)), func_3(max(1963i, -47626i), Struct_1(var_0.c.b.yyx, -757f, vec4<bool>(false, false, false, arg_0), var_0.a.b), var_0.a, false).a.d).d.c), ~reverseBits(reverseBits(4294967295u) >> (~var_0.c.c % 32u)), arg_3.c.a, arg_2.a);
    return -1000f;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_5(4007u, arg_0.a.x, !func_3(1i << (1u % 32u), arg_0, global1.a, any(arg_0.c.yw)).b.c, ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.c, 1u, 7426u, u_input.b.x), vec4<u32>(global1.c.a, 1u, global1.c.a, u_input.d), vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(0u, 30u)], 1u, global1.c.a)), vec4<u32>(global1.c.a, u_input.d, 4294967295u, 1u)), global1.c.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(63735u, 13587u, u_input.d), reverseBits(vec3<u32>(81787u, 4294967295u, global1.c.a))), 4294967295u), select(vec4<u32>(firstLeadingBit(select(101995u, global2[_wgslsmith_index_u32(1u, 30u)], false)), abs(global1.c.c >> (global2[_wgslsmith_index_u32(0u, 30u)] % 32u)), u_input.d, _wgslsmith_div_u32(6217u, global2[_wgslsmith_index_u32(global1.c.c, 30u)]) & (global1.c.c & global1.c.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(~44999u, u_input.a, global1.c.c, 52216u), select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 27271u, u_input.a, 0u), vec4<u32>(u_input.d, u_input.b.x, 25987u, 9385u)), vec4<u32>(global2[_wgslsmith_index_u32(global1.c.a, 30u)], 11427u, global2[_wgslsmith_index_u32(0u, 30u)], u_input.b.x), vec4<bool>(global1.b.x, global1.a.c.x, arg_1.x, arg_0.c.x))), !(!global1.a.c)));
    global2 = array<u32, 30>();
    var var_1 = func_3(-29273i, Struct_1(global1.c.b.xxx >> (var_0.e.zwy % vec3<u32>(32u)), 613f, !var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.b)))), Struct_1(vec3<i32>(-1i, firstLeadingBit(countOneBits(var_0.b)), -1i), arg_0.b, arg_0.c, _wgslsmith_f_op_f32(min(global1.a.d, 2406f))), ((660f <= _wgslsmith_f_op_f32(-939f + arg_0.d)) | any(func_2(Struct_1(vec3<i32>(arg_2.x, global3.x, -1i), -1000f, arg_0.c, -1014f), 14604u, vec3<u32>(var_0.d.x, global1.c.c, 4294967295u)).c)) && global1.a.c.x);
    global3 = vec2<i32>(u_input.c, -_wgslsmith_mod_i32(-47261i, -11833i));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(var_0.e), vec4<u32>(abs(46215u), 7851u, countOneBits(4294967295u), max(1u, global1.c.c))) | func_3(_wgslsmith_div_i32(arg_2.x, _wgslsmith_div_i32(-2147483647i, global3.x)), Struct_1(~vec3<i32>(arg_0.a.x, arg_2.x, arg_2.x), 905f, !vec4<bool>(arg_1.x, arg_0.c.x, true, true), _wgslsmith_f_op_f32(-arg_0.b)), Struct_1(global1.c.b.zxy | vec3<i32>(-1987i, arg_2.x, -55923i), -1910f, func_1(arg_0.c.x), func_3(arg_2.x, Struct_1(vec3<i32>(-5912i, 23669i, arg_2.x), arg_0.d, var_1.b.c, 1742f), Struct_1(vec3<i32>(42012i, 2147483647i, 33602i), 489f, var_0.c, arg_0.d), false).b.b), arg_1.x).d.c, ~global2[_wgslsmith_index_u32(reverseBits(~(~1u)), 30u)]);
    return Struct_4(func_2(global1.a, 4294967295u, reverseBits(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.c.c, global1.c.c, 52666u), var_0.e.zyz)))), vec3<bool>(true, global1.b.x, func_3(-_wgslsmith_clamp_i32(-2147483647i, 0i, 45276i), func_3(_wgslsmith_mult_i32(0i, arg_2.x), var_1.b, func_3(global1.c.b.x, var_1.b, var_1.b, false).b, false).b, func_2(var_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2), vec2<u32>(var_1.d.c, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, global1.c.c, var_1.a.a), var_0.d.wxw)), true).a.d), func_3(18690i, var_1.b, arg_0, false).d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 30>();
    global1 = func_6(Struct_1(global1.c.b.yyy, _wgslsmith_div_f32(1775f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1264f - -654f), 206f, global1.a.c.x))), !global1.a.c, _wgslsmith_f_op_f32(func_5(true, _wgslsmith_sub_vec3_i32(min(global1.c.b.yyx, vec3<i32>(global1.a.a.x, global1.c.b.x, 48395i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, u_input.c), global1.a.a)), Struct_5(7259u, global1.a.a.x >> (u_input.b.x % 32u), func_1(true), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.c.a, 4294967295u, u_input.d), vec4<u32>(global1.c.c, 1u, u_input.a, global1.c.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.b.x, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global1.c.c, u_input.a, 13226u))), Struct_4(func_2(Struct_1(vec3<i32>(2147483647i, -39590i, 7263i), global1.a.d, global1.a.c, global1.a.b), 4294967295u, vec3<u32>(69278u, global1.c.c, global2[_wgslsmith_index_u32(1937u, 30u)])), func_3(u_input.c, global1.a, Struct_1(global1.a.a, global1.a.b, vec4<bool>(true, global1.a.c.x, global1.b.x, global1.c.d), -1093f), global1.c.d).b.c.wzz, global1.c)))), !func_2(global1.a, 59070u, ~(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, 0u) & vec3<u32>(1u, 93191u, 69682u))).c.xzy, ~max(_wgslsmith_div_vec2_i32(global1.c.b.yy, global1.c.b.yz & global1.a.a.xx), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(global1.c.b.xyz, global1.a.a))), !all(global1.b.yx));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.d)) * _wgslsmith_f_op_f32(812f - -803f)));
    let var_1 = Struct_5(~(~1u), u_input.c, global1.a.c, ~(~vec4<u32>(func_6(Struct_1(global1.a.a, global1.a.d, vec4<bool>(global1.a.c.x, true, global1.c.d, global1.b.x), global1.a.b), vec3<bool>(true, global1.c.d, true), vec2<i32>(global1.a.a.x, 26889i), global1.c.d).c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30506u, 51750u), vec3<u32>(62474u, global2[_wgslsmith_index_u32(21311u, 30u)], 4294967295u)), firstLeadingBit(global2[_wgslsmith_index_u32(u_input.d, 30u)]), global2[_wgslsmith_index_u32(58140u, 30u)])), vec4<u32>(41128u, 1u, ~(~(61615u ^ u_input.d)), ~(~countOneBits(312u))));
    var var_2 = 66856u;
    let var_3 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_1(func_6(Struct_1(vec3<i32>(22685i, global3.x, global1.c.b.x), -115f, global1.a.c, global1.a.b), var_1.c.wxy, global1.c.b.wx, global1.a.c.x).a.a & vec3<i32>(var_1.b, -18895i, 2147483647i), _wgslsmith_f_op_f32(-global1.a.d), vec4<bool>(!var_1.c.x, false, all(vec3<bool>(false, true, true)), global1.a.c.x), -236f), 8508u, var_1.d.zxw).a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b, var_0, global1.a.d, 210f) - vec4<f32>(327f, -359f, global1.a.d, global1.a.d)) * vec4<f32>(-364f, 244f, global1.a.d, 790f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(-global1.a.d), _wgslsmith_div_f32(var_0, var_0)), !var_1.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1140f, global1.a.d, -282f, 697f))))), ~var_1.d.xzz, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(var_1.e.yzx ^ var_1.e.wyx), _wgslsmith_mod_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 30u)], 60951u, 0u), var_1.d.yyw)), 22u)]);
}

