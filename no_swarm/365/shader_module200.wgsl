struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 25> = array<bool, 25>(false, true, true, true, false, true, true, true, false, false, true, true, true, false, false, true, true, true, false, true, true, false, false, true, true);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global4: vec4<f32> = vec4<f32>(127f, -253f, -377f, 640f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> i32 {
    var var_0 = reverseBits(vec3<u32>(~0u, 1u, _wgslsmith_add_u32(firstTrailingBit(~u_input.b.x), ~min(0u, u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(271f * global4.x);
    let var_2 = _wgslsmith_f_op_f32(abs(var_1));
    global3 = array<Struct_1, 11>();
    var var_3 = select(reverseBits(vec3<u32>(var_0.x, u_input.c, 34168u)), max(u_input.b, select(u_input.b, select(vec3<u32>(4294967295u, 1u, u_input.d), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, u_input.d)), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 25u)], true)), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 25u)], true)))), true);
    return _wgslsmith_sub_i32(-1i, u_input.a);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 292f, -496f, global4.x) * vec4<f32>(global1.x, -516f, -286f, -148f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, 513f), vec4<f32>(global4.x, global4.x, -284f, -1019f), global2[_wgslsmith_index_u32(4294967295u, 25u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, 1273f, -714f, -613f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, -1263f, 1029f, -986f))))), Struct_2(Struct_1(global2[_wgslsmith_index_u32((u_input.d ^ u_input.d) >> (1u % 32u), 25u)]), u_input.b.yz), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 23u)], ~u_input.b.xx), Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.x + global1.x) < 1000f), u_input.b.xz));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global1.x)), reverseBits(abs(u_input.b.x)) < u_input.c))));
    let var_2 = min(1u, _wgslsmith_mod_u32(1u, ~(~_wgslsmith_add_u32(36351u, var_0.b.b.x))));
    let var_3 = var_0.c.a;
    var var_4 = !all(select(vec3<bool>(var_3.a, false, global2[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], true), vec3<bool>(false, false, false), true), true)) == var_3.a;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61997u, u_input.b.x, var_2, var_2), vec4<u32>(1u, var_2, 35775u, var_2)), max(1u, 4294967295u), _wgslsmith_mult_u32(u_input.b.x, 39501u), ~75171u) << (vec4<u32>(~1u, var_0.b.b.x, u_input.b.x, ~834u) % vec4<u32>(32u)), ~vec4<u32>(var_2, var_0.d.b.x, 4294967295u ^ var_0.d.b.x, _wgslsmith_clamp_u32(1u, u_input.d, u_input.b.x))), min(vec4<u32>(abs(~4294967295u), ~0u, ~32551u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.d.b.x, 0u, 14209u), vec4<u32>(0u, u_input.d, 59522u, var_0.b.b.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24551u, var_0.b.b.x, var_0.c.b.x, var_0.d.b.x), vec4<u32>(var_0.b.b.x, 1u, 1u, var_2)), var_0.b.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), select(vec3<u32>(31299u, var_2, var_2), u_input.b, vec3<bool>(var_0.b.a.a, var_3.a, true))), var_2, 0u, firstTrailingBit(72205u))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(min(firstLeadingBit(arg_2), arg_2), func_3(), ~vec4<u32>(4294967295u ^ arg_3, arg_2.x, 1u, func_3().x)), vec4<u32>(20832u, arg_2.x, 12458u, arg_3));
    let var_1 = select(firstTrailingBit(-(~vec2<i32>(u_input.a, -32281i) | vec2<i32>(-1i, -2147483647i))), vec2<i32>(1i << ((~var_0.x & (4294967295u | arg_2.x)) % 32u), -1i), all(select(vec3<bool>(true, !global2[_wgslsmith_index_u32(38724u, 25u)], any(vec3<bool>(arg_0, true, true))), select(!vec3<bool>(arg_0, arg_0, false), !vec3<bool>(arg_0, false, global2[_wgslsmith_index_u32(var_0.x, 25u)]), any(vec3<bool>(false, false, false))), any(select(vec4<bool>(arg_0, global2[_wgslsmith_index_u32(21115u, 25u)], false, false), vec4<bool>(arg_0, true, arg_0, true), false)))));
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(312f, -481f, 659f, global1.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, global4.x, global1.x, 1314f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, global1.x, global4.x, -119f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global4.x, -962f, global4.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, -1761f, global1.x) - vec4<f32>(global4.x, 472f, 880f, global1.x)))) + vec4<f32>(-849f, -152f, _wgslsmith_f_op_f32(round(1573f)), global1.x)))), select(select(vec4<bool>(false, any(vec3<bool>(false, arg_0, arg_0)), !arg_0, true), !vec4<bool>(false, false, arg_0, global2[_wgslsmith_index_u32(62909u, 25u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], arg_0, false, arg_0), vec4<bool>(global2[_wgslsmith_index_u32(25945u, 25u)], true, global2[_wgslsmith_index_u32(60870u, 25u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(arg_2.x, 25u)], false, arg_0, true))), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.x << (4294967295u % 32u), 25u)], false, true, false), !(!arg_0))));
    global0 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_div_f32(-465f, global1.x))) + _wgslsmith_f_op_f32(round(-1548f))), global4.x));
    return Struct_2(Struct_1(!global2[_wgslsmith_index_u32(27372u, 25u)]), vec2<u32>(u_input.d, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_3, u_input.d, u_input.c), _wgslsmith_sub_u32(4294967295u, 4294967295u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(func_2(true, -(~_wgslsmith_mult_vec4_i32(vec4<i32>(63270i, -1i, 2147483647i, u_input.a), vec4<i32>(-1i, -37487i, u_input.a, u_input.a))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_1.b.x, 70162u, 0u, arg_1.b.x), vec4<u32>(4294967295u, 4294967295u, 52960u, arg_1.b.x), vec4<bool>(false, true, arg_0.a, false)), vec4<u32>(arg_1.b.x, u_input.d, arg_1.b.x, u_input.d)), vec4<u32>(arg_1.b.x, arg_1.b.x, 4294967295u, 1818u >> (arg_1.b.x % 32u))), ~(u_input.d << (1u % 32u)) & ~53966u).a, Struct_3(vec4<f32>(-2123f, 1607f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x + -108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 2015f) * _wgslsmith_f_op_f32(-global1.x))), arg_1, arg_1, arg_1), func_2(true, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_2.x, arg_2.x), arg_2), reverseBits(select(arg_2.x, 77709i, true)), max(u_input.a, _wgslsmith_div_i32(-39967i, arg_2.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.x, -23086i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 6145i))), ~vec4<u32>(_wgslsmith_mult_u32(u_input.d, 61078u), 0u, arg_1.b.x, _wgslsmith_mod_u32(39647u, 995u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), abs(arg_1.b))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(global4.zxx, vec3<f32>(834f, global4.x, global1.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2766f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x)) - global4.zxw))));
    global0 = array<Struct_1, 23>();
    var var_1 = global0[_wgslsmith_index_u32(arg_1.b.x, 23u)];
    var_1 = Struct_1(select(var_0.c.a.a, any(select(select(vec4<bool>(false, var_1.a, arg_1.a.a, var_0.a.a), vec4<bool>(arg_1.a.a, var_0.b.c.a.a, false, true), var_1.a), !vec4<bool>(false, var_1.a, true, arg_1.a.a), true)), arg_0.a));
    return Struct_1(true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = ~(4294967295u << (~(~abs(arg_0.b.x)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(f32(-1f) * -911f)))) - global1.x);
    var var_2 = vec4<i32>(_wgslsmith_add_i32(44152i, 14008i), 21288i, (~1i ^ ~(u_input.a | u_input.a)) & -2147483647i, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, 50077i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.b.x, u_input.d, 1u), vec4<u32>(u_input.d, 4207u, 12770u, 22964u)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, -15934i, 2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i))), i32(-1i) * -(~u_input.a)));
    var_0 = _wgslsmith_mult_u32(u_input.c, arg_0.b.x);
    let var_3 = firstTrailingBit(u_input.b);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(2539u, u_input.c), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(60475u, 33473u), vec2<u32>(0u, var_3.x)), vec2<u32>(73785u, 0u) >> (arg_0.b % vec2<u32>(32u))), arg_0.b.x), _wgslsmith_clamp_vec3_u32(u_input.b, var_3, vec3<u32>(_wgslsmith_add_u32(0u, arg_1.b.x) | ~arg_1.b.x, firstTrailingBit(~var_3.x), 66512u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_dot_vec3_u32(u_input.b, ~(~vec3<u32>(0u, 3178u, 1u))));
    var var_1 = vec2<u32>(34345u, ~1u);
    let var_2 = -min(u_input.a, u_input.a) & ~(func_1() ^ _wgslsmith_mult_i32(0i, 32441i));
    global3 = array<Struct_1, 11>();
    global0 = array<Struct_1, 23>();
    let var_3 = select(vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 25u)], false), !(!vec2<bool>(false, any(vec3<bool>(global2[_wgslsmith_index_u32(67804u, 25u)], true, global2[_wgslsmith_index_u32(var_1.x, 25u)])))), vec2<bool>(!(!global2[_wgslsmith_index_u32(~61836u, 25u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_2(func_4(Struct_1(false), func_2(true, vec4<i32>(u_input.a, var_2, 2147483647i, 16824i), vec4<u32>(var_1.x, 1u, 90405u, var_1.x), var_1.x), abs(vec3<i32>(u_input.a, 2147483647i, -5514i))), ~u_input.b.xx), func_2(var_3.x, abs(~vec4<i32>(u_input.a, var_2, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(74840u, 26894u, 36838u, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, var_1.x, 0u), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x)), vec4<u32>(u_input.b.x, 35727u, var_1.x, var_1.x)), ~(~27279u))), select(func_5(func_2(true, vec4<i32>(u_input.a, 53056i, var_2, -2147483647i) ^ vec4<i32>(u_input.a, var_2, 69256i, u_input.a), countOneBits(vec4<u32>(46995u, var_1.x, 1u, var_1.x)), ~1u), Struct_2(func_2(true, vec4<i32>(u_input.a, -2147483647i, 1i, var_2), vec4<u32>(var_1.x, 0u, u_input.d, 1u), 760u).a, vec2<u32>(u_input.d, 4294967295u))), vec3<u32>(~u_input.d, _wgslsmith_div_u32(47857u, u_input.d), select(0u, u_input.d, var_3.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.d), abs(u_input.b)), !select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)], var_3.x, global2[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(68797u, 25u)], global2[_wgslsmith_index_u32(var_1.x, 25u)]), vec3<bool>(var_3.x, false, global2[_wgslsmith_index_u32(114165u, 25u)]), true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 25u)]))), _wgslsmith_add_i32(firstTrailingBit(firstLeadingBit(var_2)), var_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1481f - global4.x))))))), reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, -49322i), vec2<i32>(_wgslsmith_mod_i32(38824i, 1i), select(0i, 22599i, var_3.x)))));
}

