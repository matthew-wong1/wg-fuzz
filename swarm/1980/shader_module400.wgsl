struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-503f, -975f, -496f, 940f, 547f, 410f, -1000f, 1000f, 1853f, 1090f, -1820f, -3554f, -752f, -660f, 1000f, 172f, 1144f, 489f, 456f, 872f, -280f, 293f, 569f, -1000f, 1884f, -1648f);

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_mod_u32(~global1.d.x, 0u));
    return Struct_1(global1.a, _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -795i, 9406i), -global1.b), -vec3<i32>(global1.c.x, 1i, global1.b.x), vec2<u32>(global1.d.x, firstLeadingBit(countOneBits(arg_0.x))), vec2<bool>(!(!all(vec3<bool>(false, global1.e.x, false))), select(global1.e.x, !(arg_0.x != 4294967295u), any(!global1.e))));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(global1.a.x, 1u, 3543u)), 26u)] - -1061f)), 175f), vec2<f32>(832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f - 481f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))))));
    let var_1 = false;
    var var_2 = Struct_2(Struct_1(vec3<u32>(1u, 10053u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 20180u))), ~vec2<i32>(-2147483647i >> (1u % 32u), -global1.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -29455i, _wgslsmith_clamp_i32(18424i, global1.c.x, global1.c.x)), _wgslsmith_sub_vec3_i32(~global1.c, vec3<i32>(9384i, global1.b.x, global1.c.x))), vec2<u32>(~(~u_input.a.x), global1.d.x), vec2<bool>(!global1.e.x, arg_1.x || true)), vec3<f32>(global0[_wgslsmith_index_u32(~u_input.a.x, 26u)], -1028f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(791f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), global0[_wgslsmith_index_u32(28738u, 26u)], arg_0)), _wgslsmith_f_op_f32(1013f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45722u, 26u)] - 671f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-545f, 654f)) * _wgslsmith_div_f32(1445f, -1166f)), _wgslsmith_div_f32(-222f, global0[_wgslsmith_index_u32(min(33035u, u_input.a.x), 26u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(70841u), 26u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 26u)] - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))))));
    var_2 = Struct_2(Struct_1(max(global1.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, global1.a.x, 62547u), vec3<u32>(4294967295u, global1.d.x, 4294967295u))), ~abs(~global1.c.zz), ~_wgslsmith_clamp_vec3_i32(-var_2.a.c, vec3<i32>(42280i, global1.b.x, var_2.a.b.x), var_2.a.c), ~_wgslsmith_add_vec2_u32(~u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.x, global1.d.x), global1.d)), select(vec2<bool>(any(vec4<bool>(var_2.a.e.x, arg_1.x, var_2.a.e.x, false)), true), vec2<bool>(func_1(vec2<u32>(u_input.a.x, 5808u)).e.x, !arg_0), var_2.b.x <= _wgslsmith_f_op_f32(select(var_2.b.x, global0[_wgslsmith_index_u32(var_2.a.d.x, 26u)], false)))), var_2.b, 1129f);
    let var_3 = Struct_2(Struct_1(~global1.a, vec2<i32>(2147483647i, (i32(-1i) * -1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(57904i, var_2.a.c.x, 2147483647i), global1.c)), -vec3<i32>(global1.b.x, 2147483647i, -global1.c.x), min(_wgslsmith_add_vec2_u32(var_2.a.a.zx, vec2<u32>(1u, u_input.a.x)), vec2<u32>(6995u, 58429u)) ^ _wgslsmith_add_vec2_u32(~var_2.a.d, var_2.a.a.zx), !vec2<bool>(false | arg_1.x, !var_2.a.e.x)), _wgslsmith_f_op_vec3_f32(var_2.b - var_2.b), 768f);
    return -186f;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    global0 = array<f32, 26>();
    global2 = true;
    let var_0 = -(-(~global1.c) >> (_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global1.a.x, 61073u), u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 1u), global1.a), vec3<u32>(u_input.a.x, 1u, u_input.a.x))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_div_u32(~4294967295u, ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(4788u, global1.a.x))) ^ u_input.a.x;
    var var_2 = global1.a;
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = array<f32, 26>();
    var var_0 = 1557f;
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(9594u, 26u)] > global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global1.e.x, arg_0 | arg_0, global1.e.x), vec4<bool>(true, global1.e.x | true, false, func_1(u_input.a).e.x), vec4<bool>(-918f <= global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)] >= global0[_wgslsmith_index_u32(4294967295u, 26u)], true, false)), vec2<bool>(_wgslsmith_f_op_f32(func_3(false, vec4<bool>(arg_0, arg_0, true, true))) == -600f, all(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, false, global1.e.x, arg_0), vec4<bool>(arg_0, false, global1.e.x, true)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-34020i, -17576i, -1i) >> (global1.a.x % 32u), firstLeadingBit(global1.c.x)))), 26u)];
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 26u)]))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1244f, 1771f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-517f, global0[_wgslsmith_index_u32(4294967295u, 26u)]))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]))) - vec2<f32>(-1454f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30949u, 26u)]))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21273u, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + global0[_wgslsmith_index_u32(~0u, 26u)])), -1000f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0[_wgslsmith_index_u32(25770u, 26u)], var_2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -1246f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3315f, 233f, 1000f), vec3<f32>(global0[_wgslsmith_index_u32(global1.d.x, 26u)], 372f, var_2.x), vec3<bool>(arg_0, false, arg_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec2<u32>(~(~global1.d.x), ~u_input.a.x));
    let var_0 = Struct_2(Struct_1(~abs(select(global1.a, global1.a, global1.e.x)), -vec2<i32>(2147483647i, global1.c.x), reverseBits(~vec3<i32>(global1.b.x, -1i, global1.b.x) >> (vec3<u32>(u_input.a.x, global1.a.x, global1.d.x) % vec3<u32>(32u))), global1.a.xx, !vec2<bool>(true, all(vec3<bool>(global1.e.x, global1.e.x, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(global1.e.x & global1.e.x, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 10913i), vec2<i32>(global1.b.x, 2147483647i)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], -1921f))), !any(global1.e))), vec3<f32>(394f, _wgslsmith_f_op_vec3_f32(func_2(all(vec4<bool>(false, global1.e.x, global1.e.x, true)), global1.b)).x, _wgslsmith_f_op_f32(-1549f * global0[_wgslsmith_index_u32(~4294967295u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -875f))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19414u, 26u)]))));
    global0 = array<f32, 26>();
    var var_1 = Struct_2(func_1(~(~var_0.a.d)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(select(global1.e.x, global1.e.x, false), var_0.a.b << (vec2<u32>(39142u, 1u) % vec2<u32>(32u))))))), -1605f);
    var_1 = Struct_2(Struct_1(~(min(vec3<u32>(0u, 1u, 0u), vec3<u32>(var_0.a.d.x, global1.a.x, 19552u)) << (_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(0u, 66385u, 8419u)) % vec3<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, var_0.a.c.x), global1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -57093i), var_0.a.b)) ^ global1.c.yy, firstLeadingBit(~(vec3<i32>(1i, 5732i, -37643i) ^ vec3<i32>(global1.b.x, 0i, global1.c.x))), vec2<u32>(4294967295u, ~(~global1.a.x)), func_1((var_0.a.a.yy & u_input.a) >> ((var_0.a.d << (var_0.a.a.xz % vec2<u32>(32u))) % vec2<u32>(32u))).e), _wgslsmith_f_op_vec3_f32(-var_0.b), global0[_wgslsmith_index_u32(27621u, 26u)]);
    var var_2 = global1.a;
    global1 = func_1(vec2<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, var_2.x)));
    let var_3 = var_2.xx;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(_wgslsmith_add_vec2_u32(~var_0.a.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.a.x, u_input.a.x), vec2<u32>(31906u, 10098u), vec2<u32>(var_2.x, u_input.a.x)))).c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2049f, 543f, var_1.b.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 26u)])) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(844f, 1000f, var_0.b.x, 1339f) * vec4<f32>(187f, 379f, var_1.c, var_1.c)))))), 172f, global1.a, ~abs(max(~vec4<u32>(1u, 31615u, 4294967295u, var_3.x), vec4<u32>(u_input.a.x, global1.a.x, 13078u, var_4.a.a.x))));
}

