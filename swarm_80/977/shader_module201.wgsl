struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec2<f32>(1300f, 1000f), vec4<i32>(0i, 38677i, -30978i, 0i));

var<private> global1: array<f32, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec4<bool> {
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    var var_0 = -47637i;
    let var_1 = arg_0.b;
    var_0 = (max(global0.c.x, global0.c.x) | (i32(-1i) * -abs(global0.c.x))) | 23928i;
    return !vec4<bool>(var_1.a, select(true, (4294967295u & u_input.a.x) > u_input.a.x, !global0.a.x), false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, global0.b.x) * global0.b.x) == global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), u_input.a.yxw), 29u)]);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    let var_0 = _wgslsmith_div_vec4_u32(u_input.a, u_input.a) << ((_wgslsmith_mod_vec4_u32(select(vec4<u32>(50483u, 1u, 0u, 1u), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), select(true, arg_0.a.x, arg_0.a.x)), select(u_input.a, min(vec4<u32>(u_input.a.x, u_input.a.x, 82048u, 15278u), vec4<u32>(u_input.a.x, 1u, 24519u, u_input.a.x)), func_3(Struct_4(Struct_3(true, arg_0.a.x), Struct_3(global0.a.x, true)), arg_0.a.x))) & ~u_input.a) % vec4<u32>(32u));
    var var_1 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(arg_0.c.xxy, arg_0.c.xyw);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))))), select(!(!select(vec2<bool>(arg_0.a.x, global0.a.x), arg_0.a.yz, vec2<bool>(true, arg_0.a.x))), !select(func_3(Struct_4(Struct_3(false, global0.a.x), Struct_3(arg_0.a.x, arg_0.a.x)), global0.a.x).wy, select(global0.a.zx, vec2<bool>(false, false), arg_0.a.yx), vec2<bool>(arg_0.a.x, true)), false), vec2<bool>(true, arg_0.a.x), Struct_1(!vec3<bool>(true, arg_0.a.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(624f, global0.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.b))), max(global0.c, vec4<i32>(u_input.b.x, -var_1.x, _wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(-1658i, global0.c.x, 5329i, u_input.b.x)), ~var_1.x))), select(vec4<bool>(all(!vec3<bool>(true, global0.a.x, global0.a.x)), arg_0.a.x, !any(arg_0.a), arg_0.a.x || true), select(select(!vec4<bool>(global0.a.x, true, false, true), !vec4<bool>(global0.a.x, false, arg_0.a.x, global0.a.x), u_input.a.x != 6263u), select(select(vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(true, arg_0.a.x, global0.a.x, arg_0.a.x), vec4<bool>(false, global0.a.x, arg_0.a.x, false)), select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), false), true), vec4<bool>(true, all(arg_0.a.zx), true, false)), select(vec4<bool>(all(vec4<bool>(arg_0.a.x, false, global0.a.x, true)), true, select(true, true, global0.a.x), all(vec4<bool>(arg_0.a.x, global0.a.x, true, arg_0.a.x))), vec4<bool>(false, global0.a.x, any(global0.a), all(vec3<bool>(arg_0.a.x, false, global0.a.x))), vec4<bool>(arg_0.a.x, arg_0.a.x && true, !global0.a.x, true))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, global0.b.x))), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(abs(467f))))), 882f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(395f, global1[_wgslsmith_index_u32(33709u, 29u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-418f)) - _wgslsmith_f_op_f32(743f * global0.b.x)) + var_2.d.b.x), !(!global0.a.x) | true))));
    return _wgslsmith_dot_vec3_u32(abs(u_input.a.ywz), select(firstLeadingBit(_wgslsmith_mod_vec3_u32(abs(var_0.zzx), vec3<u32>(u_input.a.x, 5406u, u_input.a.x))), ~vec3<u32>(~1u, ~7054u, var_0.x), !(!(!vec3<bool>(global0.a.x, true, true)))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(-29182i, countOneBits(-14605i), global0.a.x);
    var var_1 = Struct_4(Struct_3(!all(func_3(Struct_4(Struct_3(true, global0.a.x), Struct_3(global0.a.x, false)), false)), func_3(Struct_4(Struct_3(arg_3.a.x, false), Struct_3(arg_3.a.x, true)), !global0.a.x).x), Struct_3(false, false | all(global0.a.zz)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2, 29u)] + -213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_f32(arg_2.x + 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1443f, 1594f), _wgslsmith_f_op_f32(arg_2.x + arg_3.b.x), -603f, arg_2.x)), func_3(Struct_4(Struct_3(arg_3.a.x, global0.a.x), var_1.a), func_3(Struct_4(Struct_3(false, arg_3.a.x), var_1.b), !global0.a.x).x)))));
    global1 = array<f32, 29>();
    return arg_3;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.b)) - vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.b.x)), global1[_wgslsmith_index_u32(15698u, 29u)]))));
    let var_1 = true;
    var var_2 = func_4(~func_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, 1000f)), _wgslsmith_mult_vec4_i32(global0.c, vec4<i32>(arg_0.d.c.x, global0.c.x, 2147483647i, 1i)))), global0.c.zwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.d.b.x, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(-139f, arg_1.a, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.b.x, 883f, 250f))) - vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, arg_0.a)), 458f, _wgslsmith_f_op_f32(f32(-1f) * -1367f)))), arg_1.d);
    global1 = array<f32, 29>();
    let var_3 = 26844u;
    return !(!(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_1.d.c.xww, var_2.c.zzz), -1719i) != _wgslsmith_div_i32(var_2.c.x, i32(-1i) * -2147483647i)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = u_input.b.x;
    var var_1 = global0.b.x;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(506f, global1[_wgslsmith_index_u32(abs(u_input.a.x) << (u_input.a.x % 32u), 29u)]))));
    let var_4 = vec4<bool>(!any(vec3<bool>(arg_0 & arg_0, any(global0.a.xz), all(global0.a))), all(select(!vec4<bool>(arg_1.x, arg_1.x, global0.a.x, false), select(vec4<bool>(true, arg_1.x, global0.a.x, arg_1.x), func_3(Struct_4(Struct_3(var_2, true), Struct_3(var_2, true)), arg_1.x), !vec4<bool>(arg_0, global0.a.x, true, var_2)), vec4<bool>(!global0.a.x, func_1(Struct_2(1080f, vec2<bool>(false, arg_0), vec2<bool>(arg_1.x, global0.a.x), Struct_1(arg_1.yww, vec2<f32>(global0.b.x, global0.b.x), vec4<i32>(2147483647i, var_0, -19748i, u_input.b.x)), vec4<bool>(false, false, var_2, arg_0)), Struct_2(-891f, global0.a.zz, vec2<bool>(global0.a.x, true), Struct_1(vec3<bool>(true, global0.a.x, arg_0), global0.b, global0.c), arg_1), Struct_4(Struct_3(global0.a.x, false), Struct_3(arg_0, global0.a.x)), Struct_4(Struct_3(var_2, true), Struct_3(true, true))), global0.a.x, u_input.b.x != var_0))), false, true);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(true, vec4<bool>(false, global0.a.x, !func_1(Struct_2(-1099f, vec2<bool>(global0.a.x, true), vec2<bool>(false, true), Struct_1(vec3<bool>(false, global0.a.x, global0.a.x), global0.b, global0.c), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), Struct_2(779f, global0.a.xx, vec2<bool>(true, false), Struct_1(global0.a, vec2<f32>(global0.b.x, 1666f), vec4<i32>(-29455i, -2147483647i, global0.c.x, global0.c.x)), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), Struct_4(Struct_3(global0.a.x, true), Struct_3(false, false)), Struct_4(Struct_3(global0.a.x, global0.a.x), Struct_3(true, global0.a.x))), u_input.a.x > u_input.a.x));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(-995f, _wgslsmith_f_op_f32(global0.b.x + 1514f))))), ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, -2147483647i, global0.c.x), global0.c));
    let var_1 = _wgslsmith_mult_i32(-countOneBits(u_input.b.x), -(~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-min(vec4<i32>(u_input.b.x, 0i, -40533i, var_1) << (u_input.a % vec4<u32>(32u)), vec4<i32>(var_1, u_input.b.x, global0.c.x, u_input.b.x)), countOneBits(vec4<i32>(var_1, var_1, -var_1, -global0.c.x))), 911f);
}

