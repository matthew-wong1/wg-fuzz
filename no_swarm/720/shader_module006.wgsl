struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<Struct_2, 30>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(true, !vec3<bool>(any(vec3<bool>(true, true, true)), false, all(vec4<bool>(false, true, false, false))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, false)), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true), 20990i <= _wgslsmith_mod_i32(u_input.e.x, 225i)), select(!vec4<bool>(true, all(vec2<bool>(true, false)), true, true), vec4<bool>(false, firstLeadingBit(-23935i) != u_input.b, false, true), false), vec3<u32>(1u, 70399u, ~1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(837f)), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)) - vec3<f32>(218f, 1100f, arg_0.x))))));
    let var_3 = global0[_wgslsmith_index_u32(min(u_input.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.d, ~(var_1.e.x >> (u_input.d % 32u))), 4294967295u)), 30u)];
    var var_4 = Struct_2(u_input.b, Struct_1(var_1.a, !vec3<bool>(select(var_1.a, var_3.c.x, var_3.c.x), true, var_3.b.d.x), !(!vec4<bool>(var_3.b.d.x, true, var_1.a, var_1.d.x)), select(vec4<bool>(var_3.c.x, !var_3.c.x, false, true), var_1.d, any(var_1.b.xz)), var_3.b.e), select(select(select(!vec3<bool>(var_3.b.d.x, var_3.b.c.x, var_1.d.x), var_1.d.zyw, var_3.c), var_3.b.b, !var_1.c.xwx), !vec3<bool>(any(var_1.c), false, all(var_1.b)), var_3.c.x));
    return all(vec4<bool>(any(var_4.c), !all(vec4<bool>(true, var_4.b.b.x, false, var_4.c.x)), var_4.a > -1i, all(select(var_4.c, vec3<bool>(false, true, var_4.c.x), var_4.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 30>();
    var var_0 = vec3<f32>(-1612f, 728f, -868f);
    var var_1 = false;
    let var_2 = arg_2.b;
    var_1 = select(!func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), all(arg_0), var_2.c.x);
    return Struct_2(abs(arg_2.a), Struct_1(all(vec3<bool>(true, !var_2.b.x, !var_2.c.x)), vec3<bool>(true, true, all(arg_2.c)), !select(!var_2.d, vec4<bool>(arg_2.b.c.x, false, arg_2.c.x, arg_1.x), true), vec4<bool>(false, (1u > var_2.e.x) & true, arg_1.x, (arg_2.b.b.x | arg_0.x) && (u_input.c < 7112u)), vec3<u32>(24635u, u_input.c, reverseBits(~1u))), select(!vec3<bool>(any(vec3<bool>(arg_1.x, arg_0.x, true)), true, all(vec4<bool>(true, true, var_2.a, true))), arg_0, !(arg_1.x | true) && select(arg_2.b.a, true, var_2.d.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = arg_1.b.d.wyy;
    let var_1 = func_2(vec3<bool>(any(!arg_1.c), all(vec3<bool>(true, any(arg_1.b.b), all(vec4<bool>(arg_1.b.d.x, false, false, true)))), true), arg_1.b.b, arg_1);
    global1 = false;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-429f * -1698f))))))));
    global1 = true;
    return vec2<bool>(true & var_0.x, true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1401f), -149f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(311f, -562f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 889f))))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1864f, -799f))))))));
    let var_2 = max(func_2(!vec3<bool>(select(arg_0.x, true, true), !arg_2, arg_2), vec3<bool>(!(var_1.x < -1841f), false, arg_2 && arg_2), Struct_2(1i, Struct_1(true, func_2(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, false, arg_0.x), Struct_2(u_input.e.x, Struct_1(true, vec3<bool>(arg_0.x, arg_0.x, arg_2), vec4<bool>(arg_2, true, true, arg_0.x), vec4<bool>(true, false, arg_2, false), vec3<u32>(u_input.d, 34472u, 4294967295u)), vec3<bool>(arg_2, false, arg_0.x))).c, vec4<bool>(false, arg_2, false, true), select(vec4<bool>(arg_0.x, false, false, arg_2), vec4<bool>(arg_2, arg_2, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_2, false, arg_2)), ~arg_1.yyx), !func_2(vec3<bool>(arg_2, false, arg_0.x), vec3<bool>(arg_2, arg_2, arg_2), global0[_wgslsmith_index_u32(u_input.c, 30u)]).b.d.wzy)).b.e.xz, reverseBits(~vec2<u32>(33452u, ~u_input.d)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f) + var_1.x), var_1.x, var_1.x, -216f);
    global0 = array<Struct_2, 30>();
    return arg_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> i32 {
    global0 = array<Struct_2, 30>();
    global1 = func_5(!func_4(arg_2, func_2(vec3<bool>(true, false, true), vec3<bool>(true, true, true), Struct_2(-2147483647i, Struct_1(true, vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), arg_0), vec3<bool>(true, true, true))), ~vec2<u32>(arg_1, 23271u)), vec4<u32>(59813u, 4294967295u << (arg_2 % 32u), arg_0.x, max(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(arg_0.x, 30u)]).b.e.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 58818u), vec3<u32>(arg_0.x, 38464u, 4294967295u)))), true);
    let var_0 = arg_0.xy;
    var var_1 = vec3<i32>(_wgslsmith_div_i32(u_input.b, ~(~1i)), ~select(1i, u_input.e.x, true) << (arg_1 % 32u), func_2(vec3<bool>(true, false, all(vec2<bool>(true, true))), vec3<bool>(true, ~4294967295u != select(1u, 41444u, false), true), global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.x & arg_2), 30u)]).a);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(0u), ~(~select(38493u, 78478u, true))), arg_1), 30u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(-firstTrailingBit(~vec4<i32>(u_input.b, -36376i, -19971i, -2147483647i)), select(u_input.a | vec4<i32>(-4959i, 2147483647i, u_input.e.x, u_input.e.x), vec4<i32>(1i, -2147483647i, u_input.e.x, u_input.b) & u_input.a, select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false)) | vec4<i32>(~u_input.b, u_input.b, -2147483647i, u_input.e.x)));
    var var_1 = ~vec2<u32>(4294967295u, u_input.d);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, var_1.x), 30u)];
    let var_3 = abs(countOneBits(countOneBits(func_1(~var_2.b.e, _wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_add_u32(var_2.b.e.x, u_input.c)))));
    var_1 = vec2<u32>((38265u >> (1u % 32u)) >> ((~26014u ^ ~var_1.x) % 32u), 8290u);
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1226f, 1918f))), -576f), 668f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-187f, var_4, -336f, 1000f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4, -1000f, -1178f, var_4), vec4<f32>(1000f, -366f, 685f, -167f), var_2.b.b.x))))));
}

