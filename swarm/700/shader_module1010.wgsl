struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: f32 = -151f;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 29>;

var<private> global4: array<f32, 15> = array<f32, 15>(-237f, 1773f, -606f, 206f, 669f, -728f, 1309f, 2499f, -810f, -755f, 636f, 1000f, 1592f, 168f, 1071f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_4) -> u32 {
    var var_0 = 49804u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 15u)] + 306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)))), arg_3.b.e.x, 954f));
    global2 = var_1.ywz;
    let var_2 = arg_3.b.a;
    var_0 = (_wgslsmith_clamp_u32(0u, ~4294967295u << (~u_input.c.x % 32u), 133936u ^ select(var_2.b, global3[_wgslsmith_index_u32(arg_0.b, 29u)], arg_3.c.x)) >> (_wgslsmith_add_u32(56328u, _wgslsmith_mod_u32(min(arg_3.b.a.b, global3[_wgslsmith_index_u32(46869u, 29u)]), ~u_input.a.x)) % 32u)) >> (global3[_wgslsmith_index_u32(arg_0.b & (_wgslsmith_mult_u32(~23590u, ~global3[_wgslsmith_index_u32(0u, 29u)]) >> (_wgslsmith_sub_u32(u_input.a.x, ~18360u) % 32u)), 29u)] % 32u);
    return ~_wgslsmith_add_u32(abs(~u_input.a.x), _wgslsmith_mod_u32(1u, ~56882u));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(-1i, min(u_input.a.x, _wgslsmith_sub_u32(1u, reverseBits(global3[_wgslsmith_index_u32(1u, 29u)])))), abs(u_input.d), Struct_1(_wgslsmith_mod_i32(56569i, ~u_input.e.x), abs(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 29u)])), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 27697i, 31656i, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.b.x, 0i, u_input.d))) >> (~(~13026u) % 32u), _wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1597f)), 1765f, _wgslsmith_f_op_f32(f32(-1f) * -315f), global4[_wgslsmith_index_u32(~(~u_input.c.x), 15u)]))));
    global3 = array<u32, 29>();
    global2 = vec3<f32>(-891f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~(~global3[_wgslsmith_index_u32(u_input.c.x, 29u)]), ~abs(var_0.c.b)), ~_wgslsmith_add_u32(31703u, u_input.c.x) >> (~(~0u) % 32u)), 7u)], _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(131666u, 15u)])));
    global1 = 1000f;
    var var_1 = Struct_3(var_0.c, ~var_0.c.a, Struct_1(u_input.e.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, var_0.c.b, 10170u, reverseBits(0u)))), var_0.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, 1000f, 1795f, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]))) + vec4<f32>(global2.x, global4[_wgslsmith_index_u32(1u, 15u)], 416f, _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 15u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1229f, 1062f, 746f, var_0.e.x)) - _wgslsmith_f_op_vec4_f32(var_0.e * var_0.e)), _wgslsmith_f_op_vec4_f32(-var_0.e))))));
    return ~vec2<i32>(select(u_input.e.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.a.a, 0i, var_1.b, -42359i)), -vec4<i32>(2147483647i, var_1.c.a, var_1.a.a, var_0.a.a)), !any(vec3<bool>(false, true, true))), max(~1i, var_1.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    global3 = array<u32, 29>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2211f, 510f, -128f) + vec3<f32>(global4[_wgslsmith_index_u32(0u, 15u)], global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 29u)], 15u)], 399f, global4[_wgslsmith_index_u32(arg_0.a.b, 15u)]), vec3<f32>(-799f, -2097f, global2.x))), true)))));
    let var_0 = -641f;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1170f, global2.x), vec3<f32>(395f, 574f, 1000f)), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 15u)], global0[_wgslsmith_index_u32(94548u, 7u)]))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, -1007f, var_0) * vec3<f32>(var_0, 1173f, 1057f)))))));
    let var_1 = 9826u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 7u)]))))), -825f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> vec4<bool> {
    global0 = array<f32, 7>();
    var var_0 = min(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(~min(0u, global3[_wgslsmith_index_u32(4294967295u, 29u)]), 35602u >> (~arg_0.a.b % 32u), min(1u, ~global3[_wgslsmith_index_u32(72477u, 29u)]), 38597u), vec4<u32>(u_input.a.x & ~32263u, ~func_2(Struct_1(u_input.d, 0u), -1i, vec4<f32>(global2.x, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 15u)], 560f, global2.x), Struct_4(u_input.c.x, Struct_3(Struct_1(2147483647i, arg_0.a.b), arg_2.x, Struct_1(-1i, 37292u), arg_0.a, vec4<f32>(-351f, global4[_wgslsmith_index_u32(4294967295u, 15u)], global2.x, global2.x)), vec4<bool>(false, true, false, false), Struct_3(Struct_1(arg_0.a.a, arg_0.a.b), 2147483647i, arg_0.a, Struct_1(arg_2.x, 0u), vec4<f32>(global0[_wgslsmith_index_u32(arg_0.a.b, 7u)], global0[_wgslsmith_index_u32(arg_0.a.b, 7u)], -737f, global2.x)), true)), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 4294967295u) << (84369u % 32u), _wgslsmith_add_u32(~1731u, u_input.a.x))));
    let var_1 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-563f)) * global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(40870u, 15u)]))))), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))))));
    global2 = vec3<f32>(1353f, -365f, _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_4(~19797u, Struct_3(Struct_1(firstTrailingBit(5922i), 0u), min(reverseBits(arg_3 << (u_input.c.x % 32u)), 2147483647i), arg_0.a, Struct_1(2147483647i, abs(~3052u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global2.x, 843f, arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-888f, -1000f, arg_1.x, -267f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, var_1.x, 1654f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_1.x, arg_1.x, -1861f))))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), Struct_3(arg_0.a, i32(-1i) * -11754i, arg_0.a, Struct_1(_wgslsmith_sub_i32(5929i, 1i), var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_div_f32(-1805f, -885f), global2.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 7u)] - -596f)) + vec4<f32>(_wgslsmith_div_f32(var_1.x, 990f), arg_1.x, arg_1.x, _wgslsmith_div_f32(-3060f, 289f)))), _wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_div_i32(arg_3, -2147483647i), global3[_wgslsmith_index_u32(1u, 29u)], func_3())) != global4[_wgslsmith_index_u32(~4294967295u, 15u)]);
    return !var_2.c;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_4 {
    global4 = array<f32, 15>();
    global3 = array<u32, 29>();
    let var_0 = Struct_3(Struct_1(-30807i | -(arg_1.a | arg_1.a), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.c.yzz, u_input.c.xxx)), 29u)]), arg_1.a, Struct_1(-63643i, 4294967295u), Struct_1(u_input.d, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1202u, 29u)], 58449u) | _wgslsmith_div_u32(21134u, 4294967295u), 0u)), vec4<f32>(global4[_wgslsmith_index_u32(arg_1.b, 15u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(26680u, 7u)], _wgslsmith_f_op_f32(sign(global2.x)), arg_2)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b, 7u)]), 171f));
    let var_1 = 23513u;
    let var_2 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, u_input.d), 0i), ~var_0.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(14862i, var_0.a.a, arg_1.a, 22183i), vec4<i32>(arg_1.a, 1i, var_0.b, 82006i)) | _wgslsmith_clamp_i32(15996i, arg_1.a, arg_1.a), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, u_input.d), vec3<i32>(var_0.d.a, var_0.c.a, -1i)), ~vec3<i32>(arg_1.a, 9667i, u_input.e.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_1.a, -2147483647i, 76703i, u_input.e.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, 0i, -43075i, u_input.e.x), vec4<i32>(-1i, var_0.c.a, 0i, arg_1.a))));
    return Struct_4(var_0.c.b, Struct_3(Struct_1(~u_input.e.x, 0u), 2353i, Struct_1(var_2.x, var_0.a.b), arg_1, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.e - var_0.e))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.e, vec4<f32>(-1820f, global4[_wgslsmith_index_u32(1u, 15u)], global2.x, -1000f), arg_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-154f, 1591f, global4[_wgslsmith_index_u32(arg_1.b, 15u)], -1412f), vec4<f32>(global0[_wgslsmith_index_u32(var_1, 7u)], -352f, -518f, -1572f), true)))))), !(!func_1(Struct_2(Struct_1(1i, 0u)), global2.xz, _wgslsmith_clamp_vec3_i32(var_2.wzz, vec3<i32>(1i, u_input.d, 23797i), var_2.yzy), firstTrailingBit(2147483647i))), var_0, true);
}

fn func_6(arg_0: f32, arg_1: Struct_4) -> Struct_4 {
    global4 = array<f32, 15>();
    global4 = array<f32, 15>();
    let var_0 = Struct_4(u_input.a.x, func_5(func_1(Struct_2(func_5(vec4<bool>(arg_1.e, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.d.a, arg_1.e).b.c), _wgslsmith_f_op_vec2_f32(-arg_1.d.e.yz), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 71269i, u_input.d), vec3<i32>(16145i, 2147483647i, arg_1.d.d.a)), -vec3<i32>(u_input.d, -2147483647i, arg_1.b.d.a)), 32725i), arg_1.d.c, select(arg_1.e, true, true)).d, vec4<bool>(select(false & arg_1.e, func_5(vec4<bool>(true, true, false, false), arg_1.d.c, arg_1.c.x).c.x, true) & false, !(!arg_1.e), true, true), arg_1.d, true);
    var var_1 = Struct_3(Struct_1(-min(u_input.d, 1i | var_0.b.c.a), 4294967295u), -abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, var_0.d.d.a, arg_1.d.d.a, 0i), firstTrailingBit(vec4<i32>(var_0.b.d.a, var_0.b.b, -48082i, -1i)))), var_0.b.d, Struct_1(~_wgslsmith_mult_i32(-2147483647i >> (global3[_wgslsmith_index_u32(4294967295u, 29u)] % 32u), ~2147483647i), func_5(!func_5(var_0.c, Struct_1(75132i, 5882u), arg_1.e).c, Struct_1(i32(-1i) * -51902i, abs(var_0.b.a.b)), var_0.e).d.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, global2.x, -424f, 1267f))))));
    var_1 = var_0.d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(195f, global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(44683u, 15u)])))))));
    global4 = array<f32, 15>();
    var var_1 = func_6(-901f, func_5(!(!func_1(Struct_2(Struct_1(u_input.d, u_input.a.x)), vec2<f32>(1000f, var_0.x), vec3<i32>(u_input.d, 0i, 2147483647i), u_input.d)), Struct_1(u_input.d, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(8142u, 29u)], 1u, 1u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 4294967295u))), 29u)]), true));
    let var_2 = var_1.d.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_5(var_1.c, var_1.d.d, all(vec3<bool>(var_1.e, var_1.c.x, true))).a << (~_wgslsmith_div_u32(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14533u, 29u)], 29u)], 29u)]) % 32u), u_input.a.x), -1297f, u_input.a.x, vec3<u32>(74951u, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c.xxy, vec3<u32>(0u, var_1.a, global3[_wgslsmith_index_u32(u_input.c.x, 29u)])), 29u)] ^ firstTrailingBit(u_input.c.x ^ 95708u), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global3[_wgslsmith_index_u32(45049u, 29u)], var_1.d.a.b, u_input.c.x, 17450u)), 1358u), _wgslsmith_div_u32(~global3[_wgslsmith_index_u32(var_1.a, 29u)], u_input.a.x))), ~(u_input.c.x | var_1.a));
}

