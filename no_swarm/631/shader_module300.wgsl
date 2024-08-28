struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-1i, 0i, i32(-2147483648), -1i, i32(-2147483648), -13882i, -1i, -1i, i32(-2147483648), 0i, 1i, -1i, -15602i, -26811i, 1i, -30794i, 0i, -1i, 12124i, 1i, -22146i);

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(1i, 79834i, 2147483647i, 2147483647i), vec4<i32>(0i, 35757i, 1i, 1i), vec4<i32>(0i, 51335i, 42705i, -39795i), vec4<i32>(8605i, 2147483647i, -83060i, 8698i), vec4<i32>(i32(-2147483648), -2937i, 0i, 1i), vec4<i32>(-1i, 1i, 69324i, -14456i), vec4<i32>(0i, 2147483647i, 0i, 1i), vec4<i32>(33532i, -4985i, 0i, 2147483647i), vec4<i32>(-42983i, -49323i, 0i, i32(-2147483648)), vec4<i32>(-6748i, 17492i, 0i, -1i));

var<private> global2: Struct_1 = Struct_1(true, true, false, vec2<f32>(2274f, -811f), 16989u);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global1 = array<vec4<i32>, 10>();
    global0 = array<i32, 21>();
    global1 = array<vec4<i32>, 10>();
    let var_0 = vec3<f32>(-580f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(global2.d.x - global3.d.x)), 427f, any(vec2<bool>(global2.a, global3.a)))) + global3.d.x));
    global3 = Struct_1(global3.b, true, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1482f) - global2.d))), global2.e);
    return var_0;
}

fn func_1() -> bool {
    let var_0 = max(-global0[_wgslsmith_index_u32(u_input.c & 33567u, 21u)], 0i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true && global3.c))));
    global2 = Struct_1(all(vec4<bool>(-38367i >= ~var_0, !any(vec3<bool>(false, false, true)), global3.b, select(false, any(vec4<bool>(false, global3.c, false, false)), global2.b))), false, (select(true, all(vec4<bool>(false, global3.c, global2.a, global3.b)), all(vec4<bool>(true, global3.a, true, true))) && global2.b) || true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.d.x), -583f) + global2.d) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, 610f)) - global2.d))), ~u_input.d ^ ~(~(~4739u)));
    return true;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global1 = array<vec4<i32>, 10>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 21u)], 33658i, -2147483647i)), 8905i), -1i);
    global0 = array<i32, 21>();
    let var_1 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global3.e, arg_1.e)), _wgslsmith_mult_vec2_u32(u_input.b.wx >> (u_input.b.yx % vec2<u32>(32u)), u_input.b.xz)), select(~abs(17625u), 1u, all(!vec4<bool>(false, arg_1.c, arg_1.a, false))), ~75510u), 21u)], _wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec2_i32(arg_0.wz, min(vec2<i32>(arg_0.x, var_0), vec2<i32>(-16738i, -29621i))) & firstTrailingBit(_wgslsmith_clamp_i32(arg_0.x, 2147483647i, -1i))));
    let var_2 = global3.d;
    return all(vec4<bool>(global3.a, all(vec4<bool>(true, global2.b != false, any(vec3<bool>(true, global2.a, global2.a)), true)), true, global3.c && global3.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(27083u, ~arg_1.e), u_input.b.wx);
    var var_1 = arg_1;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), arg_0.d.x) + arg_0.d.x), global2.d.x));
    var var_3 = !vec2<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_1.a), false), arg_0.d.x <= 1306f)), arg_0.b);
    global0 = array<i32, 21>();
    return Struct_1(true, false, all(select(!vec2<bool>(arg_0.a, false), select(vec2<bool>(global2.a, false), vec2<bool>(global2.c, false), false), !vec2<bool>(false, global3.a))) & true, vec2<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1478f, -1203f), _wgslsmith_f_op_f32(floor(var_2.x)))))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    global3 = func_4(Struct_1(all(vec4<bool>(func_1(), true, true, !global2.b)), global3.a == true, global2.d.x <= global2.d.x, global2.d, 13658u), Struct_1((global3.b & false) || func_3(-global1[_wgslsmith_index_u32(21298u, 10u)], Struct_1(global3.b, true, true, vec2<f32>(-1000f, global2.d.x), global3.e)), all(vec2<bool>(true, false)), true, _wgslsmith_f_op_vec3_f32(func_2(!global2.c | (true & global3.b))).zz, ~1u), Struct_1(global2.c, all(select(vec4<bool>(global3.c, false, global3.c, global3.a), select(vec4<bool>(true, global2.b, true, false), vec4<bool>(true, global3.a, false, global2.c), vec4<bool>(global3.c, false, global3.c, false)), !vec4<bool>(global2.a, true, false, true))), global3.a, global2.d, countOneBits(1u ^ firstTrailingBit(29707u))));
    let var_0 = vec3<bool>(all(vec3<bool>(true, true, true)), !(!(!(!global2.c))), all(!vec3<bool>(false, global2.c, true)));
    global0 = array<i32, 21>();
    var var_1 = ~u_input.b.xwx;
    var var_2 = func_4(func_4(Struct_1(select(false, global2.a, global3.a == true), true, 48154u < _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(func_2(!global3.a)).yx, _wgslsmith_add_u32(var_1.x, global3.e)), Struct_1(true, any(!var_0.zz), false, func_4(Struct_1(global3.c, global3.c, var_0.x, vec2<f32>(506f, global2.d.x), 1u), Struct_1(false, true, global3.c, global3.d, global3.e), func_4(Struct_1(global2.b, global2.c, false, global3.d, global2.e), Struct_1(false, true, true, global3.d, global3.e), Struct_1(global3.c, false, var_0.x, vec2<f32>(1000f, 723f), var_1.x))).d, 59167u), func_4(Struct_1(func_1(), select(global2.c, global2.b, global2.a), !global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2494f, global3.d.x)), 10895u ^ global3.e), func_4(Struct_1(var_0.x, global2.a, true, global2.d, global3.e), func_4(Struct_1(false, var_0.x, true, global2.d, 95756u), Struct_1(global2.c, false, false, vec2<f32>(-799f, global2.d.x), 20244u), Struct_1(global3.a, false, var_0.x, global3.d, global2.e)), Struct_1(global3.b, global3.a, var_0.x, vec2<f32>(-1000f, 2642f), 4294967295u)), Struct_1(global3.c, global3.c, any(vec3<bool>(global2.a, true, var_0.x)), _wgslsmith_f_op_vec2_f32(-global3.d), firstLeadingBit(35888u)))), Struct_1(var_0.x, select(global2.d.x <= _wgslsmith_f_op_f32(global3.d.x * global3.d.x), true, (false | global2.a) && global3.c), global3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, -986f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d))), global2.e), func_4(Struct_1(true, all(vec3<bool>(global2.a, true, global3.b)), var_0.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.d.x, -280f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, 283f) * vec2<f32>(global3.d.x, 499f)), global2.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(15739u, 67532u), u_input.b.wx) | ~var_1.x), func_4(func_4(Struct_1(false, true, var_0.x, global3.d, 12808u), func_4(Struct_1(false, var_0.x, var_0.x, vec2<f32>(386f, global2.d.x), var_1.x), Struct_1(global3.a, true, false, global2.d, global3.e), Struct_1(var_0.x, global3.a, global3.c, global3.d, u_input.c)), Struct_1(false, false, var_0.x, global2.d, 0u)), Struct_1(any(vec4<bool>(global3.c, true, false, false)), global3.b && global3.c, true, vec2<f32>(global2.d.x, -118f), firstTrailingBit(u_input.b.x)), func_4(Struct_1(global2.a, global2.b, true, vec2<f32>(-861f, -1364f), u_input.b.x), Struct_1(true, false, var_0.x, vec2<f32>(global2.d.x, global2.d.x), 51458u), func_4(Struct_1(var_0.x, true, true, global3.d, 1u), Struct_1(false, true, global2.c, global3.d, 4294967295u), Struct_1(var_0.x, false, true, global3.d, 30552u)))), func_4(Struct_1(false | global2.b, true, true, _wgslsmith_f_op_vec2_f32(global3.d + global3.d), ~46166u), Struct_1(global2.c, 12734i <= u_input.e, !global2.a, global3.d, ~4294967295u), Struct_1(func_3(global1[_wgslsmith_index_u32(38969u, 10u)], Struct_1(global2.a, var_0.x, global2.a, vec2<f32>(798f, 828f), 1u)), var_0.x, func_1(), _wgslsmith_f_op_vec2_f32(-global2.d), abs(1u)))));
    var_2 = func_4(Struct_1(global2.c, true, any(!select(vec4<bool>(var_0.x, global3.b, global3.b, true), vec4<bool>(global2.c, false, var_0.x, var_0.x), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1223f, 988f), global2.d), vec2<f32>(142f, var_2.d.x)) + global3.d), 1u), Struct_1(select(true, false, (0u ^ global3.e) == 48465u), true, true, _wgslsmith_f_op_vec2_f32(-global3.d), u_input.d), func_4(Struct_1(true, !func_4(Struct_1(false, var_0.x, true, global2.d, global2.e), Struct_1(false, var_0.x, true, global3.d, var_2.e), Struct_1(var_2.a, false, false, var_2.d, 48204u)).c, true, global2.d, u_input.d >> (abs(var_2.e) % 32u)), func_4(func_4(Struct_1(var_2.c, var_2.c, var_0.x, vec2<f32>(global3.d.x, -1761f), var_1.x), func_4(Struct_1(false, var_2.c, var_0.x, var_2.d, var_2.e), Struct_1(global3.b, global3.a, true, var_2.d, var_1.x), Struct_1(var_0.x, true, global3.a, vec2<f32>(global3.d.x, 388f), 13484u)), func_4(Struct_1(false, false, false, global3.d, var_1.x), Struct_1(false, false, true, var_2.d, var_2.e), Struct_1(false, false, true, vec2<f32>(var_2.d.x, global3.d.x), global3.e))), Struct_1(true, global3.c, false, func_4(Struct_1(false, var_2.b, true, vec2<f32>(376f, var_2.d.x), 18132u), Struct_1(global2.c, global3.c, false, vec2<f32>(-1507f, 561f), 97242u), Struct_1(var_0.x, global3.c, true, vec2<f32>(var_2.d.x, var_2.d.x), u_input.d)).d, var_1.x >> (10798u % 32u)), func_4(Struct_1(var_0.x, false, global3.b, var_2.d, 37009u), func_4(Struct_1(true, true, false, vec2<f32>(global3.d.x, var_2.d.x), 36904u), Struct_1(true, false, var_2.c, vec2<f32>(global3.d.x, 1717f), global2.e), Struct_1(global2.b, var_2.a, global3.b, vec2<f32>(global3.d.x, -425f), u_input.c)), Struct_1(var_0.x, true, var_0.x, var_2.d, var_2.e))), Struct_1(any(!var_0), true, all(!var_0), var_2.d, 113092u)));
    global1 = array<vec4<i32>, 10>();
    let var_3 = Struct_1(all(select(select(vec4<bool>(false, true, false, global2.c), select(vec4<bool>(false, global2.a, true, global2.c), vec4<bool>(true, true, true, var_2.a), vec4<bool>(var_2.a, false, global2.c, false)), !vec4<bool>(global2.c, false, false, var_2.c)), vec4<bool>(false, true, var_0.x, false), !select(vec4<bool>(global2.b, global2.b, true, false), vec4<bool>(true, global3.c, global3.c, true), vec4<bool>(false, false, true, global3.b)))), true, func_4(func_4(Struct_1(!var_2.b, global3.a, !var_0.x, global3.d, 1u), func_4(func_4(Struct_1(var_0.x, var_2.c, var_2.a, vec2<f32>(global2.d.x, global3.d.x), 13502u), Struct_1(var_0.x, var_2.c, var_0.x, global3.d, 13985u), Struct_1(global2.c, var_2.a, global2.c, vec2<f32>(var_2.d.x, var_2.d.x), 1u)), func_4(Struct_1(global3.c, var_2.c, global2.c, global2.d, var_2.e), Struct_1(false, global2.a, global3.a, global2.d, 0u), Struct_1(false, global3.c, global3.a, vec2<f32>(1000f, global3.d.x), 42621u)), func_4(Struct_1(true, false, false, global3.d, var_1.x), Struct_1(global3.c, true, var_2.b, global3.d, 13456u), Struct_1(true, global3.a, var_0.x, vec2<f32>(821f, 500f), 5428u))), Struct_1(var_0.x, false, true, global2.d, ~var_2.e)), func_4(Struct_1(global3.a && false, var_0.x, global2.c, var_2.d, global2.e), func_4(func_4(Struct_1(var_2.c, true, true, vec2<f32>(global3.d.x, global3.d.x), 4294967295u), Struct_1(true, var_2.c, global2.b, vec2<f32>(-882f, var_2.d.x), var_1.x), Struct_1(global2.c, false, true, global3.d, var_1.x)), func_4(Struct_1(true, var_2.c, var_0.x, global3.d, 0u), Struct_1(var_0.x, true, global2.c, var_2.d, u_input.b.x), Struct_1(false, false, global2.b, vec2<f32>(-1000f, -2130f), 48825u)), func_4(Struct_1(var_0.x, var_2.b, true, global3.d, u_input.c), Struct_1(false, global2.b, var_2.a, vec2<f32>(-1000f, 843f), var_1.x), Struct_1(false, global3.a, true, global3.d, var_2.e))), Struct_1(global3.c, func_3(global1[_wgslsmith_index_u32(0u, 10u)], Struct_1(global2.b, false, true, global3.d, global2.e)), false, _wgslsmith_div_vec2_f32(vec2<f32>(global3.d.x, 434f), var_2.d), 24319u)), Struct_1(global2.c, func_4(func_4(Struct_1(false, var_0.x, true, vec2<f32>(-658f, var_2.d.x), u_input.d), Struct_1(true, var_0.x, var_2.a, vec2<f32>(391f, -537f), u_input.c), Struct_1(global3.b, true, false, var_2.d, global2.e)), func_4(Struct_1(true, true, true, global3.d, 43713u), Struct_1(global3.b, false, global3.a, global3.d, var_1.x), Struct_1(var_0.x, false, false, global3.d, u_input.c)), Struct_1(true, var_0.x, var_2.c, vec2<f32>(global3.d.x, global2.d.x), var_1.x)).c, false, vec2<f32>(_wgslsmith_f_op_f32(abs(-1276f)), _wgslsmith_f_op_f32(f32(-1f) * -1595f)), ~(~u_input.d))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, 1000f)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

