struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_3, 30>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    global4 = array<Struct_3, 30>();
    let var_0 = ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global3.xy, vec2<u32>(0u, 0u)), ~global3.xy), vec2<u32>(_wgslsmith_clamp_u32(global3.x, 0u, global3.x), min(0u, global3.x))));
    var var_1 = Struct_2(Struct_1(-1162f, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global3.x, 13u)] >> (global3.x % 32u), firstLeadingBit(u_input.c.x), _wgslsmith_div_i32(u_input.a, 34140i)) >= _wgslsmith_add_i32(-1i, ~33102i), _wgslsmith_f_op_f32(-1f), vec4<f32>(_wgslsmith_div_f32(1046f, _wgslsmith_f_op_f32(-global2.a)), global2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d.x, 1717f, global2.b))), _wgslsmith_f_op_f32(global2.e.x - _wgslsmith_f_op_f32(abs(238f)))), global2.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global2.d.x)), true, global2.d.x, vec4<f32>(_wgslsmith_f_op_f32(global2.a * global2.d.x), 1000f, global2.d.x, -986f), _wgslsmith_f_op_vec4_f32(min(global2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2.d)))))));
    var var_2 = vec3<bool>(global2.b, !all(select(vec3<bool>(true, true, global2.b), vec3<bool>(true, true, true), select(global2.b, true, var_1.b.b))), true);
    var var_3 = -137f;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, 463f, -544f, -122f), var_1.b.d, var_2.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2014f, global2.d.x, global2.e.x, global2.e.x)), _wgslsmith_f_op_vec4_f32(-var_1.b.e)))), vec4<f32>(636f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.e.x), -111f)), _wgslsmith_f_op_f32(380f - _wgslsmith_f_op_f32(-global2.a)), 538f))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global2.e.x, -1000f)), global2.b, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_vec4_f32(global2.d * vec4<f32>(global2.a, _wgslsmith_f_op_f32(sign(-3349f)), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.d.x))), global2.e), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(595f)), 629f)), _wgslsmith_f_op_f32(-global2.c)), true, -1000f, _wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1646f), global2.c, 1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-411f))))));
    global0 = array<i32, 13>();
    var var_1 = ~max(firstLeadingBit(~vec4<u32>(global3.x, global3.x, 4294967295u, global3.x)), vec4<u32>(abs(1u), 76453u, global3.x, global3.x >> (global3.x % 32u)) << (~(~vec4<u32>(global3.x, global3.x, 0u, 0u)) % vec4<u32>(32u)));
    global0 = array<i32, 13>();
    global4 = array<Struct_3, 30>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - 1426f) * _wgslsmith_f_op_f32(global2.d.x - var_0.a.c))) * var_0.a.e.x), var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)), 1f);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = 2082i;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_div_f32(-1263f, -544f)));
    var var_3 = vec3<i32>(var_0, u_input.c.x, 2147483647i);
    let var_4 = vec4<u32>(global3.x, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(32800u, 0u, 52633u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 0u, 4294967295u, global3.x), vec4<u32>(global3.x, 1u, 1u, 29561u))), ~76840u, _wgslsmith_f_op_f32(max(1199f, var_2.x)) >= _wgslsmith_f_op_f32(-var_1.c)), 54552u, ~countOneBits(global3.x));
    return Struct_3((0i & ~global0[_wgslsmith_index_u32(var_4.x & global3.x, 13u)]) << (select(~(var_4.x ^ 9448u), var_4.x, var_1.b) % 32u), var_3.x, countOneBits(-_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(var_4.x, 13u)], u_input.a, -44129i)), -vec3<i32>(var_3.x, -1i, var_3.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x - _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_vec4_f32(func_2()).x)), global2.a, global2.b));
    let var_0 = arg_0;
    return Struct_1(-680f, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1657f * global2.d.x)))) - _wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2095f - -585f) * _wgslsmith_div_f32(global2.d.x, -631f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.e.x, -1343f, _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.e.x, 1124f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.e) - vec4<f32>(global2.e.x, _wgslsmith_f_op_f32(-313f - global2.a), _wgslsmith_div_f32(-304f, -103f), _wgslsmith_f_op_f32(-global2.c))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1257f, -2385f, global2.e.x, global2.c) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, global2.d.x, 967f, -808f), global2.d, false)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    global2 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.e.x)), global2.b, _wgslsmith_f_op_f32(-arg_0.a), global2.d, _wgslsmith_f_op_vec4_f32(func_2()))), ~vec2<u32>(global3.x, global3.x | global3.x), firstLeadingBit(func_4(Struct_1(_wgslsmith_f_op_f32(max(global2.e.x, -975f)), true, 1834f, _wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(global2.d.x, 607f, -580f, global2.c))).b));
    let var_0 = arg_2.yzx;
    var var_1 = Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 23621i), u_input.c));
    var var_2 = Struct_4(_wgslsmith_add_vec2_i32(u_input.c, ~(var_1.a | var_1.a)));
    let var_3 = select(!(!select(arg_2, vec4<bool>(false, arg_0.b, arg_1, true), !arg_2)), !arg_2, select(arg_2, select(arg_2, !(!vec4<bool>(true, arg_0.b, false, true)), true), true));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, 1i, -1i | global0[_wgslsmith_index_u32(global3.x, 13u)]), -9599i, _wgslsmith_div_i32(firstLeadingBit(-2147483647i), u_input.b), -41421i), -vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 2147483647i)), u_input.a, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(global3.x, 13u)], -2147483647i), 10797i)) << (global3.x % 32u);
    global0 = array<i32, 13>();
    var var_1 = Struct_4(firstTrailingBit(u_input.c));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global2.a, global2.b, -565f, vec4<f32>(2427f, 504f, 407f, global2.d.x), vec4<f32>(187f, global2.c, -578f, global2.a)), true, vec4<bool>(false, global2.b, true, true)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(floor(global2.d.x)))))));
    global2 = Struct_1(var_2.x, !any(select(vec3<bool>(true, false, global2.b), !vec3<bool>(true, global2.b, false), all(vec2<bool>(global2.b, global2.b)))), -215f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.d * global2.e)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, 811f, var_2.x, var_2.x) * global2.e), vec4<f32>(468f, var_2.x, global2.d.x, 1439f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -2147483647i, 0i), vec3<i32>(u_input.c.x << (global3.x % 32u), -24296i, var_1.a.x)), ~reverseBits(0i)), reverseBits(vec2<u32>(6731u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(65992u, 4294967295u, global3.x), global3.x ^ global3.x))), vec4<i32>(u_input.b, var_1.a.x, ~_wgslsmith_mod_i32(reverseBits(u_input.c.x), func_4(Struct_1(-1406f, true, -687f, vec4<f32>(var_2.x, 426f, var_2.x, var_2.x), global2.d)).a), 11924i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-18971i, -2147483647i, 0i, 2147483647i), vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(0u, 13u)], 48542i)), ~global0[_wgslsmith_index_u32(global3.x, 13u)])), ~(~min(4294967295u, global3.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 0u), vec3<u32>(global3.x, global3.x, global3.x)) % 32u)));
}

