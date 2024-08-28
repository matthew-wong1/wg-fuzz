struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_div_i32(countOneBits(u_input.c), max(0i, arg_1)) & arg_1;
    let var_1 = ~(~u_input.a.www);
    global0 = array<Struct_2, 29>();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0.a.wy, ~vec2<i32>(-41352i, ~24i)), -arg_1);
    return !(!(!vec3<bool>(arg_2, true, arg_2)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = !(!select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_1.e.x, false, true), func_3(Struct_1(arg_1.a, vec4<f32>(-541f, arg_3, arg_3, arg_3), vec2<i32>(u_input.c, u_input.c), u_input.c, vec2<bool>(false, arg_2)), arg_1.a.x, !arg_2)));
    global0 = array<Struct_2, 29>();
    var_0 = select(func_3(arg_1, firstLeadingBit(u_input.c), var_0.x), select(vec3<bool>(select(arg_1.e.x, true, arg_1.e.x), arg_0.x && true, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(arg_2, var_0.x, arg_2), vec3<bool>(true, arg_0.x, arg_0.x))), !arg_1.e.x), !vec3<bool>(arg_2, any(select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(true, arg_2, true, false), false)), any(vec4<bool>(false, true, true, arg_1.e.x))));
    let var_1 = Struct_2(10076i, 2147483647i < (u_input.c ^ abs(1i)), select(vec4<bool>(all(vec4<bool>(arg_1.e.x, arg_1.e.x, true, arg_2)) || (var_0.x && true), true, arg_1.e.x, true), select(!vec4<bool>(var_0.x, true, true, arg_2), vec4<bool>(!arg_1.e.x, func_3(Struct_1(arg_1.a, arg_1.b, vec2<i32>(arg_1.c.x, 0i), u_input.c, vec2<bool>(true, false)), 24485i, true).x, true, arg_2), abs(-67701i) == firstTrailingBit(u_input.c)), select(select(select(vec4<bool>(false, arg_1.e.x, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, var_0.x, arg_0.x), vec4<bool>(var_0.x, arg_2, var_0.x, arg_2), vec4<bool>(true, false, false, arg_0.x)), vec4<bool>(arg_1.e.x, true, true, arg_2)), vec4<bool>(true, true, arg_2, any(vec4<bool>(arg_2, true, true, false))), vec4<bool>(true, true, var_0.x, false))), 29727i);
    var var_2 = select(vec2<bool>(select(all(vec2<bool>(true, var_1.b)), var_0.x, !all(vec3<bool>(arg_2, false, var_1.c.x))), true), select(func_3(Struct_1(-vec4<i32>(0i, u_input.c, u_input.c, 9951i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_1.b.x, -888f, arg_1.b.x)), max(vec2<i32>(-2147483647i, u_input.c), arg_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -31688i, 0i, u_input.c), arg_1.a), vec2<bool>(arg_0.x, true)), 13896i, !(!arg_0.x)).yy, func_3(Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstTrailingBit(arg_1.c), -93332i ^ arg_1.a.x, var_0.zy), _wgslsmith_add_i32(reverseBits(2147483647i), var_1.a), (44915u ^ u_input.a.x) < _wgslsmith_clamp_u32(4294967295u, 10997u, 36513u)).yx, func_3(Struct_1(_wgslsmith_sub_vec4_i32(arg_1.a, arg_1.a), _wgslsmith_f_op_vec4_f32(floor(arg_1.b)), countOneBits(vec2<i32>(-1i, 39695i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 4488i, 1i), arg_1.a.wyy), var_1.c.wx), _wgslsmith_sub_i32(firstTrailingBit(2147483647i), arg_1.a.x), true).x), arg_0);
    return !arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = !any(select(vec3<bool>(false, u_input.c >= u_input.c, func_2(vec2<bool>(true, false), Struct_1(vec4<i32>(0i, -2147483647i, u_input.c, 0i), vec4<f32>(-333f, -158f, 221f, 669f), vec2<i32>(-33167i, 7902i), 1i, vec2<bool>(true, true)), false, -615f)), vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, true, true))));
    var var_1 = ~(~_wgslsmith_div_u32(4294967295u, 4294967295u));
    let var_2 = Struct_1(vec4<i32>(u_input.c, -12919i, _wgslsmith_div_i32(abs(u_input.c), -u_input.c), u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(482f)), _wgslsmith_f_op_f32(abs(-1000f)), 108f, -1517f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-385f, 1000f)))), _wgslsmith_f_op_f32(-190f - -835f), -627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1373f * -598f) - _wgslsmith_f_op_f32(f32(-1f) * -1676f)))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.c, u_input.c), vec2<i32>(u_input.c, -1i), vec2<i32>(~1670i, firstTrailingBit(u_input.c))), 0i, !vec2<bool>(var_0, !(var_0 != false)));
    global0 = array<Struct_2, 29>();
    var var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = ~u_input.b;
    global0 = array<Struct_2, 29>();
    var_0 = Struct_1(var_0.a & vec4<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(u_input.c, -1i)), ~(var_0.a.x ^ -2147483647i), var_0.c.x, _wgslsmith_div_i32(-var_0.a.x, countOneBits(u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3763f, 795f, var_0.b.x, 974f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, -441f, 355f, -664f), var_0.b)), !vec4<bool>(false, var_0.e.x, false, var_0.e.x))))), ((select(vec2<i32>(-60066i, 43986i), vec2<i32>(-1i, var_0.d), var_0.e) << (vec2<u32>(5510u, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(select(0u, u_input.b, true), var_1) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, 2147483647i), var_0.a.yz ^ var_0.c, any(vec3<bool>(true, true, true))), min(-var_0.a.zw, -var_0.c), ~abs(var_0.a.zw)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 15302i << (var_1 % 32u), _wgslsmith_sub_i32(2147483647i, 1i)), select(-vec3<i32>(u_input.c, u_input.c, -5445i), vec3<i32>(var_0.a.x, u_input.c, var_0.d), true)), select((i32(-1i) * -2147483647i) ^ (-37341i >> (u_input.a.x % 32u)), var_0.c.x >> (~u_input.a.x % 32u), !any(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x)))), vec2<bool>(true, true));
    global0 = array<Struct_2, 29>();
    var_0 = Struct_1(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a, var_0.a), -(~var_0.a)), var_0.b, var_0.a.wz, var_0.a.x, vec2<bool>(!func_1().e.x, var_0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.xwz), var_0.b.x);
}

