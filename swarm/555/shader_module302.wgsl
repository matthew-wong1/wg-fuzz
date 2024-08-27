struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: bool;

var<private> global3: f32 = -1056f;

var<private> global4: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(40860u, 24842u, 4294967295u, 22302u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(64059u, 1u, 26821u, 1u), vec4<u32>(1u, 4294967295u, 41198u, 4294967295u), vec4<u32>(2730u, 1u, 24073u, 5980u), vec4<u32>(9891u, 0u, 74506u, 19977u), vec4<u32>(44096u, 4575u, 4414u, 11246u), vec4<u32>(14702u, 1u, 42538u, 0u), vec4<u32>(1u, 0u, 4294967295u, 164421u), vec4<u32>(1u, 48721u, 0u, 0u), vec4<u32>(0u, 1u, 43308u, 4294967295u), vec4<u32>(0u, 75544u, 41249u, 26589u), vec4<u32>(1u, 4294967295u, 1u, 21763u), vec4<u32>(51892u, 4294967295u, 26327u, 19491u), vec4<u32>(32967u, 23601u, 106364u, 8954u), vec4<u32>(0u, 54242u, 1u, 4294967295u), vec4<u32>(9798u, 18325u, 59385u, 43189u), vec4<u32>(1u, 0u, 28485u, 16377u), vec4<u32>(746u, 121545u, 14130u, 4294967295u), vec4<u32>(10078u, 4294967295u, 16643u, 1u), vec4<u32>(11893u, 0u, 59987u, 4294967295u), vec4<u32>(588u, 0u, 103363u, 59316u), vec4<u32>(4294967295u, 9948u, 51050u, 4294967295u), vec4<u32>(4294967295u, 84930u, 0u, 60775u), vec4<u32>(1u, 9440u, 12546u, 0u), vec4<u32>(43842u, 0u, 1u, 0u), vec4<u32>(17712u, 44967u, 0u, 60435u), vec4<u32>(1u, 4294967295u, 5679u, 10686u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = ~arg_2.a.b.x;
    global4 = array<vec4<u32>, 28>();
    var var_1 = 1i;
    global1 = array<Struct_2, 18>();
    global2 = !arg_3 & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-483f))) * 679f) > arg_0.a.a);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = vec4<i32>(~(~18129i), arg_1, arg_1, min(~u_input.a, -arg_0.c) & u_input.c);
    var var_1 = select(select(vec4<bool>(!all(vec3<bool>(true, true, true)), false, (u_input.b.x > 43837u) | func_3(global1[_wgslsmith_index_u32(11087u, 18u)], vec3<f32>(510f, arg_0.a, arg_0.a), Struct_3(Struct_1(825f, global0.wz, arg_1), u_input.c, vec2<f32>(-130f, 735f), arg_0.b.x), false), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), true), !select(2147483647i <= arg_1, true, true)), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), true), vec4<bool>(any(vec2<bool>(true, false)), false, true, false), vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false))), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(false, true, false))), true, !(!any(vec2<bool>(true, false)))));
    global1 = array<Struct_2, 18>();
    let var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a)))), countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 27676u), vec2<u32>(1u, u_input.b.x)), vec2<u32>(u_input.b.x, 1u), vec2<u32>(global0.x, 0u) & global0.yy)), -2147483647i & arg_0.c), arg_0.b.x);
    global0 = _wgslsmith_clamp_vec4_u32(max(global4[_wgslsmith_index_u32(~min(firstLeadingBit(var_2.c), _wgslsmith_dot_vec3_u32(vec3<u32>(2104u, 0u, 0u), global0.wwz)), 28u)], reverseBits(global4[_wgslsmith_index_u32(global0.x, 28u)])), _wgslsmith_div_vec4_u32(vec4<u32>(min(1u, 0u >> (global0.x % 32u)), u_input.b.x, global0.x, ~(~u_input.b.x)), select(~global4[_wgslsmith_index_u32(global0.x, 28u)], global4[_wgslsmith_index_u32(~select(u_input.b.x, 1u, var_1.x), 28u)], vec4<bool>(var_1.x, select(var_1.x, var_1.x, var_1.x), var_1.x || true, true))), select(vec4<u32>(var_2.c, 1u, 83243u, u_input.b.x), ~_wgslsmith_clamp_vec4_u32(global4[_wgslsmith_index_u32(global0.x, 28u)], vec4<u32>(var_2.a.b.x, 69757u, 67741u, global0.x), vec4<u32>(18834u, arg_0.b.x, 4294967295u, var_2.c)), var_1.x) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 17992u, var_2.b.b.x, var_2.c), vec4<u32>(global0.x >> (var_2.a.b.x % 32u), var_2.a.b.x ^ 0u, var_2.a.b.x, firstLeadingBit(4294967295u))));
    return func_3(Struct_2(arg_0, arg_0, abs(55842u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, 694f, arg_0.a) + vec3<f32>(-1098f, arg_0.a, -286f))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.a)) * _wgslsmith_f_op_f32(select(1536f, -179f, var_1.x))), u_input.b, arg_1), _wgslsmith_add_i32(~(-8035i), arg_1 | -2147483647i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, var_2.b.a) * vec2<f32>(-1036f, var_2.a.a)))))), reverseBits(u_input.b.x) >> (global0.x % 32u)), true);
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = func_2(Struct_1(-1784f, global0.xw, u_input.a), ~max(abs(firstTrailingBit(1i)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 43113i, 4359i, -2147483647i), vec4<i32>(u_input.a, -3459i, -23093i, 0i)))));
    global2 = ((_wgslsmith_f_op_f32(floor(588f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-984f * 564f), _wgslsmith_f_op_f32(step(835f, -454f)))) != arg_0.x) || arg_0.x;
    let var_1 = -u_input.c;
    global4 = array<vec4<u32>, 28>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), vec2<u32>(~global0.x, global0.x), min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, var_1), vec3<i32>(-2147483647i, -4423i, -56544i), vec3<i32>(1i, 1i, -9789i)), vec3<i32>(u_input.a, u_input.c, var_1) << (vec3<u32>(0u, 0u, 4426u) % vec3<u32>(32u))), vec3<i32>(1i, 0i, -2147483647i)), 0i));
    return select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xx, !func_3(Struct_2(Struct_1(var_2.a, global0.wy, -4891i), Struct_1(328f, global0.zw, var_2.c), 1u), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.a)), 1303f, _wgslsmith_f_op_f32(sign(917f))), Struct_3(Struct_1(-435f, u_input.b, 2147483647i), -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 1785f)), 29329u), arg_0.x));
}

fn func_5(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_3(Struct_1(1761f, vec2<u32>(global0.x, 28060u >> (1u % 32u)), u_input.a), -2147483647i, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1307f, _wgslsmith_f_op_f32(865f - _wgslsmith_f_op_f32(ceil(855f)))))), ~(~global0.x));
    global2 = !(arg_0.x & true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))), vec2<u32>(_wgslsmith_mod_u32(83459u, ~20193u), ~(var_0.d & 0u)), var_0.a.c), Struct_1(354f, var_0.a.b, 1i), ~(~4294967295u | ~_wgslsmith_mult_u32(var_0.d, global0.x)));
    let var_2 = _wgslsmith_f_op_f32(-1155f * var_0.c.x);
    var var_3 = vec4<bool>(arg_0.x, false, any(func_4(vec3<bool>(var_1.a.a >= 338f, true, false | arg_0.x))), true);
    return u_input.b.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> f32 {
    global4 = array<vec4<u32>, 28>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(809f)))), u_input.b, arg_1);
    global2 = arg_0.x;
    let var_1 = func_5(func_4(select(select(vec3<bool>(arg_0.x, arg_0.x, true), select(arg_0.xwx, vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, false, true)), all(arg_0.zxz)), vec3<bool>(func_2(Struct_1(var_0.a, u_input.b, u_input.a), u_input.c), 1u == arg_2.a.b.x, arg_0.x & false), vec3<bool>(true, true, true))));
    let var_2 = vec4<i32>(-12978i, arg_1, -_wgslsmith_add_i32(-1i << ((global0.x << (global0.x % 32u)) % 32u), -arg_2.a.c >> ((global0.x | 4294967295u) % 32u)), ~_wgslsmith_mult_i32(~(i32(-1i) * -2147483647i), 1i));
    return -364f;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(-231f, ~vec2<u32>(_wgslsmith_sub_u32(arg_2, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, arg_2), global0.wzy)), u_input.a), reverseBits(61039i), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(185f, _wgslsmith_f_op_f32(step(-1743f, arg_0.a.a))))), arg_0.c.x), 4294967295u);
    var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(-178f, arg_3.x), _wgslsmith_sub_vec2_u32(u_input.b, firstTrailingBit(~vec2<u32>(var_0.a.b.x, 7496u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_0.b, arg_0.a.c), ~(i32(-1i) * -1i))), var_0.a.c, vec2<f32>(_wgslsmith_div_f32(-1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1127f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(arg_0.a.a + -905f))))), arg_2);
    var var_1 = arg_0.a;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * -1832f)), countOneBits(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(12738u, 62232u))), countOneBits(0i >> (~arg_0.d % 32u))), -var_1.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) * -1049f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) + _wgslsmith_f_op_f32(-430f - -181f))), var_0.c)), ~min(_wgslsmith_div_u32(~4294967295u, u_input.b.x >> (arg_0.a.b.x % 32u)), global0.x));
    global4 = array<vec4<u32>, 28>();
    return func_4(select(vec3<bool>(!arg_1, ~var_0.a.c > -1i, false), select(!select(vec3<bool>(true, false, arg_1), vec3<bool>(true, false, true), arg_1), select(vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, false), true), arg_1), !vec3<bool>(false, false, arg_1)), select(select(!vec3<bool>(arg_1, true, arg_1), !vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_1, arg_1), true)), vec3<bool>(true, 2309f != arg_3.x, any(vec2<bool>(arg_1, true))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1475f + -777f) + _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false), -65994i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 4294967295u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 65641u), ~global0.wz, vec2<u32>(4294967295u, global0.x)), _wgslsmith_div_i32(82832i, u_input.a & 0i)), reverseBits(u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-973f, 4285f) - vec2<f32>(1000f, 618f)), vec2<f32>(1505f, -537f))) - _wgslsmith_div_vec2_f32(vec2<f32>(2427f, -365f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1235f, -1000f))))), _wgslsmith_sub_u32(global0.x, 1u) & _wgslsmith_dot_vec4_u32(~global4[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), ((~u_input.a << (~global0.x % 32u)) < 1i) | true, max(_wgslsmith_clamp_u32(~60329u, ~global0.x, _wgslsmith_dot_vec2_u32(global0.xw, u_input.b)), ~countOneBits(u_input.b.x)) ^ 82837u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(593f, -970f, -497f), vec3<f32>(1000f, 1570f, 923f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, -1104f, 1200f) + vec3<f32>(-598f, -252f, 1605f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2235f, -411f, -1462f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1984f)), _wgslsmith_f_op_f32(step(444f, _wgslsmith_f_op_f32(-2161f - 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(511f - -747f), 1060f))), func_4(vec3<bool>(true, true, true)).x)));
    var var_1 = true;
    var var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~(-1i)) ^ vec2<i32>(select(u_input.c, u_input.c, var_0.x), -17298i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.c), -vec2<i32>(-2147483647i, u_input.c)), ~vec2<i32>(-10488i, -1i), reverseBits(vec2<i32>(u_input.c, u_input.c))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(675f * _wgslsmith_f_op_f32(sign(-187f))), global0.xw, u_input.c), Struct_1(_wgslsmith_f_op_f32(func_1(vec4<bool>(u_input.c <= u_input.a, true, false, false), firstTrailingBit(-25359i ^ u_input.c), global1[_wgslsmith_index_u32(~u_input.b.x, 18u)], ~(~global0.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0.x) >> (vec2<u32>(4294967295u, 26660u) % vec2<u32>(32u)), abs(abs(vec2<u32>(global0.x, global0.x))), global0.zy | _wgslsmith_mod_vec2_u32(global0.wx, u_input.b)), ~_wgslsmith_sub_i32(firstTrailingBit(-7944i), _wgslsmith_mod_i32(0i, 1i))), max((1u | (global0.x & 39620u)) | 0u, ~abs(firstLeadingBit(global0.x))));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, var_3.a.a) * vec2<f32>(var_3.a.a, var_3.b.a)))))), vec2<f32>(_wgslsmith_f_op_f32(var_3.a.a * var_3.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1911f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.a.a, 1000f), _wgslsmith_f_op_f32(var_3.b.a * 493f)))), var_3.b.a, var_3.b.a), var_3.a.a);
}

