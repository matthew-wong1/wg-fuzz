struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: array<Struct_2, 23>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = ~global0.c.zyz;
    let var_1 = countOneBits(i32(-1i) * -21488i);
    global1 = array<vec3<i32>, 5>();
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(var_0.x, 5u)], global0.b);
    global0 = Struct_3(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b * 2354f) - _wgslsmith_f_op_f32(global0.d.c.x - global0.b.a.c.x)) < _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.b.a.c.x, 1465f), global0.d.c.x)), true), Struct_2(var_2.b.a, _wgslsmith_f_op_f32(min(var_2.b.b, _wgslsmith_f_op_f32(184f + global0.d.c.x)))), global0.c, global0.b.a);
    return var_2.b.b;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    var var_0 = vec4<bool>((-68812i <= -reverseBits(arg_0.a)) & global0.d.b, ~_wgslsmith_sub_u32(~1u, 1u) <= global0.c.x, false, global3.x);
    let var_1 = global0.b;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 5u)];
    var var_3 = ~(~(-4530i));
    let var_4 = global3.xyw;
    return Struct_3(vec2<bool>(true & all(vec4<bool>(var_1.a.b, global0.a.x, var_1.a.b, false)), false), Struct_2(arg_0, _wgslsmith_f_op_f32(func_3(select(arg_0.a, -9849i, var_4.x), countOneBits(var_1.a.a) ^ _wgslsmith_sub_i32(18981i, u_input.b)))), select(~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(6332u, global0.c.x, u_input.d, global0.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(20537u, 0u, global0.c.x, global0.c.x), global0.c)), ~min(vec4<u32>(1u, 0u, 4294967295u, global0.c.x), select(vec4<u32>(global0.c.x, 0u, 0u, u_input.a), vec4<u32>(u_input.c.x, 1u, 4294967295u, 7434u), global0.b.a.b)), var_1.a.b), Struct_1(_wgslsmith_mult_i32(-57928i, var_1.a.a & _wgslsmith_mult_i32(0i, -16499i)), !arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 1149f)))))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = Struct_4(func_2(Struct_1(u_input.b, arg_1.c.b.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 486f))), _wgslsmith_f_op_f32(trunc(global0.d.c.x))), select(~select(vec2<i32>(arg_1.c.b.a.a, global0.b.a.a), _wgslsmith_mult_vec2_i32(vec2<i32>(-20129i, 25933i), vec2<i32>(global0.d.a, 2147483647i)), select(global3.xx, vec2<bool>(global0.d.b, true), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(min(global0.b.a.a, global0.d.a), -7185i)), select(!vec2<bool>(true, global3.x), !global3.ww, func_2(arg_1.a.b.a, _wgslsmith_f_op_f32(min(-329f, 662f))).a.x)), arg_1.a, -arg_1.d);
    global3 = vec4<bool>(u_input.b > u_input.b, global3.x, var_0.a.d.b, false);
    global1 = array<vec3<i32>, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.c.x, 932f, 1151f, var_0.a.d.c.x) * vec4<f32>(arg_1.c.b.a.c.x, var_0.c.b.a.c.x, -357f, 1413f))) + vec4<f32>(_wgslsmith_f_op_f32(min(-1923f, var_0.a.d.c.x)), 1231f, _wgslsmith_f_op_f32(round(-1034f)), var_0.a.d.c.x)))));
    var var_2 = Struct_1(-((~arg_1.c.d.a ^ 0i) >> (31437u % 32u)), false, arg_1.a.d.c);
    return ~(~_wgslsmith_div_vec4_u32(arg_1.c.c, ~min(var_0.a.c, arg_1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    global0 = Struct_3(vec2<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(all(global3.yxx), true, global0.b.a.b, all(global3.xxz)))), Struct_2(global0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c.x) * 761f)))), firstTrailingBit(_wgslsmith_div_vec4_u32(func_1(_wgslsmith_dot_vec4_u32(global0.c, global0.c), Struct_4(Struct_3(vec2<bool>(false, false), global0.b, vec4<u32>(var_0.x, 23725u, u_input.d, 1u), global0.b.a), vec2<i32>(u_input.b, global0.d.a), Struct_3(global0.a, Struct_2(Struct_1(u_input.b, true, vec2<f32>(global0.d.c.x, global0.d.c.x)), global0.b.a.c.x), global0.c, Struct_1(1i, true, vec2<f32>(global0.b.b, -112f))), vec2<i32>(u_input.b, u_input.b))), vec4<u32>(var_0.x >> (global0.c.x % 32u), u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global0.c.x, 0u), var_0.zzx), ~global0.c.x))), global0.b.a);
    var var_1 = select(!vec2<bool>(!global3.x, false), select(!global0.a, select(!global0.a, !vec2<bool>(global3.x, false), select(true, true, false)), global0.a), vec2<bool>(true, true));
    var var_2 = true;
    let var_3 = firstTrailingBit(~(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.a, -27487i, 0i, -9603i), vec4<i32>(0i, -31735i, u_input.b, u_input.b)), -1i)));
    let var_4 = 4294967295u;
    var var_5 = ~var_0.wxy;
    var_1 = select(select(global0.a, global0.a, vec2<bool>(false == (var_1.x && false), any(vec2<bool>(false, true)))), global0.a, any(vec4<bool>(func_2(global0.b.a, global0.b.b).d.a <= ~u_input.b, false, global3.x, var_1.x)));
    let var_6 = vec3<i32>(-(_wgslsmith_add_i32(u_input.b, abs(-43625i)) >> (_wgslsmith_mult_u32(var_5.x, ~global0.c.x) % 32u)), u_input.b, global0.d.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

