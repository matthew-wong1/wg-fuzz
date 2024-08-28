struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10318u;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = 1u;
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(u_input.c.ywz, vec3<u32>(108467u, u_input.c.x, arg_0.a))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(13885u, u_input.c.x, 53827u), u_input.c.wxz), firstLeadingBit(vec3<u32>(u_input.c.x, arg_0.a, u_input.c.x)), vec3<bool>(true, true, true)))), any(vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(~(~countOneBits(u_input.a.x)), u_input.b.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_0.a), 2u)];
    global0 = var_2.d;
    return (u_input.c.yyz << (select(u_input.c.yzx, _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_2.d, arg_0.a, var_2.d)), u_input.c.yww), !var_0.b & (1104u != var_0.a.a)) % vec3<u32>(32u))) & vec3<u32>(var_0.a.a, arg_0.a, ~(~arg_0.a));
}

fn func_2() -> Struct_3 {
    var var_0 = func_3(Struct_2(u_input.c.x));
    var var_1 = vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(149f)))) >= -1297f, select(any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(778f + -1446f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) - 1004f)), true);
    var_0 = ~vec3<u32>(~(func_3(Struct_2(16028u)).x & (var_0.x & var_0.x)), 15901u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, ~u_input.c.x, 6466u, _wgslsmith_sub_u32(var_0.x, 1u)), vec4<u32>(28711u, 1u, ~1u, 35830u)));
    var_1 = vec4<bool>(!all(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, false, var_1.x, false))), false, !all(select(!vec2<bool>(true, var_1.x), var_1.xz, var_1.x)), !(var_0.x == u_input.c.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1132f)))));
    return Struct_3(Struct_2(var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * var_2), -707f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), var_2, var_1.x != true)) + -953f));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x) + _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.c.x));
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(arg_0.e.yx, _wgslsmith_add_vec2_i32(~vec2<i32>(-39606i, 57002i), select(u_input.a.wz, u_input.a.zy, true)));
    let var_2 = vec2<f32>(-221f, 2132f);
    var_1 = u_input.a.yy;
    let var_3 = select(-46675i, ~(-26324i), !select(4294967295u <= _wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_clamp_i32(var_1.x, 2147483647i, 13046i) != abs(13186i), true));
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i << (func_2().a.a % 32u), reverseBits(-12130i)), arg_0.x), ~_wgslsmith_mod_i32(arg_0.x, -_wgslsmith_add_i32(arg_0.x, 0i)));
    return Struct_2(_wgslsmith_div_u32(1u, ~919u));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = select(!select(vec2<bool>(arg_1.x >= 481f, true), vec2<bool>(true, true), vec2<bool>(true, 2463f >= arg_1.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(false, true, false, true))), vec2<bool>(true, false), any(vec3<bool>(false, false, false)) || !all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(floor(-1121f)) < _wgslsmith_f_op_f32(-arg_1.x));
    global1 = array<Struct_1, 2>();
    var var_1 = 2147483647i > _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(-2147483647i, u_input.d.x)), select(-u_input.a.wy, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -10610i), vec2<i32>(u_input.d.x, u_input.b.x), vec2<i32>(0i, 23311i)), var_0.x)), _wgslsmith_add_i32(u_input.a.x, ~abs(u_input.d.x)));
    var_1 = func_2().b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-352f, -149f, true))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.x))))) * vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(517f, -870f) * _wgslsmith_div_f32(arg_1.x, -170f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-2110f)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1294f, arg_1.x, arg_1.x)), vec3<f32>(1321f, -1093f, -853f))))))));
    return ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.d.x, -1i, 30674i)), vec3<i32>(_wgslsmith_mult_i32(-41571i, -37496i), _wgslsmith_mod_i32(33580i, 2147483647i), 1i)), vec3<i32>(_wgslsmith_mod_i32(max(0i, u_input.d.x), i32(-1i) * -36965i), 50160i << (func_2().a.a % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, u_input.a.x), u_input.a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-198f)) * 630f))));
    var var_1 = vec4<u32>(~_wgslsmith_div_u32(38666u, ~_wgslsmith_add_u32(u_input.c.x, 4294967295u)), 53793u, u_input.c.x, u_input.c.x);
    var var_2 = Struct_1(-(~select(countOneBits(0i), ~u_input.a.x, true)), abs(u_input.a.zzy), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1485f, 489f, 1000f))))))), _wgslsmith_div_u32(31182u | (_wgslsmith_clamp_u32(36720u, 9408u, u_input.c.x) ^ var_1.x), ~(~11184u)), -func_5(func_4(vec2<i32>(u_input.d.x, 1i), Struct_3(Struct_2(39160u), true), func_1(Struct_1(u_input.a.x, vec3<i32>(-2147483647i, u_input.b.x, -22269i), vec3<f32>(var_0, -1000f, var_0), u_input.c.x, vec3<i32>(u_input.a.x, u_input.d.x, 2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 914f, var_0, 1000f))), u_input.c.xy));
    var var_3 = global1[_wgslsmith_index_u32(countOneBits(var_1.x), 2u)];
    let var_4 = Struct_3(Struct_2(_wgslsmith_mod_u32(29919u, select(select(74143u, var_1.x, true), ~var_3.d, true))), all(vec4<bool>(true, true, true, true)));
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(36879u, var_2.d), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u, -1688i, 1u, -581f, _wgslsmith_add_vec3_i32(var_2.e, vec3<i32>(u_input.d.x, var_3.a, 43427i)));
}

