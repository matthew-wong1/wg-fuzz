struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<f32, 10> = array<f32, 10>(-1046f, -339f, 1156f, 116f, -1000f, 1000f, -989f, -1762f, -1401f, -727f);

var<private> global2: Struct_3;

var<private> global3: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    global3 = global2.a.x;
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-52165i, ~u_input.a | 1i, 0i, 1i), vec4<i32>(u_input.a, 0i, 0i, ~countOneBits(2147483647i))), -vec4<i32>(_wgslsmith_add_i32(abs(u_input.a), 1i), _wgslsmith_div_i32(~(-1i), u_input.a), -1i, ~u_input.a));
    var var_1 = ~53495i;
    var var_2 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(global2.b.a.x), ~(~global2.b.a.x), (u_input.b & global2.b.a.x) << (u_input.b % 32u), u_input.b), abs(~global2.b.a)));
    let var_3 = Struct_2(global2.b, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global2.b.a | vec4<u32>(u_input.b, 11316u, var_2.x, global2.b.a.x), global2.b.a), global2.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(145f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-655f + arg_1))))), vec4<bool>(any(vec3<bool>(false, false, all(vec2<bool>(global2.a.x, true)))), !all(!vec3<bool>(true, true, global2.a.x)), any(vec4<bool>(!arg_0, true, 2147483647i < u_input.a, true)), !global2.a.x), !(!(!global2.a.x)));
    return _wgslsmith_mult_u32(~var_3.a.a.x, var_3.b.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1284f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 558f) + 1000f) - _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~global2.b.a.x >> (func_3(global2.a.x, global1[_wgslsmith_index_u32(105727u, 10u)]) % 32u), 10u)]))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    global3 = false;
    var var_0 = arg_2;
    global2 = Struct_3(!vec2<bool>(all(select(var_0.d, vec4<bool>(true, arg_2.e, arg_0.a.x, global2.a.x), true)), 1315f == _wgslsmith_f_op_f32(trunc(1183f))), Struct_1(select(vec4<u32>(~u_input.b, 1u, arg_2.b.a.x, ~u_input.b), countOneBits(arg_1.a), _wgslsmith_mult_u32(1u, 38500u) == ~arg_2.b.a.x)));
    let var_1 = Struct_2(Struct_1(arg_1.a), Struct_1(vec4<u32>(14178u, ~arg_2.b.a.x, 1u, _wgslsmith_clamp_u32(90824u & global2.b.a.x, 0u, abs(global2.b.a.x)))), _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.a), vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1.a, global2.b.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), global2.b.a.zx), func_3(false, _wgslsmith_f_op_f32(-arg_2.c))), Struct_3(vec2<bool>(arg_2.d.x && true, true), var_0.b))), !select(select(select(var_0.d, var_0.d, arg_2.e), !vec4<bool>(arg_0.a.x, arg_2.e, arg_0.a.x, arg_2.d.x), arg_2.b.a.x != 0u), vec4<bool>(var_0.d.x, true, arg_2.e, true), false), true);
    global3 = select(false, !all(arg_0.a.wx), false);
    return vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -2147483647i, 2147483647i), reverseBits(u_input.a), -countOneBits(-u_input.a | 16872i), reverseBits(-1i));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = firstTrailingBit(func_2(Struct_4(arg_0.a), global2.b, Struct_2(global2.b, global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1338f), vec4<bool>(true, any(arg_0.a.yw), global2.a.x, any(arg_0.a.yyy)), true)));
    let var_1 = ~vec2<u32>(~(~u_input.b), ~30300u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.xxy);
    let var_3 = _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))));
    global1 = array<f32, 10>();
    return select(select(arg_0.a, select(vec4<bool>(true, true, true, true), !arg_0.a, select(arg_0.a, arg_0.a, select(arg_0.a, vec4<bool>(false, arg_0.a.x, global2.a.x, true), false))), !(_wgslsmith_f_op_f32(arg_1.x + 379f) <= _wgslsmith_f_op_f32(var_2.x * -564f))), !vec4<bool>(!all(vec2<bool>(true, arg_0.a.x)), !(arg_0.a.x | arg_0.a.x), any(arg_0.a), arg_0.a.x), !(!(~var_1.x >= min(global2.b.a.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.b, Struct_1(_wgslsmith_clamp_vec4_u32(global2.b.a, vec4<u32>(~52495u, global2.b.a.x >> (u_input.b % 32u), 1u, 0u), _wgslsmith_mod_vec4_u32(~global2.b.a, global2.b.a))), -1879f, select(vec4<bool>(global2.a.x, !(!global2.a.x), true, global2.a.x), func_1(Struct_4(!vec4<bool>(global2.a.x, true, true, global2.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1356f, -1529f, -1315f, global1[_wgslsmith_index_u32(global2.b.a.x, 10u)]) * vec4<f32>(global1[_wgslsmith_index_u32(global2.b.a.x, 10u)], 356f, -1589f, global1[_wgslsmith_index_u32(0u, 10u)])))), ~global2.b.a.x), !(!vec4<bool>(false, global2.a.x, true, global2.a.x))), !(any(select(vec4<bool>(false, false, true, false), vec4<bool>(global2.a.x, global2.a.x, false, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, false, false))) & func_1(Struct_4(vec4<bool>(true, global2.a.x, true, global2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 10u)], -971f, global1[_wgslsmith_index_u32(global2.b.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_sub_u32(4294967295u, u_input.b)).x));
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(~(~vec4<u32>(var_1.b.a.x, u_input.b, 47625u, var_0.a.a.x))), Struct_1(firstTrailingBit(select(var_1.b.a, vec4<u32>(36698u, global2.b.a.x, 62382u, 4294967295u), var_0.d)) >> (global2.b.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(step(var_0.c, 932f)), all(var_0.d.xz))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global2.b, global2.b.a.zxw, Struct_3(var_0.d.xx, var_0.a)))), var_1.c))), !func_1(Struct_4(vec4<bool>(global2.a.x, var_0.d.x, false, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -245f, 331f, -541f) * vec4<f32>(770f, 1335f, var_0.c, global1[_wgslsmith_index_u32(77980u, 10u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, 502f, var_1.c, -925f))), var_0.b.a.x), global2.a.x);
    let var_3 = var_1;
    global3 = any(vec2<bool>(!var_2.d.x, any(select(var_1.d.zw, select(var_2.d.xx, global2.a, vec2<bool>(var_1.e, var_3.d.x)), var_3.d.zy))));
    global0 = array<vec3<u32>, 1>();
    global2 = Struct_3(var_1.d.zx, var_1.b);
    let var_4 = Struct_3(var_1.d.ww, Struct_1(var_1.a.a));
    let var_5 = vec2<bool>(func_1(Struct_4(select(var_3.d, !vec4<bool>(true, true, global2.a.x, false), var_0.c == -179f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_2.c, -311f, -1000f) + vec4<f32>(1000f, -516f, var_0.c, var_1.c)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 1000f, -535f, 182f), vec4<f32>(var_2.c, -1808f, -932f, 1989f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, 532f, -393f, var_3.c)))))), var_4.b.a.x).x, var_1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(856f, 108f, -1641f), vec3<f32>(var_2.c, 959f, 181f)))), vec3<f32>(_wgslsmith_f_op_f32(-847f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25543u, 10u)] + -1013f)), -428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)))), 697f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c, -124f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, global1[_wgslsmith_index_u32(var_3.b.a.x, 10u)])) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1237f, var_0.c)), vec2<f32>(var_0.c, var_0.c)))));
}

