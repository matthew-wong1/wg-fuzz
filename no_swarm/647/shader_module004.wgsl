struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1427u, 4294967295u, 43603u);

var<private> global1: vec2<f32> = vec2<f32>(-1185f, -600f);

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<u32, 30>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    global3 = _wgslsmith_mult_u32(~global0.x, ~_wgslsmith_dot_vec3_u32(min(u_input.c, ~vec3<u32>(63958u, global4[_wgslsmith_index_u32(global0.x, 30u)], 56717u)), ~vec3<u32>(2521u, arg_3.d.b.c, u_input.b) ^ vec3<u32>(global0.x, global0.x, u_input.c.x)));
    var var_0 = arg_3.c.e;
    let var_1 = arg_3;
    var var_2 = Struct_3(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.e, 0u << (0u % 32u)), arg_3.a)), 204f, arg_3.c, Struct_2(var_1.d.a, arg_3.c, vec2<u32>(1u, 64080u)), vec2<i32>(-2147483647i, firstTrailingBit(-43620i)));
    var_0 = vec4<bool>(true, true && !var_1.d.b.e.x, select(false, !var_0.x & var_1.c.a.x, abs(~4294967295u) != ~(~global0.x)), true);
    return 4294967295u;
}

fn func_2(arg_0: Struct_4) -> i32 {
    global2 = u_input.a;
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - global1.x));
    var var_0 = u_input.d;
    var var_1 = u_input.d.xx | ~var_0.zz;
    let var_2 = Struct_3(vec3<u32>(~(func_3(vec4<i32>(var_1.x, var_0.x, var_0.x, -54038i), vec2<f32>(global1.x, 797f), vec3<i32>(var_0.x, u_input.a, -30113i), Struct_3(vec3<u32>(u_input.c.x, global4[_wgslsmith_index_u32(global0.x, 30u)], u_input.b), arg_0.b.x, Struct_1(vec2<bool>(false, false), arg_0.c.yy, 4294967295u, 3354i, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec2<bool>(true, false), vec2<f32>(arg_0.e, global1.x), 0u, var_0.x, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, true), vec2<f32>(1597f, global1.x), 30292u, -33360i, vec4<bool>(true, false, false, true)), vec2<u32>(u_input.e, arg_0.d)), vec2<i32>(var_0.x, -51833i))) | global4[_wgslsmith_index_u32(~4294967295u, 30u)]), ~_wgslsmith_add_u32(_wgslsmith_add_u32(2044u, global0.x), u_input.c.x & u_input.e), 23414u), global1.x, Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.yy)) + arg_0.b) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 539f))))), firstTrailingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(24104u, 1u, global0.x, 25745u), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], 28067u, 28663u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 30u)], 30u)]), vec4<bool>(false, false, false, true)), select(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 34995u, global4[_wgslsmith_index_u32(1u, 30u)], 39153u), false))), _wgslsmith_add_i32(1i, -1i), vec4<bool>(!any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, true)) != true, true || select(false, false, true), false)), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.a.x)), ~u_input.c.x, 33365i, vec4<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec3<bool>(false, true, true)), true)), Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-498f, arg_0.a.x), arg_0.c.xz, true)) - _wgslsmith_div_vec2_f32(arg_0.c.xx, vec2<f32>(1639f, arg_0.b.x))), 4294967295u, -2147483647i, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec2<u32>(reverseBits(0u), global4[_wgslsmith_index_u32(func_3(u_input.d, vec2<f32>(global1.x, 181f), firstLeadingBit(vec3<i32>(18423i, 0i, 2147483647i)), Struct_3(vec3<u32>(4294967295u, arg_0.d, arg_0.d), arg_0.c.x, Struct_1(vec2<bool>(false, true), vec2<f32>(-1986f, -101f), arg_0.d, var_0.x, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<bool>(false, true), vec2<f32>(1422f, global1.x), 14287u, 1i, vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, true), vec2<f32>(904f, arg_0.c.x), 10940u, u_input.d.x, vec4<bool>(true, false, false, false)), vec2<u32>(26040u, 0u)), vec2<i32>(u_input.d.x, u_input.d.x))), 30u)])), vec2<i32>(-1i, -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, -18139i), var_0.wyy))));
    return 26644i;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_div_i32(u_input.a, abs(_wgslsmith_mod_i32(select(arg_1.c.d, reverseBits(0i), true), _wgslsmith_sub_i32(-u_input.a, -u_input.d.x))));
    let var_1 = ~arg_2.c.x;
    global0 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global0.x, arg_2.c.x, u_input.c.x, u_input.b)) >> (~firstLeadingBit(firstLeadingBit(vec4<u32>(arg_1.d.b.c, 17242u, 42053u, u_input.e))) % vec4<u32>(32u)), vec4<u32>(arg_1.d.c.x, 1u, u_input.e, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(414u, 1u), global0.ww), firstTrailingBit(arg_2.c)) << (8727u % 32u)));
    var var_2 = !arg_1.c.a.x;
    let var_3 = select(vec4<bool>(true, firstLeadingBit(-2147483647i) > arg_1.e.x, _wgslsmith_div_i32(-985i, -var_0) >= var_0, arg_2.b.a.x), vec4<bool>(false, any(vec4<bool>(arg_1.d.a.e.x, any(arg_0), false, all(arg_2.b.e.yz))), !any(arg_0.zx), !all(select(vec2<bool>(arg_0.x, arg_2.a.a.x), arg_2.b.e.yz, false))), vec4<bool>(any(select(!vec2<bool>(arg_0.x, arg_2.a.a.x), select(vec2<bool>(false, arg_0.x), arg_2.a.e.xy, arg_2.b.a), false)), !arg_2.a.a.x, (max(1u, u_input.b) | select(arg_2.c.x, 4294967295u, false)) <= 1u, _wgslsmith_div_u32(35577u, 4294967295u) > global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, max(15721u, 39885u)), 30u)]));
    return vec3<u32>(~_wgslsmith_add_u32(~arg_1.d.c.x, ~4294967295u) >> (23615u % 32u), 0u, _wgslsmith_mult_u32(42464u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 0u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(1u, 30u)], arg_1.a.x, arg_1.d.a.c)), max(~2507u, u_input.b), ~(global4[_wgslsmith_index_u32(u_input.e, 30u)] | global4[_wgslsmith_index_u32(arg_2.b.c, 30u)]))));
}

fn func_5(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_1(!select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-243f + global1.x), -1000f)), vec2<f32>(-962f, _wgslsmith_f_op_f32(-global1.x))), 77538u >> (0u % 32u), u_input.a << (1u % 32u), !(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, false))));
    global0 = abs(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, ~1u, var_0.c, var_0.c), vec4<u32>(30729u, global4[_wgslsmith_index_u32(reverseBits(~global0.x), 30u)], 24731u, _wgslsmith_sub_u32(u_input.c.x, global0.x))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(all(var_0.e.xzy), var_0.a.x || (var_0.a.x || var_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * var_0.b) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.b)))), _wgslsmith_dot_vec2_u32(countOneBits(global0.zw), firstLeadingBit(~arg_0.xy)), -2147483647i, !var_0.e), Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(ceil(1073f))))), ~countOneBits(70377u), ~(-29045i ^ u_input.a), select(var_0.e, var_0.e, any(var_0.e.wx))), _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 33046u), global0.yy)), select(arg_0.zx, ~vec2<u32>(global0.x, 0u), select(vec2<bool>(var_0.e.x, var_0.e.x), var_0.e.yz, all(var_0.e.yyx)))));
    let var_2 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32((vec4<i32>(-6310i, 7140i, -40676i, var_0.d) & u_input.d) & max(vec4<i32>(var_0.d, 1i, var_1.a.d, var_1.a.d), u_input.d), vec4<i32>(-59661i, u_input.a, 52099i, 2147483647i) ^ (vec4<i32>(var_0.d, var_1.b.d, -11678i, 0i) & vec4<i32>(var_0.d, u_input.d.x, var_0.d, 0i)));
    let var_3 = select(select(vec4<bool>(var_1.a.e.x | var_0.a.x, var_0.d < u_input.d.x, all(!vec4<bool>(false, var_0.a.x, false, false)), var_0.e.x), vec4<bool>(any(var_0.a), var_0.e.x, false, any(vec2<bool>(true, var_1.a.e.x))), !var_0.e), vec4<bool>(any(vec2<bool>(true, true)), any(!vec3<bool>(var_0.a.x, var_1.a.a.x, var_0.e.x)), any(var_0.e.xyz) && any(vec3<bool>(var_0.a.x, true, var_0.e.x)), (min(arg_0.x, 43079u) & ~0u) < 4294967295u), vec4<bool>(all(select(!var_0.e.ywx, vec3<bool>(var_0.a.x, true, true), vec3<bool>(var_1.a.a.x, true, false))), select(true, false, !var_1.b.a.x & false), select(var_1.b.e.x, all(!vec2<bool>(var_1.b.e.x, true)), true), any(vec3<bool>(global4[_wgslsmith_index_u32(0u, 30u)] < 25515u, var_1.a.d < var_1.a.d, var_1.b.a.x))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), var_1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1329f))), var_1.a.b, vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1057f), -2016f, var_3.x != true)))), var_0.b.x), firstTrailingBit(1u), -2357f);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_4(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), Struct_3(vec3<u32>(u_input.b, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, 52452u, u_input.c.x), 30u)], global4[_wgslsmith_index_u32(~12284u, 30u)]), -155f, Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -563f) - vec2<f32>(245f, global1.x)), 1u, func_2(Struct_4(vec3<f32>(261f, global1.x, 1597f), vec2<f32>(global1.x, global1.x), vec3<f32>(global1.x, -769f, global1.x), 36789u, 970f)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), Struct_2(Struct_1(vec2<bool>(true, true), vec2<f32>(global1.x, -1110f), 60881u, u_input.a, vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, false), vec2<f32>(global1.x, -2201f), 19930u, u_input.a, vec4<bool>(true, false, false, false)), abs(global0.yx)), vec2<i32>(-u_input.a, firstLeadingBit(-1i))), Struct_2(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, -425f)), ~u_input.c.x, max(30089i, u_input.d.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<f32>(-1000f, 1681f), u_input.b, u_input.a, select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), ~vec2<u32>(u_input.b, 0u))));
    return Struct_2(Struct_1(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), var_0.a.zz, 61622u, -46507i, !vec4<bool>(false, any(vec3<bool>(false, false, false)), true, false)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(min(var_0.c.zz, vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.e)), _wgslsmith_f_op_f32(-var_0.e)))), min(reverseBits(global0.x & 17255u), ~firstLeadingBit(34089u)), firstLeadingBit(_wgslsmith_add_i32(u_input.a, -1i)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), any(vec3<bool>(false, false, true)))), vec2<u32>(~(0u ^ func_3(vec4<i32>(u_input.a, 1i, u_input.d.x, u_input.d.x), var_0.a.xy, vec3<i32>(-23782i, -16918i, u_input.d.x), Struct_3(u_input.c, var_0.a.x, Struct_1(vec2<bool>(true, false), var_0.c.xy, 0u, u_input.a, vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<bool>(true, false), var_0.c.yy, 379u, -1i, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(false, false), vec2<f32>(636f, global1.x), global4[_wgslsmith_index_u32(var_0.d, 30u)], u_input.d.x, vec4<bool>(true, true, true, false)), global0.zw), vec2<i32>(u_input.d.x, u_input.a)))), _wgslsmith_div_u32(~_wgslsmith_sub_u32(1u, global0.x), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_i32(~min(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(76772i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.d.x, u_input.a, -6554i, 48831i)))), u_input.d.x);
    let var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.a), -vec2<i32>(-60135i, -39501i)), u_input.d.xx), -max(_wgslsmith_dot_vec3_i32(u_input.d.wzy, u_input.d.wwz), 33989i >> (global0.x % 32u))), u_input.d.wwz | -u_input.d.wxz);
    let var_2 = reverseBits(u_input.d) & ~(-(~u_input.d));
    var var_3 = var_0.b.e.x;
    var var_4 = Struct_3(u_input.c, _wgslsmith_f_op_f32(-var_0.b.b.x), var_0.a, func_1(), var_2.zy);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1788f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.b.x - var_0.a.b.x) * -908f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(483f, var_0.a.b.x)), _wgslsmith_f_op_f32(-1454f - -404f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(func_5(select(func_4(var_4.c.e.www, Struct_3(u_input.c, var_0.a.b.x, var_0.a, Struct_2(Struct_1(vec2<bool>(false, var_4.d.b.a.x), var_0.b.b, 28922u, u_input.d.x, vec4<bool>(var_0.a.e.x, true, false, false)), var_4.d.a, var_4.a.zz), var_2.zx), var_4.d), ~vec3<u32>(1u, 4294967295u, var_0.a.c), var_4.c.e.x)).c.x - 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), var_5.x), ~u_input.c.yy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1104f))))), var_2.zz);
}

