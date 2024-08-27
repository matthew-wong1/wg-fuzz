struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(5388i, 1i, 0i, i32(-2147483648)), vec4<i32>(9669i, 0i, 0i, 21816i), vec4<i32>(-22878i, 56124i, 11781i, i32(-2147483648)), vec4<i32>(18565i, 0i, 12136i, 11688i), vec4<i32>(-5889i, 54353i, -1i, 5244i), vec4<i32>(-27889i, 2147483647i, i32(-2147483648), -10741i), vec4<i32>(1i, -5296i, -34379i, -1i), vec4<i32>(68467i, 2412i, -68383i, 2147483647i));

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    global2 = Struct_3(Struct_1(vec3<f32>(global2.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.e.x * -658f) - _wgslsmith_f_op_f32(round(global2.a.c.x))), global2.b), vec3<i32>(i32(-1i) * -2147483647i, -global2.e.x, -12153i & global2.a.d.x) ^ global2.a.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(global2.d.zz)))), _wgslsmith_f_op_vec2_f32(min(global2.c.wy, vec2<f32>(-1419f, 1596f))), arg_1.yw)), ~abs(global2.a.d), vec4<f32>(2933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), global2.d.x, _wgslsmith_f_op_f32(min(-2819f, _wgslsmith_f_op_f32(f32(-1f) * -1025f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c.x + global2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), _wgslsmith_f_op_vec4_f32(round(global2.a.e)), u_input.b);
    let var_0 = !vec4<bool>(u_input.c > (_wgslsmith_mod_u32(36277u, 51375u) & (28556u & u_input.c)), arg_1.x, -global2.e.x >= -global0[_wgslsmith_index_u32(~u_input.a.x, 24u)], arg_1.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a.e.yyw), firstTrailingBit(~abs(global2.a.d) << (vec3<u32>(u_input.c, 1u, ~u_input.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global2.a.e.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d.ww - vec2<f32>(-803f, -125f)) * _wgslsmith_f_op_vec2_f32(global2.d.yy + vec2<f32>(global2.d.x, global2.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.x, global2.b))))), vec3<i32>(~(-2147483647i), global2.a.b.x, _wgslsmith_div_i32(-5748i, global0[_wgslsmith_index_u32(~u_input.d.x, 24u)])) & vec3<i32>(-(~(-37346i)), global2.a.b.x, ~global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x - global2.a.a.x) * _wgslsmith_f_op_f32(-389f - global2.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a.a.x)) - global2.c.x)), 1247f, global2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.b)))), global2.c.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1509f) * _wgslsmith_f_op_f32(ceil(1440f))))) + _wgslsmith_div_f32(var_1.c.x, var_1.a.x));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = array<i32, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(true, vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(false, vec4<bool>(false, false, true, true)))))), global2.c.xyy));
    var var_1 = vec2<i32>(-2147483647i, ~u_input.b.x | global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    global1 = array<vec4<i32>, 8>();
    global3 = array<Struct_1, 24>();
    return !vec4<bool>(276u > firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c.x - global2.c.x) - _wgslsmith_div_f32(global2.c.x, 408f)) != _wgslsmith_f_op_f32(arg_0 - global2.b), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec3<i32> {
    global1 = array<vec4<i32>, 8>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1951f, global2.d.x)) * 715f)) * _wgslsmith_f_op_f32(min(global2.d.x, 1011f))));
    var var_1 = -685f;
    var var_2 = ~(((global0[_wgslsmith_index_u32(~u_input.d.x, 24u)] >> (8267u % 32u)) & u_input.b.x) << (reverseBits(_wgslsmith_mult_u32(countOneBits(u_input.c), u_input.a.x | 0u)) % 32u));
    var var_3 = u_input.d.wwz;
    return vec3<i32>(-23466i, ~(_wgslsmith_dot_vec3_i32(global2.a.d, global2.a.b) | ~(~0i)), -50066i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(global2.c.zzy, vec3<f32>(-1000f, global2.a.e.x, global2.c.x)), -_wgslsmith_sub_vec3_i32(~global2.a.b, func_1(true, vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.e.x, -1215f), _wgslsmith_div_vec2_f32(global2.d.ww, global2.a.c), vec2<bool>(true, true))))), vec3<i32>(1787i ^ _wgslsmith_dot_vec3_i32(global2.a.b, global2.a.d), 47768i, global2.e.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(220f, global2.b, global2.b, global2.c.x) - _wgslsmith_f_op_vec4_f32(-global2.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(404f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c) + global2.d), vec4<f32>(global2.a.c.x, -1758f, _wgslsmith_f_op_f32(round(2079f)), _wgslsmith_f_op_f32(abs(-2060f))), all(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, global2.d.x, -1024f, -2290f) - global2.a.e) * global2.c)))), global2.a.e, u_input.b ^ vec2<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, ~global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), u_input.b.x));
    global3 = array<Struct_1, 24>();
    global2 = var_0;
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2.a.e.x, -486f, false)), global2.c.x, _wgslsmith_f_op_f32(func_3(true, vec4<bool>(false, true, false, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.zww * global2.c.xxy) + vec3<f32>(1669f, -390f, -558f))), ~(vec3<i32>(-9378i, var_0.e.x, -1i) & global2.a.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, 299f))))), global2.a.b, _wgslsmith_f_op_vec4_f32(round(global2.d))));
    global3 = array<Struct_1, 24>();
    let var_2 = global0[_wgslsmith_index_u32(select(u_input.a.x << (1u % 32u), u_input.d.x, !(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.a.x, u_input.d.x, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 46116u)), vec4<u32>(u_input.a.x, u_input.d.x, 4294967295u, u_input.c)) >= _wgslsmith_mult_u32(countOneBits(u_input.d.x), u_input.c))), 24u)];
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.e.x)), global2.a.c.x, global2.a.a.x)), -(min(vec3<i32>(31017i, u_input.b.x, var_0.e.x), vec3<i32>(var_1.a.b.x, u_input.b.x, 1i)) >> (vec3<u32>(u_input.c, 50445u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(global2.d.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.e.xx, var_0.d.xy))), ~reverseBits(-vec3<i32>(-1i, 1i, global0[_wgslsmith_index_u32(9251u, 24u)])), vec4<f32>(var_1.a.e.x, global2.b, 945f, -2118f)), var_1.a.e.x, _wgslsmith_f_op_vec4_f32(global2.d * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global2.d.x, var_1.a.c.x)), -872f, -295f, _wgslsmith_f_op_f32(round(880f))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c.x, var_0.c.x, global2.b, var_1.a.e.x), vec4<f32>(var_0.a.c.x, -651f, 136f, var_0.b)), _wgslsmith_f_op_vec4_f32(var_1.a.e + global2.d)))), var_0.a.e, var_1.a.b.yx);
    global2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d.x), ~(~(~u_input.d.xw))), 24u)], _wgslsmith_f_op_f32(func_3(all(vec3<bool>(func_2(848f).x, any(vec2<bool>(false, false)), false)), vec4<bool>(!func_2(-160f).x, select(true, true, true), !any(vec3<bool>(false, true, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.a.e)) + _wgslsmith_f_op_vec4_f32(floor(global2.a.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(-1471f, 1000f, -538f, 1036f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, -995f, var_1.a.e.x, var_1.a.a.x))))) * vec4<f32>(var_1.a.c.x, 354f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1024f)), 567f), _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(-var_1.a.e.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.e.x, -396f, var_1.a.e.x, var_1.a.e.x) - vec4<f32>(-1509f, global2.a.a.x, -799f, 281f))) - _wgslsmith_f_op_vec4_f32(max(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.e.x, var_1.a.e.x, 137f, 1273f), var_1.a.e) * vec4<f32>(global2.d.x, var_1.a.a.x, -961f, -224f))))), ~(-u_input.b));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.c, 8u)], vec4<i32>(u_input.b.x, var_1.a.b.x, var_1.a.b.x, -10915i))), reverseBits(select(-global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(~1u, 8u)] ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -4272i, 1i, var_1.a.d.x), vec4<i32>(2147483647i, 21318i, 1i, 0i)), vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.a.x))), -1006f), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-global2.a.b.zz, u_input.b), u_input.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.e.x, var_1.a.d.x, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(global2.a.b.x, global0[_wgslsmith_index_u32(1u, 24u)], var_1.a.d.x)) ^ -3301i, ~62707i)), 12394u);
}

