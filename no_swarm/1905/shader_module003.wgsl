struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(Struct_1(-312f, vec2<f32>(-865f, 1298f), true), vec4<i32>(i32(-2147483648), -34711i, -29013i, -1i));

var<private> global4: array<vec3<bool>, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32) -> u32 {
    global2 = global3.a;
    var var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-global3.a.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_0.b.x))), _wgslsmith_f_op_f32(trunc(var_0.a)), global3.a.b.x, global2.a)))));
    var var_2 = vec4<bool>(!(false || global2.c) & any(!(!vec4<bool>(global2.c, false, true, false))), global2.c, select(all(!vec4<bool>(global2.c, global2.c, var_0.c, true)), true, true || all(vec2<bool>(true, true))), all(global4[_wgslsmith_index_u32(arg_0, 22u)]));
    let var_3 = Struct_1(global3.a.a, vec2<f32>(global2.a, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), !var_0.c | true);
    return 0u;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = -1158f;
    var var_1 = (func_3(max(u_input.b, 1u)) >> (4294967295u % 32u)) >> (~5790u % 32u);
    global1 = global2.a;
    global3 = Struct_2(arg_1.a, -(vec4<i32>(1i, _wgslsmith_clamp_i32(-50285i, global3.b.x, -11376i), 2147483647i, global3.b.x & -6503i) >> (~vec4<u32>(u_input.b, arg_0, arg_0, 4294967295u) % vec4<u32>(32u))));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-global3.a.b), false);
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = max(-(_wgslsmith_sub_vec3_i32(func_2(u_input.b, Struct_2(arg_1.a, vec4<i32>(-1i, -53937i, 14345i, arg_1.b.x))).b.zxx, reverseBits(global3.b.wxx)) & arg_1.b.yxy), reverseBits(global3.b.xxy));
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -425f), global2.b, global3.a.c);
    global2 = arg_2;
    global3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.b))), global2.b), true), ~(-_wgslsmith_mult_vec4_i32(global3.b, vec4<i32>(var_0.x, arg_0.x, 0i, 22599i))));
    global3 = arg_1;
    return arg_1;
}

fn func_1() -> Struct_1 {
    global4 = array<vec3<bool>, 22>();
    let var_0 = global3.a;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(448f, -746f))));
    global3 = func_4(~(-vec3<i32>(-2147483647i, ~u_input.d, 1i)), func_2(~19012u, Struct_2(Struct_1(-944f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1431f)), global3.a.c), global3.b)), Struct_1(var_1, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, global3.a.a))), _wgslsmith_div_f32(-1264f, global2.a)), var_0.c));
    global4 = array<vec3<bool>, 22>();
    return global3.a;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global2 = func_1();
    global0 = 1000f <= arg_1.a;
    global4 = array<vec3<bool>, 22>();
    global0 = func_1().c;
    let var_0 = vec4<bool>(global3.a.c, true, !any(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(min(4294967295u, 4294967295u), u_input.b), 22u)]), false);
    return func_2(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(15339u, u_input.b, u_input.c, u_input.b), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19520u, 4294967295u), vec2<u32>(u_input.c, 50923u)), ~0u, 1u, ~u_input.c), var_0), abs(vec4<u32>(100672u, 4294967295u, u_input.b, u_input.c)) ^ ~(~vec4<u32>(0u, u_input.b, u_input.c, u_input.b))), Struct_2(arg_1, max(vec4<i32>(min(u_input.a.x, global3.b.x), -33207i, _wgslsmith_clamp_i32(global3.b.x, global3.b.x, global3.b.x), global3.b.x | -2147483647i), vec4<i32>(1i, i32(-1i) * -2147483647i, -39481i, reverseBits(u_input.a.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global3 = func_2(abs(1u), arg_0);
    global0 = false;
    global4 = array<vec3<bool>, 22>();
    var var_0 = vec3<f32>(arg_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-881f))) - 278f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(0u, Struct_2(arg_0.a, arg_0.b)).a.b.x) + global2.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(375f)), _wgslsmith_f_op_f32(abs(361f)), arg_2.a.c)))));
    global3 = func_5(any(vec2<bool>(global2.c, false)), arg_2.a);
    return func_4(_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, 4486i, -12757i), vec3<i32>(~arg_2.b.x, 53583i, 2147483647i), func_2(34840u, arg_0).a.c), -vec3<i32>(~global3.b.x, -arg_0.b.x, global3.b.x)), Struct_2(arg_1, ~vec4<i32>(-38870i, 1i, u_input.d, func_4(arg_0.b.www, Struct_2(Struct_1(arg_2.a.a, arg_0.a.b, true), vec4<i32>(u_input.a.x, global3.b.x, 1i, global3.b.x)), arg_2.a).b.x)), global3.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 22>();
    global3 = Struct_2(global3.a, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 42239i, -2050i, 0i), global3.b)) & ~vec4<i32>(36247i, abs(9766i), u_input.d, -16584i | global3.b.x));
    let var_0 = Struct_2(func_6(func_5(any(vec2<bool>(true, true)), func_1()), Struct_1(_wgslsmith_f_op_f32(-global3.a.a), global2.b, global2.c), func_4(~(-global3.b.ywz), func_2(~u_input.b, Struct_2(Struct_1(-273f, vec2<f32>(global2.b.x, global2.b.x), global2.c), vec4<i32>(0i, u_input.d, -7363i, u_input.d))), Struct_1(-178f, vec2<f32>(global3.a.a, -272f), 4294967295u <= u_input.b))), -vec4<i32>(global3.b.x, _wgslsmith_mult_i32(func_5(global2.c, global3.a).b.x, -global3.b.x), u_input.a.x, global3.b.x));
    global1 = func_5(true, func_6(Struct_2(var_0.a, func_2(u_input.c, var_0).b), func_2(~(~14624u), func_4(global3.b.zyy, func_5(true, Struct_1(var_0.a.a, var_0.a.b, false)), Struct_1(-1396f, vec2<f32>(1000f, var_0.a.b.x), true))).a, Struct_2(func_5(all(vec4<bool>(false, true, global2.c, global2.c)), global3.a).a, -global3.b))).a.a;
    var var_1 = func_2(99563u, Struct_2(Struct_1(-951f, var_0.a.b, func_2(reverseBits(u_input.c), var_0).a.c), var_0.b | vec4<i32>(func_5(global3.a.c, Struct_1(-1000f, var_0.a.b, false)).b.x, 1i, 0i, 46140i)));
    global0 = !any(vec4<bool>(true, any(vec4<bool>(true, var_1.a.c, global2.c, false)), 26117u != u_input.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(44279i, vec3<u32>(0u, _wgslsmith_clamp_u32(1u, 8460u, 1u) & ~u_input.b, abs(abs(1u))), 21666u, vec3<u32>(max(~(u_input.b & 4294967295u), u_input.b), ~u_input.b, u_input.b));
}

