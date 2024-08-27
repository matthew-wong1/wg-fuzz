struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13208u, 32242u), 9u)], ~(_wgslsmith_dot_vec3_u32(arg_2.d.b | u_input.a, ~arg_2.b) >> (31745u % 32u)));
    var var_1 = !any(arg_2.d.a);
    global0 = array<i32, 9>();
    var var_2 = arg_2;
    var var_3 = ~(~(~(~arg_2.d.b.x))) >> (var_0.b % 32u);
    return _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x));
}

fn func_2() -> Struct_2 {
    let var_0 = -481f;
    let var_1 = Struct_4(u_input.c, firstTrailingBit(~(85851u << (firstTrailingBit(u_input.d.x) % 32u))));
    var var_2 = !(1021f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(392f)))) + _wgslsmith_f_op_f32(func_3(select(vec2<i32>(u_input.e, var_1.a), vec2<i32>(0i, 0i), vec2<bool>(true, true)), _wgslsmith_f_op_f32(var_0 + -600f), Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(u_input.d.x, 18564u, u_input.a.x), vec2<f32>(-832f, var_0), Struct_1(vec4<bool>(true, false, true, true), u_input.a, false))))));
    global0 = array<i32, 9>();
    var var_3 = true;
    return Struct_2(Struct_1(vec4<bool>(!(-1i <= u_input.e), _wgslsmith_sub_u32(0u, u_input.b.x) != ~var_1.b, true, any(vec3<bool>(true, true, true))), min(firstTrailingBit(vec3<u32>(var_1.b, 0u, var_1.b)) ^ vec3<u32>(1u, 4294967295u, u_input.a.x), u_input.d.xww), false), vec3<i32>(var_1.a, u_input.c, 19224i), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), vec3<bool>(false, select(true, false, any(vec3<bool>(true, false, true))), all(vec2<bool>(false, true)) == true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    return Struct_3(select(func_2().a.a, func_2().a.a, !any(func_2().c.yz)), _wgslsmith_sub_vec3_u32(~select(~arg_1.a.b, u_input.d.yyy, !arg_1.c), ~vec3<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_div_u32(4601u, arg_1.a.b.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-267f, 348f), vec2<f32>(2773f, 2838f))))))), arg_1.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = u_input.b.x;
    global0 = array<i32, 9>();
    var var_1 = ~arg_1.b;
    let var_2 = vec3<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b, 9u)], arg_0.a, 1i, 0i), vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], -18498i, global0[_wgslsmith_index_u32(36563u, 9u)], 1i)), vec4<i32>(global0[_wgslsmith_index_u32(countOneBits(5294u), 9u)], _wgslsmith_clamp_i32(u_input.e, 31927i, -2147483647i), -8720i & global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -1i))), _wgslsmith_add_i32(u_input.c, -1i), 9530i);
    var var_3 = vec2<bool>(false, any(!vec2<bool>(true, 80982i >= global0[_wgslsmith_index_u32(arg_0.b, 9u)])));
    return func_4(vec4<bool>(arg_1.a.x != var_3.x, select(1u > _wgslsmith_div_u32(1u, var_1.x), true, true), arg_1.d.a.x, true), func_2());
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = 1i ^ _wgslsmith_clamp_i32(~(-43745i) << (1u % 32u), 11865i, -18335i);
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~(~arg_0.d.b), arg_0.d.b), 1u, _wgslsmith_sub_u32(~arg_3, 4294967295u)), func_1(Struct_4(u_input.c, 15870u), func_1(Struct_4(reverseBits(u_input.c), ~0u), func_4(vec4<bool>(false, false, arg_0.a.x, false), func_2()), arg_2.x), arg_2.x).b);
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_2 = Struct_4(u_input.c >> (firstLeadingBit(abs(4294967295u)) % 32u), ~(~(~u_input.b.x)));
    return func_4(func_2().a.a, Struct_2(arg_0.d, vec3<i32>(~(var_2.a >> (arg_2.x % 32u)), 2147483647i, global0[_wgslsmith_index_u32(~(arg_3 << (0u % 32u)), 9u)]), !vec3<bool>(any(vec2<bool>(arg_0.d.c, arg_0.a.x)), true, false))).d;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    return Struct_1(select(vec4<bool>(true, arg_1.a.c, true, true), func_1(Struct_4(arg_1.b.x | 2147483647i, reverseBits(arg_1.a.b.x)), func_4(arg_1.a.a, arg_1), u_input.b.x).d.a, !func_5(Struct_3(vec4<bool>(arg_1.c.x, arg_1.a.c, true, false), vec3<u32>(1u, 4294967295u, arg_0), vec2<f32>(941f, 1303f), Struct_1(arg_1.a.a, vec3<u32>(arg_2, 22266u, arg_0), arg_1.c.x)), _wgslsmith_div_f32(-1877f, -1263f), vec3<u32>(arg_1.a.b.x, arg_0, 0u), arg_1.a.b.x).a.x), func_5(func_1(Struct_4(abs(arg_1.b.x), arg_1.a.b.x), Struct_3(vec4<bool>(arg_1.c.x, true, false, true), ~vec3<u32>(u_input.b.x, 0u, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, -167f)), arg_1.a), ~(~arg_1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-782f + _wgslsmith_f_op_f32(1502f + 478f))), vec3<u32>(_wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), 1u, func_4(!vec4<bool>(arg_1.c.x, arg_1.a.c, false, false), func_2()).d.b.x), ~4294967295u).b, arg_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x << ((u_input.a.x & u_input.a.x) % 32u), 18967u), vec3<u32>(countOneBits(23583u >> (u_input.b.x % 32u)), u_input.a.x, 35267u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(495f, -634f) * vec2<f32>(-614f, -1001f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-698f, 282f, false)), 1f) + _wgslsmith_div_vec2_f32(vec2<f32>(2691f, 269f), vec2<f32>(679f, -1582f)))), func_6(4294967295u, Struct_2(func_5(func_1(Struct_4(u_input.c, 0u), Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(u_input.d.x, 0u, 0u), vec2<f32>(-674f, 936f), Struct_1(vec4<bool>(false, false, true, false), u_input.b.xxz, false)), u_input.b.x), -415f, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, 21825u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, u_input.c) | vec3<i32>(u_input.e, u_input.c, u_input.c), vec3<i32>(global0[_wgslsmith_index_u32(1u, 9u)], u_input.e, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-7837i, -12161i, -25047i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)], -7354i), vec3<i32>(24369i, 0i, global0[_wgslsmith_index_u32(7334u, 9u)]))), vec3<bool>(true, true, true)), abs(~7654u)));
    var var_1 = true;
    var var_2 = 6272i;
    let var_3 = 1i;
    let var_4 = Struct_2(var_0.d, min(~(~vec3<i32>(var_3, 1437i, -2147483647i)), -vec3<i32>(var_3, 24611i ^ u_input.e, 70137i)), func_4(vec4<bool>(func_2().a.c, var_0.d.a.x, _wgslsmith_mult_i32(var_3, 7346i) != 11202i, true), func_2()).d.a.zyw);
    let var_5 = Struct_3(!(!(!var_0.d.a)), ~var_0.d.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, var_0.c.x))))) - vec2<f32>(-671f, _wgslsmith_f_op_f32(-2704f * 882f))))), var_0.d);
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(250f, min(1u, ~(var_0.d.b.x << (u_input.b.x % 32u))), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(max(93964u, var_6.b.x), 9u)], firstLeadingBit(var_4.b.x)) << (vec2<u32>(var_4.a.b.x, ~7495u) % vec2<u32>(32u))));
}

