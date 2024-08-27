struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = 15566u;
    var var_1 = vec3<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), select(all(vec4<bool>(false, false, all(vec2<bool>(true, true)), -8643i == u_input.c)), all(vec2<bool>(true, true)), any(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.www, min(global1.zyz, global1.yxw)), 2u)])), false);
    let var_2 = select(global1.x, 20802u, !var_1.x) < ~(~firstTrailingBit(abs(4294967295u)));
    var var_3 = ~abs(u_input.a);
    var var_4 = _wgslsmith_div_i32(2147483647i, ~0i);
    return vec4<bool>(true, false, !(select(all(var_1.yx), !var_1.x, var_1.x) || var_2), !var_1.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5) -> vec3<f32> {
    var var_0 = select(vec4<bool>(true, false, (_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) | arg_1.b.c.b.b.x) > ~min(2147483647i, 0i), any(select(vec4<bool>(arg_1.b.b, arg_1.b.c.b.c, true, false), !vec4<bool>(arg_1.b.a.b.c, arg_1.b.c.b.c, arg_1.b.b, false), !vec4<bool>(true, true, arg_1.b.a.b.c, arg_1.b.b)))), !func_3(arg_0.wzz, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.a.b.b.x, 0i, -53077i), vec3<i32>(u_input.d.x, 23585i, 27044i)), ~vec3<i32>(-1i, u_input.b.x, u_input.b.x))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.wzz)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(398f, 791f, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1159f, arg_0.x) * arg_0.zwy), global2[_wgslsmith_index_u32(4294967295u | global1.x, 2u)]))), -vec3<i32>(_wgslsmith_mult_i32(1i, u_input.b.x), arg_1.b.a.b.a, -71936i)));
    let var_1 = !var_0.yy;
    var_0 = !vec4<bool>(false, arg_1.b.b, var_0.x, u_input.c < u_input.b.x);
    global2 = array<vec3<bool>, 2>();
    var var_2 = Struct_3(arg_0.x);
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -183f))))), -1770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(992f, _wgslsmith_f_op_f32(sign(arg_0.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a, -1000f, 914f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, var_2.a, -763f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.wxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1490f, arg_0.x, var_2.a))))))))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_1(~(~9926i), _wgslsmith_sub_vec2_i32(vec2<i32>(0i & u_input.c, -37651i), ~select(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(arg_0, 24u)], vec2<bool>(true, false))) >> ((global1.xx | vec2<u32>(u_input.a, ~71730u)) % vec2<u32>(32u)), arg_2 < arg_2);
    var var_1 = Struct_1(1i, var_0.b, arg_1.x >= _wgslsmith_f_op_f32(ceil(arg_1.x)));
    var var_2 = _wgslsmith_mult_u32(arg_0, firstTrailingBit(reverseBits(0u)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-866f + -234f));
    var var_4 = -2147483647i;
    return Struct_3(_wgslsmith_f_op_f32(-arg_1.x));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec2<i32>, 24>();
    var var_0 = true;
    global2 = array<vec3<bool>, 2>();
    global1 = vec4<u32>(u_input.a, ~37685u, _wgslsmith_add_u32(global1.x, ~(u_input.a | _wgslsmith_clamp_u32(26570u, u_input.a, 4294967295u))), global1.x);
    let var_1 = func_4(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-179f, 774f, -768f) * vec3<f32>(429f, 781f, -494f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(386f, 641f, -402f, -762f), Struct_5(37928u, Struct_4(Struct_2(global1.x, Struct_1(u_input.c, u_input.b, false)), false, Struct_2(1u, Struct_1(u_input.b.x, vec2<i32>(u_input.c, u_input.c), true))), 26197u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)));
    return vec4<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), true)), global1.x > global1.x, false, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(select(vec4<u32>(global1.x >> (~global1.x % 32u), u_input.a, _wgslsmith_div_u32(1u, global1.x), 0u), vec4<u32>(u_input.a, u_input.a, select(27303u, ~global1.x, true), firstTrailingBit(32561u)), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-329f, 1675f, -105f, -1000f), vec4<f32>(-1011f, -403f, -516f, -265f)))) * vec4<f32>(-1952f, _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(-258f, 1000f, -1685f, 1247f), Struct_5(6793u, Struct_4(Struct_2(4294967295u, Struct_1(u_input.b.x, vec2<i32>(u_input.d.x, u_input.c), true)), false, Struct_2(u_input.a, Struct_1(1i, u_input.d, true))), u_input.a))).x, 352f, -1737f))));
}

