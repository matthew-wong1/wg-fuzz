struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(254f + 409f);
    var var_1 = 1u;
    global0 = array<vec2<bool>, 21>();
    return Struct_4(Struct_3(Struct_1(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1459f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - var_0), arg_0, Struct_1(-738f));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) - 452f))), arg_1.a.a, arg_1.e, ~(~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(448f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1.b, 280f))))), arg_1.a.a.a));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a.a)), Struct_1(arg_1.c), func_2(~_wgslsmith_div_i32(i32(-1i) * -13887i, ~0i)).a.a, ~(~arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f + -1072f))) + vec2<f32>(arg_1.e.a, -456f)));
    let var_2 = _wgslsmith_mod_u32(49536u, var_0.d);
    var var_3 = ~select(min(vec2<u32>(0u, 48474u), vec2<u32>(4294967295u, u_input.d)), ~(~vec2<u32>(arg_0, 484u)), false) ^ ~vec2<u32>(12309u, arg_0);
    global0 = array<vec2<bool>, 21>();
    return Struct_4(func_2(arg_2.x).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f) - -641f))), arg_1.a.a.a, arg_1.d, var_1.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-357f * _wgslsmith_div_f32(-1882f, _wgslsmith_div_f32(arg_2.b, arg_3.a))), _wgslsmith_f_op_f32(395f + _wgslsmith_f_op_f32(round(arg_3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.a.a, 1558f)) * 603f)), _wgslsmith_div_f32(2092f, func_3(abs(u_input.c), Struct_4(arg_2.a, 952f, arg_3.a, u_input.a.x, Struct_1(608f)), reverseBits(u_input.a)).b)));
    let var_1 = arg_1;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-862f, 809f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(round(arg_2.b)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(-1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1270f), arg_2.e.a)));
    let var_2 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 1i & _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zy), 0i), u_input.a.zyx, func_3(max(4294967295u, 1u), func_3(u_input.d, Struct_4(Struct_3(arg_3), arg_2.e.a, -658f, u_input.a.x, arg_3), u_input.a), _wgslsmith_add_vec4_i32(u_input.a, u_input.a)).a.a.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + arg_2.b))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(-u_input.a.xww, -vec3<i32>(19407i, 13248i, u_input.a.x), !vec3<bool>(false, arg_0.x, true)), _wgslsmith_mod_vec3_i32(u_input.a.xyz, vec3<i32>(-11960i, 40796i, 0i)) >> (~vec3<u32>(u_input.c, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<i32>(0i, -u_input.a.x, 2147483647i)));
    return func_2(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)).e;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    return func_4(!(!vec4<bool>(all(vec4<bool>(true, true, true, false)), false, any(global0[_wgslsmith_index_u32(1u, 21u)]), true)), false, func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(20779u, u_input.d, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 64232u, u_input.c), vec3<u32>(u_input.d, u_input.c, 67234u))) ^ 1u, func_2(u_input.a.x), vec4<i32>(u_input.a.x, -_wgslsmith_mod_i32(u_input.a.x, 23270i), u_input.a.x, -(~25901i))), func_3(firstLeadingBit(u_input.c), Struct_4(Struct_3(Struct_1(-1088f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)), -1i, func_3(1u, func_2(u_input.a.x), vec4<i32>(u_input.a.x, -2496i, u_input.a.x, 2147483647i)).e), u_input.a).a.a);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec4<i32>(func_3(u_input.c << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.d, 58356u)), vec2<u32>(0u, 14847u)) % 32u), func_2(-(~(-41425i))), countOneBits(vec4<i32>(abs(u_input.a.x), -6226i, func_2(arg_0.x).d, -54137i))).d, 24134i, firstTrailingBit(countOneBits(-_wgslsmith_mod_i32(arg_0.x, 21043i))), reverseBits(u_input.a.x) ^ abs(-24976i));
    var var_1 = arg_1.a.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a.a)));
    var_2 = func_4(vec4<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), false == !all(vec4<bool>(true, false, false, false)), !all(vec4<bool>(true, true, true, false)), true), true, Struct_4(arg_1, -529f, func_3(7980u, Struct_4(func_3(26536u, Struct_4(arg_1, 332f, arg_1.a.a, arg_0.x, arg_1.a), vec4<i32>(u_input.a.x, -3843i, -33808i, var_0.x)).a, _wgslsmith_f_op_f32(min(-294f, var_2.a)), arg_1.a.a, 22358i, arg_1.a), _wgslsmith_mult_vec4_i32(arg_0, arg_0)).e.a, ~u_input.a.x ^ u_input.a.x, arg_1.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.a.a)), 792f))));
    return Struct_2(func_3(u_input.c, Struct_4(Struct_3(func_3(u_input.b, Struct_4(arg_1, -461f, var_2.a, -14559i, arg_1.a), vec4<i32>(u_input.a.x, var_0.x, arg_0.x, var_0.x)).e), -2171f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1342f - var_2.a), _wgslsmith_f_op_f32(arg_1.a.a + arg_1.a.a)), _wgslsmith_sub_i32(var_0.x << (u_input.d % 32u), u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-var_2.a))), var_0).e, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-2147483647i).b + _wgslsmith_f_op_f32(floor(arg_1.a.a))), _wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(f32(-1f) * -266f)))), func_4(vec4<bool>(true, any(vec2<bool>(false, true)), all(global0[_wgslsmith_index_u32(76013u, 21u)]), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true))), any(vec2<bool>(true, true)), Struct_4(Struct_3(func_2(arg_0.x).a.a), _wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(-var_2.a)), var_2.a, u_input.a.x, func_2(func_3(u_input.b, Struct_4(Struct_3(arg_1.a), arg_1.a.a, 422f, arg_0.x, Struct_1(arg_1.a.a)), vec4<i32>(var_0.x, var_0.x, 2147483647i, 2147483647i)).d).a.a), arg_1.a), 41960u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, var_2.a), vec2<f32>(-1000f, var_2.a), false))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2189f, -937f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.a, 679f), vec2<f32>(arg_1.a.a, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(min(u_input.a, vec4<i32>(-30049i, -2147483647i, u_input.a.x, -20482i)), vec4<i32>(12847i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, 947i, -1i), select(u_input.a, u_input.a, false))), Struct_3(func_1()));
    var_0 = func_5(u_input.a, func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24290i), min(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, -15726i, u_input.a.x))), u_input.a)).a);
    var_0 = func_5(u_input.a, Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)))));
    var var_1 = func_2(max(-u_input.a.x, _wgslsmith_dot_vec4_i32(max(firstLeadingBit(u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 4371i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a)));
    let var_2 = func_3(u_input.d, func_3(_wgslsmith_mult_u32(~(~u_input.d), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(89707u, var_0.d), vec2<u32>(u_input.c, var_0.d)), ~u_input.d)), Struct_4(var_1.a, 1000f, var_0.e.x, u_input.a.x, func_4(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true)), Struct_4(Struct_3(var_0.a), var_0.b.a, -907f, 0i, Struct_1(-811f)), Struct_1(var_0.e.x))), u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.a, 279f, 978f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.e.a, 1000f, 1668f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(449f + -955f), _wgslsmith_f_op_f32(f32(-1f) * -1322f))), _wgslsmith_f_op_f32(-1468f - var_0.b.a))), _wgslsmith_f_op_f32(ceil(var_1.a.a.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(var_0.e)))), firstLeadingBit(select(~vec3<u32>(30916u, var_0.d, 1u) ^ firstTrailingBit(vec3<u32>(0u, var_0.d, u_input.b)), ~(~vec3<u32>(1u, 4567u, var_0.d)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true))));
}

