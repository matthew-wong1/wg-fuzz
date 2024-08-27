struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: Struct_1 = Struct_1(false, vec4<i32>(2147483647i, 26742i, 2147483647i, -1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> vec3<bool> {
    let var_0 = vec2<bool>(false, all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(42884u, abs(u_input.b.x)), 31u)]));
    var var_1 = 36087i;
    let var_2 = Struct_5(vec3<u32>(firstLeadingBit(64874u), max(u_input.c.x ^ firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(u_input.b.x >> (1u % 32u), u_input.c.x)), 33785u), Struct_4(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], vec3<i32>(i32(-1i) * -29883i, min(-8714i, global2.b.x), _wgslsmith_clamp_i32(u_input.a, arg_2, 2147483647i))), Struct_3(!(!vec3<bool>(false, global2.a, arg_0)), all(!vec3<bool>(var_0.x, global2.a, var_0.x)), 12100i, select(vec4<u32>(u_input.b.x, u_input.c.x, 1103u, u_input.c.x), firstLeadingBit(u_input.c), true)), Struct_3(vec3<bool>(true, any(vec4<bool>(arg_0, false, false, true)), true), false, -26117i, _wgslsmith_mult_vec4_u32(~u_input.b, min(vec4<u32>(33149u, 68470u, 34924u, 3904u), u_input.b))), Struct_2(select(!vec3<bool>(var_0.x, true, false), !vec3<bool>(false, var_0.x, true), false))), select(select(vec4<bool>(var_0.x, true, select(true, true, var_0.x), !global2.a), vec4<bool>(var_0.x, arg_1.x >= arg_1.x, any(global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), false), vec4<bool>(global2.a && var_0.x, false, var_0.x, true)), select(vec4<bool>(true, all(vec4<bool>(true, var_0.x, arg_0, true)), true, var_0.x), !select(vec4<bool>(arg_0, false, false, false), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x), !(arg_0 && global2.a)), select(false, !(4294967295u == u_input.b.x), !var_0.x)), (0u & _wgslsmith_dot_vec2_u32(u_input.c.zx << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(80977u, 1u))) < _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c.x), u_input.c.x), u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1);
    let var_4 = true;
    return vec3<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(trunc(arg_1.x)), global2.a, select(u_input.b.x, 0u, var_0.x) == _wgslsmith_add_u32(u_input.b.x, 32539u))), !all(vec2<bool>(var_0.x, false)), global2.a);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(select(select(select(func_3(false, vec2<f32>(-1714f, -787f), -2147483647i), vec3<bool>(true, true, global2.a), global2.a), !func_3(false, vec2<f32>(-1305f, 346f), -66888i), vec3<bool>(global2.a || global2.a, select(false, false, global2.a), all(vec3<bool>(true, global2.a, true)))), vec3<bool>(global2.a, true, !global2.a), vec3<bool>(true, _wgslsmith_div_f32(-608f, -990f) >= _wgslsmith_f_op_f32(floor(-647f)), true)), u_input.c.x != countOneBits(1u), -max(_wgslsmith_sub_i32(93198i, u_input.a), ~(u_input.a << (24162u % 32u))), u_input.b);
    let var_1 = select(vec2<bool>(var_0.a.x == ((u_input.a & u_input.a) <= 1i), false), select(global1[_wgslsmith_index_u32(min(1u, ~reverseBits(25684u)), 31u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.c.x, u_input.c.x)), vec3<u32>(1u, 1u, 53109u)), 31u)], var_0.a.xx), global2.a);
    global2 = Struct_1(var_0.b, abs(global2.b | -vec4<i32>(u_input.a, 1343i, 17744i, global2.b.x)) | _wgslsmith_sub_vec4_i32(global2.b, -_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, var_0.c, -1i, -2147483647i))));
    global2 = Struct_1(all(vec2<bool>(true, !global2.a || true)), global2.b);
    var var_2 = Struct_5(abs(var_0.d.wyw), Struct_4(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b.x, var_0.c, 15764i), vec3<i32>(u_input.a, u_input.a, global2.b.x)), -global0[_wgslsmith_index_u32(reverseBits(var_0.d.x), 18u)], true), var_0, Struct_3(!func_3(var_1.x, vec2<f32>(259f, -1091f), var_0.c), all(vec4<bool>(global2.a, false, true, var_1.x)) || var_0.b, var_0.c, vec4<u32>(firstTrailingBit(0u), abs(38742u), abs(u_input.c.x), 33480u)), Struct_2(select(func_3(global2.a, vec2<f32>(-1544f, -2249f), -2147483647i), !var_0.a, u_input.a != var_0.c))), vec4<bool>(func_3(!global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, 331f))), 2147483647i).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-792f, 676f, true)), 1055f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f + -191f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) * _wgslsmith_f_op_f32(sign(1712f))) + -1136f), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, max(32193i, 0i), u_input.a) | abs(~global2.b), ~_wgslsmith_mod_vec4_i32(min(global2.b, global2.b), vec4<i32>(13213i, -47929i, -1i, 2147483647i))));
    return Struct_3(var_0.a, global2.a, -24977i, ~max(var_0.d, var_0.d));
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    return countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 18u)]);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(global2.b.yzz, global2.b.wyy >> (countOneBits(~vec3<u32>(arg_0.b.d.x, 74061u, arg_0.b.d.x) << (u_input.b.zxz % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-global2.b.x, select(-5617i, arg_0.b.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.d.x, 1u, u_input.b.x), arg_0.b.d.zxz) < countOneBits(u_input.c.x)), global2.b.x));
    var var_1 = select(vec3<i32>(_wgslsmith_sub_i32(~(-1i), u_input.a), countOneBits(1i), -2147483647i), vec3<i32>(_wgslsmith_dot_vec2_i32(~(arg_0.a.zy & vec2<i32>(-28918i, 5143i)), (vec2<i32>(1i, u_input.a) ^ vec2<i32>(u_input.a, global2.b.x)) & select(global2.b.zz, vec2<i32>(u_input.a, arg_0.b.c), vec2<bool>(false, arg_0.b.a.x))), firstTrailingBit(min(abs(0i), -arg_0.c.c)), global2.b.x), func_3(arg_2.a.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(-101f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(0i & (-2147483647i & arg_0.c.c))));
    let var_2 = !func_3(any(!vec4<bool>(global2.a, false, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(664f, 109f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2490f, -729f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1065f, 1218f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1109f, -1000f))))), firstLeadingBit(1i) & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(55728i, var_1.x, 2147483647i, var_0.x), global2.b), global2.b ^ vec4<i32>(global2.b.x, 2147483647i, -1i, -2147483647i))).x;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2171f + _wgslsmith_f_op_f32(ceil(843f))), -971f, _wgslsmith_f_op_f32(f32(-1f) * -1995f), _wgslsmith_f_op_f32(floor(-2044f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, -529f, -618f, -776f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(499f, -1180f, 1053f, 969f) - vec4<f32>(-1000f, 891f, 1000f, 1000f)))))));
    let var_4 = global2.b;
    return arg_2.a.x;
}

fn func_1() -> bool {
    let var_0 = !(!(!(!select(vec3<bool>(false, global2.a, true), vec3<bool>(false, false, global2.a), global2.a))));
    let var_1 = vec3<bool>(func_5(Struct_4(func_4(func_2()), func_2(), Struct_3(var_0, false, _wgslsmith_sub_i32(0i, global2.b.x), vec4<u32>(27831u, 19898u, u_input.c.x, 58432u) ^ vec4<u32>(u_input.b.x, 4294967295u, 0u, 1u)), Struct_2(func_3(var_0.x, vec2<f32>(-295f, -145f), -72784i))), func_3(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(117f, 1000f) + vec2<f32>(1119f, 442f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, 1046f)), u_input.c.x > 40732u)), u_input.a).xz, Struct_2(vec3<bool>(true, true, true))), false, func_2().b);
    var var_2 = vec3<i32>(u_input.a, ~reverseBits(-34444i), func_4(Struct_3(var_0, true, u_input.a >> (12698u % 32u), vec4<u32>(60792u, u_input.b.x, u_input.c.x, u_input.c.x))).x) | ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global2.b.x, u_input.a), global2.b.x, i32(-1i) * -7746i), func_4(Struct_3(vec3<bool>(var_1.x, false, false), var_0.x, global2.b.x, vec4<u32>(11113u, u_input.c.x, u_input.b.x, u_input.b.x))));
    global2 = Struct_1(!any(vec4<bool>(var_0.x, true == global2.a, var_0.x, global2.a && true)), -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 11047i, -44418i, var_2.x), vec4<i32>(7606i, 2147483647i, global2.b.x, u_input.a)), global2.b), vec4<i32>(-var_2.x, _wgslsmith_mult_i32(var_2.x, 2147483647i), ~var_2.x, 31784i)));
    let var_3 = var_1;
    return all(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(all(global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), global2.a, global2.a) | func_1();
    global2 = Struct_1(!(((i32(-1i) * -1i) | abs(global2.b.x)) > -_wgslsmith_mult_i32(27465i, global2.b.x)), ~vec4<i32>(global2.b.x ^ u_input.a, global2.b.x, global2.b.x, ~func_2().c));
    var var_1 = global2.b.x > ~_wgslsmith_div_i32(global2.b.x, ~(-95796i));
    global1 = array<vec2<bool>, 31>();
    var_1 = global2.a;
    var_1 = true;
    let var_2 = ~(-countOneBits(global0[_wgslsmith_index_u32(u_input.c.x ^ (70817u & u_input.c.x), 18u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-718f, var_3)))))), vec2<u32>(~u_input.c.x, 4294967295u), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.b.zw, vec2<i32>(1i, -19457i), vec2<i32>(global2.b.x, u_input.a)) ^ -vec2<i32>(var_2.x, var_2.x), vec2<i32>(abs(-48446i), 28428i)) & (vec2<i32>(~u_input.a, u_input.a) << (vec2<u32>(firstLeadingBit(30655u), _wgslsmith_sub_u32(0u, u_input.c.x)) % vec2<u32>(32u))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(select(1135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, 417f, global2.a)) - _wgslsmith_f_op_f32(floor(var_3))), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3))))), _wgslsmith_f_op_f32(min(var_3, 751f))));
}

