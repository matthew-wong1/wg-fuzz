struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(932f, 632f, 1000f), -1i, false, vec3<u32>(0u, 4294967295u, 3370u));

var<private> global1: array<Struct_1, 21>;

var<private> global2: i32 = -1i;

var<private> global3: Struct_1;

var<private> global4: array<vec3<i32>, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = global0.a.xz;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-365f, _wgslsmith_div_f32(868f, _wgslsmith_f_op_f32(f32(-1f) * -503f))))));
    let var_2 = u_input.a;
    global2 = ~0i;
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global3.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_0.x, 921f, global0.a.x)))), all(vec3<bool>(true, all(vec2<bool>(false, global0.c)), u_input.a > -52968i)))), global0.c, false, firstTrailingBit(global4[_wgslsmith_index_u32(u_input.b, 14u)]), global0.a);
    return global0.d;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(vec3<f32>(-1418f, _wgslsmith_div_f32(-165f, global3.e.x), global3.a.x), ~(~_wgslsmith_add_i32(global3.d.x, 1i)), global0.c, func_3());
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) - vec4<f32>(var_0.a.x, -165f, -357f, 356f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1313f), -634f, _wgslsmith_f_op_f32(-455f + global0.a.x)))), true, true, vec3<i32>(2147483647i, global0.b, ~(-37889i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.e.x, global0.a.x, 362f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.a))))));
    let var_2 = vec4<f32>(var_0.a.x, -1328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f))), _wgslsmith_f_op_f32(var_1.e.x * -1000f));
    var var_3 = -(vec2<i32>(-1i) * -(~vec2<i32>(0i, global0.b) ^ vec2<i32>(1i, 50635i)));
    var var_4 = abs(-29410i);
    return ~vec4<i32>(u_input.a, -(0i | _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(52485u, 14u)], global3.d)), var_1.d.x, -60094i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = all(!(!vec4<bool>(!global3.b, global3.c, false, global3.c)));
    global4 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_div_u32(~(~firstLeadingBit(5747u)), 4294967295u);
    global2 = 21134i;
    let var_2 = !arg_3.c;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(global3.d.x, global3.d.x, u_input.a, global0.b), vec4<i32>(arg_3.b, -1i, global3.d.x, -10115i))), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-30758i, global3.d.x, 18519i, global0.b), vec4<i32>(global3.d.x, 2147483647i, arg_3.b, 2147483647i)), func_2() ^ vec4<i32>(u_input.a, 7146i, u_input.a, -2147483647i))), ~(-(~vec4<i32>(-40103i, 7615i, 1i, -25941i) >> (~arg_2 % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = max(~arg_1.d.xz | _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b, 1u)), ~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(47681u, 92304u), global0.d.xx)), ~vec2<u32>(_wgslsmith_mod_u32(abs(arg_3.x), countOneBits(51213u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_3, global0.d.xy), 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1273f, arg_2.e.x, arg_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-374f * -1157f), _wgslsmith_div_f32(global0.a.x, arg_0.x), _wgslsmith_f_op_f32(1464f + arg_1.a.x)))));
    let var_2 = Struct_2(global3.e, global3.d.x, all(vec4<bool>(all(vec3<bool>(false, global0.c, true)) & !global3.c, all(select(vec4<bool>(arg_2.b, false, false, true), vec4<bool>(arg_2.b, global3.c, global0.c, true), vec4<bool>(true, global0.c, true, global0.c))), !global3.b, all(select(vec3<bool>(false, true, arg_1.c), vec3<bool>(true, arg_2.b, arg_1.c), global3.c)))), global0.d);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e.x, -463f, -535f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 964f, global0.a.x) * global3.a.wxz)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(var_1.x, 318f), _wgslsmith_f_op_f32(global0.a.x - arg_1.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-397f, 1000f, var_1.x)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, global3.a.x, arg_2.a.x) * vec3<f32>(var_1.x, global3.a.x, var_2.a.x)))))), global0.b, global3.c, countOneBits(arg_1.d));
    global2 = ~(-abs(max(u_input.a, -2147483647i)) ^ 2147483647i);
    return !(!vec3<bool>(true, select(true, var_3.c, global0.c), global3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, vec4<bool>(true, global3.c, false, true))) - global3.a))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1550f + -1000f)), 217f, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(416f, -593f))), _wgslsmith_sub_i32(~func_1(global0.d.zz, global3.a.wyy, vec4<u32>(u_input.b, u_input.b, 0u, global0.d.x), Struct_2(global0.a, u_input.a, global3.b, global0.d)), _wgslsmith_sub_i32(reverseBits(u_input.a), ~0i)), global0.c, global0.d), Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a), u_input.b <= ~_wgslsmith_div_u32(u_input.b, u_input.b), global0.d.x <= firstTrailingBit(firstLeadingBit(u_input.b)), _wgslsmith_mult_vec3_i32(min(global4[_wgslsmith_index_u32(global0.d.x, 14u)], global3.d), -vec3<i32>(11544i, -12462i, global0.b)) ^ reverseBits(global4[_wgslsmith_index_u32(global0.d.x, 14u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1521f, global3.e.x), _wgslsmith_f_op_f32(312f + -678f), -1119f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 325f, global0.a.x), vec3<f32>(-2020f, global0.a.x, global0.a.x), vec3<bool>(true, global3.c, global0.c))))), vec2<u32>(42455u, max(u_input.b, (global0.d.x << (global0.d.x % 32u)) | ~u_input.b)));
    global2 = i32(-1i) * -_wgslsmith_clamp_i32(reverseBits(global0.b), -70286i, u_input.a);
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(abs(60101u), u_input.b), _wgslsmith_mult_vec2_u32(global0.d.zy, ~global0.d.yz)), vec2<u32>(global0.d.x, 66156u), ~(global0.d.xx | vec2<u32>(_wgslsmith_sub_u32(global0.d.x, global0.d.x), u_input.b)));
    var var_2 = -26580i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(abs(global0.d), vec3<u32>(3040u, 0u, 0u) | vec3<u32>(1u, u_input.b, global0.d.x)) | global0.d);
}

