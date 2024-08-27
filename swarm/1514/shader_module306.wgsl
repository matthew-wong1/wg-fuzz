struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
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

var<private> global0: array<Struct_4, 15>;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 4>;

var<private> global3: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_3 {
    global2 = array<vec3<bool>, 4>();
    global0 = array<Struct_4, 15>();
    var var_0 = _wgslsmith_f_op_f32(-global3.b.x);
    let var_1 = -2147483647i;
    var var_2 = global3.d.b;
    return Struct_3(0u, any(vec2<bool>(true, any(global2[_wgslsmith_index_u32(u_input.d.x, 4u)]))), vec3<u32>(u_input.d.x, firstTrailingBit(78142u), 63925u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> bool {
    global2 = array<vec3<bool>, 4>();
    var var_0 = _wgslsmith_f_op_f32(abs(global3.b.x));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(1u), max(_wgslsmith_mod_u32(50748u, u_input.d.x), countOneBits(24815u))) ^ _wgslsmith_add_u32(0u, _wgslsmith_add_u32(firstTrailingBit(u_input.b.x), select(u_input.d.x, u_input.b.x, false))), _wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(63791u), 2979u), ~(~vec2<u32>(4294967295u, u_input.b.x)))), max(min(u_input.b.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 35043u), vec2<u32>(u_input.b.x, u_input.d.x)), u_input.b.x)), 22910u));
    let var_1 = -1i;
    let var_2 = Struct_1(-arg_0, select(abs(~_wgslsmith_mod_i32(2147483647i, 77559i)), -1i, func_2().b), -vec4<i32>(-2147483647i, select(0i, _wgslsmith_sub_i32(-6743i, 0i), global3.d.a.x), arg_2, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.a.x, 91736i, -2147483647i, 2147483647i), _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(arg_0.x, arg_1.a.x, 0i, arg_2)))));
    return !global3.d.a.x;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_2(select(arg_0.d.a, select(arg_0.d.a, var_0.d.a, all(var_0.d.a)), true), global3.d.c, arg_1.d.b);
    var var_2 = var_1.a.x;
    var var_3 = Struct_4(arg_0.d.c, global2[_wgslsmith_index_u32(max(u_input.b.x, ~(~u_input.b.x)), 4u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - global3.b.x))), _wgslsmith_f_op_f32(min(arg_2.x, -314f))));
    let var_4 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x ^ arg_0.d.b.a.x, -1657i, _wgslsmith_clamp_i32(-2147483647i, global3.c.x, 5949i), var_3.a.c.x & -1i), ~_wgslsmith_add_vec4_i32(arg_1.d.b.a, var_0.d.b.c), vec4<i32>(arg_1.a, _wgslsmith_clamp_i32(-6186i, u_input.a.x, 40287i), firstLeadingBit(arg_0.c.x), -5724i)), 0i, _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-25455i, var_0.d.b.c.x, var_3.a.c.x, var_3.a.a.x) & vec4<i32>(var_3.a.b, u_input.a.x, var_0.c.x, 1i)), -vec4<i32>(var_0.a, u_input.c.x, arg_0.c.x, global3.c.x) << (_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.b.x), vec4<u32>(10901u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), -(~vec4<i32>(17907i, var_0.a, 1i, -2147483647i)))), vec3<bool>(var_1.a.x, !(!var_3.b.x), any(!select(var_0.d.a, vec4<bool>(true, arg_0.d.a.x, var_3.b.x, true), vec4<bool>(false, false, arg_1.d.a.x, var_1.a.x)))), arg_1.b.x);
    return select(vec2<bool>(!((-2147483647i | arg_1.c.x) != abs(var_1.b.b)), global3.d.a.x), !vec2<bool>(global3.d.a.x, true), var_3.b.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = func_4(Struct_5((i32(-1i) * -1309i) & _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), vec2<i32>(u_input.c.x, u_input.a.x)), global3.b, firstTrailingBit(~abs(vec2<i32>(-36271i, -1i))), Struct_2(vec4<bool>(all(vec4<bool>(global3.d.a.x, true, var_0.b, arg_1)), false, func_3(global3.d.b.a, global3.d.c, arg_0), all(global3.d.a.xww)), Struct_1(-global3.d.b.c, min(-2147483647i, 16875i), abs(vec4<i32>(arg_0, arg_0, arg_0, 43100i))), Struct_1(~global3.d.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), u_input.a), vec4<i32>(-20589i, u_input.c.x, 0i, 19611i)))), Struct_5(max(u_input.c.x, reverseBits(u_input.c.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.b))), min(abs(~global3.d.b.c.ww), ~(vec2<i32>(-10226i, -17154i) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)))), global3.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(470f, global3.b.x))), global3.b.zw)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(273f, global3.b.x), global3.b.yx)))) - vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-579f, global3.b.x, true))))));
    let var_2 = global0[_wgslsmith_index_u32(~39271u, 15u)];
    var var_3 = _wgslsmith_sub_i32(arg_0, 28318i);
    global0 = array<Struct_4, 15>();
    return Struct_4(var_2.a, select(select(select(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], select(vec3<bool>(true, false, false), vec3<bool>(false, true, var_2.b.x), vec3<bool>(arg_1, false, arg_1)), vec3<bool>(true, false, true)), vec3<bool>(arg_1, !var_0.b, var_0.b | false), !vec3<bool>(global3.d.a.x, false, false)), select(select(global2[_wgslsmith_index_u32(16797u, 4u)], select(vec3<bool>(true, false, var_0.b), var_2.b, vec3<bool>(true, var_1.x, arg_2)), true), select(!global3.d.a.wxw, global2[_wgslsmith_index_u32(max(4294967295u, 1u), 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), global3.d.a.xww), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, var_2.c) * _wgslsmith_f_op_f32(global3.b.x - global3.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(abs(1857f))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_4, 15>();
    var var_0 = ~u_input.b.x;
    var_0 = arg_2.x;
    var var_1 = _wgslsmith_mod_i32(global3.a, -23162i);
    let var_2 = vec2<u32>(arg_2.x, 52254u);
    return func_2();
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_1(func_1(max(global3.c.x, _wgslsmith_add_i32(18241i, abs(-1i))), true, func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.c.x, u_input.a.x, u_input.a.x, 59224i), global3.d.c.c), func_1(0i, false, false).a, global3.d.c.a.x) && func_2().b).a.c.x, true, func_5(!(!vec4<bool>(global3.d.a.x, arg_0.b, false, arg_0.b)), Struct_4(global3.d.c, vec3<bool>(global3.d.a.x, false, func_2().b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global3.b.x)), global3.b.x))), vec3<u32>(~1u, u_input.d.x & ~u_input.d.x, ~_wgslsmith_clamp_u32(0u, 66028u, u_input.d.x))).b);
    var var_1 = vec4<u32>(max(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 4294967295u)) | (func_2().a | 4748u), ~select(_wgslsmith_div_u32(u_input.b.x, arg_0.a), ~arg_0.a, global3.d.a.x)), _wgslsmith_mult_u32(0u, arg_0.a), 14115u, 1u);
    return Struct_1(abs(vec4<i32>(~0i, u_input.a.x, 0i, var_0.a.b)), -(-6183i >> (var_1.x % 32u)), abs(countOneBits(vec4<i32>(-var_0.a.a.x, abs(global3.c.x), 12870i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(u_input.c.x, global3.b, _wgslsmith_mod_vec2_i32(min(global3.c ^ global3.d.b.c.yx, u_input.a), -vec2<i32>(~global3.c.x, 0i)), Struct_2(!global3.d.a, global3.d.c, func_6(func_5(vec4<bool>(false, global3.d.a.x, false, true), func_1(global3.c.x, false, false), select(vec3<u32>(u_input.d.x, 47917u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 7807u), global3.d.a.wxy)))));
    let var_0 = func_5(!global3.d.a, Struct_4(Struct_1(-vec4<i32>(u_input.c.x, 36829i, -1i, u_input.c.x), firstLeadingBit(u_input.a.x) >> (u_input.d.x % 32u), ~vec4<i32>(-32608i, -1i, -1i, global3.a)), vec3<bool>(global3.d.a.x, global3.d.a.x, global3.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b.x, 1136f))))), ~u_input.d.yxx);
    let var_1 = u_input.d.x;
    let var_2 = Struct_5(u_input.a.x, vec4<f32>(-917f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(select(-376f, 938f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -338f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x + -1710f) * _wgslsmith_f_op_f32(round(global3.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(floor(-341f))))), _wgslsmith_div_vec2_i32(func_6(Struct_3(29729u, var_0.b, vec3<u32>(4294967295u, var_1, 4294967295u))).c.yw, vec2<i32>(5622i ^ u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global3.c.x, 0i), vec4<i32>(global3.c.x, global3.c.x, global3.d.c.c.x, -1i)))) >> (var_0.c.xx % vec2<u32>(32u)), Struct_2(global3.d.a, func_1(2147483647i, func_4(Struct_5(global3.a, vec4<f32>(global3.b.x, global3.b.x, global3.b.x, -648f), vec2<i32>(-43303i, u_input.c.x), global3.d), Struct_5(-1i, global3.b, vec2<i32>(u_input.c.x, -1i), global3.d), global3.b.ww).x || !global3.d.a.x, firstLeadingBit(-16509i) < -u_input.a.x).a, global3.d.b));
    global3 = var_2;
    global3 = var_2;
    global2 = array<vec3<bool>, 4>();
    var var_3 = select(global3.d.a.zwx, select(global3.d.a.xyy, global3.d.a.ywx, var_0.b), true || !global3.d.a.x);
    let var_4 = vec2<bool>(func_1(firstTrailingBit(-2147483647i | var_2.a), !func_4(Struct_5(-6859i, var_2.b, var_2.d.b.c.wx, var_2.d), var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2188f, 413f))).x, ((global3.c.x | u_input.a.x) & global3.a) > ~(-global3.c.x)).b.x, var_2.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

