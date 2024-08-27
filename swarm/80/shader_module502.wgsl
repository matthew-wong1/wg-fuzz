struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-267f, 643f, 1077f), vec3<i32>(2147483647i, 2528i, 2147483647i), true, vec3<bool>(true, false, false));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = Struct_1(_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-555f, 322f, global0.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.a - global1.a), global1.a)))), ~u_input.a, true, global1.d);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a, vec3<f32>(1483f, global1.a.x, global1.a.x)) * global1.a), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(trunc(global1.a.x))), vec3<bool>(true, true, global1.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -1137f, global0.x))))))), -global1.b, global1.d.x, select(select(!global1.d, select(!global1.d, select(vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(true, false, global1.c), vec3<bool>(true, false, global1.d.x)), global1.a.x >= -285f), select(!vec3<bool>(true, true, global1.c), !global1.d, select(global1.d, vec3<bool>(global1.d.x, global1.d.x, true), vec3<bool>(global1.c, true, global1.c)))), global1.d, !(!select(vec3<bool>(false, true, false), global1.d, vec3<bool>(false, global1.d.x, true)))));
    var var_0 = vec4<bool>(!select(!(global1.c & global1.d.x), true, all(vec3<bool>(global1.c, global1.c, true))), global1.c, global1.c, !global1.c && all(vec3<bool>(false, !global1.c, global1.c && global1.d.x)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(533f)), -201f)))), _wgslsmith_div_vec3_i32(vec3<i32>(-76135i, 0i, global1.b.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<i32>(1i, 2147483647i, -2147483647i)), global1.c, select(select(!global1.d, !var_0.xxw, global1.d), vec3<bool>(true, true, var_0.x), any(select(select(vec4<bool>(false, global1.d.x, true, false), vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, var_0.x, false, true)), vec4<bool>(false, true, var_0.x, var_0.x), true))));
    let var_1 = ~min(u_input.a.x, ~global1.b.x);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-27005i, var_1, 0i), vec3<i32>(global1.b.x, abs(_wgslsmith_clamp_i32(0i, global1.b.x, u_input.a.x)) << (firstLeadingBit(4294967295u) % 32u), ~countOneBits(i32(-1i) * -19080i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.zz));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.zy, vec2<f32>(arg_0.x, global1.a.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(705f, global1.a.x) - vec2<f32>(1273f, 1000f))))) * global1.a.xx);
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1084f, arg_0.x), ~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, -15444i, u_input.a.x), func_3()), all(arg_2.a), select(!select(!arg_2.a.zxx, !vec3<bool>(false, false, global1.d.x), !global1.c), !(!arg_2.b.d), select(!(!arg_2.d.d), arg_2.b.d, (u_input.c.x >= 2147483647i) | !arg_2.d.c)));
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, ~countOneBits(global1.b.zy)), u_input.b.x);
    var var_1 = -u_input.b.x;
    return (~(~vec3<u32>(arg_1, 76691u, arg_1) >> (~vec3<u32>(62834u, arg_1, 0u) % vec3<u32>(32u))) ^ vec3<u32>(~0u, ~arg_1 >> (arg_1 % 32u), firstTrailingBit(_wgslsmith_div_u32(37264u, 82303u)))) << (reverseBits(select(~vec3<u32>(arg_1, arg_1, 25059u), _wgslsmith_mod_vec3_u32(vec3<u32>(2176u, arg_1, 1u), vec3<u32>(32868u, 76276u, arg_1)), vec3<bool>(true, global1.c, global1.d.x)) | reverseBits(select(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(1u, 58943u, 0u), arg_2.a.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    return Struct_1(global1.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(global1.b, vec3<i32>(-1i) * -vec3<i32>(global1.b.x, u_input.b.x, u_input.b.x)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, 44352i, u_input.b.x), vec3<i32>(global1.b.x, -23800i, 2147483647i)), _wgslsmith_sub_i32(41433i, u_input.a.x), -1i & global1.b.x), u_input.a), all(vec4<bool>(reverseBits(u_input.b.x) >= (u_input.a.x & global1.b.x), all(vec4<bool>(false, true, true, false)), true, true)), !select(select(select(vec3<bool>(global1.c, true, arg_2), vec3<bool>(arg_2, global1.c, global1.c), arg_2), vec3<bool>(false, true, global1.c), select(vec3<bool>(arg_2, global1.c, false), global1.d, vec3<bool>(false, false, global1.d.x))), !global1.d, !(arg_2 != false)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_4(vec4<u32>(_wgslsmith_mod_u32(~firstTrailingBit(108u), _wgslsmith_dot_vec3_u32(~vec3<u32>(5100u, 4294967295u, 22451u), abs(vec3<u32>(0u, 0u, 4294967295u)))), 31481u, abs(_wgslsmith_add_u32(firstLeadingBit(0u), ~36297u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2(vec4<f32>(1035f, -141f, global1.a.x, arg_0), 4294967295u, Struct_2(vec4<bool>(global1.d.x, global1.d.x, true, false), Struct_1(vec3<f32>(-576f, -1878f, global1.a.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), true, global1.d), vec2<f32>(1000f, -1000f), Struct_1(vec3<f32>(1160f, global1.a.x, -388f), global1.b, false, global1.d))) | min(vec3<u32>(4294967295u, 33190u, 2956u), vec3<u32>(1u, 0u, 23136u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(48852u, abs(1u), 44418u), _wgslsmith_add_vec3_u32(min(vec3<u32>(15739u, 0u, 119624u), abs(vec3<u32>(1u, 1u, 0u))), vec3<u32>(1u, 1u, 1u))), true);
    global0 = vec2<f32>(var_0.a.x, global0.x);
    let var_1 = func_4(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(16244u, 71574u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(67321u, 0u, 1u), vec3<u32>(1u, 12277u, 37294u)), ~4294967295u), ~vec4<u32>(1u, 1u, 1u, 1u)), vec3<u32>(1u, _wgslsmith_div_u32(1u, 1u), ~(~abs(1u))), global1.c);
    let var_2 = global1.d.x;
    var var_3 = var_1;
    return 437f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(global0.x, global1.a.x);
    let var_0 = vec2<u32>(min(_wgslsmith_div_u32(~4294967295u, 4294967295u), 1u), ~abs(69555u)) & _wgslsmith_clamp_vec2_u32(max(vec2<u32>(1u, 1u), ~(~vec2<u32>(45887u, 76877u))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 15834u), vec2<u32>(1u, 1u))), ~max(~vec2<u32>(0u, 119u), max(vec2<u32>(29003u, 19393u), vec2<u32>(0u, 1u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1375f * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1580f)), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.a.x)) * _wgslsmith_f_op_f32(ceil(global1.a.x)))), _wgslsmith_div_f32(global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(step(-1647f, global0.x))), _wgslsmith_f_op_f32(-1f))));
    global1 = Struct_1(global1.a, global1.b, true, select(vec3<bool>(false, true, true), global1.d, all(global1.d)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_4(abs(vec4<u32>(79244u, var_0.x, var_0.x, 1u)), vec3<u32>(40232u, var_0.x, var_0.x) | vec3<u32>(var_0.x, var_0.x, var_0.x), 1i >= u_input.a.x).a.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.ww) * _wgslsmith_f_op_vec2_f32(vec2<f32>(276f, global1.a.x) + global1.a.xy))) - var_1.wz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2278f, 1285f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.wx + func_4(vec4<u32>(18794u, 14166u, var_0.x, 1u), vec3<u32>(1u, var_0.x, 0u), global1.c).a.zz))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), select(~(~9852u), var_0.x, _wgslsmith_div_i32(2147483647i, -1i) == u_input.c.x), ~(~_wgslsmith_add_u32(66582u, var_0.x))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, 1663f, global0.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1143f, var_1.x, -1487f, global1.a.x), vec4<f32>(1397f, global0.x, -177f, global1.a.x), vec4<bool>(false, false, global1.c, true))), !vec4<bool>(true, true, global1.c, false))), ~_wgslsmith_div_u32(var_0.x, 2336u), Struct_2(!vec4<bool>(false, global1.c, global1.c, false), Struct_1(vec3<f32>(global1.a.x, global1.a.x, -1418f), vec3<i32>(1i, global1.b.x, u_input.a.x), global1.c, global1.d), vec2<f32>(global0.x, -1948f), Struct_1(vec3<f32>(-513f, var_1.x, var_1.x), global1.b, global1.d.x, global1.d))) >> (min(~(~vec3<u32>(var_0.x, var_0.x, 18029u)), min(vec3<u32>(4294967295u, 34718u, 4294967295u) | vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(44324u, 4279u, var_0.x))) % vec3<u32>(32u)));
    let var_3 = func_4(min(countOneBits(vec4<u32>(var_0.x, var_2, 0u, var_0.x)) | max(vec4<u32>(25980u, var_2, var_0.x, var_0.x), vec4<u32>(var_2, var_0.x, 76609u, var_0.x)), vec4<u32>(_wgslsmith_mod_u32(~var_2, ~38133u), min(var_2, var_0.x), 1u, firstLeadingBit(var_2) | _wgslsmith_clamp_u32(var_0.x, 18857u, 0u))), ~abs(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global1.a.x, 674f, global0.x), vec4<f32>(var_1.x, -1959f, -1824f, -239f))), 19967u, Struct_2(vec4<bool>(false, global1.d.x, false, false), Struct_1(global1.a, vec3<i32>(2147483647i, 69574i, -21724i), true, vec3<bool>(true, true, global1.c)), var_1.yw, Struct_1(global1.a, u_input.a, false, vec3<bool>(global1.c, false, global1.c))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_2, ~1u));
}

