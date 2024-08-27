struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(1000f, -199f, -1603f), vec3<i32>(-12967i, 0i, 2147483647i), 26004u, -846f, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> bool {
    global0 = array<vec4<f32>, 18>();
    let var_0 = 47169u;
    var var_1 = _wgslsmith_add_u32(global3.c, arg_0);
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(abs(vec3<u32>(arg_1, u_input.b.x, 1u)))), vec3<u32>(~(~var_0), _wgslsmith_mod_u32(u_input.e << (global1.b.c % 32u), 1u), ~arg_1), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(4294967295u, global1.b.c, 4294967295u)), select(~vec3<u32>(450u, 20861u, 1u), vec3<u32>(55625u, 0u, arg_1) >> (vec3<u32>(global1.b.c, 1u, var_0) % vec3<u32>(32u)), !global3.e))));
    global2 = array<Struct_2, 2>();
    return !(!global1.b.e);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.a.zz + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - -1233f) * _wgslsmith_f_op_f32(-arg_1.b)), -1354f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.a.zy))))));
    let var_1 = arg_1;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(128f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-738f + 269f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1373f * 287f), _wgslsmith_f_op_f32(var_1.e.a.x - 388f)))))), _wgslsmith_f_op_f32(abs(1f)));
    let var_3 = Struct_4(global3.a.x, Struct_1(vec3<f32>(-1085f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 * 1703f))), _wgslsmith_f_op_f32(var_2.x * 1592f)), global3.b, select(1u, 4294967295u, arg_1.d.x), var_2.x, true), Struct_3(arg_1.d, var_1.e.b));
    let var_4 = _wgslsmith_div_i32(-2413i, arg_1.e.b.x);
    return Struct_1(global1.b.a, min(firstLeadingBit(global1.c.b << (~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))), var_3.c.b), _wgslsmith_mult_u32(0u, 16854u >> (var_3.b.c % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_3.a)))), 33886u == firstTrailingBit(1u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = global2[_wgslsmith_index_u32(global1.b.c, 2u)];
    return func_3(vec3<u32>(0u, abs(select(~u_input.c, _wgslsmith_add_u32(u_input.b.x, 29797u), u_input.a > -28404i)), ~_wgslsmith_clamp_u32(u_input.b.x ^ u_input.b.x, max(u_input.b.x, var_1.e.c), 1u)), Struct_2(select(select(vec2<bool>(global3.e, global3.e), select(vec2<bool>(false, global1.c.a.x), var_1.d.yz, false), !vec2<bool>(false, var_1.a.x)), select(select(vec2<bool>(global3.e, true), vec2<bool>(global1.c.a.x, false), var_1.a), select(vec2<bool>(var_1.e.e, true), vec2<bool>(false, global1.c.a.x), vec2<bool>(global1.c.a.x, global3.e)), false), (arg_0 >= global3.b.x) == global1.c.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(round(1735f))))), _wgslsmith_mod_i32(66212i, -global3.b.x), vec3<bool>(var_1.e.e, select(func_2(34512u, global1.b.c, var_1.c), any(vec3<bool>(false, false, var_1.d.x)), 578f <= global3.d), any(!vec4<bool>(false, global1.b.e, global1.b.e, true))), var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) * -1040f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    global0 = array<vec4<f32>, 18>();
    global1 = Struct_4(global1.b.d, global1.b, global1.c);
    let var_1 = select(global1.c.a, vec3<bool>(!global1.b.e, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-global3.a.x)) < var_0.a.x), (global3.b.x | -abs(-36648i)) > _wgslsmith_sub_i32(0i, -(global3.b.x ^ var_0.b.x)));
    let var_2 = global1.c;
    global0 = array<vec4<f32>, 18>();
    let var_3 = ~abs(var_0.c) >> (4294967295u % 32u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_f_op_f32(-1044f - -2103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-705f)) + _wgslsmith_f_op_f32(global1.a - var_0.d))) + var_0.a), ~vec3<i32>(~36019i, ~(-var_0.b.x), var_2.b.x), 15388u, var_0.a.x, all(vec4<bool>(!(u_input.d == var_2.b.x), func_3(countOneBits(vec3<u32>(global1.b.c, global3.c, 16614u)), global2[_wgslsmith_index_u32(func_1(u_input.a).c, 2u)], _wgslsmith_div_f32(var_0.a.x, var_0.a.x)).e, true, !(0u >= var_0.c))));
    var var_5 = 9174u;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(reverseBits(vec3<u32>(min(1u, global3.c), 4294967295u << (var_0.c % 32u), global3.c)), global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(global3.c, global3.c)) & var_0.c, 2u)], _wgslsmith_f_op_f32(-var_4.d)).b, var_4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d * 1322f), _wgslsmith_f_op_f32(trunc(-1000f))))) - _wgslsmith_f_op_f32(var_0.d * var_0.d)), min(27580i, var_0.b.x) >> (var_4.c % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1081f))));
}

