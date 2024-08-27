struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-1i, 2147483647i, i32(-2147483648), -18842i, -1616i, 2147483647i, -1i, 25358i, 0i, 2147483647i, 0i, -80270i, 12923i, -1i, -31161i, 19964i, 18730i, 26143i, 19863i, -1i, -53438i);

var<private> global1: bool;

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: f32 = 679f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    global1 = true;
    let var_0 = Struct_1(select(select(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.a.yx), u_input.a.wy & u_input.b.yz), u_input.b.zx, vec2<bool>(all(vec3<bool>(true, true, true)), true)), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647i), firstLeadingBit(-22808i)) & u_input.a.ww, vec2<bool>(all(vec3<bool>(false, false, false)), true)));
    let var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), (global2.x != 4294967295u) && true);
    let var_2 = !(!all(select(vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x), false), !vec3<bool>(var_1.x, var_1.x, var_1.x))));
    global0 = array<i32, 21>();
    return var_1;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_1(u_input.b.xx);
    global1 = arg_3;
    let var_1 = reverseBits(u_input.b);
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-456f, 1000f)) - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(sign(arg_1.x))))));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) + arg_1.x)));
    return Struct_4(u_input.c, Struct_3(!vec2<bool>(false, select(true, false, arg_0))), Struct_3(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_3, arg_0), all(vec3<bool>(arg_0, false, true)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    global1 = all(vec4<bool>(true || ((true || var_0.b.a.x) && true), true && any(vec3<bool>(arg_1.a.x, true, arg_0.b.a.x)), true, false));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 15582u), countOneBits(vec2<u32>(var_0.a, 35675u))), 4294967295u, ~(u_input.c & func_2(var_0.c.a.x, arg_3.yx, vec4<u32>(4294967295u, var_0.a, 4294967295u, u_input.c), var_0.c.a.x).a)), ~(~vec4<u32>(~0u, global2.x, ~arg_0.a, 32189u)));
    let var_2 = Struct_2(-reverseBits(u_input.b.xx), func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1303f, arg_3.x), vec2<f32>(464f, -1201f)), vec2<f32>(725f, -1048f)) * _wgslsmith_f_op_vec2_f32(-arg_3.yy)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, var_1.x, u_input.c), abs(vec4<u32>(var_0.a, u_input.c, u_input.c, var_0.a)), ~vec4<u32>(4294967295u, global2.x, 4294967295u, var_0.a)), ~(vec4<u32>(1u, u_input.c, 68184u, var_1.x) << (vec4<u32>(arg_2, 56765u, u_input.c, arg_2) % vec4<u32>(32u)))), all(vec4<bool>(true, arg_3.x > 396f, true, !arg_1.a.x))).c.a, arg_3.zy);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -firstTrailingBit(var_2.a.x), -reverseBits(var_2.a.x ^ -1i), select(abs(~(-1i)), -1i << (arg_0.a % 32u), !(var_0.c.a.x && arg_0.c.a.x)), 0i), u_input.a);
    return _wgslsmith_f_op_f32(-arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~4119u, 21u)], abs(-43852i)), 19578i), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), func_1(vec4<i32>(u_input.d, -30740i, 2147483647i, 8427i)), true), vec2<bool>(true, any(vec2<bool>(false, false))), false), select(func_1(-u_input.b), vec2<bool>(true, true), u_input.a.x >= global0[_wgslsmith_index_u32(57614u, 21u)]), vec2<bool>(true, false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(func_3(func_2(true, vec2<f32>(-1426f, -703f), vec4<u32>(global2.x, global2.x, u_input.c, global2.x), false), func_2(false, vec2<f32>(725f, -341f), vec4<u32>(u_input.c, 4294967295u, global2.x, u_input.c), true).c, u_input.c, vec3<f32>(-718f, -1000f, -1000f))), true)), 875f));
    let var_1 = Struct_2(~(-_wgslsmith_sub_vec2_i32(select(u_input.a.wz, var_0.a, true), ~var_0.a)), !(!var_0.b), _wgslsmith_f_op_vec2_f32(ceil(var_0.c)));
    global3 = 769f;
    let var_2 = Struct_4(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, 4294967295u, 39365u, global2.x)), vec4<u32>(5637u, 64254u, 27858u, global2.x)), u_input.c, reverseBits(min(global2.x, _wgslsmith_add_u32(4097u, 0u)))), func_2(!var_0.b.x || (all(vec3<bool>(var_1.b.x, var_1.b.x, true)) && all(vec3<bool>(true, false, var_0.b.x))), var_1.c, ~min(vec4<u32>(1u, 18400u, 4294967295u, 0u), vec4<u32>(global2.x, global2.x, global2.x, 0u)), var_0.b.x).c, Struct_3(!(!select(vec2<bool>(true, false), var_1.b, true))));
    let var_3 = func_2(select(!var_1.b.x, !func_1(u_input.b).x, any(vec3<bool>(var_1.b.x, true, var_1.b.x)) && !var_1.b.x) | (select(u_input.a.x, ~var_0.a.x, any(vec4<bool>(false, var_2.c.a.x, true, var_1.b.x))) == _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.a.x, var_0.a.x, 2147483647i), 5765i)), var_1.c, max(~vec4<u32>(~global2.x, max(u_input.c, global2.x), ~37354u, 35897u), vec4<u32>(countOneBits(abs(33588u)), 61797u, 1u, 22769u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 62425u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(sign(-128f))), var_1.c.x)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.x))))));
    var var_4 = max(firstLeadingBit(vec2<u32>(6473u, ~0u)), vec2<u32>(u_input.c, _wgslsmith_mod_u32(var_2.a, u_input.c)) >> (reverseBits(firstLeadingBit(max(vec2<u32>(var_3.a, u_input.c), vec2<u32>(var_3.a, u_input.c)))) % vec2<u32>(32u)));
    var var_5 = -14139i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, -116f), var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(779f)))));
}

