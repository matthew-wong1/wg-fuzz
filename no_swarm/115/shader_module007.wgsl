struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: Struct_5 = Struct_5(Struct_3(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec4<i32>(-34153i, 35157i, -38352i, 2147483647i), -54394i, 1373f, false)), 4294967295u), 1000f, vec2<i32>(-46289i, 14450i), 1i);

var<private> global2: Struct_5 = Struct_5(Struct_3(vec4<bool>(true, true, false, false)), Struct_4(vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec4<i32>(0i, 1i, -1i, 1i), -1i, -1462f, false)), 78426u), 659f, vec2<i32>(-40997i, 1i), i32(-2147483648));

var<private> global3: array<i32, 13>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<i32>(i32(-1i) * -7254i, global1.e, -1i, ~(-global2.b.b.a.a.x)), -65793i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-584f)) + _wgslsmith_f_op_f32(1385f - 577f))), global2.b.a.x));
    let var_1 = select(select(vec2<bool>(true, var_0.a.d || global2.b.a.x), global2.a.a.wx, !(!vec2<bool>(arg_1, true))), global1.b.a.xw, var_0.a.d);
    global3 = array<i32, 13>();
    var var_2 = vec3<bool>(!global2.a.a.x, false == !var_1.x, !(!(any(vec3<bool>(false, false, global2.a.a.x)) | (15856u <= global1.b.c))));
    var var_3 = Struct_3(select(!vec4<bool>(global2.a.a.x || false, !global1.b.b.a.d, var_1.x, true), !global1.a.a, select(select(vec4<bool>(false, var_2.x, global1.b.b.a.d, var_0.a.d), select(global2.b.a, vec4<bool>(false, false, global2.b.a.x, false), global1.b.a), arg_1), !select(vec4<bool>(false, global1.b.a.x, false, global1.a.a.x), vec4<bool>(var_2.x, global2.a.a.x, true, global1.b.b.a.d), var_1.x), !(!global1.a.a))));
    return -718f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = arg_3.a;
    var var_1 = Struct_4(global1.a.a, Struct_2(Struct_1(vec4<i32>(-var_0.b, var_0.b >> (global0.x % 32u), ~global2.b.b.a.b, var_0.a.x), global2.b.b.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_3.a.c)), -199f), true)), _wgslsmith_add_u32(~abs(4294967295u), ~global1.b.c | ~58972u) ^ _wgslsmith_add_u32(global2.b.c, ~_wgslsmith_sub_u32(1u, global1.b.c)));
    var var_2 = arg_2.x;
    global2 = Struct_5(global1.a, Struct_4(global2.a.a, Struct_2(global1.b.b.a), global2.b.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 1000f)))))), vec2<i32>(1i & (_wgslsmith_dot_vec2_i32(global2.b.b.a.a.yz, var_1.b.a.a.wy) | 17765i), _wgslsmith_clamp_i32(2147483647i, var_1.b.a.b, i32(-1i) * -1i)), _wgslsmith_sub_i32(var_0.a.x, _wgslsmith_div_i32(var_0.b, u_input.a)));
    var var_3 = Struct_5(global2.a, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1046f * _wgslsmith_f_op_f32(floor(var_1.b.a.c))) + global1.b.b.a.c), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(global2.b.b.a.a.yyy | arg_3.a.a.wyy, ~arg_3.a.a.wwz)), -global1.b.b.a.a.x), arg_3.a.a.x);
    return ~min(vec3<u32>(_wgslsmith_add_u32(~var_3.b.c, 41525u), 50173u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(30714u, global0.x, global2.b.c, 13636u), vec4<u32>(12077u, 0u, 1u, var_3.b.c)), abs(vec4<u32>(global1.b.c, 22801u, var_3.b.c, 4294967295u)))), firstLeadingBit(~vec3<u32>(0u, 1u, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.b.c, global2.b.c, global1.b.c) << (vec3<u32>(global1.b.c, global2.b.c, var_1.c) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, var_1.c, var_1.c)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_3(select(global2.a.a, !(!vec4<bool>(true, arg_0.x, arg_0.x, true)), select(vec4<bool>(true && arg_0.x, false, all(arg_0.zxx), true), vec4<bool>(!global1.b.b.a.d, all(vec2<bool>(global1.a.a.x, false)), true, any(global1.a.a.ywy)), vec4<bool>(!arg_0.x, true, all(global2.b.a), false))));
    var var_1 = Struct_4(arg_0, global2.b.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(15397u, 1u), vec2<u32>(1u, ~4294967295u)));
    var_1 = Struct_4(global1.a.a, global2.b.b, abs(countOneBits((4294967295u >> (0u % 32u)) << ((global1.b.c & 5048u) % 32u))));
    var var_2 = Struct_5(var_0, Struct_4(global2.b.a, Struct_2(Struct_1(var_1.b.a.a, i32(-1i) * -1i, -1866f, false)), ~firstLeadingBit(global1.b.c) | 0u), _wgslsmith_f_op_f32(-global2.b.b.a.c), countOneBits(_wgslsmith_sub_vec2_i32(global2.d, vec2<i32>(u_input.a, global1.d.x) | -vec2<i32>(1407i, global2.b.b.a.a.x))), var_1.b.a.a.x);
    let var_3 = ~func_4(_wgslsmith_f_op_f32(func_3(2147483647i, select(!var_1.a.x, !global1.b.b.a.d, false != global1.a.a.x), ~(~global2.b.b.a.a))), abs(~0i), !var_1.a, Struct_2(global2.b.b.a));
    return Struct_4(global2.a.a, Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 13u)], global1.e) & vec4<i32>(var_1.b.a.a.x, global1.e, global2.d.x, -2147483647i)), _wgslsmith_mult_i32(-2389i | u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 0i))), -914f, true)), global1.b.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.a.c, arg_2.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1803f, 382f))), 1212f));
    global1 = Struct_5(Struct_3(global1.b.a), global2.b, 1f, vec2<i32>(select(max(1i, u_input.a), firstLeadingBit(-1i), true), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-25765i, -20630i, -1778i, 46245i), arg_2.a.a), arg_0.b.a.a))), arg_0.b.a.b);
    return !arg_2.a.d;
}

fn func_6(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = global2.b;
    var var_1 = Struct_5(global1.a, Struct_4(var_0.a, func_2(vec4<bool>(!global2.a.a.x, all(vec3<bool>(var_0.a.x, false, false)), false && var_0.b.a.d, any(vec2<bool>(true, global2.a.a.x)))).b, global1.b.c), 2045f, global2.d, global1.e);
    var var_2 = select(~select(~abs(vec4<u32>(69543u, global2.b.c, global2.b.c, 0u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.b.c, global2.b.c, 0u), vec4<u32>(var_1.b.c, var_0.c, global2.b.c, global0.x)), global1.b.a), abs(~vec4<u32>(0u, 0u, global1.b.c, 17370u) << (vec4<u32>(global1.b.c, 57579u, global1.b.c, var_0.c) % vec4<u32>(32u))) | ~(~(~vec4<u32>(1u, global1.b.c, 1u, 37892u))), global3[_wgslsmith_index_u32(7605u, 13u)] != _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(min(global2.b.b.a.a, vec4<i32>(global2.e, global1.d.x, 1635i, -9053i)), vec4<i32>(2147483647i, u_input.a, 23006i, 12325i) & vec4<i32>(-40713i, u_input.a, 0i, var_0.b.a.a.x)), firstLeadingBit(global2.b.b.a.a)));
    let var_3 = global1.b;
    global0 = ~vec2<u32>(global1.b.c, abs(global1.b.c));
    return Struct_3(!var_3.a);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = global1.a.a.zxx;
    global2 = Struct_5(func_6(func_5(func_2(vec4<bool>(arg_0.a.x, arg_0.a.x, global1.a.a.x, global2.b.a.x)), vec4<u32>(global0.x, global2.b.c, 12198u, 4294967295u) | vec4<u32>(4294967295u, 84u, global0.x, 89667u), global2.b.b) == true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-886f, -781f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(sign(-244f)))), global1.b.b.a.c), func_2(vec4<bool>(func_6(true, _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.b.a.c, global1.c), vec2<f32>(-1000f, global1.b.b.a.c)), global2.c).a.x, false, !func_6(global2.b.b.a.d, vec2<f32>(-1785f, 560f), 1568f).a.x, global2.b.b.a.d)), 934f, _wgslsmith_div_vec2_i32(vec2<i32>(50646i, 2147483647i), -global1.b.b.a.a.xx), -56179i);
    return global1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(global1.b.c, 23529u >> (~(global1.b.c & global0.x) % 32u));
    var var_1 = func_1(global2.a, u_input.a);
    var var_2 = !(!(!(!vec3<bool>(var_1.a.d, global2.a.a.x, false))));
    let var_3 = reverseBits(select(vec4<u32>(0u, ~(~44899u), global2.b.c, global1.b.c << (1u % 32u)), min(vec4<u32>(global0.x, ~33003u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.c, global2.b.c, 0u, 54779u), vec4<u32>(53095u, 75784u, global0.x, global2.b.c)), ~global1.b.c), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, global2.b.c, global2.b.c), vec4<u32>(global1.b.c, global1.b.c, 1u, var_0.x)), vec4<u32>(global1.b.c, var_0.x, 1u, 4294967295u), vec4<u32>(5899u, global0.x, global1.b.c, global0.x) >> (vec4<u32>(global1.b.c, 0u, 4392u, global2.b.c) % vec4<u32>(32u)))), select(func_2(global1.a.a).a, vec4<bool>(global2.a.a.x, true, true, true), func_6(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.b.a.c, var_1.a.c)), _wgslsmith_f_op_f32(trunc(global2.b.b.a.c))).a.x)));
    var var_4 = var_3.xxw;
    let var_5 = u_input.a;
    let var_6 = true;
    var var_7 = Struct_2(Struct_1(countOneBits(vec4<i32>(_wgslsmith_mod_i32(-21687i, global2.e), u_input.a, 1i, _wgslsmith_add_i32(global1.b.b.a.a.x, global3[_wgslsmith_index_u32(4294967295u, 13u)]))), var_5, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2120f - _wgslsmith_f_op_f32(func_3(1i, false, vec4<i32>(global2.b.b.a.b, 0i, 24864i, global2.d.x)))), _wgslsmith_f_op_f32(504f + _wgslsmith_f_op_f32(-1106f + var_1.a.c)))), var_1.a.c >= _wgslsmith_f_op_f32(-var_1.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_7.a.c, _wgslsmith_f_op_f32(-524f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(886f)))));
}

