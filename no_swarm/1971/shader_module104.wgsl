struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = Struct_3(max(arg_2.a, 1i), global2[_wgslsmith_index_u32(4294967295u, 30u)], 42685i);
    var var_1 = Struct_3(9658i, Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(46447u, 39260u, arg_2.b.a.x), var_0.b.a), ~u_input.d ^ (u_input.c << (vec3<u32>(1u, arg_2.b.a.x, 4294967295u) % vec3<u32>(32u)))), arg_3.b.b, true, _wgslsmith_f_op_vec3_f32(var_0.b.d + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2.b.d))))), ~(-1i));
    var var_2 = _wgslsmith_dot_vec4_i32(~u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a, -10316i, ~(~var_1.c), ~(~(-1i))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, _wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(arg_1.x, u_input.b.x, -2090i)), _wgslsmith_mult_i32(arg_1.x, arg_2.a), arg_1.x), vec4<i32>(2147483647i | arg_1.x, select(arg_1.x, u_input.b.x, true), 46264i & arg_1.x, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 20u)], vec2<i32>(var_0.a, arg_2.a))))));
    var_1 = Struct_3(-22899i, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.d.x, 1u, var_0.b.a.x), vec4<u32>(4294967295u, 4294967295u, arg_3.b.a.x, arg_0.x)), 0u), 4294967295u, arg_2.b.a.x), arg_2.b.b, var_0.b.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x - arg_3.b.d.x) + _wgslsmith_f_op_f32(abs(-185f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_f_op_f32(sign(-774f)))), ~firstTrailingBit(arg_1.x & -arg_1.x));
    global0 = array<vec4<bool>, 12>();
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.b.x, arg_2.b.d.x, -1226f, arg_3.b.d.x), var_0.b.b) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1629f, var_1.b.d.x, -1596f, arg_3.b.b.x), var_1.b.b, vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-715f, arg_2.b.d.x, 1000f, arg_3.b.d.x) - arg_2.b.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.b.b, vec4<f32>(arg_2.b.d.x, arg_3.b.d.x, 322f, 968f), global0[_wgslsmith_index_u32(u_input.c.x, 12u)])) + _wgslsmith_f_op_vec4_f32(min(var_0.b.b, vec4<f32>(1000f, 297f, arg_2.b.b.x, -599f))))), var_0.b.b, any(select(vec2<bool>(arg_3.b.c, true), vec2<bool>(true, true), vec2<bool>(true, false)))))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec2<i32>, 20>();
    global0 = array<vec4<bool>, 12>();
    global2 = array<Struct_1, 30>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = true;
    return Struct_2(-(i32(-1i) * -2147483647i), Struct_1(~select(~vec3<u32>(0u, 23991u, 1u), vec3<u32>(1u, 1u, arg_0.a.x), !vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(func_3(arg_0.a.zy, abs(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)) >> ((vec3<u32>(1u, u_input.d.x, u_input.c.x) >> (vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(67235i, Struct_1(vec3<u32>(5412u, u_input.c.x, arg_0.a.x), arg_0.b, true, arg_0.d)), Struct_2(u_input.b.x, arg_0))), all(!(!vec2<bool>(true, arg_0.c))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_f_op_f32(step(-904f, _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d.x, -817f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(arg_1.b);
    var var_1 = var_0.a;
    var_1 = ~21508i;
    global0 = array<vec4<bool>, 12>();
    let var_2 = arg_2.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(1679f + -503f)) + -537f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global0 = array<vec4<bool>, 12>();
    let var_1 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u | (var_0 ^ 12174u), ~firstLeadingBit(4294967295u), 33053u), ~(~countOneBits(vec4<u32>(var_0, var_0, u_input.c.x, 21708u)))));
    let var_2 = Struct_1(vec3<u32>(var_1.x, 0u, var_0), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 622f, 1296f, 342f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2664f, -2154f, 1381f, 490f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-256f)), -1537f, _wgslsmith_f_op_f32(select(1152f, 1121f, false)), _wgslsmith_f_op_f32(func_1(var_1.x, Struct_3(2147483647i, global2[_wgslsmith_index_u32(var_0, 30u)], u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 30u)]))))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(199f * 1614f), _wgslsmith_f_op_f32(select(-235f, 829f, false)), -703f))));
    var var_3 = Struct_3(-1i & _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(37176i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, -1i, 56552i, 23480i)), ~_wgslsmith_div_vec4_i32(u_input.b, u_input.b)), func_2(var_2).b, ~1i);
    let var_4 = u_input.b.wzy;
    let var_5 = Struct_3(reverseBits(min(_wgslsmith_dot_vec2_i32(var_4.yy, u_input.b.ww), select(var_4.x, i32(-1i) * -8555i, var_2.c))), var_3.b, _wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(10262i)));
    var var_6 = ~(-24268i);
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 42954u, (firstLeadingBit(select(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 52345i, -10721i), true)) & ~u_input.b) | vec4<i32>(-1i, u_input.b.x, max(i32(-1i) * -1i, _wgslsmith_mod_i32(18005i, -1i)), _wgslsmith_add_i32(var_3.c, -17338i) >> (var_2.a.x % 32u)), _wgslsmith_f_op_vec4_f32(func_3(var_5.b.a.zx, _wgslsmith_clamp_vec3_i32(u_input.b.wwy, u_input.b.zxw, u_input.b.xww), Struct_2(41061i, var_2), Struct_2(u_input.b.x, Struct_1(var_2.a, var_5.b.b, all(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-356f, -512f, -128f)))))).x);
}

