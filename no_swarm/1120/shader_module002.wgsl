struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 18>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<f32> {
    var var_0 = 801f;
    var var_1 = Struct_1(vec4<f32>(arg_0.c.x, arg_0.a, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(round(-1106f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + 542f)) * _wgslsmith_f_op_f32(f32(-1f) * -853f))));
    var_1 = Struct_1(var_1.a);
    let var_2 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -587f) - _wgslsmith_f_op_f32(1305f - -2037f)), false, !(u_input.e.x > global3.x), false);
    global3 = ~(~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.e.x, u_input.b.x), vec4<i32>(global3.x, 12679i, u_input.e.x, global3.x) ^ vec4<i32>(-1i, global3.x, global3.x, global3.x)) | _wgslsmith_add_vec4_i32(countOneBits(max(vec4<i32>(0i, global3.x, global3.x, -4133i), vec4<i32>(-1i, 61982i, 23691i, 0i))), vec4<i32>(2147483647i, 1i, -59139i, -global3.x)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -196f))), 656f, _wgslsmith_div_f32(-532f, _wgslsmith_f_op_f32(f32(-1f) * -809f)), var_1.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(-1724f, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, select(true, false, true)), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_1.x, vec4<bool>(false, false, true, true), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1511f), 4294967295u, u_input.a), ~arg_0.x)))), ~(~1u) | (u_input.c >> (0u % 32u)), vec4<u32>(31750u, 1u, arg_0.x, 51033u)), _wgslsmith_sub_i32(_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(u_input.b.x, global3.x)), ~(~5355i)), global3.x), firstLeadingBit(u_input.a.xz));
    let var_1 = !var_0.a.b.www;
    let var_2 = all(select(!(!select(var_0.a.b, vec4<bool>(var_1.x, var_0.a.b.x, true, false), var_0.a.b)), !vec4<bool>(58621u == var_0.c.x, true, any(var_0.a.b.wy), var_1.x | true), ((var_0.a.e.x >> (32687u % 32u)) | arg_0.x) == 25117u));
    global3 = -abs(vec4<i32>(1i, abs(~(-1i)), -var_0.b & global3.x, min(2147483647i, -39601i) & _wgslsmith_clamp_i32(2147483647i, global3.x, -5391i)));
    global0 = array<vec2<bool>, 28>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a.c)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = arg_0.xzw;
    global2 = array<vec3<i32>, 18>();
    return Struct_2(_wgslsmith_div_f32(-595f, 1586f), arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2127f, arg_0.x, _wgslsmith_f_op_f32(824f - -336f), _wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(1u, 4294967295u), vec3<f32>(-1287f, arg_0.x, -548f))).x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1468f, 391f, var_0.x, arg_2) - arg_0)))), 39388u, _wgslsmith_mult_vec4_u32(abs(u_input.a), ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(arg_3, arg_3, arg_3, 1u) & vec4<u32>(2968u, 0u, 68437u, 0u))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    global0 = array<vec2<bool>, 28>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(max(max(~vec2<u32>(4294967295u, 4294967295u), ~u_input.a.zy), ~vec2<u32>(77951u, u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1146f), 552f, -685f))), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f - -595f) + 1f)) * _wgslsmith_f_op_f32(abs(-931f))), 1u);
    global2 = array<vec3<i32>, 18>();
    let var_1 = Struct_4(~2147483647i, -reverseBits(select(global2[_wgslsmith_index_u32(0u, 18u)] | vec3<i32>(-2147483647i, 7010i, 1i), -global2[_wgslsmith_index_u32(68333u, 18u)], !vec3<bool>(false, var_0.b.x, var_0.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(-var_0.c), false))))), _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(arg_0, -u_input.e.x)), -2147483647i));
    global2 = array<vec3<i32>, 18>();
    return Struct_4(_wgslsmith_mult_i32(-43809i, global3.x), _wgslsmith_mult_vec3_i32(global3.yxw, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1.d, var_1.a) << (vec3<u32>(u_input.d, 14288u, var_0.e.x) % vec3<u32>(32u)), vec3<i32>(34909i, global3.x, 2147483647i)) << (_wgslsmith_clamp_vec3_u32(u_input.a.xyx, u_input.a.zzx, min(vec3<u32>(22583u, 1u, 4294967295u), var_0.e.yxz)) % vec3<u32>(32u))), var_1.c, -select(-22903i, 0i >> (u_input.a.x % 32u), false && var_0.b.x) | -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global2 = array<vec3<i32>, 18>();
    var var_0 = (~u_input.d | ~(u_input.a.x | 94507u)) & 194u;
    var_0 = u_input.d;
    var var_1 = true;
    let var_2 = func_1(u_input.b.x);
    var_0 = _wgslsmith_add_u32(abs(1691u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.a.x, var_2.c.a.x)) + var_2.c.a.x)));
}

