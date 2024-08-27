struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 18>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<bool>, 6>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2, arg_1, global2.a.a);
    global0 = ~select(vec2<i32>(global0.x, global0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-4832i, global0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(75713i, global0.x), vec2<i32>(global0.x, 1i)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.a), u_input.a) % vec2<u32>(32u))), vec2<bool>(!arg_2.b, true));
    global2 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4530u, var_0.b.a) & ~arg_2.a, global1[_wgslsmith_index_u32((arg_1.a >> (4294967295u % 32u)) >> (0u % 32u), 18u)], abs(max(arg_2.a, global1[_wgslsmith_index_u32(33153u, 18u)]))), !arg_3.b, arg_3.c), Struct_1(5886u, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c * arg_1.c)))), _wgslsmith_sub_u32(4294967295u, max(1u, var_0.a.a)));
    let var_1 = select(!select(vec2<bool>(arg_3.b, true), select(!vec2<bool>(false, arg_1.b), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(global2.a.b, true), vec2<bool>(false, false))), !(!vec2<bool>(global2.a.b, false))), select(!select(!vec2<bool>(arg_2.b, false), !vec2<bool>(global2.a.b, arg_1.b), vec2<bool>(false, true)), vec2<bool>(select(var_0.b.b & global2.a.b, any(vec3<bool>(false, true, false)), true), true), vec2<bool>(false, _wgslsmith_f_op_f32(trunc(arg_0)) > _wgslsmith_f_op_f32(-1376f + var_0.a.c))), !all(select(vec4<bool>(arg_3.b, false, var_0.a.b, var_0.a.b), !global3[_wgslsmith_index_u32(4056u, 6u)], true)));
    let var_2 = Struct_2(global2.b, arg_2, 0u);
    return min(-global0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(min(global0.x, 0i), 2147483647i << (arg_1.a % 32u)), vec2<i32>(_wgslsmith_sub_i32(-1i, 28118i), global0.x | global0.x)), ~global0.x >> (global1[_wgslsmith_index_u32(12213u, 18u)] % 32u)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = ~vec4<i32>(0i, _wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -1i), global0.x), func_3(arg_0, global2.b, global2.a, arg_1.b), i32(-1i) * -1i);
    let var_1 = vec3<f32>(280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(-global2.b.c));
    var var_2 = arg_1.a;
    var_2 = Struct_1(var_2.a << (_wgslsmith_mod_u32(u_input.a.x, ~max(arg_3, u_input.a.x)) % 32u), var_2.b, arg_0);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, arg_0, var_2.c, arg_1.b.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_2.c, 1000f, var_1.x), vec4<f32>(2420f, 1000f, var_1.x, -1695f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, 365f, arg_1.b.c, -1000f))))) + vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(-718f, _wgslsmith_f_op_f32(max(var_2.c, arg_1.a.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-248f))), 626f, _wgslsmith_f_op_f32(max(arg_0, var_1.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 24490u, 76461u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 18u)], u_input.a.x)), vec3<u32>(var_2.a, 33217u, 10732u)), abs(1u)) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.a, global2.a.a, global2.c), vec3<u32>(1u, 44901u, global2.c)), global2.b.a), 1u) >> (u_input.a % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = ~vec3<u32>(0u, 37220u, abs(31329u));
    var var_1 = _wgslsmith_mult_vec3_i32((_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0.x, -40221i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-53539i, global0.x, -48349i))) | abs(max(vec3<i32>(-29938i, 2147483647i, global0.x), vec3<i32>(global0.x, global0.x, 21650i)))) | _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, global0.x, global0.x)) & countOneBits(vec3<i32>(global0.x, global0.x, -1i)), firstLeadingBit(~vec3<i32>(global0.x, global0.x, global0.x))), min(max(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, global0.x, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, global0.x), vec3<i32>(global0.x, -1i, global0.x))), vec3<i32>(abs(global0.x), -15464i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -14521i, -2147483647i, 52003i), vec4<i32>(global0.x, global0.x, global0.x, -1i)))), vec3<i32>(30678i, max(~global0.x, global0.x), global0.x | min(global0.x, global0.x))));
    global2 = Struct_2(arg_2.b, arg_0, func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(201f * 1178f))), Struct_2(Struct_1(0u << (global2.b.a % 32u), !global2.a.b, arg_0.c), arg_2.b, _wgslsmith_clamp_u32(61204u, ~global1[_wgslsmith_index_u32(arg_2.c, 18u)], ~arg_2.c)), all(!vec3<bool>(arg_2.b.b, arg_1.a, false)), 1u));
    global3 = array<vec4<bool>, 6>();
    var var_2 = select(!(!select(!global3[_wgslsmith_index_u32(var_0.x, 6u)], global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 18u)], 6u)], vec4<bool>(true, arg_1.a, arg_1.b.a.b, arg_1.b.a.b))), vec4<bool>(true, !arg_0.b, (arg_1.a && true) & true, !any(select(vec2<bool>(global2.b.b, false), vec2<bool>(false, true), vec2<bool>(false, true)))), !(func_3(_wgslsmith_f_op_f32(trunc(global2.a.c)), arg_2.a, Struct_1(arg_1.b.b.a, global2.b.b, arg_0.c), Struct_1(108475u, true, 601f)) >= 0i));
    return ~(_wgslsmith_mod_u32(arg_2.c, 4294967295u) >> (global2.b.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 6>();
    let var_0 = select(vec3<u32>(global1[_wgslsmith_index_u32(69732u, 18u)], ~countOneBits(global2.c), max(1u, _wgslsmith_add_u32(~26839u, u_input.a.x & global1[_wgslsmith_index_u32(81441u, 18u)]))), firstLeadingBit(~vec3<u32>(func_1(global2.a, Struct_3(false, Struct_2(global2.b, Struct_1(51086u, false, global2.b.c), 62493u), global2.b.c, global2.a.b), Struct_2(Struct_1(u_input.a.x, false, -646f), global2.b, global1[_wgslsmith_index_u32(37760u, 18u)]), global2.a.c), 1u << (u_input.a.x % 32u), ~global2.a.a)), true);
    var var_1 = vec3<bool>(any(vec2<bool>(global2.b.b, global2.b.b)), true, global2.a.b);
    global2 = Struct_2(global2.b, global2.b, 80041u);
    global3 = array<vec4<bool>, 6>();
    var var_2 = !(!(!select(var_1.zx, var_1.zx, global2.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.c, global2.b.c, global2.a.c, global2.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.c, global2.a.c, global2.a.c, global2.a.c)))))));
}

