struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(13070i, Struct_1(true, vec3<u32>(4294967295u, 37569u, 0u), false, 54249i, 19296i)), -16833i, 53881u, Struct_2(-18584i, Struct_1(true, vec3<u32>(1u, 281u, 1u), true, 2147483647i, 2147483647i)), Struct_1(true, vec3<u32>(2913u, 4294967295u, 4294967295u), false, 42738i, 1121i)), Struct_2(-24138i, Struct_1(true, vec3<u32>(1u, 28163u, 25847u), false, 1i, 24298i)), false, vec3<u32>(47591u, 4294967295u, 1u));

var<private> global3: array<Struct_4, 10>;

var<private> global4: Struct_1 = Struct_1(false, vec3<u32>(35723u, 43952u, 48076u), true, 38445i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    var var_0 = global2.a.d;
    let var_1 = _wgslsmith_dot_vec4_u32(~(~max(~vec4<u32>(global2.a.e.b.x, arg_0, arg_0, global1.b.b.x), vec4<u32>(u_input.b.x, 56070u, 4294967295u, var_0.b.b.x) << (vec4<u32>(9015u, 15651u, 1u, 1u) % vec4<u32>(32u)))), ~(vec4<u32>(~global2.b.b.b.x, arg_0, ~4294967295u, global2.b.b.b.x) & ~select(vec4<u32>(var_0.b.b.x, global4.b.x, global2.b.b.b.x, var_0.b.b.x), vec4<u32>(global1.b.b.x, 1u, arg_0, 1u), vec4<bool>(global1.b.c, false, false, false))));
    var var_2 = ~4294967295u;
    let var_3 = global2.a;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1912f))), -1046f);
    return i32(-1i) * -global0.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    var var_0 = !select(global1.b.b.x <= 46258u, global2.b.b.a, all(select(vec3<bool>(global4.a, global1.b.c, arg_0.a), vec3<bool>(global1.b.a, true, true), global2.a.d.b.c)) != global1.b.a);
    var var_1 = any(vec3<bool>(true, true, true)) || global4.a;
    global4 = global2.b.b;
    global4 = global1.b;
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, arg_2.a.a.b.b.x), global1.b.b.x ^ 0u);
    return reverseBits(func_2(arg_3.d.x, !(!select(vec4<bool>(global1.b.a, global1.b.a, true, global1.b.a), vec4<bool>(global1.b.a, false, false, global2.c), global1.b.a))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-695f, 1778f)) + -1633f)))), -1014f);
    var var_1 = firstTrailingBit(firstTrailingBit(min(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 1u), global2.b.b.b.zx), vec2<u32>(global2.a.a.b.b.x, 3937u), global2.a.d.b.b.yy), countOneBits(vec2<u32>(arg_2.d.x, 37848u)))));
    let var_2 = _wgslsmith_div_f32(569f, var_0);
    global2 = arg_2;
    global2 = arg_2;
    return global3[_wgslsmith_index_u32(0u, 10u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = global1.b;
    return select(vec2<bool>(!all(select(vec4<bool>(global4.c, global1.b.c, true, global1.b.a), vec4<bool>(true, true, arg_0.b.b.a, global1.b.a), vec4<bool>(false, global1.b.c, arg_0.a.d.b.a, false))), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), select(vec2<bool>(any(vec2<bool>(arg_0.c, global1.b.a)), !global4.c), select(vec2<bool>(true, true), !(!vec2<bool>(global4.c, global1.b.c)), var_1.c), false), true);
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    global3 = array<Struct_4, 10>();
    let var_0 = ~(~70950u);
    global2 = Struct_4(global2.a, global2.a.a, any(vec2<bool>(-445f != _wgslsmith_f_op_f32(ceil(1000f)), !(4294967295u <= global2.a.d.b.b.x))), global4.b);
    var var_1 = false;
    var_1 = select(!global4.c, global2.b.b.c, true);
    return func_5(func_4(func_3(global2.a.d.b, func_2(1u, vec4<bool>(true, global2.b.b.c, false, global1.b.a)), Struct_4(arg_1, Struct_2(37445i, arg_1.a.b), true, vec3<u32>(var_0, u_input.a.x, arg_1.d.b.b.x)), Struct_4(arg_1, arg_1.a, global4.c, _wgslsmith_sub_vec3_u32(vec3<u32>(31642u, 1u, u_input.b.x), global4.b))), ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 0u, var_0)), firstTrailingBit(global2.d)), Struct_4(global2.a, Struct_2(arg_1.e.e, Struct_1(true, vec3<u32>(1u, global1.b.b.x, 1u), arg_1.a.b.c, global2.b.a, 21942i)), all(!vec4<bool>(global1.b.a, global1.b.a, global1.b.c, true)), max(firstLeadingBit(vec3<u32>(23215u, arg_1.a.b.b.x, 20152u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 4294967295u, 0u), global1.b.b))), -max(firstTrailingBit(vec4<i32>(-2147483647i, global4.d, global1.a, global0.x)), vec4<i32>(u_input.d, global1.a, global1.a, global2.a.e.e))), countOneBits(u_input.c.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1584f;
    global3 = array<Struct_4, 10>();
    let var_1 = global2.a.d.b;
    let var_2 = !select(vec2<bool>(!global2.a.d.b.c, (var_1.b.x >> (0u % 32u)) == 1u), select(func_1(_wgslsmith_f_op_f32(570f + var_0), Struct_3(global2.a.a, 30143i, 4748u, Struct_2(1i, Struct_1(true, vec3<u32>(global4.b.x, global1.b.b.x, global1.b.b.x), false, 1i, 2147483647i)), Struct_1(global1.b.c, vec3<u32>(4294967295u, 10115u, global4.b.x), true, global0.x, global0.x))), !func_5(Struct_4(Struct_3(Struct_2(1i, Struct_1(false, vec3<u32>(global4.b.x, global2.a.e.b.x, 70267u), false, u_input.c.x, -29217i)), global0.x, 4294967295u, Struct_2(var_1.e, Struct_1(true, global1.b.b, false, var_1.d, global0.x)), global1.b), Struct_2(global4.e, global1.b), true, vec3<u32>(1u, 41609u, global1.b.b.x)), global0.xw), select(!vec2<bool>(global1.b.a, var_1.c), vec2<bool>(true, true), global1.b.a && true)), global2.b.b.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1268f - -1709f), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(var_0, 1023f, var_0)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-709f, var_0, -1627f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_0, var_0), vec3<f32>(var_0, var_0, -1012f)))))), false)));
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global2.a.b), _wgslsmith_sub_i32(global1.b.d | -27608i, ~0i), global2.b.a), _wgslsmith_mod_vec3_i32(abs(firstTrailingBit(vec3<i32>(global2.b.b.e, 5607i, 20783i))) >> ((vec3<u32>(1u, 0u, u_input.a.x) >> (global2.a.e.b % vec3<u32>(32u))) % vec3<u32>(32u)), abs(~firstLeadingBit(vec3<i32>(global0.x, global2.b.a, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

