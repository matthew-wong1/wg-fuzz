struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, 4294967295u, vec4<i32>(6962i, 924i, 61304i, -8911i), vec4<u32>(34798u, 7950u, 4374u, 4294967295u), Struct_1(-2615f, vec2<f32>(1149f, 1993f), false, 1u, vec2<bool>(false, true)));

var<private> global1: array<u32, 2> = array<u32, 2>(0u, 81528u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_sub_i32(global0.c.x, 10004i) >> (u_input.b % 32u);
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(global0.e.b - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-211f, _wgslsmith_f_op_f32(-arg_0))))), all(vec2<bool>(any(vec4<bool>(true, false, global0.e.e.x, global0.e.e.x)), any(vec4<bool>(true, true, false, true)))) | ((false || !global0.e.e.x) || all(select(vec2<bool>(true, global0.e.c), global0.e.e, global0.e.c))), _wgslsmith_mod_u32(~821u, u_input.b), !(!global0.e.e));
    let var_2 = Struct_1(861f, _wgslsmith_f_op_vec2_f32(-global0.e.b), var_1.e.x, ~max(abs(0u), var_1.d), var_1.e);
    var var_3 = vec4<f32>(534f, arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.b.x)))), global0.e.a))), -1615f);
    var var_4 = _wgslsmith_f_op_f32(sign(1003f));
    return _wgslsmith_dot_vec4_u32(~global0.d, global0.d);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.d.x, abs(countOneBits(_wgslsmith_mult_u32(select(0u, u_input.b, false), u_input.b))), -global0.c, global0.d, Struct_1(_wgslsmith_f_op_f32(-global0.e.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(862f, global0.e.b.x) - vec2<f32>(221f, 489f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.e.a, 740f), vec2<f32>(-1418f, global0.e.a)), global0.e.b)), true, 438u, select(select(!vec2<bool>(global0.e.e.x, global0.e.e.x), vec2<bool>(false, false), true), select(select(vec2<bool>(global0.e.c, global0.e.c), global0.e.e, vec2<bool>(true, global0.e.e.x)), select(global0.e.e, global0.e.e, global0.e.e), all(vec4<bool>(global0.e.e.x, false, false, false))), !all(vec4<bool>(true, global0.e.c, global0.e.e.x, global0.e.e.x)))));
    var var_0 = _wgslsmith_f_op_f32(-global0.e.a);
    var var_1 = ~_wgslsmith_add_u32(~(~0u), ~(~(u_input.a.x ^ global1[_wgslsmith_index_u32(1u, 2u)])));
    var var_2 = global0.e;
    let var_3 = !global0.e.c;
    return Struct_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.b.x, var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1529f) + global0.e.b.x)) & abs(u_input.a.x), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_2.d, 2u)], 4294967295u), vec2<u32>(var_2.d, 32722u))), global0.c ^ vec4<i32>(_wgslsmith_dot_vec2_i32(~global0.c.xw, global0.c.zy ^ global0.c.xw), global0.c.x, -1i, ~u_input.d.x), vec4<u32>(min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, var_2.d, global1[_wgslsmith_index_u32(25676u, 2u)])), global0.d.yxw ^ global0.d.ywx), ~(global0.e.d << (66506u % 32u))), 39348u ^ ~_wgslsmith_dot_vec2_u32(global0.d.yz, global0.d.xy), 5342u, abs(~4294967295u << (global1[_wgslsmith_index_u32(~46664u, 2u)] % 32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, global0.e.b.x))), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-global0.e.b.x)), true, 4294967295u, vec2<bool>(any(!global0.e.e), true)));
}

fn func_1() -> Struct_2 {
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_0 = func_2();
    let var_1 = countOneBits(~(~firstTrailingBit(54788u)) & (firstLeadingBit(~u_input.a.x) | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], global0.b, global0.d.x, global1[_wgslsmith_index_u32(26937u, 2u)])), 78285u)));
    return func_2();
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(u_input.d.x, ~(arg_1.c.x & 1i), u_input.c);
    let var_1 = Struct_1(global0.e.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e.b)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_2().e.a, _wgslsmith_f_op_f32(f32(-1f) * -224f))))), true, (arg_1.d.x & arg_3.e.d) | _wgslsmith_clamp_u32(~(~u_input.b), 1u, 1u), vec2<bool>(true, any(vec4<bool>(arg_1.e.e.x, arg_3.e.e.x, all(vec4<bool>(false, false, false, arg_1.e.c)), false))));
    let var_2 = arg_3;
    global0 = Struct_2(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2().a, global0.d.x), 2u)], var_2.e.d), 4470u, func_1().c, countOneBits(vec4<u32>(~(~19123u), 1u, ~22694u, 1u)), var_1);
    var var_3 = vec2<f32>(-925f, arg_1.e.a);
    return func_1().e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.b.x;
    var var_1 = func_4(countOneBits(~(~abs(u_input.a))), func_1(), func_2().e.b, Struct_2(abs(0u), u_input.b, abs(~global0.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(11014u, global0.b, global1[_wgslsmith_index_u32(4294967295u, 2u)], 23673u), select(global0.d, vec4<u32>(48178u, 0u, global0.e.d, global0.b), vec4<bool>(true, false, false, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1258f), vec2<f32>(_wgslsmith_div_f32(global0.e.a, 1615f), _wgslsmith_f_op_f32(1166f + 1587f)), _wgslsmith_clamp_u32(global0.a, global1[_wgslsmith_index_u32(4294967295u, 2u)], 10734u) < 1u, ~global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<bool>(true | global0.e.c, global0.e.e.x))));
    var_1 = func_4(~u_input.a, Struct_2(firstLeadingBit(reverseBits(u_input.b)), 1u, firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, global0.c.x, -1i), global0.c, global0.c))), global0.d, global0.e), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(636f, global0.e.b.x), _wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(-1489f, 925f))))))))), Struct_2(~countOneBits(var_1.d), func_3(_wgslsmith_div_f32(func_2().e.b.x, _wgslsmith_f_op_f32(max(1124f, global0.e.b.x))), _wgslsmith_f_op_f32(-func_1().e.b.x)), global0.c, vec4<u32>(u_input.b ^ min(global1[_wgslsmith_index_u32(106964u, 2u)], u_input.b), global1[_wgslsmith_index_u32(9763u, 2u)], _wgslsmith_dot_vec4_u32(global0.d, global0.d & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 2u)], 2u)], var_1.d, 1u, global1[_wgslsmith_index_u32(var_1.d, 2u)])), _wgslsmith_div_u32(0u, 43398u)), Struct_1(func_4(global0.d.xy, Struct_2(var_1.d, global1[_wgslsmith_index_u32(99491u, 2u)], global0.c, vec4<u32>(17156u, 81615u, global0.d.x, global0.d.x), Struct_1(-135f, vec2<f32>(global0.e.b.x, var_1.b.x), var_1.e.x, 1u, vec2<bool>(global0.e.c, true))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1217f, -566f), var_1.b)), func_2()).b.x, var_1.b, true, ~1u, select(func_2().e.e, global0.e.e, var_1.c))));
    global0 = func_2();
    var var_2 = vec2<u32>(34059u & _wgslsmith_dot_vec4_u32(global0.d, global0.d), 0u);
    global1 = array<u32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, reverseBits(firstLeadingBit(-2147483647i)), global0.d, (vec4<u32>(var_2.x << (var_1.d % 32u), ~var_1.d, ~var_1.d, var_2.x) ^ (~vec4<u32>(global1[_wgslsmith_index_u32(global0.d.x, 2u)], global0.e.d, 4294967295u, 36634u) | global0.d)) << (global0.d % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1000f + global0.e.a));
}

