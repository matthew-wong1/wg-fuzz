struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -282f;

var<private> global1: Struct_4 = Struct_4(vec2<u32>(31658u, 0u), 0u, vec2<u32>(73836u, 1923u), vec3<i32>(2147483647i, 14116i, -10645i));

var<private> global2: f32 = -1000f;

var<private> global3: array<f32, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0, 26u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 26u)]))) + global3[_wgslsmith_index_u32(firstLeadingBit(global1.b) & arg_0.b.a.e.x, 26u)]));
    var var_1 = -23398i;
    var_1 = i32(-1i) * -abs(0i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c.a.e, vec2<u32>(u_input.a.x, arg_0.b.a.e.x) >> (arg_0.c.a.e % vec2<u32>(32u))), global1.a), 26u)])), -913f);
    return u_input.c.x;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(~max(u_input.c, vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), global1.b | u_input.c.x)), func_3(Struct_3(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.b, 26u)], vec2<i32>(global1.d.x, u_input.d.x), vec2<i32>(0i, -63968i), global3[_wgslsmith_index_u32(14407u, 26u)], vec2<u32>(u_input.a.x, 1u))), Struct_2(Struct_1(global3[_wgslsmith_index_u32(12747u, 26u)], vec2<i32>(0i, -43140i), vec2<i32>(u_input.d.x, -1i), 832f, vec2<u32>(u_input.b, global1.a.x))))), u_input.a, vec3<i32>(1i, _wgslsmith_mod_i32(global1.d.x, abs(29735i)), _wgslsmith_div_i32(abs(-24283i), _wgslsmith_add_i32(u_input.d.x, 9631i))) ^ global1.d);
    let var_1 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], max(~vec2<i32>(46100i, u_input.d.x), ~global1.d.zz), select(vec2<i32>(countOneBits(116i), u_input.d.x), countOneBits(-vec2<i32>(2147483647i, global1.d.x)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec3<bool>(false, true, false)))), global3[_wgslsmith_index_u32(~1u, 26u)], max(firstLeadingBit(global1.c), u_input.a)));
    global3 = array<f32, 26>();
    let var_2 = max(var_1.a.e.x, u_input.c.x);
    var var_3 = -var_0.d.x;
    return Struct_3(select(vec4<bool>(false, any(vec4<bool>(false, false, true, true)), true, select(true, 0u == var_0.a.x, false)), select(vec4<bool>(true, true, false, false), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~u_input.c.x, 26u)])) <= global3[_wgslsmith_index_u32(_wgslsmith_div_u32(36346u, var_0.b), 26u)]), Struct_2(var_1.a), var_1);
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(sign(-253f));
    let var_0 = func_2();
    global1 = Struct_4(vec2<u32>(~35464u, global1.c.x), firstLeadingBit(abs(~25350u) ^ _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(var_0.b.a.e.x, global1.a.x), var_0.b.a.e.x)), vec2<u32>(~_wgslsmith_mult_u32(var_0.b.a.e.x, ~var_0.c.a.e.x), global1.a.x), vec3<i32>(abs(u_input.d.x), -923i, firstTrailingBit(_wgslsmith_div_i32(min(-24342i, global1.d.x), -13447i))));
    let var_1 = firstLeadingBit(~global1.d.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.a.a), _wgslsmith_div_vec2_i32(-(vec2<i32>(var_1, 2147483647i) | vec2<i32>(var_1, global1.d.x)) & -(global1.d.yz | vec2<i32>(var_0.c.a.b.x, 0i)), select(vec2<i32>(0i, var_0.b.a.c.x), countOneBits(~vec2<i32>(5330i, u_input.d.x)), vec2<bool>(true, all(var_0.a.yz)))), abs(var_0.c.a.b) << (vec2<u32>(u_input.c.x, ~522u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(2243f, var_0.b.a.a, _wgslsmith_f_op_f32(552f - _wgslsmith_f_op_f32(166f * global3[_wgslsmith_index_u32(51149u, 26u)])) >= _wgslsmith_f_op_f32(func_2().c.a.d + _wgslsmith_f_op_f32(floor(var_0.c.a.a))))), reverseBits(vec2<u32>(~75890u, ~min(106050u, var_0.b.a.e.x))));
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(arg_1.c.a);
    global2 = _wgslsmith_f_op_f32(-509f - global3[_wgslsmith_index_u32(func_3(Struct_3(vec4<bool>(u_input.d.x < -31541i, arg_1.a.x, true, arg_1.a.x), Struct_2(func_1(true).b.a), func_1(true).b)), 26u)]);
    global3 = array<f32, 26>();
    let var_1 = arg_1.a.xzy;
    var var_2 = !arg_1.a;
    return Struct_4(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.c.a.e.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.a.e.x, 4294967295u), arg_1.c.a.e)), max(~vec2<u32>(1u, 1u), ~vec2<u32>(u_input.c.x, var_0.a.e.x)), vec2<u32>(10973u, 2399u)), 4294967295u, vec2<u32>(_wgslsmith_add_u32(var_0.a.e.x, ~1u), arg_0) & _wgslsmith_mult_vec2_u32(vec2<u32>(54373u, func_2().c.a.e.x), ~vec2<u32>(10833u, 26764u)), -select(vec3<i32>(-1i, global1.d.x, -46872i) << (~vec3<u32>(83727u, 93566u, var_0.a.e.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.a.b.x, arg_1.b.a.b.x, arg_1.c.a.c.x), vec3<i32>(-62694i, global1.d.x, -13095i)), select(!var_1, !arg_1.a.xxy, vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(~global1.a, abs(min(~u_input.a.x, ~(4127u ^ u_input.a.x))), select(vec2<u32>(_wgslsmith_mod_u32(global1.a.x, global1.a.x), _wgslsmith_add_u32(1u, global1.c.x << (u_input.c.x % 32u))), vec2<u32>(global1.b, ~44294u), false), vec3<i32>(u_input.d.x, firstTrailingBit(_wgslsmith_mod_i32(u_input.d.x | u_input.d.x, abs(-3189i))), ~u_input.d.x));
    global1 = func_4(~global1.a.x, func_1(reverseBits(~11440u) < global1.c.x));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-500f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 26u)] - global3[_wgslsmith_index_u32(1u, 26u)])))), vec2<i32>(~u_input.d.x, 30089i), ~(~select(vec2<i32>(1i, u_input.d.x) & vec2<i32>(-29546i, -16694i), global1.d.zx & u_input.d.xx, vec2<bool>(true, true))), global3[_wgslsmith_index_u32(33371u << (~u_input.c.x % 32u), 26u)], func_1(true & (~5860i > global1.d.x)).b.a.e);
    var var_1 = u_input.b;
    var var_2 = -1000f;
    var var_3 = Struct_5(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b & max(0u, global1.b), func_1(func_1(true).a.x).c.a.e.x, ~2422u), ~vec3<u32>(56098u << (0u % 32u), u_input.b, 0u & var_0.e.x)), var_0.b.x, 4294967295u, Struct_4(~var_0.e, var_0.e.x, func_4(~4294967295u, func_2()).c, global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(-25219i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, abs(u_input.d.x)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(var_0.b.x, var_3.b)), reverseBits(vec2<i32>(u_input.d.x, 2087i) << (global1.a % vec2<u32>(32u))))), -1315f, -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.d.x, u_input.d.x, -2147483647i, var_0.b.x), vec4<i32>(-2147483647i, -1i, 39945i, 59821i) | vec4<i32>(-15969i, var_0.c.x, -2147483647i, u_input.d.x))), var_0.e.x);
}

