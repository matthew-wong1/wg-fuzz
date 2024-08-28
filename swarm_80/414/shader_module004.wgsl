struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(1502f, -1596f, 811f, 1000f), vec4<f32>(-471f, -1372f, -1693f, -790f), vec4<f32>(345f, 199f, 851f, 1000f));

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec2<f32>, 16>;

var<private> global3: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-21579i, 2147483647i, i32(-2147483648)), vec3<i32>(-9273i, -7037i, -1i), vec3<i32>(16344i, -9553i, 2147483647i), vec3<i32>(32788i, 0i, -1i), vec3<i32>(-32993i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 56937i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -336i), vec3<i32>(1i, 12281i, i32(-2147483648)), vec3<i32>(-48420i, -1i, 1i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = firstLeadingBit(i32(-1i) * -arg_0);
    let var_1 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_mod_i32(arg_0, 36273i), max(arg_1.a, 1i), max(arg_1.a, arg_1.a)), ~(vec4<i32>(u_input.d, arg_0, arg_0, arg_1.a) | vec4<i32>(-9142i, 1i, -29880i, arg_1.a))), !arg_1.b, 0u, !(!select(vec2<bool>(global1.x, arg_1.d.x), select(vec2<bool>(arg_1.d.x, global1.x), vec2<bool>(false, global1.x), global1.zx), arg_1.d)));
    global0 = array<vec4<f32>, 3>();
    global3 = array<vec3<i32>, 10>();
    return global1.xz;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(arg_3, 39620u), 58073u), _wgslsmith_mult_u32(u_input.a, arg_0.c));
    let var_1 = _wgslsmith_clamp_i32(arg_2, i32(-1i) * -41715i, arg_0.a) & -(countOneBits(-arg_2) & _wgslsmith_clamp_i32(arg_0.a, ~arg_0.a, u_input.b ^ -2147483647i));
    var_0 = u_input.e.yy;
    var var_2 = arg_0;
    let var_3 = ~_wgslsmith_sub_vec4_i32(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-3493i, var_2.a, -20961i, 1i), vec4<i32>(-21308i, 64469i, -15947i, -6967i))), abs(~vec4<i32>(u_input.b, -21800i, 0i, arg_0.a)));
    return Struct_1(~var_2.a, vec3<bool>(u_input.c.x < _wgslsmith_dot_vec2_u32(vec2<u32>(31312u, u_input.e.x) ^ u_input.e.yz, _wgslsmith_clamp_vec2_u32(u_input.e.yx, vec2<u32>(5380u, 19158u), u_input.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_3, var_3), abs(vec4<i32>(var_1, 9901i, -2147483647i, -22148i))) != ~abs(38112i), all(select(!vec4<bool>(false, true, false, arg_0.d.x), !vec4<bool>(var_2.d.x, var_2.d.x, true, false), !vec4<bool>(var_2.d.x, var_2.b.x, global1.x, var_2.b.x)))), 4294967295u, vec2<bool>(true, any(vec2<bool>(!var_2.d.x, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, _wgslsmith_div_u32(firstLeadingBit(71448u), 17492u ^ u_input.e.x)), 10u)]);
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, arg_2.c), vec2<u32>(4294967295u, ~33129u) << (u_input.c % vec2<u32>(32u))));
    var var_2 = func_3(arg_2, true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a, 7309i, arg_2.a, -50239i), vec4<i32>(-2147483647i, var_0.x, 1i, 1i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(33298i, u_input.d, -19837i, 14461i), vec4<i32>(25062i, u_input.b, -1i, arg_0.a)))), -(countOneBits(vec4<i32>(var_0.x, -20855i, 1i, u_input.d)) & (vec4<i32>(var_0.x, -35433i, 43454i, var_0.x) & vec4<i32>(arg_0.a, arg_0.a, arg_0.a, var_0.x)))), arg_0.c);
    var var_3 = -18053i;
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(arg_1.yx))));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = select(vec3<bool>(false, all(global1.zz), false), !arg_0.b, global1.x);
    let var_1 = vec3<i32>(1i, ~(-u_input.b), 50835i);
    let var_2 = func_4(func_3(Struct_1(~_wgslsmith_clamp_i32(var_1.x, u_input.d, var_1.x), !select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(false, true, global1.x), true), abs(~arg_0.c), select(func_2(var_1.x, arg_0), !vec2<bool>(false, var_0.x), select(vec2<bool>(arg_0.b.x, arg_0.d.x), vec2<bool>(arg_0.b.x, global1.x), arg_0.d.x))), select(true, !(!var_0.x), !(false && global1.x)), ~0i, _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a, arg_0.c), ~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, 561f, arg_1) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, -347f, arg_1) * vec3<f32>(arg_1, arg_1, 683f))))), arg_0);
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.c, 1u), arg_0.c);
    let var_4 = vec3<i32>(var_1.x << (var_2.c % 32u), -1i, 0i);
    return func_3(Struct_1(-4772i, var_2.b, countOneBits(8930u), var_0.xx), any(vec4<bool>(func_2(-29279i, arg_0).x, true, global1.x, !var_0.x)), _wgslsmith_div_i32(var_1.x, -55679i), _wgslsmith_div_u32(~(~45993u), var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(i32(-1i) * -42167i, !(!(!vec3<bool>(false, global1.x, global1.x))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.e.x) & u_input.c.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.e.xy), abs(u_input.a)), u_input.c.x & 4294967295u), vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(-1f))));
    let var_1 = var_0;
    let var_2 = false;
    let var_3 = u_input.e;
    var var_4 = reverseBits(~var_3);
    var var_5 = 51629u;
    global0 = array<vec4<f32>, 3>();
    let var_6 = Struct_1(-19270i, vec3<bool>(var_1.b.x, true, func_3(var_1, any(var_0.d), reverseBits(0i), 28281u).b.x != true), 36998u, var_0.b.yx);
    var var_7 = _wgslsmith_sub_i32(var_1.a, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, u_input.d) ^ select(vec2<i32>(u_input.d, var_1.a), vec2<i32>(u_input.d, var_0.a), true), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_1.a), vec2<i32>(var_1.a, -43254i))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(-vec2<i32>(-25608i, u_input.b) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, u_input.b), vec2<i32>(1i, var_1.a)), select(vec2<i32>(var_1.a, var_0.a), abs(vec2<i32>(u_input.b, -6367i)), var_2), !global1.zy), _wgslsmith_f_op_f32(-1f), u_input.d);
}

