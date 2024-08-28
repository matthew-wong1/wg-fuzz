struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<bool, 27>;

var<private> global3: Struct_2 = Struct_2(true, 54788u, 17174u, Struct_1(33232u, vec3<i32>(-1i, 0i, 35005i), -1390f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global0 = Struct_2(select(global0.a, true, !any(vec3<bool>(false, global3.a, true))), global0.b, _wgslsmith_add_u32(~global1.c, abs(min(global0.d.a, 40927u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 5871u, u_input.a), u_input.b.yxx) % 32u)), Struct_1(~reverseBits(21597u) & u_input.a, global1.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.c, 634f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.d.c * -1000f))))));
    let var_0 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(_wgslsmith_add_i32(global1.d.b.x, global1.d.b.x), global3.d.b.x, _wgslsmith_mult_i32(1i, 0i)) >> (vec3<u32>(1u, ~global3.c, ~u_input.b.x) % vec3<u32>(32u)), global1.d.b, any(vec2<bool>(global0.a, true))), global0.d.b);
    let var_1 = u_input.b.x;
    let var_2 = -min(-global0.d.b, ~vec3<i32>(-11272i, -global0.d.b.x, _wgslsmith_div_i32(global0.d.b.x, -7004i)));
    var var_3 = abs(1u);
    return var_1;
}

fn func_4(arg_0: Struct_2) -> i32 {
    global2 = array<bool, 27>();
    let var_0 = ~(_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0.d.b.x, -1i, arg_0.d.b.x, global0.d.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.b.x, arg_0.d.b.x, 0i, 0i), vec4<i32>(global3.d.b.x, 39466i, 6712i, arg_0.d.b.x)), !arg_0.a), abs(select(vec4<i32>(arg_0.d.b.x, arg_0.d.b.x, -47806i, global1.d.b.x), vec4<i32>(0i, arg_0.d.b.x, global0.d.b.x, global3.d.b.x), arg_0.a))) >> (firstLeadingBit(vec4<u32>(arg_0.b ^ global0.c, ~global0.b, min(1249u, arg_0.b), 1u)) % vec4<u32>(32u)));
    let var_1 = global3.d.b.x;
    global1 = arg_0;
    let var_2 = true;
    return 1i;
}

fn func_2() -> u32 {
    var var_0 = func_4(Struct_2(global1.a, func_3(), global3.d.a, Struct_1(57726u, max(global3.d.b, countOneBits(global0.d.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.d.c), -717f)))));
    let var_1 = Struct_1(~(~(~_wgslsmith_add_u32(u_input.a, global0.c))), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.d.b.x, -2147483647i, global0.d.b.x) & vec3<i32>(28133i, global1.d.b.x, 23437i), countOneBits(global1.d.b)) & vec3<i32>(global0.d.b.x, 5996i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.c * global0.d.c)));
    let var_2 = !(!select(!select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(!global2[_wgslsmith_index_u32(1u, 27u)], false), true));
    let var_3 = _wgslsmith_f_op_f32(floor(819f));
    var var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(~_wgslsmith_mult_vec2_i32(var_1.b.yx, var_1.b.yy)), ~global0.d.b.zx, -max(vec2<i32>(-35809i ^ global3.d.b.x, var_1.b.x), global0.d.b.yy));
    return abs(~(~abs(min(59417u, 4294967295u))));
}

fn func_1() -> f32 {
    var var_0 = ~0i;
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.d.a, u_input.b.x, 0u), vec3<u32>(global1.d.a, 7284u, func_2()), vec3<u32>(~(~global0.b), ~global1.b, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(u_input.a, global3.b)))) >> (countOneBits(u_input.b.xxz) % vec3<u32>(32u));
    global1 = Struct_2(!global3.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(179329u, _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.xz), global1.d.a | global3.d.a, global0.c), ~u_input.b), _wgslsmith_dot_vec3_u32(var_1, firstTrailingBit(~countOneBits(vec3<u32>(global0.d.a, global3.c, 13159u)))), global3.d);
    let var_2 = -213f;
    var var_3 = Struct_2(false, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~global3.c), _wgslsmith_dot_vec3_u32(~var_1, vec3<u32>(var_1.x, 17366u, u_input.a) << (var_1 % vec3<u32>(32u)))), _wgslsmith_dot_vec4_u32(~reverseBits(u_input.b), vec4<u32>(_wgslsmith_mult_u32(32040u, global1.d.a), 1u, u_input.a ^ 19816u, var_1.x | global3.d.a))), ~1u, Struct_1(func_2(), firstLeadingBit(global0.d.b ^ ~global0.d.b), global0.d.c));
    return _wgslsmith_f_op_f32(f32(-1f) * -1134f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1593f) * _wgslsmith_f_op_f32(func_1()));
    return Struct_2(!any(!select(vec2<bool>(global0.a, false), vec2<bool>(global3.a, true), vec2<bool>(true, global3.a))), 1u, global1.b & 1u, Struct_1(global3.d.a, vec3<i32>(-_wgslsmith_div_i32(60961i, global3.d.b.x), _wgslsmith_add_i32(-246i, max(1i, 0i)), global1.d.b.x >> (13008u % 32u)), global0.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.c, -1494f, 631f), vec3<f32>(2445f, global0.d.c, global3.d.c))), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -690f, 358f), true)), Struct_1(global1.c, vec3<i32>(global0.d.b.x, 0i, -2147483647i), _wgslsmith_f_op_f32(step(global3.d.c, -1962f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.c, global0.d.c, 317f, 886f), vec4<f32>(global0.d.c, -354f, -909f, global3.d.c), vec4<bool>(global0.a, true, global3.a, true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1436f, global3.d.c, global3.d.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, 973f, -2465f, 2133f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f * -114f)), 1798f, -1141f)));
    global0 = Struct_2(global1.a, 1u, ~4294967295u, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.d.c * 1000f), global3.d.c, -934f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-121f, global3.d.c, 1810f), vec3<f32>(global0.d.c, 341f, global3.d.c))) * vec3<f32>(-327f, global1.d.c, -1045f))), Struct_1(global0.d.a, -abs(global1.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.d.c) * 1000f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.d.c, global1.d.c, -488f, global0.d.c))), vec4<f32>(global0.d.c, 168f, 1671f, -2110f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2103f, 223f, global0.d.c, global0.d.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c, -265f, global3.d.c, 1189f))))))).d);
    global3 = Struct_2(!global3.a, reverseBits(u_input.b.x) ^ 77615u, u_input.a, Struct_1(0u, global3.d.b, global3.d.c));
    var var_0 = select(!select(select(vec4<bool>(false, global3.a, global3.a, global3.a), !vec4<bool>(global2[_wgslsmith_index_u32(global3.b, 27u)], true, true, global3.a), !vec4<bool>(global0.a, true, global1.a, global2[_wgslsmith_index_u32(global3.d.a, 27u)])), select(!vec4<bool>(global0.a, true, false, global2[_wgslsmith_index_u32(1u, 27u)]), !vec4<bool>(false, false, global1.a, global1.a), select(vec4<bool>(global1.a, false, true, global0.a), vec4<bool>(true, global0.a, global0.a, global2[_wgslsmith_index_u32(1897u, 27u)]), vec4<bool>(false, false, true, global3.a))), any(!vec4<bool>(global0.a, true, global0.a, false))), !(!(!select(vec4<bool>(true, true, true, global1.a), vec4<bool>(global1.a, global2[_wgslsmith_index_u32(4294967295u, 27u)], global3.a, global2[_wgslsmith_index_u32(u_input.a, 27u)]), true))), select(select(select(vec4<bool>(global0.a, true, true, global2[_wgslsmith_index_u32(global1.d.a, 27u)]), !vec4<bool>(false, global0.a, false, false), vec4<bool>(false, false, global3.a, false)), vec4<bool>(true, true, global1.a, func_5(vec3<f32>(-617f, global1.d.c, global1.d.c), global0.d, vec4<f32>(-295f, global1.d.c, global3.d.c, 2050f)).a), vec4<bool>(true, 47454u < global1.b, all(vec2<bool>(global2[_wgslsmith_index_u32(36797u, 27u)], true)), true)), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.c, 27u)], false, false), vec4<bool>(global1.a, true, global0.a, true), select(vec4<bool>(global2[_wgslsmith_index_u32(global1.b, 27u)], global1.a, false, global1.a), vec4<bool>(true, false, true, global0.a), global0.a)), !select(vec4<bool>(global0.a, true, global1.a, false), vec4<bool>(true, false, global1.a, true), vec4<bool>(global2[_wgslsmith_index_u32(global3.b, 27u)], global2[_wgslsmith_index_u32(global0.d.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], global1.a)), !(!vec4<bool>(global1.a, global0.a, false, true))), select(!(!vec4<bool>(true, global3.a, false, global1.a)), vec4<bool>(global3.a == global2[_wgslsmith_index_u32(global3.d.a, 27u)], any(vec2<bool>(true, global2[_wgslsmith_index_u32(31574u, 27u)])), all(vec2<bool>(false, true)), true), true)));
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.c, 288f, -982f, global3.d.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, -2006f, global0.d.c, global3.d.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, 642f, 881f, 3460f)) + vec4<f32>(global3.d.c, global0.d.c, global3.d.c, -884f)), vec4<bool>(false, 404f < global0.d.c, 30721u == global1.d.a, !global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.c, 1000f, 1000f, global1.d.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c, global1.d.c, global1.d.c, global0.d.c) - vec4<f32>(-1666f, global0.d.c, global1.d.c, global3.d.c))))))));
}

