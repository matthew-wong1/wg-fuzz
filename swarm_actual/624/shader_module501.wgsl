struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec2<i32> = vec2<i32>(-34287i, -46049i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(~u_input.a.x), 13u)];
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    return vec4<bool>(true, var_1.a.x, false, var_1.a.x);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f - -1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(829f - 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, -1084f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1598f, 597f), vec2<f32>(-168f, 1000f))))))));
    global0 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), ~u_input.c.xz);
    global1 = vec2<i32>(u_input.c.x, abs(-(global1.x >> ((u_input.a.x << (67280u % 32u)) % 32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2259f, _wgslsmith_div_f32(400f, var_0.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1237f)))))) - var_0.x);
    return global1.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    var var_0 = Struct_1(!arg_0.a, 2147483647i);
    global1 = u_input.c.zz;
    let var_1 = reverseBits(abs(countOneBits(min(func_3(), ~2147483647i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1978f, 388f, -995f, 135f)) + vec4<f32>(527f, 441f, 1000f, 1562f))) + vec4<f32>(1417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1415f, -1977f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1735f, 482f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(344f)))))));
    let var_3 = u_input.c.zyy;
    return -535f;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.b;
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_sub_i32(global1.x, 0i);
    var var_2 = min(u_input.a.x, 1u);
    return Struct_1(vec3<bool>(arg_3.b == _wgslsmith_mult_i32(min(39969i, 6890i), global1.x), !select(true, true, true), false), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -26i;
    var_0 = 1i;
    var var_1 = global0[_wgslsmith_index_u32(~(~4294967295u), 13u)];
    global1 = vec2<i32>(_wgslsmith_sub_i32(1859i, firstTrailingBit(u_input.c.x)), 34446i);
    let var_2 = select(vec4<bool>(var_1.a.x, any(vec2<bool>(true, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), !(_wgslsmith_f_op_f32(round(-1445f)) >= _wgslsmith_f_op_f32(f32(-1f) * -548f)), true), !vec4<bool>(!(63684i >= var_1.b), true, select(!var_1.a.x, var_1.a.x, true), select(true && var_1.a.x, all(vec4<bool>(false, var_1.a.x, var_1.a.x, true)), true)), !select(vec4<bool>(true, true, false, !var_1.a.x), func_1(), true));
    var_1 = func_4(!select(all(vec4<bool>(true, var_2.x, var_2.x, false)), var_1.a.x, !var_2.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u & _wgslsmith_dot_vec3_u32(reverseBits(u_input.a.zyx), vec3<u32>(72166u, 11176u, 1u)), _wgslsmith_sub_u32(~19004u ^ (79579u >> (u_input.a.x % 32u)), u_input.b)), 13u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, -18961i), true, u_input.c, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(727f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(230f)), _wgslsmith_f_op_f32(step(-1797f, -762f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, 315f, 1376f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, 293f, 825f)))), true)), Struct_1(vec3<bool>(var_1.a.x, all(var_2.xx), var_2.x && true), select(var_1.b, -select(var_1.b, 4531i, var_2.x), var_1.a.x)));
    var_1 = Struct_1(select(vec3<bool>(true, all(select(var_2, var_2, true)), all(select(var_1.a, var_2.xxx, vec3<bool>(true, false, var_2.x)))), !var_1.a, false), select(_wgslsmith_add_i32(-23235i, abs(1i)), u_input.c.x, select(true, var_1.a.x, true)) << (41316u % 32u));
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, -var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, 611f, 675f, -1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1169f, 1479f, -308f)))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -1312f), _wgslsmith_f_op_f32(f32(-1f) * -403f), any(var_2.wx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f), -1250f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1177f))));
}

