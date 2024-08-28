struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<f32, 14>;

var<private> global3: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = vec3<f32>(-106f, 653f, -1364f);
    let var_1 = Struct_2(arg_2.b.xx);
    var var_2 = Struct_2(reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(9967u, 0u), firstTrailingBit(vec2<u32>(u_input.d, 122958u)), firstTrailingBit(vec2<u32>(24278u, 16904u)))));
    global0 = array<vec2<bool>, 32>();
    let var_3 = vec4<bool>(arg_2.a & true, any(select(!vec4<bool>(true, false, true, arg_2.a), vec4<bool>(arg_2.d.x != global2[_wgslsmith_index_u32(u_input.d, 14u)], !global1.x, var_1.a.x >= 1u, select(arg_2.a, global1.x, global1.x)), select(select(vec4<bool>(false, true, arg_2.a, false), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(arg_2.a, arg_2.a, global1.x, true)), select(vec4<bool>(arg_2.a, false, true, arg_2.a), vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global1.x, global1.x, arg_2.a)), !vec4<bool>(arg_2.a, false, false, false)))), false, arg_2.a | false);
    return var_2.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = all(vec2<bool>(((u_input.a << (4294967295u % 32u)) <= u_input.a) & (24630u <= (u_input.e ^ 37125u)), arg_0));
    var var_1 = !vec2<bool>(!global1.x, global1.x);
    let var_2 = (i32(-1i) * -76745i) == _wgslsmith_add_i32(u_input.a, max(-1i, u_input.b.x));
    var var_3 = vec3<u32>(u_input.d >> (~_wgslsmith_sub_u32(0u, 0u) % 32u), u_input.e, 36980u);
    var var_4 = !arg_0;
    return Struct_1(false, vec3<u32>(func_3(arg_1.ww, _wgslsmith_mult_i32(-3438i, -19702i), Struct_1(false, vec3<u32>(var_3.x, 4294967295u, 4294967295u), u_input.e, arg_1.xzx), vec3<i32>(0i, 46873i, u_input.c)), var_3.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, u_input.d, 1u, 62718u), vec4<u32>(u_input.d, u_input.d, var_3.x, 4294967295u)))) >> (vec3<u32>(var_3.x, select(4294967295u, var_3.x, var_2), firstTrailingBit(_wgslsmith_mod_u32(0u, u_input.e))) % vec3<u32>(32u)), ~(countOneBits(u_input.e) & u_input.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 74916u, 41660u), vec3<u32>(34670u, 13023u, u_input.e)), 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.d, 14u)])) * 778f), 216f) + vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -177f)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(min(484f, _wgslsmith_f_op_f32(-170f * 774f)));
    var var_1 = select(true, global1.x, all(vec4<bool>(true, !(global1.x == global1.x), !all(vec4<bool>(false, false, global1.x, global1.x)), all(!vec4<bool>(global1.x, global1.x, global1.x, false)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(742f, -462f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-815f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(28684u, 14u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 14u)])))));
    var var_3 = func_2(select(_wgslsmith_sub_u32(1u, min(u_input.e, u_input.e)), u_input.e, global1.x) <= ~(u_input.e << ((u_input.e >> (13517u % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), global2[_wgslsmith_index_u32(u_input.d, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f * 1474f)), -688f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 586f) - vec4<f32>(-344f, global2[_wgslsmith_index_u32(u_input.e, 14u)], 1398f, var_2)))))));
    let var_4 = -367f;
    return Struct_3(_wgslsmith_f_op_f32(floor(var_3.d.x)), func_2(func_2(var_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4, 1201f, -1000f, var_2), vec4<f32>(165f, -482f, var_3.d.x, global2[_wgslsmith_index_u32(0u, 14u)]))))).a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1536f)), global2[_wgslsmith_index_u32(~var_3.b.x, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * global2[_wgslsmith_index_u32(1u, 14u)]) - _wgslsmith_f_op_f32(-var_3.d.x)), global2[_wgslsmith_index_u32(reverseBits(~226u), 14u)], var_2)), Struct_1(global1.x, min(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), func_3(vec2<f32>(var_2, var_2), u_input.c, Struct_1(false, vec3<u32>(1u, u_input.d, 26375u), 5344u, var_3.d), vec3<i32>(1i, u_input.a, u_input.c)), max(u_input.d, 0u)), ~var_3.b), firstTrailingBit(var_3.b.x) >> (_wgslsmith_sub_u32(~u_input.e, abs(u_input.e)) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(24643u, 14u)], var_3.d.x, var_2), vec3<f32>(var_4, var_4, global2[_wgslsmith_index_u32(u_input.d, 14u)])))) - var_3.d)), Struct_1(true, ~var_3.b, abs(4294967295u), func_2(any(vec3<bool>(true, true, var_3.a)) && (global1.x & true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_3.b.x, 14u)], var_2, var_4, -465f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, global2[_wgslsmith_index_u32(var_3.c, 14u)], var_3.d.x, -1124f), vec4<f32>(var_3.d.x, 1000f, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(49096u, 14u)]), var_3.a)))).d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-18559i & _wgslsmith_mod_i32(2147483647i, -(-43073i ^ u_input.c)));
    global2 = array<f32, 14>();
    var var_1 = func_1();
    let var_2 = var_1.d.d.yx;
    global3 = min(u_input.d, 1u);
    var_0 = reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.c, i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), min(_wgslsmith_add_u32(var_1.d.c, 3504u) | _wgslsmith_dot_vec2_u32(var_1.d.b.yx, vec2<u32>(15907u, 1u)), var_1.b.b.x), _wgslsmith_f_op_f32(606f * var_2.x), -854f, 1627f);
}

