struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_i32(min(_wgslsmith_mod_i32(arg_0, _wgslsmith_mult_i32(-54859i, reverseBits(arg_0))), abs(~(1i & arg_0))), _wgslsmith_div_i32(max(arg_1.b.x, -9179i), -u_input.a));
    global0 = array<vec2<f32>, 19>();
    global1 = Struct_3(Struct_1(select(select(vec3<bool>(global1.a.a.x, true, arg_1.d.a.x), !arg_1.d.a, vec3<bool>(false, false, true)), !(!arg_2.a), true | (false | arg_2.a.x)), vec2<u32>(8799u, arg_3), _wgslsmith_f_op_f32(-arg_2.c)), arg_2.a.x, u_input.c.x, !arg_1.d.a.x, vec4<bool>(true, global1.b, !all(!arg_1.c.zxz), true));
    var var_1 = arg_1.a.a.x;
    global0 = array<vec2<f32>, 19>();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f - 397f) - 2112f) + global1.a.c), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, _wgslsmith_f_op_f32(-353f - 1523f), _wgslsmith_f_op_f32(arg_2.c * arg_2.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.c, arg_2.c, arg_2.c))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d.c, global1.a.c, global1.a.c), vec3<f32>(-220f, arg_1.d.c, -1354f)))), vec3<f32>(arg_1.d.c, arg_1.a.c, _wgslsmith_f_op_f32(-arg_1.a.c)), !(arg_1.a.c != arg_1.a.c))))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = vec2<i32>(1i, -1i) << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(~37071u, 1u), u_input.c, ~firstLeadingBit(vec2<u32>(u_input.c.x, global1.a.b.x)))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.c, -389f, global1.a.c), vec3<f32>(-688f, global1.a.c, global1.a.c), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.c, -273f, global1.a.c)))))), _wgslsmith_f_op_vec3_f32(func_3(arg_0, Struct_2(global1.a, ~vec4<i32>(u_input.b, 1i, 50695i, arg_0), vec4<bool>(true, global1.b, false, global1.a.a.x), Struct_1(global1.e.yxy, vec2<u32>(u_input.d, global1.a.b.x), global1.a.c), ~vec3<u32>(global1.c, 8979u, 33922u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(u_input.c.x, global1.c), -1000f), _wgslsmith_clamp_u32(global1.c, _wgslsmith_add_u32(u_input.c.x, 5974u), ~55158u)))) * vec3<f32>(global1.a.c, global1.a.c, global1.a.c));
    var_0 = vec2<i32>(1i, firstTrailingBit(2147483647i >> (u_input.c.x % 32u)));
    global0 = array<vec2<f32>, 19>();
    var var_2 = -292f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = global1.e.xx;
    global0 = array<vec2<f32>, 19>();
    var_0 = !global1.e.wz;
    var_0 = select(select(select(global1.a.a.zx, select(!global1.a.a.yz, !arg_1.yx, global1.a.a.zy), vec2<bool>(true, false)), vec2<bool>(global1.c > ~21645u, !arg_1.x), any(vec2<bool>(true, global1.e.x)) || true), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, arg_1.x), arg_1.wx), !select(vec2<bool>(true, global1.b), vec2<bool>(global1.d, global1.a.a.x), arg_1.xx), true), vec2<bool>(!any(vec2<bool>(arg_1.x, global1.e.x)), !arg_1.x), true), global1.a.a.yx);
    var var_1 = Struct_3(global1.a, false, ~_wgslsmith_mult_u32(1u, 0u), select(arg_1.x, var_0.x, !arg_1.x), !select(vec4<bool>(var_0.x, false, any(vec3<bool>(var_0.x, false, arg_1.x)), global1.e.x), !global1.e, select(global1.e, select(global1.e, vec4<bool>(arg_1.x, false, true, false), global1.a.a.x), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, false, global1.d, true), vec4<bool>(var_0.x, global1.a.a.x, false, global1.d)))));
    return arg_1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = vec4<bool>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b)) + _wgslsmith_f_op_f32(global1.a.c - _wgslsmith_f_op_f32(f32(-1f) * -586f))), global1.e), any(select(select(vec2<bool>(true, false), select(global1.e.zw, vec2<bool>(global1.a.a.x, true), global1.b), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(global1.e.x, true), vec2<bool>(false, arg_0.x))), select(select(vec2<bool>(false, true), vec2<bool>(global1.d, false), arg_0.x), arg_0, u_input.b == 1i), select(vec2<bool>(false, false), vec2<bool>(global1.b, true), arg_0.x))), any(vec4<bool>(false, global1.a.a.x, global1.d, false || global1.d)), any(global1.e));
    var var_1 = _wgslsmith_mod_vec4_u32(arg_1, firstLeadingBit(min(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.d, u_input.c.x)), abs(arg_1)), ~arg_1 >> (~arg_1 % vec4<u32>(32u)))));
    var var_2 = global0[_wgslsmith_index_u32(arg_1.x, 19u)];
    global0 = array<vec2<f32>, 19>();
    var var_3 = arg_1.x;
    return Struct_4(-_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -248i, ~2147483647i, u_input.a), ~firstLeadingBit(vec3<i32>(-1i, -27200i, u_input.b)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-1i, u_input.a, 35762i)), vec3<i32>(u_input.a, 57655i, u_input.b))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = select(select(select(global1.e.xyx, global1.e.zxw, func_4(1639f, global1.e) || false), !vec3<bool>(!global1.e.x, any(global1.a.a), !arg_2), global1.a.a), vec3<bool>(any(!select(vec3<bool>(arg_2, global1.a.a.x, false), global1.e.zyw, arg_2)), global1.a.a.x, func_4(-1168f, !vec4<bool>(false, true, global1.b, false))), select(global1.e.zyw, select(select(select(global1.a.a, global1.e.wxy, vec3<bool>(arg_2, arg_2, global1.e.x)), !vec3<bool>(false, global1.a.a.x, arg_2), !global1.e.zxy), vec3<bool>(true | arg_2, true, true), !select(global1.e.wwx, global1.a.a, global1.d)), global1.e.ywx));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, global1.c, 8942u, global1.c), vec4<u32>(5813u, arg_1, arg_1, 5360u))), ~countOneBits(vec4<u32>(6805u, 23712u, 7547u, 5841u) << (vec4<u32>(44963u, u_input.c.x, 7658u, 57638u) % vec4<u32>(32u)))));
    var_0 = Struct_4(vec3<i32>(-65585i, u_input.a, arg_3.x));
    var_0 = func_1(select(global1.a.a.xx, vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1397f) == _wgslsmith_f_op_f32(global1.a.c * 181f), true), true), countOneBits(var_2) >> (abs(~_wgslsmith_add_vec4_u32(var_2, vec4<u32>(1u, global1.a.b.x, 1u, 1u))) % vec4<u32>(32u)));
    return Struct_5(Struct_1(vec3<bool>(arg_2, true, any(!vec2<bool>(arg_2, global1.e.x))), countOneBits(vec2<u32>(~1u, 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(-global1.a.c))))), func_1(vec2<bool>(all(global1.e), false), var_2));
}

fn func_6(arg_0: Struct_5, arg_1: f32) -> vec4<bool> {
    let var_0 = !arg_0.a.a.x;
    var var_1 = Struct_4(_wgslsmith_clamp_vec3_i32(-vec3<i32>(~arg_0.b.a.x, 31417i, u_input.b), arg_0.b.a, -(~vec3<i32>(52327i, u_input.a, -2654i) | _wgslsmith_mod_vec3_i32(arg_0.b.a, vec3<i32>(18012i, u_input.a, -16519i)))));
    var_1 = Struct_4(var_1.a);
    let var_2 = ~(~(~(~vec4<u32>(93506u, 27407u, u_input.d, 5155u)))) ^ select((_wgslsmith_add_vec4_u32(vec4<u32>(29808u, global1.a.b.x, arg_0.a.b.x, 0u), vec4<u32>(45784u, 38268u, u_input.c.x, arg_0.a.b.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.b.x, 4294967295u, 23190u, 25109u), vec4<u32>(u_input.d, 23144u, 70479u, global1.c))) << (vec4<u32>(u_input.c.x ^ 31695u, 4294967295u, global1.c >> (u_input.d % 32u), ~arg_0.a.b.x) % vec4<u32>(32u)), vec4<u32>(global1.c, select(global1.c, ~u_input.c.x, u_input.a == var_1.a.x), 17727u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 64883u, u_input.d, 1u) & vec4<u32>(4294967295u, 21318u, arg_0.a.b.x, 142427u), ~vec4<u32>(global1.a.b.x, 71119u, 81436u, 4294967295u))), select(!global1.e, !global1.e, select(select(vec4<bool>(var_0, global1.b, arg_0.a.a.x, arg_0.a.a.x), global1.e, false), vec4<bool>(false, true, arg_0.a.a.x, false), global1.e)));
    let var_3 = ~u_input.c;
    return select(global1.e, global1.e, select(!select(!vec4<bool>(arg_0.a.a.x, true, true, var_0), select(vec4<bool>(global1.b, arg_0.a.a.x, true, var_0), global1.e, arg_0.a.a.x), global1.e), !(!(!vec4<bool>(var_0, var_0, false, false))), global1.e.x & any(select(vec4<bool>(true, var_0, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, var_0, false, true), vec4<bool>(true, global1.b, var_0, false)))));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_5) -> Struct_3 {
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    var var_0 = func_4(global1.a.c, arg_2.c);
    let var_1 = func_5(Struct_4(~vec3<i32>(1i, arg_3.b.a.x, 1i)), ~1u, true && select(false, !all(vec2<bool>(arg_0.a.a.x, arg_3.a.a.x)), any(!vec4<bool>(false, false, false, arg_1))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(arg_3.b.a.x), select(arg_3.b.a.x, -2147483647i, true)), vec2<i32>(-1i) * -vec2<i32>(34971i, arg_3.b.a.x)), -2119i, func_1(select(arg_0.d.a.yx, func_6(Struct_5(arg_0.a, arg_3.b), arg_2.d.c).yw, vec2<bool>(arg_0.c.x, global1.d)), reverseBits(reverseBits(vec4<u32>(1u, arg_3.a.b.x, arg_3.a.b.x, 0u)))).a.x, 2147483647i)).b;
    global0 = array<vec2<f32>, 19>();
    return Struct_3(arg_0.a, true, u_input.c.x, (min(4294967295u, 4294967295u) < (u_input.c.x & ~11562u)) | !any(func_6(Struct_5(Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, arg_0.e.x), arg_2.a.c), Struct_4(arg_3.b.a)), 1000f)), !select(arg_0.c, !select(vec4<bool>(arg_0.c.x, false, false, true), vec4<bool>(arg_2.d.a.x, arg_2.a.a.x, false, global1.a.a.x), true), vec4<bool>(global1.e.x, arg_3.a.a.x || global1.e.x, all(arg_2.c.zz), global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(~countOneBits(_wgslsmith_mult_u32(20146u, 26007u)));
    global1 = func_7(Struct_2(Struct_1(vec3<bool>(true, 1238i <= u_input.b, true), ~min(vec2<u32>(u_input.d, u_input.c.x), global1.a.b), global1.a.c), vec4<i32>(u_input.b, ~(~14889i), u_input.b, u_input.b), func_6(func_5(func_1(global1.a.a.yy, vec4<u32>(4294967295u, global1.c, 9718u, 42007u)), _wgslsmith_clamp_u32(var_0, 4294967295u, 3425u), global1.d | true, min(vec4<i32>(u_input.b, u_input.b, -43648i, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-1748f - _wgslsmith_f_op_f32(global1.a.c - global1.a.c))), func_5(Struct_4(~vec3<i32>(u_input.a, u_input.a, u_input.a)), global1.a.b.x, true, ~_wgslsmith_div_vec4_i32(vec4<i32>(8206i, 37517i, -36081i, u_input.b), vec4<i32>(-23301i, 32967i, 2147483647i, u_input.a))).a, ~(vec3<u32>(var_0, 102463u, global1.c) ^ vec3<u32>(4799u, u_input.d, var_0)) << (vec3<u32>(0u, u_input.d, _wgslsmith_add_u32(4294967295u, u_input.d)) % vec3<u32>(32u))), true, Struct_2(func_5(Struct_4(max(vec3<i32>(-1i, -2147483647i, u_input.b), vec3<i32>(-27635i, u_input.a, u_input.b))), ~var_0, global1.d, vec4<i32>(~1i, firstLeadingBit(1i), _wgslsmith_div_i32(u_input.a, -1i), _wgslsmith_sub_i32(-2147483647i, 0i))).a, _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(13668i, -25174i, u_input.a, 0i)), vec4<i32>(-2147483647i, u_input.b, 32145i, u_input.a) & ~vec4<i32>(-1i, 0i, u_input.b, -2147483647i), vec4<i32>(-42320i, func_5(Struct_4(vec3<i32>(u_input.b, u_input.b, u_input.b)), var_0, true, vec4<i32>(1i, 2147483647i, -2147483647i, u_input.b)).b.a.x, u_input.a, 0i)), vec4<bool>(true, (-37067i ^ u_input.a) != (i32(-1i) * -1i), any(select(vec4<bool>(false, global1.b, global1.a.a.x, false), vec4<bool>(global1.e.x, global1.a.a.x, true, false), false)), abs(u_input.a) < func_1(vec2<bool>(false, true), vec4<u32>(1u, global1.c, 112905u, global1.a.b.x)).a.x), func_5(func_5(func_5(Struct_4(vec3<i32>(u_input.a, u_input.b, 0i)), 1u, false, vec4<i32>(-7624i, 1i, 12813i, -62415i)).b, var_0, !global1.a.a.x, -vec4<i32>(1i, -1i, u_input.b, u_input.b)).b, ~global1.c, _wgslsmith_add_i32(35378i, -1i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -22770i), vec3<i32>(-1i, -25492i, 1i)), -vec4<i32>(u_input.a, u_input.b, u_input.b, 0i) | vec4<i32>(-15234i, u_input.a, -1i, u_input.a)).a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(67919u, 4294967295u, var_0), vec3<u32>(0u, 5341u, var_0))), Struct_5(global1.a, func_5(Struct_4(max(vec3<i32>(-21581i, u_input.b, 2147483647i), vec3<i32>(u_input.b, 30147i, u_input.a))), countOneBits(_wgslsmith_dot_vec2_u32(global1.a.b, global1.a.b)), true, vec4<i32>(u_input.b, u_input.a, abs(u_input.b), i32(-1i) * -2147483647i)).b));
    global1 = func_7(Struct_2(func_7(Struct_2(global1.a, ~vec4<i32>(0i, u_input.a, u_input.b, u_input.a), global1.e, global1.a, vec3<u32>(global1.a.b.x, 47866u, 71255u)), true, Struct_2(global1.a, -vec4<i32>(u_input.b, 1761i, u_input.a, u_input.a), select(global1.e, vec4<bool>(true, true, true, global1.a.a.x), false), func_7(Struct_2(global1.a, vec4<i32>(-32297i, -15756i, u_input.a, u_input.b), global1.e, Struct_1(vec3<bool>(true, global1.b, false), global1.a.b, 1030f), vec3<u32>(44831u, u_input.c.x, 6928u)), true, Struct_2(Struct_1(global1.a.a, vec2<u32>(global1.a.b.x, 65670u), global1.a.c), vec4<i32>(u_input.b, 0i, 2147483647i, u_input.a), vec4<bool>(false, global1.d, global1.b, global1.d), Struct_1(global1.e.yzx, u_input.c, 1000f), vec3<u32>(global1.c, 0u, 4294967295u)), Struct_5(Struct_1(global1.a.a, global1.a.b, 1562f), Struct_4(vec3<i32>(u_input.a, 2147483647i, u_input.a)))).a, vec3<u32>(var_0, 7451u, 35683u) >> (vec3<u32>(1u, 1u, var_0) % vec3<u32>(32u))), func_5(Struct_4(vec3<i32>(42454i, u_input.a, u_input.b)), _wgslsmith_clamp_u32(2790u, 32188u, 678u), func_4(global1.a.c, global1.e), vec4<i32>(-1i, u_input.b, u_input.a, 0i) & vec4<i32>(u_input.a, u_input.b, 11867i, 2147483647i))).a, ~vec4<i32>(u_input.b >> (25957u % 32u), u_input.b, u_input.a, firstLeadingBit(u_input.a)), func_7(Struct_2(Struct_1(vec3<bool>(false, false, true), global1.a.b, -834f), -vec4<i32>(-1i, u_input.b, -16392i, 1i), select(vec4<bool>(global1.a.a.x, global1.e.x, global1.a.a.x, true), vec4<bool>(global1.b, false, false, global1.b), true), func_7(Struct_2(global1.a, vec4<i32>(-1i, u_input.a, u_input.a, 1i), global1.e, global1.a, vec3<u32>(var_0, u_input.c.x, 9625u)), true, Struct_2(global1.a, vec4<i32>(-2147483647i, u_input.a, u_input.b, u_input.a), vec4<bool>(false, false, true, global1.a.a.x), Struct_1(global1.e.wyy, vec2<u32>(15768u, 66474u), -2474f), vec3<u32>(var_0, 1u, u_input.c.x)), Struct_5(global1.a, Struct_4(vec3<i32>(-1i, u_input.b, -2147483647i)))).a, vec3<u32>(4294967295u, 1u, var_0) >> (vec3<u32>(u_input.c.x, global1.c, 4294967295u) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(45336u, 0u, var_0, var_0), vec4<u32>(u_input.c.x, 14938u, var_0, var_0)) >= _wgslsmith_dot_vec2_u32(u_input.c, global1.a.b), Struct_2(func_7(Struct_2(Struct_1(vec3<bool>(global1.d, true, false), vec2<u32>(global1.a.b.x, var_0), 1966f), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b), global1.e, Struct_1(vec3<bool>(true, global1.b, true), vec2<u32>(global1.a.b.x, 4294967295u), -501f), vec3<u32>(4294967295u, 65186u, var_0)), true, Struct_2(global1.a, vec4<i32>(u_input.b, u_input.b, u_input.a, 2302i), vec4<bool>(false, true, false, true), Struct_1(global1.e.xzz, global1.a.b, 486f), vec3<u32>(4294967295u, u_input.d, global1.a.b.x)), Struct_5(global1.a, Struct_4(vec3<i32>(1i, -1i, 18549i)))).a, -vec4<i32>(u_input.a, u_input.a, u_input.b, -40894i), select(global1.e, global1.e, global1.e.x), global1.a, vec3<u32>(var_0, 3814u, 150717u) ^ vec3<u32>(44158u, 17558u, global1.c)), func_5(Struct_4(vec3<i32>(u_input.a, u_input.b, 2147483647i)), var_0, false, vec4<i32>(-28751i, 26615i, 1i, u_input.b))).e, global1.a, (~vec3<u32>(global1.a.b.x, 42872u, var_0) >> ((vec3<u32>(global1.c, 4294967295u, 24802u) | vec3<u32>(var_0, u_input.c.x, 1u)) % vec3<u32>(32u))) >> (~(~vec3<u32>(0u, u_input.d, global1.a.b.x)) % vec3<u32>(32u))), global1.a.a.x, Struct_2(func_5(Struct_4(func_1(global1.e.wx, vec4<u32>(44623u, u_input.d, global1.c, 1u)).a), global1.c, global1.a.a.x, firstTrailingBit(~vec4<i32>(u_input.b, 8304i, 2147483647i, u_input.a))).a, vec4<i32>(_wgslsmith_sub_i32(~2147483647i, -2147483647i), ~(i32(-1i) * -26106i), abs(_wgslsmith_div_i32(-742i, 40152i)), _wgslsmith_mod_i32(reverseBits(u_input.a), u_input.a)), !vec4<bool>(global1.e.x, true, true, !global1.b), global1.a, select(~vec3<u32>(global1.a.b.x, 4294967295u, 5336u), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(15839u, u_input.d), vec2<u32>(global1.c, var_0)), 0u), !global1.a.a.x || false)), func_5(Struct_4(~vec3<i32>(40999i, u_input.b, 25520i)), global1.a.b.x, !(true || !global1.e.x), vec4<i32>(19322i, 1i, -2147483647i, func_5(Struct_4(vec3<i32>(0i, u_input.b, u_input.b)), ~var_0, -616f <= global1.a.c, vec4<i32>(4230i, -3699i, -1986i, 0i) | vec4<i32>(u_input.a, u_input.b, u_input.a, -2147483647i)).b.a.x)));
    global1 = Struct_3(func_7(Struct_2(global1.a, ~vec4<i32>(1i, 13636i, 22270i, -2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a), vec4<i32>(-32367i, u_input.b, u_input.b, u_input.b)), global1.e, global1.a, ~(vec3<u32>(1u, 4294967295u, 4294967295u) | vec3<u32>(1u, global1.c, global1.c))), true, Struct_2(global1.a, -_wgslsmith_sub_vec4_i32(vec4<i32>(-63149i, u_input.a, u_input.b, 4406i), vec4<i32>(2147483647i, u_input.b, 0i, -33442i)), global1.e, func_5(func_1(global1.a.a.yz, vec4<u32>(1u, 4294967295u, 33533u, 6663u)), var_0 | 0u, var_0 <= global1.a.b.x, min(vec4<i32>(u_input.b, u_input.a, u_input.a, 43819i), vec4<i32>(u_input.a, -50752i, u_input.b, 2147483647i))).a, vec3<u32>(_wgslsmith_div_u32(4281u, var_0), ~var_0, 4294967295u)), Struct_5(func_5(func_5(Struct_4(vec3<i32>(22092i, u_input.b, -1i)), 22293u, false, vec4<i32>(u_input.a, u_input.b, u_input.b, 2147483647i)).b, 0u ^ var_0, !global1.d, abs(vec4<i32>(0i, u_input.b, 3192i, 72583i))).a, func_5(Struct_4(vec3<i32>(12357i, u_input.a, u_input.a)), min(1u, global1.a.b.x), all(vec2<bool>(global1.d, global1.d)), vec4<i32>(0i, u_input.a, 13882i, 2147483647i)).b)).a, false, u_input.c.x, false, !(!(!select(vec4<bool>(false, global1.b, false, global1.a.a.x), global1.e, vec4<bool>(global1.a.a.x, false, global1.e.x, true)))));
    var var_1 = Struct_5(Struct_1(vec3<bool>(global1.b, any(!global1.e.xz), global1.e.x), vec2<u32>(~firstTrailingBit(u_input.c.x), select(105042u << (global1.c % 32u), _wgslsmith_div_u32(4294967295u, var_0), false)), 1096f), func_1(!global1.e.zz, ~abs(vec4<u32>(0u, var_0, u_input.c.x, 15055u) ^ vec4<u32>(global1.c, 11463u, var_0, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1034f, var_1.a.c, var_1.a.c)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c, global1.a.c, -918f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.a.c, 792f) * vec3<f32>(-1000f, global1.a.c, -1000f)))))));
}

