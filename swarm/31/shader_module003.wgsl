struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    global0 = !vec4<bool>(arg_2.c, _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(-arg_0.x), true, true);
    global0 = !vec4<bool>(true, true, true, any(select(select(global0.zw, global0.yx, global0.yy), vec2<bool>(true, true), u_input.a.x == u_input.c)));
    let var_0 = true;
    global0 = select(vec4<bool>(!any(vec2<bool>(var_0, var_0)), true, any(!select(vec2<bool>(arg_2.c, global0.x), global0.yx, false)), arg_2.c), !select(!select(vec4<bool>(var_0, false, global0.x, true), vec4<bool>(false, arg_2.c, global0.x, false), vec4<bool>(arg_2.c, false, true, true)), select(vec4<bool>(arg_2.c, var_0, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(global0.x, arg_2.c, true, arg_2.c), vec4<bool>(true, false, true, var_0)), true), vec4<bool>(true, select(arg_2.c, false, var_0), true, true)), select(vec4<bool>(!(!global0.x), all(select(vec4<bool>(false, true, true, var_0), vec4<bool>(arg_2.c, var_0, true, global0.x), true)), false, var_0), select(select(select(vec4<bool>(global0.x, false, true, var_0), vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, var_0, arg_2.c, true)), !vec4<bool>(global0.x, arg_2.c, var_0, var_0), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, arg_2.c, arg_2.c, true), vec4<bool>(true, false, global0.x, false), global0.x), vec4<bool>(global0.x, global0.x, true, var_0), true), _wgslsmith_clamp_u32(64166u, u_input.a.x, 11371u) > 98097u), global0.x));
    let var_1 = Struct_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.d.x, -u_input.d.x, max(arg_3, u_input.b)), vec3<i32>(1i, ~8530i, -2147483647i)), select(!(!vec4<bool>(arg_2.c, global0.x, arg_2.c, global0.x)), !(!vec4<bool>(arg_2.c, arg_2.c, var_0, global0.x)), select(select(vec4<bool>(false, var_0, true, true), vec4<bool>(global0.x, false, true, true), true), vec4<bool>(true, true, true, false), select(vec4<bool>(var_0, arg_2.c, false, false), vec4<bool>(global0.x, global0.x, arg_2.c, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1000f, arg_1, -190f))), u_input.b));
    return ~vec3<u32>(_wgslsmith_div_u32(min(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, u_input.a.x, 72805u), u_input.a)), ~min(u_input.a.x, 17380u)), firstTrailingBit(~4294967295u) & u_input.c, u_input.c);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~45525u & abs(u_input.a.x);
    let var_1 = arg_1;
    let var_2 = -633f;
    let var_3 = ~vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.c, u_input.c) & _wgslsmith_mod_u32(0u, 19537u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 90125u, u_input.c, 44791u), u_input.a) & abs(0u), u_input.c, 1u);
    global0 = select(arg_2.b, vec4<bool>(false, arg_2.b.x, (true == !global0.x) | var_1, false), var_1);
    return Struct_1(arg_2.a >> (abs(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -586f, var_2), arg_2.c.xyx), _wgslsmith_f_op_f32(arg_2.c.x + arg_0), Struct_2(vec3<i32>(u_input.d.x, -2147483647i, 1i), vec3<i32>(u_input.b, -1i, 0i), false), u_input.b)) % vec3<u32>(32u)), select(vec4<bool>(true, var_1, arg_1, true), select(select(!vec4<bool>(false, true, false, var_1), !vec4<bool>(true, arg_1, false, global0.x), !arg_1), select(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, false, true, true), true), !vec4<bool>(false, true, true, var_1), select(vec4<bool>(true, true, true, false), arg_2.b, true)), vec4<bool>(false, 807f >= arg_2.c.x, select(var_1, global0.x, arg_2.b.x), any(arg_2.b.zww))), select(arg_2.b, select(vec4<bool>(arg_2.b.x, false, false, false), vec4<bool>(var_1, true, global0.x, arg_1), arg_1 | arg_2.b.x), select(arg_2.b, !vec4<bool>(var_1, var_1, arg_2.b.x, true), arg_2.b))), vec4<f32>(_wgslsmith_f_op_f32(select(1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(399f, -1160f))), var_1)), var_2, _wgslsmith_f_op_f32(abs(-646f)), -1369f), -arg_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_3(func_2(-1273f, true, arg_0));
    global0 = func_2(1023f, true, func_2(_wgslsmith_f_op_f32(floor(arg_0.c.x)), arg_0.b.x, arg_0)).b;
    var var_1 = arg_0.d;
    let var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.a, _wgslsmith_mult_vec3_i32(arg_0.a, var_0.a.a)) << (~vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_clamp_i32(arg_0.d, -2147483647i, 2147483647i), ~arg_3, _wgslsmith_dot_vec3_i32(u_input.d.xyy, vec3<i32>(arg_2, -1i, u_input.d.x))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, _wgslsmith_div_i32(arg_3, arg_2)), arg_0.a)), select(vec3<i32>(u_input.b & 5484i, -(~u_input.b), 0i), vec3<i32>(_wgslsmith_sub_i32(select(45221i, -2147483647i, false), arg_3), u_input.d.x, -9402i), select(!select(vec3<bool>(var_0.a.b.x, true, arg_0.b.x), var_0.a.b.xyx, false), !(!vec3<bool>(true, false, var_0.a.b.x)), global0.zxw)), var_0.a.b.x);
    var var_3 = _wgslsmith_sub_i32(var_2.b.x, 0i) > arg_0.a.x;
    return var_0;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = vec3<u32>(~(u_input.a.x ^ select(~32683u, ~55664u, arg_2.a.b.x)), ~u_input.a.x, u_input.a.x);
    let var_1 = Struct_4(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1127f + arg_3.c.x))))), arg_0, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(961f, arg_2.a.c.x))), all(arg_3.b), arg_2.a)));
    global0 = vec4<bool>(true, !global0.x, func_4(func_4(func_4(var_1.a, -276f, ~(-1i), 1i).a, arg_1.x, -arg_2.a.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, arg_2.a.d, u_input.d.x), u_input.d), 0i)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_f_op_f32(arg_1.x * -918f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, var_1.a.d)) | reverseBits(var_1.a.a.xz), vec2<i32>(1i, _wgslsmith_clamp_i32(var_1.a.a.x, u_input.b, 2147483647i))), 0i).a.b.x, false);
    let var_2 = max(-_wgslsmith_mod_vec3_i32(vec3<i32>(select(25346i, arg_3.d, arg_2.a.b.x), 2147483647i, firstTrailingBit(0i)), vec3<i32>(u_input.d.x >> (var_0.x % 32u), ~11325i, 0i)), var_1.a.a);
    var var_3 = Struct_4(func_4(Struct_1(abs(~arg_3.a), vec4<bool>(false | arg_3.b.x, true, false, global0.x), vec4<f32>(arg_3.c.x, -737f, arg_3.c.x, func_2(var_1.a.c.x, true, Struct_1(vec3<i32>(var_2.x, -2147483647i, -1i), vec4<bool>(global0.x, arg_0, arg_0, arg_3.b.x), vec4<f32>(arg_1.x, -746f, arg_1.x, -604f), 2147483647i)).c.x), -u_input.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c.x - -413f) + _wgslsmith_f_op_f32(-arg_2.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1294f, arg_2.a.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1491f)))), 1i, 0i).a);
    return !(!(!(_wgslsmith_div_f32(var_1.a.c.x, arg_2.a.c.x) <= arg_1.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_5 {
    global0 = vec4<bool>(22635u <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (0u % 32u), ~u_input.c, ~0u), u_input.a.xwx), !func_5(!(!arg_2.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.c.x)))), func_4(func_2(-270f, false, Struct_1(u_input.d.xyw, arg_2.b, arg_2.c, 34842i)), 498f, 1i, 1i), Struct_1(vec3<i32>(-1i, -1i, u_input.d.x), arg_2.b, _wgslsmith_f_op_vec4_f32(step(arg_1, arg_2.c)), arg_2.d)), arg_1.x >= arg_2.c.x, false);
    let var_0 = arg_1;
    let var_1 = firstLeadingBit(vec3<i32>(abs(u_input.b), min(countOneBits(reverseBits(arg_2.a.x)), ~arg_2.d), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 1i) >> (u_input.a.xyw % vec3<u32>(32u)), arg_2.a))));
    global0 = arg_2.b;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(545f - var_0.x)), arg_0.c, arg_2).b;
    return Struct_5(!select(vec2<bool>(any(vec4<bool>(true, false, arg_0.c, false)), true), arg_2.b.wy, true), Struct_4(func_4(arg_2, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_add_i32(-16867i, u_input.b) | var_1.x, ~(i32(-1i) * -2147483647i)).a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(344f, arg_2.c.x, arg_1.x, 1309f) + vec4<f32>(arg_1.x, arg_1.x, arg_1.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * arg_2.c.x), _wgslsmith_f_op_f32(select(-901f, -2097f, arg_0.c)), _wgslsmith_f_op_f32(1000f * -2101f), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2.c.x, arg_1.x), _wgslsmith_f_op_f32(-1050f - var_0.x), var_0.x, 596f)))), func_4(func_4(Struct_1(max(vec3<i32>(var_1.x, arg_2.a.x, arg_2.a.x), vec3<i32>(-1i, var_1.x, -1i)), func_2(-547f, arg_0.c, arg_2).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, -338f, arg_2.c.x, arg_1.x)), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x - 1344f))), _wgslsmith_mult_i32(1i, -6529i), _wgslsmith_sub_i32(u_input.b, -arg_2.a.x)).a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)), _wgslsmith_f_op_f32(floor(arg_1.x)))), arg_0.b.x, var_1.x).a, !vec4<bool>(1u == u_input.a.x, !(false || global0.x), !(var_0.x > arg_1.x), !(arg_0.a.x > -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(-u_input.d.zxy, -_wgslsmith_div_vec3_i32(~u_input.d.xxx, max(u_input.d.zxy, vec3<i32>(-28811i, u_input.d.x, u_input.b))), (~u_input.b << (4294967295u % 32u)) == _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 0i >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, -225f, 730f, -546f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1481f, -562f, 769f, 1079f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1041f, 1716f, -380f, 241f)))))), Struct_1(~_wgslsmith_clamp_vec3_i32(u_input.d.yyz ^ u_input.d.wxw, _wgslsmith_mult_vec3_i32(vec3<i32>(48257i, u_input.b, u_input.d.x), vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)), u_input.d.yyw), !vec4<bool>(all(vec4<bool>(false, global0.x, global0.x, global0.x)), all(vec2<bool>(false, global0.x)), true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(920f, 2118f, -279f, -603f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-902f, 896f, -1260f, -525f)), any(vec2<bool>(global0.x, false))))), u_input.b));
    let var_1 = var_0.b.a.c.x;
    var_0 = func_1(Struct_2(~(min(vec3<i32>(var_0.b.a.a.x, var_0.d.d, -2147483647i), vec3<i32>(u_input.b, 2147483647i, 6455i)) << ((vec3<u32>(u_input.a.x, 1u, u_input.c) >> (vec3<u32>(74834u, 24418u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(~func_2(var_0.b.a.c.x, true, Struct_1(var_0.d.a, var_0.b.a.b, vec4<f32>(var_0.d.c.x, 1000f, var_0.c.x, -685f), 0i)).d, 45126i >> ((u_input.a.x & u_input.c) % 32u), _wgslsmith_clamp_i32(var_0.b.a.d, u_input.b, u_input.b) ^ firstLeadingBit(2147483647i)), func_4(var_0.b.a, _wgslsmith_f_op_f32(-var_0.b.a.c.x), 0i, i32(-1i) * -521i).a.b.x | (-u_input.d.x >= u_input.b)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-586f, var_0.b.a.c.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1524f)))), _wgslsmith_f_op_f32(step(var_0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -555f))), func_4(func_2(-268f, var_0.c.x < -184f, Struct_1(u_input.d.yxz, var_0.e, var_0.b.a.c, 14332i)), 687f, _wgslsmith_mult_i32(var_0.d.d, reverseBits(u_input.b)), func_4(var_0.b.a, _wgslsmith_f_op_f32(select(var_0.b.a.c.x, var_0.c.x, false)), -12493i, countOneBits(var_0.d.a.x)).a.d).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f + _wgslsmith_f_op_f32(max(var_0.b.a.c.x, var_0.b.a.c.x))))), Struct_1(vec3<i32>(i32(-1i) * -1i, -select(var_0.b.a.a.x, u_input.d.x, true), -15370i << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)), vec4<bool>(true != func_5(false, vec2<f32>(var_0.b.a.c.x, -1000f), Struct_3(Struct_1(vec3<i32>(4741i, 0i, u_input.b), vec4<bool>(false, global0.x, false, true), var_0.c, u_input.d.x)), var_0.d), true, u_input.a.x != ~1u, !(u_input.c >= u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b.a.c, var_0.b.a.c), _wgslsmith_f_op_vec4_f32(select(var_0.d.c, _wgslsmith_div_vec4_f32(vec4<f32>(-845f, var_0.d.c.x, -1302f, 1200f), var_0.d.c), true))), _wgslsmith_mod_i32(~(-2147483647i), u_input.b)));
    var_0 = Struct_5(select(select(func_2(1000f, false, var_0.b.a).b.wz, var_0.d.b.yx, !any(vec4<bool>(var_0.d.b.x, global0.x, false, true))), select(func_2(-138f, true, var_0.b.a).b.zx, !vec2<bool>(global0.x, global0.x), !(!var_0.a.x)), !var_0.a.x & true), func_1(Struct_2(var_0.d.a, abs(min(vec3<i32>(u_input.b, -55480i, 7638i), vec3<i32>(var_0.b.a.d, -3057i, 0i))), (var_0.b.a.c.x >= var_0.b.a.c.x) || true), var_0.b.a.c, Struct_1(vec3<i32>(~u_input.d.x, 13084i ^ var_0.b.a.d, u_input.b), select(var_0.e, vec4<bool>(var_0.d.b.x, var_0.e.x, global0.x, var_0.a.x), false), vec4<f32>(var_0.d.c.x, 585f, _wgslsmith_div_f32(var_0.c.x, -320f), _wgslsmith_f_op_f32(var_0.b.a.c.x * 961f)), u_input.b ^ ~u_input.b)).b, vec4<f32>(var_0.b.a.c.x, -1000f, -653f, var_0.c.x), func_4(func_1(Struct_2(u_input.d.wxz | u_input.d.xxx, abs(u_input.d.xzw), global0.x || var_0.a.x), _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2004f, 842f, 2393f, var_0.d.c.x)))), func_2(1239f, all(var_0.d.b), Struct_1(vec3<i32>(-1i, -16595i, u_input.b), vec4<bool>(false, var_0.b.a.b.x, global0.x, var_0.d.b.x), var_0.c, u_input.b))).b.a, func_2(-933f, global0.x, var_0.d).c.x, select(1i, abs(select(3033i, u_input.b, global0.x)), all(!var_0.e.xxz)), var_0.d.d).a, !var_0.d.b);
    let var_2 = vec3<f32>(348f, var_0.d.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -312f)))))));
    var var_3 = Struct_4(var_0.b.a);
    var var_4 = var_3.a.b.x != !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.c.x + -1193f), -1425f) <= 800f);
    var_0 = func_1(Struct_2(vec3<i32>(18576i, var_0.b.a.a.x, -1i), -func_1(Struct_2(var_3.a.a, u_input.d.yxy, true), var_3.a.c, func_4(Struct_1(u_input.d.zzw, vec4<bool>(global0.x, true, false, var_3.a.b.x), var_3.a.c, -1i), var_0.b.a.c.x, var_3.a.a.x, var_0.d.a.x).a).d.a, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f * 106f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(trunc(var_2.x))), -1814f) * var_3.a.c), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec3<u32>(u_input.c, 4294967295u, u_input.a.x)) & ~select(u_input.a.zxy, ~vec3<u32>(1u, 95058u, 78051u), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-var_0.c.x)) * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(var_3.a.c.x, 1201f))), -689f), firstTrailingBit(~(~1u)), u_input.a.wz, _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x));
}

