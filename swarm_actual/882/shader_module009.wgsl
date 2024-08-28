struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 22>;

var<private> global2: array<Struct_5, 29>;

var<private> global3: bool = true;

var<private> global4: f32 = -1000f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.a.a, 1000f) + _wgslsmith_div_f32(898f, 259f)), 624f, true, vec2<bool>(arg_0.d.x, arg_2.a.a.c), _wgslsmith_clamp_vec3_u32(arg_2.a.a.e << (vec3<u32>(arg_0.e.x, 4294967295u, arg_0.e.x) % vec3<u32>(32u)), select(vec3<u32>(global0.a.a.e.x, global0.a.a.e.x, arg_2.a.a.e.x), global0.a.a.e, false), vec3<u32>(0u, 0u, global0.a.a.e.x)))), arg_2.b);
    let var_1 = 4294967295u << (select(abs(_wgslsmith_clamp_u32(global0.a.a.e.x, 4294967295u, arg_2.a.a.e.x) & min(arg_0.e.x, 13450u)), _wgslsmith_mult_u32(global0.a.a.e.x, max(1u, ~global0.a.a.e.x)), true) % 32u);
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(abs(0i), -_wgslsmith_mult_i32(global0.b.x, -2078i)), -19406i);
    global3 = !(arg_0.c || arg_2.a.a.c);
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(-var_0.a.a.a) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-872f, 345f, arg_0.d.x)) * global0.a.a.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1901f));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: bool) -> vec3<i32> {
    global3 = true;
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a.a.b * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.a) + 218f), true, select(select(global0.a.a.d, global0.a.a.d, global0.a.a.d), global0.a.a.d, select(global0.a.a.d, vec2<bool>(arg_3, true), arg_3)), global0.a.a.e)), ~vec2<i32>(arg_1 | -50821i, arg_0));
    global2 = array<Struct_5, 29>();
    let var_0 = Struct_3(global0.a, abs(_wgslsmith_add_vec2_i32(global0.b | _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_0), vec2<i32>(-1i, global0.b.x), global0.b), global0.b)));
    global3 = global0.a.a.c;
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~global0.b, -global0.b), global0.b.x, i32(-1i) * -1i);
}

fn func_2() -> vec3<bool> {
    global4 = 1000f;
    let var_0 = !(!vec4<bool>(global0.b.x > global0.b.x, 41373u != ~u_input.a, _wgslsmith_f_op_f32(-global0.a.a.b) < global1[_wgslsmith_index_u32(reverseBits(u_input.a), 22u)], global0.a.a.c));
    let var_1 = func_4(-reverseBits(global0.b.x), firstLeadingBit(_wgslsmith_clamp_i32(global0.b.x, _wgslsmith_add_i32(global0.b.x, firstLeadingBit(global0.b.x)), _wgslsmith_clamp_i32(i32(-1i) * -56578i, global0.b.x << (u_input.a % 32u), 2147483647i))), global0.b.x, !func_3(global0.a.a, var_0.wyw, Struct_3(Struct_2(global0.a.a), _wgslsmith_div_vec2_i32(global0.b, global0.b))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 29u)];
    global1 = array<f32, 22>();
    return !select(!select(var_0.xzy, !vec3<bool>(var_0.x, var_0.x, false), false), vec3<bool>(true, var_0.x, true), true);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global3 = any(select(!vec3<bool>(any(vec4<bool>(global0.a.a.d.x, false, global0.a.a.d.x, global0.a.a.c)), true, global0.a.a.d.x), !select(func_2(), vec3<bool>(true, global0.a.a.c, false), global0.a.a.d.x), select(vec3<bool>(global0.a.a.b != -1133f, !global0.a.a.c, global0.a.a.c), !select(vec3<bool>(true, true, global0.a.a.c), vec3<bool>(true, global0.a.a.d.x, global0.a.a.c), global0.a.a.d.x), vec3<bool>(global0.a.a.d.x, func_2().x, any(vec4<bool>(global0.a.a.d.x, global0.a.a.d.x, global0.a.a.c, false))))));
    let var_0 = Struct_1(1576f, _wgslsmith_div_f32(-1590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.a.a.b)), _wgslsmith_f_op_f32(exp2(global0.a.a.b)))) - 708f)), select(global0.a.a.d.x, true && any(vec3<bool>(global0.a.a.c, true, true)), func_2().x), !(!select(!vec2<bool>(global0.a.a.c, global0.a.a.c), vec2<bool>(global0.a.a.c, false), global0.a.a.d.x && false)), (_wgslsmith_clamp_vec3_u32(global0.a.a.e, global0.a.a.e, select(vec3<u32>(u_input.a, 1u, 0u), global0.a.a.e, false)) << (vec3<u32>(global0.a.a.e.x, 71892u, ~u_input.a) % vec3<u32>(32u))) | vec3<u32>(min(1u, u_input.a), ~4294967295u, arg_0));
    global3 = !(!(-2041f != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.a.a - 115f)))));
    var var_1 = -17348i;
    var var_2 = Struct_3(Struct_2(var_0), global0.b ^ countOneBits(~vec2<i32>(-19641i, global0.b.x)));
    return !vec4<bool>(func_2().x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1718f)) < _wgslsmith_f_op_f32(-var_0.a), !any(vec3<bool>(global0.a.a.c, var_0.c, global0.a.a.d.x)), ~_wgslsmith_sub_i32(global0.b.x, -2147483647i) < ((global0.b.x & 26355i) << (var_0.e.x % 32u)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.a.a.e;
    var var_1 = (true & !(1u <= _wgslsmith_dot_vec3_u32(arg_2.a.a.e, arg_2.a.a.e))) | global0.a.a.c;
    global2 = array<Struct_5, 29>();
    var var_2 = firstLeadingBit(_wgslsmith_mult_i32(0i, -arg_2.b.x));
    let var_3 = true;
    return Struct_1(-924f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(317f - global0.a.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) + -150f))), global1[_wgslsmith_index_u32(~19311u, 22u)]), true, !func_2().zx, vec3<u32>(~(u_input.a >> (1u % 32u)), 42821u, arg_1 | 4294967295u) & select(~global0.a.a.e, ~(~vec3<u32>(arg_2.a.a.e.x, 24106u, var_0.x)), vec3<bool>(all(vec2<bool>(global0.a.a.d.x, arg_0)), true, global0.a.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(func_1(firstTrailingBit(~0u))), _wgslsmith_clamp_u32(global0.a.a.e.x, 17541u, global0.a.a.e.x ^ ~(54713u & u_input.a)), Struct_3(global0.a, global0.b));
    global1 = array<f32, 22>();
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(31629i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(-2634i, -830i, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, global0.b.x, global0.b.x, 0i)), _wgslsmith_div_i32(global0.b.x, global0.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(612i, -(~global0.b.x), global0.b.x | global0.b.x), ~vec3<i32>(2147483647i, 2147483647i, 74317i) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(83071u, u_input.a), global0.a.a.e.yz), 13661u, 62092u) % vec3<u32>(32u))), ~func_4(global0.b.x, 0i, func_4(_wgslsmith_sub_i32(global0.b.x, 0i), ~2147483647i, max(-2147483647i, 2147483647i), true).x, true));
    let var_2 = Struct_2(var_0);
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, global0.a.a.b, var_3.b, global0.a.a.b))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) - _wgslsmith_f_op_f32(f32(-1f) * -1594f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1375f, -1158f, false)) - _wgslsmith_f_op_f32(var_2.a.b - var_2.a.b)), var_3.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -450f), global0.a.a.a, 621f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-221f, var_2.a.b, -151f, -125f)))), false))));
    let var_5 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(min(4294967295u, firstTrailingBit(61811u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.e.x), vec2<u32>(4294967295u, u_input.a))), vec2<u32>(4294967295u, ~0u));
}

