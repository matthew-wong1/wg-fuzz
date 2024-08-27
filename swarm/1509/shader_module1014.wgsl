struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(true, false, 2147483647i, Struct_3(1u, -232f, Struct_2(vec3<i32>(1i, 13283i, -23136i), -1570f, false)), i32(-2147483648)), Struct_4(false, false, -1i, Struct_3(6886u, 1306f, Struct_2(vec3<i32>(-1i, i32(-2147483648), 12124i), -421f, false)), -14142i), Struct_4(false, false, 2147483647i, Struct_3(0u, -428f, Struct_2(vec3<i32>(1i, i32(-2147483648), 1i), 1429f, true)), i32(-2147483648)), Struct_4(true, true, -11293i, Struct_3(4294967295u, -1596f, Struct_2(vec3<i32>(2147483647i, -1i, 35906i), 1000f, false)), -25914i), Struct_4(false, false, -18562i, Struct_3(120654u, 973f, Struct_2(vec3<i32>(0i, i32(-2147483648), 1i), 154f, true)), -73436i), Struct_4(true, false, -24058i, Struct_3(4294967295u, -785f, Struct_2(vec3<i32>(1i, 1i, 50192i), -1333f, true)), 1i));

var<private> global1: vec2<f32> = vec2<f32>(-1008f, 1136f);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1074f), Struct_1(569f), Struct_1(-447f), Struct_1(-547f));

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = global3.d;
    var var_1 = Struct_4(arg_1.c.c, _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(f32(-1f) * -887f), -2147483647i, Struct_3(u_input.a, _wgslsmith_f_op_f32(-global3.d.b), var_0.c), arg_0);
    let var_2 = !(!(11657u > u_input.a) || true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(801f, var_1.d.c.b)) + -1228f), _wgslsmith_f_op_f32(-global3.d.c.b), var_1.d.c.b);
    global3 = Struct_4(global3.d.c.c, true, 31719i, var_1.d, ~arg_1.c.a.x);
    return 1603f;
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-434f)) * _wgslsmith_div_f32(global1.x, arg_0.d.b)), global3.d.c.b) - 1340f), _wgslsmith_div_f32(-241f, _wgslsmith_f_op_f32(func_3(-45318i, arg_0.d))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_0.d.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))));
    let var_0 = arg_0.d.c;
    global0 = array<Struct_4, 6>();
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(818f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.c.b, var_0.b))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.b, -1549f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.c.b, 1000f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, -1000f)))));
    return select(!select(!vec3<bool>(global3.d.c.c, true, false), select(!vec3<bool>(false, arg_0.d.c.c, false), select(vec3<bool>(false, var_0.c, arg_0.a), vec3<bool>(true, false, global3.d.c.c), arg_0.b), !vec3<bool>(false, var_0.c, true)), !(global3.d.c.c & arg_0.d.c.c)), !vec3<bool>(any(!vec2<bool>(true, global3.d.c.c)), global3.a, any(select(vec3<bool>(false, global3.b, true), vec3<bool>(false, true, arg_0.d.c.c), vec3<bool>(false, arg_0.b, true)))), vec3<bool>(true, var_0.c, all(select(!vec3<bool>(false, arg_0.a, true), vec3<bool>(global3.d.c.c, global3.d.c.c, false), true))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global3.d.b), global3.d.c.b);
    global3 = Struct_4(any(select(vec3<bool>(false, any(vec4<bool>(arg_1, false, false, arg_1)), true), vec3<bool>(arg_1, global3.c == global3.c, true), func_2(Struct_4(global3.a, global3.b, 13226i, Struct_3(u_input.a, -1397f, global3.d.c), global3.d.c.a.x)))), arg_1, abs(-(min(1i, 9905i) << (abs(global3.d.a) % 32u))), global3.d, max(1i, _wgslsmith_mod_i32(global3.d.c.a.x, abs(_wgslsmith_add_i32(global3.e, global3.c)))));
    global0 = array<Struct_4, 6>();
    global2 = array<Struct_1, 4>();
    var var_0 = global3.d.c;
    return Struct_1(var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstLeadingBit(~vec2<u32>(_wgslsmith_mult_u32(98894u, global3.d.a), 1u)), global3.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(480f, global3.d.b)) + _wgslsmith_f_op_f32(-1039f + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1618f - -1085f))), all(vec3<bool>(true, global3.b, any(vec3<bool>(global3.d.c.c, false, false)))))), var_0.a);
    let var_2 = Struct_4(_wgslsmith_div_f32(var_1.x, global1.x) > _wgslsmith_div_f32(1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), global3.a, _wgslsmith_div_i32(2147483647i, ~global3.c), global3.d, (global3.d.c.a.x >> (69312u % 32u)) << (_wgslsmith_dot_vec3_u32(max(~vec3<u32>(24412u, 1u, u_input.a), vec3<u32>(13119u, 4294967295u, 1u)), (vec3<u32>(79656u, u_input.a, global3.d.a) & vec3<u32>(global3.d.a, 29893u, global3.d.a)) & vec3<u32>(u_input.a, 17820u, u_input.a)) % 32u));
    var var_3 = func_1(_wgslsmith_add_vec2_u32(~vec2<u32>(~global3.d.a, 0u), firstTrailingBit(~vec2<u32>(0u, 17748u) & vec2<u32>(var_2.d.a, 27973u))), -global3.e >= (((global3.d.c.a.x >> (var_2.d.a % 32u)) & _wgslsmith_dot_vec3_i32(var_2.d.c.a, var_2.d.c.a)) << (4294967295u % 32u)));
    var var_4 = Struct_2(var_2.d.c.a << (vec3<u32>(17313u, abs(8125u), firstLeadingBit(44360u)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-270f, 1000f, !all(vec2<bool>(global3.a, var_2.b)))), var_1.x), true);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.c.b, var_4.b)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1528f)) - var_1.x), var_3.a)));
    var var_5 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(3670i, -1i), var_4.a.x, abs(34315i)), ~max(~vec3<i32>(global3.c, var_2.c, 9342i), vec3<i32>(_wgslsmith_add_i32(var_2.c, var_2.e), -global3.d.c.a.x, abs(global3.e))));
    var var_6 = -firstTrailingBit(~max(vec4<i32>(-13228i, -2147483647i, 35210i, global3.e), vec4<i32>(var_5.x, var_2.d.c.a.x, var_2.d.c.a.x, global3.c)));
    global0 = array<Struct_4, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(~var_4.a.x, var_6.x), global3.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.d.c.b + 1435f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a))), -1021f)));
}

