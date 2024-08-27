struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(123f, -1000f, 1274f, 804f);

var<private> global1: f32;

var<private> global2: bool = false;

var<private> global3: array<u32, 11> = array<u32, 11>(4294967295u, 46369u, 1u, 30022u, 2175u, 94588u, 36172u, 14823u, 4294967295u, 4294967295u, 11329u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = abs(arg_0.b.b.yz);
    var var_1 = (_wgslsmith_dot_vec2_u32(arg_0.b.b.zy, _wgslsmith_mod_vec2_u32(var_0, arg_0.b.b.xy) << (var_0 % vec2<u32>(32u))) >> (abs(~_wgslsmith_mod_u32(var_0.x, 27177u)) % 32u)) | ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4878u, ~17787u), 11u)];
    global3 = array<u32, 11>();
    let var_2 = select(global3[_wgslsmith_index_u32(52526u, 11u)], 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.b.b.x, u_input.c, 1u) | vec4<u32>(19334u, arg_0.b.b.x, arg_0.b.b.x, 20853u), _wgslsmith_add_vec4_u32(vec4<u32>(36605u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(33082u, 11u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], 1u, 0u, arg_0.b.b.x))) != _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), var_0.x)) ^ _wgslsmith_sub_u32(arg_0.b.b.x, 18962u);
    let var_3 = Struct_4(~min(~1i, u_input.a.x), _wgslsmith_div_f32(375f, global0.x), Struct_2(global0.x, global0.x, Struct_1(!(arg_0.b.d.x || arg_0.a), abs(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), !any(vec3<bool>(true, false, arg_0.c.x)), select(vec2<bool>(true, arg_0.c.x), select(vec2<bool>(arg_0.b.a, true), vec2<bool>(arg_0.b.a, arg_0.c.x), true), !arg_0.a))));
    return -245f;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_4(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(func_3(Struct_5(-1022f != _wgslsmith_f_op_f32(-global0.x), Struct_1(all(vec4<bool>(arg_0.b.d.x, arg_0.c.x, false, true)), vec3<u32>(arg_0.b.b.x, 15094u, arg_0.b.b.x), arg_0.a, !vec2<bool>(false, arg_0.a)), select(!arg_0.c, select(arg_0.c, vec3<bool>(arg_0.b.c, arg_0.b.a, true), arg_0.b.c), arg_0.a), -vec3<i32>(arg_0.d.x, 2147483647i, -1186i)))), Struct_2(-239f, 871f, Struct_1(arg_0.c.x, vec3<u32>(u_input.b.x, 0u, 82838u) >> (select(arg_0.b.b, u_input.b, arg_0.b.a) % vec3<u32>(32u)), true, !vec2<bool>(arg_0.a, false))));
    global1 = _wgslsmith_f_op_f32(max(global0.x, global0.x));
    let var_1 = var_0;
    var var_2 = min(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(arg_0.d, vec3<i32>(47712i, var_0.a, var_0.a))), -2147483647i >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(86971u, var_0.c.c.b.x), 4294967295u) % 32u), _wgslsmith_mod_i32(4071i, 1i)), -2147483647i);
    var var_3 = Struct_3(arg_0.b, var_0.c.c, Struct_2(-1473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * 504f), Struct_1(!(var_0.c.c.c | false), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(var_1.c.c.b.x, 11u)], var_0.c.c.b.x), vec3<u32>(arg_0.b.b.x, var_0.c.c.b.x, u_input.b.x)), vec3<u32>(1u, 0u, var_1.c.c.b.x)), arg_0.b.d.x & !var_1.c.c.d.x, !select(vec2<bool>(var_0.c.c.c, true), var_1.c.c.d, vec2<bool>(false, arg_0.b.c)))), 1i, -127f);
    return arg_0;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    global3 = array<u32, 11>();
    var var_0 = ~select(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(50831u, arg_0.b.b.x), u_input.c, 35317u), _wgslsmith_div_u32(reverseBits(1u), func_2(Struct_5(false, Struct_1(arg_0.b.d.x, u_input.b, arg_0.a, arg_0.c.yy), arg_0.c, vec3<i32>(arg_1.x, 1i, 41102i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1450f, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, -800f, global0.x, -1288f))).b.b.x), true);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.d, ~arg_1), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_0.d.x, arg_0.d.x, 0i), func_2(arg_0, vec4<f32>(global0.x, -403f, -1006f, -1731f)).d, true), ~(-arg_0.d), arg_1)), firstLeadingBit(-1i));
    let var_2 = func_2(arg_0, vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) - 1270f))), global0.x, _wgslsmith_f_op_f32(min(1105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) - global0.x))))).a;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(func_2(Struct_5(true, arg_0.b, vec3<bool>(arg_0.b.d.x, true, arg_0.b.a), arg_0.d), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-140f, global0.x, 161f, -1000f)))))), _wgslsmith_f_op_f32(762f + global0.x))), global0.x, func_2(arg_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -551f, global0.x) + vec4<f32>(1659f, 665f, global0.x, global0.x)), vec4<f32>(global0.x, global0.x, global0.x, -164f), select(vec4<bool>(false, true, arg_0.b.c, false), vec4<bool>(arg_0.c.x, false, true, arg_0.a), true)))))).b);
    return min(arg_0.b.b, u_input.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(-57147i | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-2561i, arg_2))), ~abs(_wgslsmith_mod_i32(u_input.a.x, -2147483647i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(u_input.a.x) | firstTrailingBit(arg_2), 9024i, ~(-2147483647i)), -1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_div_f32(541f, -315f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(827f, 999f) + -841f))));
    var var_2 = var_1;
    global2 = select(_wgslsmith_f_op_f32(-168f * _wgslsmith_f_op_f32(var_1.x - global0.x)) < _wgslsmith_f_op_f32(1296f - -645f), !(505f < var_2.x), arg_3.c.d.x);
    let var_3 = Struct_4(func_2(Struct_5(!arg_3.c.c, arg_3.c, vec3<bool>(arg_3.c.c, arg_0.a, any(vec2<bool>(true, arg_0.a))), -vec3<i32>(u_input.a.x, u_input.a.x, arg_2)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(902f, -297f, var_2.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 117f) + vec4<f32>(573f, 1463f, arg_3.a, var_2.x)), vec4<bool>(false, false, arg_1.x, false))), var_1))).d.x, var_2.x, arg_3);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> Struct_5 {
    var var_0 = Struct_3(func_5(Struct_1(true, func_4(func_2(Struct_5(arg_2.x, arg_0, arg_2.wwx, vec3<i32>(1i, -2147483647i, -2147483647i)), vec4<f32>(arg_1.b, 2423f, arg_1.b, global0.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), abs(vec2<i32>(u_input.a.x, u_input.a.x))), arg_0.c, select(!vec2<bool>(arg_0.c, false), arg_1.c.d, true)), vec3<bool>(true, any(vec4<bool>(true, arg_1.c.a, true, false)) | any(vec4<bool>(arg_1.c.d.x, arg_1.c.a, false, false)), any(!arg_2)), _wgslsmith_add_i32(min(u_input.a.x, u_input.a.x >> (1u % 32u)), u_input.a.x | 48520i), Struct_2(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(684f * global0.x))), 921f, arg_0)), Struct_1(arg_1.c.c, ~func_2(func_2(Struct_5(false, arg_1.c, arg_2.yww, vec3<i32>(u_input.a.x, u_input.a.x, 30590i)), vec4<f32>(-1344f, 428f, arg_1.a, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(405f, -2884f, global0.x, 1000f) * vec4<f32>(global0.x, global0.x, arg_1.b, -550f))).b.b, !arg_2.x, !(!arg_2.wy)), Struct_2(arg_1.a, -614f, arg_0), ~_wgslsmith_sub_i32(-u_input.a.x, countOneBits(-14128i)), _wgslsmith_f_op_f32(ceil(arg_1.b)));
    let var_1 = arg_1.c.b;
    global2 = false;
    global3 = array<u32, 11>();
    let var_2 = Struct_2(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -570f)))), Struct_1(true || arg_0.a, vec3<u32>(8780u & select(u_input.b.x, arg_0.b.x, arg_2.x), firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c, 11u)] ^ arg_1.c.b.x), 0u), !func_2(func_2(Struct_5(arg_1.c.a, Struct_1(true, vec3<u32>(30704u, 1u, arg_3), arg_1.c.c, var_0.a.d), arg_2.zzx, vec3<i32>(-20081i, -1i, var_0.d)), vec4<f32>(arg_1.b, arg_1.b, global0.x, -245f)), vec4<f32>(-706f, arg_1.a, -2091f, -1015f)).c.x, !arg_0.d));
    return func_2(Struct_5(arg_1.c.a, func_2(func_2(func_2(Struct_5(arg_2.x, Struct_1(var_0.a.d.x, vec3<u32>(4294967295u, 68544u, arg_1.c.b.x), var_2.c.c, vec2<bool>(true, true)), vec3<bool>(arg_0.c, var_0.b.d.x, arg_2.x), vec3<i32>(0i, -439i, 9791i)), vec4<f32>(global0.x, 1861f, var_2.b, var_2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_2.a, -209f, 625f) + vec4<f32>(-1011f, 1843f, 417f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, global0.x, arg_1.a, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, arg_1.a, global0.x, 666f) - vec4<f32>(var_2.b, -1614f, 835f, var_2.b)))).b, vec3<bool>(arg_0.c, arg_0.d.x, true), ~vec3<i32>(func_2(Struct_5(false, arg_0, vec3<bool>(true, true, false), vec3<i32>(-8385i, u_input.a.x, var_0.d)), vec4<f32>(var_0.c.b, var_2.a, -1021f, 772f)).d.x, max(u_input.a.x, u_input.a.x), u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.b, 1305f)), _wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a, -708f), _wgslsmith_f_op_f32(select(-904f, -157f, var_2.c.c)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-811f)), _wgslsmith_f_op_f32(1194f * 1557f)))));
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    let var_0 = arg_0.b;
    return Struct_4(arg_0.d.x, _wgslsmith_f_op_f32(-global0.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1623f))), global0.x, Struct_1(!(2147483647i > arg_0.d.x), ~_wgslsmith_mod_vec3_u32(u_input.b, var_0.b), func_5(func_1(Struct_1(false, u_input.b, var_0.d.x, vec2<bool>(var_0.a, true)), Struct_2(global0.x, global0.x, Struct_1(true, u_input.b, true, vec2<bool>(true, arg_0.c.x))), vec4<bool>(false, true, arg_0.a, var_0.c), 0u).b, arg_0.c, abs(-2147483647i), Struct_2(global0.x, -1000f, arg_0.b)).a, arg_0.b.d)));
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = vec2<bool>((abs(4294967295u) << (~(~0u) % 32u)) <= _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(arg_2.b.b, vec3<u32>(u_input.b.x, 4294967295u, 22995u))), u_input.b), !(4294967295u != ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(11926u, arg_1.c.c.b.x), 11u)]));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.wy + vec2<f32>(arg_2.e, global0.x)) - global0.yx) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.b, arg_1.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, -618f)), !arg_0)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(808f, -1051f), _wgslsmith_f_op_vec2_f32(-global0.zy)))))));
    var_1 = vec2<f32>(arg_2.e, arg_2.e);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + 1000f), -502f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * _wgslsmith_f_op_f32(-global0.x))))), arg_2.c.b);
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(arg_2.c.b + global0.x) > _wgslsmith_f_op_f32(exp2(arg_2.e)), false, true, arg_0);
    return func_2(Struct_5(func_5(Struct_1(any(var_2.yy), u_input.b, !arg_1.c.c.d.x, vec2<bool>(arg_0, true)), var_2.zyx, _wgslsmith_add_i32(arg_2.d, 0i) & _wgslsmith_dot_vec2_i32(arg_3.wy, arg_3.zy), func_6(Struct_5(arg_2.a.c, Struct_1(true, u_input.b, arg_2.a.d.x, var_0), var_2.zyz, vec3<i32>(1i, arg_3.x, 2147483647i))).c).d.x, Struct_1(all(vec3<bool>(arg_2.c.c.a, true, arg_2.c.c.c)), arg_2.c.c.b, 225f > _wgslsmith_f_op_f32(-var_1.x), var_2.wy), vec3<bool>(arg_0, select(false || var_0.x, false, true), false), arg_3.xyy), vec4<f32>(arg_1.c.b, -237f, _wgslsmith_f_op_f32(-881f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1289f * -338f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(min(global0.x, -462f))))));
}

fn func_8(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_5) -> u32 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2026f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f * _wgslsmith_div_f32(-1094f, 1073f)) + -431f))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -1019f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2))))), _wgslsmith_f_op_f32(-413f - -410f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -449f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = ~max(0i, firstTrailingBit(arg_2.d.x));
    let var_2 = Struct_1(~abs(arg_2.b.b.x) == ~firstLeadingBit(~u_input.b.x), select(arg_2.b.b, func_4(Struct_5(true, arg_2.b, arg_2.c, ~arg_2.d), vec3<i32>(~(-13277i), arg_2.d.x, arg_2.d.x), arg_2.d.xz), vec3<bool>(24431u <= _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(35235u, 11u)], 7101u), true | arg_2.b.a, !(true | arg_2.b.a))), true, func_1(Struct_1(false, vec3<u32>(u_input.b.x, countOneBits(0u), 4294967295u), func_2(func_2(Struct_5(arg_2.b.d.x, Struct_1(arg_2.b.d.x, u_input.b, arg_2.b.d.x, arg_2.c.xz), arg_2.c, vec3<i32>(-20383i, arg_2.d.x, -2147483647i)), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-965f, -1024f, -1000f, var_0.x))).c.x, arg_2.c.yy), func_6(arg_2).c, !vec4<bool>(true, false, true, all(vec4<bool>(arg_2.b.d.x, true, arg_2.a, false))), _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2.b.b.x, 1u), 0u), 4294967295u)).c.zy);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) * _wgslsmith_f_op_vec4_f32(ceil(var_0)))));
    return _wgslsmith_add_u32(u_input.c, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(69678u, _wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(85720u, 11u)], 58591u), select(global3[_wgslsmith_index_u32(1934u, 11u)], u_input.c, false))), u_input.b.x), func_8(vec2<f32>(global0.x, -180f), abs(u_input.a.x), func_7(any(vec2<bool>(true, false)), func_6(func_1(Struct_1(true, vec3<u32>(2508u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15594u, 11u)], 11u)], 14151u), false, vec2<bool>(true, false)), Struct_2(global0.x, -938f, Struct_1(false, u_input.b, true, vec2<bool>(true, true))), vec4<bool>(false, true, true, true), u_input.c)), Struct_3(Struct_1(true, u_input.b, true, vec2<bool>(false, false)), Struct_1(false, vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 11u)], 1u), true, vec2<bool>(true, true)), Struct_2(-1000f, -544f, Struct_1(true, vec3<u32>(31038u, global3[_wgslsmith_index_u32(1u, 11u)], u_input.b.x), false, vec2<bool>(false, true))), -u_input.a.x, _wgslsmith_f_op_f32(global0.x * 168f)), countOneBits(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 35023i))))), func_5(Struct_1(true, vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28990u, 11u)], 11u)], func_7(true, Struct_4(0i, 640f, Struct_2(global0.x, -305f, Struct_1(false, vec3<u32>(u_input.b.x, 4294967295u, global3[_wgslsmith_index_u32(1u, 11u)]), true, vec2<bool>(false, false)))), Struct_3(Struct_1(true, u_input.b, false, vec2<bool>(false, false)), Struct_1(true, u_input.b, false, vec2<bool>(false, false)), Struct_2(1200f, global0.x, Struct_1(false, vec3<u32>(global3[_wgslsmith_index_u32(51965u, 11u)], 4294967295u, 4294967295u), false, vec2<bool>(true, true))), u_input.a.x, 117f), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i)).b.b.x, 4294967295u), true, vec2<bool>(any(vec3<bool>(true, true, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_2(Struct_5(true, Struct_1(true, vec3<u32>(26120u, 1u, 63974u), false, vec2<bool>(true, true)), vec3<bool>(true, true, true), vec3<i32>(-9064i, -7430i, u_input.a.x)), vec4<f32>(472f, 1000f, -142f, global0.x)).c.x), func_1(Struct_1(false, vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], 0u, 2554u), false, vec2<bool>(false, false)), Struct_2(global0.x, -627f, Struct_1(true, u_input.b, false, vec2<bool>(false, false))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), 80113u).c), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & u_input.a.x, _wgslsmith_clamp_i32(-15777i & u_input.a.x, ~7281i, 4460i)), func_6(Struct_5(true, func_1(Struct_1(true, u_input.b, false, vec2<bool>(true, false)), Struct_2(global0.x, 1917f, Struct_1(true, u_input.b, true, vec2<bool>(false, false))), vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(91735u, 11u)]).b, vec3<bool>(true, true, true), vec3<i32>(u_input.a.x, 2147483647i, -1i))).c).b.x);
    let var_1 = ~(~min(vec3<i32>(u_input.a.x, u_input.a.x, i32(-1i) * -9045i), func_2(func_2(Struct_5(true, Struct_1(true, u_input.b, false, vec2<bool>(false, true)), vec3<bool>(false, true, true), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), vec4<f32>(global0.x, 447f, global0.x, -1464f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(-1653f, 179f, 2234f, global0.x))).d));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1250f, global0.x, global0.x, -416f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -101f, -526f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, true))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, global0.x, -867f)))), all(vec4<bool>(true, true, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x << (_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), u_input.b >> (u_input.b % vec3<u32>(32u))) % 32u), 8184u, func_1(Struct_1(var_0.x >= 0u, u_input.b & u_input.b, select(false, false, true), func_1(Struct_1(true, vec3<u32>(0u, 1523u, u_input.b.x), true, vec2<bool>(true, false)), Struct_2(global0.x, -139f, Struct_1(false, vec3<u32>(0u, u_input.b.x, 1u), true, vec2<bool>(true, false))), vec4<bool>(true, false, false, true), var_0.x).c.zx), func_6(Struct_5(true, Struct_1(false, var_0.yzx, true, vec2<bool>(true, true)), vec3<bool>(false, false, false), var_1)).c, vec4<bool>(true, true, true, true), _wgslsmith_mult_u32(0u, var_0.x)).b.b.x, ~firstTrailingBit(func_5(Struct_1(true, u_input.b, false, vec2<bool>(false, true)), vec3<bool>(false, false, false), 1i, Struct_2(global0.x, global0.x, Struct_1(false, vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.c, 11u)], var_0.x), false, vec2<bool>(false, false)))).b.x)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(0i), u_input.a.x, ~6854i), select(var_1 >> (vec3<u32>(var_0.x, u_input.b.x, 0u) % vec3<u32>(32u)), var_1, vec3<bool>(true, true, true))), vec3<i32>(countOneBits(-1i), abs(1i), countOneBits(countOneBits(var_1.x))), !vec3<bool>(all(vec4<bool>(false, false, true, false)), true, var_1.x <= -1i)), _wgslsmith_f_op_f32(trunc(-854f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, 1532f)), 555f, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -320f, _wgslsmith_f_op_f32(global0.x - 643f)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_div_f32(global0.x, 750f)), select(vec3<bool>(true, true, true), func_7(false, Struct_4(var_1.x, -417f, Struct_2(-990f, global0.x, Struct_1(false, var_0.zxx, false, vec2<bool>(true, false)))), Struct_3(Struct_1(true, u_input.b, true, vec2<bool>(false, false)), Struct_1(false, var_0.www, true, vec2<bool>(true, false)), Struct_2(-644f, 1520f, Struct_1(false, vec3<u32>(1u, var_0.x, var_0.x), false, vec2<bool>(false, false))), var_1.x, global0.x), vec4<i32>(var_1.x, 0i, 14316i, 1i)).c, func_1(Struct_1(false, vec3<u32>(7365u, 4294967295u, 0u), false, vec2<bool>(true, true)), Struct_2(global0.x, global0.x, Struct_1(true, vec3<u32>(48105u, global3[_wgslsmith_index_u32(22655u, 11u)], global3[_wgslsmith_index_u32(u_input.c, 11u)]), false, vec2<bool>(false, false))), vec4<bool>(true, true, true, true), var_0.x).c))), func_2(func_2(Struct_5(true, Struct_1(false, u_input.b, false, vec2<bool>(false, false)), vec3<bool>(false, true, true), var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 244f, global0.x, 1246f) * vec4<f32>(-818f, -262f, 2078f, 823f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-413f, global0.x, global0.x, -647f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 146f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 345f, global0.x)))).c)), _wgslsmith_f_op_f32(abs(-2193f)));
}

