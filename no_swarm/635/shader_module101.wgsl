struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 56556u), vec2<u32>(0u, 0u), vec2<u32>(45233u, 1u), vec2<u32>(0u, 84843u), vec2<u32>(15811u, 46944u), vec2<u32>(4294967295u, 1u), vec2<u32>(32741u, 4294967295u), vec2<u32>(4840u, 4294967295u), vec2<u32>(27646u, 24911u), vec2<u32>(4294967295u, 0u), vec2<u32>(80219u, 22761u), vec2<u32>(4294967295u, 0u), vec2<u32>(99391u, 0u), vec2<u32>(40647u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(14084u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8399u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(24105u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 25293u), vec2<u32>(4294967295u, 1u), vec2<u32>(75562u, 1u), vec2<u32>(61164u, 32477u), vec2<u32>(12474u, 4062u), vec2<u32>(506u, 3407u), vec2<u32>(4294967295u, 31169u), vec2<u32>(0u, 40227u), vec2<u32>(5110u, 0u), vec2<u32>(0u, 4294967295u));

var<private> global2: f32 = 497f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec4<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, 0i), u_input.c), _wgslsmith_add_vec4_i32(u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 1i, -2147483647i, -56108i), vec4<i32>(0i, u_input.a.x, 50074i, 9450i))), u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -u_input.c.x, _wgslsmith_add_i32(-14804i, _wgslsmith_dot_vec3_i32(u_input.c.zxz, ~u_input.c.wwz))));
    global1 = array<vec2<u32>, 32>();
    var var_1 = Struct_3(firstTrailingBit(~((26078u & u_input.b) << (0u % 32u))));
    var_1 = Struct_3(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(16982u, 1u) & var_1.a, reverseBits(3142u)));
    global0 = array<vec2<f32>, 13>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 21142u)), vec2<u32>(u_input.b, 1u)) ^ ~global1[_wgslsmith_index_u32(1u, 32u)], select(~global1[_wgslsmith_index_u32(1907u, 32u)], ~max(vec2<u32>(var_1.a, var_1.a), vec2<u32>(0u, 1u)), false), vec2<u32>(1u, ~u_input.b)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<u32>(0u | u_input.b, var_1.a), reverseBits(vec2<u32>(var_1.a, 30512u) ^ global1[_wgslsmith_index_u32(u_input.b, 32u)])), firstTrailingBit(global1[_wgslsmith_index_u32(34149u, 32u)])));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    let var_0 = vec3<u32>(15542u, _wgslsmith_mod_u32(~(~1u), 4294967295u & ~_wgslsmith_mod_u32(arg_2, 6997u)), func_3(!select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0)), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.c.zyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.c.yyy, arg_1.c.yxw))), false)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x) + -650f)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    var var_0 = vec2<u32>(~abs(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 32u)], vec2<u32>(u_input.b, u_input.b))), ~min(~114928u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 38356u, u_input.b), vec4<u32>(u_input.b, 0u, 1u, 83747u)))) & select(vec2<u32>(countOneBits(~u_input.b), reverseBits(54542u)), vec2<u32>(u_input.b, u_input.b), select(!arg_2.a.c, vec2<bool>(!arg_2.a.c.x, true), vec2<bool>(u_input.a.x <= -1358i, arg_0 || arg_0)));
    var var_1 = ~firstLeadingBit(min(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(1u, 35115u, u_input.b), abs(4294967295u)), select(vec3<u32>(var_0.x, 6711u, 20014u), vec3<u32>(var_0.x, var_0.x, u_input.b), true)));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, 30365u), firstTrailingBit(firstLeadingBit(vec3<u32>(4294967295u, var_1.x, ~u_input.b))), ~countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 17257u, u_input.b), vec3<u32>(0u, 9328u, var_1.x)), vec3<u32>(47147u, 0u, var_1.x) & vec3<u32>(u_input.b, 39258u, var_0.x))));
    let var_2 = -u_input.c;
    let var_3 = global0[_wgslsmith_index_u32(var_0.x & u_input.b, 13u)];
    return all(vec2<bool>(all(select(vec2<bool>(arg_2.a.c.x, false), !vec2<bool>(arg_0, arg_2.a.c.x), any(vec2<bool>(arg_2.a.c.x, arg_2.a.c.x)))), true));
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<bool>(!(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), false, func_4(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false, Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), 0i, vec4<f32>(1013f, 614f, -1000f, 291f), vec2<f32>(1000f, 773f), vec2<i32>(2147483647i, u_input.c.x)), 0u)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(999f, 1443f, -738f), vec3<f32>(-1162f, 342f, -802f), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(917f, 236f, -1045f))))), Struct_4(Struct_2(Struct_1(u_input.c.wzz, u_input.c.x, vec4<f32>(594f, -1000f, -1217f, -398f), vec2<f32>(1907f, 293f), u_input.c.zx), min(u_input.a, vec3<i32>(0i, u_input.c.x, 8432i)), vec2<bool>(true, false), Struct_1(u_input.c.xzx, 2147483647i, vec4<f32>(526f, 1873f, 941f, 994f), global0[_wgslsmith_index_u32(u_input.b, 13u)], vec2<i32>(0i, u_input.c.x)))), u_input.c.zyy), true);
    let var_1 = Struct_3(~u_input.b);
    global1 = array<vec2<u32>, 32>();
    global1 = array<vec2<u32>, 32>();
    var var_2 = Struct_2(Struct_1(reverseBits(u_input.a), u_input.c.x << (4294967295u % 32u), vec4<f32>(_wgslsmith_f_op_f32(609f - _wgslsmith_f_op_f32(f32(-1f) * -926f)), _wgslsmith_f_op_f32(-1000f + -187f), _wgslsmith_f_op_f32(499f * -1392f), -1972f), global0[_wgslsmith_index_u32(u_input.b, 13u)], vec2<i32>(-46163i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(0i, u_input.a.x)))), _wgslsmith_clamp_vec3_i32(firstLeadingBit((vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x) | u_input.c.zwz) | vec3<i32>(u_input.c.x, 12010i, -2147483647i)), vec3<i32>(1i, u_input.a.x, ~1i), -vec3<i32>(u_input.a.x, ~0i, -2147483647i)), vec2<bool>(4294967295u >= var_1.a, any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x))), Struct_1(u_input.c.xxz, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.a, u_input.c.xzw))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, _wgslsmith_div_f32(587f, 2118f), -115f, _wgslsmith_f_op_f32(-467f + 1435f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2046f, -927f) * vec2<f32>(1036f, -497f)))), vec2<f32>(-1187f, _wgslsmith_f_op_f32(124f + -251f)))), ~(-(~vec2<i32>(-2147483647i, 36349i)))));
    return Struct_4(Struct_2(Struct_1(~abs(var_2.d.a), max(~u_input.a.x, _wgslsmith_mult_i32(51546i, u_input.a.x)), vec4<f32>(var_2.d.d.x, _wgslsmith_f_op_f32(abs(var_2.d.c.x)), _wgslsmith_div_f32(var_2.d.d.x, var_2.d.d.x), _wgslsmith_f_op_f32(floor(var_2.d.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-401f * var_2.d.d.x), _wgslsmith_f_op_f32(-var_2.a.d.x)), ~select(var_2.b.yy, u_input.a.yy, false)), ~firstTrailingBit(vec3<i32>(2147483647i, u_input.c.x, -1i)) >> (~vec3<u32>(var_1.a, 4294967295u, u_input.b) % vec3<u32>(32u)), var_0.xy, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 32>();
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -218f)))));
    var var_0 = func_1();
    let var_1 = select(var_0.a.c, select(!var_0.a.c, vec2<bool>(var_0.a.c.x, all(select(vec3<bool>(false, var_0.a.c.x, true), vec3<bool>(true, true, false), vec3<bool>(false, true, var_0.a.c.x)))), 27050u <= _wgslsmith_mult_u32(4294967295u, u_input.b)), true);
    let var_2 = 11562u;
    let var_3 = Struct_5(Struct_4(var_0.a), Struct_4(var_0.a), var_0.a.a.c.x);
    let var_4 = select(!vec4<bool>(true, true, false, !var_3.b.a.c.x), !(!select(vec4<bool>(false, var_1.x, var_3.b.a.c.x, false), vec4<bool>(true, true, var_1.x, true), select(vec4<bool>(var_3.b.a.c.x, var_3.b.a.c.x, true, true), vec4<bool>(var_0.a.c.x, true, false, var_1.x), vec4<bool>(var_0.a.c.x, false, var_3.a.a.c.x, true)))), vec4<bool>(!any(var_3.b.a.c), (_wgslsmith_div_f32(var_0.a.d.d.x, 1000f) > _wgslsmith_f_op_f32(var_3.a.a.d.c.x - var_0.a.d.c.x)) && !(u_input.b < 57626u), var_1.x, var_0.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(var_2 ^ 54663u, 28207u), _wgslsmith_div_u32(~var_2, ~14554u)) | (abs(_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)])) ^ global1[_wgslsmith_index_u32(56439u, 32u)]), var_3.b.a.a.e ^ var_0.a.a.e);
}

