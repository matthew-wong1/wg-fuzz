struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(10794u, vec4<bool>(false, false, true, true), vec2<i32>(-1i, -1i), vec4<f32>(-2490f, 599f, 426f, 1620f));

var<private> global1: array<u32, 11>;

var<private> global2: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(global0.d.x, 497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(413f - _wgslsmith_f_op_f32(f32(-1f) * -493f)), global0.d.x, firstLeadingBit(1i) != global0.c.x))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -810f));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, -570f))), global0.b.xy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1938f)), vec2<f32>(-297f, global0.d.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.d.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), _wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -764f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 175f))))))), all(global0.b.wxx)));
    let var_3 = Struct_4(arg_1, select(select(select(vec4<bool>(true, true, global0.b.x, false), global0.b, select(vec4<bool>(global0.b.x, global0.b.x, false, true), vec4<bool>(false, true, false, true), global0.b.x)), global0.b, select(select(global0.b, vec4<bool>(global0.b.x, true, true, true), true), !global0.b, !global0.b.x)), !select(vec4<bool>(global0.b.x, global0.b.x, false, false), global0.b, true), any(global0.b)), vec2<i32>(1i, -34239i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(323f, -1344f) - -1273f), 488f, var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.x)))) - global0.d));
    var var_4 = Struct_2(~_wgslsmith_add_i32(u_input.a.x, ~1i), ~(vec4<u32>(arg_1, u_input.b.x, var_3.a, global0.a ^ 0u) << (select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], global1[_wgslsmith_index_u32(1u, 11u)], arg_0), u_input.b | vec4<u32>(global0.a, 34072u, arg_1, global1[_wgslsmith_index_u32(arg_0, 11u)]), select(var_3.b, global0.b, global0.b)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_3.c.x), 0i, _wgslsmith_dot_vec2_i32(~(~global0.c), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.x, var_3.c.x), vec2<i32>(global0.c.x, 31310i))), -20077i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_f32(round(-550f))), vec4<i32>(-1i) * -vec4<i32>(var_3.c.x, -2247i, global0.c.x, global0.c.x), var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), vec4<i32>(53028i, -23358i, -reverseBits(var_3.c.x), global0.c.x >> (3457u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))), true)) - var_0.x)));
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(596u, 11u)]) << (firstTrailingBit(global1[_wgslsmith_index_u32(8563u, 11u)]) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(27933u, 4294967295u, 34661u, u_input.b.x), u_input.b), 11u)])))));
    global0 = Struct_4(360u, select(vec4<bool>(true, any(!vec2<bool>(true, global0.b.x)), global0.b.x, false && any(vec2<bool>(global0.b.x, global0.b.x))), vec4<bool>(true, true, global0.b.x, true), global0.b.x), -_wgslsmith_mult_vec2_i32(u_input.a.yy, countOneBits(global0.c) & global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, global0.d.x, -809f, 129f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, -1000f) + vec4<f32>(global0.d.x, 261f, global0.d.x, global0.d.x))), _wgslsmith_f_op_vec4_f32(-global0.d))));
    let var_0 = -(vec4<i32>(-12273i, u_input.c, _wgslsmith_clamp_i32(-u_input.a.x, 10809i & u_input.a.x, firstTrailingBit(global0.c.x)), ~1i) >> (vec4<u32>(1u, u_input.b.x, ~35191u, _wgslsmith_add_u32(global0.a, u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = global0.d.ywy;
    var var_2 = _wgslsmith_mult_vec4_i32(abs(var_0), ~var_0);
    return Struct_3(24597u, _wgslsmith_f_op_f32(-global0.d.x));
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    var var_0 = select(-511f < arg_0.b, true, true);
    let var_1 = global0.b.x;
    let var_2 = func_2();
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -681f), 978f));
    global2 = _wgslsmith_f_op_f32(abs(716f));
    return Struct_4(arg_0.a, !global0.b, vec2<i32>(2147483647i, -13467i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1635f, var_2.b, 266f, 115f)))), global0.d) * global0.d));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = arg_1;
    global0 = Struct_4(global0.a & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.b, ~vec4<u32>(global0.a, global0.a, 16181u, 105889u)), u_input.b), func_1(Struct_3(~_wgslsmith_div_u32(1u, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(-global0.d.x)))).b, reverseBits(~vec2<i32>(-1i, u_input.a.x)) << (max(u_input.b.wz, vec2<u32>(arg_1.a | u_input.b.x, abs(arg_1.a))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)], 32973u)), _wgslsmith_f_op_f32(-arg_1.d.x), -1880f) * global0.d)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d.yz) + arg_1.d.xz))));
    var var_1 = arg_1;
    var_1 = Struct_4(88486u, select(global0.b, arg_1.b, all(select(!vec3<bool>(arg_1.b.x, arg_1.b.x, true), var_1.b.zwy, vec3<bool>(false, arg_1.b.x, arg_1.b.x)))), u_input.a.yx, arg_1.d);
    return 23237i | firstLeadingBit(min(_wgslsmith_clamp_i32(global0.c.x, global0.c.x, -arg_1.c.x), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(32570i, var_1.c.x, global0.c.x)) | -u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false || (_wgslsmith_clamp_i32(_wgslsmith_div_i32(-30221i, -14608i), u_input.c, -34796i) < func_4(_wgslsmith_div_f32(-1084f, 325f), func_1(Struct_3(global1[_wgslsmith_index_u32(1u, 11u)], -2650f)))), !select(true, global0.b.x, false) | (-(~u_input.c) >= _wgslsmith_clamp_i32(-49206i, u_input.c, -u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(select(-270f, _wgslsmith_f_op_f32(f32(-1f) * -284f), any(vec4<bool>(705f <= _wgslsmith_f_op_f32(-global0.d.x), ~0i >= -global0.c.x, true, any(func_1(Struct_3(global0.a, -1762f)).b)))));
    global0 = Struct_4(1u, vec4<bool>(false, all(global0.b.zz), global0.b.x && false, true), u_input.a.yx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.d), _wgslsmith_f_op_vec4_f32(-global0.d), global0.b.x)));
    global0 = Struct_4(1753u, !global0.b, vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-56833i, global0.c.x, u_input.a.x), ~u_input.a), u_input.c), global0.d);
    global1 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.x), -391f, false)), _wgslsmith_mod_u32(~60272u, 30686u));
}

